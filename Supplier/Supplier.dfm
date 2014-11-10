inherited SupplierForm: TSupplierForm
  Caption = 'Data Supplier'
  ClientWidth = 763
  OnCreate = FormCreate
  ExplicitTop = -55
  ExplicitWidth = 771
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Width = 763
    Height = 344
    ExplicitTop = 5
    ExplicitWidth = 763
    ExplicitHeight = 344
    ClientRectBottom = 338
    ClientRectRight = 757
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 748
      ExplicitHeight = 306
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 763
    ExplicitHeight = 0
    Height = 0
    Width = 763
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 349
    ExplicitTop = 349
    ExplicitWidth = 763
    Width = 763
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 349
    ExplicitTop = 349
    ExplicitWidth = 763
    ExplicitHeight = 0
    Height = 0
    Width = 763
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
    ExplicitWidth = 763
    Width = 763
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Width = 763
    Height = 344
    ExplicitTop = 5
    ExplicitWidth = 763
    ExplicitHeight = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsSupplier
      object cxGrid1DBTableView1SUPID: TcxGridDBColumn
        Caption = 'SUPPLIER ID'
        DataBinding.FieldName = 'SUPID'
        Width = 162
      end
      object cxGrid1DBTableView1Nama: TcxGridDBColumn
        Caption = 'NAMA'
        DataBinding.FieldName = 'Nama'
        Width = 524
      end
      object cxGrid1DBTableView1LNOAktif: TcxGridDBColumn
        Caption = 'NON AKTIF'
        DataBinding.FieldName = 'LNOAktif'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 75
      end
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Left = 24
    Top = 88
  end
  object Supplier: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = SupplierAfterInsert
    AfterEdit = SupplierAfterEdit
    BeforePost = SupplierBeforePost
    AfterPost = SupplierAfterPost
    BeforeDelete = SupplierBeforeDelete
    AfterDelete = SupplierAfterDelete
    OnNewRecord = SupplierNewRecord
    CommandText = 
      'select SUPID, CabID, Nama, AL1, AL2, Telp, Contact_Perso, NPWP, ' +
      'Term, Klink, valID, TglU, wilID, Fax, LNOAktif from apsupplier'
    CommandTimeout = 300
    Parameters = <>
    Left = 24
    Top = 144
    object SupplierSUPID: TStringField
      FieldName = 'SUPID'
      Size = 10
    end
    object SupplierCabID: TStringField
      FieldName = 'CabID'
      Size = 10
    end
    object SupplierNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object SupplierAL1: TStringField
      FieldName = 'AL1'
      Size = 30
    end
    object SupplierAL2: TStringField
      FieldName = 'AL2'
      Size = 30
    end
    object SupplierTelp: TStringField
      FieldName = 'Telp'
      Size = 30
    end
    object SupplierContact_Perso: TStringField
      FieldName = 'Contact_Perso'
      Size = 30
    end
    object SupplierNPWP: TStringField
      FieldName = 'NPWP'
      Size = 15
    end
    object SupplierTerm: TSmallintField
      FieldName = 'Term'
    end
    object SupplierKlink: TStringField
      FieldName = 'Klink'
      Size = 10
    end
    object SuppliervalID: TStringField
      FieldName = 'valID'
      Size = 5
    end
    object SupplierTglU: TDateTimeField
      FieldName = 'TglU'
    end
    object SupplierwilID: TStringField
      FieldName = 'wilID'
      Size = 10
    end
    object SupplierFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object SupplierLNOAktif: TStringField
      FieldName = 'LNOAktif'
      FixedChar = True
      Size = 1
    end
  end
  object dsSupplier: TDataSource
    DataSet = Supplier
    Left = 80
    Top = 144
  end
  object Valuta: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select VALID, KETERANGAN, TGLU, Status_ from pxvaluta Where'#13#10'Sta' +
      'tus_='#39'AP'#39
    Parameters = <>
    Left = 24
    Top = 200
    object ValutaVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object ValutaKETERANGAN: TWideStringField
      FieldName = 'KETERANGAN'
      Size = 50
    end
    object ValutaTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
    object ValutaStatus_: TWideStringField
      FieldName = 'Status_'
      FixedChar = True
      Size = 2
    end
  end
  object Wilayah: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select WilayahID, Keterangan from pxwilpurchase '
    Parameters = <>
    Left = 80
    Top = 200
    object WilayahWilayahID: TStringField
      FieldName = 'WilayahID'
      Size = 3
    end
    object WilayahKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object dsValuta: TDataSource
    DataSet = Valuta
    Left = 24
    Top = 256
  end
  object dsWilayah: TDataSource
    DataSet = Wilayah
    Left = 80
    Top = 256
  end
  object sp1: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_supplier'
    Parameters = <
      item
        Name = 'SupID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'CABID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'AL1_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'AL2_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'Telp_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'NPWP_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'TERM_'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'VALID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'WILID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = 'FAX_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'LNOAKTIF_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'stattransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = 'Nama_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 272
    Top = 216
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
    Left = 216
    Top = 216
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
  end
  object sp2: TADOStoredProc
    Connection = connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_delete_all'
    Parameters = <
      item
        Name = 'Table_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'Stat_'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = 'BRGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = 'GDGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end>
    Left = 216
    Top = 264
  end
  object pxSystem: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select CABID from pxsystem'
    Parameters = <>
    Left = 80
    Top = 88
    object pxSystemCABID: TWideStringField
      FieldName = 'CABID'
      Size = 5
    end
  end
  object qrySystem: TADOQuery
    Connection = connTrading
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select 1 From PxSystem Where SupID = '#39'Y'#39)
    Left = 216
    Top = 168
    object qrySystemLargeintField1: TLargeintField
      FieldName = '1'
      ReadOnly = True
    end
  end
end
