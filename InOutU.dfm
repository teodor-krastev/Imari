object frmInOut: TfrmInOut
  Left = 347
  Top = 168
  BorderStyle = bsSizeToolWin
  Caption = 'Open/Save'
  ClientHeight = 810
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 855
    Height = 742
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 776
    ExplicitHeight = 654
    object ShellListView1: TShellListView
      Left = 163
      Top = 0
      Width = 692
      Height = 742
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ObjectTypes = [otNonFolders]
      Root = 'rfDesktop'
      ShellTreeView = ShellTreeView1
      Sorted = True
      Align = alClient
      ReadOnly = False
      HideSelection = False
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitWidth = 613
      ExplicitHeight = 654
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 163
      Height = 742
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 654
      object ShellTreeView1: TShellTreeView
        Left = 0
        Top = 0
        Width = 163
        Height = 742
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        ObjectTypes = [otFolders]
        Root = 'rfDesktop'
        ShellListView = ShellListView1
        UseShellImages = True
        Align = alClient
        AutoRefresh = False
        BorderStyle = bsNone
        Indent = 20
        ParentColor = False
        RightClickSelect = True
        ShowRoot = False
        TabOrder = 0
        ExplicitHeight = 654
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 2
    Top = 744
    Width = 851
    Height = 64
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      851
      64)
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 385
      Height = 64
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = ' Included '
      TabOrder = 0
      ExplicitHeight = 49
      object CheckListBox1: TCheckListBox
        Left = 2
        Top = 18
        Width = 381
        Height = 44
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Main Template'
          'Element Template'
          'Matrix Template'
          'Process Params')
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 29
      end
    end
    object bbHelp: TBitBtn
      Left = 652
      Top = 31
      Width = 72
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akRight, akBottom]
      Caption = 'Help'
      TabOrder = 1
      ExplicitLeft = 573
      ExplicitTop = 16
    end
    object bbCancel: TBitBtn
      Left = 574
      Top = 31
      Width = 72
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      TabOrder = 2
      ExplicitLeft = 495
      ExplicitTop = 16
    end
    object bbOK: TBitBtn
      Left = 496
      Top = 31
      Width = 72
      Height = 29
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      TabOrder = 3
      ExplicitLeft = 417
      ExplicitTop = 16
    end
  end
end
