unit Unit9010_dataModule;

interface

uses
  Winapi.Windows, Winapi.ShellAPI, System.SysUtils, System.Classes, Data.DB,
  Data.Win.ADODB, System.IOUtils, System.StrUtils, Functional.Sequence,
  Unit9020_Types, System.Generics.Collections, Datasnap.DBClient,
  Datasnap.Provider;

//{$DEFINE OpenPathsInExplorer}
const
  AppFullName = 'Max Sick Gains for SSE';

type
  TTableName = (tnNone, tnFitStages, tnPlayerStages);

  TConfigField = (
    // App configuration
    cfAppTheme, cfLastTab,
    // Paths
    cfModPath, cfTexPath,
    // Not directly accessible to user
    cfMaxMuscleDefLevels);

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
    tblPlayerStages: TADOTable;
    dsPlayerStages: TDataSource;
    atncfldPlayerStagesID: TAutoIncField;
    intgrfldPlayerStagesFitnessStage: TIntegerField;
    intgrfldPlayerStagesminDays: TIntegerField;
    wrdfldPlayerStagesblend: TWordField;
    wrdfldPlayerStagesheadInit: TWordField;
    wrdfldPlayerStagesheadFinal: TWordField;
    strngfldPlayerStagesFitnessStageName: TStringField;
    wrdfldPlayerStagesbsMin: TWordField;
    wrdfldPlayerStagesbsMax: TWordField;
    wrdfldPlayerStagesmuscleMin: TWordField;
    wrdfldPlayerStagesmuscleMax: TWordField;
    qryPlayerJourney: TADOQuery;
    cdsConfig: TClientDataSet;
    bytfldMaxMuscleDefLevels: TByteField;
    strngfldConfigAppTheme: TStringField;
    dsConfig: TDataSource;
    strngfldConfigModPath: TStringField;
    strngfldConfigTexPath: TStringField;
    intgrfldConfigLastTab: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FCfgSavePoint: Int64;
    procedure CloseAll;
    function TempDB: string;
    function BlankDB: string;
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
    function DataSetToLua(const aTable: TTableName; const fun: TVoidToStr):
      string;
    function FitStageToLua: string;
    procedure NewConfig;
    function CfgFile: string;
    function ConfigFieldToStr(const aField: TConfigField): string;
  public
    function AppPath: string;
    function FitStagesToLua: string;
    procedure OpenFile(const aFileName: string);
    function IsAtFirst(const aTable: TTableName): Boolean;
    function FitStagesCurrIdx: Integer;
    procedure Edit(const aTable: TTableName; const aField: string; const aVal:
      Variant);
    procedure Append(const aTable: TTableName);
    function Field(const aTable: TTableName; const aField: string): TField;
    function PlayerJourney: TList<TJourneyItem>;
    procedure Post(const aTable: TTableName);
    function Config(aField: TConfigField): TField;
    procedure ConfigUpdate(aField: TConfigField; val: Variant);
    procedure CfgBackup;
    procedure CfgRestore;
    procedure LoadConfig;
    procedure ResetConfig;
  end;

var
  dtmdl_Main: Tdtmdl_Main;

implementation

uses
  Vcl.Forms, Unit5010_ExportBs, Functions.Strings, Unit1010_main;
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
  if cmd.CommandText <> '' then begin
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
        'INSERT INTO FitStages (iName, muscleDefType, muscleDefLvl, excludedRaces) VALUES ("New Stage", 0, 0, "Child")';
    tnPlayerStages:
      Result :=
        'INSERT INTO PlayerStages (fitnessStage, minDays, bsMin, bsMax, muscleMin, muscleMax, blend, headInit, headFinal) VALUES (1, 20, 0, 100, 1, 6, 30, 100, 100)';
  end;
end;

function Tdtmdl_Main.AppPath: string;
begin
  Result := IncludeTrailingPathDelimiter(TPath.GetHomePath) + AppFullName;
  Result := IncludeTrailingPathDelimiter(Result);
  ForceDirectories(Result);
end;

function Tdtmdl_Main.BlankDB: string;
begin
  Result := AppPath + 'blankDB.mdb';
end;

