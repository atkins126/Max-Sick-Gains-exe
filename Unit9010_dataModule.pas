unit Unit9010_dataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Winapi.Windows,
  System.IOUtils;

type
  TTableName = (tnNone, tnFitStages, tnFitStagesPlayer);

  Tdtmdl_Main = class(TDataModule)
    dsFitStages: TDataSource;
    conMain: TADOConnection;
    tblFitStages: TADOTable;
    atncfldFitStagesID: TAutoIncField;
    wdmfldFitStagesiName: TWideMemoField;
    wdmfldFitStagesdisplayName: TWideMemoField;
    wdmfldFitStagesfemBs: TWideMemoField;
    wdmfldFitStagesfemBsUrl: TWideMemoField;
    wdmfldFitStagesmanBs: TWideMemoField;
    wdmfldFitStagesmanBsUrl: TWideMemoField;
    wrdfldFitStagesmuscleDefType: TWordField;
    wrdfldFitStagesmuscleDefLvl: TWordField;
    wdmfldFitStagesexcludedRaces: TWideMemoField;
    tblFitTypes: TADOTable;
    dsFitTypes: TDataSource;
    tblFitLvls: TADOTable;
    dsFitLvls: TDataSource;
    cmd: TADOCommand;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CloseAll;
    function TempDB: string;
    function AppPath: string;
    procedure CreateTemp(const aCopyFrom: string);
    procedure OpenAll;
    function GetTable(const aTable: TTableName): TCustomADODataSet;
    procedure RefreshToLast(aTbl: TCustomADODataSet);
    function InsertCommand(const aTable: TTableName): string;
    procedure Refresh(aTbl: TCustomADODataSet);
  public
    procedure OpenFile(const aFileName: string);
    function IsAtFirst(const aTable: TTableName): Boolean;
    function FitStagesCurrIdx: Integer;
    procedure Edit(const aTable: TTableName; const aField: string; const aVal:
      Variant);
    procedure Append(const aTable: TTableName);
  end;

var
  dtmdl_Main: Tdtmdl_Main;

implementation

uses
  Vcl.Forms;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdtmdl_Main.Append(const aTable: TTableName);
var
  tbl: TCustomADODataSet;
begin
  tbl := GetTable(aTable);
  // Post to avoid annoying behavior of losing changes that were being
  // edited while adding a new record.
  tbl.Edit;
  tbl.Post;

  cmd.CommandText := InsertCommand(aTable);
  if cmd.CommandText <> '' then
  begin
    cmd.Execute;
    RefreshToLast(tbl);
  end;
end;

procedure Tdtmdl_Main.Refresh(aTbl: TCustomADODataSet);
begin
  aTbl.Close;
  aTbl.Open;
end;

function Tdtmdl_Main.InsertCommand(const aTable: TTableName): string;
begin
  Result := '';
  case aTable of
    tnFitStages:
      Result :=
        'INSERT INTO FitStages (iName, muscleDefType, muscleDefLvl, excludedRaces) VALUES ("New Stage", 1, 1, "Child")';
    tnFitStagesPlayer:
      Result := '';
  end;
end;

function Tdtmdl_Main.AppPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

procedure Tdtmdl_Main.CloseAll;
begin
  conMain.Close;
end;

procedure Tdtmdl_Main.CreateTemp(const aCopyFrom: string);
begin
  CopyFile(PChar(aCopyFrom), PChar(TempDB), False);
end;

procedure Tdtmdl_Main.DataModuleCreate(Sender: TObject);
begin
  OpenFile(AppPath + 'res\blankDB.mdb');
end;

procedure Tdtmdl_Main.Edit(const aTable: TTableName; const aField: string; const
  aVal: Variant);
begin
  with GetTable(aTable) do
  begin
    Edit;
    FieldByName(aField).AsVariant := aVal;
    Post;
  end;
end;

function Tdtmdl_Main.IsAtFirst(const aTable: TTableName): Boolean;
begin
  case aTable of
    tnFitStages:
      Result := FitStagesCurrIdx = 1;
  else
    Result := False;
  end;
end;

function Tdtmdl_Main.FitStagesCurrIdx: Integer;
begin
  Result := tblFitStages.FieldByName('Id').AsInteger;
end;

function Tdtmdl_Main.GetTable(const aTable: TTableName): TCustomADODataSet;
begin
  case aTable of
    tnFitStages:
      Result := tblFitStages;
    tnFitStagesPlayer:
      raise Exception.Create('tnFitStagesPlayer not implemented');
  else
    raise Exception.CreateFmt('Asked for some invalid table: %d.', [Integer(aTable)]);
  end;
end;

procedure Tdtmdl_Main.OpenAll;
var
  i: Integer;
begin
  conMain.Open;
  for i := 0 to conMain.DataSetCount - 1 do
  begin
    conMain.DataSets[i].Open;
  end;
end;

procedure Tdtmdl_Main.OpenFile(const aFileName: string);
const
  s =
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Mode=ReadWrite;Persist Security Info=False';
begin
  CloseAll;
  CreateTemp(AppPath + 'res\blankDB.mdb');
  conMain.ConnectionString := Format(s, [TempDB]);
  OpenAll;
end;

procedure Tdtmdl_Main.RefreshToLast(aTbl: TCustomADODataSet);
begin
  Refresh(aTbl);
  aTbl.Last;
end;

function Tdtmdl_Main.TempDB: string;
var
  tmp: string;
begin
  tmp := TPath.GetTempPath;
  if tmp = '' then
    Result := AppPath + 'res\temp.mdb'
  else
    Result := tmp + 'temp.mdb';

end;

end.

