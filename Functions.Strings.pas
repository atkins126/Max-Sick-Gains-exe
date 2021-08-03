unit Functions.Strings;

interface

uses
  System.StrUtils, Functional.FuncFactory, System.SysUtils, Data.DB,
  System.Classes;

function FilterByContainsTxt(const aSubText: string): Functional.FuncFactory.TPredicate
  <string>;

function PrettyComma: TFoldFunc<string, string>;

function SortNLSeparatedStr(const aText: string; const allowDuplicates: Boolean
  = false): string;

function CommaAndNL: TFoldFunc<string, string>;

function ReduceNewLine: TFoldFunc<string, string>;

function ReduceStr(const aSeparator: string): TFoldFunc<string, string>;

function ReduceStrField(const aField, aSeparator: string): TFoldFunc<TDataSet,
  string>;

function EncloseStr(const delim: string; delim2: string = ''): TFunc<string,
  string>;

function DeleteLast(const aText, aSubText: string): string;

function DeleteLastComma(const aText: string): string;

function StrToList(const aText: string; const aSorted: Boolean = true; const
  allowDuplicates: Boolean = true; const aCaseSensitive: Boolean = false):
  TStringList;

implementation

function SortNLSeparatedStr(const aText: string; const allowDuplicates: Boolean):
  string;
var
  tmp: TStringList;
begin
  tmp := StrToList(aText, true, allowDuplicates);
  try
    Result := tmp.Text;
  finally
    tmp.Free;
  end;
end;

function StrToList(const aText: string; const aSorted: Boolean; const
  allowDuplicates: Boolean; const aCaseSensitive: Boolean): TStringList;
begin
  Result := TStringList.Create;
  Result.CaseSensitive := aCaseSensitive;
  Result.Sorted := aSorted;
  if allowDuplicates then
    Result.Duplicates := dupAccept
  else
    Result.Duplicates := dupIgnore;
  Result.Text := aText;
end;

function ReduceNewLine: TFoldFunc<string, string>;
begin
  Result := ReduceStr(#13#10);
end;

function CommaAndNL: TFoldFunc<string, string>;
begin
  Result := ReduceStr(','#13#10);
end;

function PrettyComma: TFoldFunc<string, string>;
begin
  Result := ReduceStr(', ');
end;

function DeleteLastComma(const aText: string): string;
begin
  Result := DeleteLast(aText, ',');
end;

function DeleteLast(const aText, aSubText: string): string;
begin
  if EndsStr(aSubText, aText) then
    Result := LeftStr(aText, Length(aText) - Length(aSubText));
end;

function EncloseStr(const delim: string; delim2: string): TFunc<string, string>;
begin
  if delim2 = '' then
    delim2 := delim;

  Result :=
    function(s: string): string
    begin
      Result := delim + s + delim2;
    end;
end;

function FilterByContainsTxt(const aSubText: string): Functional.FuncFactory.TPredicate
  <string>;
begin
  Result :=
    function(const s: string): Boolean
    begin
      Result := ContainsText(s, aSubText);
    end;
end;

function ReduceStr(const aSeparator: string): TFoldFunc<string, string>;
begin
  Result :=
    function(const input: string; const Accumulator: string): string
    begin
      Result := Accumulator + IfThen(Accumulator = '', '', aSeparator) + input;
    end;
end;

function ReduceStrField(const aField, aSeparator: string): TFoldFunc<TDataSet,
  string>;
begin
  Result :=
    function(const input: TDataSet; const Accumulator: string): string
    begin
      Result := ReduceStr(aSeparator)(input.FieldByName(aField).AsString,
        Accumulator);
    end;
end;

end.

