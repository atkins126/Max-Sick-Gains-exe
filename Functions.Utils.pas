unit Functions.Utils;

interface

uses
  System.SysUtils;

function Identity(s: string): string;

implementation

function Identity(s: string): string;
begin
  Result := s;
end;

end.

