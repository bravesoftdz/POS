inherited INNoUrutForm: TINNoUrutForm
  Caption = 'Setting NO. Urut Inventory'
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 314
    ExplicitTop = 5
    ExplicitHeight = 344
    ClientRectBottom = 308
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'No. Urut'
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
    Top = 319
    ExplicitTop = 329
    ExplicitHeight = 35
    Height = 35
    object cxButton1: TcxButton
      Left = 6
      Top = 6
      Width = 75
      Height = 25
      Action = taKeterangan
      LookAndFeel.Kind = lfOffice11
      TabOrder = 0
    end
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 319
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
    Height = 314
    ExplicitTop = 5
    ExplicitHeight = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsINNoUrut
      object cxGrid1DBTableView1TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'Type'
        Properties.ListColumns = <
          item
            FieldName = 'Type'
          end>
        Properties.ListSource = dspxkode
        Width = 293
      end
      object cxGrid1DBTableView1KODE: TcxGridDBColumn
        DataBinding.FieldName = 'KODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 60
      end
      object cxGrid1DBTableView1NOAKHIR: TcxGridDBColumn
        DataBinding.FieldName = 'NOAKHIR'
        HeaderAlignmentHorz = taRightJustify
        Width = 71
      end
    end
  end
  inherited actlst1: TActionList
    object taKeterangan: TAction
      Caption = 'Keterangan'
      OnExecute = taKeteranganExecute
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
    Left = 48
    Top = 112
  end
  object INNoUrut: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    OnNewRecord = INNoUrutNewRecord
    CommandText = 'select TYPE, KODE, NOAKHIR, TGLU from innourut'
    Parameters = <>
    Left = 48
    Top = 168
    object INNoUrutTYPE: TStringField
      FieldName = 'TYPE'
      Size = 100
    end
    object INNoUrutKODE: TStringField
      FieldName = 'KODE'
      Size = 5
    end
    object INNoUrutNOAKHIR: TIntegerField
      FieldName = 'NOAKHIR'
    end
    object INNoUrutTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object dsINNoUrut: TDataSource
    DataSet = INNoUrut
    Left = 112
    Top = 168
  end
  object pxkode: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select Type, lBrg, lBeli, lJual, Jtran from pxkode'#13#10'where lbrg =' +
      #39'Y'#39' and lbeli = '#39'T'#39' and ljual = '#39'T'#39
    Parameters = <>
    Left = 48
    Top = 224
    object pxkodeType: TStringField
      FieldName = 'Type'
      Size = 100
    end
    object pxkodelBrg: TStringField
      FieldName = 'lBrg'
      Size = 1
    end
    object pxkodelBeli: TStringField
      FieldName = 'lBeli'
      Size = 1
    end
    object pxkodelJual: TStringField
      FieldName = 'lJual'
      Size = 1
    end
    object pxkodeJtran: TStringField
      FieldName = 'Jtran'
      Size = 5
    end
  end
  object dspxkode: TDataSource
    DataSet = pxkode
    Left = 112
    Top = 224
  end
end
