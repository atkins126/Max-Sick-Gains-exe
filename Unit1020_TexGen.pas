unit Unit1020_TexGen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.WinXPanels,
  Winapi.ShellAPI, FreeImage, Unit9020_Types, System.Math, System.StrUtils,
  Vcl.Buttons;

type
  TDropFile = procedure(Sender: TObject; fileName: string) of object;

  TDropPanel = class(TPanel)
    procedure WMDropFiles(var Message: TWMDropFiles); message WM_DROPFILES;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
  private
    FOnDropFile: TDropFile;
  public
    procedure AfterConstruction; override;
    property OnDropFile: TDropFile read FOnDropFile write FOnDropFile;
  end;

  Tfrm_ToolTexGen = class(TForm)
    stat1: TStatusBar;
    btnClose: TButton;
    rltvpnl1: TRelativePanel;
    btn_TexGen: TButton;
    pnl1: TPanel;
    rltvpnl2: TRelativePanel;
    pnlTex1: TPanel;
    pnlTexMax: TPanel;
    stckpnl1: TStackPanel;
    lbl_fName1: TLabel;
    btn1: TButton;
    stckpnl2: TStackPanel;
    lbl_fName2: TLabel;
    btn2: TButton;
    img_Lvl1: TImage;
    img_LvlMax: TImage;
    stckpnl3: TStackPanel;
    rgRace: TRadioGroup;
    rgSex: TRadioGroup;
    rgFitType: TRadioGroup;
    rgRes: TRadioGroup;
    opnDlg1: TFileOpenDialog;
    btn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btn_TexGenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    pnlTexLvl1: TDropPanel;
    pnlTexLvlMax: TDropPanel;
    RestoreVisualCues: TProcedureNoParams;
    procedure SetVisualCues;
    procedure InitDropPnl(const pnl: TDropPanel; const img: TImage; const
      aParent: TPanel);
    procedure OnTexLvl1Drop(Sender: TObject; fileName: string);
    procedure OnTexLvlMaxDrop(Sender: TObject; fileName: string);
    procedure LoadTgaFile(fileName: string; const imgTo: TImage; const lbl:
      TLabel);
    procedure LoadTgaFromDlg(const imgTo: TImage; const lbl: TLabel);
    function RaceDir: string;
    function BaseFileName: string;
    function SexToStr: string;
    function MuscleDefToStr: string;
    function MaxRes: Integer;
    function GetBtnProcessingCaption: string;
    function SettingsAsMessage: string;
    function OutputDir: string;
  public
    { Public declarations }
  end;

var
  frm_ToolTexGen: Tfrm_ToolTexGen;

implementation

uses
  Unit7010_Textures, Unit9005_globals, Unit9010_dataModule;

{$R *.dfm}

{ TDropPanel }

procedure TDropPanel.AfterConstruction;
begin
  inherited;
  Width := 250;
  Height := 250;
  Caption := 'Drag a tga file here';
  BevelKind := bkSoft;
  BevelOuter := bvNone;
  Color := clActiveBorder;
  StyleElements := [seFont, seBorder];
end;

procedure TDropPanel.CreateWnd;
begin
  inherited;
  DragAcceptFiles(Handle, true);
end;

procedure TDropPanel.DestroyWnd;
begin
  DragAcceptFiles(Handle, false);
  inherited;
end;

procedure TDropPanel.WMDropFiles(var Message: TWMDropFiles);
var
  nameLen: Integer;
  fileName: string;
begin
  nameLen := DragQueryFile(Message.Drop, 0, nil, 0) + 1;
  SetLength(fileName, nameLen);
  DragQueryFile(Message.Drop, 0, Pointer(fileName), nameLen);
  if Assigned(FOnDropFile) then
    FOnDropFile(Self, Trim(fileName));
  DragFinish(Message.Drop);
end;

{ Tfrm_ToolTexGen }

function Tfrm_ToolTexGen.BaseFileName: string;
begin
  Result := SexToStr + MuscleDefToStr;
end;

procedure Tfrm_ToolTexGen.btn1Click(Sender: TObject);
begin
  LoadTgaFromDlg(img_Lvl1, lbl_fName1);
end;

procedure Tfrm_ToolTexGen.btn2Click(Sender: TObject);
begin
  LoadTgaFromDlg(img_LvlMax, lbl_fName2);
end;

procedure Tfrm_ToolTexGen.btn3Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PWideChar(WideString(OutputDir)), '', '', SW_SHOW);
end;

procedure Tfrm_ToolTexGen.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ToolTexGen.btn_TexGenClick(Sender: TObject);
begin
  SetVisualCues;

  GenerateTextures(img_Lvl1.Picture, img_LvlMax.Picture,
    dtmdl_Main.Config(cfMaxMuscleDefLevels).AsInteger,
    OutputDir, BaseFileName, MaxRes);

  RestoreVisualCues;
