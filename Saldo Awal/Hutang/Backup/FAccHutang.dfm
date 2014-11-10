inherited AccHutangForm: TAccHutangForm
  Caption = 'Acc Hutang Supplier'
  ClientWidth = 519
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 527
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 0
    Width = 519
    Height = 326
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 519
    ExplicitHeight = 326
    ClientRectBottom = 326
    ClientRectRight = 519
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'General'
      ExplicitTop = 24
      ExplicitWidth = 519
      ExplicitHeight = 302
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 519
        Height = 302
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = dsHutang
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
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
          object cxGrid1DBTableView1Nomor: TcxGridDBColumn
            Caption = 'No.'
            DataBinding.FieldName = 'Nomor'
            Width = 28
          end
          object cxGrid1DBTableView1SupID: TcxGridDBColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'SupID'
            Width = 103
          end
          object cxGrid1DBTableView1NoBeli: TcxGridDBColumn
            Caption = 'No. Beli'
            DataBinding.FieldName = 'NoBeli'
            Width = 86
          end
          object cxGrid1DBTableView1Val: TcxGridDBColumn
            DataBinding.FieldName = 'Val'
            Width = 43
          end
          object cxGrid1DBTableView1Tukar: TcxGridDBColumn
            DataBinding.FieldName = 'Tukar'
            Width = 65
          end
          object cxGrid1DBTableView1Saldo: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo'
            Width = 149
          end
          object cxGrid1DBTableView1LACC: TcxGridDBColumn
            Caption = 'ACC'
            DataBinding.FieldName = 'LACC'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'T'
            Properties.ValueUnchecked = 'F'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited pnl1: TPanel
    Width = 519
    ExplicitTop = 326
    ExplicitWidth = 519
    inherited btn1: TButton
      Left = 363
      Anchors = [akTop, akRight]
      ExplicitLeft = 363
    end
    inherited btn2: TButton
      Left = 442
      Anchors = [akTop, akRight]
      ExplicitLeft = 442
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
      Color = 15985897
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
  object Supplier: TADODataSet
    Connection = fhutangForm.conntrading
    CursorType = ctStatic
    CommandText = 'Select SupID, Nama, Term From APSupplier where Lnoaktif='#39'F'#39
    CommandTimeout = 300
    Parameters = <>
    Left = 80
    Top = 160
    object SupplierSupID: TStringField
      FieldName = 'SupID'
      Size = 10
    end
    object SupplierNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object SupplierTerm: TSmallintField
      FieldName = 'Term'
    end
  end
  object tblPXSystem: TADOTable
    Connection = fhutangForm.conntrading
    CursorType = ctStatic
    CommandTimeout = 300
    TableName = 'pxsystem'
    Left = 80
    Top = 208
    object tblPXSystemConfigID: TSmallintField
      FieldName = 'ConfigID'
    end
    object tblPXSystemSatID: TWideStringField
      FieldName = 'SatID'
      Size = 3
    end
    object tblPXSystemGDGID: TWideStringField
      FieldName = 'GDGID'
      Size = 5
    end
    object tblPXSystemCABID: TWideStringField
      FieldName = 'CABID'
      Size = 5
    end
    object tblPXSystemVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object tblPXSystemHRGID: TWideStringField
      FieldName = 'HRGID'
      Size = 5
    end
    object tblPXSystemMETODE: TWideStringField
      FieldName = 'METODE'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemDISCTINGKAT: TSmallintField
      FieldName = 'DISCTINGKAT'
    end
    object tblPXSystemProfit_: TBooleanField
      FieldName = 'Profit_'
    end
    object tblPXSystemVertion_: TSmallintField
      FieldName = 'Vertion_'
    end
    object tblPXSystemGOLID: TWideStringField
      FieldName = 'GOLID'
      Size = 5
    end
    object tblPXSystemJNSID: TWideStringField
      FieldName = 'JNSID'
      Size = 5
    end
    object tblPXSystemMRKID: TWideStringField
      FieldName = 'MRKID'
      Size = 5
    end
    object tblPXSystemTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object tblPXSystemSUPID: TWideStringField
      FieldName = 'SUPID'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemCUSTID: TWideStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemBRGID: TWideStringField
      FieldName = 'BRGID'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLYears: TWideStringField
      FieldName = 'LYears'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLMonth: TWideStringField
      FieldName = 'LMonth'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLDay: TWideStringField
      FieldName = 'LDay'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLengthBRGID_: TSmallintField
      FieldName = 'LengthBRGID_'
    end
    object tblPXSystemTimeTrial_: TSmallintField
      FieldName = 'TimeTrial_'
    end
    object tblPXSystemTimeTrialRunning_: TSmallintField
      FieldName = 'TimeTrialRunning_'
    end
    object tblPXSystemInstall_: TDateField
      FieldName = 'Install_'
    end
    object tblPXSystemLengthSUPPID_: TSmallintField
      FieldName = 'LengthSUPPID_'
    end
    object tblPXSystemLengthCUSTID_: TSmallintField
      FieldName = 'LengthCUSTID_'
    end
  end
  object tblTukar: TADOTable
    Connection = fhutangForm.conntrading
    CursorType = ctStatic
    CommandTimeout = 300
    IndexFieldNames = 'VALID'
    MasterFields = 'ValID'
    MasterSource = dsValuta
    TableName = 'pxvalutatukar'
    Left = 80
    Top = 256
    object tblTukarTUKARID: TSmallintField
      FieldName = 'TUKARID'
    end
    object tblTukarVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object tblTukarTUKAR: TFMTBCDField
      FieldName = 'TUKAR'
      Precision = 28
    end
    object tblTukarTGL1: TDateField
      FieldName = 'TGL1'
    end
    object tblTukarTGL2: TDateField
      FieldName = 'TGL2'
    end
    object tblTukarTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsValuta: TDataSource
    DataSet = Valuta
    Left = 144
    Top = 256
  end
  object dsSupplier: TDataSource
    DataSet = Supplier
    Left = 144
    Top = 208
  end
  object dsHutang: TDataSource
    DataSet = tblHutang
    Left = 144
    Top = 160
  end
  object Valuta: TADODataSet
    Connection = fhutangForm.conntrading
    CursorType = ctStatic
    CommandText = 'Select ValID, Keterangan From PXValuta Where status_='#39'AP'#39
    Parameters = <>
    Left = 208
    Top = 208
    object ValutaValID: TWideStringField
      FieldName = 'ValID'
      Size = 5
    end
    object ValutaKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 50
    end
  end
  object dsTukar: TDataSource
    DataSet = tblTukar
    Left = 208
    Top = 256
  end
  object spNourut: TADOStoredProc
    Connection = fhutangForm.conntrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_pencarianUser'
    Parameters = <
      item
        Name = 'UserIdin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Passin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
      end>
    Left = 208
    Top = 160
    object spNourutNm_user: TWideStringField
      FieldName = 'Nm_user'
      Size = 30
    end
    object spNourutAccess: TWideStringField
      FieldName = 'Access'
      FixedChar = True
      Size = 1
    end
    object spNourutGroupUser: TWideStringField
      FieldName = 'GroupUser'
      Size = 10
    end
  end
  object tblHutang: TADOTable
    Connection = fhutangForm.conntrading
    CursorType = ctStatic
    Filter = 'LAcc = '#39'F'#39
    Filtered = True
    BeforePost = tblHutangBeforePost
    TableName = 'apsaldoawalhutang'
    Left = 144
    Top = 112
    object tblHutangNomor: TStringField
      FieldName = 'Nomor'
      FixedChar = True
      Size = 5
    end
    object tblHutangSupID: TStringField
      FieldName = 'SupID'
      Size = 10
    end
    object tblHutangNoBeli: TStringField
      FieldName = 'NoBeli'
    end
    object tblHutangTgl: TDateField
      FieldName = 'Tgl'
    end
    object tblHutangJtgl: TDateField
      FieldName = 'Jtgl'
    end
    object tblHutangVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object tblHutangTukar: TFMTBCDField
      FieldName = 'Tukar'
      Precision = 18
    end
    object tblHutangSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 28
    end
    object tblHutangKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object tblHutangUMuka: TFMTBCDField
      FieldName = 'UMuka'
      Precision = 28
    end
    object tblHutangTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object tblHutangcabID: TStringField
      FieldName = 'cabID'
      Size = 10
    end
    object tblHutangLACC: TStringField
      FieldName = 'LACC'
      FixedChar = True
      Size = 1
    end
    object tblHutangLACC_Tgl: TDateTimeField
      FieldName = 'LACC_Tgl'
    end
    object tblHutangLACC_By: TStringField
      FieldName = 'LACC_By'
      Size = 50
    end
  end
end
