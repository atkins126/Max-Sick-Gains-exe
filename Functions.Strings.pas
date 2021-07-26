unit Functions.Strings;

interface

uses
  System.StrUtils, Functional.FuncFactory, System.SysUtils;

function FilterByContainsTxt(const aSubText: string): Functional.FuncFactory.TPredicate
  <string>;

function ReduceStr(const aSeparator: string): TFoldFunc<string, string>;

function EncloseStr(const delim: string; delim2: string = ''): TFunc<string,
  string>;

function DeleteLast(const aText, aSubText: string): string;

function DeleteLastComma(const aText: string): string;

implementation

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

end.

