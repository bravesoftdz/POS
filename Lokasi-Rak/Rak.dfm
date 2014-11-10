inherited RakForm: TRakForm
  Caption = 'Lokasi / Rak Form'
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
      DataController.DataSource = dsRAK
      object cxGrid1DBTableView1RakID: TcxGridDBColumn
        Caption = 'RAK ID'
        DataBinding.FieldName = 'RakID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Keterangan: TcxGridDBColumn
        Caption = 'KETERANGAN'
        DataBinding.FieldName = 'Keterangan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Properties.ValidateOnEnter = True
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
  object RAK: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select RakID, Keterangan, TglU from pxrak order by Keterangan, R' +
      'AKID Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object RAKRakID: TStringField
      FieldName = 'RakID'
      Size = 10
    end
    object RAKKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
    object RAKTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsRAK: TDataSource
    DataSet = RAK
    Left = 192
    Top = 160
  end
end
