object templateForm: TtemplateForm
  Left = 0
  Top = 0
  ActiveControl = cxGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'templateForm'
  ClientHeight = 354
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 160
    Top = 80
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 38
    Width = 426
    Height = 278
    ActivePage = cxTabSheet1
    Align = alClient
    LookAndFeel.SkinName = 'Office2007Black'
    TabOrder = 0
    ClientRectBottom = 272
    ClientRectLeft = 3
    ClientRectRight = 420
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      AlignWithMargins = True
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object bvl1: TBevel
        Left = 3
        Top = 3
        Width = 405
        Height = 234
        Style = bsRaised
      end
      object bvl2: TBevel
        Left = 16
        Top = 13
        Width = 50
        Height = 50
      end
      object bvl3: TBevel
        Left = 16
        Top = 72
        Width = 50
        Height = 50
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alLeftCenter
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Arial Narrow'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 33
    Width = 426
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 316
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Coffee'
    StyleDisabled.LookAndFeel.SkinName = 'Coffee'
    StyleFocused.LookAndFeel.SkinName = 'Coffee'
    StyleHot.LookAndFeel.SkinName = 'Coffee'
    TabOrder = 2
    Height = 5
    Width = 426
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 321
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 3
    Height = 33
    Width = 426
  end
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 33
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Coffee'
    StyleDisabled.LookAndFeel.SkinName = 'Coffee'
    StyleFocused.LookAndFeel.SkinName = 'Coffee'
    StyleHot.LookAndFeel.SkinName = 'Coffee'
    TabOrder = 4
    Height = 5
    Width = 426
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 38
    Width = 426
    Height = 278
    Align = alClient
    TabOrder = 5
    LookAndFeel.SkinName = 'Office2010Blue'
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object actlst1: TActionList
    Left = 272
    Top = 104
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
  end
  object XPManifest1: TXPManifest
    Left = 272
    Top = 168
  end
  object ShellResources1: TShellResources
    Left = 328
    Top = 104
  end
  object dscari: TDataSource
    Left = 272
    Top = 56
  end
end
