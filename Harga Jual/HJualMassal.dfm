inherited HJualMassalForm: THJualMassalForm
  Caption = 'Setting Harga Jual Secara Massal'
  ClientHeight = 377
  ClientWidth = 600
  FormStyle = fsNormal
  OnCreate = FormCreate
  ExplicitWidth = 608
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 0
    Width = 600
    Height = 345
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 600
    ExplicitHeight = 345
    ClientRectBottom = 345
    ClientRectRight = 600
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'Setting Harga'
      ExplicitTop = 24
      ExplicitWidth = 600
      ExplicitHeight = 321
      object bvl3: TBevel
        Left = 16
        Top = 112
        Width = 569
        Height = 68
      end
      object lblFrom: TLabel
        Left = 25
        Top = 119
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
        Top = 150
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
      object lbl8: TLabel
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
      object bvl2: TBevel
        Left = 16
        Top = 13
        Width = 569
        Height = 93
      end
      object bvl1: TBevel
        Left = 16
        Top = 187
        Width = 569
        Height = 128
      end
      object lbl1: TLabel
        Left = 24
        Top = 196
        Width = 80
        Height = 20
        Caption = 'Jenis Proses'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 24
        Top = 225
        Width = 86
        Height = 20
        Caption = 'Kenaikan Dari'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 24
        Top = 254
        Width = 28
        Height = 20
        Caption = 'Nilai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 24
        Top = 283
        Width = 74
        Height = 20
        Caption = 'Pembulatan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 25
        Top = 54
        Width = 73
        Height = 20
        Caption = 'Jenis Harga'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAwal: TcxButton
        Left = 344
        Top = 118
        Width = 27
        Height = 25
        Action = taCariKodeAwal
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAkhi: TcxButton
        Left = 344
        Top = 149
        Width = 27
        Height = 25
        Action = taCariKodeAkhir
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
      object edtKodeTo: TcxTextEdit
        Left = 172
        Top = 147
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 172
      end
      object edtKodeFrom: TcxTextEdit
        Left = 172
        Top = 116
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 172
      end
      object cburut: TComboBox
        Left = 172
        Top = 17
        Width = 200
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Items.Strings = (
          'Barang'
          'Jenis'
          'Golongan'
          'Merek')
      end
      object chkAll: TcxCheckBox
        Left = 172
        Top = 78
        Caption = 'Tampilkan Semua'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Transparent = True
        Width = 145
      end
      object cbjenisproses: TComboBox
        Left = 172
        Top = 193
        Width = 410
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnChange = cbjenisprosesChange
        Items.Strings = (
          'Berdasarkan Nilai'
          'Berdasarkan Prosentase')
      end
      object cbkenaikan: TComboBox
        Left = 172
        Top = 223
        Width = 410
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Items.Strings = (
          'HPP'
          'Harga Jual')
      end
      object edtNilai: TcxTextEdit
        Left = 172
        Top = 252
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 200
      end
      object edtPembulatan: TcxTextEdit
        Left = 172
        Top = 280
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 9
        Width = 200
      end
      object edtNamaTo: TcxTextEdit
        Left = 371
        Top = 147
        Enabled = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 211
      end
      object edtNamaFrom: TcxTextEdit
        Left = 371
        Top = 116
        Enabled = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 11
        Width = 211
      end
      object HrgId: TcxTextEdit
        Left = 172
        Top = 51
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 12
        Width = 172
      end
      object hrgDescription: TcxTextEdit
        Left = 371
        Top = 51
        Enabled = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 13
        Width = 211
      end
      object cxButton1: TcxButton
        Left = 344
        Top = 53
        Width = 27
        Height = 25
        Action = taCariHarga
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtnilaiProsentase: TcxSpinEdit
        Left = 172
        Top = 252
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 15
        Visible = False
        Width = 53
      end
    end
  end
  inherited pnl1: TPanel
    Top = 345
    Width = 600
    ExplicitTop = 345
    ExplicitWidth = 600
    inherited btn1: TButton
      Left = 16
      Top = 3
      Height = 27
      Action = taProses
      ExplicitLeft = 16
      ExplicitTop = 3
      ExplicitHeight = 27
    end
    inherited btn2: TButton
      Left = 96
      Top = 3
      Height = 27
      Action = taBatal
      ExplicitLeft = 96
      ExplicitTop = 3
      ExplicitHeight = 27
    end
  end
  inherited actlst1: TActionList
    object taProses: TAction
      Caption = '&Prosess'
      OnExecute = taProsesExecute
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
    object taCariKodeAwal: TAction
      Caption = '...'
      OnExecute = taCariKodeAwalExecute
    end
    object taCariKodeAkhir: TAction
      Caption = '...'
      OnExecute = taCariKodeAkhirExecute
    end
    object taCariHarga: TAction
      Caption = '...'
      OnExecute = taCariHargaExecute
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
  object Merek: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select MRKID, KETERANGAN from pxmerek order by Keterangan, MRKID' +
      ' Asc'
    Parameters = <>
    Left = 480
    Top = 120
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
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select JenisID, Keterangan  from pxjenis order by Keterangan, Je' +
      'nisId Asc'
    Parameters = <>
    Left = 480
    Top = 72
    object JenisJenisID: TStringField
      FieldName = 'JenisID'
      Size = 10
    end
    object JenisKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Golongan: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select GolID, Keterangan from pxgolongan order by keterangan, Go' +
      'lID asc'
    Parameters = <>
    Left = 432
    Top = 72
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
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select BRGID, Nama1, Stn1, Stn2, Stn3, Isi1, Isi2 from inbarang ' +
      'order by BrgID,Nama1 asc'
    IndexFieldNames = 'BRGID'
    MasterFields = 'BrgID'
    Parameters = <>
    Left = 432
    Top = 122
    object BarangBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object BarangNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
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
    object BarangIsi1: TFMTBCDField
      FieldName = 'Isi1'
      Precision = 18
    end
    object BarangIsi2: TFMTBCDField
      FieldName = 'Isi2'
      Precision = 18
    end
  end
  object sp_proseshrgJual: TADOStoredProc
    Connection = HJualForm.connTrading
    ProcedureName = 'sp_proses_harga_Jual'
    Parameters = <
      item
        Name = 'brgtempawal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'brgtempakhir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'hrgtemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'statAll'
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
      end
      item
        Name = 'sysparam'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '0'
      end
      item
        Name = 'jproses'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = 'kdari'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = 'nilai'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'persentase'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'pembulatan'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'ID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end>
    Left = 536
    Top = 72
  end
  object PXSystem: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 'select METODE from pxsystem'
    Parameters = <>
    Left = 480
    Top = 168
    object PXSystemMETODE: TWideStringField
      FieldName = 'METODE'
      FixedChar = True
      Size = 1
    end
  end
  object JHarga: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select HrgID, Keterangan, ValID from pxharga'#13#10'order by Keteranga' +
      'n Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 432
    Top = 168
    object JHargaHrgID: TStringField
      FieldName = 'HrgID'
      Size = 5
    end
    object JHargaKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object JHargaValID: TStringField
      FieldName = 'ValID'
      Size = 5
    end
  end
end
