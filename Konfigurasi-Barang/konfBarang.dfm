inherited konfigBarangForm: TkonfigBarangForm
  Caption = 'Form Konfigurasi Barang'
  ClientHeight = 459
  ClientWidth = 607
  ExplicitWidth = 615
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 69
    Width = 607
    Height = 352
    ClientRectBottom = 346
    ClientRectRight = 601
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 607
    ExplicitHeight = 64
    Height = 64
    Width = 607
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 79
      Height = 20
      Caption = 'Kode Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNama: TLabel
      Left = 112
      Top = 35
      Width = 81
      Height = 20
      Caption = 'Nama Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 94
      Top = 7
      Width = 4
      Height = 20
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edBarang: TEdit
      Left = 112
      Top = 7
      Width = 265
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edBarangKeyDown
    end
    object Button1: TButton
      Left = 376
      Top = 7
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 1
    end
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 421
    Width = 607
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 426
    Width = 607
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 64
    Width = 607
  end
  inherited cxGrid1: TcxGrid
    Top = 69
    Width = 607
    Height = 352
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dstblkonfbrg
      object cxGrid1DBTableView1NOUR: TcxGridDBColumn
        Caption = 'NO.'
        DataBinding.FieldName = 'NOUR'
        Width = 31
      end
      object cxGrid1DBTableView1BRGD: TcxGridDBColumn
        Caption = 'Barang'
        DataBinding.FieldName = 'BRGD'
        Width = 238
      end
      object cxGrid1DBTableView1GD: TcxGridDBColumn
        Caption = 'GUDANG'
        DataBinding.FieldName = 'GD'
        Width = 88
      end
      object cxGrid1DBTableView1STN3: TcxGridDBColumn
        DataBinding.FieldName = 'STN3'
        Width = 40
      end
      object cxGrid1DBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        Width = 42
      end
      object cxGrid1DBTableView1HSATUAN: TcxGridDBColumn
        DataBinding.FieldName = 'HSATUAN'
        Width = 166
      end
    end
  end
  inherited dscari: TDataSource
    Left = 40
    Top = 120
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object ConnTrading: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=Trading;PORT=3306"'
    ConnectionTimeout = 6000
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 40
    Top = 184
  end
  object tblGudang: TADOTable
    Connection = ConnTrading
    CursorType = ctStatic
    TableName = 'svinmgdg'
    Left = 120
    Top = 284
    object tblGudangGdg: TStringField
      FieldName = 'Gdg'
      Size = 3
    end
    object tblGudangNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object tblGudangTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object tblkonfigbrg: TADODataSet
    Connection = ConnTrading
    CursorType = ctStatic
    CommandText = 
      'select BRG, NOUR, BRGD, GD, STN3, QTY, HSATUAN, TGLU, Cab from s' +
      'vinmkbrg where brg=:kdBarang'
    Parameters = <
      item
        Name = 'kdBarang'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    Left = 118
    Top = 229
    object tblkonfigbrgBRG: TStringField
      FieldName = 'BRG'
      Size = 30
    end
    object tblkonfigbrgNOUR: TSmallintField
      FieldName = 'NOUR'
    end
    object tblkonfigbrgBRGD: TStringField
      FieldName = 'BRGD'
    end
    object tblkonfigbrgGD: TStringField
      FieldName = 'GD'
      Size = 2
    end
    object tblkonfigbrgSTN3: TStringField
      FieldName = 'STN3'
      Size = 5
    end
    object tblkonfigbrgQTY: TBCDField
      FieldName = 'QTY'
      Precision = 18
      Size = 8
    end
    object tblkonfigbrgHSATUAN: TBCDField
      FieldName = 'HSATUAN'
      Precision = 28
      Size = 8
    end
    object tblkonfigbrgTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
    object tblkonfigbrgCab: TStringField
      FieldName = 'Cab'
      Size = 5
    end
  end
  object spnour: TADOStoredProc
    Connection = ConnTrading
    CursorType = ctStatic
    ProcedureName = 'sp_nomorurutkonfigbrg'
    Parameters = <
      item
        Name = 'tempcab'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'tempbrg'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 57
    Top = 285
    object spnourhasil: TIntegerField
      FieldName = 'hasil'
      ReadOnly = True
    end
  end
  object dstblkonfbrg: TDataSource
    DataSet = tblkonfigbrg
    Left = 120
    Top = 176
  end
  object tblbarangcari: TADOTable
    Connection = ConnTrading
    CursorType = ctStatic
    Filter = 'lAktif='#39'YA'#39
    Filtered = True
    LockType = ltBatchOptimistic
    TableName = 'svinmbrg'
    Left = 88
    Top = 120
    object tblbarangcariBRG: TStringField
      DisplayWidth = 30
      FieldName = 'BRG'
      Size = 30
    end
    object tblbarangcariNama1: TStringField
      DisplayWidth = 40
      FieldName = 'Nama1'
      Size = 100
    end
    object tblbarangcariNama2: TStringField
      DisplayWidth = 40
      FieldName = 'Nama2'
      Visible = False
      Size = 100
    end
    object tblbarangcariJenis: TStringField
      DisplayWidth = 10
      FieldName = 'Jenis'
      Visible = False
      Size = 10
    end
    object tblbarangcariStn1: TStringField
      DisplayWidth = 5
      FieldName = 'Stn1'
      Visible = False
      Size = 5
    end
    object tblbarangcariStn2: TStringField
      DisplayWidth = 5
      FieldName = 'Stn2'
      Visible = False
      Size = 5
    end
    object tblbarangcariStn3: TStringField
      DisplayWidth = 5
      FieldName = 'Stn3'
      Visible = False
      Size = 5
    end
    object tblbarangcariMaxi: TBCDField
      DisplayWidth = 19
      FieldName = 'Maxi'
      Visible = False
      Precision = 18
      Size = 8
    end
    object tblbarangcariMini: TBCDField
      DisplayWidth = 19
      FieldName = 'Mini'
      Visible = False
      Precision = 18
      Size = 8
    end
    object tblbarangcariIsi1: TBCDField
      DisplayWidth = 19
      FieldName = 'Isi1'
      Visible = False
      Precision = 18
      Size = 8
    end
    object tblbarangcariIsi2: TBCDField
      DisplayWidth = 19
      FieldName = 'Isi2'
      Visible = False
      Precision = 18
      Size = 8
    end
    object tblbarangcariHpp: TBCDField
      DisplayWidth = 29
      FieldName = 'Hpp'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblbarangcarihbeli: TBCDField
      DisplayWidth = 29
      FieldName = 'hbeli'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblbarangcarihjual1: TBCDField
      DisplayWidth = 29
      FieldName = 'hjual1'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblbarangcarihjual2: TBCDField
      DisplayWidth = 29
      FieldName = 'hjual2'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblbarangcarihjual3: TBCDField
      DisplayWidth = 29
      FieldName = 'hjual3'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblbarangcarilks: TStringField
      DisplayWidth = 10
      FieldName = 'lks'
      Visible = False
      Size = 10
    end
    object tblbarangcarisup: TStringField
      DisplayWidth = 10
      FieldName = 'sup'
      Visible = False
      Size = 10
    end
    object tblbarangcarigol: TStringField
      DisplayWidth = 10
      FieldName = 'gol'
      Visible = False
      Size = 10
    end
    object tblbarangcarimerek: TStringField
      DisplayWidth = 10
      FieldName = 'merek'
      Visible = False
      Size = 10
    end
    object tblbarangcaritype: TStringField
      DisplayWidth = 10
      FieldName = 'type'
      Visible = False
      Size = 10
    end
    object tblbarangcarimodel: TStringField
      DisplayWidth = 5
      FieldName = 'model'
      Visible = False
      Size = 5
    end
    object tblbarangcariklink: TStringField
      DisplayWidth = 5
      FieldName = 'klink'
      Visible = False
      Size = 5
    end
    object tblbarangcaristatus: TSmallintField
      DisplayWidth = 10
      FieldName = 'status'
      Visible = False
    end
    object tblbarangcaribarcode: TStringField
      DisplayWidth = 50
      FieldName = 'barcode'
      Visible = False
      Size = 50
    end
    object tblbarangcarinamabar: TStringField
      DisplayWidth = 30
      FieldName = 'namabar'
      Visible = False
      Size = 30
    end
    object tblbarangcariberat: TBCDField
      DisplayWidth = 29
      FieldName = 'berat'
      Visible = False
      Precision = 28
      Size = 8
    end
    object tblbarangcarivol: TBCDField
      DisplayWidth = 29
      FieldName = 'vol'
      Visible = False
      Precision = 28
      Size = 8
    end
    object tblbarangcarislevel: TBCDField
      DisplayWidth = 29
      FieldName = 'slevel'
      Visible = False
      Precision = 28
      Size = 8
    end
    object tblbarangcarikuali: TStringField
      DisplayWidth = 10
      FieldName = 'kuali'
      Visible = False
      Size = 10
    end
    object tblbarangcariwrn: TStringField
      DisplayWidth = 10
      FieldName = 'wrn'
      Visible = False
      Size = 10
    end
    object tblbarangcarimtf: TStringField
      DisplayWidth = 10
      FieldName = 'mtf'
      Visible = False
      Size = 10
    end
    object tblbarangcarisize: TStringField
      DisplayWidth = 10
      FieldName = 'size'
      Visible = False
      Size = 10
    end
    object tblbarangcaritglu: TDateTimeField
      DisplayWidth = 18
      FieldName = 'tglu'
      Visible = False
    end
    object tblbarangcarilNonkonsinyasi: TStringField
      DisplayWidth = 5
      FieldName = 'lNonkonsinyasi'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object tblbarangcarilAktif: TStringField
      DisplayWidth = 2
      FieldName = 'lAktif'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object tblbarangcaricab: TStringField
      DisplayWidth = 10
      FieldName = 'cab'
      Visible = False
      Size = 10
    end
    object tblbarangcarilstatAll: TBooleanField
      DisplayWidth = 5
      FieldName = 'lstatAll'
      Visible = False
    end
    object tblbarangcariRak: TStringField
      DisplayWidth = 10
      FieldName = 'Rak'
      Visible = False
      Size = 10
    end
    object tblbarangcariKdHarga: TStringField
      DisplayWidth = 5
      FieldName = 'KdHarga'
      Visible = False
      Size = 5
    end
    object tblbarangcarihppjual: TBCDField
      DisplayWidth = 29
      FieldName = 'hppjual'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
    object tblbarangcaripersentjual: TBCDField
      DisplayWidth = 19
      FieldName = 'persentjual'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 8
    end
    object tblbarangcaripersentnilai: TBCDField
      DisplayWidth = 29
      FieldName = 'persentnilai'
      Visible = False
      DisplayFormat = '###,#0.00'
      Precision = 28
      Size = 8
    end
  end
end
