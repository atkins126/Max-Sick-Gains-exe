program MaxSickGains;

uses
  Vcl.Forms,
  Unit1010_main in 'Unit1010_main.pas' {frmMain},
  Unit9010_dataModule in 'Unit9010_dataModule.pas' {dtmdl_Main: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdtmdl_Main, dtmdl_Main);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
