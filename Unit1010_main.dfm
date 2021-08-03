object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Max Sick Gains'
  ClientHeight = 450
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 619
    Height = 431
    ActivePage = tsFitStages
    Align = alClient
    TabOrder = 0
    OnChange = pgc1Change
    ExplicitWidth = 629
    ExplicitHeight = 441
    object tsFitStages: TTabSheet
      Caption = 'Fitness stages'
      object pnl1Nav: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 403
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 413
        object lbl1: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 9
          Width = 177
          Height = 34
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alTop
          Alignment = taCenter
          Caption = 'Fitness stages'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlowSize = 10
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 106
        end
        object dbgrd_fitStagesNav: TDBGrid
          Left = 1
          Top = 51
          Width = 183
          Height = 351
          Hint = 'Right click to add/delete data'
          Align = alClient
          DataSource = dtmdl_Main.dsFitStages
          Options = [dgIndicator, dgConfirmDelete, dgTitleHotTrack]
          PopupMenu = pmRecords
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnColEnter = dbgrd_fitStagesNavColEnter
          OnKeyDown = dbgrd_NavKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'iName'
              Width = 179
              Visible = True
            end>
        end
      end
      object pnl8: TPanel
        Left = 185
        Top = 0
        Width = 426
        Height = 403
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Caption = 'pnl8'
        Padding.Left = 15
        Padding.Top = 25
        Padding.Right = 15
        Padding.Bottom = 15
        ShowCaption = False
        TabOrder = 1
        ExplicitLeft = 220
        ExplicitTop = 190
        ExplicitWidth = 185
        ExplicitHeight = 41
        object grdpnl1: TGridPanel
          Left = 16
          Top = 26
          Width = 394
          Height = 361
          Align = alClient
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 100.000000000000000000
            end
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = lbl2
              Row = 0
            end
            item
              Column = 1
              Control = dbedt_fitStageName
              Row = 0
            end
            item
              Column = 0
              Control = lbl3
              Row = 1
            end
            item
              Column = 1
              Control = dbedt_fitStageDisplayName
              Row = 1
            end
            item
              Column = 0
              Control = lbl4
              Row = 2
            end
            item
              Column = 1
              Control = btndt_FemBs
              Row = 2
            end
            item
              Column = 0
              Control = lbl5
              Row = 3
            end
            item
              Column = 1
              Control = btndt_FemBsUrl
              Row = 3
            end
            item
              Column = 0
              Control = lbl6
              Row = 4
            end
            item
              Column = 1
              Control = btndt_ManBs
              Row = 4
            end
            item
              Column = 0
              Control = lbl7
              Row = 5
            end
            item
              Column = 1
              Control = btndt_ManBsUrl
              Row = 5
            end
            item
              Column = 0
              Control = lbl8
              Row = 6
            end
            item
              Column = 1
              Control = dblkcbbmuscleDefType
              Row = 6
            end
            item
              Column = 0
              Control = lbl10
              Row = 7
            end
            item
              Column = 1
              Control = dbmmoexcludedRaces
              Row = 7
            end>
          RowCollection = <
            item
              SizeStyle = ssAuto
            end
            item
              SizeStyle = ssAuto
            end
            item
              SizeStyle = ssAuto
            end
            item
              SizeStyle = ssAuto
            end
            item
              SizeStyle = ssAuto
            end
            item
              SizeStyle = ssAuto
            end
            item
              SizeStyle = ssAuto
            end
            item
              Value = 100.000000000000000000
            end>
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 185
          ExplicitTop = 0
          ExplicitWidth = 436
          ExplicitHeight = 413
          object lbl2: TLabel
            Left = 0
            Top = 0
            Width = 27
            Height = 28
            Align = alLeft
            Caption = 'Name'
            ExplicitLeft = 201
            ExplicitTop = 31
            ExplicitHeight = 13
          end
          object dbedt_fitStageName: TDBEdit
            AlignWithMargins = True
            Left = 100
            Top = 0
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            DataField = 'iName'
            DataSource = dtmdl_Main.dsFitStages
            TabOrder = 0
            ExplicitWidth = 336
          end
          object lbl3: TLabel
            Left = 0
            Top = 28
            Width = 63
            Height = 28
            Align = alLeft
            Caption = 'Display name'
            ExplicitLeft = 201
            ExplicitTop = 72
            ExplicitHeight = 13
          end
          object dbedt_fitStageDisplayName: TDBEdit
            AlignWithMargins = True
            Left = 100
            Top = 28
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            DataField = 'displayName'
            DataSource = dtmdl_Main.dsFitStages
            TabOrder = 1
            OnChange = dbedt_fitStageDisplayNameChange
            ExplicitWidth = 336
          end
          object lbl4: TLabel
            Left = 0
            Top = 56
            Width = 72
            Height = 28
            Align = alLeft
            Caption = 'Fem. Bodyslide'
            ExplicitLeft = 201
            ExplicitTop = 108
            ExplicitHeight = 13
          end
          object btndt_FemBs: TButtonedEdit
            AlignWithMargins = True
            Left = 100
            Top = 56
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            Images = ilIcons24
            RightButton.ImageIndex = 1
            RightButton.Visible = True
            TabOrder = 2
            OnChange = dbedtBsChange
            OnRightButtonClick = btn_femBsClick
            ExplicitWidth = 336
          end
          object lbl5: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 84
            Width = 70
            Height = 13
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 30
            Margins.Bottom = 0
            Align = alTop
            Alignment = taRightJustify
            Caption = 'Url'
            ExplicitLeft = 87
            ExplicitTop = 77
            ExplicitWidth = 13
          end
          object btndt_FemBsUrl: TButtonedEdit
            AlignWithMargins = True
            Left = 100
            Top = 84
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            Images = ilIcons24
            RightButton.ImageIndex = 2
            RightButton.Visible = True
            TabOrder = 3
            TextHint = 'Use this only if you are going to share this file'
            OnRightButtonClick = btn_femBsUrlClick
            ExplicitWidth = 336
          end
          object lbl6: TLabel
            Left = 0
            Top = 112
            Width = 68
            Height = 28
            Align = alLeft
            Caption = 'Man Bodyslide'
            ExplicitLeft = 201
            ExplicitTop = 181
            ExplicitHeight = 13
          end
          object btndt_ManBs: TButtonedEdit
            AlignWithMargins = True
            Left = 100
            Top = 112
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            Images = ilIcons24
            RightButton.ImageIndex = 1
            RightButton.Visible = True
            TabOrder = 4
            OnChange = dbedtBsChange
            OnRightButtonClick = btn_manBsClick
            ExplicitWidth = 336
          end
          object lbl7: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 140
            Width = 70
            Height = 13
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 30
            Margins.Bottom = 0
            Align = alTop
            Alignment = taRightJustify
            Caption = 'Url'
            ExplicitLeft = 57
            ExplicitWidth = 13
          end
          object btndt_ManBsUrl: TButtonedEdit
            AlignWithMargins = True
            Left = 100
            Top = 140
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            Images = ilIcons24
            RightButton.ImageIndex = 2
            RightButton.Visible = True
            TabOrder = 5
            TextHint = 'Use this only if you are going to share this file'
            OnRightButtonClick = btn_manBsUrlClick
            ExplicitWidth = 336
          end
          object lbl8: TLabel
            Left = 0
            Top = 168
            Width = 100
            Height = 13
            Align = alTop
            Caption = 'Muscle definition'
            ExplicitLeft = 201
            ExplicitTop = 254
            ExplicitWidth = 79
          end
          object dblkcbbmuscleDefType: TDBLookupComboBox
            AlignWithMargins = True
            Left = 100
            Top = 168
            Width = 294
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 7
            Align = alTop
            DataField = 'muscleDefType'
            DataSource = dtmdl_Main.dsFitStages
            KeyField = 'ID'
            ListField = 'iName'
            ListSource = dtmdl_Main.dsFitTypes
            TabOrder = 6
            ExplicitWidth = 336
          end
          object lbl10: TLabel
            Left = 0
            Top = 196
            Width = 100
            Height = 13
            Align = alTop
            Caption = 'Excluded races'
            ExplicitLeft = 201
            ExplicitTop = 290
            ExplicitWidth = 72
          end
          object dbmmoexcludedRaces: TDBMemo
            Left = 100
            Top = 196
            Width = 294
            Height = 165
            Align = alClient
            DataField = 'excludedRaces'
            DataSource = dtmdl_Main.dsFitStages
            ScrollBars = ssVertical
            TabOrder = 7
            WordWrap = False
            ExplicitWidth = 336
            ExplicitHeight = 89
          end
        end
      end
    end
    object tsPlayerStages: TTabSheet
      Caption = 'Player stages'
      ImageIndex = 1
      object imgJourney: TImage
        AlignWithMargins = True
        Left = 3
        Top = 357
        Width = 605
        Height = 43
        Margins.Top = 8
        Align = alBottom
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000000C0000
          00080802000000428689A6000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC61050000000970485973000019D6000019D60118D1CAED000000
          1274455874536F66747761726500477265656E73686F745E5508050000001249
          44415478DA633C1B13C34008308E2A0200DA010C3171DB49700000000049454E
          44AE426082}
        Stretch = True
        OnClick = imgJourneyClick
        ExplicitLeft = 0
        ExplicitTop = 308
        ExplicitWidth = 621
      end
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 349
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 359
        object lbl11: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 9
          Width = 177
          Height = 34
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alTop
          Alignment = taCenter
          Caption = 'Fitness stages'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlowSize = 10
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 106
        end
        object dbgrd1: TDBGrid
          Left = 1
          Top = 51
          Width = 183
          Height = 297
          Hint = 'Right click to add/delete data'
          Align = alClient
          DataSource = dtmdl_Main.dsPlayerStages
          Options = [dgIndicator, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmRecords
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyDown = dbgrd_NavKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'FitnessStageName'
              Width = 179
              Visible = True
            end>
        end
      end
      object grp1: TGroupBox
        Left = 200
        Top = 20
        Width = 409
        Height = 51
        Caption = 'Stage configuration'
        Padding.Left = 10
        Padding.Right = 10
        Padding.Bottom = 10
        TabOrder = 1
        object lbl12: TLabel
          AlignWithMargins = True
          Left = 230
          Top = 24
          Width = 93
          Height = 13
          Margins.Top = 8
          Margins.Right = 6
          Caption = 'Min duration (days)'
          Constraints.MaxHeight = 13
        end
        object lbl13: TLabel
          Left = 20
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Stage'
        end
        object dblkcbbFitnessStage: TDBLookupComboBox
          Left = 60
          Top = 20
          Width = 151
          Height = 21
          DataField = 'FitnessStage'
          DataSource = dtmdl_Main.dsPlayerStages
          KeyField = 'ID'
          ListField = 'iName'
          ListSource = dtmdl_Main.dsFitStages
          TabOrder = 0
        end
        object nmbrbx1: TNumberBox
          Left = 330
          Top = 20
          Width = 71
          Height = 21
          LargeStep = 100.000000000000000000
          MinValue = 1.000000000000000000
          MaxValue = 9999999.000000000000000000
          SmallStep = 10.000000000000000000
          TabOrder = 1
          Value = 20.000000000000000000
          SpinButtonOptions.Placement = nbspInline
        end
      end
      object grp2: TGroupBox
        Left = 200
        Top = 80
        Width = 411
        Height = 221
        Caption = 'Appearance'
        TabOrder = 2
        object lbl14: TLabel
          Left = 10
          Top = 50
          Width = 180
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Starting weight'
        end
        object lbl15: TLabel
          Left = 220
          Top = 50
          Width = 180
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ending weight'
        end
        object lbl16: TLabel
          Left = 25
          Top = 120
          Width = 150
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Starting muscle definiton'
        end
        object lbl17: TLabel
          Left = 235
          Top = 120
          Width = 150
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ending muscle definiton'
        end
        object lbl18: TLabel
          Left = 130
          Top = 190
          Width = 150
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Blend at'
        end
        object dbtrckbrbsMin: TDBTrackBar
          Left = 10
          Top = 20
          Width = 180
          Height = 30
          Enabled = False
          Max = 100
          PopupMenu = pmTrackbar
          Frequency = 10
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 0
          OnExit = JourneyTrackbarExit
          DataField = 'bsMin'
          DataSource = dtmdl_Main.dsPlayerStages
        end
        object dbtrckbrbsMax: TDBTrackBar
          Left = 220
          Top = 20
          Width = 180
          Height = 30
          Enabled = False
          Max = 100
          PopupMenu = pmTrackbar
          Frequency = 10
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 1
          OnExit = JourneyTrackbarExit
          DataField = 'bsMax'
          DataSource = dtmdl_Main.dsPlayerStages
        end
        object dbtrckbrmuscleMin: TDBTrackBar
          Left = 25
          Top = 90
          Width = 150
          Height = 30
          Enabled = False
          Max = 6
          Min = 1
          Position = 1
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 2
          DataField = 'muscleMin'
          DataSource = dtmdl_Main.dsPlayerStages
        end
        object dbtrckbrmuscleMax: TDBTrackBar
          Left = 235
          Top = 90
          Width = 150
          Height = 30
          Enabled = False
          Max = 6
          Min = 1
          Position = 1
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 3
          DataField = 'muscleMax'
          DataSource = dtmdl_Main.dsPlayerStages
        end
        object dbtrckbrblend: TDBTrackBar
          Left = 130
          Top = 160
          Width = 150
          Height = 30
          Enabled = False
          Max = 40
          Min = 5
          PopupMenu = pmTrackbar
          Frequency = 5
          Position = 5
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 4
          OnExit = JourneyTrackbarExit
          DataField = 'blend'
          DataSource = dtmdl_Main.dsPlayerStages
        end
      end
      object grp3: TGroupBox
        Left = 200
        Top = 310
        Width = 411
        Height = 51
        Caption = 'Head resizing'
        TabOrder = 3
        object lbl19: TLabel
          Left = 20
          Top = 22
          Width = 59
          Height = 13
          Caption = 'Starting size'
        end
        object lbl20: TLabel
          Left = 223
          Top = 22
          Width = 53
          Height = 13
          Caption = 'Ending size'
        end
        object dbtrckbrheadInit: TDBTrackBar
          Left = 80
          Top = 18
          Width = 120
          Height = 30
          Enabled = False
          Max = 130
          Min = 70
          PopupMenu = pmTrackbar
          Frequency = 10
          Position = 70
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 0
          DataField = 'headInit'
          DataSource = dtmdl_Main.dsPlayerStages
        end
        object dbtrckbrheadFinal: TDBTrackBar
          Left = 280
          Top = 18
          Width = 120
          Height = 30
          Enabled = False
          Max = 130
          Min = 70
          PopupMenu = pmTrackbar
          Frequency = 10
          Position = 70
          PositionToolTip = ptTop
          ShowSelRange = False
          TabOrder = 1
          DataField = 'headFinal'
          DataSource = dtmdl_Main.dsPlayerStages
        end
      end
    end
    object tsRaces: TTabSheet
      Caption = 'Races'
      ImageIndex = 6
      object dbmmoraces: TDBMemo
        Left = 210
        Top = 30
        Width = 391
        Height = 201
        Hint = 'Write only one race per line'
        DataField = 'races'
        DataSource = dtmdl_Main.dsRaces
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object dbmmodescription: TDBMemo
        Left = 210
        Top = 250
        Width = 391
        Height = 161
        DataField = 'description'
        DataSource = dtmdl_Main.dsRaces
        ReadOnly = True
        TabOrder = 2
      end
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 413
        Align = alLeft
        TabOrder = 0
        object lbl23: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 9
          Width = 102
          Height = 34
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alTop
          Alignment = taCenter
          Caption = 'Racial groups'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlowSize = 10
          ParentColor = False
          ParentFont = False
        end
        object dbgrd4: TDBGrid
          Left = 1
          Top = 51
          Width = 183
          Height = 361
          Hint = 'No. You can'#39't add/delete racial groups.'
          Align = alClient
          DataSource = dtmdl_Main.dsRaces
          Options = [dgIndicator, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyDown = dbgrd_NavKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'racialGroup'
              Width = 179
              Visible = True
            end>
        end
      end
    end
    object tsNPCs: TTabSheet
      Caption = 'NPCs'
      ImageIndex = 3
      object pnl2: TPanel
        Left = 185
        Top = 0
        Width = 426
        Height = 352
        Align = alClient
        Padding.Left = 15
        Padding.Top = 15
        Padding.Right = 15
        Padding.Bottom = 15
        TabOrder = 1
        ExplicitWidth = 436
        ExplicitHeight = 362
        object rltvpnl1: TRelativePanel
          Left = 16
          Top = 16
          Width = 394
          Height = 65
          ControlCollection = <
            item
              Control = lbl28
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWithPanel = True
              AlignRightWithPanel = False
              AlignTopWithPanel = True
              AlignVerticalCenterWithPanel = False
            end
            item
              Control = lbl29
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWithPanel = True
              AlignRightWithPanel = False
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
              Below = lbl28
            end
            item
              Control = dbtxtesp
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWith = lbl28
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
              RightOf = lbl28
            end
            item
              Control = dbtxtformID
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWith = dbtxtesp
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWith = lbl29
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
            end
            item
              Control = lbl30
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = True
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWithPanel = True
              AlignVerticalCenterWithPanel = False
            end
            item
              Control = lbl31
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWith = lbl30
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
              Below = lbl30
            end
            item
              Control = lbl32
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWith = lbl30
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
              Below = lbl31
            end
            item
              Control = dbtxtclass
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWith = dbtxtisFemale
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWith = lbl30
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
            end
            item
              Control = dbtxtrace
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWith = dbtxtisFemale
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWith = lbl31
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
            end
            item
              Control = dbtxtisFemale
              AlignBottomWithPanel = False
              AlignHorizontalCenterWithPanel = False
              AlignLeftWithPanel = False
              AlignRightWithPanel = False
              AlignTopWith = lbl32
              AlignTopWithPanel = False
              AlignVerticalCenterWithPanel = False
              RightOf = lbl32
            end>
          Align = alTop
          BevelOuter = bvNone
          Padding.Bottom = 7
          TabOrder = 0
          ExplicitWidth = 404
          DesignSize = (
            394
            65)
          object lbl28: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 2
            Width = 44
            Height = 13
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 10
            Anchors = []
            Caption = 'esp/esm:'
          end
          object lbl29: TLabel
            AlignWithMargins = True
            Left = 0
            Top = 20
            Width = 38
            Height = 13
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 10
            Anchors = []
            Caption = 'FormId:'
          end
          object dbtxtesp: TDBText
            Left = 54
            Top = 2
            Width = 57
            Height = 13
            Anchors = []
            DataField = 'esp'
            DataSource = dtmdl_Main.dsNPCs
          end
          object dbtxtformID: TDBText
            Left = 54
            Top = 20
            Width = 67
            Height = 13
            Anchors = []
            DataField = 'formID'
            DataSource = dtmdl_Main.dsNPCs
          end
          object lbl30: TLabel
            AlignWithMargins = True
            Left = 182
            Top = 2
            Width = 29
            Height = 13
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 10
            Anchors = []
            Caption = 'Class:'
          end
          object lbl31: TLabel
            AlignWithMargins = True
            Left = 182
            Top = 20
            Width = 28
            Height = 13
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 10
            Anchors = []
            Caption = 'Race:'
          end
          object lbl32: TLabel
            AlignWithMargins = True
            Left = 182
            Top = 38
            Width = 48
            Height = 13
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 5
            Anchors = []
            Caption = 'Is female:'
          end
          object dbtxtclass: TDBText
            Left = 235
            Top = 2
            Width = 3
            Height = 13
            Anchors = []
            AutoSize = True
            DataField = 'class'
            DataSource = dtmdl_Main.dsNPCs
          end
          object dbtxtrace: TDBText
            Left = 235
            Top = 20
            Width = 3
            Height = 13
            Anchors = []
            AutoSize = True
            DataField = 'race'
            DataSource = dtmdl_Main.dsNPCs
          end
          object dbtxtisFemale: TDBText
            Left = 235
            Top = 38
            Width = 3
            Height = 13
            Anchors = []
            AutoSize = True
            DataField = 'isFemale'
            DataSource = dtmdl_Main.dsNPCs
          end
        end
        object pnl5: TPanel
          Left = 16
          Top = 90
          Width = 404
          Height = 281
          BevelOuter = bvNone
          TabOrder = 1
          object lbl22: TLabel
            Left = 0
            Top = 4
            Width = 64
            Height = 13
            Caption = 'Fitness stage'
          end
          object dblkcbbfitStage: TDBLookupComboBox
            Left = 90
            Top = 0
            Width = 311
            Height = 21
            DataField = 'fitStage'
            DataSource = dtmdl_Main.dsNPCs
            KeyField = 'ID'
            ListField = 'iName'
            ListSource = dtmdl_Main.dsFitStages
            TabOrder = 0
          end
          object grp4: TGroupBox
            Left = 0
            Top = 40
            Width = 401
            Height = 101
            Caption = 'Body shape (from Bodyslide preset)'
            TabOrder = 1
            object lbl24: TLabel
              Left = 20
              Top = 30
              Width = 40
              Height = 13
              Caption = 'Disabled'
            end
            object lbl25: TLabel
              Left = 313
              Top = 30
              Width = 70
              Height = 13
              Caption = 'By NPC weight'
            end
            object lbl33: TLabel
              Left = 20
              Top = 70
              Width = 77
              Height = 13
              Caption = 'Current setting:'
            end
            object lbl_NPCWeight: TLabel
              Left = 110
              Top = 70
              Width = 239
              Height = 13
              Caption = 'Max Sick Gains won'#39't change this NPC body shape'
            end
            object dbtrckbrweight: TDBTrackBar
              Left = 70
              Top = 20
              Width = 235
              Height = 31
              Hint = 
                'NPC will look as if they was this weight|Don'#39't fret. This won'#39't ' +
                'cause neck seams AT ALL.'
              Max = 101
              Min = -1
              PopupMenu = pmTrackbar
              Frequency = 10
              PositionToolTip = ptTop
              ShowSelRange = False
              TabOrder = 0
              OnChange = dbtrckbrweightChange
              DataField = 'weight'
              DataSource = dtmdl_Main.dsNPCs
            end
          end
          object grp5: TGroupBox
            Left = 0
            Top = 160
            Width = 401
            Height = 101
            Caption = 'Muscle definition'
            TabOrder = 2
            object lbl26: TLabel
              Left = 60
              Top = 30
              Width = 40
              Height = 13
              Caption = 'Disabled'
            end
            object lbl27: TLabel
              Left = 300
              Top = 30
              Width = 20
              Height = 13
              Caption = 'Max'
            end
            object lbl34: TLabel
              Left = 20
              Top = 70
              Width = 77
              Height = 13
              Caption = 'Current setting:'
            end
            object lbl_NPCMuscleDef: TLabel
              Left = 110
              Top = 70
              Width = 145
              Height = 13
              Caption = 'Don'#39't change muscle definition'
            end
            object dbtrckbrmuscleDef: TDBTrackBar
              Left = 120
              Top = 20
              Width = 161
              Height = 31
              Max = 6
              Min = -1
              PositionToolTip = ptTop
              ShowSelRange = False
              TabOrder = 0
              OnChange = dbtrckbrmuscleDefChange
              DataField = 'muscleDef'
              DataSource = dtmdl_Main.dsNPCs
            end
          end
        end
      end
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 352
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 362
        object lbl21: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 9
          Width = 50
          Height = 34
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alTop
          Alignment = taCenter
          Caption = 'NPCs'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlowSize = 10
          ParentColor = False
          ParentFont = False
        end
        object dbgrd2: TDBGrid
          Left = 1
          Top = 51
          Width = 183
          Height = 310
          Hint = 'Right click to add/delete data'
          Align = alClient
          DataSource = dtmdl_Main.dsNPCs
          Options = [dgIndicator, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmRecords
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyDown = dbgrd_NavKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'fullName'
              Width = 179
              Visible = True
            end>
        end
      end
      object stckpnl1: TStackPanel
        Left = 0
        Top = 352
        Width = 611
        Height = 51
        Align = alBottom
        ControlCollection = <
          item
            Control = filterImportedNPC1
          end>
        Padding.Left = 3
        Padding.Top = 15
        TabOrder = 2
        ExplicitTop = 362
        ExplicitWidth = 621
        inline filterImportedNPC1: TfrmFilterImportedNPC
          Left = 4
          Top = 16
          Width = 667
          Height = 76
          TabOrder = 0
          ExplicitLeft = 4
          ExplicitTop = 16
        end
      end
    end
    object tsClasses: TTabSheet
      Caption = 'Classes'
      ImageIndex = 7
      object pnl6: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 403
        Align = alLeft
        TabOrder = 0
        ExplicitHeight = 413
        object lbl35: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 9
          Width = 89
          Height = 34
          Margins.Top = 8
          Margins.Bottom = 8
          Align = alTop
          Alignment = taCenter
          Caption = 'Archetypes'
          Color = clNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlowSize = 10
          ParentColor = False
          ParentFont = False
        end
        object dbgrd3: TDBGrid
          Left = 1
          Top = 51
          Width = 183
          Height = 361
          Hint = 'Right click to add/delete data'
          Align = alClient
          DataSource = dtmdl_Main.dsClassArchetypes
          Options = [dgIndicator, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
          PopupMenu = pmRecords
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyDown = dbgrd_NavKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'iName'
              Width = 179
              Visible = True
            end>
        end
      end
      object stckpnl2: TStackPanel
        Left = 185
        Top = 0
        Width = 426
        Height = 403
        Align = alClient
        ControlCollection = <
          item
            Control = pnl7
          end
          item
            Control = grp6
          end>
        HorizontalPositioning = sphpFill
        Padding.Left = 15
        Padding.Top = 25
        Padding.Right = 15
        Padding.Bottom = 15
        Spacing = 5
        TabOrder = 1
        ExplicitWidth = 436
        ExplicitHeight = 413
        object pnl7: TPanel
          AlignWithMargins = True
          Left = 16
          Top = 26
          Width = 394
          Height = 165
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            394
            165)
          object lbl39: TLabel
            Left = 0
            Top = 0
            Width = 27
            Height = 13
            Caption = 'Name'
          end
          object lbl37: TLabel
            Left = 160
            Top = 0
            Width = 36
            Height = 13
            Caption = 'Classes'
          end
          object bvl1: TBevel
            Left = 0
            Top = 50
            Width = 140
            Height = 110
            Anchors = [akLeft, akTop, akBottom]
            ExplicitHeight = 130
          end
          object dbedtiName: TDBEdit
            AlignWithMargins = True
            Left = 0
            Top = 20
            Width = 140
            Height = 21
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 10
            DataField = 'iName'
            DataSource = dtmdl_Main.dsClassArchetypes
            TabOrder = 0
          end
          object dbmmoclasses: TDBMemo
            AlignWithMargins = True
            Left = 160
            Top = 20
            Width = 244
            Height = 141
            Hint = 
              'Right click for easy setting|NPCs belonging to these classes wil' +
              'l get the same settings applied.'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 10
            Anchors = [akLeft, akTop, akBottom]
            DataField = 'classes'
            DataSource = dtmdl_Main.dsClassArchetypes
            PopupMenu = pmGetClasses
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
        object grp6: TGroupBox
          Left = 16
          Top = 206
          Width = 394
          Height = 205
          Caption = 'Appearance'
          TabOrder = 1
          object lbl38: TLabel
            Left = 50
            Top = 34
            Width = 64
            Height = 13
            Caption = 'Fitness stage'
          end
          object lbl36: TLabel
            Left = 20
            Top = 100
            Width = 180
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Low weight'
          end
          object lbl40: TLabel
            Left = 210
            Top = 100
            Width = 180
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'High weight'
          end
          object lbl41: TLabel
            Left = 225
            Top = 170
            Width = 150
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'High muscle definiton'
          end
          object lbl42: TLabel
            Left = 35
            Top = 170
            Width = 150
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'Low muscle definiton'
          end
          object dblkcbbfitStage1: TDBLookupComboBox
            AlignWithMargins = True
            Left = 130
            Top = 30
            Width = 251
            Height = 21
            Hint = 
              'Fitness stage associated with this archetype|Classes above will ' +
              'get this Fitness stage applied when found.'
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 10
            DataField = 'fitStage'
            DataSource = dtmdl_Main.dsClassArchetypes
            KeyField = 'ID'
            ListField = 'iName'
            ListSource = dtmdl_Main.dsFitStages
            TabOrder = 0
          end
          object dbtrckbrbsMin1: TDBTrackBar
            Left = 20
            Top = 70
            Width = 180
            Height = 30
            Max = 100
            PopupMenu = pmTrackbar
            Frequency = 10
            PositionToolTip = ptTop
            ShowSelRange = False
            TabOrder = 1
            OnExit = JourneyTrackbarExit
            DataField = 'bsLo'
            DataSource = dtmdl_Main.dsClassArchetypes
          end
          object dbtrckbrbsMax1: TDBTrackBar
            Left = 210
            Top = 70
            Width = 180
            Height = 30
            Max = 100
            PopupMenu = pmTrackbar
            Frequency = 10
            PositionToolTip = ptTop
            ShowSelRange = False
            TabOrder = 2
            OnExit = JourneyTrackbarExit
            DataField = 'bsHi'
            DataSource = dtmdl_Main.dsClassArchetypes
          end
          object dbtrckbrmuscleMax1: TDBTrackBar
            Left = 225
            Top = 140
            Width = 150
            Height = 30
            Max = 6
            Min = 1
            Position = 1
            PositionToolTip = ptTop
            ShowSelRange = False
            TabOrder = 4
            DataField = 'muscleDefHi'
            DataSource = dtmdl_Main.dsClassArchetypes
          end
          object dbtrckbrmuscleMin1: TDBTrackBar
            Left = 35
            Top = 140
            Width = 150
            Height = 30
            Max = 6
            Min = 1
            Position = 1
            PositionToolTip = ptTop
            ShowSelRange = False
            TabOrder = 3
            DataField = 'muscleDefLo'
            DataSource = dtmdl_Main.dsClassArchetypes
          end
        end
      end
    end
    object tsMuscleDef: TTabSheet
      Caption = 'Muscle definition'
      ImageIndex = 4
    end
    object tsMCM: TTabSheet
      Caption = 'MCM'
      ImageIndex = 5
      object cbbMcmPlayerProcessing: TComboBox
        Left = 40
        Top = 30
        Width = 191
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Body shape only'
        Items.Strings = (
          'Body shape only'
          'Body shape and muscle definition')
      end
      object cbbMcmNpcProcessing: TComboBox
        Left = 310
        Top = 30
        Width = 191
        Height = 21
        Style = csDropDownList
        ItemIndex = 1
        TabOrder = 1
        Text = 'Body shape only'
        Items.Strings = (
          'Don'#39't process'
          'Body shape only'
          'Body shape and muscle definition'
          'Only assigned')
      end
    end
    object tsOutput: TTabSheet
      Caption = 'Output'
      ImageIndex = 2
      object redtOutput: TRichEdit
        Left = 0
        Top = 0
        Width = 611
        Height = 403
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Fira Code'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        Zoom = 100
        ExplicitWidth = 621
        ExplicitHeight = 413
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 431
    Width = 619
    Height = 19
    AutoHint = True
    Panels = <>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = True
    ExplicitTop = 441
    ExplicitWidth = 629
  end
  object mm1: TMainMenu
    Images = ilActions32
    Left = 84
    Top = 363
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Action = actFileNew
      end
      object Open1: TMenuItem
        Action = flpn1
      end
      object Save1: TMenuItem
        Action = actSave
      end
      object SaveAs1: TMenuItem
        Action = flsvs1
      end
      object Recentfiles1: TMenuItem
        Caption = 'Recent files'
        object N1: TMenuItem
          Caption = '-'
        end
        object N4: TMenuItem
          Caption = 'Clear list'
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Generate1: TMenuItem
        Action = actGenerate
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object actImportNPCs1: TMenuItem
        Action = actImportNPCs
      end
      object exturegenerator1: TMenuItem
        Action = actTexGen
      end
      object Editknownclasses1: TMenuItem
        Action = actEditKnownClasses
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Appconfiguration1: TMenuItem
        Action = actAppConfig
      end
      object Clearconfiguration1: TMenuItem
        Action = actClearConfig
      end
    end
  end
  object pmRecords: TPopupMenu
    Images = ilActions32
    Left = 16
    Top = 406
    object Insert1: TMenuItem
      Action = actDBInsert
    end
    object Action11: TMenuItem
      Action = actDBDel
    end
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = actDBDel
            ImageIndex = 1
          end
          item
            Action = actDBInsert
            ImageIndex = 0
            ShortCut = 16429
          end>
      end>
    Images = ilActions32
    Left = 16
    Top = 234
    StyleName = 'Platform Default'
    object flpn1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Dialog.DefaultExt = 'mdb'
      Dialog.Filter = 'Database files (*.mdb)|*.mdb'
      Dialog.Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
      Hint = 'Open|Opens an existing file'
      ImageIndex = 7
      ShortCut = 16463
      OnAccept = flpn1Accept
    end
    object flsvs1: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Dialog.DefaultExt = 'mdb'
      Dialog.Filter = 'Database files (*.mdb)|*.mdb'
      Dialog.Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 30
      ShortCut = 24659
      OnAccept = flsvs1Accept
    end
    object actFileNew: TAction
      Category = 'File'
      Caption = 'New'
      ShortCut = 16462
      OnExecute = actFileNewExecute
    end
    object actDBInsert: TAction
      Category = 'DB'
      Caption = 'Insert'
      Hint = 'Add new data (Ctrl + Ins)'
      ImageIndex = 0
      ShortCut = 16429
      OnExecute = actDBInsertExecute
    end
    object actDBDel: TAction
      Category = 'DB'
      Caption = 'Delete'
      ImageIndex = 1
      OnExecute = actDBDelExecute
    end
    object actTexGen: TAction
      Category = 'Tools'
      Caption = 'Texture generator'
      ImageIndex = 2
      ShortCut = 16468
      OnExecute = actTexGenExecute
    end
    object actSave: TAction
      Category = 'File'
      Caption = 'Save'
      ShortCut = 16467
      OnExecute = actSaveExecute
    end
    object actGenerate: TAction
      Category = 'File'
      Caption = 'Generate mod info'
      Hint = 'Exports all data so you can see this configuration in game'
      ShortCut = 120
      OnExecute = actGenerateExecute
    end
    object actAppConfig: TAction
      Category = 'Tools'
      Caption = 'App configuration'
      ShortCut = 115
      OnExecute = actAppConfigExecute
    end
    object actClearConfig: TAction
      Category = 'Tools'
      Caption = 'Clear configuration'
      Hint = 
        'Restore configuration to defaults|Use this if some program updat' +
        'e makes it act all weird.'
      OnExecute = actClearConfigExecute
    end
    object actTrackbarSet: TAction
      Category = 'UI'
      Caption = 'Set value'
      OnExecute = actTrackbarSetExecute
    end
    object actImportNPCs: TAction
      Category = 'Tools'
      Caption = 'Import NPCs'
      ImageIndex = 3
      ShortCut = 16464
      OnExecute = actImportNPCsExecute
    end
    object actEditKnownClasses: TAction
      Category = 'Tools'
      Caption = 'Edit known classes'
      OnExecute = actEditKnownClassesExecute
    end
  end
  object ilActions48: TImageList
    ColorDepth = cd32Bit
    Height = 48
    Width = 48
    Left = 84
    Top = 320
    Bitmap = {
      494C010102005000040030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030906160A2816571242
      258F175530B71B6539D81E703EED207442F9207442F91E703EED1B6539D81755
      30B71242258F0A28165703090616000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006061216151546572323
      738F2E2E93B73636ADD83C3CBFED3F3FC8F93F3FC8F93C3CBFED3636ADD82E2E
      93B72323738F1515465706061216000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020804130D321C6C195D35C8207743FE207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FE195D34C70D311C6B01070412000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040E131B1B566C3232A0C84040CCFE4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CCFE3232A0C71A1A566B04040D12000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030B06191142258E1F7240F4207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF1F7240F41241268D030A
      0618000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050514192424728E3D3DC4F44040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3D3DC4F42323708D0606
      1318000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010201040D33
      1D6F1F7140F2207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF1F72
      41F5113C22800103010600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010103041B1B
      586F3D3DC2F24040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3E3E
      C5F5212167800101050600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000041009251A6036CE2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1B5F36CD04100924000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008081E253535A5CE4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF3434A4CD09091C24000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A2514501F7140F2207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF428D60FF6FA887FF6EA886FF418C5FFF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF1F7040F10A24154E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000141440503D3DC2F24040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF3D3DC1F113133F4E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C2D1960207542FB207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF388657FFC1D9CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD8C9FF3786
      56FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207642FC0C2F1A6700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018184D603F3FC9FB4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3F3FCAFC1919526700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D2F1B66207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2A7D
      4BFFDDEAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEA
      E2FF297C4AFF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FE0C2E1A64000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191952664040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CCFE19195064000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009251551207642FC207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF83B3
      96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF81B295FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207642FC0A24154E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000141441513F3FCAFC4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF6868D8FFBABAEDFFCCCCF2FFCCCCF2FFCCCCF2FFCCCC
      F2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCC
      F2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFBABAEDFF6767D7FF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3F3FCAFC13133F4E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000041009241F7040F1207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFB3D1
      BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB3D1BFFF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF1F7140F30511
      0927000000000000000000000000000000000000000000000000000000000000
      000009091C243D3DC1F14040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF5959D3FFF8F8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FDFF5858D3FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3D3DC3F30909
      1F27000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      00051A6036CE207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF1B5F
      36CD000100050000000000000000000000000000000000000000000000000000
      04053535A5CE4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF8E8EE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8EE1FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3434
      A4CD000004050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E37
      2077207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF0E351E730000000000000000000000000000000000000000000000001D1D
      60774040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF1C1C5C730000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020C061B1F72
      40F4207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF1F7140F2030A0618000000000000000000000000000000000606161B3D3D
      C4F44040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2E6FF8686
      DFFFFEFEFFFFFFFFFFFFFFFFFFFF9696E3FF9292E2FFFFFFFFFFFFFFFFFFFFFF
      FFFF8A8AE0FF9E9EE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF3D3DC2F20606131800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001242258F2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1241248C000000000000000000000000000000002323738F4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF2424718C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020804131F7240F42077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1F7240F402080413000000000000000004040E133D3DC4F44040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF3D3DC4F404040E13000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E321C6D207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF0E311B6A00000000000000001C1C586D4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF1A1A546A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A5E35CA207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF195D34C700000000000000003232A2CA4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF3232A0C7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020A0617207743FE207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FE020A0617060612174040CCFE4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CCFE060612170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B291759207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF0B271656161647594040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF151545560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000012432791207743FF207743FF2077
      43FF207743FF207743FF207743FF2A7D4BFF82B395FFB1CFBDFFB5D2C1FFB5D2
      C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFE8F1
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE8F1ECFFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2
      C1FFB5D2C1FFB5D2C1FFB1CFBDFF81B295FF297C4AFF207743FF207743FF2077
      43FF207743FF207743FF207743FF1242258F242475914040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF2323738F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000175631B9207743FF207743FF2077
      43FF207743FF207743FF388657FFDEEBE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEAE2FF378656FF207743FF2077
      43FF207743FF207743FF207743FF185531B62E2E94B94040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF2D2D92B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B673ADC207743FF207743FF2077
      43FF207743FF207743FFC3DACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD8C9FF207743FF2077
      43FF207743FF207743FF207743FF1C663ADB3737B1DC4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3737B0DB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E703EED207743FF207743FF2077
      43FF207743FF438D60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428D60FF2077
      43FF207743FF207743FF207743FF1E6E3EEB3C3CBFED4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3B3BBDEB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000207442F9207743FF207743FF2077
      43FF207743FF6EA886FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DA785FF2077
      43FF207743FF207743FF207743FF1F7441F83F3FC8F94040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3E3EC7F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000207442F9207743FF207743FF2077
      43FF207743FF6FA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EA886FF2077
      43FF207743FF207743FF207743FF1F7441F83F3FC8F94040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3E3EC7F80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E703EED207743FF207743FF2077
      43FF207743FF448E61FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF428D60FF2077
      43FF207743FF207743FF207743FF1E6E3EEB3C3CBFED4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3B3BBDEB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C673ADD207743FF207743FF2077
      43FF207743FF207743FFC4DBCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1D9CBFF207743FF2077
      43FF207743FF207743FF207743FF1C663ADB3838B1DD4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3737B0DB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000175631B9207743FF207743FF2077
      43FF207743FF207743FF388758FFDFEBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDEAE2FF388657FF207743FF2077
      43FF207743FF207743FF207743FF185531B62E2E94B94040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5454D2FF4040
      CDFFF5F5FCFFFFFFFFFFFFFFFFFF4545CEFF4545CEFFFFFFFFFFFFFFFFFFF5F5
      FCFF4040CDFF5454D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF2D2D92B60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000012432791207743FF207743FF2077
      43FF207743FF207743FF207743FF2A7D4BFF83B497FFB2D0BEFFB5D2C1FFB5D2
      C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFE8F1
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE8F1ECFFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2C1FFB5D2
      C1FFB5D2C1FFB5D2C1FFB2D0BEFF83B396FF2A7D4BFF207743FF207743FF2077
      43FF207743FF207743FF207743FF1242258F242475914040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656D3FF4040
      CDFFF7F7FDFFFFFFFFFFFFFFFFFF4747CFFF4747CFFFFFFFFFFFFFFFFFFFF7F7
      FDFF4040CDFF5656D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF2323738F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B29175A207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF0A2816571616485A4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDEEFFACAC
      E9FFFFFFFFFFFFFFFFFFFFFFFFFFB4B4EBFFB4B4EBFFFFFFFFFFFFFFFFFFFFFF
      FFFFABABE9FFBDBDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF151546570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030B0619207743FE207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FE020A0617050514194040CCFE4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF9797E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9797E4FF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CCFE060612170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A5F35CB207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF195F36C900000000000000003333A3CB4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4141
      CDFF5656D3FFA4A4E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4E7FF5656
      D3FF4141CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF3333A2C9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D331C6E207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF0D311C6B00000000000000001B1B586E4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFFBABA
      EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBABAEDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF1A1A566B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020804131F7241F52077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1F7240F402080413000000000000000004040E133E3EC5F54040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFFECEC
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECECFAFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF3D3DC4F404040E13000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000134325902077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1241268D00000000000000000000000000000000252573904040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF8B8B
      E0FFD8D8F5FFD9D9F5FFD9D9F5FFD9D9F5FFD9D9F5FFE9E9F9FFFFFFFFFFFFFF
      FFFFEEEEFAFFD9D9F5FFD9D9F5FFD9D9F5FFD9D9F5FFD9D9F5FFD9D9F5FFEEEE
      FAFFFFFFFFFFFFFFFFFFE9E9F9FFD9D9F5FFD9D9F5FFD9D9F5FFD9D9F5FFD8D8
      F5FF8989E0FF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF2323708D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020C061B1F72
      40F4207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF1F7140F3030B0619000000000000000000000000000000000606161B3D3D
      C4F44040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF9393E3FFFFFFFFFFFFFF
      FFFFACACE9FF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFFACAC
      E9FFFFFFFFFFFFFFFFFF9393E3FF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF3D3DC3F30505141900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F37
      1F78207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF0E361E740000000000000000000000000000000000000000000000001E1E
      60784040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF8484DFFFFFFFFFFFFFFF
      FFFFE6E6F8FF7676DBFF7373DAFF7373DAFF7373DAFF7373DAFF7676DBFFE1E1
      F7FFFFFFFFFFFFFFFFFF8383DEFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF1D1D5C740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000103
      01061A6136D0207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFBBD6
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBBD6C6FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF1A60
      36CE000100050000000000000000000000000000000000000000000000000101
      05063434A7D04040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4F4FD1FFF2F2FCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2F2FBFF4E4ED1FF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3535
      A5CE000004050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000041009241F7040F1207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FFB3D1
      BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB3D1BFFF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF1F7140F30512
      0A28000000000000000000000000000000000000000000000000000000000000
      000009091C243D3DC1F14040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF8080DEFFFAFA
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAFEFF8080DEFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3D3DC3F30A0A
      2028000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B261653207642FC207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF83B4
      97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF82B395FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207642FC0A2514500000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151543533F3FCAFC4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF6262
      D6FFB4B4EBFFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFCCCCF2FFB4B4
      EBFF6262D6FF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3F3FCAFC141440500000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C2F1A67207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2A7D
      4CFFDFEBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEB
      E3FF2A7D4BFF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF0E321C6D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191952674040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF1C1C586D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C2D1960207542FB207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF388758FFC4DBCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3DACCFF3886
      57FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207642FC0D301C6800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018184D603F3FC9FB4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3F3FCAFC1A1A546800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B2616531F7140F3207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF448E61FF6FA887FF6FA887FF438D60FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF1F7140F2092515510000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151543533D3DC3F34040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF3D3DC2F2141441510000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000051109271A6136D02077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1A6036CF05110926000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009091F273434A7D04040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF3434A5CF09091F26000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000100050D33
      1D6F1F7140F3207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF1F72
      41F5113C22800002010700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000004051B1B
      586F3D3DC3F34040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3E3E
      C5F5212167800101060700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030C071C134325901F7241F5207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF1F7240F41242258F020C
      061B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707161C252573903E3EC5F54040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF3D3DC4F42323738F0606
      161B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020804130D331C6E1A5F35CB207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF1A5E35CA0E321C6D02080413000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040E131B1B586E3333A3CB4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040CDFF4040
      CDFF4040CDFF4040CDFF4040CDFF3232A2CA1C1C586D04040E13000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030A06180B29175A1243
      2791175631B91C663ADB1E6F3FEE207542FA207542FA1E6F3FEE1C663ADB1756
      31B9124327910B291759030A0618000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060613181616485A2424
      75912E2E94B93737B0DB3C3CBFEE3F3FC9FA3F3FC9FA3C3CBFEE3737B0DB2E2E
      94B9242475911616475906061318000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFF8001FFFFFFFF8001FFFF00000000
      0000000000000000FFFC00003FFFFFFC00003FFF000000000000000000000000
      FFF000000FFFFFF000000FFF000000000000000000000000FFC0000003FFFFC0
      000003FF000000000000000000000000FF80000001FFFF80000001FF00000000
      0000000000000000FF00000000FFFF00000000FF000000000000000000000000
      FE000000007FFE000000007F000000000000000000000000FC000000003FFC00
      0000003F000000000000000000000000F8000000001FF8000000001F00000000
      0000000000000000F0000000000FF0000000000F000000000000000000000000
      E00000000007E00000000007000000000000000000000000E00000000007E000
      00000007000000000000000000000000C00000000003C0000000000300000000
      0000000000000000C00000000003C00000000003000000000000000000000000
      8000000000018000000000010000000000000000000000008000000000018000
      0000000100000000000000000000000080000000000180000000000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000000018000
      0000000100000000000000000000000080000000000180000000000100000000
      0000000000000000800000000001800000000001000000000000000000000000
      C00000000003C00000000003000000000000000000000000C00000000003C000
      00000003000000000000000000000000E00000000007E0000000000700000000
      0000000000000000E00000000007E00000000007000000000000000000000000
      F0000000000FF0000000000F000000000000000000000000F8000000001FF800
      0000001F000000000000000000000000FC000000003FFC000000003F00000000
      0000000000000000FE000000007FFE000000007F000000000000000000000000
      FF00000000FFFF00000000FF000000000000000000000000FF80000001FFFF80
      000001FF000000000000000000000000FFC0000003FFFFC0000003FF00000000
      0000000000000000FFF000000FFFFFF000000FFF000000000000000000000000
      FFFC00003FFFFFFC00003FFF000000000000000000000000FFFF8001FFFFFFFF
      8001FFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object flpndlg_Bs: TFileOpenDialog
    DefaultExtension = 'xml'
    FavoriteLinks = <>
    FileName = 
      'C:\Users\Osrail\Documents\Embarcadero\Studio\Projects\Max Sick G' +
      'ains\_res'
    FileTypes = <
      item
        DisplayName = 'Bodyslide presets (*.xml)'
        FileMask = '*.xml'
      end>
    Options = []
    Left = 84
    Top = 277
  end
  object ilIcons24: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 16
    Top = 363
    Bitmap = {
      494C010104000800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000282829294B5153534C53
      55554C5355554C5355554C5355554C5355554C5355554C5355554C5355554C53
      55554C5355554C5355554C5355554C5355554C5355554C5355554A4F51512121
      2222000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005010101060101010601010106000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020130120502F0150653B
      0365653B03654F2E015020130124010101060101010601010106000000050000
      0000000000000000000000000000000000000000000011111212313233333132
      3333313233333132333331323333313233333132333331323333313233333132
      33333132333331323333313233333132333331323333313233332E2F30300B0B
      0C0C00000000000000000000000000000000545D616127C9FEFE25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF29C8
      FDFD667C85850000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000050101010601010106010101060000
      0005000000000000000000000000000000000000000000000000000000000000
      00000000000000000000100900107B48027BDC8105DCFF9506FFFF9506FFFF95
      06FFFF9506FFFF9506FFFE9406FFD77E06DC7947037E0F090115010101060000
      000500000000000000000000000000000000464B4D4D30C6F8F825CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF34C6
      F5F55964696900000000000000000000000058B2D0D125CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF383A3B3B00000000000000000000000500000000000000000000
      0000754C007AB07100BBB07100BBB06F00BBB06D00BBB06A00BBB06A00BBB066
      00BBB06600BBB06400BBB06200BBAF5F00BBAB5E02BCAB5A02BCAB5902BC6E38
      007C000000050000000000000000000000000000000500000000000000000000
      0000000000005F38025FEC8A05ECFF9506FFFF9506FFDD8005DDFF9506FFFF95
      06FFFF9506FFF89106F8D37905D3FE9406FFFA9307FFE68705EC5D3803630101
      0106000000050000000000000000000000005DAFC9CA25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF27C9FEFE2D2E2F2F00000000000000003FBCE4EC25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF68858F8F00000000000000000101010600000005000000002D1F
      0030F4A100FFF49F00FFF39C00FFF39A00FFF39700FFF29500FFF29200FFF290
      00FFF18D00FFF18B00FFF08800FFF08600FFEF8200FFEB7E01FFEA7B01FFE979
      01FF2C1602340000000500000000000000000101010600000005000000000201
      000297580497FF9506FFFD9406FD9C5B049C2516012592540292FF9506FFAD64
      04ADDA7F05DAFF9506FF4F2D014F25160125A05E03A2F99107FEFA9207FF9456
      0499030302080000000500000000000000003EBEE7ED25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF667F878700000000000000004EB4D3DE25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF57B4D3D300000000000000000101010601010106000000053C29
      0040F5A400FFF4A100FFF49F00FFF39C00FFF39A00FFF39700FFF29500FFF292
      00FFF29000FFF18D00FFF18B00FFF08800FFF08600FFEF8200FFEB7E01FFEA7B
      01FF3A1E02440101010600000005000000000101010601010106000000059457
      0496FF9506FFE98704E93B22023B0000000028170028FA9106FAEF8C06EF180E
      011844280244FF9506FFDA7F05DA06040006000000003C23013DE68606EBFA92
      07FF945604990101010600000005000000004CB5D7DF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF5CAFCBCB000000000000000059A9C3CF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF27C9FEFE18181919000000000101010601010106010101063D2A
      0144F4A500FFF5A400FFF5A810FFFBD886FFFBD98BFFFBD88BFFFBD78BFFFBD7
      8BFFFBD68BFFFBD58BFFFAD58BFFFAD48BFFFAD186FFF18F10FFEF8200FFEB7E
      01FF3A1F024401010106010101060000000501010106010101065D370362FA93
      07FFE48505E527170127000000000000000097580497FF9506FF7A47027A0000
      000000000000B56A04B5FF9506FF54310154000000000000000027170028E084
      06E6FA9207FF5D370362010101060000000558ACC5D125CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF29C8FDFD13131414000000005DA6BDC925C7FBFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF51595C5C000000000000000501010106010101063D2B
      0244F0A600FFF4A500FFF6AB0FFFFBD886FFFBD98BFFFBD98BFFFBD88BFFFBD7
      8BFFFBD78BFFFBD68BFFFBD58BFFFAD58BFFFAD286FFF19110FFF08600FFEF82
      00FF3C200144010101060101010601010106000000050F090115E68705ECF891
      07FD43270347000000000000000008050008EF8C06EFF89106F8170D00170000
      000000000000492B0149FF9506FFB36904B30000000000000000000000003E24
      013FF89207FDE88707EE110B0116010101065DA6BDC925C8FCFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF4C525454000000005DA6BDC924C3F5FF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF6A93A1A1000000000000000000000005010101063D2C
      0244F1A800FFF0A600FFF4A500FFF5A400FFF4A100FFF49F00FFF39C00FFF39A
      00FFF39700FFF29500FFF29200FFF29000FFF18D00FFF18B00FFF08800FFF086
      00FF3B210040000000050101010601010106000000007B490480FA9207FFE687
      05ECA76206ACA66106ABA96205AABD6E03BDFF9506FFEC8A05ECAA6305AAAA63
      05AAAA6305AAAB6404ABFE9306FEFB9306FBAA6305AAAA6305AAAA6305AAAA63
      05AAEB8905ECFA9307FF7B490581010101065DA6BDC924C3F6FF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF698D9999000000005DA6BDC923BEEFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF47BEE5E5000101010000000000000000000000053D2C
      0244F1AB00FFF1A800FFF1AC10FFFAD985FFFBDB8BFFFBDA8BFFFBD98BFFFBD9
      8BFFFBD88BFFFAD586FFF39D10FFF29200FFF29000FFF18D00FFF18B00FFF088
      00FF3C22004000000000000000050101010600000000D37B05D4FA9307FFFA92
      07FFFA9207FFFA9207FFFA9307FFFE9406FFFF9506FFFF9506FFFF9506FFFF95
      06FFFF9506FFFF9506FFFF9506FFFF9506FFFF9506FFFF9506FFFF9506FFFF95
      06FFFF9506FFFE9406FFCE7906D3010101065DA6BDC923BEF0FF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF4DBBDFDF000000005DA6BDC923B9E9FF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF29292A2A0000000000000000000000003E2D
      0144F2AD00FFF1AB00FFF2AE10FFF6D784FFFADA8AFFFBDB8BFFFBDA8BFFFBD9
      8BFFFBD98BFFFAD686FFF49F10FFF29500FFF29200FFF29000FFF18D00FFF18B
      00FF3C22004000000000000000000000000522140122FF9506FFCF7905D0321E
      0137321F0338321F0338321F0338C67206CBFE9406FF55320155331E0033331E
      0033331E0033331E0033874F0487FF9506FF95560495331E0033331E0033331E
      0033331E0033D17905D1FE9406FF201302255DA6BDC923B9EAFF25C9FFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF212122225DA6BDC923B8E8FF25C6FAFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF5C6A6F6F0000000000000000000000003D2C
      0040F2B000FFF2AD00FFF1AB00FFF1A800FFF0A600FFF4A500FFF5A400FFF4A1
      00FFF49F00FFF39C00FFF39A00FFF39700FFF29500FFF29200FFF29000FFF18D
      00FF3C230040000000000000000000000000482A0148FF9506FF925402920000
      0000000000050101010601010106CD7707D2FA9307FF140C0015000000000000
      00000000000000000000532F0153FF9506FF8D52038D00000000000000000000
      00000000000094560294FF9506FF452901475DA6BDC923B8E8FF24C6FAFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF586367675DA6BDC923B8E8FF24C1F4FF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF699DB0B00000000000000000000000003E2E
      0040F6B400FFF2B000FFF3B310FFF6D884FFF7D989FFF6D889FFFAD985FFF6AB
      0FFFF4A100FFF49F00FFF39C00FFF39A00FFF39700FFF29500FFF29200FFF290
      00FF3C230040000000000000000000000000633A0363FF9506FF794702790000
      0000000000000000000501010106E08306E6F58E07FA02010007000000000000
      000000000000000000003C23023CFF9506FFA25F03A200000000000000000000
      0000000000007B48027BFF9506FF613903615DA6BDC923B8E8FF24C2F4FF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF6A9AAAAA5DA6BDC923B8E8FF23BAEBFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF65A4B9B90000000000000000000000003E2F
      0040F8B800FFF6B400FFF3B610FFF7D984FFF7D989FFF7D989FFF6D784FFF5AC
      0FFFF5A400FFF4A100FFF49F00FFF39C00FFF39A00FFF39700FFF29500FFF292
      00FF3D240040000000000000000000000000643A0364FF9506FF784602780000
      0000000000000000000000000005E18406E7F48E07F901020107000000050000
      000000000000000000003B22023BFF9506FFA35F03A300000000000000000000
      0000000000007A47027AFF9506FF623901625DA6BDC923B8E8FF24BBECFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF64A8BEBE5DA6BDC923B8E8FF23B8E8FF24BE
      EFFF30C5EFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF3FC1ECEC393C3D3D0000000000000000000000003E2F
      0040F8BA00FFF8B800FFF6B400FFF2B000FFF2AD00FFF1AB00FFF1A800FFF0A6
      00FFF4A500FFF5A400FFF4A100FFF49F00FFF39C00FFF39A00FFF39700FFF295
      00FF3D250040000000000000000000000000482A0148FF9506FF925402920000
      0000000000000000000000000000CD7707D2FA9207FF150D021A010101060000
      00050000000000000000532F0153FF9506FF8D52038D00000000000000000000
      00000000000093560293FF9506FF482A01485DA6BDC923B8E8FF23B8E8FF24C0
      F2FF29CBFEFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CAFFFF25CA
      FFFF25CAFFFF25CAFFFF2EC7F9F9484D4F4F5DA6BDC923B8E8FF23B8E8FF23B8
      E8FF9A9D5CFFAA9B4BFFAA9B4BFFCCCAAAFFCFCFB2FFCFCFB2FFCFCFB2FFCFCF
      B2FFCFCFB2FFCFCFB2FFCFCFB2FFCFCFB2FFC7C49DFFAA9B4BFFAA9B4BFF93A0
      67FF3EB4DCED1010111103030404000000000000000000000000000000003E30
      0040F9BD00FFF8BA00FFF8B800FFF6B400FFF2B000FFF2AD00FFF1AB00FFF1A8
      00FFF0A600FFF4A500FFF5A400FFF4A100FFF49F00FFF39C00FFF39A00FFF397
      00FF3D25004000000000000000000000000022140122FF9506FFD07A05D0331E
      0033331E0033331E0033331E0033C97306CAFA9307FF54320359321F0338321F
      0338321E0137321E0033874F0487FF9506FF95560495331E0033331E0033331E
      0033331E0033D07A05D0FF9506FF221401225DA6BDC923B8E8FF23B8E8FF23B8
      E8FF8BD7F0FFCEEDF7FFCCECF7FFCCECF7FFCCECF7FFCCECF7FFCCECF7FFCCEC
      F7FFCCECF7FFCCECF7FFCCECF7FFCCECF7FFCCECF7FFCCECF7FFCCECF7FF7AD5
      F2FF3DB7DFEE3132333313131414000000005DA5BCC823B8E8FF23B8E8FF23B8
      E8FF9A9D5CFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB398
      3EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFF9A9D
      5CFF33B5DEF50000000000000000000000000000000000000000000000003E31
      0040F9BF00FFF9BD00FFF8BA00FFF8B800FFF6B400FFF2B000FFF2AD00FFF1AB
      00FFF1A800FFF0A600FFF4A500FFF5A400FFF4A100FFF49F00FFF39C00FFEF99
      05FB2114012200000000000000000000000000000000D57B05D5FF9506FFFF95
      06FFFF9506FFFF9506FFFF9506FFFF9506FFFE9406FFFA9307FFFA9207FFFA92
      07FFFA9207FFFA9307FFFE9406FFFF9506FFFF9506FFFF9506FFFF9506FFFF95
      06FFFF9506FFFF9506FFD47C05D4000000005DA5BCC823B8E8FF23B8E8FF23B8
      E8FF4AC3EAFFB9E3F1FFBEE5F2FFBEE5F2FFBEE5F2FFBEE5F2FFBEE5F2FFBEE5
      F2FFBEE5F2FFBEE5F2FFBEE5F2FFBEE5F2FFBEE5F2FFBEE5F2FFB9E3F1FF49C3
      EAFF30B6E0F70000000000000000000000005DA6BDC923B8E8FF23B8E8FF23B8
      E8FF9A9D5CFFB3983EFFB3983EFFF1EFE9FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFE8E3D2FFB3983EFFB3983EFF9A9D
      5CFF679AAAB30000000000000000000000000000000000000000000000003F31
      0040F9C200FFF9BF00FFF9BD00FFF8BA00FFF8B800FFF6B400FFF2B000FFF2AD
      00FFF1AB00FFF1A800FFF0A600FFBAA466C0BA9D5DC0BA9454C0B78D4BC06C4D
      1F7000000000000000000000000000000000000000007E4A027EFF9506FFEC8A
      05ECAA6305AAAA6305AAAA6305AABD6E03BDFF9506FFE98806EAA66106ABA762
      06ACA76206ACA96306AEF99107FEFA9206FBAA6305AAAA6305AAAA6305AAAA63
      05AAEC8A05ECFF9506FF7E4A027E000000005DA6BDC923B8E8FF23B8E8FF23B8
      E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8
      E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8
      E8FF63A2B5C00000000000000000000000005DA6BDC923B8E8FF23B8E8FF23B8
      E8FF9A9D5CFFB3983EFFB3983EFFCAB982FFCDBD89FFCDBD89FFCDBD89FFCDBD
      89FFCDBD89FFCDBD89FFCDBD89FFCDBD89FFC8B576FFB3983EFFB3983EFF9E9D
      5EF51D1D1D1E0000000000000000000000000000000000000000000000003F32
      0040FAC400FFF9C200FFF9BF00FFF9BD00FFF8BA00FFF8B800FFF6B400FFF2B0
      00FFF2AD00FFF1AB00FFF1A800FFF7E0AEFFF9D49EFFF8C78EFF836442880000
      0000000000000000000000000000000000000000000010090010ED8907EDFD94
      06FD42270242000000000000000008050008EF8C06EFF69006F6120B00130000
      0005010101064B2D0251FA9207FFAF6706B40000000000000000000000003F25
      013FFD9406FDEE8A07EE120B0012000000005DA6BDC923B8E8FF23B8E8FF23B8
      E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8
      E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF23B8E8FF4CAF
      CEDF292A2A2B0000000000000000000000005EA5BCC723B8E8FF23B8E8FF23B8
      E8FF9A9D5CFFB3983EFFB3983EFFC7B475FFCBBA82FFCBBA82FFCBBA82FFCBBA
      82FFCBBA82FFCBBA82FFCBBA82FFCBBA82FFC5B26EFFB3983EFFB3983EFFA798
      67D2000000000000000000000000000000000000000000000000000000003F32
      0040FAC700FFFAC400FFF9C200FFF9BF00FFF9BD00FFF8BA00FFF8B800FFF6B4
      00FFF2B000FFF2AD00FFF1AB00FFF5D19CFFF3C48CFF82634288000000000000
      000000000000000000000000000000000000000000000000000061390361FF95
      06FFE48405E426160126000000000000000098590498FF9506FF764502760000
      000000000005B46A05BAFA9207FF51300357000000050000000027170127E684
      05E6FF9506FF5F38025F00000000000000005DA5BCC823B8E8FF23B8E8FF23B8
      E8FF23B8E8FF23B8E8FF649FB2BC212121222121212221212122212121222121
      21222121212221212122212121222121212221212122212121221E1E1E1F0101
      0202000000000000000000000000000000006A8B959C23B8E8FF23B8E8FF23B8
      E8FF9A9D5CFFB3983EFFB3983EFFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF3F2F0FFB3983EFFB3983EFFA798
      67D2000000000000000000000000000000000000000000000000000000003F33
      0040FAC900FFFAC700FFFAC400FFF9C200FFF9BF00FFF9BD00FFF8BA00FFF8B8
      00FFF6B400FFF2B000FFF2AD00FFF3C38CFF8062428A00000005000000000000
      0000000000000000000000000000000000000000000000000000000000009959
      0499FF9506FFE98704E93A21023A0000000028170028FA9106FAED8907ED160D
      011645290147FA9307FFD37C06D90603010B010101063C230340EA8606EBFF95
      06FF9859049800000000000000000000000069919FA623B8E8FF23B8E8FF23B8
      E8FF23B8E8FF23B8E8FF68828A8F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C1C1C1D58A9C3D123B8E8FF23B8
      E8FF9A9D5CFFB3983EFFB3983EFFC7B576FFCBBA82FFCBBA82FFCBBA82FFCBBA
      82FFCBBA82FFCBBA82FFCBBA82FFCBBA82FFC6B270FFB3983EFFB3983EFFA798
      67D2000000000000000000000000000000000000000000000000000000002F27
      0030FBCC00FFFAC900FFFAC700FFFAC400FFF9C200FFF9BF00FFF9BD00FFF8BA
      00FFF8B800FFF6B400FFE3A70DF1785B3E820101010601010106000000050000
      0000000000000000000000000000000000000000000000000000000000000201
      00029A5A049AFF9506FFFD9406FD9A5A049A2314002392540292FF9506FFA963
      05A9DD8005DDFE9406FF4C2E0251231502289C5B05A2F89107FDFA9307FF9758
      0499020100020000000000000000000000002828282946B1D4E623B8E8FF23B8
      E8FF23B8E8FF4FADCCDC1B1B1B1C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D0E1010
      1011A69967D2B3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB398
      3EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFB3983EFFA697
      67D0000000000000000000000000000000000000000000000000000000000000
      00007962007BB79600BBB79200BBB79200BBB78F00BBB78E00BBB78B00BBB78B
      00BBB58700BBB18300B75E470E64000000050101010601010106010101060000
      0005000000000000000000000000000000000000000000000000000000000000
      00000000000062390162ED8907EDFF9506FFFF9506FFDD8005DDFF9506FFFF95
      06FFFF9506FFF89106F8D17A05D2FA9307FFFA9207FFE78707ED5E3803640000
      00050000000000000000000000000000000000000000070707082D2E2E2F3132
      32332C2D2D2E0404050500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002929292A4241404442414044424140444241404442414044424140444241
      4044424140444241404442414044424140444241404442414044424140442929
      292A000000000000000000000000000000000000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000501010106010101060101
      0106000000050000000000000000000000000000000500000000000000000000
      00000000000000000000120B00127F4A027FDF8105DFFF9506FFFF9506FFFF95
      06FFFF9506FFFF9506FFFF9506FFDD8105DE7B490480120C0117010101060101
      0106000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010600000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005010101060101
      0106010101060000000500000000000000000101010600000005000000000000
      0000000000000000000000000000000000000000000022140122512F0151663C
      0366663C0366512F015122140122000000000000000000000005010101060101
      010601010106000000050000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF80000FFFFC1FFF801F80000F00
      0007FFFE0FFC000F000007000003700007780007000003000003200003200003
      0000030000030000010100810000030000010000000318C00000010000010000
      000618E0000001000001800000800000000001000000C0000480000000000100
      0000E00006000000000000000000E00007103C78000000000000E00007183C78
      000000000000E000071C1C78000000000000E000071E0C78000000000001E000
      07000000000001000007E00007800001000007000007E0000F80000100000700
      0007E0001F8600E100000700000FE0003FC3104300000F00000FE0003FE10007
      01FFFF00000FE0001FE0000701FFFFC0000FF0000FF8000F83FFFFF0000F7FFF
      077C0007FFFFFFFFFFFF3FFF833F818300000000000000000000000000000000
      000000000000}
  end
  object ilActions32: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 16
    Top = 320
    Bitmap = {
      494C010104000800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000206030C0A28
      165714472898195D35C81E6D3DE9207442F9207442F91E6D3DE9195D35C81446
      28970B2716560206030C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B0C4040
      5157545486985252A8C84949BFE94343C9F94343C9F94949BFE95252A8C85353
      8497404050560B0B0B0C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000091ADF5FF9DACF3FFABACEEFFC3AA
      E3FFD6A6D5FFE5A1C4FFF398AEFFFA8EA0FFFB83A0FFF875A8FFF66DACFFF367
      B0FFF25FAEFFF4579FFFF85588FFF85574FFF85588FFF75475FFF4565EFFF25E
      50FFF3654EFFF56B50FFF77553FFFA835CFFF98E5CFFF3984EFFE4A038FFD5A5
      28FFC1A91AFFABAB0FFF9DAC0AFF90AC08FF217C9EFF8AA08DFFC2D2B0FFC1D0
      B1FFB6C4A7FFC3D3B0FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4B0FFC3D4B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFB4C2A5FF848F77FF8893
      7AFF939F85FFB7C5A7FFC1D2B0FF6D8C8AFF1D84A7FF1D84A7FF1D84A7FF1D84
      A7FF1D84A7FF1D84A7FF1F83A7FF225478FF0000000000000000000000000000
      000000000000000000000000000000000000030A0618124627961F7240F42077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1F7240F413472899030F09220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161718545485964444C6F43F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF4444C6F4545487991E1E21220000000000000000000000000000
      00000000000000000000000000000000000092B0F4FF9FAFF2FFACAEEDFFBDAD
      E5FFCFA9DAFFDDA4CEFFE99CC0FFF28CB6FFF67AB0FFF472B1FFF46CB2FFEE66
      B9FFEE5DB6FFF457A0FFF85683FFF95A70FFF95A8CFFF8557BFFF4575DFFEE5D
      48FFEE6544FFF36C4BFFF4744AFFF47B4AFFF18B46FFEA9B3EFFDDA330FFCFA9
      23FFBCAC18FFACAE10FF9FAE0CFF91AF09FF387181FFC2D1AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC1CFAFFF939E87FF717C68FF77816CFF95A08AFFB0BC
      A2FFA8B597FF818C74FF6B7461FF4E615AFF207391FF2183A6FF1E84A7FF1D84
      A7FF1E688BFF257699FF285077FF657ECBFF0000000000000000000000000000
      0000000000000000000000020107113C21811F7240F4207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207442F9103E248600020107000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060607505074814444C6F43F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4343C9F95151788606060607000000000000
      0000000000000000000000000000000000008CB0F5FF9EB1F1FFABB0EDFFB9AD
      E7FFC7AAE0FFD1A6D9FFDB95D5FFE87DC8FFF279B7FFF476B4FFF474B2FFED70
      C0FFEF6ABAFFF864A0FFFC637DFFFC696CFFFC6990FFFC6381FFF7635DFFEF68
      45FFEC6E3EFFF4724CFFF27648FFF17944FFE57B32FFDA9328FFD2A525FFC7A9
      1EFFB8AD15FFABAF10FF9EB10DFF8BAF09FF6E8E88FFC4D3AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFBBC8AAFF7E8971FF747C6AFFA2AF95FFC1D1AFFFC3D3B0FFC3D4B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFB5C4A4FF8C9780FF889480FF556A67FF235C6EFF2382
      A3FF25425EFF4D76A8FF6EA1E8FF709AF0FF0000000000000000000000000000
      00000000000002090515185A32C1207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF237946FF479064FF479064FF237946FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF195C34C6030A06180000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000131314155353A4C13F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF5151A7C6161617180000
      00000000000000000000000000000000000087B1F5FF96B3F1FFA8B0EEFFB4AD
      EBFFBEA9E6FFC59CE6FFD18FE0FFE78AC8FFF081BCFFF57CB2FFF67CAFFFED7E
      C1FFF07EBAFFFB799CFFFE7974FFFC8665FFFD8695FFFE7A89FFFB7861FFF17D
      44FFEC7C3CFFF67B4FFFF37B48FFF08142FFE68934FFCF8E1CFFC59B17FFBEA8
      17FFB3AC13FFA7B00FFF96B30CFF86AF08FF8E9F8CFFC4D4B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFBFCDAEFF838D
      75FF79846EFFB6C3A7FFC4D2B1FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC2D1B0FF95A386FFC3D3AFFFC2D2B0FFA1AA93FF1F40
      58FF66A3D5FF6BB2EEFF6CACF1FF6EA0F0FF0000000000000000000000000000
      000005150C2E1D6A3DE3207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF499165FFDEEBE3FFFFFFFFFFFFFFFFFFDDEAE2FF489065FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF1D693CE20514
      0B2D000000000000000000000000000000000000000000000000000000000000
      000027272C2E4B4BBAE33F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF4B4BBAE22626
      2B2D0000000000000000000000000000000086B3F4FF89B6F3FF9FB3F0FFABAD
      EEFFB6A5ECFFC19EE9FFD09ADEFFE491CBFFEE89BEFFF585B0FFF783ABFFED86
      C1FFF18BB8FFFC8A99FFFD886EFFFA9360FFFA939AFFFD888FFFFC8965FFF28A
      46FFED863DFFF78253FFF4844AFFEE873FFFE59133FFCF9A1EFFC09E14FFB5A5
      11FFAAAC0FFF9EB20EFF88B40BFF85B209FF98A690FFC4D4B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC4D4B0FFA9B59AFF6E7865FFB0BD
      A1FFC3D3B0FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFB6C4A4FF9FAC8EFFC3D4AFFFC3D4AFFFB8C5A8FF4E81
      A1FF6ABDEFFF6ABCEFFF6BB4F0FF6DA2EFFF000000000000000000000000030A
      06181D693CE2207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FFDCEAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE9E1FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF1D6B
      3CE5020C061B0000000000000000000000000000000000000000000000001616
      17184B4BBAE23F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF5151D2FF9494E3FF9A9A
      E4FF9A9AE4FF9A9AE4FF9A9AE4FF9A9AE4FF9A9AE4FF9A9AE4FF9A9AE4FF9A9A
      E4FF9A9AE4FF9494E3FF5050D2FF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF4B4B
      BCE518181A1B00000000000000000000000090B1E8FF84B7F2FF91B6F1FFA3B0
      F0FFB0AAEDFFBEA3E8FFD09EDEFFE295CDFFED8DBFFFF587B1FFF683AEFFEC80
      C3FFF07EBAFFFB829CFFFD866FFFF99560FFFA949BFFFD8490FFFC8263FFF17D
      45FFEC7E3BFFF78351FFF4874BFFED8C3EFFE29431FFCF9E1FFFBDA415FFAFAA
      10FFA2AF0DFF90B50CFF83B60BFF94AE19FF91A18CFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFBECEACFF6C7761FFC1D0B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFB8C9
      A5FF9EAD8DFF93A081FF919E80FFC2D2AFFFC3D4AFFFC3D4B0FF99A48FFF5EA8
      CBFF69C6F0FF68C3EFFF6AB7EFFF6DA8EFFF000000000000000001040208195D
      34C7207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF368555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3585
      55FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF195C34C60002010700000000000000000000000000000000070707085252
      A8C73F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFD7D7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD5D5F4FF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF5151A7C6060606070000000000000000D095AAFF82B8F3FF86B8F1FF9BB3
      F1FFAAAEEEFFBBA7E9FFCE9FDEFFDF94D1FFEC8BC2FFF484B4FFF27DB7FFE774
      C9FFEC6BBFFFF765A2FFFD6C74FFEF8754FFF186A8FFFD6B8AFFF8675CFFEC69
      3FFFE77434FFF27D47FFF38649FFEC8B3DFFDF932DFFCE9F1FFFBAA714FFA9AE
      0FFF9BB30DFF85B70CFF80B80BFFD6915AFF6E8D86FFC3D4AEFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFF9FAD91FF99A68CFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC1D1
      AFFFB8C7A8FFC0CEAEFFC3D3AFFFC3D4AFFFC3D4B0FF8B9B8AFF568FA1FF6BCC
      EFFF66CBEEFF67C5F0FF69B7EFFF6AABF0FF00000000000000001140248A2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF103F23870000000000000000000000000000000052527B8A3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF515179870000000000000000FC8081FF8BB5EAFF80B8F2FF94B8
      F0FFA7B3EEFFB7AAEAFFC89DE4FFDA8ED8FFEA85C5FFF180B9FFEC77C2FFE371
      CFFFE96AC4FFF664A6FFFC6574FFF56559FFF665A1FFFC648BFFF6645AFFEA69
      3BFFE2712EFFEB783BFFF18144FFEB863AFFDA8E26FFC79D19FFB5A913FFA5B2
      10FF94B70EFF80B80CFF8FB218FFFE8080FF3F7584FFC3D1B1FFC3D4AFFFC4D3
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFA2AF94FF9AA68DFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D3B0FFA1B0
      90FF98A588FFA9B799FFC2D3AFFFC3D4AFFFC4D3B0FF5F8D8FFF69D8F1FF66D7
      F2FF64D0F0FF64C7EFFF67BBF0FF68B1F0FF0000000004100925207542FA2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207442F9030F09220000000000000000202023254242CAFA3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF7878DCFFD5D5F4FFFFFFFFFFA7A7E8FFA8A8E8FFFFFFFFFFD4D4F4FF7979
      DCFFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF4343C9F91E1E212200000000FF8080FFB79FBFFF7BB3F4FF8DB5
      F2FF9FABF2FFAC9CF3FFBD8FEEFFD282E0FFE879C8FFED75C0FFE870C7FFE272
      D0FFE96FC5FFF76CA5FFFD6C75FFF76E55FFF86EA6FFFD6C8AFFF86C5AFFEA6E
      3AFFE0712CFFE67134FFED763DFFE97A36FFD2841EFFBD8F10FFAC9C0BFF9FAB
      0BFF8DB40CFF7CB209FFBE9B45FFFF8080FF227A9BFF95A994FFC4D3B0FF9FAC
      8DFFB1BEA1FFC3D4AFFFC3D4AFFFC3D4AFFFB6C5A7FF869179FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFB3C2A6FF8D97
      91FF8C9595FF8D9790FFB0BEA2FFC3D3B0FFC3D3B0FF5A8F90FF67E1F2FF65DF
      F3FF60D8F1FF5CD0F0FF64C6F0FF66C1F0FF0000000014482A9C207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF1347289A00000000000000005454889C3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF5454879A00000000FF8080FFCD8DABFF779DFAFF839C
      FBFF928DFDFFA082FAFFB67AF3FFCC76E4FFE26DCEFFE560C6FFE860C1FFE46D
      CCFFEA70C3FFF970A3FFFD7074FFF86F55FFF86FA5FFFD708AFFF9705CFFEB70
      3CFFE36E30FFE7613AFFE46036FFE16D2FFFCC7719FFB77B0CFFA28204FF928D
      01FF839C03FF779D04FFD48B5AFFFF8080FF1D6584FF396C76FFADBCA2FFC0CD
      AFFF646E5CFFC3D2AFFFC3D4AFFFC3D4AFFFC1D0B0FF7A846EFFC4D4B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFBFCFAEFF818A97FFA7B2
      D5FFA3B2D7FFA5B2D6FF858D93FFC3D2B1FFC3D2B1FF5B9291FF67E6F1FF65E1
      F2FF53E2F2FF46E4F2FF59D7F1FF61CEEFFF0206030C1F7240F4207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF1F7240F40206030C0B0B0B0C4444C6F43F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF4444C6F40B0B0B0CFF8080FFA871CBFF736EFDFF7A7B
      FFFF8870FEFF9C6AFAFFB76CF1FFC86CE7FFD05FDDFFDB52CCFFEB53B5FFE55D
      C4FFE95FBFFFF661A1FFFB6276FFF66259FFF662A2FFFB6288FFF6615DFFEA60
      3FFFE45E37FFEA5447FFDB5132FFCE5E20FFC66B16FFB76B0DFF9E6A04FF8871
      00FF7B7B00FF746F00FFAF7339FFFF8080FF4B9FBAFF408499FF437581FF5481
      83FF3D5E5EFF8F9B84FFC3D4AFFFC3D4AFFFC3D3B1FF77816DFFC4D4B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D2B0FFC0D0AEFF6E786DFF7A85A0FF7E88
      A7FF767E9DFF7C85A4FF6D768EFF9FAC93FFC3D2B0FF5C928EFF67E8F2FF64E3
      F0FF5AE4F0FF47E8F1FF5EDCF1FF61D6EFFF0B281758207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF0A271655414152583F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F4F55EC7C8EFF7868FAFF7469FDFF796B
      FEFF8A6CFDFFA36BF8FFBA66EEFFBC60ECFFC75AE2FFDE5BCDFFED58B5FFE556
      C1FFE856BDFFF354A1FFF75477FFF35658FFF356A2FFF75487FFF3545DFFE857
      41FFE4583AFFEC5948FFDE5B31FFC75A1BFFB96011FFB9650FFFA46A06FF8B6D
      01FF796D00FF756A01FF7B6907FFF17D74FF5FD6F1FF5FD8F0FF5ED9F1FF60DD
      F1FF64DEF0FF486765FFC1D0AEFFC4D4AFFFC4D4AFFF77806DFFC4D4B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFA7B595FFC2D2B0FFA2AE9AFF8C94AAFFA1AC
      CEFF8994B3FF909BBBFF949FB9FFA4B199FFC3D2B1FF5B8E89FF67E8F1FF64E5
      F0FF63E3EFFF5EE3F0FF64E0F2FF66DFF3FF1347289A207743FF207743FF2077
      43FF207743FF207743FF368555FF3E8A5CFF3E8A5CFF3E8A5CFF3E8A5CFF3E8A
      5CFF579971FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5799
      71FF3E8A5CFF3E8A5CFF3E8A5CFF3E8A5CFF3E8A5CFF368555FF207743FF2077
      43FF207743FF207743FF207743FF144728985454879A3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF545486989E6FD9FF7869FDFF7668FDFF7D67
      FDFF9164FBFFAB67F5FFB667F0FFB560EFFFCD61DFFFDE5CCEFFE34FBFFFE956
      BBFFED5EB9FFF762A2FFFB6277FFF7625BFFF7629FFFFB6287FFF7625CFFED60
      44FFE85840FFE3513EFFDE5E2FFFCE621DFFB5620EFFB4680CFFAC6809FF9266
      03FF7E6901FF776901FF796A01FFA5712AFF64DCF2FF63DFF2FF61DEF1FF63DE
      F2FF63E0F2FF52A8B4FF8A977EFFC2D4AFFFC3D4AFFF79836EFFC3D3AFFFC3D4
      AFFFC3D3AFFFA8B698FFC2D3AEFF97A487FFC3D3AFFFC4D3B0FFA6B39BFF8289
      9AFF848E99FF7D8991FF879190FFC0CEB0FFADBC9CFF5F8D87FF67E8F1FF66E7
      F1FF63E4EFFF63E4F0FF65E6F1FF65E6F1FF1A5E35CA207743FF207743FF2077
      43FF499165FFDCEAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE9E1FF4890
      65FF207743FF207743FF207743FF195D34C75151AACA3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF5252A8C77E6BFEFF7C6AFDFF7766FCFF856A
      FDFF9D6DFAFFB169F3FFB162F2FFC164EAFFD163DEFFD75BD5FFE255C4FFEE55
      B0FFF25CACFFF8649EFFFC6976FFF96D5DFFFA6D9EFFFC6989FFF86460FFF15D
      50FFED574BFFE25539FFD65B28FFD0651FFFC16514FFB1630CFFB0690AFF9E6E
      04FF856B00FF786701FF7D6B00FF7E6C00FF64DEF2FF65E1F3FF66E0F3FF65E0
      F2FF63E3F0FF66E4EEFF53716AFFC3D3B0FFC3D3AFFF7B8571FFC3D3B0FFC3D4
      AFFFC2D3AEFF869379FFC2D3AFFF96A286FFC3D2AFFFC3D4AFFFC2D3AFFFBECC
      AEFFBCCAADFFBBC7ABFFC2D0B2FFB5C1A7FFA8B596FF628B85FF65E9F0FF66E8
      F1FF64E7F1FF64E7F0FF65E7F1FF64E4F0FF1E6E3EEB207743FF207743FF2379
      46FFDEEBE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDEA
      E2FF237946FF207743FF207743FF1E6D3DE94848C0EB3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4949BFE9826DFEFF7A68FDFF8069FDFF8F6A
      FCFFA167F8FFAD60F2FFAF4CE7FFB23CDBFFC43BCDFFD849C2FFE961BEFFF168
      B4FFF65BA0FFFA6093FFFC6974FFF96E5DFFFA6E9EFFFC698AFFFA606BFFF55A
      5EFFF16749FFE9613EFFD74A38FFC13B2EFFB13C22FFAE4C16FFAC600BFFA167
      05FF8F6B01FF806A00FF7A6901FF816D00FF64DFF2FF65E2F1FF64E3F1FF63E5
      F0FF62E8F1FF62E8F0FF499397FFB1BEA2FFC2D3AEFF7B8672FFC2D1B2FFC2D4
      B0FFC3D2AFFF859079FFC2D3B0FFB1BF9EFFA9B698FFC0D0AEFFC2D2B0FFAAB7
      9CFF8D9B7EFF9BA98EFF8E9A80FF97A18AFFBECBABFF678F86FF66EBF1FF65E9
      F1FF65E8F1FF63E7F0FF64E7F0FF66E2F0FF207442F9207743FF207743FF4790
      64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF458F63FF207743FF207743FF1F7441F84343C9F93F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4242C8F8806CFEFF7E6AFDFF8C6DFDFF9462
      FAFF904CF2FF8534E6FF8425DAFF921ACBFFA311B7FFB00EA3FFBD1297FFD931
      99FFF45DA1FFFA5D8CFFFB6372FFFA6A62FFFB6A99FFFB638BFFFA5D72FFF560
      5CFFDD3762FFC11564FFB00F57FFA21342FF901C2FFF832622FF853617FF914D
      0BFF946304FF8C6E01FF7E6B00FF7E6C00FF62E3F0FF61E6EFFF61E8F1FF60E8
      F0FF60E8F0FF62E9F1FF5ECBD4FF87917CFFC2D2AEFF7D8873FFB8C3A8FF919C
      84FF818975FF88937BFFC2D3AFFFC3D3B0FF8B967DFF909C81FF7A876EFF8F9D
      83FFC3D3B1FFC2D3AFFFABB99EFF66715EFFC2D3AEFF788A7BFF64D5D9FF68ED
      F3FF67E9F2FF66E8F1FF66E7F1FF66E3F0FF207442F9207743FF207743FF4890
      65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF479064FF207743FF207743FF1F7441F84343C9F93F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4242C8F87D6AFDFF876BFDFF875EFBFF7E4C
      F5FF763FEEFF8138E9FF9732E2FFAD2CD4FFBD24C0FFC21CACFFC21596FFC413
      81FFD42371FFF65A8AFFFC6376FFFB6866FFFB6896FFFB6388FFF85E72FFD828
      8BFFC6147DFFC31568FFC31E50FFBC273AFFAD3026FF9A3719FF833B13FF743E
      11FF7D4C09FF8A6203FF896C00FF7D6A00FF62E4F1FF61E8F0FF60E8F0FF60E8
      F0FF5EE8F0FF63E7EFFF5BBDC4FF4D574BFFBAC7A9FF636B5BFF89937CFFB5C2
      A4FFC2D1B2FFC3D3B0FFC3D4AFFFC3D4AFFFA1AF93FF8F9A83FFAEBC9EFFC2D2
      B1FFC3D4AFFFC2D3AEFF97A589FF8E9B82FFC2D3AFFFC0D0AEFF687E73FF5EC4
      C4FF68ECF1FF66E9F1FF67E8F1FF67E8F1FF1E6E3EEB207743FF207743FF2379
      46FFDFEBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEB
      E3FF237946FF207743FF207743FF1E6D3DE94848C0EB3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4949BFE9836AFEFF8163FCFF7857F9FF7251
      F6FF804FF6FF9B4EF2FFB44CE7FFCE48D2FFDF43BAFFE640A7FFE73997FFE22F
      81FFDB2A64FFDF3659FFFC687AFFFC6D68FFFC6D93FFFC6984FFE038A3FFDA2A
      9BFFE33080FFE73A67FFE64056FFDF4343FFCC472AFFB54D16FF9E510CFF8551
      08FF715008FF775705FF856601FF836B00FF62E6F0FF63E8F0FF62E8F0FF62E9
      F1FF54B2B8FF567A74FF909E87FFBCC8ADFF6C7663FFB9C8A7FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC2D3B0FF909B82FFBBCCA9FFC3D4
      AFFFC3D4AFFFC3D4AFFF88957CFFA5B397FFC2D3AFFFC3D4AFFFC4D2B1FF788A
      77FF5AB6B8FF67E9F1FF66E8F1FF65E8F1FF1A5E35CA207743FF207743FF2077
      43FF4A9166FFDDEAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDEAE2FF4991
      65FF207743FF207743FF207743FF195D34C75151AACA3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF4C4CD1FFB9B9EDFFFFFFFFFF8484DFFF8484DFFFFFFFFFFFB9B9EDFF4C4C
      D1FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF5252A8C7806AFDFF7761FCFF725FFBFF7961
      FBFF9463FAFFAC66F4FFC568E7FFDC66D3FFEF64B6FFF9669CFFFB648AFFFA5C
      79FFF24F61FFE34648FFED5656FFFD6F6EFFFE6F8EFFEF58A6FFE447B7FFF14F
      9DFFF95B85FFFB6373FFF8645FFFEF6447FFDB652AFFC46816FFAC6809FF9665
      03FF7D6202FF715E04FF756102FF836C00FF63E5F0FF62E7F1FF63DEE5FF4879
      7BFF909E87FFC3D3B1FFC3D4AFFF8E9B84FFAAB79CFFC3D4B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D2AEFFBECFAAFFC3D4
      AFFFC3D4B0FFC3D4AFFF93A086FFC1D1AEFFC3D4AFFFC3D4AFFFC3D4B0FFC3D3
      B0FF687C6FFF69E3EAFF65E9F2FF64E8F1FF1348289B207743FF207743FF2077
      43FF207743FF207743FF368555FF3E8A5CFF3E8A5CFF3E8A5CFF3E8A5CFF3E8A
      5CFF579971FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5799
      71FF3E8A5CFF3E8A5CFF3E8A5CFF3E8A5CFF3E8A5CFF368555FF207743FF2077
      43FF207743FF207743FF207743FF134728995454889B3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFF9191E2FFDDDDF6FFFFFFFFFFB7B7ECFFB7B7ECFFFFFFFFFFDDDDF6FF9292
      E2FFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF54548799776BFDFF7469FDFF746AFDFF8871
      FEFF9E77FBFFB27CF5FFC77DE9FFDB74D6FFED63AFFFFC7D97FFFF8284FFFE7D
      6EFFF9785AFFEE6E43FFE8693AFFFC7569FFFD7692FFEA69C2FFEE6FBBFFF978
      A4FFFE7D90FFFF8279FFFC7C66FFED634EFFDA7428FFC57D14FFAF7D08FF9D78
      02FF897300FF756E00FF706901FF786D00FF62E3F1FF62DBE4FF4A6965FFB6C3
      A7FFC3D4AFFFC3D4AFFFC3D4AFFF7A856DFFC3D0B1FFC3D4B0FFC3D4AFFFC3D4
      AFFFC4D4AFFFC3D4B0FFC3D4AFFFC1D1ADFFC1D1AFFFC3D4B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFA7B598FFAFBE9FFFC2D2B1FFC3D3B0FFC3D4AFFFC3D4
      AFFFA6B298FF54B2B6FF64E9F2FF64E8F1FF0B291759207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF0A281657414152593F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFFF8F8FDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F8FDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF404051577371FEFF7472FEFF7B78FFFF9082
      FEFFA08BFAFFB093F4FFC495E8FFBB8AE8FFEB878EFFF8977CFFFC997CFFFA99
      68FFF69856FFEF9344FFEA8B39FFF9865BFFF986A0FFEA89C4FFEF93B9FFF698
      A7FFFA9995FFFC9981FFF89680FFEB8870FFBB8A15FFC19514FFAF930AFF9F8B
      04FF8F8400FF7C7C00FF737500FF717100FF65E1EFFF4B7675FFB8C6A7FFC4D4
      B0FFC3D4AFFFC3D4AFFFC3D4AFFF909A80FFB0BC9EFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4B0FFB5C4A3FF98A588FF97A387FFC2D0B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFBCCAACFF76816BFF97A288FFB6C4A5FFC3D4AFFFC3D4
      AFFFACB79DFF50ACB1FF65E9F1FF64E8F1FF0107030E1F7241F5207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF1F7240F40105020D0D0D0D0E4444C7F53F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF7272DAFFCCCCF2FFFEFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFFFFCCCCF2FF7171DAFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF4444C6F40C0C0C0D7379FEFF787CFFFF8386FFFF9492
      FCFFA29DF6FFB1A8EDFFC0AFE3FFC2BDD3FFCCD994FFF3B18CFFF5B07AFFF3B1
      69FFEEB158FFEAAE4AFFE9A441FFF59A58FFF69AA4FFEAA3BCFFEAADB3FFEFB1
      A4FFF2B294FFF5B083FFF3B171FFCBD969FFC2BC2AFFBEAF1AFFAFA810FFA19E
      07FF949402FF838900FF778000FF727800FF53A8B2FF8E9884FFC3D4B0FFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFBFCEADFF818E72FFC3D3B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC2D3AFFFABBAA0FF92A796FF91A797FF8E9F8DFF8C987EFFC4D3
      AFFFC3D4AFFFC3D4AFFFB2C0A4FF748A84FF90A9A5FF8FA291FFBDCDABFFC1D3
      B0FF6B8374FF67E2E6FF64E9F1FF63E7F1FF000000001349299D207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF1246279600000000000000005454899D3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFFA3A3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3E7FF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF54548596000000007480FFFF7D85FFFF8A8FFEFF9A9E
      F8FFA5ACF1FFB2B8E6FFBFC0D9FFCACAC6FFD8CFADFFE5C995FFEBC47EFFEAC3
      6DFFE9C05EFFE7BB53FFE9B24DFFF3A85CFFF3A8A1FFEAB2B0FFE8BBAAFFE9C0
      9EFFEAC48FFFEAC580FFE5CA6AFFD8CF50FFC8CB36FFBEC024FFB0B817FFA3AD
      0DFF99A006FF8B9201FF7C8700FF757E00FF4B6B68FFC3D0B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC1D2AEFFC3D4AFFFC2D3AEFFA4B4
      94FFBAC9A7FF9BAC97FF97BEC0FFB5E4ECFF9CC7DEFFA5D1DEFF7B9992FFBBC7
      ABFFC3D4AFFFBDCCAAFF7A9085FFB1DCE6FF799EC9FF8BACCCFF819A8FFF929C
      87FF53A2A3FF68EBF2FF64E8F1FF64E8F1FF0000000005110926207542FB2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1F7140F3030A06180000000000000000212124264141C9FB3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4444CEFF6565D7FF6565D7FF6565D7FF9393
      E3FFFFFFFFFFD2D2F3FF6565D7FF6565D7FF6565D7FF6565D7FFD2D2F3FFFFFF
      FFFF9393E3FF6565D7FF6565D7FF6565D7FF4444CEFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF4545C5F31616171800000000767BFFFF8181FFFF938DFDFFA3A0
      F6FFACB0ECFFB5BFE0FFBFC8D3FFCACEC3FFD4D1B0FFDDD29AFFE2D085FFE4CD
      73FFE5C966FFE6C45EFFEABB59FFF2AF62FFF2B09BFFEABBA4FFE7C49FFFE5C9
      97FFE4CE88FFE1D177FFDCD366FFD4D24DFFC9CE3AFFBDC82AFFB3BF1DFFA9B2
      11FFA1A409FF949202FF838100FF797900FF788071FFC5D3B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC2D2AFFFA2AF
      94FFA8B599FF75877CFFA0CBCCFF7EA1C1FF17257BFF2D4388FFA5CCD2FF8290
      7BFFC3D2B0FF7A866DFF80978DFF7392A2FF142064FF1E2C63FF647671FF8288
      77FF5CBDBDFF66EBF2FF63E7F0FF63E7F0FF00000000000000001241248C2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF3D895BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D89
      5BFF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF113C21810000000000000000000000000000000053537D8C3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF5E5E
      D5FFFFFFFFFFF4F4FCFFA9A9E8FFA6A6E8FFA6A6E8FFA9A9E8FFF5F5FCFFFFFF
      FFFF5E5ED5FF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF5050748100000000000000007A6AFDFF8472FEFF9E85FBFFAF9C
      F2FFB7AEE8FFBDBFDBFFC2CACFFFC8D2BFFFD0D7ADFFD6D89CFFDBD78BFFDFD4
      7CFFE3CE70FFE6C867FFEABF63FFF1B569FFF2B593FFEBC099FFE6C895FFE3CE
      8DFFDFD480FFDBD76FFFD6D861FFCFD74FFFC7D33DFFBFCB2EFFBAC021FFB4B0
      15FFB09E0DFFA18704FF8A7400FF7D6A01FFA5AF96FFC5D3B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFACBC9AFFB3C2
      A3FFC3D3B0FF859176FF8A9978FF76886CFF697666FF6D7C68FF849574FF8795
      77FFC2D2AFFF79856EFF889672FF9BAD82FF95A67EFF95A581FF6E795DFFB8C3
      A8FF4B8381FF68EAF1FF65E8F1FF64E8F1FF0000000000000000010402081A61
      36D0207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF368555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3585
      55FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF1A5F36CC0003020900000000000000000000000000000000070707085050
      AED03F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFFC0C0EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBE
      EEFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF5151ACCC0808080900000000000000008758F9FF8D68FCFFA281FAFFB997
      EFFFC2ABE3FFC9BCD4FFCAC9C7FFCED2B9FFD1D7ACFFD5D99EFFD9D990FFDED5
      84FFE2D076FFE7C96FFFECC06DFFF1B870FFF1B88CFFECC090FFE7C88EFFE2D0
      86FFDED578FFD9D96BFFD5D85EFFD1D650FFCCD142FFC8C833FFC5BB25FFC1A9
      19FFBA9610FFA68005FF936902FF895805FFBECCAEFFC3D4B0FFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC4D4AFFFC3D4AFFFA6B695FFBBCBA8FFC3D4
      AFFFC3D3B0FF98A589FF808C70FF7D8E6AFF93A47AFF92A279FF7E8D6AFFBDCE
      AAFFC2D3AEFFA2B090FFA9B896FF7E8E6DFF7A8A6AFF96A586FFB1C0A0FFC3D3
      B0FF99A38EFF52ABAEFF65E8F0FF64E7F0FF0000000000000000000000000410
      09251E6D3EEA207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FFDDEAE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEAE2FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF1D6A
      3DE3030A06180000000000000000000000000000000000000000000000002020
      23254949BFEA3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF4040CDFF7C7CDDFF9A9AE4FF9A9AE4FF9A9AE4FF9A9AE4FF7B7BDDFF4040
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF4B4B
      BAE316161718000000000000000000000000984BF1FF9A62F9FFA77AF8FFB993
      F0FFC6A5E2FFCFB7D2FFD4C3C3FFD7CBB6FFD8D0ABFFDBD29FFFDED394FFE1D1
      8AFFE5CC7EFFEBC478FFEFBD75FFF2B875FFF2B887FFEFBD87FFEBC485FFE6CC
      80FFE1D073FFDED369FFDBD25DFFD7D050FFD5CA44FFD1C035FFCDB226FFC7A2
      1BFFBC8F0FFFAC7807FF9E6106FF994B0DFFC0D1AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D3B0FF919F83FFC3D3AFFFC3D4
      AFFFC3D4B0FFC3D3B1FFC3D3B1FFC0D0AEFF9FAE8FFF748267FFBCCAABFFC1D2
      AEFFA6B398FFC4D2B0FFB9C9A6FFA6B597FFC0CEB1FFC3D4B0FFC3D4AFFFC3D4
      AFFFC3D2B0FF56807CFF67E6F1FF66E8F1FF0000000000000000000000000000
      000005160D311E6D3EEA207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF4A9166FFDFEBE4FFFFFFFFFFFFFFFFFFDEEBE3FF499165FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF1D6A3DE30515
      0C2E000000000000000000000000000000000000000000000000000000000000
      000029292F314949BFEA3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF4B4BBAE32727
      2C2E00000000000000000000000000000000B43CDFFFB755EAFFB675F2FFBD8B
      EEFFC79DE4FFD0B1D5FFD7BEC4FFDBC6B7FFDDC9ADFFE1CBA1FFE4CB97FFE6C9
      91FFE9C688FFEDC082FFF0BB7BFFF2B778FFF2B783FFF0BC82FFEDC07BFFEAC5
      75FFE6C96CFFE4CA65FFE0CA5BFFDDC84FFFDAC444FFD6BA35FFD1AC27FFCA9A
      1BFFC08711FFBA720EFFB95515FFB43C1FFFC1D1AEFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC2D3B0FF8F9C82FFC3D3AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC0D0ADFFB9C9A6FFC2D3
      AEFF98A38AFFAEBA9CFFABBA9AFFC3D3B0FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D3AFFF5E817DFF66E5F1FF66E5F1FF0000000000000000000000000000
      000000000000041009251B6238D3207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF237946FF479064FF479064FF237946FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF195D34C7030B06190000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000202023254F4FB0D33F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF5252A8C7171718190000
      000000000000000000000000000000000000D638B8FFD35CD8FFCE73E3FFCB85
      E5FFCF98E0FFD5AAD4FFDBB7C5FFDEBFB8FFE1C3AEFFE3C6A3FFE7C69BFFE9C4
      95FFEBC28FFFEDC088FFEFBD81FFF1BA7BFFF1BA80FFF0BC7CFFEDC075FFEBC2
      6EFFE9C467FFE7C561FFE4C559FFE1C24EFFDEBD43FFDBB335FFD7A429FFD294
      1FFFCE821AFFCF711BFFD35C25FFD63944FFC1D1AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D3B0FF99A78BFFABBA9BFFC3D4
      AFFFC3D4AFFFC3D4AFFFC4D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFF9AA38DFFA4AD92FFBAC8A9FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4
      AFFFB2BEA2FF4F9599FF67E5F1FF66E3F0FF0000000000000000000000000000
      00000000000000000000000302091241248C207542FB207743FF207743FF2077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF207743FF207743FF207542FA1140248A01040208000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000808080953537D8C4141C9FB3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF4242CAFA52527B8A07070708000000000000
      000000000000000000000000000000000000F2529FFFEF65B8FFE478CCFFD98B
      D9FFD899D7FFDCA6CEFFDFB0C4FFE2B8B9FFE4BDAFFFE7C0A5FFE9C19CFFEAC2
      96FFEBC192FFEEBE8CFFF1BA86FFF3B67DFFF3B67DFFF1B977FFEEBE70FFEBC1
      6AFFE9C266FFE9C160FFE7C057FFE4BD4DFFE2B843FFDFAD38FFDDA32FFFD997
      26FFD98A24FFE47931FFEE6744FFF2535CFFC1D1B0FFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC2D2B1FF8A977CFFC3D2
      B0FFC3D4AFFFC3D4AFFFC4D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC2D3
      AEFF96A189FFBAC5A8FFA0AE92FFC3D3AFFFC3D4AFFFC3D4AFFFC3D4AFFFC1D1
      AFFF557873FF68E3EDFF64E5F0FF66E5F0FF0000000000000000000000000000
      000000000000000000000000000000000000051109261349299D1F7241F52077
      43FF207743FF207743FF207743FF207743FF207743FF207743FF207743FF2077
      43FF207743FF1F7241F514482A9C041009250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000212124265454899D4444C7F53F3F
      CDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3FCDFF3F3F
      CDFF3F3FCDFF4444C7F55454889C202023250000000000000000000000000000
      000000000000000000000000000000000000F96CA2FFF677AEFFF383B5FFEB8F
      C1FFE29EC9FFE0AAC8FFE0B3C2FFE2BAB8FFE5BEAEFFE7C0A5FFE9C19DFFEBBF
      98FFEDBD94FFEFBB8FFFF1BA88FFF1BA80FFF1BA7BFFF1B973FFEFBB6CFFEDBD
      67FFEBBF63FFE9C05EFFE6C056FFE4BE4EFFE1BA45FFDFB13AFFDFA834FFE29C
      33FFEB8E3BFFF28347FFF5784DFFF86C5AFFB2C0A2FFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4B0FFC3D4B0FFC2D3AFFF919C83FFC4D2
      B1FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFB6C6
      A3FFA0AE92FFBCCBABFF919F83FFC3D3B0FFC3D4AFFFC3D4AFFFC3D4AFFFC2D1
      AFFF4E8A8DFF68E3F0FF66E3F0FF66E3F0FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000107030E0B29
      17591348289B1A5E35CA1E6D3EEA207542FA207542FA1E6D3EEA1A5E35CA1347
      289A0B2817580105020D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D0E4141
      52595454889B5151AACA4949BFEA4242CAFA4242CAFA4949BFEA5151AACA5454
      879A414152580C0C0C0D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000F588B0FFF390B2FFF395B1FFF19A
      B4FFEBA4B9FFE5AEBCFFE2B7BAFFE2BBB7FFE4BDB0FFE7BEA8FFE9BFA3FFEBBD
      9EFFEDBC98FFEFBA93FFF1B98BFFF1BA7DFFF1BA7DFFF1B970FFEEBA68FFEDBC
      63FFEBBD5EFFE8BF59FFE6BF54FFE3BD4CFFE0BC44FFE0B741FFE4AE3FFFEBA3
      43FFF09A48FFF2964CFFF2914AFFF4894BFF919C84FFC3D4AFFFC3D4AFFFC3D4
      AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFC3D4AFFFBFCEACFF919B83FFC3D3
      B0FFC3D4AFFFC3D4AFFFC3D4AFFFC3D4B0FFC3D4AFFFC3D4AFFFC3D4AFFFBCCB
      A9FFC1D0B1FF9CA98DFFAFBEA0FFC3D3AFFFC3D4AFFFC3D4AFFFC3D4AFFFBECC
      ACFF498F94FF6BE0F2FF6ADFF2FF6ADFF1FF424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFC003FFFFC003FF0000000000000000
      FF0000FFFF0000FF0000000000000000FC00003FFC00003F0000000000000000
      F800001FF800001F0000000000000000F000000FF000000F0000000000000000
      E0000007E00000070000000000000000C0000003C00000030000000000000000
      C0000003C0000003000000000000000080000001800000010000000000000000
      8000000180000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000001800000010000000000000000
      80000001800000010000000000000000C0000003C00000030000000000000000
      C0000003C00000030000000000000000E0000007E00000070000000000000000
      F000000FF000000F0000000000000000F800001FF800001F0000000000000000
      FC00003FFC00003F0000000000000000FF0000FFFF0000FF0000000000000000
      FFC003FFFFC003FF000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ilIcons16: TImageList
    ColorDepth = cd32Bit
    Left = 152
    Top = 320
    Bitmap = {
      494C010101000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000061C2424146A8686146C8888146C
      8888146C8888146C8888146C8888146C8888146C8888146C8888146C8888146C
      88881467838307242D2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021A3CECF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF26C1F4F403151A1A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000026BDEFF527CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF11556B6B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000023B2DFEB27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF1B89AEAE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021A5D1E227CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF24BDEFEF010304040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB27C8FDFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF082B38380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB26C4F7FF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF14637D7D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB26BFF1FF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF1E98C0C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB25B9EAFF2AC7F9FF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CAFFFF27CA
      FFFF27CAFFFF27CAFFFF27CAFFFF1C91B8B80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB25B8E8FF41B3C8FF7EAA
      88FF83B8A3FF99D6DCFF99D6DCFF99D6DCFF99D6DCFF99D6DCFF99D6DCFF81B5
      9DFF7AAC8DFF38B5D4F80E4C6161030D10100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB25B8E8FF44B1C3FFB398
      40FFB89F4EFFC9B77CFFC9B77CFFC9B77CFFC9B77CFFC9B77CFFC9B77CFFB69C
      49FFB39840FF42A9B8F400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000209EC7DB25B8E8FF44B1C3FFB398
      40FFBEA75DFFDBD0ADFFDBD0ADFFDBD0ADFFDBD0ADFFDBD0ADFFDBD0ADFFBBA3
      55FFB39840FF335E5D8F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F99C1D525B8E8FF44B1C3FFB398
      40FFC2AE69FFE1DAC1FFE1DAC1FFE1DAC1FFE1DAC1FFE1DAC1FFE1DAC1FFBDA6
      5CFFB39840FF27210E3800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F4F646E25B6E5FC44B1C3FFB398
      40FFC2AE69FFE1DAC1FFE1DAC1FFE1DAC1FFE1DAC1FFE1DAC1FFE1DAC1FFBDA6
      5CFFB39840FF27210E3800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000060809202216379A83
      37DC9B8438DD9B8438DD9B8438DD9B8438DD9B8438DD9B8438DD9B8438DD9B84
      38DD9A8337DC1C180A2800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object pmTrackbar: TPopupMenu
    Left = 84
    Top = 406
    object Setvalue1: TMenuItem
      Action = actTrackbarSet
    end
  end
  object opnDlgBs: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Bodyslide presets (*.xml)'
        FileMask = '*.xml'
      end>
    Options = []
    Left = 152
    Top = 277
  end
  object pmGetClasses: TPopupMenu
    Left = 152
    Top = 363
    object Getclasses1: TMenuItem
      Caption = 'Get classes'
      OnClick = Getclasses1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Editknownclasses2: TMenuItem
      Action = actEditKnownClasses
    end
  end
  object bndsrcdb1: TBindSourceDB
    DataSet = dtmdl_Main.tblPlayerStages
    ScopeMappings = <>
    Left = 152
    Top = 234
  end
  object bndngslst1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 84
    Top = 234
    object lnkcntrltfld1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'minDays'
      Control = nmbrbx1
      Track = True
    end
    object lnkcntrltfld2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb2
      FieldName = 'femBs'
      Control = btndt_FemBs
      Track = False
    end
    object lnkcntrltfld3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb2
      FieldName = 'femBsUrl'
      Control = btndt_FemBsUrl
      Track = False
    end
    object lnkcntrltfld4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb2
      FieldName = 'manBs'
      Control = btndt_ManBs
      Track = False
    end
    object lnkcntrltfld5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb2
      FieldName = 'manBsUrl'
      Control = btndt_ManBsUrl
      Track = False
    end
  end
  object bndsrcdb2: TBindSourceDB
    DataSet = dtmdl_Main.tblFitStages
    ScopeMappings = <>
    Left = 16
    Top = 277
  end
end
