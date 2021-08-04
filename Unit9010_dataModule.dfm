object dtmdl_Main: Tdtmdl_Main
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 394
  Width = 443
  object dsFitStages: TDataSource
    DataSet = tblFitStages
    Left = 220
    Top = 188
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
    Left = 84
    Top = 102
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
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitnessTypes'
    Left = 152
    Top = 102
  end
  object dsFitTypes: TDataSource
    DataSet = tblFitTypes
    Left = 16
    Top = 231
  end
  object tblFitLvls: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitnessLevels'
    Left = 16
    Top = 102
  end
  object dsFitLvls: TDataSource
    DataSet = tblFitLvls
    Left = 152
    Top = 188
  end
  object cmd: TADOCommand
    Connection = conMain
    Parameters = <>
    Left = 16
    Top = 16
  end
  object tblPlayerStages: TADOTable
    Connection = conMain
    CursorType = ctStatic
    TableName = 'PlayerStages'
    Left = 220
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
    Top = 231
  end
  object qryPlayerJourney: TADOQuery
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QryPlayerJourney')
    Left = 84
    Top = 59
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdrConfig'
    Left = 152
    Top = 145
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
    Top = 188
  end
  object tblRaces: TADOTable
    Connection = conMain
    CursorType = ctStatic
    TableName = 'Races'
    Left = 16
    Top = 145
    object tblRacesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblRacesracialGroup: TWideStringField
      FieldName = 'racialGroup'
      Size = 255
    end
    object tblRacesraces: TWideMemoField
      FieldName = 'races'
      BlobType = ftWideMemo
    end
    object tblRacesdescription: TWideMemoField
      FieldName = 'description'
      BlobType = ftWideMemo
    end
    object tblRacesabbreviation: TWideStringField
      FieldName = 'abbreviation'
      Size = 255
    end
  end
  object dsRaces: TDataSource
    DataSet = tblRaces
    Left = 220
    Top = 231
  end
  object tblAllNPCs: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'AllNPCs'
    Left = 152
    Top = 59
  end
  object dsAllNPCs: TDataSource
    DataSet = tblAllNPCs
    Left = 220
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
    Left = 84
    Top = 274
  end
  object dsNPCs: TDataSource
    DataSet = qryNPCs
    Left = 84
    Top = 231
  end
  object qryGenerate: TADOQuery
    Connection = conMain
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM GenNPCs')
    Left = 220
    Top = 16
  end
  object qryNPCs: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM NPCs, AllNPCs WHERE NPCs.NPCId = AllNPCs.id ORDER ' +
        'BY fullName')
    Left = 16
    Top = 59
    object atncfldNPCsNPCsID: TAutoIncField
      FieldName = 'NPCs.ID'
      ReadOnly = True
    end
    object intgrfldNPCsNPCid1: TIntegerField
      FieldName = 'NPCid'
    end
    object intgrfldNPCsfitStage1: TIntegerField
      FieldName = 'fitStage'
    end
    object smlntfldNPCsweight1: TSmallintField
      FieldName = 'weight'
    end
    object smlntfldNPCsmuscleDef1: TSmallintField
      FieldName = 'muscleDef'
    end
    object atncfldNPCsAllNPCsID: TAutoIncField
      FieldName = 'AllNPCs.ID'
      ReadOnly = True
    end
    object wdstrngfldNPCsuId: TWideStringField
      FieldName = 'uId'
      Size = 255
    end
    object wdstrngfldNPCsformID: TWideStringField
      FieldName = 'formID'
      Size = 255
    end
    object wdstrngfldNPCsesp: TWideStringField
      FieldName = 'esp'
      Size = 255
    end
    object wdstrngfldNPCsfullName: TWideStringField
      FieldName = 'fullName'
      Size = 255
    end
    object wdstrngfldNPCsclass: TWideStringField
      FieldName = 'class'
      Size = 255
    end
    object wdstrngfldNPCsrace: TWideStringField
      FieldName = 'race'
      Size = 255
    end
    object blnfldNPCsisFemale1: TBooleanField
      FieldName = 'isFemale'
    end
    object intgrfldNPCsmuscleDefType: TIntegerField
      FieldKind = fkLookup
      FieldName = 'muscleDefType'
      LookupDataSet = tblFitStages
      LookupKeyFields = 'ID'
      LookupResultField = 'muscleDefType'
      KeyFields = 'fitStage'
      Lookup = True
    end
    object strngfldNPCsmuscleDefTypeName1: TStringField
      FieldKind = fkLookup
      FieldName = 'muscleDefTypeName'
      LookupDataSet = tblFitTypes
      LookupKeyFields = 'ID'
      LookupResultField = 'iName'
      KeyFields = 'muscleDefType'
      Size = 30
      Lookup = True
    end
  end
  object tblClassArchetypes: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'ClassArchetypes'
    Left = 220
    Top = 59
  end
  object tblSingletons: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'Singletons'
    Left = 84
    Top = 145
  end
  object dsClassArchetypes: TDataSource
    DataSet = tblClassArchetypes
    Left = 16
    Top = 188
  end
  object dsSingletons: TDataSource
    DataSet = tblSingletons
    Left = 16
    Top = 274
  end
  object actlst1: TActionList
    Left = 320
    Top = 110
    object actSelectInv: TAction
      Category = 'Listbox'
      Caption = 'Invert selection'
      OnExecute = actSelectInvExecute
    end
  end
  object pmListBoxSelect: TPopupMenu
    Left = 320
    Top = 160
    object Invertselection1: TMenuItem
      Action = actSelectInv
    end
  end
end
