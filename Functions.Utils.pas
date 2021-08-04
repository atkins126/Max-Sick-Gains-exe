unit Functions.Utils;

interface

uses
  System.SysUtils, Unit9020_Types, Data.DB, Functional.FuncFactory;

function Identity(s: string): string; overload;

function NotNullStr(const s: string): Boolean;

function NotNullStrField(const aField: string): Functional.FuncFactory.TPredicate
  <TDataSet>;

procedure Identity; overload;

implementation

function NotNullStrField(const aField: string): Functional.FuncFactory.TPredicate
  <TDataSet>;
begin
  Result :=
    function(const ds: TDataSet): Boolean
    begin
      Result := NotNullStr(ds.FieldByName(aField).AsString);
    end;
end;

function Identity(s: string): string;
begin
  Result := s;
end;

procedure Identity;
begin
  // Blank procedure. Does nothing.
end;

function NotNullStr(const s: string): Boolean;
begin
  Result := Trim(s) <> '';
end;

end.

