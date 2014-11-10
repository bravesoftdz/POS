inherited GudangForm: TGudangForm
  Caption = 'Gudang Form'
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 344
    ClientRectBottom = 344
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 27
      ExplicitWidth = 420
      ExplicitHeight = 248
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 349
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 349
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Height = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsGudang
      object cxGrid1DBTableView1GdgID: TcxGridDBColumn
        Caption = 'GDG ID'
        DataBinding.FieldName = 'GdgID'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1Keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
      end
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
  object Gudang: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    BeforeInsert = GudangBeforeInsert
    CommandText = 
      'select GdgID, Keterangan, TglU from pxgudang order by Keterangan' +
      ' asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object GudangGdgID: TStringField
      FieldName = 'GdgID'
      Size = 3
    end
    object GudangKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
    object GudangTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsGudang: TDataSource
    DataSet = Gudang
    Left = 192
    Top = 160
  end
end
