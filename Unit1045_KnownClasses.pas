unit Unit1045_KnownClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmKnownClasses = class(TForm)
    flwpnl1: TFlowPanel;
    btn1: TButton;
    dbmmoknownClasses: TDBMemo;
  private
    { Private declarations }
  public
    class procedure Execute;
  end;

var
  frmKnownClasses: TfrmKnownClasses;

implementation

uses
  Unit9010_dataModule;

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

end.
