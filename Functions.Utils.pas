unit Functions.Utils;

interface

uses
  System.SysUtils, Unit9020_Types;

function Identity(s: string): string; overload;

procedure Identity; overload;

implementation

function Identity(s: string): string;
begin
  Result := s;
end;

procedure Identity;
begin
  // Blank procedure. Does nothing.
end;

end.

