inherited ARNoUrutKetForm: TARNoUrutKetForm
  Caption = 'Keterangan Transaksi No. Urut'
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
    ExplicitTop = 325
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
        Properties.ListSource = ARNoUrutForm.dspxkode
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
  object ARnourutketerangan: TADODataSet
    Connection = ARNoUrutForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select JTRAN, NOTRANS, TGLU from ARnourutketerangan'#13#10'where JTran' +
      ' IN (Select JTran From PXKode K Inner Join ARNOurut I on'#13#10'K.Type' +
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
    object ARnourutketeranganJTRAN: TStringField
      FieldName = 'JTRAN'
      Size = 5
    end
    object ARnourutketeranganNOTRANS: TStringField
      FieldName = 'NOTRANS'
    end
    object ARnourutketeranganTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
  end
  object dsinnourutketerangan: TDataSource
    DataSet = ARnourutketerangan
    Left = 48
    Top = 192
  end
end
