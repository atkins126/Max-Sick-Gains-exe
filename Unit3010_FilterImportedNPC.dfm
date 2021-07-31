object frmFilterImportedNPC: TfrmFilterImportedNPC
  Left = 0
  Top = 0
  Width = 541
  Height = 21
  AutoSize = True
  TabOrder = 0
  object edtFormId: TEdit
    Left = 0
    Top = 0
    Width = 61
    Height = 21
    TabOrder = 0
    TextHint = 'FormId'
  end
  object edtEsp: TEdit
    Left = 70
    Top = 0
    Width = 81
    Height = 21
    TabOrder = 1
    TextHint = 'esp/esm'
  end
  object edtName: TEdit
    Left = 160
    Top = 0
    Width = 101
    Height = 21
    TabOrder = 2
    TextHint = 'Name'
  end
  object cbbClass: TComboBox
    Left = 270
    Top = 0
    Width = 91
    Height = 21
    DropDownCount = 15
    ItemIndex = 0
    TabOrder = 3
    Text = '<All classes>'
    Items.Strings = (
      '<All classes>')
  end
  object cbbRace: TComboBox
    Left = 370
    Top = 0
    Width = 81
    Height = 21
    DropDownCount = 15
    ItemIndex = 0
    TabOrder = 4
    Text = '<All races>'
    Items.Strings = (
      '<All races>')
  end
  object cbbSex: TComboBox
    Left = 460
    Top = 0
    Width = 81
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'Both sexes'
    Items.Strings = (
      'Both sexes'
      'Male'
      'Female')
  end
end
