inherited TransaksiBarang: TTransaksiBarang
  Caption = 'Transaksi Barang'
  ClientHeight = 453
  ClientWidth = 491
  Color = 15985897
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 499
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 8
    Top = 7
    Width = 49
    Height = 20
    Caption = 'BRG. ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel [1]
    Left = 8
    Top = 37
    Width = 83
    Height = 20
    Caption = 'Nama Barang'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited cxPageControl1: TcxPageControl
    Top = 99
    Width = 491
    Height = 322
    TabOrder = 3
    ExplicitLeft = 0
    ExplicitTop = 99
    ExplicitWidth = 491
    ExplicitHeight = 322
    ClientRectBottom = 322
    ClientRectRight = 491
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'Informasi Standart'
      ExplicitTop = 24
      ExplicitWidth = 491
      ExplicitHeight = 298
      object lbl3: TLabel
        Left = 11
        Top = 5
        Width = 33
        Height = 20
        Caption = 'Jenis'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 11
        Top = 34
        Width = 61
        Height = 20
        Caption = 'Golongan'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 11
        Top = 63
        Width = 37
        Height = 20
        Caption = 'Merek'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 11
        Top = 92
        Width = 30
        Height = 20
        Caption = 'Type'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 11
        Top = 147
        Width = 36
        Height = 20
        Caption = 'Stn. 1'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 11
        Top = 176
        Width = 36
        Height = 20
        Caption = 'Stn. 2'
        FocusControl = DBEdit9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 11
        Top = 205
        Width = 36
        Height = 20
        Caption = 'Stn. 3'
        FocusControl = DBEdit10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 216
        Top = 147
        Width = 22
        Height = 20
        Caption = 'Isi1'
        FocusControl = DBEdit11
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 216
        Top = 176
        Width = 22
        Height = 20
        Caption = 'Isi2'
        FocusControl = DBEdit12
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl12: TLabel
        Left = 11
        Top = 234
        Width = 51
        Height = 20
        Caption = 'Barcode'
        FocusControl = DBEdit13
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl20: TLabel
        Left = 11
        Top = 120
        Width = 38
        Height = 20
        Caption = 'Warna'
        FocusControl = DBEdit21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl21: TLabel
        Left = 11
        Top = 264
        Width = 57
        Height = 20
        Caption = 'Non Aktif'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 352
        Top = 2
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'Jenis'
        DataSource = BarangForm.dsBarang
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit5: TDBEdit
        Left = 352
        Top = 32
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'gol'
        DataSource = BarangForm.dsBarang
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit6: TDBEdit
        Left = 352
        Top = 60
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'merek'
        DataSource = BarangForm.dsBarang
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit7: TDBEdit
        Left = 352
        Top = 89
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'type'
        DataSource = BarangForm.dsBarang
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit8: TDBEdit
        Left = 136
        Top = 145
        Width = 69
        Height = 28
        CharCase = ecUpperCase
        DataField = 'Stn1'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 136
        Top = 173
        Width = 69
        Height = 28
        CharCase = ecUpperCase
        DataField = 'Stn2'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 202
        Width = 69
        Height = 28
        CharCase = ecUpperCase
        DataField = 'Stn3'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 276
        Top = 144
        Width = 77
        Height = 28
        DataField = 'Isi1'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit12: TDBEdit
        Left = 276
        Top = 173
        Width = 77
        Height = 28
        DataField = 'Isi2'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit13: TDBEdit
        Left = 136
        Top = 231
        Width = 350
        Height = 28
        DataField = 'barcode'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 136
        Top = 2
        DataBinding.DataField = 'Jenis'
        DataBinding.DataSource = BarangForm.dsBarang
        ParentFont = False
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'JenisID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsJenis
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 216
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 136
        Top = 30
        DataBinding.DataField = 'gol'
        DataBinding.DataSource = BarangForm.dsBarang
        ParentFont = False
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'GolID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsGolongan
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 216
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 136
        Top = 59
        DataBinding.DataField = 'merek'
        DataBinding.DataSource = BarangForm.dsBarang
        ParentFont = False
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'MRKID'
        Properties.ListColumns = <
          item
            FieldName = 'KETERANGAN'
          end>
        Properties.ListSource = dsMerek
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 216
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 136
        Top = 87
        DataBinding.DataField = 'type'
        DataBinding.DataSource = BarangForm.dsBarang
        ParentFont = False
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'TypeID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsType
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 216
      end
      object cxDBLookupComboBox6: TcxDBLookupComboBox
        Left = 136
        Top = 116
        DataBinding.DataField = 'wrn'
        DataBinding.DataSource = BarangForm.dsBarang
        ParentFont = False
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'WRNID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsWarna
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 216
      end
      object DBEdit21: TDBEdit
        Left = 352
        Top = 117
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'wrn'
        DataSource = BarangForm.dsBarang
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object dbchklAktif: TDBCheckBox
        Left = 136
        Top = 265
        Width = 25
        Height = 17
        DataField = 'lstatAll'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Informasi Tambahan'
      ImageIndex = 1
      TabVisible = False
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl13: TLabel
        Left = 8
        Top = 11
        Width = 68
        Height = 20
        Caption = 'Lokasi/Rak'
        FocusControl = DBEdit14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl15: TLabel
        Left = 8
        Top = 100
        Width = 54
        Height = 20
        Caption = 'Hrg. Beli'
        FocusControl = DBEdit16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl14: TLabel
        Left = 8
        Top = 130
        Width = 67
        Height = 20
        Caption = 'Hrg. Jual 1'
        FocusControl = DBEdit15
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl16: TLabel
        Left = 8
        Top = 160
        Width = 67
        Height = 20
        Caption = 'Hrg. Jual 2'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl17: TLabel
        Left = 8
        Top = 190
        Width = 67
        Height = 20
        Caption = 'Hrg. Jual 3'
        FocusControl = DBEdit18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl19: TLabel
        Left = 8
        Top = 70
        Width = 59
        Height = 20
        Caption = 'Minimum'
        FocusControl = DBEdit20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl18: TLabel
        Left = 8
        Top = 40
        Width = 60
        Height = 20
        Caption = 'Maximum'
        FocusControl = DBEdit19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit14: TDBEdit
        Left = 352
        Top = 12
        Width = 134
        Height = 28
        Color = clSilver
        DataField = 'lks'
        DataSource = BarangForm.dsBarang
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 99
        Width = 250
        Height = 28
        DataField = 'hbeli'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit15: TDBEdit
        Left = 136
        Top = 128
        Width = 250
        Height = 28
        DataField = 'hjual1'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit17: TDBEdit
        Left = 136
        Top = 157
        Width = 250
        Height = 28
        DataField = 'hjual2'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 136
        Top = 187
        Width = 250
        Height = 28
        DataField = 'hjual3'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit19: TDBEdit
        Left = 136
        Top = 41
        Width = 135
        Height = 28
        DataField = 'Maxi'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit20: TDBEdit
        Left = 136
        Top = 70
        Width = 135
        Height = 28
        DataField = 'Mini'
        DataSource = BarangForm.dsBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cxDBLookupComboBox5: TcxDBLookupComboBox
        Left = 136
        Top = 12
        DataBinding.DataField = 'lks'
        DataBinding.DataSource = BarangForm.dsBarang
        ParentFont = False
        Properties.CaseSensitiveSearch = True
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'RakID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsRak
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 216
      end
    end
  end
  object DBEdit2: TDBEdit [3]
    Left = 136
    Top = 34
    Width = 350
    Height = 28
    CharCase = ecUpperCase
    DataField = 'Nama1'
    DataSource = BarangForm.dsBarang
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [4]
    Left = 136
    Top = 65
    Width = 350
    Height = 28
    CharCase = ecUpperCase
    DataField = 'Nama2'
    DataSource = BarangForm.dsBarang
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = DBEdit3Exit
  end
  object DBEdit1: TDBEdit [5]
    Left = 136
    Top = 4
    Width = 320
    Height = 28
    CharCase = ecUpperCase
    DataField = 'BRGID'
    DataSource = BarangForm.dsBarang
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  inherited pnl1: TPanel
    Top = 421
    Width = 491
    TabOrder = 8
    ExplicitTop = 421
    ExplicitWidth = 491
    inherited btn1: TButton
      Left = 334
      Top = 3
      ExplicitLeft = 334
      ExplicitTop = 3
    end
    inherited btn2: TButton
      Left = 413
      Top = 3
      ExplicitLeft = 413
      ExplicitTop = 3
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
    object dxBarDBNavPrev1: TdxBarDBNavButton [1]
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavFirst2: TdxBarDBNavButton [3]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavNext1: TdxBarDBNavButton [4]
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavFirst3: TdxBarDBNavButton [6]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavLast1: TdxBarDBNavButton [7]
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavFirst4: TdxBarDBNavButton [9]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavFirst5: TdxBarDBNavButton [11]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton [12]
      Caption = 'Delete'
      Category = 1
      Enabled = False
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777770000000000777777000000000
        0777777000000000077777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
    end
    object dxBarDBNavFirst6: TdxBarDBNavButton [13]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavFirst7: TdxBarDBNavButton [15]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavFirst8: TdxBarDBNavButton [17]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPost1: TdxBarDBNavButton [18]
      Caption = 'Post'
      Category = 1
      Enabled = False
      Hint = 'Post'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777770777777
        7777777700077777777777700000777777777700070007777777770077700077
        7777777777770007777777777777700077777777777777000777777777777770
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
    end
    object dxBarDBNavFirst9: TdxBarDBNavButton [20]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton [21]
      Caption = 'Cancel'
      Category = 1
      Enabled = False
      Hint = 'Cancel'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777007777700
        7777777000777000777777770007000777777777700000777777777777000777
        7777777770000077777777770007000777777770007770007777777007777700
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
    end
    object dxBarDBNavFirst10: TdxBarDBNavButton [23]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavRefresh1: TdxBarDBNavButton [24]
      Caption = 'Refresh'
      Category = 1
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
    object dxBarDBNavFirst11: TdxBarDBNavButton [25]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavRefresh2: TdxBarDBNavButton [26]
      Caption = 'Refresh'
      Category = 1
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
    object dxBarDBNavFirst12: TdxBarDBNavButton [28]
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    DataSource = BarangForm.dsBarang
  end
  object Jenis: TADODataSet
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandText = 'select JenisID, Keterangan from pxjenis order by Keterangan'
    Parameters = <>
    Left = 232
    Top = 248
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
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandText = 'select GolID, Keterangan from pxgolongan order by Keterangan Asc'
    Parameters = <>
    Left = 272
    Top = 248
    object GolonganGolID: TStringField
      FieldName = 'GolID'
      Size = 10
    end
    object GolonganKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Merek: TADODataSet
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandText = 'select MRKID, KETERANGAN from pxmerek order by Keterangan Asc'
    Parameters = <>
    Left = 192
    Top = 248
    object MerekMRKID: TStringField
      FieldName = 'MRKID'
      Size = 10
    end
    object MerekKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
  end
  object dsMerek: TDataSource
    DataSet = Merek
    Left = 192
    Top = 296
  end
  object dsJenis: TDataSource
    DataSet = Jenis
    Left = 232
    Top = 296
  end
  object dsGolongan: TDataSource
    DataSet = Golongan
    Left = 272
    Top = 296
  end
  object dsType: TDataSource
    DataSet = PxType
    Left = 136
    Top = 296
  end
  object PxType: TADODataSet
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandText = 'select TypeID, Keterangan from pxtype order by Keterangan'
    Parameters = <>
    Left = 136
    Top = 248
    object PxTypeTypeID: TStringField
      FieldName = 'TypeID'
      Size = 10
    end
    object PxTypeKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object sp_find_Barang: TADOStoredProc
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    ProcedureName = 'PX_Find_Barang'
    Parameters = <
      item
        Name = '@Nama'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 360
    Top = 288
    object sp_find_BarangNama: TStringField
      FieldName = 'Nama'
      Size = 100
    end
  end
  object Rak: TADODataSet
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandText = 'select RakID, Keterangan from pxrak order by Keterangan asc'
    Parameters = <>
    Left = 96
    Top = 248
    object RakRakID: TStringField
      FieldName = 'RakID'
      Size = 10
    end
    object RakKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object dsRak: TDataSource
    DataSet = Rak
    Left = 96
    Top = 293
  end
  object warna: TADODataSet
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandText = 'select WRNID, Keterangan from pxwarna order by Keterangan asc'
    Parameters = <>
    Left = 56
    Top = 248
    object warnaWRNID: TStringField
      FieldName = 'WRNID'
      Size = 10
    end
    object warnaKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object dsWarna: TDataSource
    DataSet = warna
    Left = 56
    Top = 293
  end
  object sp_kode_auto: TADOStoredProc
    Connection = BarangForm.connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_kode_auto'
    Parameters = <
      item
        Name = 'table_'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = 'Notemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 360
    Top = 336
    object sp_kode_autohasil: TWideStringField
      FieldName = 'hasil'
      ReadOnly = True
      Size = 255
    end
  end
end
