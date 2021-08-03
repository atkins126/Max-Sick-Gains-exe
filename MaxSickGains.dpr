program MaxSickGains;

uses
  Vcl.Forms,
  Unit1010_main in 'Unit1010_main.pas' {frmMain},
  Unit9010_dataModule in 'Unit9010_dataModule.pas' {dtmdl_Main: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Unit5010_ExportBs in 'Unit5010_ExportBs.pas',
  Functions.Regex in 'Functions.Regex.pas',
  Functions.Strings in 'Functions.Strings.pas',
  Unit9020_Types in 'Unit9020_Types.pas',
  Unit7010_Textures in 'Unit7010_Textures.pas',
  Unit1020_TexGen in 'Unit1020_TexGen.pas' {frm_ToolTexGen},
  Unit9005_globals in 'Unit9005_globals.pas',
  Unit5020_DrawJourney in 'Unit5020_DrawJourney.pas',
  Unit1030_Config in 'Unit1030_Config.pas' {frmConfig},
  Unit1040_ImportNPCs in 'Unit1040_ImportNPCs.pas' {frmImportNPCs},
  Unit3010_FilterImportedNPC in 'Unit3010_FilterImportedNPC.pas' {frmFilterImportedNPC: TFrame},
  Functions.Utils in 'Functions.Utils.pas',
  Unit9015_GenMod in 'Unit9015_GenMod.pas',
  Unit1050_GetClasses in 'Unit1050_GetClasses.pas' {frmGetClasses},
  Unit1045_KnownClasses in 'Unit1045_KnownClasses.pas' {frmKnownClasses};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Max Sick Gains';
  Application.CreateForm(Tdtmdl_Main, dtmdl_Main);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
