unit Functions.Strings;

interface

uses
  System.StrUtils, Functional.Sequence, Functional.FuncFactory, System.SysUtils;

function FilterByContainsTxt(const aSubText: string): Functional.FuncFactory.TPredicate
  <string>;

function ReduceStr(const aSeparator: string): TFoldFunc<string, string>;

function EncloseStr(const delim: string; delim2: string = ''): TFunc<string,
  string>;

implementation

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

