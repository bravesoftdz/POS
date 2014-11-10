inherited historiStockForm: ThistoriStockForm
  ActiveControl = GudangID
  Caption = 'Histori Stock Barang'
  ClientHeight = 449
  ClientWidth = 804
  OnClick = taTampilkanExecute
  OnCreate = FormCreate
  ExplicitWidth = 812
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 98
    Width = 804
    Height = 346
    ExplicitTop = 98
    ExplicitWidth = 804
    ExplicitHeight = 346
    ClientRectBottom = 340
    ClientRectRight = 798
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 789
      ExplicitHeight = 308
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 804
    ExplicitHeight = 93
    Height = 93
    Width = 804
    object lbl1: TLabel
      Left = 7
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
    object lbl3: TLabel
      Left = 7
      Top = 38
      Width = 77
      Height = 20
      Caption = 'Barang Awal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 7
      Top = 65
      Width = 81
      Height = 20
      Caption = 'Barang Akhir'
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
      Left = 203
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
    object BarangFormID: TcxTextEdit
      Left = 117
      Top = 34
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 249
    end
    object cxButton1: TcxButton
      Left = 366
      Top = 36
      Width = 27
      Height = 25
      Action = taBarangForm
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
    object BarangFormNama: TcxTextEdit
      Left = 393
      Top = 34
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 194
    end
    object barangToID: TcxTextEdit
      Left = 117
      Top = 61
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 249
    end
    object BarangToNAma: TcxTextEdit
      Left = 393
      Top = 61
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 194
    end
    object cxButton2: TcxButton
      Left = 366
      Top = 63
      Width = 27
      Height = 25
      Action = taBarangTo
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
    object cxButton3: TcxButton
      Left = 588
      Top = 61
      Width = 96
      Height = 27
      Action = taTampilkan
      LookAndFeel.Kind = lfOffice11
      TabOrder = 9
    end
    object cxButton4: TcxButton
      Left = 686
      Top = 61
      Width = 75
      Height = 27
      Caption = '&Cetak'
      LookAndFeel.Kind = lfOffice11
      TabOrder = 10
    end
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 444
    ExplicitTop = 444
    ExplicitWidth = 804
    Width = 804
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 444
    ExplicitTop = 444
    ExplicitWidth = 804
    ExplicitHeight = 0
    Height = 0
    Width = 804
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 93
    ExplicitTop = 93
    ExplicitWidth = 804
    Width = 804
  end
  inherited cxGrid1: TcxGrid
    Top = 98
    Width = 804
    Height = 346
    ExplicitTop = 98
    ExplicitWidth = 804
    ExplicitHeight = 346
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsHistoriStock
      OptionsData.Appending = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1BrgID: TcxGridDBColumn
        Caption = 'BRG. ID'
        DataBinding.FieldName = 'BrgID'
        Width = 227
      end
      object cxGrid1DBTableView1NM_Brg: TcxGridDBColumn
        Caption = 'NAMA BARANG'
        DataBinding.FieldName = 'NM_Brg'
        Width = 426
      end
      object cxGrid1DBTableView1First_: TcxGridDBColumn
        Caption = 'AWAL'
        DataBinding.FieldName = 'First_'
        HeaderAlignmentHorz = taRightJustify
        Width = 86
      end
      object cxGrid1DBTableView1IN_: TcxGridDBColumn
        Caption = 'MASUK'
        DataBinding.FieldName = 'IN_'
        HeaderAlignmentHorz = taRightJustify
        Width = 87
      end
      object cxGrid1DBTableView1Out_: TcxGridDBColumn
        Caption = 'KELUAR'
        DataBinding.FieldName = 'Out_'
        HeaderAlignmentHorz = taRightJustify
        Width = 87
      end
      object cxGrid1DBTableView1Last_: TcxGridDBColumn
        Caption = 'SISA'
        DataBinding.FieldName = 'Last_'
        HeaderAlignmentHorz = taRightJustify
        Width = 86
      end
    end
  end
  inherited actlst1: TActionList
    object taCetak: TAction
      Caption = '&Cetak'
    end
    object taCariGudang: TAction
      Caption = '...'
      OnExecute = taCariGudangExecute
    end
    object taBarangForm: TAction
      Caption = '...'
      OnExecute = taBarangFormExecute
    end
    object taBarangTo: TAction
      Caption = '...'
      OnExecute = taBarangToExecute
    end
    object taTampilkan: TAction
      Caption = 'Tampilkan'
      OnExecute = taTampilkanExecute
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
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
    Left = 32
    Top = 138
  end
  object Barang: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select BRGID, Nama1 from inbarang order by BrgID asc'
    Parameters = <>
    Left = 88
    Top = 138
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
    Left = 136
    Top = 138
    object GudangGdgID: TStringField
      FieldName = 'GdgID'
      Size = 3
    end
    object GudangKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object sp_histori_stock: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_temp_mutasi_stock'
    Parameters = <
      item
        Name = 'BrgIDAwal_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'BrgIDAkhir_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'GdgId_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'Tgl'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 136
    Top = 192
    object sp_histori_stockBrgID: TWideStringField
      FieldName = 'BrgID'
      Size = 30
    end
    object sp_histori_stockGdgID: TWideStringField
      FieldName = 'GdgID'
      Size = 10
    end
    object sp_histori_stockFirst_: TFMTBCDField
      FieldName = 'First_'
      Precision = 18
    end
    object sp_histori_stockIN_: TFMTBCDField
      FieldName = 'IN_'
      Precision = 18
    end
    object sp_histori_stockOut_: TFMTBCDField
      FieldName = 'Out_'
      Precision = 18
    end
    object sp_histori_stockLast_: TFMTBCDField
      FieldName = 'Last_'
      Precision = 18
    end
    object sp_histori_stockNM_Brg: TWideStringField
      FieldName = 'NM_Brg'
      Size = 50
    end
    object sp_histori_stockNM_Gdg: TWideStringField
      FieldName = 'NM_Gdg'
      Size = 50
    end
  end
  object dsHistoriStock: TDataSource
    DataSet = sp_histori_stock
    Left = 136
    Top = 248
  end
end
