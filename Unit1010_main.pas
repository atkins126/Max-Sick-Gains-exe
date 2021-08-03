unit Unit1010_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.Mask, Vcl.DBCtrls, Vcl.WinXPanels, Vcl.Buttons, Data.Win.ADODB,
  Unit9010_dataModule, Vcl.PlatformDefaultStyleActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.ActnMan, Vcl.StdActns, System.ImageList, Vcl.ImgList,
  System.Types, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, System.Math,
  Unit9020_Types, Winapi.ShellAPI, Vcl.Themes, System.StrUtils,
  DataAware.TDBTrackBar, System.Generics.Collections, System.Notification,
  Unit3010_FilterImportedNPC, Winapi.OleDB, System.Win.ComObj, Vcl.WinXCtrls;

type
  TfrmMain = class(TForm)
    pgc1: TPageControl;
    tsFitStages: TTabSheet;
    mm1: TMainMenu;
    File1: TMenuItem;
    lbl3: TLabel;
    lbl4: TLabel;
    pnl1Nav: TPanel;
    lbl1: TLabel;
    dbgrd_fitStagesNav: TDBGrid;
    dbedt_fitStageDisplayName: TDBEdit;
    stat1: TStatusBar;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dblkcbbmuscleDefType: TDBLookupComboBox;
    dblkcbbmuscleDefLvl: TDBLookupComboBox;
    lbl10: TLabel;
    dbmmoexcludedRaces: TDBMemo;
    tsPlayerStages: TTabSheet;
    pnl4: TPanel;
    lbl11: TLabel;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    lbl12: TLabel;
    grp2: TGroupBox;
    lbl2: TLabel;
    dbedt_fitStageName: TDBEdit;
    pmRecords: TPopupMenu;
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
    tsOutput: TTabSheet;
    redtOutput: TRichEdit;
    ools1: TMenuItem;
    actTexGen: TAction;
    exturegenerator1: TMenuItem;
    ilIcons16: TImageList;
    lbl5: TLabel;
    lbl7: TLabel;
    btn_femBs: TSpeedButton;
    dbedt_femBs: TDBEdit;
    dbedt_femBsUrl: TDBEdit;
    btn_femBsUrl: TSpeedButton;
    dbedt_manBs: TDBEdit;
    btn_manBs: TSpeedButton;
    dbedt_manBsUrl: TDBEdit;
    btn_manBsUrl: TSpeedButton;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    actSave: TAction;
    Save1: TMenuItem;
    N2: TMenuItem;
    actGenerate: TAction;
    Generate1: TMenuItem;
    dbtrckbrbsMin: TDBTrackBar;
    lbl13: TLabel;
    dblkcbbFitnessStage: TDBLookupComboBox;
    dbedtminDays: TDBEdit;
    dbtrckbrbsMax: TDBTrackBar;
    lbl14: TLabel;
    lbl15: TLabel;
    dbtrckbrmuscleMin: TDBTrackBar;
    dbtrckbrmuscleMax: TDBTrackBar;
    lbl16: TLabel;
    lbl17: TLabel;
    dbtrckbrblend: TDBTrackBar;
    lbl18: TLabel;
    grp3: TGroupBox;
    lbl19: TLabel;
    dbtrckbrheadInit: TDBTrackBar;
    dbtrckbrheadFinal: TDBTrackBar;
    lbl20: TLabel;
    imgJourney: TImage;
    N3: TMenuItem;
    actAppConfig: TAction;
    Appconfiguration1: TMenuItem;
    actClearConfig: TAction;
    Clearconfiguration1: TMenuItem;
    pmTrackbar: TPopupMenu;
    actTrackbarSet: TAction;
    Setvalue1: TMenuItem;
    tsNPCs: TTabSheet;
    tsMuscleDef: TTabSheet;
    tsMCM: TTabSheet;
    tsRaces: TTabSheet;
    dbmmoraces: TDBMemo;
    dbmmodescription: TDBMemo;
    pnl1: TPanel;
    lbl23: TLabel;
    dbgrd4: TDBGrid;
    actImportNPCs: TAction;
    actImportNPCs1: TMenuItem;
    Recentfiles1: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    cbbMcmPlayerProcessing: TComboBox;
    cbbMcmNpcProcessing: TComboBox;
    filterImportedNPC1: TfrmFilterImportedNPC;
    stckpnl1: TStackPanel;
    pnl2: TPanel;
    opnDlgBs: TFileOpenDialog;
    pnl3: TPanel;
    lbl21: TLabel;
    dbgrd2: TDBGrid;
    dbtxtesp: TDBText;
    dbtxtformID: TDBText;
    dblkcbbfitStage: TDBLookupComboBox;
    dbtrckbrweight: TDBTrackBar;
    dbtrckbrmuscleDef: TDBTrackBar;
    lbl22: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    rltvpnl1: TRelativePanel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    dbtxtclass: TDBText;
    dbtxtrace: TDBText;
    dbtxtisFemale: TDBText;
    pnl5: TPanel;
    grp4: TGroupBox;
    lbl33: TLabel;
    grp5: TGroupBox;
    lbl34: TLabel;
    lbl_NPCWeight: TLabel;
    lbl_NPCMuscleDef: TLabel;
    procedure dbgrd_NavKeyDown(Sender: TObject; var Key: Word; Shift:
      TShiftState);
    procedure actDBInsertExecute(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure actDBDelExecute(Sender: TObject);
    procedure dbgrd_fitStagesNavColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedt_fitStageDisplayNameChange(Sender: TObject);
    procedure btn_femBsClick(Sender: TObject);
    procedure btn_manBsClick(Sender: TObject);
    procedure dbedtBsChange(Sender: TObject);
    procedure actTexGenExecute(Sender: TObject);
    procedure btn_femBsUrlClick(Sender: TObject);
    procedure btn_manBsUrlClick(Sender: TObject);
    procedure actGenerateExecute(Sender: TObject);
    procedure imgJourneyClick(Sender: TObject);
    procedure JourneyTrackbarExit(Sender: TObject);
    procedure actAppConfigExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actClearConfigExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actTrackbarSetExecute(Sender: TObject);
    procedure actImportNPCsExecute(Sender: TObject);
    procedure flsvs1Accept(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure flpn1Accept(Sender: TObject);
    procedure actFileNewExecute(Sender: TObject);
    procedure dbtrckbrmuscleDefChange(Sender: TObject);
    procedure dbtrckbrweightChange(Sender: TObject);
  private
    procedure DisableCtrlDel(var Key: Word; Shift: TShiftState);
    procedure CheckDelAvailability;
    procedure SetBodyslideFromFile(const aField: string);
    procedure DbEdtCursorToLastPos(const edt: TCustomMaskEdit);
    function ActivePageAsTable: TTableName;
    procedure SetEdtHint(const edt: TCustomEdit; const func: TStrToStr);
    procedure ShellOpen(const s: string);
    function InsertProcedure(const aTbl: TTableName): TProcedureNoParams;
    function InsertProcMin(const aTbl: TTableName; const aCmd: TFunc<string>):
      TProcedureNoParams;
    function InsertProcPlayerStage(const aTbl: TTableName; const aCmd: TFunc<
      string>): TProcedureNoParams;
    function InsertProcNPC(const aTbl: TTableName): TProcedureNoParams;
  public
    procedure DrawPlayerJourney;
    procedure ApplyConfig;
  end;

var
  frmMain: TfrmMain;

implementation

uses
  TargaImage, Unit1020_TexGen, Unit5020_DrawJourney, Unit1030_Config,
  Unit1040_ImportNPCs, Functions.Utils;

{$R *.dfm}

procedure TfrmMain.actAppConfigExecute(Sender: TObject);
begin
  TfrmConfig.Execute;
end;

procedure TfrmMain.actClearConfigExecute(Sender: TObject);
begin
  dtmdl_Main.ResetConfig;
  Application.MessageBox('Configuration was cleared successfully.', 'Success',
    MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TfrmMain.actDBDelExecute(Sender: TObject);
begin
  { TODO : Add delete code }
//  TryDrawJourney;
end;

procedure TfrmMain.actDBInsertExecute(Sender: TObject);
begin
  InsertProcedure(ActivePageAsTable)();
end;

procedure TfrmMain.actFileNewExecute(Sender: TObject);
begin
  dtmdl_Main.OpenFile;  // Calling it without filename opens a new one from template
end;

procedure TfrmMain.actGenerateExecute(Sender: TObject);
begin
  redtOutput.Text := dtmdl_Main.GenerateAllModData;
  if redtOutput.Text = '' then
    Application.MessageBox('Mod data was successfully generated.' + #13#10 +
      'Max Sick Gains can now be played in Skyrim.', 'Success', MB_OK +
      MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TfrmMain.actImportNPCsExecute(Sender: TObject);
begin
  TfrmImportNPCs.Execute;
end;

function TfrmMain.ActivePageAsTable: TTableName;
begin
  if pgc1.ActivePage = tsFitStages then
    Result := tnFitStages
  else if pgc1.ActivePage = tsPlayerStages then
    Result := tnPlayerStages
  else if pgc1.ActivePage = tsNPCs then
    Result := tnNPCs
  else
    Result := tnNone;
end;

procedure TfrmMain.actSaveExecute(Sender: TObject);
begin
  if dtmdl_Main.WorkingFile = '' then
    flsvs1.Execute
  else
    dtmdl_Main.SaveFile(dtmdl_Main.WorkingFile);
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

procedure TfrmMain.actTrackbarSetExecute(Sender: TObject);
var
  trackbar: TTrackBar;
  newPos: string;
  val: Integer;
begin
  trackbar := pmTrackbar.PopupComponent as TTrackBar;
  trackbar.SetFocus;
  newPos := (Round(trackbar.Position / 10) * 10).ToString;
  newPos := InputBox('Set the value you want', 'Value', newPos);
  if TryStrToInt(newPos, val) then
    if trackbar is TDBTrackBar then
      (trackbar as TDBTrackBar).SetPosition(val)
    else
      trackbar.Position := val;
end;

procedure TfrmMain.ApplyConfig;
var
  st: string;
begin
  st := dtmdl_Main.Config(cfAppTheme).AsString;
  if st <> '' then
    TStyleManager.TrySetStyle(st);
end;

procedure TfrmMain.btn_femBsClick(Sender: TObject);
begin
  SetBodyslideFromFile('femBs');
  DbEdtCursorToLastPos(dbedt_femBs);
end;

procedure TfrmMain.btn_femBsUrlClick(Sender: TObject);
begin
  ShellOpen(dbedt_femBsUrl.EditText);
end;

procedure TfrmMain.btn_manBsClick(Sender: TObject);
begin
  SetBodyslideFromFile('manBs');
  DbEdtCursorToLastPos(dbedt_manBs);
end;

procedure TfrmMain.btn_manBsUrlClick(Sender: TObject);
begin
  ShellOpen(dbedt_manBsUrl.EditText);
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

procedure TfrmMain.dbgrd_NavKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  DisableCtrlDel(Key, Shift)
end;

procedure TfrmMain.dbtrckbrmuscleDefChange(Sender: TObject);
var
  cap, musDefType: string;
  val: Integer;
begin
  { TODO : Call when user changes fitness stage }
  musDefType := dtmdl_Main.Field(tnNPCs, 'muscleDefTypeName').AsString +
    ' looking';
  val := dbtrckbrmuscleDef.Position;
  case val of
    -1:
      cap := 'Don''t change muscle definition.';
    0:
      cap := Format('%s. Get from NPC weight.', [musDefType]);
  else
    cap := Format('%s. Level %d.', [musDefType, val]);
  end;
  lbl_NPCMuscleDef.Caption := cap;
end;

procedure TfrmMain.dbtrckbrweightChange(Sender: TObject);
var
  val: Integer;
  cap: string;
begin
  val := dbtrckbrweight.Position;
  case val of
    -1:
      cap := 'Max Sick Gains won''t change this NPC body shape.';
    101:
      cap := 'Get from NPC weight. Will look as usual.';
  else
    cap := Format('NPC will look as if their weight was %d.', [val]);
  end;
  lbl_NPCWeight.Caption := cap;
end;

procedure TfrmMain.JourneyTrackbarExit(Sender: TObject);
begin
  DrawPlayerJourney;
end;

procedure TfrmMain.DisableCtrlDel(var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) and (Shift = [ssCtrl]) then
    Key := 0;
end;

procedure TfrmMain.DrawPlayerJourney;
var
  aData: TList<TJourneyItem>;
begin
  dtmdl_Main.Post(tnPlayerStages);
  aData := dtmdl_Main.PlayerJourney;
  try
    DrawJourney(imgJourney.Picture.Bitmap, imgJourney.ClientWidth - 1,
      imgJourney.ClientHeight - 1, aData);
  finally
    aData.Free;
  end;
end;

procedure TfrmMain.flpn1Accept(Sender: TObject);
begin
  dtmdl_Main.OpenFile(flpn1.Dialog.FileName);
  { TODO : Add to recent files }
end;

procedure TfrmMain.flsvs1Accept(Sender: TObject);
begin
{ TODO : Add to recent files }
  dtmdl_Main.SaveFile(flsvs1.Dialog.FileName);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmdl_Main.ConfigUpdate(cfLastTab, pgc1.TabIndex);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Application.HintHidePause := 6000;
  filterImportedNPC1.Init(tnNPCs);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  CheckDelAvailability;
  DrawPlayerJourney;
  // This is done here to avoid OnShow errors. Don't move.
  pgc1.TabIndex := dtmdl_Main.Config(cfLastTab).AsInteger;
end;

procedure TfrmMain.imgJourneyClick(Sender: TObject);
begin
  DrawPlayerJourney;
end;

function TfrmMain.InsertProcedure(const aTbl: TTableName): TProcedureNoParams;
begin
  case aTbl of
    tnFitStages:
      Result := InsertProcMin(aTbl, dtmdl_Main.AppendFitStage);
    tnPlayerStages:
      Result := InsertProcPlayerStage(aTbl, dtmdl_Main.AppendPlayerStage);
    tnNPCs:
      Result := InsertProcNPC(aTbl);
  else
    Result := Identity;
  end;
end;

function TfrmMain.InsertProcMin(const aTbl: TTableName; const aCmd: TFunc<string
  >): TProcedureNoParams;
begin
  Result :=
    procedure
    begin
      dtmdl_Main.Append(aTbl, aCmd);
    end;
end;

function TfrmMain.InsertProcNPC(const aTbl: TTableName): TProcedureNoParams;
begin
  Result :=
    procedure
    var
      npcId: Integer;
    begin
      npcId := TfrmImportNPCs.Select;
      if npcId = -1 then
        Exit;
      InsertProcMin(aTbl, dtmdl_Main.AppendNPC(npcId))();
      dtmdl_Main.RefreshTable(aTbl);
      { TODO : Sort table }
//        dtmdl_Main.tblNPCs.Sort := '';
    end;
end;

function TfrmMain.InsertProcPlayerStage(const aTbl: TTableName; const aCmd:
  TFunc<string>): TProcedureNoParams;
begin
  Result :=
    procedure
    begin
      InsertProcMin(aTbl, aCmd)();
      DrawPlayerJourney;
    end;
end;

procedure TfrmMain.pgc1Change(Sender: TObject);
begin
  CheckDelAvailability;
end;

procedure TfrmMain.SetBodyslideFromFile(const aField: string);
var
  defDir: string;
begin
  defDir := dtmdl_Main.Field(tnFitStages, aField).AsString;
  opnDlgBs.DefaultFolder := ExtractFilePath(defDir);
  if opnDlgBs.Execute then
    dtmdl_Main.Edit(tnFitStages, aField, opnDlgBs.FileName);
end;

procedure TfrmMain.SetEdtHint(const edt: TCustomEdit; const func: TStrToStr);
begin
  edt.Hint := func(edt.Text);
end;

procedure TfrmMain.ShellOpen(const s: string);
begin
  ShellExecute(0, 'OPEN', PWideChar(s), '', '', SW_SHOWNORMAL);
end;

end.

