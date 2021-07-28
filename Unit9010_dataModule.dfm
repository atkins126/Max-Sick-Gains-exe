object dtmdl_Main: Tdtmdl_Main
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 299
  Width = 525
  object dsFitStages: TDataSource
    DataSet = tblFitStages
    Left = 112
    Top = 59
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
    Left = 64
    Top = 16
  end
  object tblFitStages: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitStages'
    Left = 208
    Top = 16
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
    Left = 256
    Top = 16
  end
  object dsFitTypes: TDataSource
    DataSet = tblFitTypes
    Left = 160
    Top = 59
  end
  object tblFitLvls: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitnessLevels'
    Left = 160
    Top = 16
  end
  object dsFitLvls: TDataSource
    DataSet = tblFitLvls
    Left = 64
    Top = 59
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
    Left = 16
    Top = 59
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
    Left = 208
    Top = 59
  end
  object qryPlayerJourney: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QryPlayerJourney')
    Left = 112
    Top = 16
  end
end
