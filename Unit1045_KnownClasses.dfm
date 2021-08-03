object frmKnownClasses: TfrmKnownClasses
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Known classes'
  ClientHeight = 341
  ClientWidth = 294
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
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object flwpnl1: TFlowPanel
    Left = 15
    Top = 280
    Width = 264
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    FlowStyle = fsRightLeftBottomTop
    TabOrder = 1
    object btn1: TButton
      Left = 161
      Top = 21
      Width = 103
      Height = 25
      Caption = 'Accept'
      ModalResult = 8
      TabOrder = 0
    end
  end
  object dbmmoknownClasses: TDBMemo
    Left = 15
    Top = 15
    Width = 264
    Height = 265
    Align = alClient
    DataField = 'knownClasses'
    DataSource = dtmdl_Main.dsSingletons
    ScrollBars = ssBoth
    TabOrder = 0
  end
end
