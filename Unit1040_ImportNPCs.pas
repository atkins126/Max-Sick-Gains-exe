unit Unit1040_ImportNPCs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, System.Win.ComObj,
  Vcl.ExtCtrls, Vcl.WinXCtrls, Unit3010_FilterImportedNPC;

type
  TfrmImportNPCs = class(TForm)
    dbgrd1: TDBGrid;
    btnImport: TBitBtn;
    opnDlg1: TFileOpenDialog;
    rltvpnl1: TRelativePanel;
    btnClose: TButton;
    grp1: TGroupBox;
    filterImportedNPC1: TfrmFilterImportedNPC;
    btnSearch: TBitBtn;
    btnAccept: TButton;
    btnClearFilter: TBitBtn;
    procedure btnImportClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnClearFilterClick(Sender: TObject);
  private
    procedure HideAcceptBtn;
    procedure MakeSelectDlg;
  protected
  public
    class procedure Execute;
    class function Select: Integer;
  end;

var
  frmImportNPCs: TfrmImportNPCs;

implementation

uses
  Unit9010_dataModule;

{$R *.dfm}

procedure TfrmImportNPCs.btnClearFilterClick(Sender: TObject);
begin
  filterImportedNPC1.Clear;
  dtmdl_Main.FilterTable(tnAllNPCs, filterImportedNPC1.Filter);
end;

procedure TfrmImportNPCs.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImportNPCs.btnImportClick(Sender: TObject);
var
  aFile: TStringList;
  line: string;
begin
  if opnDlg1.Execute then begin
    aFile := TStringList.Create;
    try
      aFile.LoadFromFile(opnDlg1.FileName);
      for line in aFile do
      try
        dtmdl_Main.ExecuteSQL(line);
      except
        on E: EOleException do  // Avoid exception when adding duplicate records
      end;
      dtmdl_Main.RefreshTable(tnAllNPCs);
    finally
      aFile.Free;
    end;
  end;
end;

procedure TfrmImportNPCs.btnSearchClick(Sender: TObject);
begin
  dtmdl_Main.FilterTable(tnAllNPCs, filterImportedNPC1.Filter);
end;

procedure TfrmImportNPCs.dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if (Key = VK_DELETE) and (Shift = [ssCtrl]) then
    Key := 0;
end;

class procedure TfrmImportNPCs.Execute;
begin
  frmImportNPCs := TfrmImportNPCs.Create(nil);
  try
    with frmImportNPCs do begin
      HideAcceptBtn;
      ShowModal;
    end;
  finally
    frmImportNPCs.Free;
  end;
end;

procedure TfrmImportNPCs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  dtmdl_Main.FilterTable(tnAllNPCs, '');
end;

procedure TfrmImportNPCs.FormCreate(Sender: TObject);
begin
  filterImportedNPC1.Races := dtmdl_Main.ValidRaces;
end;

procedure TfrmImportNPCs.HideAcceptBtn;
begin
  btnAccept.Visible := false;
  rltvpnl1.ControlCollection[0].LeftOf := btnClose;
  btnClose.Caption := '&Close';
end;

procedure TfrmImportNPCs.MakeSelectDlg;
begin
  Caption := 'Select the NPC you want to set values for';
  btnImport.Visible := false;
  btnSearch.Default := false;
  btnAccept.Default := true;
end;

class function TfrmImportNPCs.Select: Integer;
begin
  frmImportNPCs := TfrmImportNPCs.Create(nil);
  try
    with frmImportNPCs do begin
      MakeSelectDlg;
      if ShowModal = mrOk then
        Result := dtmdl_Main.tblAllNPCs.FieldByName('Id').AsInteger
      else
        Result := -1;
    end;
  finally
    frmImportNPCs.Free;
  end;
end;

end.

