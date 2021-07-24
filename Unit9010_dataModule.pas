unit Unit9010_dataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Winapi.Windows,
  System.IOUtils, System.StrUtils, Functional.Sequence;

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
    function FieldToLuaAssign(const aDataSet: TCustomADODataSet; const aFied:
      string; const isStr: Boolean = true; const addComma: Boolean = true):
      string;
    function ToLuaTable(const s: string; const addComma: Boolean = true): string;
    function MemoToLua(const aText: string): string;
    function FieldFrom(const aTbl: TCustomADODataSet; const aField: string):
      string;
  public
    function FitStageToLua: string;
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
  Vcl.Forms, Unit5010_ExportBs, Functions.Strings;
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

function Tdtmdl_Main.MemoToLua(const aText: string): string;
var
  lines: TStringList;
begin
  lines := TStringList.Create;
  try
    lines.Text := aText;
    Result := TSeq.From(lines)
      .Map<string>(EncloseStr('"'))
      .Fold<string>(ReduceStr(', '), '');
  finally
    lines.Free;
  end;
end;

function Tdtmdl_Main.FieldFrom(const aTbl: TCustomADODataSet; const aField:
  string): string;
begin
  Result := aTbl.FieldByName(aField).AsString;
end;

function Tdtmdl_Main.FieldToLuaAssign(const aDataSet: TCustomADODataSet; const
  aFied: string; const isStr, addComma: Boolean): string;
var
  val: string;
begin
  val := FieldFrom(aDataSet, aFied);
  if isStr then
    val := '"' + val + '"';
  Result := Format('%s=%s', [aFied, val]);
  if addComma then
    Result := Result + ',';
end;

function Tdtmdl_Main.FitStagesCurrIdx: Integer;
begin
  Result := tblFitStages.FieldByName('Id').AsInteger;
end;

function Tdtmdl_Main.FitStageToLua: string;
var
  output: TStringList;
  tbl: TCustomADODataSet;
const
  bs =
    'F:\Skyrim SE\MO2\mods\DM Bodyslide presets\CalienteTools\BodySlide\SliderPresets\DM Amazons 3BA Nude.xml';
begin
  tbl := tblFitStages;
  output := TStringList.Create;
  try
    output.Add(FieldToLuaAssign(tbl, 'displayName'));
    output.Add('femBs=' + ToLuaTable(
      BodyslideToLua(bs)
      ));
    output.Add('manBs=' + ToLuaTable(
      BodyslideToLua(FieldFrom(tbl, 'manBs'))
      ));
    output.Add(FieldToLuaAssign(tbl, 'muscleDefType'));
    output.Add(FieldToLuaAssign(tbl, 'muscleDefLvl'));
    output.Add('excludedRaces=' + ToLuaTable(
      MemoToLua(FieldFrom(tbl, 'excludedRaces'))
      ));
    Result := output.Text;
  finally
    output.Free;
  end;
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

function Tdtmdl_Main.ToLuaTable(const s: string; const addComma: Boolean): string;
begin
  Result := '{'#13#10 + s + #13#10'}' + IfThen(addComma, ',', '');
end;

end.