procedure Tdtmdl_Main.CfgBackup;
begin
  FCfgSavePoint := cdsConfig.SavePoint;
end;

function Tdtmdl_Main.CfgFile: string;
begin
  Result := AppPath + 'cfg.xml';
end;

procedure Tdtmdl_Main.CfgRestore;
begin
  cdsConfig.SavePoint := FCfgSavePoint;
end;

procedure Tdtmdl_Main.CloseAll;
begin
  conMain.Close;
end;

function Tdtmdl_Main.Config(aField: TConfigField): TField;
begin
  Result := cdsConfig.FieldByName(ConfigFieldToStr(aField));
end;

function Tdtmdl_Main.ConfigFieldToStr(const aField: TConfigField): string;
begin
  case aField of
    cfAppTheme:
      Result := 'AppTheme';
    cfLastTab:
      Result := 'LastTab';
    cfMaxMuscleDefLevels:
      Result := 'MaxMuscleDefLevels';
    cfModPath:
      Result := 'ModPath';
    cfTexPath:
      Result := 'TexPath';
  end;
end;

procedure Tdtmdl_Main.ConfigUpdate(aField: TConfigField; val: Variant);
begin
  cdsConfig.Edit;
  Config(aField).AsVariant := val;
  cdsConfig.Post;
end;

procedure Tdtmdl_Main.CreateTemp(const aCopyFrom: string);
begin
  CopyFile(PChar(aCopyFrom), PChar(TempDB), False);
end;

procedure Tdtmdl_Main.DataModuleCreate(Sender: TObject);
begin
  OpenFile(BlankDB);
  LoadConfig;
end;

procedure Tdtmdl_Main.DataModuleDestroy(Sender: TObject);
begin

  cdsConfig.SaveToFile(CfgFile, dfXMLUTF8);
end;

function Tdtmdl_Main.DataSetToLua(const aTable: TTableName; const fun:
  TVoidToStr): string;
var
  tbl: TDataSet;
  bmk: TBookmark;
begin
  tbl := GetTable(aTable);
  bmk := tbl.GetBookmark;
  Result := '';
  tbl.DisableControls;
  try
    tbl.First;
    while not tbl.Eof do begin
      Result := Result + fun + #13#10;
      tbl.Next;
    end;
    Result := DeleteLastComma(Trim(Result));
    tbl.GotoBookmark(bmk);
  finally
    tbl.FreeBookmark(bmk);
    tbl.EnableControls;
  end;
end;

procedure Tdtmdl_Main.Edit(const aTable: TTableName; const aField: string; const
  aVal: Variant);
begin
  with GetTable(aTable) do begin
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

procedure Tdtmdl_Main.LoadConfig;
begin
  if not FileExists(CfgFile) then
    NewConfig
  else
    cdsConfig.LoadFromFile(CfgFile);
  frmMain.ApplyConfig;
{$IF Defined(DEBUG) and Defined(OpenPathsInExplorer)}
  ShellExecute(0, 'Open', PWideChar(AppPath), '', '', SW_SHOW);
{$ENDIF}
end;

function Tdtmdl_Main.MemoToLua(const aText: string): string;
var
  lines: TStringList;
begin
  lines := TStringList.Create;
  try
    lines.Text := aText;
    Result := TSeq.From(lines).Map<string>(EncloseStr('"'))
      .Fold<string>(ReduceStr(', '), '');
  finally
    lines.Free;
  end;
end;

procedure Tdtmdl_Main.NewConfig;
begin
  with cdsConfig do begin
    CreateDataSet;
    Open;
    Append;
    Config(cfModPath).AsString := '';
    Config(cfTexPath).AsString := '';
    Config(cfAppTheme).AsString := 'Glossy';
    Config(cfLastTab).AsInteger := 0;
    Config(cfMaxMuscleDefLevels).AsInteger := 6;
    Post;
    SaveToFile(CfgFile, dfXMLUTF8);
  end;
end;

function Tdtmdl_Main.Field(const aTable: TTableName; const aField: string):
  TField;
begin
  Result := GetTable(aTable).FieldByName(aField);
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

