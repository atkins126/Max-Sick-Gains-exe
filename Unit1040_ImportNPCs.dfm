object frmImportNPCs: TfrmImportNPCs
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Imported NPCs'
  ClientHeight = 375
  ClientWidth = 649
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 15
    Top = 86
    Width = 619
    Height = 234
    Align = alClient
    DataSource = dtmdl_Main.dsAllNPCs
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = dbgrd1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'formID'
        Title.Caption = 'FormID'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'esp'
        Title.Caption = 'esp file'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fullName'
        Title.Caption = 'Full name'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class'
        Title.Caption = 'Class'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'race'
        Title.Caption = 'Race'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'isFemale'
        Title.Caption = 'Is female'
        Visible = True
      end>
  end
  object rltvpnl1: TRelativePanel
    Left = 15
    Top = 320
    Width = 619
    Height = 40
    ControlCollection = <
      item
        Control = btnImport
        AlignBottomWith = btnClose
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        LeftOf = btnAccept
      end
      item
        Control = btnClose
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = True
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = btnAccept
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        LeftOf = btnClose
      end>
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    Padding.Top = 15
    TabOrder = 1
    DesignSize = (
      619
      40)
    object btnImport: TBitBtn
      Left = 311
      Top = 15
      Width = 101
      Height = 25
      Anchors = []
      Caption = '&Import'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C5000000C5000000000000000000000000ACE406B0E8
        0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6
        ED0DB6ED0DB6ED0DB6ED0DB6ED0DB6ED0DB5ED05B0E800ACE400ACE400ACE400
        ACE40FB8EE28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28C9FF15BB
        F200ACE400ACE400ACE420C4F928CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28
        CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF09B3EA00ACE400ACE425C2F628CAFF28CAFF28CAFF28CA
        FF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28
        CAFF28CAFF28CAFF28CAFF28CAFF28CAFF16BDF300ACE400ACE422BDF028CAFF
        28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CA
        FF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF21C5FA00ACE400
        ACE41FB7EA28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CA
        FF28CAFF04AFE700ACE41EB5E728C7FB28CAFF28CAFF28CAFF28CAFF28CAFF28
        CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF28CAFF0EB7EE00ACE41EB5E727C3F528CAFF28CAFF28CA
        FF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28
        CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF19BFF500ACE41EB5E726BEEF
        28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CA
        FF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF24C7FC00
        ACE41EB5E726B9E928CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CA
        FF28CAFF28CAFF07B1E81EB5E726B8E828C6FA28CAFF28CAFF28CAFF28CAFF28
        CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF28CAFF28CAFF11B9F01EB5E726B8E827C1F428CAFF28CA
        FF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28
        CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF1CC0F71EB5E726B8E8
        26BAEB28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CA
        FF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF1D
        C2F81EB5E726B8E826B8E827BEEF33C5EF28CAFF28CAFF28CAFF28CAFF28CAFF
        28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CAFF28CA
        FF28CAFF25C8FD0AB3EA1EB5E726B8E826B8E826B8E89A9D5FAA9B4EAA9B4ECC
        CAAACFCFB2CFCFB2CFCFB2CFCFB2CFCFB2CFCFB2CFCFB2CFCFB2C7C49DAA9B4E
        AA9B4E93A06A24B8EA03AEE601ACE400ACE41EB5E726B8E826B8E826B8E89A9D
        5FB39841B39841B39841B39841B39841B39841B39841B39841B39841B39841B3
        9841B39841B39841B398419A9D5F25B8E800ACE400ACE400ACE41EB5E726B8E8
        26B8E826B8E89A9D5FB39841B39841F1EFE9F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F5E8E3D2B39841B398419A9D5F1BB4E700ACE400ACE400
        ACE41EB5E726B8E826B8E826B8E89A9D5FB39841B39841CAB982CDBD89CDBD89
        CDBD89CDBD89CDBD89CDBD89CDBD89CDBD89C8B579B39841B39841989D5F04AE
        E400ACE400ACE400ACE41EB6E726B8E826B8E826B8E89A9D5FB39841B39841C7
        B478CBBA82CBBA82CBBA82CBBA82CBBA82CBBA82CBBA82CBBA82C5B271B39841
        B39841939B5E00ACE400ACE400ACE400ACE417B4E726B8E826B8E826B8E89A9D
        5FB39841B39841F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
        F5F5F3F2F0B39841B39841939B5E00ACE400ACE400ACE400ACE404ADE41FB6E7
        26B8E826B8E89A9D5FB39841B39841C7B579CBBA82CBBA82CBBA82CBBA82CBBA
        82CBBA82CBBA82CBBA82C6B273B39841B39841939B5E00ACE400ACE400ACE400
        ACE400ACE400ACE402ADE403ADE4929C5FB39841B39841B39841B39841B39841
        B39841B39841B39841B39841B39841B39841B39841B39841B39841929C5F00AC
        E400ACE400ACE400ACE400ACE400ACE400ACE400ACE41DA9C930A7B830A7B830
        A7B830A7B830A7B830A7B830A7B830A7B830A7B830A7B830A7B830A7B830A7B8
        30A7B81DA9C900ACE400ACE400ACE400ACE400ACE400ACE400ACE400ACE400AC
        E400ACE400ACE400ACE400ACE400ACE400ACE400ACE400ACE400ACE400ACE400
        ACE400ACE400ACE400ACE400ACE400ACE400ACE400ACE400ACE4}
      TabOrder = 0
      OnClick = btnImportClick
    end
    object btnClose: TButton
      AlignWithMargins = True
      Left = 518
      Top = 15
      Width = 101
      Height = 25
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Anchors = []
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCloseClick
    end
    object btnAccept: TButton
      Left = 412
      Top = 15
      Width = 101
      Height = 25
      Anchors = []
      Caption = '&Accept'
      ModalResult = 1
      TabOrder = 2
    end
  end
  object grp1: TGroupBox
    AlignWithMargins = True
    Left = 15
    Top = 15
    Width = 619
    Height = 56
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 'Filter'
    Padding.Left = 15
    Padding.Top = 5
    Padding.Right = 15
    TabOrder = 2
    inline filterImportedNPC1: TfrmFilterImportedNPC
      Left = 17
      Top = 20
      Width = 667
      Height = 34
      Margins.Top = 0
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 17
      ExplicitTop = 20
      ExplicitHeight = 34
    end
  end
  object opnDlg1: TFileOpenDialog
    DefaultExtension = 'sql'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = '___Maxick-NPCs.sql'
        FileMask = '___Maxick-NPCs.sql'
      end>
    Options = [fdoFileMustExist]
    Left = 280
    Top = 140
  end
end
