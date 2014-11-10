inherited HBeliForm: THBeliForm
  Caption = 'Setting Harga Beli'
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 311
    ExplicitTop = 5
    ExplicitHeight = 311
    ClientRectBottom = 305
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 273
      inherited bvl2: TBevel
        Width = 379
        Height = 61
        ExplicitWidth = 379
        ExplicitHeight = 61
      end
      inherited bvl3: TBevel
        Top = 80
        Width = 379
        Height = 81
        ExplicitTop = 80
        ExplicitWidth = 379
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
        TabOrder = 3
        Width = 59
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
        Top = 96
        Width = 27
        Height = 25
        Action = taCariAwal
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
        TabOrder = 6
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
        TabOrder = 7
        Width = 130
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
    ExplicitHeight = 0
    Height = 0
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
    object cxButton5: TcxButton
      Left = 239
      Top = 4
      Width = 75
      Height = 25
      Action = TaHapus
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
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
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Height = 311
    ExplicitLeft = 22
    ExplicitTop = 245
    ExplicitHeight = 311
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsHBeli
      object cxGrid1DBTableView1BrgID: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'BrgID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
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
        Width = 225
      end
      object cxGrid1DBTableView1hbeli: TcxGridDBColumn
        Caption = 'Harga Beli'
        DataBinding.FieldName = 'hbeli'
        HeaderAlignmentHorz = taRightJustify
        Width = 105
      end
      object cxGrid1DBTableView1hpp: TcxGridDBColumn
        Caption = 'HPP'
        DataBinding.FieldName = 'hpp'
        HeaderAlignmentHorz = taRightJustify
        Width = 94
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
    object TaHapus: TAction
      Caption = '&Hapus'
      OnExecute = TaHapusExecute
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
      Caption = '&Tampilkan'
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
  object dsItem: TDataSource
    DataSet = Barang
    Left = 160
    Top = 131
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
  object HBeli: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = HBeliAfterPost
    CommandText = 'select BrgID, cabID, hbeli, hpp, tglu from inhisbaranghbeli'
    Parameters = <>
    Left = 56
    Top = 176
    object HBeliBrgID: TStringField
      FieldName = 'BrgID'
      Size = 30
    end
    object HBelicabID: TStringField
      FieldName = 'cabID'
      Size = 10
    end
    object HBelihbeli: TFMTBCDField
      FieldName = 'hbeli'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HBelihpp: TFMTBCDField
      FieldName = 'hpp'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HBelitglu: TDateTimeField
      FieldName = 'tglu'
    end
  end
  object dsHBeli: TDataSource
    DataSet = HBeli
    Left = 160
    Top = 176
  end
  object sp_Tampil: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_Harga_Beli'
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
    object sp_TampilCabID: TStringField
      FieldName = 'CabID'
      ReadOnly = True
      Size = 10
    end
    object sp_TampilHBeli: TFMTBCDField
      FieldName = 'HBeli'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilHPP: TFMTBCDField
      FieldName = 'HPP'
      ReadOnly = True
      Precision = 28
    end
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
  object sp_input_harga_beli: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_harga_beli'
    Parameters = <
      item
        Name = 'cabID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'hbeli_'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 28
      end
      item
        Name = 'hpp_'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 8
        Precision = 18
      end
      item
        Name = 'brgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'stattransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
      end>
    Left = 160
    Top = 224
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
