object dtmdl_Main: Tdtmdl_Main
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 299
  Width = 525
  object dsFitStages: TDataSource
    DataSet = tblFitStages
    Left = 16
    Top = 48
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
    Left = 16
    Top = 16
  end
  object tblFitStages: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitStages'
    Left = 80
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
    Left = 112
    Top = 16
  end
  object dsFitTypes: TDataSource
    DataSet = tblFitTypes
    Left = 48
    Top = 48
  end
  object tblFitLvls: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'FitnessLevels'
    Left = 48
    Top = 16
  end
  object dsFitLvls: TDataSource
    DataSet = tblFitLvls
    Left = 144
    Top = 16
  end
  object cmd: TADOCommand
    Connection = conMain
    Parameters = <>
    Left = 420
    Top = 203
  end
end
