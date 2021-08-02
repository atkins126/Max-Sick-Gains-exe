unit Unit9010_dataModule;

interface

uses
  Winapi.Windows, Winapi.ShellAPI, System.SysUtils, System.Classes, Data.DB,
  Data.Win.ADODB, System.IOUtils, System.StrUtils, Functional.Sequence,
  Unit9020_Types, System.Generics.Collections, Datasnap.DBClient,
  Datasnap.Provider, Vcl.OleServer, JRO_TLB, System.Win.ComObj;

//{$DEFINE OpenPathsInExplorer}
const
  AppFullName = 'Max Sick Gains for SSE';

function AsDir(const aDir: string): string;

type
  TTableName = (tnNone, tnFitStages, tnPlayerStages, tnAllNPCs, tnNPCs);

  TConfigField = (
    // App configuration
    cfAppTheme, cfLastTab,
    // Paths
    cfModPath, cfTexPath, cfLuaCfgPath,
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
    tblRaces: TADOTable;
    dsRaces: TDataSource;
    tblAllNPCs: TADOTable;
    dsAllNPCs: TDataSource;
    qryAux: TADOQuery;
    JE: TJetEngine;
    strngfldConfigLuaCfgPath: TStringField;
    tblNPCs: TADOTable;
    atncfldNPCsID: TAutoIncField;
    intgrfldNPCsNPCid: TIntegerField;
    intgrfldNPCsfitStage: TIntegerField;
    smlntfldNPCsweight: TSmallintField;
    wrdfldNPCsmuscleDef: TWordField;
    dsNPCs: TDataSource;
    strngfldNPCsfullName: TStringField;
    strngfldNPCsformID: TStringField;
    strngfldNPCsesp: TStringField;
    strngfldNPCsclass: TStringField;
    strngfldNPCsrace: TStringField;
    blnfldNPCsisFemale: TBooleanField;
    strngfldNPCsfitStageLook: TStringField;
    qryGenerate: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FCfgSavePoint: Int64;
    FWorkingFile: string;
    function BlankDB: string;
    function CfgFile: string;
    function ConfigFieldToStr(const aField: TConfigField): string;
    function FieldFrom(const aTbl: TCustomADODataSet; const aField: string):
      string;
    function GetConfiguredPath(const aCfgField: TConfigField): string;
    function GetTable(const aTable: TTableName): TCustomADODataSet;
    function TempDB: string;
    procedure CloseAll;
    procedure CreateTemp(const aCopyFrom: string);
    procedure GenQuery(const sql: string);
    procedure EditPost(const aDataSet: TDataSet);
    procedure NewConfig;
    procedure OpenAll;
    procedure PostAll;
    procedure Refresh(aTbl: TCustomADODataSet);
    procedure RefreshToLast(aTbl: TCustomADODataSet);
    procedure StringToFile(const txt, aFile: string);
  public
    function AppendFitStage: string;
    function AppendPlayerStage: string;
    function AppendNPC(const aId: Integer): TFunc<string>;
    function AppPath: string;
    function Config(aField: TConfigField): TField;
    function Field(const aTable: TTableName; const aField: string): TField;
    function FitStagesCurrIdx: Integer;
    function FitStagesToLua: string;
    function GenerateAllModData: string;
    function GenerateLuaDatabase: string;
    function GenNPCs: string;
    function GenFitStages: string;
    function GetTexOutFolder: string;
    function GetCfgOutFolder: string;
    function GetLuaOutFolder: string;
    function IsAtFirst(const aTable: TTableName): Boolean;
    function PlayerJourney: TList<TJourneyItem>;
    function ValidRaces: string;
    procedure Append(const aTable: TTableName; const aCmd: TFunc<string>);
    procedure CfgBackup;
    procedure CfgRestore;
    procedure ConfigUpdate(aField: TConfigField; val: Variant);
    procedure Edit(const aTable: TTableName; const aField: string; const aVal:
      Variant);
    procedure ExecuteSQL(const SQL: string);
    procedure FilterTable(const aTable: TTableName; const aFilter: string);
    procedure ForceDirIntoExistance(const dirName: string);
    procedure LoadConfig;
    procedure OpenFile(aFileName: string = '');
    procedure Post(const aTable: TTableName);
    procedure RefreshTable(const aTable: TTableName);
    procedure ResetConfig;
    procedure SaveFile(const aFileName: string);
    property WorkingFile: string read FWorkingFile;
  end;

var
  dtmdl_Main: Tdtmdl_Main;

implementation

uses
  Vcl.Forms, Unit5010_ExportBs, Functions.Strings, Unit1010_main,
  Unit1030_Config, Unit9015_GenMod;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function AsDir(const aDir: string): string;
begin
  Result := IncludeTrailingPathDelimiter(aDir);
end;

procedure Tdtmdl_Main.Append(const aTable: TTableName; const aCmd: TFunc<string>);
var
  tbl: TCustomADODataSet;
begin
  tbl := GetTable(aTable);
  if not Assigned(tbl) then
    Exit;
  // Post to avoid annoying behavior of losing changes that were being
  // edited while adding a new record.
  EditPost(tbl);

  cmd.CommandText := aCmd();
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

function Tdtmdl_Main.AppendFitStage: string;
begin
  Result :=
    'INSERT INTO FitStages (iName, muscleDefType, muscleDefLvl, excludedRaces) ' +
    'VALUES ("New Stage", 0, 0, "")';
end;

function Tdtmdl_Main.AppendNPC(const aId: Integer): TFunc<string>;
begin
  Result :=
    function: string
    begin
      Result := Format(
        'INSERT INTO NPCs (NPCid, fitStage, weight, muscleDef) VALUES (%d, 1, 101, 0)',
        [aId]
        );
    end;
end;

function Tdtmdl_Main.AppendPlayerStage: string;
begin
  Result := 'INSERT INTO PlayerStages ' +
    '(fitnessStage, minDays, bsMin, bsMax, muscleMin, muscleMax, blend, headInit, headFinal) ' +
    'VALUES (1, 20, 0, 100, 1, 6, 30, 100, 100)';
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
    cfLuaCfgPath:
      Result := 'LuaCfgPath';
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
  OpenFile;
  LoadConfig;
{$IF Defined(DEBUG) and Defined(OpenPathsInExplorer)}
  ShellExecute(0, 'Open', PWideChar(ExtractFilePath(Application.ExeName)), '',
    '', SW_SHOW);
{$ENDIF}
end;

procedure Tdtmdl_Main.DataModuleDestroy(Sender: TObject);
begin

  cdsConfig.SaveToFile(CfgFile, dfXMLUTF8);
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

procedure Tdtmdl_Main.EditPost(const aDataSet: TDataSet);
begin
  with aDataSet do begin
    if Active and (RecordCount > 0) then begin
      Edit;
      Post;
    end;
  end;
end;

procedure Tdtmdl_Main.ExecuteSQL(const SQL: string);
begin
  cmd.CommandText := SQL;
  if cmd.CommandText <> '' then begin
    cmd.Execute;
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

procedure Tdtmdl_Main.NewConfig;
begin
  with cdsConfig do begin
    Close;
    CreateDataSet;
    Open;
    Append;
    Config(cfModPath).AsString := '';
    Config(cfLuaCfgPath).AsString := '';
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

procedure Tdtmdl_Main.FilterTable(const aTable: TTableName; const aFilter:
  string);
begin
  with GetTable(aTable) do begin
    Filtered := false;
    Filter := aFilter;
    if Trim(aFilter) = '' then
      Exit;
    Filtered := true;
  end;
end;

function Tdtmdl_Main.FitStagesCurrIdx: Integer;
begin
  Result := tblFitStages.FieldByName('Id').AsInteger;
end;

function Tdtmdl_Main.FitStagesToLua: string;
begin
//  Result := 'database.fitStages = ' +
//    ToLuaTable(DataSetToLua(tnFitStages, FitStageToLua), false);
end;

procedure Tdtmdl_Main.ForceDirIntoExistance(const dirName: string);
begin
  if not ForceDirectories(dirName) then
    raise Exception.CreateFmt('Couldn''t create folder'#13#10'%s'#13#10#13#10'Try to manually create it or something.',
      [dirName]);
end;

function Tdtmdl_Main.GenerateAllModData: string;
begin
  ForceDirIntoExistance(GetCfgOutFolder);
  ForceDirIntoExistance(GetLuaOutFolder);
  StringToFile(dtmdl_Main.GenNPCs, GetCfgOutFolder + 'npcs.json');
  StringToFile(GenerateLuaDatabase, GetLuaOutFolder + 'database.lua');
  // Outputs warnings
  Result := '';
end;

function Tdtmdl_Main.GenerateLuaDatabase: string;
begin
  Result := TSeq.From<string>(
    TArray<string>.Create(
    'local database = {}',
    'database.' + GenFitStages,
    'return database'
    )
    )
    .Fold<string>(ReduceStr(#13#10#13#10), '');
end;

function Tdtmdl_Main.GenFitStages: string;
begin
  GenQuery('SELECT * FROM FitStages');
  Result := TSeq.From(qryGenerate)
    .Map<string>(GenFitStage)
    .Fold<string>(CommaAndNL(), '');
  Result := LuaAssign('fitStages', LuaTableNewLineContents(Result));
end;

function Tdtmdl_Main.GenNPCs: string;
var
  npcs, meta: string;
begin
  GenQuery('SELECT * FROM GenNPCs');
  npcs := TSeq.From(qryGenerate)
    .Map<string>(GenNpc)
    .Fold<string>(CommaAndNL(), '');
  meta := JsonPair('typeName', '"JFormMap"');
  meta := JsonPair('__metaInfo', JsonObject(meta)) + ','#13#10;
  Result := JsonMasterObject(meta + npcs);
end;

procedure Tdtmdl_Main.GenQuery(const sql: string);
begin
  qryGenerate.Close;
  qryGenerate.SQL.Text := sql;
  qryGenerate.Open;
end;

function Tdtmdl_Main.GetCfgOutFolder: string;
begin
  Result := AsDir(GetConfiguredPath(cfLuaCfgPath)) + 'SKSE\Plugins\Maxick\';
end;

function Tdtmdl_Main.GetConfiguredPath(const aCfgField: TConfigField): string;
var
  modDir, altDir: string;
  modExists, altExists: Boolean;
begin
  altDir := Config(aCfgField).AsString;
  modDir := Config(cfModPath).AsString;
  altExists := DirectoryExists(altDir);
  modExists := DirectoryExists(modDir);
  while (not altExists) and (not modExists) do begin
    Application.MessageBox('Output folder doesn''t exist.' + #13#10 +
      'You need to setup a valid one before you can continue.',
      'Invalid folder', MB_OK + MB_ICONWARNING + MB_TOPMOST);
    frmConfig := TfrmConfig.Create(frmMain);
    frmConfig.ShowModal;
    frmConfig.Free;
    altDir := Config(aCfgField).AsString;
    modDir := Config(cfModPath).AsString;
    altExists := DirectoryExists(altDir);
    modExists := DirectoryExists(modDir);
  end;

  if altExists then
    Result := altDir
  else
    Result := modDir;
end;

function Tdtmdl_Main.GetLuaOutFolder: string;
begin
  Result := AsDir(GetConfiguredPath(cfLuaCfgPath)) +
    'SKSE\Plugins\JCData\lua\maxick\';
end;

function Tdtmdl_Main.GetTable(const aTable: TTableName): TCustomADODataSet;
begin
  case aTable of
    tnFitStages:
      Result := tblFitStages;
    tnPlayerStages:
      Result := tblPlayerStages;
    tnAllNPCs:
      Result := tblAllNPCs;
    tnNPCs:
      Result := tblNPCs;
  else
    {$IFDEF DEBUG}
    raise Exception.CreateFmt('Asked for some invalid table: %d.', [Integer(aTable)]);
    {$ELSE}
    Result := nil;
    {$ENDIF}
  end;
end;

function Tdtmdl_Main.GetTexOutFolder: string;
begin
  Result := AsDir(GetConfiguredPath(cfTexPath)) +
    'textures\actors\character\Maxick\';
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

procedure Tdtmdl_Main.OpenFile(aFileName: string);
const
  s =
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Mode=ReadWrite;Persist Security Info=False';
begin
  CloseAll;
  if not FileExists(aFileName) then begin
    FWorkingFile := '';
    aFileName := BlankDB;
  end
  else
    FWorkingFile := aFileName;

  CreateTemp(aFileName);
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
  tbl := GetTable(aTable);
  EditPost(tbl)
end;

procedure Tdtmdl_Main.PostAll;
var
  i: Integer;
begin
  for i := 0 to conMain.DataSetCount - 1 do
    EditPost(conMain.DataSets[i]);
end;

procedure Tdtmdl_Main.RefreshTable(const aTable: TTableName);
begin
  with GetTable(aTable) do begin
    Close;
    Open;
  end;
end;

procedure Tdtmdl_Main.RefreshToLast(aTbl: TCustomADODataSet);
begin
  Refresh(aTbl);
  aTbl.Last;
end;

procedure Tdtmdl_Main.ResetConfig;
begin
  DeleteFile(CfgFile);
  cdsConfig.Open;
  cdsConfig.EmptyDataSet;
  LoadConfig;
end;

procedure Tdtmdl_Main.SaveFile(const aFileName: string);
var
  dbSrc, dbDest, tmp: string;
const
  SProvider = 'Provider=Microsoft.Jet.OLEDB.4.0; Data Source=';
begin
  PostAll;
  FWorkingFile := aFileName;
  // Save compacted DB
  tmp := FWorkingFile + '.tmp';
  CopyFile(PWideChar(TempDB), PWideChar(tmp), false);
  dbSrc := SProvider + tmp;
  dbDest := SProvider + FWorkingFile;
  if FileExists(FWorkingFile) then
    DeleteFile(FWorkingFile);
  JE.CompactDatabase(dbSrc, dbDest);
  DeleteFile(tmp)
end;

procedure Tdtmdl_Main.StringToFile(const txt, aFile: string);
var
  output: TStringList;
begin
  output := TStringList.Create;
  try
    output.Text := txt;
    output.SaveToFile(aFile);
  finally
    output.Free;
  end;
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

function Tdtmdl_Main.ValidRaces: string;
begin
  qryAux.Close;
  qryAux.SQL.Text := 'SELECT * FROM QryValidRaces';
  qryAux.Open;
  Result := TSeq.From(qryAux)
    .Fold<string>(ReduceStrField('validRaces', #13#10), '');
end;

end.

