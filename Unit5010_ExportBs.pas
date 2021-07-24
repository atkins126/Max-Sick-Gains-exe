unit Unit5010_ExportBs;

interface

uses
  System.Classes, System.StrUtils, System.SysUtils, System.RegularExpressions,
  System.RegularExpressionsCore;

function BodyslideToLua(const aFileName: string): string;

implementation

uses
  Generics.Collections, Functional.Sequence, Functional.FuncFactory,
  Functions.Regex;

type
  TBsVals = record
    min: string;
    max: string;
  end;

function GetSliderName(const s: string): string;
begin
  Result := GetSureGroup(s, '(?U)name\s*="(.*)"');
end;

function GetSliderValue(const s: string): string;
begin
  Result := GetSureGroup(s, 'value="(-?\d+)"');
end;

function SetRawDictSliderVal(xmlLine: string; oldVal: TBsVals): TBsVals;
var
  val: string;
begin
  {
  Updates an already set BS Slider, since records are inmutable.
  }
  val := GetSliderValue(xmlLine);
  if ContainsText(xmlLine, 'size="big"') then
  begin
    Result.min := oldVal.min;
    Result.max := val;
  end
  else
  begin
    Result.min := val;
    Result.max := oldVal.max;
  end;
end;

function BlankSlider: TBsVals;
begin
  Result.min := '0';
  Result.max := '0';
end;

procedure DictToStrList(aDict: TDictionary<string, TBsVals>; aList: TStringList);
var
  Item: TPair<string, TBsVals>;
begin
  aList.Clear;
  for Item in aDict do
    aList.Add(Format('["%s"] = {min = %s, max = %s}', [Item.Key, Item.Value.min,
      Item.Value.max]));
end;

function FilterByContainsTxt(const aSubText: string): TPredicate<string>;
begin
// TODO: Move to independent unit
  Result :=
    function(const s: string): Boolean
    begin
      Result := ContainsText(s, aSubText);
    end;
end;

function CommaSeparateStr(const s: string; const Accumulator: string): string;
begin
// TODO: Refactor as High order
  Result := Accumulator + IfThen(Accumulator = '', '', ',') + s;
end;

function xmlLineToDict(aDict: TDictionary<string, TBsVals>): TProc<string>;
begin
  Result :=
    procedure(s: string)
    var
      slName: string;
    begin
      {
        Converts xml lines from Bodyslide sliders to a dictionary.
        This dictionary has the structure that will be used in Lua.
       }
      slName := GetSliderName(s);
      if not aDict.ContainsKey(slName) then
        aDict.Add(slName, BlankSlider);
      aDict.Items[slName] := SetRawDictSliderVal(s, aDict.Items[slName]);
    end;
end;

function BodyslideToLua(const aFileName: string): string;
var
  l: TStringList;
  rawData: TDictionary<string, TBsVals>;
  onlySliders: TPredicate<string>;
  slidersToDict: TProc<string>;
  commaSeparate: TFoldFunc<string, string>;
begin
  // Objects
  l := TStringList.Create;
  rawData := TDictionary<string, TBsVals>.Create;
  // Functions
  onlySliders := FilterByContainsTxt('<SetSlider');
  commaSeparate := CommaSeparateStr;
  slidersToDict := xmlLineToDict(rawData);

  try
    l.LoadFromFile(aFileName);
    TSeq.From(l).Filter(onlySliders).ForEach(slidersToDict);
    DictToStrList(rawData, l);
    Result := 'bs = {'#13#10 + TSeq.From(l).Fold<string>(commaSeparate, '') +
      #13#10'}';
  finally
    l.Free;
    rawData.Free
  end;
end;

end.
