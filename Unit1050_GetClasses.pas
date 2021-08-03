unit Unit1050_GetClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Functional.Sequence;

type
  TfrmGetClasses = class(TForm)
    flwpnl1: TFlowPanel;
    btnCancel: TButton;
    btnOk: TButton;
    lstRaces: TListBox;
    procedure btnCancelClick(Sender: TObject);
  private
    function GetSelectedRaces: string;
    procedure FillList(const aClasses: string);
  public
    class function Execute(const aClasses: string): string;
  end;

var
  frmGetClasses: TfrmGetClasses;

implementation

uses
  Functions.Strings, Unit9010_dataModule;

{$R *.dfm}

procedure TfrmGetClasses.btnCancelClick(Sender: TObject);
begin
  Close;
end;

class function TfrmGetClasses.Execute(const aClasses: string): string;
begin
  frmGetClasses := TfrmGetClasses.Create(nil);
  try
    Result := '';
    with frmGetClasses do begin
      FillList(aClasses);
      if ShowModal = mrOk then
        Result := GetSelectedRaces;
    end;
  finally
    frmGetClasses.Free;
  end;
end;

function FilteredClasses(const knownC, addedC: TStringList): string;
begin
  Result := TSeq.From(knownC)
    .Filter(
    function(const aClass: string): Boolean
    var
      _: Integer;
    begin
      Result := not addedC.Find(aClass, _);
    end)
    .Fold<string>(ReduceNewLine(), '');
end;

procedure TfrmGetClasses.FillList(const aClasses: string);
var
  addedC, knownC, res: TStringList;
begin
  knownC := StrToList(dtmdl_Main.Field(tnSingletons, 'knownClasses').AsString);
  addedC := StrToList(aClasses);
  res := TStringList.Create;
  try
    res.Text := FilteredClasses(knownC, addedC);
    lstRaces.Items.Assign(res);
  finally
    addedC.Free;
    knownC.Free;
    res.Free;
  end;
end;

function TfrmGetClasses.GetSelectedRaces: string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to lstRaces.Items.Count - 1 do begin
    if lstRaces.Selected[i] then
      Result := Result + lstRaces.Items[i] + #13#10;
  end;
  Result := Trim(Result);
end;

end.

