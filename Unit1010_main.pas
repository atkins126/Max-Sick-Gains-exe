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
  DataAware.TDBTrackBar, System.Generics.Collections;

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
    dbgrd2: TDBGrid;
    dbchk_ManageNPCs: TDBCheckBox;
    dbgrd3: TDBGrid;
    grp4: TGroupBox;
    lbl21: TLabel;
    lbl22: TLabel;
    dbrgrp1: TDBRadioGroup;
    tsRaces: TTabSheet;
    dbmmoraces: TDBMemo;
    dbmmodescription: TDBMemo;
    pnl1: TPanel;
    lbl23: TLabel;
    dbgrd4: TDBGrid;
    actImportNPCs: TAction;
    actImportNPCs1: TMenuItem;
    procedure dbgrd_fitStagesNavKeyDown(Sender: TObject; var Key: Word; Shift:
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
  private
    procedure DisableCtrlDel(var Key: Word; Shift: TShiftState);
    procedure CheckDelAvailability;
    procedure SetBodyslideFromFile(const aField: string);
    procedure DbEdtCursorToLastPos(const edt: TCustomMaskEdit);
    function ActivePageAsTable: TTableName;
    procedure SetEdtHint(const edt: TCustomEdit; const func: TStrToStr);
    procedure ShellOpen(const s: string);
    procedure TryDrawJourney;
  public
    procedure DrawPlayerJourney;
    procedure ApplyConfig;
  end;

var
  frmMain: TfrmMain;

implementation

uses
  TargaImage, Unit1020_TexGen, Unit5020_DrawJourney, Unit1030_Config, Unit1040_ImportNPCs;

{$R *.dfm}

procedure TfrmMain.actAppConfigExecute(Sender: TObject);
begin
  frmConfig := TfrmConfig.Create(Self);
  try
    frmConfig.ShowModal;
  finally
    frmConfig.Free;
  end;
end;

procedure TfrmMain.actClearConfigExecute(Sender: TObject);
begin
  dtmdl_Main.ResetConfig;
end;

procedure TfrmMain.actDBDelExecute(Sender: TObject);
begin
  // Delete

  TryDrawJourney;
end;

procedure TfrmMain.actDBInsertExecute(Sender: TObject);
begin
  dtmdl_Main.Append(ActivePageAsTable);
  TryDrawJourney;
end;

procedure TfrmMain.actGenerateExecute(Sender: TObject);
begin
  redtOutput.Text := dtmdl_Main.FitStagesToLua;
end;

procedure TfrmMain.actImportNPCsExecute(Sender: TObject);
begin
  frmImportNPCs := TfrmImportNPCs.Create(Self);
  try
    frmImportNPCs.ShowModal;
  finally
    frmImportNPCs.Release;
  end;
end;

function TfrmMain.ActivePageAsTable: TTableName;
begin
  if pgc1.ActivePage = tsFitStages then
    Result := tnFitStages
  else if pgc1.ActivePage = tsPlayerStages then
    Result := tnPlayerStages
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

procedure TfrmMain.actTrackbarSetExecute(Sender: TObject);
var
  trackbar: TTrackBar;
  newPos: string;
  val: Integer;
begin
  trackbar := pmTrackbar.PopupComponent as TTrackBar;
  newPos := (Round(trackbar.Position / 10) * 10).ToString;
  newPos := InputBox('Set the value you want', 'Value', newPos);
  if TryStrToInt(newPos, val) then
    trackbar.Position := val;
end;

procedure TfrmMain.ApplyConfig;
begin
  TStyleManager.TrySetStyle(dtmdl_Main.Config(cfAppTheme).AsString);
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

procedure TfrmMain.dbgrd_fitStagesNavKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  DisableCtrlDel(Key, Shift)
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

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmdl_Main.ConfigUpdate(cfLastTab, pgc1.TabIndex);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Application.HintHidePause := 6000;
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

procedure TfrmMain.ShellOpen(const s: string);
begin
  ShellExecute(0, 'OPEN', PWideChar(s), '', '', SW_SHOWNORMAL);
end;

procedure TfrmMain.TryDrawJourney;
begin
  if pgc1.ActivePage = tsPlayerStages then
    DrawPlayerJourney;
end;

end.

