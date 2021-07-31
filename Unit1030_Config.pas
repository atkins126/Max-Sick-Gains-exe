unit Unit1030_Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.DBCtrls, Unit9010_dataModule, Vcl.ComCtrls, Vcl.Themes,
  Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.WinXCtrls, Vcl.Mask, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, System.IOUtils;

type
  TfrmConfig = class(TForm)
    dbcbbAppTheme: TDBComboBox;
    stat1: TStatusBar;
    btnApply: TButton;
    btnCancel: TButton;
    btnOk: TButton;
    pnl2: TPanel;
    rltvpnl1: TRelativePanel;
    pgc1: TPageControl;
    tsPaths: TTabSheet;
    tsApp: TTabSheet;
    lbl1: TLabel;
    dbedtModPath: TDBEdit;
    lbl2: TLabel;
    dbedtTexPath: TDBEdit;
    btnModPath: TSpeedButton;
    btnTexPath: TSpeedButton;
    il1: TImageList;
    lbl3: TLabel;
    opnDlgMod: TFileOpenDialog;
    opnDlgDirPath: TFileOpenDialog;
    dbedtLuaCfgPath: TDBEdit;
    lbl4: TLabel;
    btnLuaCfgPath: TSpeedButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnModPathClick(Sender: TObject);
    procedure dbedtTexPathChange(Sender: TObject);
    procedure btnTexPathClick(Sender: TObject);
    procedure btnLuaCfgPathClick(Sender: TObject);
    procedure dbedtLuaCfgPathChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure Apply;
    procedure SetPathByDlg(const aField: TConfigField; const dlg:
      TCustomFileDialog; const ProcessFunc: TFunc<string, string>);
    function PathHint(path, fmt: string): string;
    procedure ValidatePaths;
  public
    class procedure Execute;
  end;

var
  frmConfig: TfrmConfig;

implementation

uses
  Data.DB, Functions.Utils;

{$R *.dfm}

procedure TfrmConfig.Apply;
begin
  TStyleManager.TrySetStyle(dtmdl_Main.Config(cfAppTheme).AsString);
  dtmdl_Main.CfgBackup;
end;

procedure TfrmConfig.btnApplyClick(Sender: TObject);
begin
  Apply;
end;

procedure TfrmConfig.btnCancelClick(Sender: TObject);
begin
  dtmdl_Main.CfgRestore;
  Close;
end;

procedure TfrmConfig.btnLuaCfgPathClick(Sender: TObject);
begin
  SetPathByDlg(cfLuaCfgPath, opnDlgDirPath, Identity);
end;

procedure TfrmConfig.btnModPathClick(Sender: TObject);
begin
  SetPathByDlg(cfModPath, opnDlgMod,
    function(s: string): string
    begin
      Result := TPath.GetDirectoryName(opnDlgMod.FileName);
    end);
end;

procedure TfrmConfig.btnOkClick(Sender: TObject);
begin
  Apply;
  Close;
end;

procedure TfrmConfig.btnTexPathClick(Sender: TObject);
begin
  SetPathByDlg(cfTexPath, opnDlgDirPath, Identity);
end;

procedure TfrmConfig.dbedtLuaCfgPathChange(Sender: TObject);
const
  f = 'Configuration files will be output to "%sSKSE\Plugins\"|' +
    'Use this to keep configuration in a separated folder from Max Sick Gains.exe';
begin
  dbedtLuaCfgPath.Hint := PathHint(dbedtLuaCfgPath.EditText, f);
end;

procedure TfrmConfig.dbedtTexPathChange(Sender: TObject);
const
  f = 'Textures will be output to "%stextures\actors\character\Maxick\"|' +
    'Use this to keep textures in a separated folder from Max Sick Gains.esp';
begin
  dbedtTexPath.Hint := PathHint(dbedtTexPath.EditText, f);
end;

class procedure TfrmConfig.Execute;
begin
  frmConfig := TfrmConfig.Create(nil);
  try
    frmConfig.ShowModal;
  finally
    frmConfig.Free;
  end;
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
begin
  dtmdl_Main.CfgBackup;
end;

procedure TfrmConfig.FormDestroy(Sender: TObject);
begin
  ValidatePaths;
end;

function TfrmConfig.PathHint(path, fmt: string): string;
begin
  if path = '' then
    path := '{This Folder}\';
  Result := Format(fmt, [path]);
end;

procedure TfrmConfig.SetPathByDlg(const aField: TConfigField; const dlg:
  TCustomFileDialog; const ProcessFunc: TFunc<string, string>);
var
  field: TField;
begin
  if not dlg.Execute then
    Exit;
  field := dtmdl_Main.Config(aField);
  field.DataSet.Edit;
  field.AsString := IncludeTrailingPathDelimiter(ProcessFunc(dlg.FileName));
  field.DataSet.Post;
end;

procedure TfrmConfig.ValidatePaths;

  procedure AppendPathDelim(const cfg: TConfigField);
  var
    path: string;
  begin
    with dtmdl_Main do begin
      path := Trim(Config(cfg).AsString);
      if path <> '' then
        path := IncludeTrailingPathDelimiter(path);
      ConfigUpdate(cfg, path);
    end;
  end;

begin
  AppendPathDelim(cfModPath);
  AppendPathDelim(cfLuaCfgPath);
  AppendPathDelim(cfTexPath);
end;

end.

