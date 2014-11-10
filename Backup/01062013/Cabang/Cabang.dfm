inherited CabangForm: TCabangForm
  Caption = 'Cabang Form'
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
      DataController.DataSource = dsCabang
      object cxGrid1DBTableView1CABID: TcxGridDBColumn
        Caption = 'CAB. ID'
        DataBinding.FieldName = 'CABID'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
      end
    end
  end
  object connTrading: TADOConnection [8]
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
  object Cabang: TADODataSet [9]
    Connection = connTrading
    CursorType = ctStatic
    BeforeInsert = CabangBeforeInsert
    CommandText = 
      'select CABID, Keterangan, tglU from pxcabang order by Keterangan' +
      ' Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object CabangCABID: TStringField
      FieldName = 'CABID'
      Size = 10
    end
    object CabangKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object CabangtglU: TDateTimeField
      FieldName = 'tglU'
    end
  end
  object dsCabang: TDataSource [10]
    DataSet = Cabang
    Left = 192
    Top = 160
  end
end
