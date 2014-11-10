inherited BarangForm: TBarangForm
  Caption = 'Modul Barang'
  ClientHeight = 376
  ClientWidth = 547
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 555
  ExplicitHeight = 410
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Width = 547
    Height = 366
    ExplicitTop = 5
    ExplicitWidth = 547
    ExplicitHeight = 366
    ClientRectBottom = 360
    ClientRectRight = 541
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 532
      ExplicitHeight = 328
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 547
    ExplicitHeight = 0
    Height = 0
    Width = 547
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 371
    ExplicitTop = 371
    ExplicitWidth = 547
    Width = 547
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 376
    ExplicitTop = 376
    ExplicitWidth = 547
    ExplicitHeight = 0
    Height = 0
    Width = 547
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
    ExplicitWidth = 547
    Width = 547
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Width = 547
    Height = 366
    ExplicitTop = 5
    ExplicitWidth = 547
    ExplicitHeight = 366
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsBarang
      object cxGrid1DBTableView1BRGID: TcxGridDBColumn
        Caption = 'BRG. ID'
        DataBinding.FieldName = 'BRGID'
        HeaderAlignmentHorz = taCenter
        Width = 94
      end
      object cxGrid1DBTableView1Nama1: TcxGridDBColumn
        Caption = 'Nama Barang'
        DataBinding.FieldName = 'Nama1'
        Width = 292
      end
      object cxGrid1DBTableView1lAktif: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'lAktif'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        HeaderAlignmentHorz = taCenter
        Width = 38
      end
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
    Left = 136
    Top = 104
  end
  object Barang: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    AfterInsert = BarangAfterInsert
    BeforeEdit = BarangBeforeEdit
    AfterEdit = BarangAfterEdit
    CommandText = 
      'select BRGID, Nama1, Nama2, Jenis, Stn1, Stn2, Stn3, '#13#10'Maxi, Min' +
      'i, Isi1, Isi2, Hpp, hbeli, hjual1, hjual2, hjual3, '#13#10'lks, sup, g' +
      'ol, merek, type, model, klink, status, barcode, '#13#10'namabar, berat' +
      ', vol, slevel, kuali, wrn, mtf, size, tglu, '#13#10'lNonkonsinyasi, lA' +
      'ktif, cab, lstatAll from inbarang'#13#10'order by Nama1, BrgID asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object BarangBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object BarangNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
    object BarangNama2: TStringField
      FieldName = 'Nama2'
      Size = 100
    end
    object BarangJenis: TStringField
      FieldName = 'Jenis'
      Size = 10
    end
    object BarangStn1: TStringField
      FieldName = 'Stn1'
      Size = 5
    end
    object BarangStn2: TStringField
      FieldName = 'Stn2'
      Size = 5
    end
    object BarangStn3: TStringField
      FieldName = 'Stn3'
      Size = 5
    end
    object BarangMaxi: TFMTBCDField
      FieldName = 'Maxi'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object BarangMini: TFMTBCDField
      FieldName = 'Mini'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object BarangIsi1: TFMTBCDField
      FieldName = 'Isi1'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object BarangIsi2: TFMTBCDField
      FieldName = 'Isi2'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object BarangHpp: TFMTBCDField
      FieldName = 'Hpp'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object Baranghbeli: TFMTBCDField
      FieldName = 'hbeli'
      OnValidate = BaranghbeliValidate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object Baranghjual1: TFMTBCDField
      FieldName = 'hjual1'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object Baranghjual2: TFMTBCDField
      FieldName = 'hjual2'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object Baranghjual3: TFMTBCDField
      FieldName = 'hjual3'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object Baranglks: TStringField
      FieldName = 'lks'
      Size = 10
    end
    object Barangsup: TStringField
      FieldName = 'sup'
      Size = 10
    end
    object Baranggol: TStringField
      FieldName = 'gol'
      Size = 10
    end
    object Barangmerek: TStringField
      FieldName = 'merek'
      Size = 10
    end
    object Barangtype: TStringField
      FieldName = 'type'
      Size = 10
    end
    object Barangmodel: TStringField
      FieldName = 'model'
      Size = 5
    end
    object Barangklink: TStringField
      FieldName = 'klink'
      Size = 5
    end
    object Barangstatus: TSmallintField
      FieldName = 'status'
    end
    object Barangbarcode: TStringField
      FieldName = 'barcode'
      Size = 50
    end
    object Barangnamabar: TStringField
      FieldName = 'namabar'
      Size = 30
    end
    object Barangberat: TFMTBCDField
      FieldName = 'berat'
      Precision = 28
    end
    object Barangvol: TFMTBCDField
      FieldName = 'vol'
      Precision = 28
    end
    object Barangslevel: TFMTBCDField
      FieldName = 'slevel'
      Precision = 28
    end
    object Barangkuali: TStringField
      FieldName = 'kuali'
      Size = 10
    end
    object Barangwrn: TStringField
      FieldName = 'wrn'
      Size = 10
    end
    object Barangmtf: TStringField
      FieldName = 'mtf'
      Size = 10
    end
    object Barangsize: TStringField
      FieldName = 'size'
      Size = 10
    end
    object Barangtglu: TDateTimeField
      FieldName = 'tglu'
    end
    object BaranglNonkonsinyasi: TStringField
      FieldName = 'lNonkonsinyasi'
      FixedChar = True
      Size = 2
    end
    object BaranglAktif: TStringField
      FieldName = 'lAktif'
      FixedChar = True
      Size = 2
    end
    object Barangcab: TStringField
      FieldName = 'cab'
      Size = 10
    end
    object BaranglstatAll: TBooleanField
      FieldName = 'lstatAll'
    end
  end
  object dsBarang: TDataSource
    DataSet = Barang
    Left = 192
    Top = 160
  end
  object sp_cek_profit_System: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_cek_harga_jual'
    Parameters = <
      item
        Name = 'kode_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 272
    Top = 160
    object sp_cek_profit_SystemH1: TFMTBCDField
      FieldName = 'H1'
      Precision = 28
    end
    object sp_cek_profit_SystemH2: TFMTBCDField
      FieldName = 'H2'
      Precision = 28
    end
    object sp_cek_profit_SystemH3: TFMTBCDField
      FieldName = 'H3'
      Precision = 28
    end
  end
end
