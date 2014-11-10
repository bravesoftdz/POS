inherited WilayahPurchaseForm: TWilayahPurchaseForm
  Caption = 'Wilayah Purchase Form'
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 344
    ExplicitTop = 5
    ExplicitHeight = 344
    ClientRectBottom = 338
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 306
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 349
    ExplicitTop = 349
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 349
    ExplicitTop = 349
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Height = 344
    ExplicitTop = 5
    ExplicitHeight = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsWilayahPurchase
      object cxGrid1DBTableView1WilayahID: TcxGridDBColumn
        Caption = 'Wilayah ID'
        DataBinding.FieldName = 'WilayahID'
        Width = 60
      end
      object cxGrid1DBTableView1Keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
        Width = 364
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
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 136
    Top = 104
  end
  object WilayahPurchase: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select WilayahID, Keterangan, TglU from pxwilpurchase '#13#10'order by' +
      ' Keterangan, WilayahID asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object WilayahPurchaseWilayahID: TStringField
      FieldName = 'WilayahID'
      Size = 3
    end
    object WilayahPurchaseKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
    object WilayahPurchaseTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsWilayahPurchase: TDataSource
    DataSet = WilayahPurchase
    Left = 192
    Top = 160
  end
end
