object fmGElement: TfmGElement
  Left = 0
  Top = 0
  Width = 924
  Height = 562
  Align = alClient
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBackground = False
  ParentColor = False
  ParentFont = False
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 304
  object Splitter1: TSplitter
    Left = 0
    Top = 305
    Width = 924
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = 15525853
    ParentColor = False
    ExplicitLeft = 25
    ExplicitTop = 368
    ExplicitWidth = 1076
  end
  object Panel3: TPanel
    Left = 0
    Top = 308
    Width = 924
    Height = 254
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 382
    object Splitter5: TSplitter
      Left = 718
      Top = 0
      Height = 254
      Align = alRight
      Color = 15525853
      MinSize = 50
      ParentColor = False
      ExplicitLeft = 848
      ExplicitHeight = 529
    end
    object vleVars: TValueListEditor
      AlignWithMargins = True
      Left = 724
      Top = 3
      Width = 197
      Height = 248
      Align = alRight
      BorderStyle = bsNone
      DisplayOptions = [doColumnTitles, doAutoColResize]
      KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
      Strings.Strings = (
        'size=ii'
        'posX=cx'
        'posY=cy'
        'opc=ii'
        'eR=r'
        'eB=b'
        'eG=g')
      TabOrder = 0
      TitleCaptions.Strings = (
        'Variable'
        'Expression'
        '')
      OnEditButtonClick = vleVarsEditButtonClick
      OnStringsChange = vleVarsStringsChange
      ExplicitLeft = 251
      ExplicitHeight = 376
      ColWidths = (
        97
        98)
    end
    object ToolBarMatrix: TToolBar
      Left = 0
      Top = 0
      Width = 25
      Height = 254
      Align = alLeft
      Caption = 'ToolBar2'
      EdgeOuter = esNone
      Images = ImageList1
      TabOrder = 1
      ExplicitHeight = 382
      object tbMatrixOpen: TToolButton
        Left = 0
        Top = 0
        Hint = '|Open Matrix template'
        Caption = 'ToolButton2'
        ImageIndex = 0
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tbMatrixOpenClick
      end
      object tbMatrixSave: TToolButton
        Left = 0
        Top = 22
        Hint = '|Save Matrix template'
        Caption = 'ToolButton1'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = tbMatrixSaveClick
      end
      object ToolButton11: TToolButton
        Left = 0
        Top = 22
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 2
        Wrap = True
        Style = tbsSeparator
      end
      object tbMatrixAnalize: TToolButton
        Left = 0
        Top = 52
        Hint = '|Analyze Matrix variables'
        Caption = 'ToolButton3'
        ImageIndex = 6
        ParentShowHint = False
        ShowHint = True
        OnClick = tbMatrixAnalizeClick
      end
    end
    object pcExpr: TPageControl
      AlignWithMargins = True
      Left = 28
      Top = 3
      Width = 687
      Height = 248
      ActivePage = tsMatrix
      Align = alClient
      TabHeight = 24
      TabOrder = 2
      TabWidth = 70
      ExplicitWidth = 214
      ExplicitHeight = 376
      object tsMatrix: TTabSheet
        Caption = 'Matrix'
        ExplicitWidth = 206
        ExplicitHeight = 342
        object gbMatrix: TGroupBox
          Left = 0
          Top = 0
          Width = 679
          Height = 214
          Align = alClient
          Caption = ' Matrix  '
          TabOrder = 0
          ExplicitWidth = 206
          ExplicitHeight = 342
          object mmMatrix: TMemo
            Left = 113
            Top = 18
            Width = 564
            Height = 194
            Align = alClient
            Lines.Strings = (
              '<g  fill="rgb(&eR&,&eG&,&eB&)" '
              'transform="translate(&posX&, &posY&) scale(&size&)"'
              'opacity="&opc&"> &elem1; </g>')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            WordWrap = False
            ExplicitWidth = 91
            ExplicitHeight = 322
          end
          object Panel11: TPanel
            Left = 2
            Top = 18
            Width = 111
            Height = 194
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Panel11'
            TabOrder = 1
            ExplicitHeight = 322
            object clInnerVars: TCheckListBox
              Left = 0
              Top = 0
              Width = 111
              Height = 162
              OnClickCheck = bbRegenerateClick
              Align = alClient
              Items.Strings = (
                'Fill'
                'Translate X'
                'Translate Y'
                'Scale X'
                'Scale Y'
                'Skew X'
                'Skew Y'
                'Rotate'
                'Opacity')
              TabOrder = 0
              ExplicitHeight = 290
            end
            object pnlGenerate: TPanel
              Left = 0
              Top = 162
              Width = 111
              Height = 32
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitTop = 290
              object chkAutoRefresh: TCheckBox
                Left = 8
                Top = 8
                Width = 97
                Height = 17
                Caption = 'AutoRefresh'
                Checked = True
                State = cbChecked
                TabOrder = 0
                OnClick = chkAutoRefreshClick
              end
            end
          end
        end
      end
      object tsVars: TTabSheet
        Caption = 'Variables'
        ImageIndex = 1
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 679
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            679
            33)
          object stVar: TStaticText
            AlignWithMargins = True
            Left = 3
            Top = 7
            Width = 40
            Height = 23
            Margins.Top = 7
            Align = alLeft
            Alignment = taCenter
            Caption = 'stVar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object eExpr: TEdit
            AlignWithMargins = True
            Left = 49
            Top = 3
            Width = 627
            Height = 27
            Align = alClient
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object bbOK: TBitBtn
            Left = 5906
            Top = 4
            Width = 65
            Height = 25
            Anchors = [akTop, akRight]
            Kind = bkOK
            NumGlyphs = 2
            TabOrder = 2
            OnClick = bbOKClick
          end
          object bbCancel: TBitBtn
            Left = 5978
            Top = 4
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Kind = bkCancel
            NumGlyphs = 2
            TabOrder = 3
            OnClick = bbCancelClick
          end
        end
        object PageControl2: TPageControl
          Left = 0
          Top = 33
          Width = 679
          Height = 181
          ActivePage = tsCellVars
          Align = alClient
          TabHeight = 24
          TabOrder = 1
          object tsCommonVars: TTabSheet
            Caption = 'Global Vars'
            object ToolBar7: TToolBar
              Left = 0
              Top = 0
              Width = 671
              Height = 72
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 176
              Caption = 'ToolBar7'
              ShowCaptions = True
              TabOrder = 0
              object ToolButton3: TToolButton
                Left = 0
                Top = 0
                Caption = 'TX - Total X (width)'
                ImageIndex = 1
                OnClick = ToolButton3Click
              end
              object ToolButton5: TToolButton
                Left = 176
                Top = 0
                Caption = 'TY - Total Y (height)'
                ImageIndex = 2
                OnClick = ToolButton3Click
              end
              object ToolButton12: TToolButton
                Left = 352
                Top = 0
                Caption = 'NX - Number of cols (by X)'
                ImageIndex = 7
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton13: TToolButton
                Left = 0
                Top = 24
                Caption = 'NY - Number of rows (by Y)'
                ImageIndex = 8
                OnClick = ToolButton3Click
              end
              object ToolButton14: TToolButton
                Left = 176
                Top = 24
                Caption = 'SC - SCale (1000)'
                ImageIndex = 9
                OnClick = ToolButton3Click
              end
              object ToolButton8: TToolButton
                Left = 352
                Top = 24
                Caption = 'RYX - Ratio cells height/width'
                ImageIndex = 4
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton2: TToolButton
                Left = 0
                Top = 48
                Caption = 'BR - Backgroung Red'
                ImageIndex = 0
                OnClick = ToolButton3Click
              end
              object ToolButton9: TToolButton
                Left = 176
                Top = 48
                Caption = 'BG - Backgroung Green'
                ImageIndex = 5
                OnClick = ToolButton3Click
              end
              object ToolButton10: TToolButton
                Left = 352
                Top = 48
                Caption = 'BB - Backgroung Blue'
                ImageIndex = 6
                OnClick = ToolButton3Click
              end
            end
          end
          object tsCellVars: TTabSheet
            Caption = 'Cell specific Vars'
            ImageIndex = 1
            object ToolBar8: TToolBar
              Left = 0
              Top = 0
              Width = 671
              Height = 120
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 188
              Caption = 'ToolBar8'
              Color = clBtnFace
              ParentColor = False
              ShowCaptions = True
              TabOrder = 0
              object ToolButton16: TToolButton
                Left = 0
                Top = 0
                Caption = 'CX - Cell coord. X'
                ImageIndex = 0
                OnClick = ToolButton3Click
              end
              object ToolButton17: TToolButton
                Left = 188
                Top = 0
                Caption = 'CY - Cell coord. Y'
                ImageIndex = 1
                OnClick = ToolButton3Click
              end
              object ToolButton18: TToolButton
                Left = 376
                Top = 0
                Caption = 'IX - cell Index by X'
                ImageIndex = 2
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton19: TToolButton
                Left = 0
                Top = 24
                Caption = 'IY - cell Index by Y'
                ImageIndex = 3
                OnClick = ToolButton3Click
              end
              object ToolButton20: TToolButton
                Left = 188
                Top = 24
                Caption = 'II - Intergrated Intensity'
                ImageIndex = 4
                OnClick = ToolButton3Click
              end
              object ToolButton21: TToolButton
                Left = 376
                Top = 24
                Caption = 'IN - Intensity Normalized (ii*sc)'
                ImageIndex = 5
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton6: TToolButton
                Left = 0
                Top = 48
                Caption = 'CN - Contrast'
                ImageIndex = 14
                OnClick = ToolButton3Click
              end
              object ToolButton24: TToolButton
                Left = 188
                Top = 48
                Caption = 'R - cells Red channel'
                ImageIndex = 8
                OnClick = ToolButton3Click
              end
              object ToolButton25: TToolButton
                Left = 376
                Top = 48
                Caption = 'G - cells Green channel'
                ImageIndex = 9
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton26: TToolButton
                Left = 0
                Top = 72
                Caption = 'B - cells Blue channel'
                ImageIndex = 10
                OnClick = ToolButton3Click
              end
              object ToolButton27: TToolButton
                Left = 188
                Top = 72
                Caption = 'H - cells Hue'
                ImageIndex = 11
                OnClick = ToolButton3Click
              end
              object ToolButton28: TToolButton
                Left = 376
                Top = 72
                Caption = 'S - cells Saturation'
                ImageIndex = 12
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton29: TToolButton
                Left = 0
                Top = 96
                Caption = 'L - cells Luminosity'
                ImageIndex = 13
                OnClick = ToolButton3Click
              end
            end
          end
          object tsFunctions: TTabSheet
            Caption = 'Functions'
            ImageIndex = 2
            object ToolBar9: TToolBar
              Left = 0
              Top = 0
              Width = 671
              Height = 168
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 199
              Caption = 'ToolBar9'
              ShowCaptions = True
              TabOrder = 0
              object ToolButton50: TToolButton
                Left = 0
                Top = 0
                Caption = 'RND( - random from 0 to arg'
                ImageIndex = 20
                OnClick = ToolButton3Click
              end
              object ToolButton30: TToolButton
                Left = 199
                Top = 0
                Caption = 'SIN( - sine'
                ImageIndex = 0
                OnClick = ToolButton3Click
              end
              object ToolButton31: TToolButton
                Left = 398
                Top = 0
                Caption = 'COS( - cosine'
                ImageIndex = 1
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton32: TToolButton
                Left = 0
                Top = 24
                Caption = 'TAN( - tangent'
                ImageIndex = 2
                OnClick = ToolButton3Click
              end
              object ToolButton33: TToolButton
                Left = 199
                Top = 24
                Caption = 'COTAN( - cotangent'
                ImageIndex = 3
                OnClick = ToolButton3Click
              end
              object ToolButton34: TToolButton
                Left = 398
                Top = 24
                Caption = 'EXP( - exponent'
                ImageIndex = 4
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton35: TToolButton
                Left = 0
                Top = 48
                Caption = 'LN( - natural log'
                ImageIndex = 5
                OnClick = ToolButton3Click
              end
              object ToolButton36: TToolButton
                Left = 199
                Top = 48
                Caption = 'LOG10( - log on base 10'
                ImageIndex = 6
                OnClick = ToolButton3Click
              end
              object ToolButton37: TToolButton
                Left = 398
                Top = 48
                Caption = 'SQRT( - square root'
                ImageIndex = 7
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton38: TToolButton
                Left = 0
                Top = 72
                Caption = 'SQR( - square of'
                ImageIndex = 8
                OnClick = ToolButton3Click
              end
              object ToolButton39: TToolButton
                Left = 199
                Top = 72
                Caption = 'POWER( - x raised by y'
                ImageIndex = 9
                OnClick = ToolButton3Click
              end
              object ToolButton40: TToolButton
                Left = 398
                Top = 72
                Caption = 'MIN( - minimum'
                ImageIndex = 10
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton41: TToolButton
                Left = 0
                Top = 96
                Caption = 'MAX( - maximum'
                ImageIndex = 11
                OnClick = ToolButton3Click
              end
              object ToolButton42: TToolButton
                Left = 199
                Top = 96
                Caption = 'ABS( - absolute value'
                ImageIndex = 12
                OnClick = ToolButton3Click
              end
              object ToolButton43: TToolButton
                Left = 398
                Top = 96
                Caption = 'TRUNC( - rounded toward 0'
                ImageIndex = 13
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton44: TToolButton
                Left = 0
                Top = 120
                Caption = 'INT( - rounded to int'
                ImageIndex = 14
                OnClick = ToolButton3Click
              end
              object ToolButton45: TToolButton
                Left = 199
                Top = 120
                Caption = 'CEIL( - rounded up '
                ImageIndex = 15
                OnClick = ToolButton3Click
              end
              object ToolButton46: TToolButton
                Left = 398
                Top = 120
                Caption = 'FLOOR( - rounded down'
                ImageIndex = 16
                Wrap = True
                OnClick = ToolButton3Click
              end
              object ToolButton47: TToolButton
                Left = 0
                Top = 144
                Caption = 'SIGN( - ;-1;0;1 due to sign of arg'
                ImageIndex = 17
                OnClick = ToolButton3Click
              end
              object ToolButton49: TToolButton
                Left = 199
                Top = 144
                Caption = 'HEAV( - 1 - pos; 0 - else'
                ImageIndex = 19
                OnClick = ToolButton3Click
              end
              object ToolButton48: TToolButton
                Left = 398
                Top = 144
                Caption = 'PH( - x - 2*pi*round(x/2/pi)'
                ImageIndex = 18
                OnClick = ToolButton3Click
              end
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 305
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitWidth = 451
    object Splitter2: TSplitter
      Left = 717
      Top = 1
      Height = 303
      Align = alRight
      Color = 15525853
      MinSize = 50
      ParentColor = False
      ExplicitLeft = 848
      ExplicitHeight = 529
    end
    object ToolBar4: TToolBar
      Left = 1
      Top = 1
      Width = 25
      Height = 303
      Align = alLeft
      Caption = 'ToolBar2'
      EdgeOuter = esNone
      Images = ImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object tbElemOpen: TToolButton
        Left = 0
        Top = 0
        Hint = '|Open Svg element'
        Caption = 'ToolButton2'
        ImageIndex = 0
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tbElemOpenClick
      end
      object tbElemSave: TToolButton
        Left = 0
        Top = 22
        Hint = '|Save Svg element'
        Caption = 'ToolButton1'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = tbElemSaveClick
      end
      object ToolButton7: TToolButton
        Left = 0
        Top = 22
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 2
        Wrap = True
        Style = tbsSeparator
      end
      object tbElemErase: TToolButton
        Left = 0
        Top = 52
        Hint = '|Erase current element'
        Caption = 'tbElemErase'
        ImageIndex = 8
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tbElemEraseClick
      end
      object tbElemUpdate: TToolButton
        Left = 0
        Top = 74
        Hint = '|Update current element from source here'
        Caption = 'tbElemUpdate'
        ImageIndex = 9
        ParentShowHint = False
        Wrap = True
        ShowHint = True
        OnClick = tbElemUpdateClick
      end
      object tbPicker: TToolButton
        Left = 0
        Top = 96
        Caption = 'tbPicker'
        ImageIndex = 11
        Style = tbsCheck
        Visible = False
      end
    end
    object GroupBox8: TGroupBox
      AlignWithMargins = True
      Left = 723
      Top = 4
      Width = 197
      Height = 297
      Align = alRight
      Caption = ' Element Preview '
      TabOrder = 1
      ExplicitLeft = 250
      object SVGviewer: TWebBrowser
        Left = 2
        Top = 18
        Width = 193
        Height = 277
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 56
        ExplicitTop = 64
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C00000011120000EE1900000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object gbElement: TGroupBox
      AlignWithMargins = True
      Left = 29
      Top = 4
      Width = 685
      Height = 297
      Align = alClient
      Caption = ' Element '
      TabOrder = 2
      ExplicitWidth = 212
      object mmElement: TMemo
        Left = 2
        Top = 18
        Width = 681
        Height = 277
        Align = alClient
        BorderStyle = bsNone
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 208
      end
    end
  end
  object ImageList1: TImageList
    Left = 568
    Top = 40
    Bitmap = {
      494C01010C000E00340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      4000404040004040400040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060606000DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00CFCFCF00404040000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBF0000BFBF0000BFBF0000BFBF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060606000FFFFFF00DFDFDF00BFBF
      BF00BFBFBF00DFDFDF00DFDFDF00BFBFBF00BFBFBF00DFDFDF00DFDFDF00BFBF
      BF00BFBFBF00DFDFDF00DFDFDF00404040000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
      0000BFBF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060606000FFFFFF00003F0000203F
      000020000000BFBFBF003F0000007F7F7F003F003F00BFBFBF003F003F007F00
      7F003F3F3F00BFBFBF00DFDFDF00404040000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
      0000BFBF00000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      80000000000000000000000000000000000060606000FFFFFF00007F0000603F
      3F00203F3F00BFBFBF0000007F00FF0000007F007F00BFBFBF007F3F0000FF7F
      7F007F007F00BFBFBF00DFDFDF00404040000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000BF000000BF00
      0000BF000000BF00000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
      0000BFBF0000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF00008080000080800000FFFF0000808000008080000080
      80000000000000000000000000000000000060606000FFFFFF0020000000007F
      7F00003F3F00DFDFDF0000003F007F7F7F003F003F00DFDFDF003F3F00007F00
      00003F000000DFDFDF00DFDFDF00404040000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000BF00
      0000BF000000BF00000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF
      0000BFBF0000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00008080000080800000FFFF00008080000080
      80000000000000000000000000000000000060606000FFFFFF00DFDFDF00BFBF
      BF00BFBFBF00DFDFDF00DFDFDF00BFBFBF00BFBFBF00DFDFDF00DFDFDF00BFBF
      BF00BFBFBF00DFDFDF00DFDFDF00404040000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000BF000000BF000000BF00000000000000BFBF0000BFBF0000BFBF0000BFBF
      00000000000000FFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080800000FFFF000080
      80000000000000000000000000000000000060606000FFFFFF00000020000000
      400000002000BFBFBF003F3F00007F3F3F003F003F00BFBFBF0000003F000000
      7F003F000000BFBFBF00DFDFDF00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF00000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000080800000FFFF0000FFFF000080
      80000000000000000000000000000000000060606000FFFFFF00007F7F0000FF
      3F007F000000BFBFBF007F007F00FFBF3F007F3F3F00BFBFBF00007F00003F3F
      FF007F000000BFBFBF00DFDFDF00404040000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000008080000080
      80000000000000FFFF0000FFFF0000FFFF00000000000080800000FFFF000080
      80000000000000000000000000000000000060606000FFFFFF003F000000007F
      7F003F000000DFDFDF003F3F00007F7F00003F3F0000DFDFDF0000003F003F3F
      7F003F3F3F00DFDFDF00DFDFDF00404040000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060606000FFFFFF00DFDFDF00BFBF
      BF00BFBFBF00DFDFDF00DFDFDF00BFBFBF00BFBFBF00DFDFDF00DFDFDF00BFBF
      BF00BFBFBF00DFDFDF00DFDFDF00404040000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      80000080800000000000000000000000000060606000FFFFFF003F0000003F3F
      000000003F00BFBFBF003F3F00003F7F3F00003F3F00BFBFBF003F003F007F00
      7F003F003F00BFBFBF00DFDFDF00404040000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000000000000000000000000060606000FFFFFF007F00000000BF
      3F00003F3F00BFBFBF003F3F20003F3F6000007F7F00BFBFBF00007F7F008000
      0000007F0000BFBFBF00DFDFDF00404040000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060606000FFFFFF00003F0000007F
      0000003F0000DFDFDF0000002000007F7F00003F3F00DFDFDF00200000004000
      0000003F0000DFDFDF00DFDFDF00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000060606000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DFDFDF00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F6F6F0060606000606060006060
      6000606060006060600060606000606060006060600060606000606060006060
      6000606060006060600060606000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008000000080000000800000008000000080000000808080000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000800000000000000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000FFFF0000000000BF00
      0000BF000000BF000000BF000000BF000000BF000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF0000FFFF000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0080808000000000000000000080808000800000008000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008080800000000000000000000000000000FFFF00000000000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000FF00000000000000000000000000000000000000000000000000BF00
      0000BF000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      80000000FF000000800080808000000000000000000080000000800000000000
      0000000000000000000000000000008000000080000000000000000000008080
      8000800000008000000000000000000000000000000000FFFF0000000000BF00
      0000BF000000BF000000BF000000BF000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF000000FF00000000000000000000000000BF000000BF000000BF00
      0000BF000000FFFFFF00C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000000000000000000080000000800000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000800000008000000000000000000000000000000000FFFF00000000000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000800000008000000000000000000000000000000000FFFF0000000000BF00
      0000BF000000BF000000BF000000BF000000FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000000000000000BF000000BF000000BF00
      0000BF000000BF000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000FFFFFF0000FFFF000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000FF00000000000000000000000000000000000000000000000000BF00
      0000BF000000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF0000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FFFF0000FF00000000000000000000000000000080000000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000000000000000000000FFFF0000000000BF00
      0000BF000000BF000000BF000000BF000000BF000000FFFFFF00000000000000
      00000000FF00000000000000000000000000000000000000000000000000BF00
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF0000FFFF0000000000000000000000000000000000FF000000FF00
      0000FF0000008000000080000000800000008000000080000000800000008000
      0000FF00000080000000FF000000000000000000000080808000800000008000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000008000
      0000000000008080800080808000808080008080800080808000808080008080
      800080000000FF00000000000000000000000000000000000000800000008000
      0000800000000000000080000000800000000000000000000000000000008000
      0000808080000000000000000000000000000000000000FFFF00000000000000
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00C0C0C000FFFFFF000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000000000C0C0C000C0C0C0000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF00000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF00000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF00000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF00000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000FFFF007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000FFFF007F7F7F000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF00000000000000000000000000000000000000000000BFBF0000BF
      BF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000FFFF000000
      000000000000000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF00000000000000000000000000000000000000000000BFBF0000BF
      BF000000000000000000000000000000000000000000000000000000000000BF
      BF0000BFBF0000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000BFBF00000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000BFBF000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      0000000000000000000000000000000000007F7F7F007F7F7F00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF007F7F7F007F7F7F000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      000000BFBF00000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000000BFBF00000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000000BFBF00000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000000BFBF00000000000000000000000000000000007F7F7F00FFFFFF000000
      FF000000FF000000FF000000FF000000FF00FFFFFF007F7F7F00000000000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF000000
      FF000000FF000000FF000000FF000000FF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000007F7F7F00BFBFBF00FFFF
      FF00BFBFBF000000FF00BFBFBF00FFFFFF00BFBFBF007F7F7F00000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F00000000000000
      000000000000000000000000000000000000000000000000000000BFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF0000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FFFFFF00FF000000FFFFFF00FFFFFF000000
      0000808080000000000000000000000000007F7F7F007F7F7F00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00BFBFBF00FFFFFF007F7F7F007F7F7F000000
      0000000000000000000000000000000000007F7F7F007F7F7F00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF007F7F7F007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF007F7F7F0000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F000000000000000000000000007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF8001FFFCFF0FFFFF0000
      F3FFFE07FFFF0000E1F9FC0380070000E1F30003C0070000F0E38003C0030000
      F847C001C0030000FC0FE001C0030000FE1FF001C0030000FC0FFA01C0030000
      F84FFE0180030000E0E3FE01C0030000C1F1FE01F0030000C7F8FE01FEEF0000
      FFFFFFFFFF1F0000FFFFFFFFFFFF0001FFFFFFFFFFFFFFFF8007F001FFFFF01F
      8007E001EFFFE00F8007E001CFE3C7C7800FE00180018FE38017E001C0019E63
      80138001EFE39C3380018001FFFF9C3380018001EFF79E7F8017E001C0038FF3
      8017E001C0018DFF8007E001C003C4E78007E001EFF7E07F800FE001FFFFF07F
      801FF003FFFFFCFFF8FFFE1FFFFFFDFFFFFFFFFFFFFDFFFDC003C003FFF8FFF8
      86038603FFF1FFF186038603FFE3FFE386038603FFC7FFC780038003E08FE08F
      80038003C01FC01F80038003803F803F80038003001F001F80038003001F001F
      80038003001F001F801F9003001F001F8017B003001F001F8187E3C3803F803F
      FFC7C7FFC07FC07FFF87EFFFE0FFE0FF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Left = 112
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Left = 112
    Top = 80
  end
end
