inherited purchaseorderbrowseform: Tpurchaseorderbrowseform
  Caption = 'Browse Purchase Order'
  ClientHeight = 565
  ClientWidth = 847
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 855
  ExplicitHeight = 599
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = -2
    Height = 0
    Align = alNone
    ExplicitLeft = 0
    ExplicitTop = -2
    ExplicitHeight = 0
    ClientRectBottom = 2
    ClientRectTop = 2
    inherited cxTabSheet1: TcxTabSheet
      ExplicitTop = 2
      ExplicitWidth = 426
    end
  end
  inherited pnl1: TPanel
    Top = 533
    Width = 847
    ExplicitTop = 533
    ExplicitWidth = 847
    inherited btn1: TButton
      Left = 2
      Top = 6
      Anchors = [akTop, akRight]
      Visible = False
      ExplicitLeft = 2
      ExplicitTop = 6
    end
    inherited btn2: TButton
      Left = 81
      Top = 6
      Anchors = [akTop, akRight]
      Visible = False
      ExplicitLeft = 81
      ExplicitTop = 6
    end
    object btnCetak: TcxButton
      Left = 767
      Top = 4
      Width = 75
      Height = 25
      Action = cetak
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
    object btnDelete: TcxButton
      Left = 615
      Top = 4
      Width = 75
      Height = 25
      Action = DataSetDelete1
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
    object btnEdit: TcxButton
      Left = 539
      Top = 4
      Width = 75
      Height = 25
      Hint = 'Edit'
      Anchors = [akTop, akRight]
      Caption = '&Edit'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnEditClick
    end
    object btnInsert: TcxButton
      Left = 463
      Top = 4
      Width = 75
      Height = 25
      Hint = 'Insert'
      Anchors = [akTop, akRight]
      Caption = '&Insert'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnInsertClick
    end
    object cxButton1: TcxButton
      Left = 691
      Top = 4
      Width = 75
      Height = 25
      Action = Approved
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 0
    Width = 847
    Height = 533
    Align = alClient
    TabOrder = 6
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
      DataController.DataSource = dsAPTPOHDR
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
      object cxGrid1DBTableView1NOPO: TcxGridDBColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'NOPO'
        Width = 218
      end
      object cxGrid1DBTableView1Tgl: TcxGridDBColumn
        Caption = 'Tgl. Bukti'
        DataBinding.FieldName = 'Tgl'
        Width = 112
      end
      object cxGrid1DBTableView1SupID: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'SupID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'SUPID'
        Properties.ListColumns = <
          item
            FieldName = 'Nama'
          end>
        Properties.ListSource = supplier_
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = True
        Width = 209
      end
      object cxGrid1DBTableView1ValID: TcxGridDBColumn
        Caption = 'Valuta'
        DataBinding.FieldName = 'ValID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'VALID'
        Properties.ListColumns = <
          item
            FieldName = 'KETERANGAN'
          end>
        Properties.ListSource = valuta_
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = True
        Width = 109
      end
      object cxGrid1DBTableView1Bayar_: TcxGridDBColumn
        Caption = 'Bayar'
        DataBinding.FieldName = 'Bayar_'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '(T | T)unai | (K | K)redit'
        Width = 45
      end
      object cxGrid1DBTableView1Netto: TcxGridDBColumn
        DataBinding.FieldName = 'Netto'
        HeaderAlignmentHorz = taRightJustify
        Width = 152
      end
      object cxGrid1DBTableView1Status: TcxGridDBColumn
        Caption = 'A'
        DataBinding.FieldName = 'Status_'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object mmo1: TcxMemo [3]
    Left = 368
    Top = 104
    Lines.Strings = (
      'cxMemo1')
    TabOrder = 7
    Visible = False
    Height = 161
    Width = 465
  end
  inherited actlst1: TActionList
    inherited DataSetInsert1: TDataSetInsert
      OnExecute = DataSetInsert1Execute
      DataSource = dsAPTPOHDR
    end
    inherited DataSetDelete1: TDataSetDelete
      DataSource = dsAPTPOHDR
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = dsAPTPOHDR
    end
    object cetak: TAction
      Caption = '&Cetak'
    end
    object Approved: TAction
      Caption = '&Approve'
      OnExecute = ApprovedExecute
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 208
    Top = 104
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
  object ShellResources1: TShellResources
    Left = 328
    Top = 104
  end
  object XPManifest1: TXPManifest
    Left = 272
    Top = 168
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    ConnectionTimeout = 3000
    LoginPrompt = False
    Left = 328
    Top = 168
  end
  object APTPOHDR: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    AfterPost = APTPOHDRAfterPost
    OnNewRecord = APTPOHDRNewRecord
    CommandText = 
      'SELECT P.NOPO, P.SupID, P.Tgl, P.Company, P.Status_, P.ValID,'#13#10'P' +
      '.Tukar, P.Bayar_, P.TglKirim1, P.TglKirim2, P.TukarPPn, P.Bruto,' +
      #13#10'P.Netto, P.Ekspedisi, P.TKirim, P.AKirim, P.Disc1, P.NDisc1, P' +
      '.PPn1,'#13#10'P.NPPn1, P.NOPR, P.Term, P.Create_ID, P.Create_Tgl, P.Mo' +
      'dify_ID,'#13#10'P.Modify_Tgl, P.CabID, P.Ket FROM aptpohdr AS P'#13#10'Order' +
      ' by p.Tgl Asc'
    Parameters = <>
    Left = 328
    Top = 216
    object APTPOHDRNOPO: TStringField
      FieldName = 'NOPO'
    end
    object APTPOHDRSupID: TStringField
      FieldName = 'SupID'
      OnValidate = APTPOHDRSupIDValidate
      Size = 10
    end
    object APTPOHDRTgl: TDateField
      FieldName = 'Tgl'
    end
    object APTPOHDRCompany: TStringField
      FieldName = 'Company'
      Size = 10
    end
    object APTPOHDRStatus_: TStringField
      FieldName = 'Status_'
      Size = 1
    end
    object APTPOHDRValID: TStringField
      FieldName = 'ValID'
      Size = 5
    end
    object APTPOHDRTukar: TFMTBCDField
      FieldName = 'Tukar'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object APTPOHDRBayar_: TStringField
      FieldName = 'Bayar_'
      Size = 1
    end
    object APTPOHDRTukarPPn: TFMTBCDField
      FieldName = 'TukarPPn'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object APTPOHDRBruto: TFMTBCDField
      FieldName = 'Bruto'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object APTPOHDRNetto: TFMTBCDField
      FieldName = 'Netto'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object APTPOHDREkspedisi: TStringField
      FieldName = 'Ekspedisi'
    end
    object APTPOHDRTKirim: TStringField
      FieldName = 'TKirim'
      Size = 30
    end
    object APTPOHDRAKirim: TStringField
      FieldName = 'AKirim'
      Size = 30
    end
    object APTPOHDRDisc1: TFMTBCDField
      FieldName = 'Disc1'
      OnValidate = APTPOHDRDisc1Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object APTPOHDRNDisc1: TFMTBCDField
      FieldName = 'NDisc1'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object APTPOHDRPPn1: TFMTBCDField
      FieldName = 'PPn1'
      OnValidate = APTPOHDRPPn1Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object APTPOHDRNPPn1: TFMTBCDField
      FieldName = 'NPPn1'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object APTPOHDRNOPR: TStringField
      FieldName = 'NOPR'
      Size = 10
    end
    object APTPOHDRTerm: TSmallintField
      FieldName = 'Term'
    end
    object APTPOHDRCreate_ID: TStringField
      FieldName = 'Create_ID'
      Size = 10
    end
    object APTPOHDRCreate_Tgl: TDateTimeField
      FieldName = 'Create_Tgl'
    end
    object APTPOHDRModify_ID: TStringField
      FieldName = 'Modify_ID'
      Size = 10
    end
    object APTPOHDRModify_Tgl: TDateTimeField
      FieldName = 'Modify_Tgl'
    end
    object APTPOHDRCabID: TStringField
      FieldName = 'CabID'
      Size = 5
    end
    object APTPOHDRKet: TStringField
      FieldName = 'Ket'
      Size = 255
    end
    object APTPOHDRTglKirim1: TDateField
      FieldName = 'TglKirim1'
    end
    object APTPOHDRTglKirim2: TDateField
      FieldName = 'TglKirim2'
    end
  end
  object supplier: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select SUPID, Nama from apsupplier order by supid asc'
    Parameters = <>
    Left = 328
    Top = 264
    object supplierSUPID: TStringField
      FieldName = 'SUPID'
      Size = 10
    end
    object supplierNama: TStringField
      FieldName = 'Nama'
      Size = 30
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
  object valuta_: TDataSource
    DataSet = Valuta
    Left = 392
    Top = 312
  end
  object supplier_: TDataSource
    DataSet = supplier
    Left = 392
    Top = 264
  end
  object dsAPTPOHDR: TDataSource
    DataSet = APTPOHDR
    Left = 392
    Top = 216
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
end
