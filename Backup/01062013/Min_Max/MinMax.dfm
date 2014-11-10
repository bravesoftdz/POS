inherited MinMaxForm: TMinMaxForm
  Caption = 'Min dan Max Per Gudang'
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 46
    Height = 270
    ExplicitTop = 46
    ExplicitHeight = 270
    ClientRectBottom = 264
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 232
      inherited bvl2: TBevel
        Width = 376
        Height = 61
        ExplicitWidth = 376
        ExplicitHeight = 61
      end
      inherited bvl3: TBevel
        Top = 80
        Width = 376
        Height = 81
        ExplicitTop = 80
        ExplicitWidth = 376
        ExplicitHeight = 81
      end
      object lbl3: TLabel
        Left = 24
        Top = 20
        Width = 141
        Height = 20
        Caption = 'Diurutkan Berdasarkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTo: TLabel
        Left = 24
        Top = 128
        Width = 141
        Height = 20
        Caption = 'Diurutkan Berdasarkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFrom: TLabel
        Left = 25
        Top = 97
        Width = 141
        Height = 20
        Caption = 'Diurutkan Berdasarkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbUrut: TComboBox
        Left = 172
        Top = 17
        Width = 216
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = cbUrutChange
        Items.Strings = (
          'Barang'
          'Jenis'
          'Golongan'
          'Merek')
      end
      object chkAll: TcxCheckBox
        Left = 172
        Top = 46
        Caption = 'Tampilkan Semua'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Transparent = True
        Width = 145
      end
      object edtKodeFrom: TcxTextEdit
        Left = 172
        Top = 94
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 59
      end
      object btnAwal: TcxButton
        Left = 231
        Top = 96
        Width = 27
        Height = 25
        Action = taCariAwal
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNamaFrom: TcxTextEdit
        Left = 258
        Top = 94
        Enabled = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 130
      end
      object edtNamaTo: TcxTextEdit
        Left = 258
        Top = 125
        Enabled = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 130
      end
      object btnAkhi: TcxButton
        Left = 231
        Top = 127
        Width = 27
        Height = 25
        Action = taCariAkhir
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtKodeTo: TcxTextEdit
        Left = 172
        Top = 125
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 59
      end
      object btTampil: TcxButton
        Left = 172
        Top = 167
        Width = 87
        Height = 34
        Action = taLoadAll
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btBatal: TcxButton
        Left = 265
        Top = 167
        Width = 88
        Height = 34
        Action = taBatal
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitHeight = 41
    Height = 41
    object lbl1: TLabel
      Left = 8
      Top = 11
      Width = 49
      Height = 20
      Caption = 'Gudang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GudangID: TcxTextEdit
      Left = 117
      Top = 7
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 59
    end
    object cxButton7: TcxButton
      Left = 176
      Top = 9
      Width = 27
      Height = 25
      Action = taCariGudang
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GudangNama: TcxTextEdit
      Left = 204
      Top = 7
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 194
    end
  end
  inherited cxGroupBox3: TcxGroupBox
    object cxButton1: TcxButton
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Action = taLoad
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 85
      Top = 4
      Width = 75
      Height = 25
      Action = taTampil
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 162
      Top = 4
      Width = 75
      Height = 25
      Action = DataSetPost1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 316
      Top = 4
      Width = 75
      Height = 25
      Action = taCetak
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 4
    end
    object cxButton5: TcxButton
      Left = 239
      Top = 4
      Width = 75
      Height = 25
      Action = taHapus
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 41
    ExplicitTop = 41
  end
  inherited cxGrid1: TcxGrid
    Top = 46
    Height = 270
    ExplicitLeft = 8
    ExplicitTop = 282
    ExplicitHeight = 270
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsMinMax
      object cxGrid1DBTableView1BRGID: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'BRGID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'BRGID'
        Properties.ListColumns = <
          item
            FieldName = 'Nama1'
          end>
        Properties.ListSource = dsItem
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 290
      end
      object cxGrid1DBTableView1MIN: TcxGridDBColumn
        DataBinding.FieldName = 'MIN'
        HeaderAlignmentHorz = taRightJustify
        Width = 67
      end
      object cxGrid1DBTableView1MAX: TcxGridDBColumn
        DataBinding.FieldName = 'MAX'
        HeaderAlignmentHorz = taRightJustify
        Width = 67
      end
    end
  end
  inherited actlst1: TActionList
    inherited DataSetDelete1: TDataSetDelete
      DataSource = dsMinMax
    end
    object taLoad: TAction
      Caption = '&Load'
      OnExecute = taLoadExecute
    end
    object taTampil: TAction
      Caption = '&Tampil'
      OnExecute = taTampilExecute
    end
    object taCetak: TAction
      Caption = '&Cetak'
    end
    object taHapus: TAction
      Caption = '&Delete'
      OnExecute = taHapusExecute
    end
    object taCariGudang: TAction
      Caption = '...'
      OnExecute = taCariGudangExecute
    end
    object taCariAwal: TAction
      Caption = '...'
      OnExecute = taCariAwalExecute
    end
    object taCariAkhir: TAction
      Caption = '...'
      OnExecute = taCariAkhirExecute
    end
    object taLoadAll: TAction
      Caption = '&Tampilakan'
      OnExecute = taLoadAllExecute
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsMinMax
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Left = 56
    Top = 224
  end
  object Merek: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select MRKID, KETERANGAN from pxmerek order by Keterangan, MRKID' +
      ' Asc'
    Parameters = <>
    Left = 104
    Top = 224
    object MerekMRKID: TStringField
      FieldName = 'MRKID'
      Size = 10
    end
    object MerekKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
  end
  object Jenis: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select JenisID, Keterangan  from pxjenis order by Keterangan, Je' +
      'nisId Asc'
    Parameters = <>
    Left = 104
    Top = 176
    object JenisJenisID: TStringField
      FieldName = 'JenisID'
      Size = 10
    end
    object JenisKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Gudang: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select GdgID, Keterangan from pxgudang order by Keterangan, GDGI' +
      'D ASc'
    Parameters = <>
    Left = 104
    Top = 131
    object GudangGdgID: TStringField
      FieldName = 'GdgID'
      Size = 3
    end
    object GudangKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Barang: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select BRGID, Nama1 from inbarang order by Nama1, BrgID asc'
    Parameters = <>
    Left = 56
    Top = 130
    object BarangBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object BarangNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
  end
  object Golongan: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select GolID, Keterangan from pxgolongan order by keterangan, Go' +
      'lID asc'
    Parameters = <>
    Left = 56
    Top = 80
    object GolonganGolID: TStringField
      FieldName = 'GolID'
      Size = 10
    end
    object GolonganKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object dsMinMax: TDataSource
    DataSet = MinMax
    Left = 160
    Top = 176
  end
  object MinMax: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = MinMaxAfterPost
    CommandText = 
      'select BRGID, GDGID, CabID, MIN, MAX, TglU from inhisbaranggudan' +
      'g'
    Parameters = <>
    Left = 56
    Top = 176
    object MinMaxBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object MinMaxGDGID: TStringField
      FieldName = 'GDGID'
      Size = 10
    end
    object MinMaxCabID: TStringField
      FieldName = 'CabID'
      Size = 10
    end
    object MinMaxMIN: TFMTBCDField
      FieldName = 'MIN'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object MinMaxMAX: TFMTBCDField
      FieldName = 'MAX'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object MinMaxTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsItem: TDataSource
    DataSet = Barang
    Left = 160
    Top = 131
  end
  object sp_Tampil: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_Gudang_Min_Max'
    Parameters = <
      item
        Name = 'BrgIDAwal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'BrgIDAkhir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'GDGIDTemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'StatAll'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = 'cari'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end>
    Left = 208
    Top = 128
    object sp_TampilBRGID: TStringField
      FieldName = 'BRGID'
      ReadOnly = True
      Size = 30
    end
    object sp_TampilGDGID: TStringField
      FieldName = 'GDGID'
      ReadOnly = True
      Size = 100
    end
    object sp_TampilCabID: TStringField
      FieldName = 'CabID'
      ReadOnly = True
      Size = 10
    end
    object sp_TampilMIN: TFMTBCDField
      FieldName = 'MIN'
      ReadOnly = True
      Precision = 18
    end
    object sp_TampilMAX: TFMTBCDField
      FieldName = 'MAX'
      ReadOnly = True
      Precision = 18
    end
  end
  object sp_input_min_Max: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_min_max'
    Parameters = <
      item
        Name = 'tempgdgID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = 'tempcabID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'tempMin'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 18
        Value = Null
      end
      item
        Name = 'tempMax'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 18
        Value = Null
      end
      item
        Name = 'tempbrgID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = 'stattransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 160
    Top = 224
  end
  object sp_find_table: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    ProcedureName = 'px_find_table'
    Parameters = <
      item
        Name = 'brgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'CabID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'GdgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'Table_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 208
    Top = 176
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
  end
  object sp_delete_all: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_delete_all'
    Parameters = <
      item
        Name = 'Table_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = 'Stat_'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = 'BRGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end
      item
        Name = 'GDGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end>
    Left = 208
    Top = 80
  end
end
