unit Unit3010_FilterImportedNPC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Functional.Sequence;

function FilterStr(const str, field: string): string;

function FilterCombo(const cbb: TComboBox; const field: string): string;

function FilterExists(const s: string): Boolean;

function SetComboBoxItems(const aItems: string; const first: string = ''): string;

type
  TfrmFilterImportedNPC = class(TFrame)
    edtFormId: TEdit;
    edtEsp: TEdit;
    edtName: TEdit;
    cbbClass: TComboBox;
    cbbRace: TComboBox;
    cbbSex: TComboBox;
  private
    function GetSexFilter: string;
    function GetRaces: string;
    procedure SetRaces(const Value: string);
  public
    function Filter: string;
    property Races: string read GetRaces write SetRaces;
    procedure Clear;
  end;

implementation

uses
  Functions.Strings;

{$R *.dfm}

function SetComboBoxItems(const aItems: string; const first: string = ''): string;
var
  vals: TStringList;
begin
  vals := TStringList.Create;
  try
    vals.Text := aItems;
    vals.Sort;
    if first <> '' then
      vals.Insert(0, first);
    Result := vals.Text;
  finally
    vals.Free;
  end;
end;

function FilterExists(const s: string): Boolean;
begin
  Result := s <> '';
end;

function FilterCombo(const cbb: TComboBox; const field: string): string;
begin
  if cbb.ItemIndex = 0 then
    Result := ''
  else
    Result := FilterStr(cbb.Text, field);
end;

function FilterStr(const str, field: string): string;
begin
  if Trim(str) = '' then
    Result := ''
  else
    Result := Format('%s LIKE ''%%%s%%''', [field, str]);
end;

{ TfrmFilterImportedNPC }

procedure TfrmFilterImportedNPC.Clear;
begin
  edtFormId.Text := '';
  edtEsp.Text := '';
  edtName.Text := '';
  cbbClass.ItemIndex := 0;
  cbbRace.ItemIndex := 0;
  cbbSex.ItemIndex := 0;
end;

function TfrmFilterImportedNPC.Filter: string;
var
  lst: TStringList;
begin
  lst := TStringList.Create;
  try
    lst.Add(FilterStr(edtFormId.Text, 'formID'));
    lst.Add(FilterStr(edtEsp.Text, 'esp'));
    lst.Add(FilterStr(edtName.Text, 'fullName'));
    lst.Add(FilterCombo(cbbClass, 'class'));
    lst.Add(FilterCombo(cbbRace, 'race'));
    lst.Add(GetSexFilter);
    Result := TSeq.From(lst)
      .Filter(FilterExists)
      .Fold<string>(ReduceStr(' AND '), '');
  finally
    lst.Free;
  end;
end;

function TfrmFilterImportedNPC.GetRaces: string;
begin
  Result := cbbRace.Items.Text;
end;

function TfrmFilterImportedNPC.GetSexFilter: string;
begin
  case cbbSex.ItemIndex of
    0:
      Result := '';
    1:
      Result := 'isFemale = FALSE';
    2:
      Result := 'isFemale = TRUE';
  end;
end;

procedure TfrmFilterImportedNPC.SetRaces(const Value: string);
begin
  cbbRace.Items.Text := SetComboBoxItems(Value, '<All races>');
end;

end.

