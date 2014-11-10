inherited APNoUrutKetForm: TAPNoUrutKetForm
  Caption = 'Keterangan Transaksi No. Urut'
  FormStyle = fsNormal
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 344
    ClientRectBottom = 338
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 240
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
      DataController.DataSource = dsinnourutketerangan
      OptionsData.Appending = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1JTRAN: TcxGridDBColumn
        DataBinding.FieldName = 'JTRAN'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.CharCase = ecUpperCase
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'Jtran'
        Properties.ListColumns = <
          item
            FieldName = 'Jtran'
          end>
        Properties.ListSource = APNOUrutForm.dspxkode
        Properties.ReadOnly = True
      end
      object cxGrid1DBTableView1NOTRANS: TcxGridDBColumn
        DataBinding.FieldName = 'NOTRANS'
      end
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object APnourutketerangan: TADODataSet
    Connection = APNOUrutForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select JTRAN, NOTRANS, TGLU from apnourutketerangan'#13#10'where JTran' +
      ' IN (Select JTran From PXKode K Inner Join APNOurut I on'#13#10'K.Type' +
      ' = I.Type where I.Type =:Type_)'
    CommandTimeout = 300
    Parameters = <
      item
        Name = 'Type_'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = ''
      end>
    Left = 48
    Top = 144
    object APnourutketeranganJTRAN: TStringField
      FieldName = 'JTRAN'
      Size = 5
    end
    object APnourutketeranganNOTRANS: TStringField
      FieldName = 'NOTRANS'
    end
    object APnourutketeranganTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object dsinnourutketerangan: TDataSource
    DataSet = APnourutketerangan
    Left = 48
    Top = 192
  end
end
