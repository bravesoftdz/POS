object PenerimaanForm: TPenerimaanForm
  Left = 0
  Top = 0
  ActiveControl = cxGrid1
  Caption = 'Modul Browse Receiving'
  ClientHeight = 568
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 536
    Width = 993
    Height = 32
    Align = alBottom
    Color = 15985897
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      993
      32)
    object btnCetak: TcxButton
      Left = 913
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnDelete: TcxButton
      Left = 761
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnEdit: TcxButton
      Left = 685
      Top = 4
      Width = 75
      Height = 25
      Action = Change
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnInsert: TcxButton
      Left = 609
      Top = 4
      Width = 75
      Height = 25
      Action = insert
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 837
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 993
    Height = 536
    Align = alClient
    TabOrder = 1
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
      DataController.DataSource = intranshdr_
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      object cxGrid1DBTableView1TrNO: TcxGridDBColumn
        DataBinding.FieldName = 'TrNO'
        Width = 234
      end
      object cxGrid1DBTableView1SupID: TcxGridDBColumn
        Caption = 'Nama Supplier'
        DataBinding.FieldName = 'SupID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'SUPID'
        Properties.ListColumns = <
          item
            FieldName = 'Nama'
          end>
        Properties.ListSource = supplier_
        Width = 219
      end
      object cxGrid1DBTableView1Tgl: TcxGridDBColumn
        Caption = 'Tgl. Receiving'
        DataBinding.FieldName = 'Tgl'
        Width = 125
      end
      object cxGrid1DBTableView1NOPO: TcxGridDBColumn
        Caption = 'NO. PO'
        DataBinding.FieldName = 'NOPO'
        Width = 96
      end
      object cxGrid1DBTableView1Status_: TcxGridDBColumn
        Caption = 'S'
        DataBinding.FieldName = 'Status_'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.AllowGrayed = True
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        FooterAlignmentHorz = taCenter
        Width = 21
      end
      object cxGrid1DBTableView1Bayar_: TcxGridDBColumn
        Caption = 'B'
        DataBinding.FieldName = 'Bayar_'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 'T'
        Properties.ValueUnchecked = 'K'
        FooterAlignmentHorz = taCenter
        Width = 20
      end
      object cxGrid1DBTableView1Bruto: TcxGridDBColumn
        DataBinding.FieldName = 'Bruto'
        FooterAlignmentHorz = taRightJustify
        Width = 138
      end
      object cxGrid1DBTableView1Netto: TcxGridDBColumn
        DataBinding.FieldName = 'Netto'
        FooterAlignmentHorz = taRightJustify
        Width = 138
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object mmo1: TcxMemo
    Left = 512
    Top = 104
    Lines.Strings = (
      'cxMemo1')
    TabOrder = 6
    Visible = False
    Height = 161
    Width = 465
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 3146080
  end
  object actlst1: TActionList
    Left = 312
    Top = 48
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = intranshdr_
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = intranshdr_
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = intranshdr_
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object cetak: TAction
      Caption = '&Cetak'
    end
    object Approved: TAction
      Caption = '&Approve'
    end
    object insert: TAction
      Caption = '&Insert'
      OnExecute = insertExecute
    end
    object Change: TAction
      Caption = '&Change'
      OnExecute = ChangeExecute
    end
  end
  object ShellResources1: TShellResources
    Left = 328
    Top = 104
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    ConnectionTimeout = 3000
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 328
    Top = 168
  end
  object intranshdr: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select TrNO, SupID, Tgl, NOPO, Company, Status_, ValID, '#13#10'Tukar,' +
      ' Bayar_, TglKirim1, TglKirim2, TukarPPn, Bruto, Netto, '#13#10'Ekspedi' +
      'si, TKirim, AKirim, Disc1, NDisc1, PPn1, NPPn1, NOPR, Term, '#13#10'Cr' +
      'eate_ID, Create_Tgl, Modify_ID, Modify_Tgl, CabID, Ket '#13#10'from in' +
      'transhdr order by TrNO asc'
    Parameters = <>
    Left = 328
    Top = 216
    object intranshdrTrNO: TStringField
      FieldName = 'TrNO'
    end
    object intranshdrSupID: TStringField
      FieldName = 'SupID'
      Size = 10
    end
    object intranshdrTgl: TDateField
      FieldName = 'Tgl'
    end
    object intranshdrNOPO: TStringField
      FieldName = 'NOPO'
    end
    object intranshdrCompany: TStringField
      FieldName = 'Company'
      Size = 10
    end
    object intranshdrStatus_: TStringField
      FieldName = 'Status_'
      Size = 1
    end
    object intranshdrValID: TStringField
      FieldName = 'ValID'
      Size = 5
    end
    object intranshdrTukar: TFMTBCDField
      FieldName = 'Tukar'
      Precision = 18
    end
    object intranshdrBayar_: TStringField
      FieldName = 'Bayar_'
      Size = 1
    end
    object intranshdrTglKirim1: TDateField
      FieldName = 'TglKirim1'
    end
    object intranshdrTglKirim2: TDateField
      FieldName = 'TglKirim2'
    end
    object intranshdrTukarPPn: TFMTBCDField
      FieldName = 'TukarPPn'
      Precision = 28
    end
    object intranshdrBruto: TFMTBCDField
      FieldName = 'Bruto'
      Precision = 28
    end
    object intranshdrNetto: TFMTBCDField
      FieldName = 'Netto'
      Precision = 28
    end
    object intranshdrEkspedisi: TStringField
      FieldName = 'Ekspedisi'
    end
    object intranshdrTKirim: TStringField
      FieldName = 'TKirim'
      Size = 30
    end
    object intranshdrAKirim: TStringField
      FieldName = 'AKirim'
      Size = 30
    end
    object intranshdrDisc1: TFMTBCDField
      FieldName = 'Disc1'
      Precision = 18
    end
    object intranshdrNDisc1: TFMTBCDField
      FieldName = 'NDisc1'
      Precision = 28
    end
    object intranshdrPPn1: TFMTBCDField
      FieldName = 'PPn1'
      Precision = 18
    end
    object intranshdrNPPn1: TFMTBCDField
      FieldName = 'NPPn1'
      Precision = 18
    end
    object intranshdrNOPR: TStringField
      FieldName = 'NOPR'
      Size = 10
    end
    object intranshdrTerm: TSmallintField
      FieldName = 'Term'
    end
    object intranshdrCreate_ID: TStringField
      FieldName = 'Create_ID'
      Size = 10
    end
    object intranshdrCreate_Tgl: TDateTimeField
      FieldName = 'Create_Tgl'
    end
    object intranshdrModify_ID: TStringField
      FieldName = 'Modify_ID'
      Size = 10
    end
    object intranshdrModify_Tgl: TDateTimeField
      FieldName = 'Modify_Tgl'
    end
    object intranshdrCabID: TStringField
      FieldName = 'CabID'
      Size = 5
    end
    object intranshdrKet: TStringField
      FieldName = 'Ket'
      Size = 255
    end
  end
  object supplier: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select SUPID, Nama from apsupplier order by supid asc'
    Parameters = <>
    Left = 328
    Top = 264
    object supplierNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object supplierSUPID: TStringField
      FieldName = 'SUPID'
      Size = 10
    end
  end
  object Valuta: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select VALID, KETERANGAN from pxvaluta where Status_ = '#39'AP'#39
    Parameters = <>
    Left = 328
    Top = 312
    object ValutaVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object ValutaKETERANGAN: TWideStringField
      FieldName = 'KETERANGAN'
      Size = 50
    end
  end
  object spUser: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_pencarianUser'
    Parameters = <
      item
        Name = 'UserIdin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'Passin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 328
    Top = 368
    object spUserNm_user: TWideStringField
      FieldName = 'Nm_user'
      Size = 30
    end
    object spUserAccess: TWideStringField
      FieldName = 'Access'
      FixedChar = True
      Size = 1
    end
    object spUserGroupUser: TWideStringField
      FieldName = 'GroupUser'
      Size = 10
    end
  end
  object Valuta_: TDataSource
    DataSet = Valuta
    Left = 392
    Top = 312
  end
  object supplier_: TDataSource
    DataSet = supplier
    Left = 392
    Top = 264
  end
  object intranshdr_: TDataSource
    DataSet = intranshdr
    Left = 392
    Top = 216
  end
  object XPManifest1: TXPManifest
    Left = 216
    Top = 104
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 216
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14872561
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    LookAndFeel.Kind = lfOffice11
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 144
    Top = 56
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev2: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext2: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast2: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert2: TdxBarDBNavButton
      Caption = 'Insert'
      Category = 1
      Enabled = False
      Hint = 'Insert'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777000777
        7777777777000777777777777700077777777770000000007777777000000000
        7777777000000000777777777700077777777777770007777777777777000777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
    end
    object dxBarDBNavEdit2: TdxBarDBNavButton
      Caption = 'Edit'
      Category = 1
      Enabled = False
      Hint = 'Edit'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777700000000007777777000000007777777770000007
        7777777777000077777777777770077777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnEdit
    end
    object dxBarDBNavDelete3: TdxBarDBNavButton
      Caption = 'Delete'
      Category = 1
      Enabled = False
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777770000000000777777000000000
        0777777000000000077777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
    end
    object dxBarDBNavPost2: TdxBarDBNavButton
      Caption = 'Post'
      Category = 1
      Enabled = False
      Hint = 'Post'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777770777777
        7777777700077777777777700000777777777700070007777777770077700077
        7777777777770007777777777777700077777777777777000777777777777770
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
    end
    object dxBarDBNavCancel2: TdxBarDBNavButton
      Caption = 'Cancel'
      Category = 1
      Enabled = False
      Hint = 'Cancel'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777007777700
        7777777000777000777777770007000777777777700000777777777777000777
        7777777770000077777777770007000777777770007770007777777007777700
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
    end
    object dxBarDBNavRefresh3: TdxBarDBNavButton
      Caption = 'Refresh'
      Category = 1
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
    object btnPrint: TdxBarButton
      Caption = 'Cetak'
      Category = 1
      Hint = 'Cetak'
      Visible = ivAlways
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000002C0000
        002C0000002C0000002C0000002C0000002C0000002C0000002C0000002C0000
        002C0000002C0000002C0000002C0000002C0000002C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000380000008F0000
        008F0000008F0000008F0000008F0000008F0000008F0000008F0000008F0000
        008F0000008F0000008F0000008F0000008F0000008F00000038000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000400000038FFFFFFFFFDFC
        FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
        FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFF00000038000000050000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000D0000002A0000003B00000038FFFFFFFFF6F3
        F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3
        F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FF000000380000003C0000
        002A0000000F0000000000000000000000000000000000000000000000000000
        0000000000000000001E0000003B0000003B0C0B09531816126EF8F2E8FFE3DD
        D3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DD
        D3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FF1B1814730E0D0A570000
        003B0000003B0000001C00000000000000000000000000000000000000000000
        0000000000000000003B2A262089665C4DEE766B5AFF5E5649FFE1D7C6FFCCC2
        B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2
        B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FF5E5649FF766B5AFF665C
        4DEE2E2A24900000003B00000000000000000000000000000000000000000000
        000000000000554E43CF8B8172FFAAA193FF7A7060FF62594AFFCDC0A9FFC2B5
        9EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B5
        9EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFB9AC95FF62594AFF7A7060FFABA3
        95FF8D8374FF534C40CB00000000000000000000000000000000000000000000
        0000000000007F7566FFBCB2A4FFC1B8AAFF7F7566FF5E5647FF5E5647FF5E56
        47FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E56
        47FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF7F7566FFC1B8
        AAFFBAB1A3FF7F7566FF00000000000000000000000000000000000000000000
        000000000000847B6DFFBCB3A4FFBCB3A4FF847B6DFF595142FF595142FF5951
        42FF595142FF595142FF595142FF595142FF595142FF595142FF595142FF5951
        42FF595142FF595142FF595142FF595142FF595142FF595142FF847B6DFFBCB3
        A4FFBCB3A4FF847B6DFF00000000000000000000000000000000000000000000
        000000000000898173FFB8AE9EFFB8AE9EFF898173FF554C3DFF554C3DFF554C
        3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C
        3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF898173FFB8AE
        9EFFB8AE9EFF898173FF00000000000000000000000000000000000000000000
        0000000000008F877AFFB5AA99FFB5AA99FF9F9587FF8F877AFF8F877AFF8F87
        7AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F87
        7AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF9F9587FFB5AA
        99FFB5AA99FF8F877AFF00000000000000000000000000000000000000000000
        000000000000948D81FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
        96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
        96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
        96FFB3A896FF948D81FF00000000000000000000000000000000000000000000
        0000000000009A9388FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
        96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
        96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
        96FFB3A896FF9A9388FF00000000000000000000000000000000000000000000
        0000000000009F998FFFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A9
        97FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A9
        97FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A9
        97FFB4A997FF9F998FFF00000000000000000000000000000000000000000000
        000000000000A49E96FFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6
        EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6
        EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6
        EBFFFCF6EBFFA49E96FF00000000000000000000000000000000000000000000
        000000000000A9A49CFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9
        BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9
        BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFB9B0A1FF473E2FFF473E
        2FFFB9B0A1FFA9A49CFF00000000000000000000000000000000000000000000
        000000000000ADA9A1FFDAD3C7FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4
        C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4
        C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFAAA397FFFCF4E8FFFCF4
        E8FFA9A296FFADA9A1FF00000000000000000000000000000000000000000000
        000000000000A8A49EF2D3CEC6FFE7E2DAFFE7E2DAFFD9D5CDFF8A8782FF817E
        79FF817E79FF817E79FF817E79FF817E79FF817E79FF817E79FF817E79FF817E
        79FF817E79FF817E79FF817E79FF817E79FF8A8782FFC0BCB4FF9F9A92FF9F9A
        92FFBAB5ADFFA9A69FF400000000000000000000000000000000000000000000
        00000000000044434161AFACA5F8B4B1AAFFB4B1AAFF95928DFFDBD3C4FFD6CE
        BFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CE
        BFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD4CCBDFF95928DFFB4B1AAFFB4B1
        AAFFAFACA5F84443416100000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AF7F1E3FFE9E3
        D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3
        D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE2DCCEFF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFBF0FFF6F0
        E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0
        E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFECE6DBFF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFEF6FFF7F3
        EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3
        EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFEDE9E1FF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFFFCFFF9F6
        F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6
        F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFEFECE7FF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFFFFFFFCFA
        F7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFA
        F7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFF2F0EDFF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFFFFFFFDFC
        FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFC
        FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFF3F2F0FF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFFFFFFFEFD
        FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
        FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFF4F3F2FF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000003AFFFFFFFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF4F4F4FF0000003A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000002CFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF0000002C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000F0000002C0000
        003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
        003A0000003A0000003A0000003A0000003A0000002C0000000F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnDelete, dxbnEdit, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 80
    Top = 56
  end
end
