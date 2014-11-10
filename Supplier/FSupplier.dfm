inherited fSupplierForm: TfSupplierForm
  Caption = ''
  ClientHeight = 411
  ClientWidth = 642
  Color = 15985897
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 650
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 8
    Top = 6
    Width = 13
    Height = 20
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel [1]
    Left = 8
    Top = 40
    Width = 35
    Height = 20
    Caption = 'Nama'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited cxPageControl1: TcxPageControl
    Top = 69
    Width = 642
    Height = 310
    TabOrder = 2
    OnClick = cxPageControl1Click
    ExplicitLeft = 0
    ExplicitTop = 69
    ExplicitWidth = 642
    ExplicitHeight = 310
    ClientRectBottom = 310
    ClientRectRight = 642
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'Informasi Standart'
      ExplicitTop = 24
      ExplicitWidth = 642
      ExplicitHeight = 286
      object lbl3: TLabel
        Left = 8
        Top = 8
        Width = 43
        Height = 20
        Caption = 'Alamat'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bvl1: TBevel
        Left = 3
        Top = 69
        Width = 635
        Height = 5
        Shape = bsTopLine
      end
      object lbl4: TLabel
        Left = 8
        Top = 77
        Width = 54
        Height = 20
        Caption = 'NO. Telp'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 8
        Top = 107
        Width = 21
        Height = 20
        Caption = 'Fax'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bvl2: TBevel
        Left = 3
        Top = 135
        Width = 635
        Height = 5
        Shape = bsTopLine
      end
      object lbl6: TLabel
        Left = 8
        Top = 144
        Width = 38
        Height = 20
        Caption = 'NPWP'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 8
        Top = 173
        Width = 108
        Height = 20
        Caption = 'Term Of Payment'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 8
        Top = 202
        Width = 39
        Height = 20
        Caption = 'Valuta'
        FocusControl = DBEdit9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 8
        Top = 231
        Width = 48
        Height = 20
        Caption = 'Wilayah'
        FocusControl = DBEdit10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 199
        Top = 173
        Width = 25
        Height = 20
        Caption = 'Hari'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 8
        Top = 257
        Width = 70
        Height = 20
        Caption = 'NON AKTIF'
        FocusControl = DBEdit10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 128
        Top = 8
        Width = 500
        Height = 28
        CharCase = ecUpperCase
        DataField = 'AL1'
        DataSource = SupplierForm.dsSupplier
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 128
        Top = 38
        Width = 500
        Height = 28
        CharCase = ecUpperCase
        DataField = 'AL2'
        DataSource = SupplierForm.dsSupplier
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 128
        Top = 74
        Width = 256
        Height = 28
        CharCase = ecUpperCase
        DataField = 'Telp'
        DataSource = SupplierForm.dsSupplier
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 128
        Top = 104
        Width = 256
        Height = 28
        CharCase = ecUpperCase
        DataField = 'Fax'
        DataSource = SupplierForm.dsSupplier
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 129
        Top = 141
        Width = 199
        Height = 28
        CharCase = ecUpperCase
        DataField = 'NPWP'
        DataSource = SupplierForm.dsSupplier
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 129
        Top = 170
        Width = 64
        Height = 28
        CharCase = ecUpperCase
        DataField = 'Term'
        DataSource = SupplierForm.dsSupplier
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnExit = DBEdit8Exit
      end
      object DBEdit9: TDBEdit
        Left = 334
        Top = 199
        Width = 69
        Height = 28
        Color = clSilver
        DataField = 'valID'
        DataSource = SupplierForm.dsSupplier
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 334
        Top = 227
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'wilID'
        DataSource = SupplierForm.dsSupplier
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 129
        Top = 199
        DataBinding.DataField = 'valID'
        DataBinding.DataSource = SupplierForm.dsSupplier
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'VALID'
        Properties.ListColumns = <
          item
            FieldName = 'KETERANGAN'
          end>
        Properties.ListSource = SupplierForm.dsValuta
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 205
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 129
        Top = 227
        DataBinding.DataField = 'wilID'
        DataBinding.DataSource = SupplierForm.dsSupplier
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'WilayahID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = SupplierForm.dsWilayah
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 205
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 129
        Top = 259
        DataBinding.DataField = 'LNOAktif'
        DataBinding.DataSource = SupplierForm.dsSupplier
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'T'
          'F')
        TabOrder = 8
        Width = 121
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Info Person'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 286
        Align = alClient
        TabOrder = 0
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
          DataController.DataSource = dsPerson
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
          object cxGrid1DBTableView1ContacID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'ContacID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 74
          end
          object cxGrid1DBTableView1Nama: TcxGridDBColumn
            Caption = 'NAMA'
            DataBinding.FieldName = 'Nama'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 196
          end
          object cxGrid1DBTableView1jabatan: TcxGridDBColumn
            Caption = 'JABATAN'
            DataBinding.FieldName = 'jabatan'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 180
          end
          object cxGrid1DBTableView1Alamat: TcxGridDBColumn
            Caption = 'ALAMAT'
            DataBinding.FieldName = 'Alamat'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 213
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Info Rekening'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 642
        Height = 286
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Office2010Blue'
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = dsRekening
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
          object cxGridDBTableView1norekID: TcxGridDBColumn
            Caption = 'NO. REKENING'
            DataBinding.FieldName = 'norekID'
            Width = 228
          end
          object cxGridDBTableView1Bank: TcxGridDBColumn
            Caption = 'NAMA BANK'
            DataBinding.FieldName = 'Bank'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 241
          end
          object cxGridDBTableView1ket: TcxGridDBColumn
            Caption = 'KETERANGAN'
            DataBinding.FieldName = 'ket'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Width = 194
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 379
    Width = 642
    TabOrder = 7
    ExplicitTop = 379
    ExplicitWidth = 642
    inherited btn1: TButton
      Left = 485
      Anchors = [akTop, akRight]
      ExplicitLeft = 485
    end
    inherited btn2: TButton
      Left = 564
      Anchors = [akTop, akRight]
      ExplicitLeft = 564
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 128
    Top = 1
    Width = 161
    Height = 28
    CharCase = ecUpperCase
    DataField = 'SUPID'
    DataSource = SupplierForm.dsSupplier
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [5]
    Left = 128
    Top = 35
    Width = 500
    Height = 28
    CharCase = ecUpperCase
    DataField = 'Nama'
    DataSource = SupplierForm.dsSupplier
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  inherited actlst1: TActionList
    inherited DataSetPost1: TDataSetPost
      DataSource = SupplierForm.dsSupplier
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SupplierForm.dsSupplier
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
  object person: TADODataSet
    Connection = SupplierForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select ContacID, SupID, Nama, Tglu, jabatan, Alamat from apsuppl' +
      'iercontact'#13#10
    CommandTimeout = 300
    DataSource = SupplierForm.dsSupplier
    IndexFieldNames = 'SupID'
    MasterFields = 'SUPID'
    Parameters = <>
    Left = 472
    Top = 232
    object personContacID: TStringField
      FieldName = 'ContacID'
      Size = 10
    end
    object personSupID: TStringField
      FieldName = 'SupID'
      Size = 10
    end
    object personNama: TStringField
      FieldName = 'Nama'
      Size = 50
    end
    object personTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object personjabatan: TStringField
      FieldName = 'jabatan'
      Size = 50
    end
    object personAlamat: TStringField
      FieldName = 'Alamat'
      Size = 50
    end
  end
  object Rekening: TADODataSet
    Connection = SupplierForm.connTrading
    CursorType = ctStatic
    CommandText = 'select norekID, supID, ket, tglU, Bank from apsupplierrekening'#13#10
    CommandTimeout = 300
    DataSource = SupplierForm.dsSupplier
    IndexFieldNames = 'supID'
    MasterFields = 'SUPID'
    Parameters = <>
    Left = 512
    Top = 232
    object RekeningnorekID: TStringField
      FieldName = 'norekID'
      Size = 50
    end
    object RekeningsupID: TStringField
      FieldName = 'supID'
      Size = 10
    end
    object Rekeningket: TStringField
      FieldName = 'ket'
      Size = 50
    end
    object RekeningtglU: TDateTimeField
      FieldName = 'tglU'
    end
    object RekeningBank: TStringField
      FieldName = 'Bank'
      Size = 50
    end
  end
  object dsPerson: TDataSource
    DataSet = person
    Left = 472
    Top = 280
  end
  object dsRekening: TDataSource
    DataSet = Rekening
    Left = 512
    Top = 280
  end
  object sp_kode_auto: TADOStoredProc
    Connection = SupplierForm.connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_kode_auto'
    Parameters = <
      item
        Name = 'table_'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = 'Notemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end>
    Left = 424
    Top = 280
    object sp_kode_autohasil: TWideStringField
      FieldName = 'hasil'
      ReadOnly = True
      Size = 255
    end
  end
end
