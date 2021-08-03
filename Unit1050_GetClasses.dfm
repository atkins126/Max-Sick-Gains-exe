object frmGetClasses: TfrmGetClasses
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Select classes'
  ClientHeight = 384
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 15
  Padding.Top = 15
  Padding.Right = 15
  Padding.Bottom = 15
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object flwpnl1: TFlowPanel
    Left = 15
    Top = 329
    Width = 272
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    FlowStyle = fsRightLeftBottomTop
    Padding.Top = 15
    TabOrder = 1
    ExplicitTop = 290
    ExplicitWidth = 238
    object btnCancel: TButton
      Left = 161
      Top = 15
      Width = 111
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnOk: TButton
      Left = 50
      Top = 15
      Width = 111
      Height = 25
      Caption = '&Ok'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
  object lstRaces: TListBox
    Left = 15
    Top = 15
    Width = 272
    Height = 314
    Align = alClient
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 0
  end
end
