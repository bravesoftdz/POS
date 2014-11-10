inherited fkonfbarangform: Tfkonfbarangform
  Caption = 'Form Transaksi Konfigurasi Barang'
  ClientHeight = 369
  ClientWidth = 428
  Color = 16308960
  ExplicitWidth = 436
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
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
  object Label4: TLabel [1]
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
  object edNama: TLabel [2]
    Left = 104
    Top = 8
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
  object Label2: TLabel [3]
    Left = 104
    Top = 30
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
  inherited cxPageControl1: TcxPageControl
    Top = 56
    Width = 428
    Height = 281
    ExplicitLeft = 0
    ExplicitTop = 56
    ExplicitWidth = 428
    ExplicitHeight = 281
    ClientRectBottom = 281
    ClientRectRight = 428
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'General'
      ExplicitTop = 22
      ExplicitWidth = 497
      ExplicitHeight = 349
      object Label3: TLabel
        Left = 8
        Top = 19
        Width = 51
        Height = 20
        Caption = 'No. Urut'
        FocusControl = EdNourut
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 51
        Width = 83
        Height = 20
        Caption = 'Nama Barang'
        FocusControl = EdKodeBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 109
        Width = 49
        Height = 20
        Caption = 'Gudang'
        FocusControl = EDKodeGudang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 162
        Width = 54
        Height = 20
        Caption = 'Satuan 3'
        FocusControl = edSatuan
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 194
        Width = 26
        Height = 20
        Caption = 'QTY'
        FocusControl = EdQty
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 226
        Width = 73
        Height = 20
        Caption = 'Hrg. Satuan'
        FocusControl = EDHrgSatuan
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdNamaBarang: TLabel
        Left = 101
        Top = 81
        Width = 83
        Height = 20
        Caption = 'Nama Barang'
        FocusControl = EdKodeBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EDNamaGudang: TLabel
        Left = 101
        Top = 135
        Width = 83
        Height = 20
        Caption = 'Nama Barang'
        FocusControl = EdKodeBarang
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdNourut: TDBEdit
        Left = 101
        Top = 16
        Width = 52
        Height = 28
        DataField = 'NOUR'
        DataSource = konfigBarangForm.dstblkonfbrg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EdKodeBarang: TDBEdit
        Left = 101
        Top = 50
        Width = 264
        Height = 28
        DataField = 'BRGD'
        DataSource = konfigBarangForm.dstblkonfbrg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EDKodeGudang: TDBEdit
        Left = 101
        Top = 106
        Width = 30
        Height = 28
        DataField = 'GD'
        DataSource = konfigBarangForm.dstblkonfbrg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edSatuan: TDBEdit
        Left = 101
        Top = 159
        Width = 69
        Height = 28
        DataField = 'STN3'
        DataSource = konfigBarangForm.dstblkonfbrg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EdQty: TDBEdit
        Left = 101
        Top = 191
        Width = 69
        Height = 28
        DataField = 'QTY'
        DataSource = konfigBarangForm.dstblkonfbrg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EDHrgSatuan: TDBEdit
        Left = 101
        Top = 223
        Width = 152
        Height = 28
        DataField = 'HSATUAN'
        DataSource = konfigBarangForm.dstblkonfbrg
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object Button1: TButton
        Left = 130
        Top = 106
        Width = 25
        Height = 28
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object Button2: TButton
        Left = 364
        Top = 50
        Width = 29
        Height = 28
        Caption = '...'
        TabOrder = 7
      end
    end
  end
  inherited pnl1: TPanel
    Top = 337
    Width = 428
    ExplicitTop = 326
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
    Left = 312
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 256
    Top = 24
  end
end
