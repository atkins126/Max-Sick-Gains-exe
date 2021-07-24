unit Functions.Regex;

interface

uses
  System.RegularExpressions, System.SysUtils;

function GetSureGroup(const input: string; const expr: string): string;

implementation

// Returns the first group of a regex when there's 100% certainty it exists
function GetSureGroup(const input: string; const expr: string): string;
var
  c: TGroupCollection;
begin
  c := TRegEx.Create(expr).Match(input).Groups;
  Assert(c.Count > 1, Format('Regex %s on %s failed to get an ensured group', [expr,
    input]));
  Result := c.Item[1].Value;
end;

end.

