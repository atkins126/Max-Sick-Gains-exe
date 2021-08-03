unit Unit3010_FilterImportedNPC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Functional.Sequence, Vcl.Buttons, Unit9010_dataModule;

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
    btnSearch: TButton;
    btnClear: TButton;
    procedure btnSearchClick(Sender: TObject);
    procedure btnClearFilterClick(Sender: TObject);
    procedure ctrlEnter(Sender: TObject);
    procedure ctrlExit(Sender: TObject);
  private
    FtableToFilter: TTableName;
    FDefaultBtn: TCustomButton;
    function GetSexFilter: string;
    function GetRaces: string;
    procedure SetRaces(const Value: string);
    procedure SetDefaultBtn(const Value: TCustomButton);
    procedure BtnSearchSetDefault(const val: Boolean);
  public
    procedure Init(const aTableToFilter: TTableName; const aDefaultBtn:
      TCustomButton = nil);
    function Filter: string;
    property Races: string read GetRaces write SetRaces;
    procedure Clear;
    property tableToFilter: TTableName read FtableToFilter write FtableToFilter;
    property DefaultBtn: TCustomButton read FDefaultBtn write SetDefaultBtn;
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
  if cbb.ItemIndex <= 0 then
    Result := ''
  else
    Result := FilterStr(cbb.Text, field);
end;

function FilterStr(const str, field: string): string;
begin
  if Trim(str) = '' then
    Result := ''
  else
    Result := Format('%s LIKE ''*%s*''', [field, str]);
end;

{ TfrmFilterImportedNPC }

procedure TfrmFilterImportedNPC.btnClearFilterClick(Sender: TObject);
begin
  Clear;
  dtmdl_Main.FilterTable(FtableToFilter, '');
end;

procedure TfrmFilterImportedNPC.btnSearchClick(Sender: TObject);
begin
  dtmdl_Main.FilterTable(FtableToFilter, Filter);
end;

procedure TfrmFilterImportedNPC.BtnSearchSetDefault(const val: Boolean);
begin
  btnSearch.Default := val;
  if Assigned(FDefaultBtn) then
    FDefaultBtn.Default := not val;
end;

procedure TfrmFilterImportedNPC.Clear;
begin
  edtFormId.Text := '';
  edtEsp.Text := '';
  edtName.Text := '';
  cbbClass.ItemIndex := 0;
  cbbRace.ItemIndex := 0;
  cbbSex.ItemIndex := 0;
end;

procedure TfrmFilterImportedNPC.ctrlEnter(Sender: TObject);
begin
  BtnSearchSetDefault(true);
end;

procedure TfrmFilterImportedNPC.ctrlExit(Sender: TObject);
begin
  BtnSearchSetDefault(false);
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

procedure TfrmFilterImportedNPC.Init(const aTableToFilter: TTableName; const
  aDefaultBtn: TCustomButton);
begin
  FtableToFilter := aTableToFilter;
  Races := dtmdl_Main.ValidRaces;
  FDefaultBtn := aDefaultBtn;
end;

procedure TfrmFilterImportedNPC.SetDefaultBtn(const Value: TCustomButton);
begin
  if Assigned(Value) then
    Value.Default := true;
  FDefaultBtn := Value;
end;

procedure TfrmFilterImportedNPC.SetRaces(const Value: string);
begin
  cbbRace.Items.Text := SetComboBoxItems(Value, '<All races>');
end;

end.

