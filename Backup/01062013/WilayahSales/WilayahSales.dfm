inherited WilayahSalesForm: TWilayahSalesForm
  Caption = 'Wilayah Sales Form'
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
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Left = 136
    Top = 104
  end
  object WilayahSales: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select WilayahID, Description, TglU from pxwilsales'#13#10'order by De' +
      'scription, WilayahId asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object WilayahSalesWilayahID: TWideStringField
      FieldName = 'WilayahID'
      Size = 5
    end
    object WilayahSalesDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object WilayahSalesTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsWilayahSales: TDataSource
    DataSet = WilayahSales
    Left = 192
    Top = 160
  end
end
