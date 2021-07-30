unit Unit1040_ImportNPCs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmImportNPCs = class(TForm)
    dbgrd1: TDBGrid;
    btnImport: TBitBtn;
    opnDlg1: TFileOpenDialog;
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportNPCs: TfrmImportNPCs;

implementation

uses
  Unit9010_dataModule;

{$R *.dfm}

procedure TfrmImportNPCs.btnImportClick(Sender: TObject);
var
  aFile: TStringList;
  line: string;
begin
  if opnDlg1.Execute then begin
    aFile := TStringList.Create;
    try
      aFile.LoadFromFile(opnDlg1.FileName);
      for line in aFile do
          dtmdl_Main.ExecuteSQL(line);
    finally
      aFile.Free;
    end;
    dtmdl_Main.tblAllNPCs.Close;
    dtmdl_Main.tblAllNPCs.Open;
  end;

end;

end.
