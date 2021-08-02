unit Unit5010_ExportBs;

interface

uses
  System.Classes, System.StrUtils, System.SysUtils;

function BodyslideToLua(const aFileName: string): string;

implementation

uses
  Generics.Collections, Functional.Sequence, Functional.FuncFactory,
  Functions.Regex, Functions.Strings;

type
  TBsVals = record
    min: string;
    max: string;
    constructor Create(const aMin, aMax: string);
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
  Updates an already set BS Slider by creaing a new record, since records
  seem to be inmutable.
  }
  val := GetSliderValue(xmlLine);
  if ContainsText(xmlLine, 'size="big"') then
    Result := TBsVals.Create(oldVal.min, val)
  else
    Result := TBsVals.Create(val, oldVal.max);
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
    aList.Add(Format('["%s"] = {min=%s, max=%s}', [Item.Key, Item.Value.min,
      Item.Value.max]));
  aList.Sort;
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
//  commaSeparate: TFoldFunc<string, string>;
begin
  Result := '';
  if not FileExists(aFileName) then
    Exit;

  // Objects
  l := TStringList.Create;
  rawData := TDictionary<string, TBsVals>.Create;
  // Functions
  onlySliders := FilterByContainsTxt('<SetSlider');
//  commaSeparate := ReduceStr(','#13#10);
  slidersToDict := xmlLineToDict(rawData);

  try
    l.LoadFromFile(aFileName);
    TSeq.From(l)
      .Filter(onlySliders)
      .ForEach(slidersToDict);
    DictToStrList(rawData, l);
    Result := TSeq.From(l).Fold<string>(PrettyComma(), '');
  finally
    l.Free;
    rawData.Free
  end;
end;

{ TBsVals }

constructor TBsVals.Create(const aMin, aMax: string);
begin
  min := aMin;
  max := aMax;
end;

end.

