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
    opnDlgTexPath: TFileOpenDialog;
    procedure btnCancelClick(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnModPathClick(Sender: TObject);
    procedure dbedtTexPathChange(Sender: TObject);
    procedure btnTexPathClick(Sender: TObject);
  private
    procedure Apply;
    procedure SetPathByDlg(const aField: TConfigField; const dlg:
      TCustomFileDialog; const ProcessFunc: TFunc<string, string>);
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses
  Data.DB;



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

procedure TfrmConfig.btnModPathClick(Sender: TObject);
//var
//  field: TField;
begin
  SetPathByDlg(cfModPath, opnDlgMod,
    function(s: string): string
    begin
      Result := TPath.GetDirectoryName(opnDlgMod.FileName);
    end);
//  if not opnDlgMod.Execute then
//    Exit;
//  field := dtmdl_Main.Config(cfModPath);
//  field.DataSet.Edit;
//  field.AsString := TPath.GetDirectoryName(opnDlgMod.FileName)
//    + TPath.DirectorySeparatorChar;
//  field.DataSet.Post;
end;

procedure TfrmConfig.btnOkClick(Sender: TObject);
begin
  Apply;
  Close;
end;

procedure TfrmConfig.btnTexPathClick(Sender: TObject);
begin
  SetPathByDlg(cfTexPath, opnDlgTexPath,
    function(s: string): string
    begin
      Result := s;
    end);
end;

procedure TfrmConfig.dbedtTexPathChange(Sender: TObject);
const
  f =
    'Textures will be output to "%stextures\actors\character\Maxick\"|Use this to keep textures in a separated folder from Max Sick Gains.esp';
var
  path: string;
begin
  path := dbedtTexPath.EditText;
  if path = '' then
    path := '{This Folder}';
  dbedtTexPath.Hint := Format(f, [path]);
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
begin
  dtmdl_Main.CfgBackup;
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

end.