end;

procedure Tfrm_ToolTexGen.FormCreate(Sender: TObject);
begin
  pnlTexLvl1 := TDropPanel.Create(self);
  pnlTexLvl1.OnDropFile := OnTexLvl1Drop;

  pnlTexLvlMax := TDropPanel.Create(self);
  pnlTexLvlMax.OnDropFile := OnTexLvlMaxDrop;
  InitDropPnl(pnlTexLvl1, img_Lvl1, pnlTex1);
  InitDropPnl(pnlTexLvlMax, img_LvlMax, pnlTexMax);
end;

function Tfrm_ToolTexGen.GetBtnProcessingCaption: string;
var
  res: Integer;
begin
  res := MaxRes;
  if (res < 512) or (res > 4096) then
    Result := Format('Are you really exporting at %d px, you magnificent bastard?',
      [res])
  else
    Result := 'Exporting files. Please wait...';
end;

procedure Tfrm_ToolTexGen.InitDropPnl(const pnl: TDropPanel; const img: TImage;
  const aParent: TPanel);
begin
  pnl.Parent := aParent;
  pnl.Align := alClient;
  img.Parent := pnl;
  img.Align := alClient;
end;

procedure Tfrm_ToolTexGen.LoadTgaFile(fileName: string; const imgTo: TImage;
  const lbl: TLabel);
var
  IfFailedOpen: TProcedureNoParams;
  Validate: TBitmapForceValid;
  loaded: Boolean;
begin
  if CompareText(ExtractFileExt(fileName), '.tga') <> 0 then begin
    Application.MessageBox('Only TGA are files supported.', 'Invalid extension',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Exit;
  end;

  IfFailedOpen := TexNotOpened;
  Validate := Force24BppTga;
  loaded := LoadToBitmap(fileName, FIF_TARGA, imgTo.Picture.Bitmap, Handle,
    IfFailedOpen, Validate);
  if loaded then
    lbl.Caption := ExtractFileName(fileName);
end;

procedure Tfrm_ToolTexGen.LoadTgaFromDlg(const imgTo: TImage; const lbl: TLabel);
begin
  if opnDlg1.Execute then
    LoadTgaFile(opnDlg1.FileName, imgTo, lbl);
end;

function Tfrm_ToolTexGen.MaxRes: Integer;
begin
  Result := Round(Power(2, 7 + rgRes.ItemIndex));
end;

function Tfrm_ToolTexGen.MuscleDefToStr: string;
begin
  case rgFitType.ItemIndex of
    1:
      Result := 'Fit';
    2:
      Result := 'Fat';
  else
    Result := 'Meh'
  end;
end;

procedure Tfrm_ToolTexGen.OnTexLvl1Drop(Sender: TObject; fileName: string);
begin
  LoadTgaFile(fileName, img_Lvl1, lbl_fName1);
end;

procedure Tfrm_ToolTexGen.OnTexLvlMaxDrop(Sender: TObject; fileName: string);
begin
  LoadTgaFile(fileName, img_LvlMax, lbl_fName2);
end;

function Tfrm_ToolTexGen.OutputDir: string;
begin
  Result := dtmdl_Main.GetTexOutFolder + RaceDir;
  dtmdl_Main.ForceDirIntoExistance(Result);
end;

function Tfrm_ToolTexGen.RaceDir: string;
begin
  case rgRace.ItemIndex of
    1:
      Result := 'Kha';
    2:
      Result := 'Arg';
    3:
      Result := 'Cus1';
    4:
      Result := 'Cus2';
    5:
      Result := 'Cus3';
  else
    Result := 'Hum';
  end;
end;

function Tfrm_ToolTexGen.SettingsAsMessage: string;

  function RgSelText(const rg: TRadioGroup): string;
  begin
    Result := rg.Items[rg.ItemIndex];
  end;

begin
  Result := RgSelText(rgFitType) + ' looking ';
  Result := Result + LowerCase(RgSelText(rgSex)) + ' ';
  Result := Result + RgSelText(rgRace) + '.';
  Result := ReplaceStr(Result, '&', '');
end;

procedure Tfrm_ToolTexGen.SetVisualCues;
var
  oldC: string;
begin
  oldC := btn_TexGen.Caption;
  btn_TexGen.Caption := GetBtnProcessingCaption;
  btn_TexGen.Enabled := false;

  RestoreVisualCues :=
    procedure
    begin
      btn_TexGen.Caption := oldC;
      btn_TexGen.Enabled := true;

      Application.MessageBox(
        PWideChar('Files exported succesfully.'#13#10#13#10'Output:'#13#10 + SettingsAsMessage),
        'Exporting done',
        MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
    end;
end;

function Tfrm_ToolTexGen.SexToStr: string;
begin
  if rgSex.ItemIndex = 1 then
    Result := 'Man'
  else
    Result := 'Fem';
end;

end.

