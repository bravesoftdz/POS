inherited SaldoAwalBarangForm: TSaldoAwalBarangForm
  Caption = 'Saldo Awal Barang Form'
  ClientHeight = 413
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 46
    Height = 329
    ExplicitTop = 46
    ExplicitHeight = 329
    ClientRectBottom = 323
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'Load'
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 291
      inherited bvl1: TBevel
        Top = -4
        Height = 285
        ExplicitTop = -4
        ExplicitHeight = 285
      end
      inherited bvl2: TBevel
        Width = 377
        Height = 61
        ExplicitWidth = 377
        ExplicitHeight = 61
      end
      inherited bvl3: TBevel
        Top = 80
        Width = 377
        Height = 81
        ExplicitTop = 80
        ExplicitWidth = 377
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
        OnClick = chkAllClick
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
      object btnAwal: TcxButton
        Left = 231
        Top = 96
        Width = 27
        Height = 25
        Action = taFromCari
        Caption = '...'
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
      object btnAkhi: TcxButton
        Left = 231
        Top = 127
        Width = 27
        Height = 25
        Action = taToCari
        Caption = '...'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btTampil: TcxButton
        Left = 172
        Top = 167
        Width = 87
        Height = 34
        Action = taLoadAll
        Caption = '&Tampilkan'
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
      Caption = '...'
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
    Top = 375
    ExplicitTop = 375
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 380
    ExplicitTop = 380
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
      Left = 239
      Top = 4
      Width = 75
      Height = 25
      Action = taCetak
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
    end
    object cxButton5: TcxButton
      Left = 316
      Top = 4
      Width = 75
      Height = 25
      Action = taCetak
      Caption = '&Hapus'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 4
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 41
    ExplicitTop = 41
  end
  inherited cxGrid1: TcxGrid
    Top = 46
    Height = 329
    ExplicitTop = 46
    ExplicitHeight = 329
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsOpname
      object cxGrid1DBTableView1BRGID: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'BRGID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'BRGID'
        Properties.ListColumns = <
          item
            FieldName = 'Nama1'
          end>
        Properties.ListSource = dsItem
        Width = 129
      end
      object cxGrid1DBTableView1STN: TcxGridDBColumn
        Caption = 'STN'
        DataBinding.FieldName = 'NSTN'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'stn'
        Properties.ListColumns = <
          item
            FieldName = 'stn'
          end>
        Properties.ListSource = ds_tampil_Satuan
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGrid1DBTableView1HPOKOK: TcxGridDBColumn
        DataBinding.FieldName = 'HPOKOK'
        HeaderAlignmentHorz = taRightJustify
        Width = 128
      end
      object cxGrid1DBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taRightJustify
        Width = 48
      end
      object cxGrid1DBTableView1POSISI: TcxGridDBColumn
        DataBinding.FieldName = 'POSISI'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        Width = 79
      end
    end
  end
  inherited actlst1: TActionList
    Left = 136
    Top = 177
    object taLoad: TAction
      Caption = '&Load'
      OnExecute = taLoadExecute
    end
    object taTampil: TAction
      Caption = '&Tampil'
      OnExecute = taTampilExecute
    end
    object taHapus: TAction
      Caption = '&Hapus'
    end
    object taCetak: TAction
      Caption = '&Cetak'
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
    object taFromCari: TAction
      Caption = 'Awal'
      OnExecute = taFromCariExecute
    end
    object taToCari: TAction
      Caption = 'Akhir'
      OnExecute = taToCariExecute
    end
    object taLoadAll: TAction
      Caption = 'taLoadAll'
      OnExecute = taLoadAllExecute
    end
    object taCariGudang: TAction
      Caption = 'taCariGudang'
      OnExecute = taCariGudangExecute
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = dsOpname
    end
  end
  object Opname: TADODataSet [8]
    Connection = connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = OpnameAfterPost
    OnNewRecord = OpnameNewRecord
    CommandText = 
      'select GDGID, BRGID, CabID, NOMOR, STN, NSTN, HPOKOK, '#13#10'QTY, POS' +
      'ISI, Create_id, Create_tgl, Modify_id, modify_tgl,'#13#10'bukti, lacc,' +
      ' Create_IdAcc, Create_TglAcc '#13#10'from inhisbarangopname'
    Parameters = <>
    Left = 32
    Top = 224
    object OpnameGDGID: TStringField
      FieldName = 'GDGID'
      Size = 2
    end
    object OpnameBRGID: TStringField
      FieldName = 'BRGID'
      OnValidate = OpnameBRGIDValidate
      Size = 30
    end
    object OpnameCabID: TStringField
      FieldName = 'CabID'
      Size = 10
    end
    object OpnameNOMOR: TSmallintField
      FieldName = 'NOMOR'
    end
    object OpnameSTN: TStringField
      FieldName = 'STN'
      Size = 1
    end
    object OpnameNSTN: TStringField
      FieldName = 'NSTN'
      OnValidate = OpnameNSTNValidate
      Size = 5
    end
    object OpnameHPOKOK: TFMTBCDField
      FieldName = 'HPOKOK'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object OpnameQTY: TFMTBCDField
      FieldName = 'QTY'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object OpnamePOSISI: TDateField
      FieldName = 'POSISI'
    end
    object OpnameCreate_id: TStringField
      FieldName = 'Create_id'
      Size = 10
    end
    object OpnameCreate_tgl: TDateTimeField
      FieldName = 'Create_tgl'
    end
    object OpnameModify_id: TStringField
      FieldName = 'Modify_id'
      Size = 10
    end
    object Opnamemodify_tgl: TDateTimeField
      FieldName = 'modify_tgl'
    end
    object Opnamebukti: TStringField
      FieldName = 'bukti'
      Size = 5
    end
    object Opnamelacc: TStringField
      FieldName = 'lacc'
      FixedChar = True
      Size = 1
    end
    object OpnameCreate_IdAcc: TStringField
      FieldName = 'Create_IdAcc'
      Size = 10
    end
    object OpnameCreate_TglAcc: TDateTimeField
      FieldName = 'Create_TglAcc'
    end
  end
  object Jenis: TADODataSet [9]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select JenisID, Keterangan  from pxjenis order by Keterangan, Je' +
      'nisId Asc'
    Parameters = <>
    Left = 80
    Top = 224
    object JenisJenisID: TStringField
      FieldName = 'JenisID'
      Size = 10
    end
    object JenisKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Merek: TADODataSet [10]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select MRKID, KETERANGAN from pxmerek order by Keterangan, MRKID' +
      ' Asc'
    Parameters = <>
    Left = 80
    Top = 280
    object MerekMRKID: TStringField
      FieldName = 'MRKID'
      Size = 10
    end
    object MerekKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
  end
  object Golongan: TADODataSet [11]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select GolID, Keterangan from pxgolongan order by keterangan, Go' +
      'lID asc'
    Parameters = <>
    Left = 32
    Top = 128
    object GolonganGolID: TStringField
      FieldName = 'GolID'
      Size = 10
    end
    object GolonganKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Barang: TADODataSet [12]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select BRGID, Nama1 from inbarang order by Nama1, BrgID asc'
    Parameters = <>
    Left = 32
    Top = 178
    object BarangBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object BarangNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
  end
  object connTrading: TADOConnection [13]
    CommandTimeout = 3000
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Left = 32
    Top = 280
  end
  object Gudang: TADODataSet [14]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select GdgID, Keterangan from pxgudang order by Keterangan, GDGI' +
      'D ASc'
    Parameters = <>
    Left = 80
    Top = 179
    object GudangGdgID: TStringField
      FieldName = 'GdgID'
      Size = 3
    end
    object GudangKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object dsGudang: TDataSource [15]
    DataSet = Gudang
    Left = 136
    Top = 224
  end
  inherited XPManifest1: TXPManifest
    Left = 136
    Top = 280
  end
  inherited ShellResources1: TShellResources
    Left = 80
    Top = 128
  end
  object dsOpname: TDataSource [18]
    DataSet = Opname
    Left = 136
    Top = 128
  end
  object sp_Tampil: TADOStoredProc [19]
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_opname'
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
    Left = 200
    Top = 128
    object sp_TampilNOMOR: TLargeintField
      FieldName = 'NOMOR'
      ReadOnly = True
    end
    object sp_TampilBRGID: TStringField
      FieldName = 'BRGID'
      ReadOnly = True
      Size = 30
    end
    object sp_TampilNSTN: TStringField
      FieldName = 'NSTN'
      ReadOnly = True
      Size = 5
    end
    object sp_TampilHPOKOK: TFMTBCDField
      FieldName = 'HPOKOK'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilQTY: TFMTBCDField
      FieldName = 'QTY'
      ReadOnly = True
      Precision = 18
    end
    object sp_TampilPOSISI: TDateTimeField
      FieldName = 'POSISI'
      ReadOnly = True
    end
    object sp_TampilGDGID: TStringField
      FieldName = 'GDGID'
      ReadOnly = True
      Size = 3
    end
  end
  object dsItem: TDataSource [20]
    DataSet = Barang
    Left = 200
    Top = 176
  end
  object sp_tampil_satuan: TADOStoredProc [21]
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_satuan'
    Parameters = <
      item
        Name = 'BRGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end>
    Left = 264
    Top = 128
    object sp_tampil_satuanBRGID: TStringField
      FieldName = 'BRGID'
      ReadOnly = True
      Size = 30
    end
    object sp_tampil_satuanstn: TStringField
      FieldName = 'stn'
      ReadOnly = True
      Size = 5
    end
    object sp_tampil_satuanISI: TFMTBCDField
      FieldName = 'ISI'
      ReadOnly = True
      Precision = 18
    end
    object sp_tampil_satuanstn_: TLargeintField
      FieldName = 'stn_'
      ReadOnly = True
    end
  end
  object ds_tampil_Satuan: TDataSource [22]
    DataSet = sp_tampil_satuan
    Left = 376
    Top = 216
  end
  object sp_find_satuan_: TADOStoredProc [23]
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_satuan_'
    Parameters = <
      item
        Name = 'BRGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'stn_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end>
    Left = 352
    Top = 128
    object sp_find_satuan_BRGID: TStringField
      FieldName = 'BRGID'
      ReadOnly = True
      Size = 30
    end
    object sp_find_satuan_stn: TStringField
      FieldName = 'stn'
      ReadOnly = True
      Size = 5
    end
    object sp_find_satuan_ISI: TFMTBCDField
      FieldName = 'ISI'
      ReadOnly = True
      Precision = 18
    end
    object sp_find_satuan_stn_: TLargeintField
      FieldName = 'stn_'
      ReadOnly = True
    end
  end
  object sp_no_urut_opname: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_nomor_urut_opname'
    Parameters = <
      item
        Name = 'GdgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'cabID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end>
    Left = 264
    Top = 176
    object sp_no_urut_opnamehasil: TIntegerField
      FieldName = 'hasil'
      ReadOnly = True
    end
  end
  object sp_input_opname: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_opname'
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
        Name = 'tempnstn'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'temphpokok'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = Null
      end
      item
        Name = 'tempqty'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 18
        Value = Null
      end
      item
        Name = 'tempposisi'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'tempcreateid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'tempcreatetgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'tempmodify_id'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'tempmodify_tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
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
      end
      item
        Name = 'tempnomor'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 264
    Top = 224
  end
  object sp_find_table: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
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
    Left = 200
    Top = 224
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
  end
end
