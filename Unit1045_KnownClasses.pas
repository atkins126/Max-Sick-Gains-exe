unit Unit1045_KnownClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Menus;

type
  TfrmKnownClasses = class(TForm)
    flwpnl1: TFlowPanel;
    btn1: TButton;
    dbmmoknownClasses: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    class procedure Execute;
  end;

var
  frmKnownClasses: TfrmKnownClasses;

implementation

uses
  Unit9010_dataModule, Unit1010_main;

{$R *.dfm}

{ TForm1 }

class procedure TfrmKnownClasses.Execute;
begin
  frmKnownClasses := TfrmKnownClasses.Create(nil);
  try
    frmKnownClasses.ShowModal;
  finally
    frmKnownClasses.Free;
  end;
end;

procedure TfrmKnownClasses.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmdl_Main.Post(tnSingletons);
end;

end.
