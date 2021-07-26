unit Unit1010_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.Mask, Vcl.DBCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Samples.Spin, Data.Win.ADODB, Unit9010_dataModule,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.StdActns, System.ImageList, Vcl.ImgList,
  Winapi.ShellAPI, System.Types, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  System.Math, System.IOUtils, Unit9020_Types, Winapi.MMSystem;

type

  TfrmMain = class(TForm)
    pgc1: TPageControl;
    tsFitStages: TTabSheet;
    mm1: TMainMenu;
    File1: TMenuItem;
    lbl3: TLabel;
    lbl4: TLabel;
    pnl1: TPanel;
    lbl1: TLabel;
    dbgrd_fitStagesNav: TDBGrid;
    dbedt_fitStageDisplayName: TDBEdit;
    pnl2: TPanel;
    btn1: TSpeedButton;
    dbedtfemBs: TDBEdit;
    stat1: TStatusBar;
    lbl5: TLabel;
    dbedtfemBsUrl: TDBEdit;
    dbedtmanBsUrl: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    pnl3: TPanel;
    btn2: TSpeedButton;
    dbedtmanBs: TDBEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    dblkcbbmuscleDefType: TDBLookupComboBox;
    dblkcbbmuscleDefLvl: TDBLookupComboBox;
    lbl10: TLabel;
    dbmmoexcludedRaces: TDBMemo;
    ts2: TTabSheet;
    pnl4: TPanel;
    lbl11: TLabel;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    lbl12: TLabel;
    se1: TSpinEdit;
    grp2: TGroupBox;
    trckbr_PlyBsMinW: TTrackBar;
    trckbr_PlyBsMaxW: TTrackBar;
    lbl2: TLabel;
    dbedt_fitStageName: TDBEdit;
    pmFitStages: TPopupMenu;
    actmgr1: TActionManager;
    flpn1: TFileOpen;
    flsvs1: TFileSaveAs;
    actFileNew: TAction;
    New1: TMenuItem;
    actDBInsert: TAction;
    ilActions48: TImageList;
    actDBDel: TAction;
    flpndlg_Bs: TFileOpenDialog;
    ilIcons24: TImageList;
    Insert1: TMenuItem;
    Action11: TMenuItem;
    ilActions32: TImageList;
    Record1: TMenuItem;
    Insert2: TMenuItem;
    Delete1: TMenuItem;
    tsOutput: TTabSheet;
    redtOutput: TRichEdit;
    ools1: TMenuItem;
    actTexGen: TAction;
    exturegenerator1: TMenuItem;
    procedure trckbr_PlyBsMinWChange(Sender: TObject);
    procedure trckbr_PlyBsMaxWChange(Sender: TObject);
    procedure dbgrd_fitStagesNavKeyDown(Sender: TObject; var Key: Word; Shift:
      TShiftState);
    procedure actDBInsertExecute(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure actDBDelExecute(Sender: TObject);
    procedure dbgrd_fitStagesNavColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedt_fitStageDisplayNameChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbedtBsChange(Sender: TObject);
    procedure actTexGenExecute(Sender: TObject);
  private
    procedure DisableCtrlDel(var Key: Word; Shift: TShiftState);
    procedure CheckDelAvailability;
    procedure SetBodyslideFromFile(const aField: string);
    procedure DbEdtCursorToLastPos(const edt: TCustomMaskEdit);
    function ActivePageAsTable: TTableName;
    procedure SetEdtHint(const edt: TCustomEdit; const func: TStrToStr);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  Unit5010_ExportBs, TargaImage, FreeImage, Unit7010_Textures, Unit1020_TexGen;


{$R *.dfm}

procedure TfrmMain.actDBDelExecute(Sender: TObject);
begin
//  Show
  Caption := BodyslideToLua('F:\Skyrim SE\MO2\mods\DM Bodyslide presets\CalienteTools\BodySlide\SliderPresets\DM Amazons 3BA Nude.xml');
end;

procedure TfrmMain.actDBInsertExecute(Sender: TObject);
begin
  redtOutput.Text := dtmdl_Main.FitStageToLua;
  Exit;
  dtmdl_Main.Append(ActivePageAsTable);
end;

function TfrmMain.ActivePageAsTable: TTableName;
begin
  if pgc1.ActivePage = tsFitStages then
    Result := tnFitStages
  else
    Result := tnNone;
end;

procedure TfrmMain.actTexGenExecute(Sender: TObject);
begin
  frm_ToolTexGen := Tfrm_ToolTexGen.Create(Self);
  try
    frm_ToolTexGen.ShowModal;
  finally
    frm_ToolTexGen.Free;
  end;
end;

procedure TfrmMain.btn1Click(Sender: TObject);
begin
  SetBodyslideFromFile('femBs');
  DbEdtCursorToLastPos(dbedtfemBs);
end;

procedure TfrmMain.btn2Click(Sender: TObject);
begin
  SetBodyslideFromFile('manBs');
  DbEdtCursorToLastPos(dbedtmanBs);
end;

procedure TfrmMain.CheckDelAvailability;
begin
  if pgc1.ActivePage = tsFitStages then
    actDBDel.Enabled := not dtmdl_Main.IsAtFirst(tnFitStages)
  else
    actDBDel.Enabled := true
end;

procedure TfrmMain.DbEdtCursorToLastPos(const edt: TCustomMaskEdit);
begin
  edt.SelStart := Length(edt.EditText);
  edt.SelLength := 0;
end;

procedure TfrmMain.dbedtBsChange(Sender: TObject);
begin
  SetEdtHint(Sender as TCustomEdit,
    function(s: string): string
    begin
      Result := ExtractFileName(s);
    end);
end;

procedure TfrmMain.dbedt_fitStageDisplayNameChange(Sender: TObject);
const
  s = 'Whenever you enter this state, a message will say "You now look %s".';
begin
  SetEdtHint(dbedt_fitStageDisplayName,
    function(txt: string): string
    begin
      Result := Format(s, [txt]);
    end);
end;

procedure TfrmMain.dbgrd_fitStagesNavColEnter(Sender: TObject);
begin
  CheckDelAvailability;
end;

procedure TfrmMain.dbgrd_fitStagesNavKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DisableCtrlDel(Key, Shift)
end;

procedure TfrmMain.DisableCtrlDel(var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) and (Shift = [ssCtrl]) then
    Key := 0;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  CheckDelAvailability;
end;

procedure TfrmMain.pgc1Change(Sender: TObject);
begin
  CheckDelAvailability;
end;

procedure TfrmMain.SetBodyslideFromFile(const aField: string);
begin
  if flpn1.Execute then
    dtmdl_Main.Edit(tnFitStages, aField, flpn1.Dialog.FileName);
end;

procedure TfrmMain.SetEdtHint(const edt: TCustomEdit; const func: TStrToStr);
begin
  edt.Hint := func(edt.Text);
end;

procedure TfrmMain.trckbr_PlyBsMaxWChange(Sender: TObject);
begin
  trckbr_PlyBsMinW.Max := trckbr_PlyBsMaxW.Position;
end;

procedure TfrmMain.trckbr_PlyBsMinWChange(Sender: TObject);
begin
  trckbr_PlyBsMaxW.Min := trckbr_PlyBsMinW.Position;
end;

end.

