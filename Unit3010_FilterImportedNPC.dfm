object frmFilterImportedNPC: TfrmFilterImportedNPC
  Left = 0
  Top = 0
  Width = 667
  Height = 76
  TabOrder = 0
  object edtFormId: TEdit
    Left = 0
    Top = 4
    Width = 51
    Height = 21
    TabOrder = 0
    TextHint = 'FormId'
    OnEnter = ctrlEnter
    OnExit = ctrlExit
  end
  object edtEsp: TEdit
    Left = 60
    Top = 4
    Width = 61
    Height = 21
    TabOrder = 1
    TextHint = 'esp/esm'
    OnEnter = ctrlEnter
    OnExit = ctrlExit
  end
  object edtName: TEdit
    Left = 130
    Top = 4
    Width = 81
    Height = 21
    TabOrder = 2
    TextHint = 'Name'
    OnEnter = ctrlEnter
    OnExit = ctrlExit
  end
  object cbbClass: TComboBox
    Left = 220
    Top = 4
    Width = 91
    Height = 21
    DropDownCount = 15
    ItemIndex = 0
    TabOrder = 3
    Text = '<All classes>'
    OnEnter = ctrlEnter
    OnExit = ctrlExit
    Items.Strings = (
      '<All classes>')
  end
  object cbbRace: TComboBox
    Left = 320
    Top = 4
    Width = 81
    Height = 21
    DropDownCount = 15
    ItemIndex = 0
    TabOrder = 4
    Text = '<All races>'
    OnEnter = ctrlEnter
    OnExit = ctrlExit
    Items.Strings = (
      '<All races>')
  end
  object cbbSex: TComboBox
    Left = 410
    Top = 4
    Width = 81
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'Both sexes'
    OnEnter = ctrlEnter
    OnExit = ctrlExit
    Items.Strings = (
      'Both sexes'
      'Male'
      'Female')
  end
  object btnSearch: TButton
    Left = 500
    Top = 0
    Width = 51
    Height = 25
    Caption = 'Search'
    TabOrder = 6
    OnClick = btnSearchClick
  end
  object btnClear: TButton
    Left = 550
    Top = 0
    Width = 51
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
    OnClick = btnClearFilterClick
  end
end
