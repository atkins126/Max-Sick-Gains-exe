object dtmdl_Main: Tdtmdl_Main
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 394
  Width = 443
  object dsFitStages: TDataSource
    DataSet = tblFitStages
    Left = 220
    Top = 145
  end
  object conMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Osrail\Doc' +
      'uments\Embarcadero\Studio\Projects\Max Sick Gains\res\BlankDB.md' +
      'b;Mode=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 84
    Top = 16
  end
  object tblFitStages: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitStages'
    Left = 152
    Top = 59
    object atncfldFitStagesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object wdmfldFitStagesiName: TWideMemoField
      FieldName = 'iName'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object wdmfldFitStagesdisplayName: TWideMemoField
      FieldName = 'displayName'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object wdmfldFitStagesfemBs: TWideMemoField
      FieldName = 'femBs'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object wdmfldFitStagesfemBsUrl: TWideMemoField
      FieldName = 'femBsUrl'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object wdmfldFitStagesmanBs: TWideMemoField
      FieldName = 'manBs'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object wdmfldFitStagesmanBsUrl: TWideMemoField
      FieldName = 'manBsUrl'
      BlobType = ftWideMemo
      DisplayValue = dvFull
    end
    object wrdfldFitStagesmuscleDefType: TWordField
      FieldName = 'muscleDefType'
    end
    object wrdfldFitStagesmuscleDefLvl: TWordField
      FieldName = 'muscleDefLvl'
    end
    object wdmfldFitStagesexcludedRaces: TWideMemoField
      FieldName = 'excludedRaces'
      BlobType = ftWideMemo
    end
  end
  object tblFitTypes: TADOTable
    Connection = conMain
    TableName = 'FitnessTypes'
    Left = 220
    Top = 59
  end
  object dsFitTypes: TDataSource
    DataSet = tblFitTypes
    Left = 16
    Top = 188
  end
  object tblFitLvls: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitnessLevels'
    Left = 84
    Top = 59
  end
  object dsFitLvls: TDataSource
    DataSet = tblFitLvls
    Left = 152
    Top = 145
  end
  object cmd: TADOCommand
    Connection = conMain
    Parameters = <>
    Left = 16
    Top = 16
  end
  object tblPlayerStages: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'PlayerStages'
    Left = 84
    Top = 102
    object atncfldPlayerStagesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object intgrfldPlayerStagesFitnessStage: TIntegerField
      FieldName = 'FitnessStage'
    end
    object intgrfldPlayerStagesminDays: TIntegerField
      FieldName = 'minDays'
      MaxValue = 99999999
      MinValue = 1
    end
    object wrdfldPlayerStagesblend: TWordField
      FieldName = 'blend'
    end
    object wrdfldPlayerStagesheadInit: TWordField
      FieldName = 'headInit'
    end
    object wrdfldPlayerStagesheadFinal: TWordField
      FieldName = 'headFinal'
    end
    object strngfldPlayerStagesFitnessStageName: TStringField
      FieldKind = fkLookup
      FieldName = 'FitnessStageName'
      LookupDataSet = tblFitStages
      LookupKeyFields = 'ID'
      LookupResultField = 'iName'
      KeyFields = 'FitnessStage'
      Lookup = True
    end
    object wrdfldPlayerStagesbsMin: TWordField
      FieldName = 'bsMin'
    end
    object wrdfldPlayerStagesbsMax: TWordField
      FieldName = 'bsMax'
    end
    object wrdfldPlayerStagesmuscleMin: TWordField
      FieldName = 'muscleMin'
    end
    object wrdfldPlayerStagesmuscleMax: TWordField
      FieldName = 'muscleMax'
    end
  end
  object dsPlayerStages: TDataSource
    DataSet = tblPlayerStages
    Left = 152
    Top = 188
  end
  object qryPlayerJourney: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QryPlayerJourney')
    Left = 220
    Top = 16
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrConfig'
    Left = 220
    Top = 102
    object bytfldMaxMuscleDefLevels: TByteField
      FieldName = 'MaxMuscleDefLevels'
    end
    object strngfldConfigAppTheme: TStringField
      FieldName = 'AppTheme'
      Size = 50
    end
    object strngfldConfigModPath: TStringField
      DisplayWidth = 2000
      FieldName = 'ModPath'
      Size = 2000
    end
    object strngfldConfigTexPath: TStringField
      DisplayWidth = 2000
      FieldName = 'TexPath'
      Size = 2000
    end
    object intgrfldConfigLastTab: TIntegerField
      FieldName = 'LastTab'
    end
    object strngfldConfigLuaCfgPath: TStringField
      FieldName = 'LuaCfgPath'
      Size = 2000
    end
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 84
    Top = 145
  end
  object tblRaces: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'Races'
    Left = 152
    Top = 102
  end
  object dsRaces: TDataSource
    DataSet = tblRaces
    Left = 220
    Top = 188
  end
  object tblAllNPCs: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'AllNPCs'
    Left = 16
    Top = 59
  end
  object dsAllNPCs: TDataSource
    DataSet = tblAllNPCs
    Left = 16
    Top = 145
  end
  object qryAux: TADOQuery
    Connection = conMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QryValidRaces')
    Left = 152
    Top = 16
  end
  object JE: TJetEngine
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 16
    Top = 231
  end
  object tblNPCs: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'NPCs'
    Left = 16
    Top = 102
    object atncfldNPCsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object intgrfldNPCsNPCid: TIntegerField
      FieldName = 'NPCid'
    end
    object intgrfldNPCsfitStage: TIntegerField
      FieldName = 'fitStage'
    end
    object smlntfldNPCsweight: TSmallintField
      FieldName = 'weight'
    end
    object wrdfldNPCsmuscleDef: TWordField
      FieldName = 'muscleDef'
    end
    object strngfldNPCsfullName: TStringField
      FieldKind = fkLookup
      FieldName = 'fullName'
      LookupDataSet = tblAllNPCs
      LookupKeyFields = 'ID'
      LookupResultField = 'fullName'
      KeyFields = 'NPCid'
      Size = 100
      Lookup = True
    end
    object strngfldNPCsformID: TStringField
      FieldKind = fkLookup
      FieldName = 'formID'
      LookupDataSet = tblAllNPCs
      LookupKeyFields = 'ID'
      LookupResultField = 'formID'
      KeyFields = 'NPCid'
      Lookup = True
    end
    object strngfldNPCsesp: TStringField
      FieldKind = fkLookup
      FieldName = 'esp'
      LookupDataSet = tblAllNPCs
      LookupKeyFields = 'ID'
      LookupResultField = 'esp'
      KeyFields = 'NPCid'
      Lookup = True
    end
    object strngfldNPCsclass: TStringField
      FieldKind = fkLookup
      FieldName = 'class'
      LookupDataSet = tblAllNPCs
      LookupKeyFields = 'ID'
      LookupResultField = 'class'
      KeyFields = 'NPCid'
      Lookup = True
    end
    object strngfldNPCsrace: TStringField
      FieldKind = fkLookup
      FieldName = 'race'
      LookupDataSet = tblAllNPCs
      LookupKeyFields = 'ID'
      LookupResultField = 'race'
      KeyFields = 'NPCid'
      Lookup = True
    end
    object blnfldNPCsisFemale: TBooleanField
      FieldKind = fkLookup
      FieldName = 'isFemale'
      LookupDataSet = tblAllNPCs
      LookupKeyFields = 'ID'
      LookupResultField = 'isFemale'
      KeyFields = 'NPCid'
      Lookup = True
    end
    object strngfldNPCsfitStageLook: TStringField
      FieldKind = fkLookup
      FieldName = 'fitStageLook'
      LookupDataSet = tblFitStages
      LookupKeyFields = 'ID'
      LookupResultField = 'iName'
      KeyFields = 'fitStage'
      Lookup = True
    end
  end
  object dsNPCs: TDataSource
    DataSet = tblNPCs
    Left = 84
    Top = 188
  end
  object qryGenerate: TADOQuery
    Connection = conMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM GenNPCs')
    Left = 200
    Top = 270
  end
end