function Tdtmdl_Main.FitStagesToLua: string;
begin
  Result := 'local fitStages = ' +
    ToLuaTable(DataSetToLua(tnFitStages, FitStageToLua), false);
end;

function Tdtmdl_Main.FitStageToLua: string;
var
  output: TStringList;
  tbl: TCustomADODataSet;
begin
  tbl := tblFitStages;
  output := TStringList.Create;
  try
    output.Add(FieldToLuaAssign(tbl, 'displayName'));
    output.Add('femBs=' + ToLuaTable(BodyslideToLua(FieldFrom(tbl, 'femBs'))));
    output.Add('manBs=' + ToLuaTable(BodyslideToLua(FieldFrom(tbl, 'manBs'))));
    output.Add(FieldToLuaAssign(tbl, 'muscleDefType', False, true));
    output.Add(FieldToLuaAssign(tbl, 'muscleDefLvl', False, true));
    output.Add('excludedRaces=' + ToLuaTable(MemoToLua(FieldFrom(tbl,
      'excludedRaces')), False));
    Result := Format('[%s] = %s', [FieldFrom(tbl, 'Id'),
      ToLuaTable(Trim(output.Text))]);
  finally
    output.Free;
  end;
end;

function Tdtmdl_Main.GetTable(const aTable: TTableName): TCustomADODataSet;
begin
  case aTable of
    tnFitStages:
      Result := tblFitStages;
    tnPlayerStages:
      Result := tblPlayerStages;
  else
    raise Exception.CreateFmt('Asked for some invalid table: %d.', [Integer(aTable)]);
  end;
end;

procedure Tdtmdl_Main.OpenAll;
var
  i: Integer;
begin
  conMain.Open;
  for i := 0 to conMain.DataSetCount - 1 do begin
    conMain.DataSets[i].Open;
  end;
end;

procedure Tdtmdl_Main.OpenFile(const aFileName: string);
const
  s =
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Mode=ReadWrite;Persist Security Info=False';
begin
  CloseAll;
  CreateTemp(BlankDB);
  conMain.ConnectionString := Format(s, [TempDB]);
  OpenAll;
end;

function Tdtmdl_Main.PlayerJourney: TList<TJourneyItem>;
var
  j: TJourneyItem;
begin
  Result := TList<TJourneyItem>.Create;

  with qryPlayerJourney do begin
    Open;
    First;
    while not qryPlayerJourney.Eof do begin
      j.fitStage := FieldByName('iName').AsString;
      j.minDays := FieldByName('minDays').AsInteger;
      j.blend := FieldByName('blend').AsInteger / 100;
      j.startWeight := FieldByName('bsMin').AsInteger;
      j.endWeight := FieldByName('bsMax').AsInteger;
      Result.Add(j);
      Next;
    end;
    Close;
  end;
end;

procedure Tdtmdl_Main.Post(const aTable: TTableName);
var
  tbl: TCustomADODataSet;
begin
  try
    tbl := GetTable(aTable);
    tbl.Edit;
    tbl.Post;
  except
    on E: Exception do  // Nothing. Used to avoid weird but inconsequential errors
  end;
end;

procedure Tdtmdl_Main.RefreshToLast(aTbl: TCustomADODataSet);
begin
  Refresh(aTbl);
  aTbl.Last;
end;

procedure Tdtmdl_Main.ResetConfig;
begin
  cdsConfig.EmptyDataSet;
  DeleteFile(CfgFile);
  LoadConfig;
end;

function Tdtmdl_Main.TempDB: string;
var
  tmp: string;
begin
  tmp := IncludeTrailingPathDelimiter(TPath.GetTempPath);
  if tmp = '' then
    tmp := AppPath;
  Result := tmp + AppFullName + '_temp.mdb';

{$IF Defined(DEBUG) and Defined(OpenPathsInExplorer)}
  ShellExecute(0, 'Open', PWideChar(tmp), '', '', SW_SHOW);
{$ENDIF}
end;

function Tdtmdl_Main.ToLuaTable(const s: string; const addComma: Boolean): string;
begin
  Result := '{'#13#10 + s + #13#10'}' + IfThen(addComma, ',', '');
end;

end.

