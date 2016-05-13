object frmFontPicker: TfrmFontPicker
  Left = 478
  Top = 171
  Caption = 'Symbol Picker'
  ClientHeight = 496
  ClientWidth = 512
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 423
    Width = 512
    Height = 73
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Caption = ' Font Selector '
    TabOrder = 0
    ExplicitTop = 269
    ExplicitWidth = 475
    object Label1: TLabel
      Left = 7
      Top = 26
      Width = 61
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Font name'
    end
    object cbFontNames: TComboBox
      Left = 72
      Top = 20
      Width = 225
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbFontNamesChange
    end
    object BitBtn1: TBitBtn
      Left = 308
      Top = 31
      Width = 88
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 408
      Top = 31
      Width = 89
      Height = 27
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
    object chkBold: TCheckBox
      Left = 72
      Top = 52
      Width = 65
      Height = 14
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Bold'
      TabOrder = 3
      OnClick = chkBoldClick
    end
    object chkItalic: TCheckBox
      Left = 150
      Top = 52
      Width = 52
      Height = 14
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Italic'
      TabOrder = 4
      OnClick = chkBoldClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 512
    Height = 423
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Caption = ' Double click on a symbol to select it '
    TabOrder = 1
    ExplicitWidth = 475
    ExplicitHeight = 269
    object Memo1: TMemo
      Left = 2
      Top = 18
      Width = 508
      Height = 403
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Matisse ITC'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitWidth = 471
      ExplicitHeight = 249
    end
  end
end
