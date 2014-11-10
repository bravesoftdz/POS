inherited LokasiRakForm: TLokasiRakForm
  Caption = 'Setting Lokasi Rak'
  ClientHeight = 386
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 43
    Height = 305
    ExplicitTop = 43
    ExplicitHeight = 305
    ClientRectBottom = 299
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 267
      inherited bvl2: TBevel
        Width = 380
        Height = 61
        ExplicitWidth = 380
        ExplicitHeight = 61
      end
      inherited bvl3: TBevel
        Top = 80
        Width = 380
        Height = 73
        ExplicitTop = 80
        ExplicitWidth = 380
        ExplicitHeight = 73
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
        Top = 120
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
        Top = 89
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
      object edtNamaFrom: TcxTextEdit
        Left = 258
        Top = 86
        Enabled = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 130
      end
      object edtNamaTo: TcxTextEdit
        Left = 258
        Top = 117
        Enabled = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 130
      end
      object btnAkhi: TcxButton
        Left = 231
        Top = 119
        Width = 27
        Height = 25
        Action = taTo
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAwal: TcxButton
        Left = 231
        Top = 88
        Width = 27
        Height = 25
        Action = taFrom
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtKodeFrom: TcxTextEdit
        Left = 172
        Top = 86
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        Width = 59
      end
      object edtKodeTo: TcxTextEdit
        Left = 172
        Top = 117
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
        Top = 155
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
        Top = 155
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
    ExplicitHeight = 38
    Height = 38
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
      Top = 5
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
      Top = 6
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
      Top = 5
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
  inherited cxGroupBox2: TcxGroupBox
    Top = 348
    ExplicitTop = 348
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 353
    ExplicitTop = 353
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
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 2
      Visible = False
    end
    object cxButton5: TcxButton
      Left = 239
      Top = 4
      Width = 75
      Height = 25
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
      Visible = False
    end
    object cxButton4: TcxButton
      Left = 316
      Top = 4
      Width = 75
      Height = 25
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 4
      Visible = False
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 38
    ExplicitTop = 38
  end
  inherited cxGrid1: TcxGrid
    Top = 43
    Height = 305
    ExplicitTop = 43
    ExplicitHeight = 305
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsLokasiRak
      object cxGrid1DBTableView1BRGID: TcxGridDBColumn
        Caption = 'NAMA BARANG'
        DataBinding.FieldName = 'BRGID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'BRGID'
        Properties.ListColumns = <
          item
            FieldName = 'Nama1'
          end>
        Properties.ListSource = dsItem
      end
      object cxGrid1DBTableView1RAKID: TcxGridDBColumn
        Caption = 'LOKASI'
        DataBinding.FieldName = 'RAKID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'RAKID'
        Properties.ListColumns = <
          item
            FieldName = 'keterangan'
          end>
        Properties.ListSource = dsRAk
      end
    end
  end
  inherited actlst1: TActionList
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
    object taLoadAll: TAction
      Caption = 'Tampilkan'
      OnExecute = taLoadAllExecute
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
    object taFrom: TAction
      Caption = '...'
      OnExecute = taFromExecute
    end
    object taTo: TAction
      Caption = '...'
      OnExecute = taToExecute
    end
    object taCariGudang: TAction
      Caption = '...'
      OnExecute = taCariGudangExecute
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object Golongan: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select GolID, Keterangan from pxgolongan order by  GolID asc'
    Parameters = <>
    Left = 16
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
  object Barang: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select BRGID, Nama1 from inbarang order by BrgID,Nama1 asc'
    Parameters = <>
    Left = 16
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
  object LokasiRak: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = LokasiRakAfterPost
    CommandText = 
      'select BRGID, GDGID, CabID, RAKID, TglU from inhisbaranggudangra' +
      'k'
    Parameters = <>
    Left = 16
    Top = 176
    object LokasiRakBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object LokasiRakGDGID: TStringField
      FieldName = 'GDGID'
      Size = 10
    end
    object LokasiRakCabID: TStringField
      FieldName = 'CabID'
      Size = 10
    end
    object LokasiRakRAKID: TStringField
      FieldName = 'RAKID'
      Size = 10
    end
    object LokasiRakTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 16
    Top = 224
  end
  object Merek: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select MRKID, KETERANGAN from pxmerek order by  MRKID Asc'
    Parameters = <>
    Left = 64
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
    CommandText = 'select JenisID, Keterangan  from pxjenis order by JenisId Asc'
    Parameters = <>
    Left = 64
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
    Left = 64
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
  object dsItem: TDataSource
    DataSet = Barang
    Left = 120
    Top = 131
  end
  object dsLokasiRak: TDataSource
    DataSet = LokasiRak
    Left = 120
    Top = 176
  end
  object sp_input_min_Max: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_Temp_lokasi_rak'
    Parameters = <
      item
        Name = 'tempgdg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = 'tempbrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = 'temprak'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'stattransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'tempcab'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 120
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
    Left = 168
    Top = 176
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
  end
  object sp_Tampil: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_Gudang_Rak'
    Parameters = <
      item
        Name = 'GDGTemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = ''
      end
      item
        Name = 'brgawal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'brgAkhir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'statall'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '0'
      end
      item
        Name = 'cari'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = ''
      end>
    Left = 168
    Top = 128
    object sp_TampilBRGID: TStringField
      FieldName = 'BRGID'
      ReadOnly = True
      Size = 30
    end
    object sp_TampilGDGID: TStringField
      FieldName = 'GDGID'
      ReadOnly = True
      Size = 10
    end
    object sp_TampilRakID: TStringField
      FieldName = 'RakID'
      ReadOnly = True
      Size = 10
    end
    object sp_TampilcabID: TStringField
      FieldName = 'cabID'
      ReadOnly = True
      Size = 10
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
    Left = 168
    Top = 80
  end
  object Rak: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'Select RAKID, keterangan From PXRak'
    Parameters = <>
    Left = 64
    Top = 80
    object RakRAKID: TStringField
      FieldName = 'RAKID'
      Size = 10
    end
    object Rakketerangan: TStringField
      FieldName = 'keterangan'
      Size = 30
    end
  end
  object dsRAk: TDataSource
    DataSet = Rak
    Left = 120
    Top = 80
  end
end
