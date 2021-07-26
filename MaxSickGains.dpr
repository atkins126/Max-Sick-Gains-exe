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
  Unit9005_globals in 'Unit9005_globals.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.Title := 'Max Sick Gains';
  Application.CreateForm(Tdtmdl_Main, dtmdl_Main);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
