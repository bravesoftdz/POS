inherited HJualForm: THJualForm
  Caption = 'Setting Harga Jual'
  ClientHeight = 406
  ClientWidth = 804
  OnCreate = FormCreate
  ExplicitWidth = 812
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 45
    Width = 804
    Height = 262
    ExplicitTop = 45
    ExplicitWidth = 804
    ExplicitHeight = 262
    ClientRectBottom = 256
    ClientRectRight = 798
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 789
      ExplicitHeight = 224
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 804
    ExplicitHeight = 40
    Height = 40
    Width = 804
    object lbl1: TLabel
      Left = 8
      Top = 11
      Width = 83
      Height = 20
      Caption = 'Nama Barang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GudangID: TcxTextEdit
      Left = 117
      Top = 6
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 228
    end
    object cxButton7: TcxButton
      Left = 345
      Top = 8
      Width = 27
      Height = 25
      Action = taCariBarang
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
      Left = 372
      Top = 6
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 327
    end
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 307
    ExplicitTop = 307
    ExplicitWidth = 804
    Width = 804
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 312
    ExplicitTop = 312
    ExplicitWidth = 804
    ExplicitHeight = 61
    Height = 61
    Width = 804
    object lbl3: TLabel
      Left = 8
      Top = 0
      Width = 80
      Height = 20
      Caption = 'Satuan Besar'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 166
      Top = 0
      Width = 98
      Height = 20
      Caption = 'Isi Satuan Besar'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 285
      Top = 0
      Width = 109
      Height = 20
      Caption = 'Satuan Menengah'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 431
      Top = 0
      Width = 127
      Height = 20
      Caption = 'Isi Satuan Menengah'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 589
      Top = 1
      Width = 76
      Height = 20
      Caption = 'Satuan Kecil'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 152
      Height = 28
      Color = 15985897
      DataField = 'Stn1'
      DataSource = ds1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 166
      Top = 24
      Width = 113
      Height = 28
      Color = 15985897
      DataField = 'Isi1'
      DataSource = ds1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 285
      Top = 24
      Width = 140
      Height = 28
      Color = 15985897
      DataField = 'Stn2'
      DataSource = ds1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 431
      Top = 24
      Width = 113
      Height = 28
      Color = 15985897
      DataField = 'Isi2'
      DataSource = ds1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 550
      Top = 24
      Width = 148
      Height = 28
      Color = 15985897
      DataField = 'Stn3'
      DataSource = ds1
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 40
    ExplicitTop = 40
    ExplicitWidth = 804
    Width = 804
  end
  inherited cxGrid1: TcxGrid
    Top = 45
    Width = 804
    Height = 262
    ExplicitTop = 45
    ExplicitWidth = 804
    ExplicitHeight = 262
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsHJual
      object cxGrid1DBTableView1HrgID: TcxGridDBColumn
        Caption = 'Harga'
        DataBinding.FieldName = 'HrgID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'HrgID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsJharga
        HeaderAlignmentHorz = taCenter
        Width = 146
      end
      object cxGrid1DBTableView1Hpp: TcxGridDBColumn
        Caption = 'HPP'
        DataBinding.FieldName = 'Hpp'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Width = 131
      end
      object cxGrid1DBTableView1Profit: TcxGridDBColumn
        DataBinding.FieldName = 'Profit'
        HeaderAlignmentHorz = taRightJustify
        Width = 62
      end
      object cxGrid1DBTableView1Profitnilai: TcxGridDBColumn
        Caption = 'Nil. Profit'
        DataBinding.FieldName = 'Profitnilai'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taRightJustify
        Width = 127
      end
      object cxGrid1DBTableView1H3: TcxGridDBColumn
        Caption = 'Hrg. Jual Kecil'
        DataBinding.FieldName = 'H3'
        HeaderAlignmentHorz = taRightJustify
        Width = 139
      end
      object cxGrid1DBTableView1H2: TcxGridDBColumn
        Caption = 'Hrg. Jual Menengah'
        DataBinding.FieldName = 'H2'
        HeaderAlignmentHorz = taRightJustify
        Width = 136
      end
      object cxGrid1DBTableView1H1: TcxGridDBColumn
        Caption = 'Hrg. Jual Besar'
        DataBinding.FieldName = 'H1'
        HeaderAlignmentHorz = taRightJustify
        Width = 138
      end
    end
  end
  object cxGroupBox5: TcxGroupBox [7]
    Left = 0
    Top = 373
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 6
    Height = 33
    Width = 804
    object cxButton6: TcxButton
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Action = taPerKode
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 0
    end
    object cxButton8: TcxButton
      Left = 85
      Top = 4
      Width = 75
      Height = 25
      Action = taTerendah
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 1
    end
    object cxButton9: TcxButton
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
    object cxButton10: TcxButton
      Left = 239
      Top = 4
      Width = 75
      Height = 25
      Action = taBersih
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
    end
    object cxButton11: TcxButton
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
  object mmo1: TMemo [8]
    Left = 285
    Top = 77
    Width = 413
    Height = 119
    Lines.Strings = (
      'mmo1')
    TabOrder = 7
    Visible = False
  end
  inherited actlst1: TActionList
    object taPerKode: TAction
      Caption = 'Per &Kode'
      OnExecute = taPerKodeExecute
    end
    object taTerendah: TAction
      Caption = '&Terendah'
      OnExecute = taTerendahExecute
    end
    object taBersih: TAction
      Caption = '&Bersih'
      OnExecute = taBersihExecute
    end
    object taCetak: TAction
      Caption = '&Cetak'
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object taCariBarang: TAction
      Caption = '...'
      OnExecute = taCariBarangExecute
    end
  end
  object connTrading: TADOConnection [13]
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 16
    Top = 72
  end
  object HJual: TADODataSet [14]
    Connection = connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = HJualAfterPost
    OnNewRecord = HJualNewRecord
    CommandText = 
      'select CabID, HrgID, BrgID, Hpp, Profit, Profitnilai, H1, H2, H3' +
      ', Create_id, Create_Tgl, Modify_id, Modify_Tgl from inhisbarangh' +
      'jual'#13#10'order by BrgId, HrgID asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 16
    Top = 128
    object HJualCabID: TStringField
      FieldName = 'CabID'
      Size = 10
    end
    object HJualHrgID: TStringField
      FieldName = 'HrgID'
      Size = 5
    end
    object HJualBrgID: TStringField
      FieldName = 'BrgID'
      Size = 30
    end
    object HJualHpp: TFMTBCDField
      FieldName = 'Hpp'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualProfit: TFMTBCDField
      FieldName = 'Profit'
      OnValidate = HJualProfitValidate
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object HJualProfitnilai: TFMTBCDField
      FieldName = 'Profitnilai'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualH1: TFMTBCDField
      FieldName = 'H1'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualH2: TFMTBCDField
      FieldName = 'H2'
      OnValidate = HJualH2Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualH3: TFMTBCDField
      FieldName = 'H3'
      OnValidate = HJualH3Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualCreate_id: TStringField
      FieldName = 'Create_id'
      Size = 10
    end
    object HJualCreate_Tgl: TDateTimeField
      FieldName = 'Create_Tgl'
    end
    object HJualModify_id: TStringField
      FieldName = 'Modify_id'
      Size = 10
    end
    object HJualModify_Tgl: TDateTimeField
      FieldName = 'Modify_Tgl'
    end
  end
  object dsHJual: TDataSource [15]
    DataSet = HJual
    Left = 72
    Top = 128
  end
  object JHarga: TADODataSet [16]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select HrgID, Keterangan, ValID from pxharga'#13#10'order by Keteranga' +
      'n Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 16
    Top = 176
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
  object dsJharga: TDataSource [17]
    DataSet = JHarga
    Left = 72
    Top = 176
  end
  object Barang: TADODataSet [18]
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select BRGID, Nama1, Stn1, Stn2, Stn3, Isi1, Isi2 from inbarang ' +
      'order by Nama1, BrgID asc'
    Parameters = <>
    Left = 16
    Top = 226
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
  object sp_Hrg_Jual: TADOStoredProc [19]
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_Harga_Jual'
    Parameters = <
      item
        Name = 'brgtemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end>
    Left = 72
    Top = 226
    object sp_Hrg_JualCabID: TStringField
      FieldName = 'CabID'
      ReadOnly = True
      Size = 10
    end
    object sp_Hrg_JualHrgID: TStringField
      FieldName = 'HrgID'
      ReadOnly = True
      Size = 5
    end
    object sp_Hrg_JualBrgID: TStringField
      FieldName = 'BrgID'
      ReadOnly = True
      Size = 30
    end
    object sp_Hrg_JualHpp: TFMTBCDField
      FieldName = 'Hpp'
      ReadOnly = True
      Precision = 28
    end
    object sp_Hrg_JualProfit: TFMTBCDField
      FieldName = 'Profit'
      ReadOnly = True
      Precision = 18
    end
    object sp_Hrg_JualProfitnilai: TFMTBCDField
      FieldName = 'Profitnilai'
      ReadOnly = True
      Precision = 28
    end
    object sp_Hrg_JualH1: TFMTBCDField
      FieldName = 'H1'
      ReadOnly = True
      Precision = 28
    end
    object sp_Hrg_JualH2: TFMTBCDField
      FieldName = 'H2'
      ReadOnly = True
      Precision = 28
    end
    object sp_Hrg_JualH3: TFMTBCDField
      FieldName = 'H3'
      ReadOnly = True
      Precision = 28
    end
  end
  object ds1: TDataSource [20]
    DataSet = Barang
    Left = 344
    Top = 208
  end
  object sp_input_H_Jual: TADOStoredProc [21]
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_harga_jual'
    Parameters = <
      item
        Name = 'BrgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'HRGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'CABID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'Profit_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 18
        Value = 0c
      end
      item
        Name = 'ProfitNilai_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'H1_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'H2_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'H3_'
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
      end
      item
        Name = 'StatTransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = ''
      end
      item
        Name = 'HPP_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end>
    Left = 136
    Top = 128
  end
  object sp_find_table: TADOStoredProc [22]
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
        Size = 10
        Value = ''
      end
      item
        Name = 'GdgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'Table_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 136
    Top = 176
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
end
