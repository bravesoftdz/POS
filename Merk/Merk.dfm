inherited MerkForm: TMerkForm
  Caption = 'Merek Form'
  OnActivate = FormActivate
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
      DataController.DataSource = dsMerek
      object cxGrid1DBTableView1MRKID: TcxGridDBColumn
        Caption = 'MEREK ID'
        DataBinding.FieldName = 'MRKID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1KETERANGAN: TcxGridDBColumn
        DataBinding.FieldName = 'KETERANGAN'
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
  object Merek: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select MRKID, KETERANGAN, TGLU from pxmerek order by MRKID asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object MerekMRKID: TStringField
      FieldName = 'MRKID'
      Size = 10
    end
    object MerekKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
    object MerekTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object dsMerek: TDataSource
    DataSet = Merek
    Left = 192
    Top = 160
  end
end
