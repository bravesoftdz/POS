inherited JHargaForm: TJHargaForm
  Caption = 'Jenis Harga Jual'
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 344
    ClientRectBottom = 338
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
      DataController.DataSource = dsJharga
      object cxGrid1DBTableView1HrgID: TcxGridDBColumn
        Caption = 'Harga ID'
        DataBinding.FieldName = 'HrgID'
        HeaderAlignmentHorz = taCenter
        Width = 63
      end
      object cxGrid1DBTableView1Keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'Keterangan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 283
      end
      object cxGrid1DBTableView1ValID: TcxGridDBColumn
        Caption = 'Valuta'
        DataBinding.FieldName = 'ValID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'VALID'
        Properties.ListColumns = <
          item
            FieldName = 'Keterangan'
          end>
        Properties.ListSource = dsValuta
        HeaderAlignmentHorz = taCenter
        Width = 78
      end
    end
  end
  object JHarga: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select HrgID, Keterangan, ValID, Presen_, Presen_nilai, Tglu fro' +
      'm pxharga'#13#10'order by Keterangan Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object JHargaHrgID: TStringField
      FieldName = 'HrgID'
      Size = 5
    end
    object JHargaKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 50
    end
    object JHargaValID: TStringField
      FieldName = 'ValID'
      Size = 5
    end
    object JHargaPresen_: TFMTBCDField
      FieldName = 'Presen_'
      Precision = 18
    end
    object JHargaPresen_nilai: TFMTBCDField
      FieldName = 'Presen_nilai'
      Precision = 28
    end
    object JHargaTglu: TDateTimeField
      FieldName = 'Tglu'
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
  object dsJharga: TDataSource
    DataSet = JHarga
    Left = 192
    Top = 160
  end
  object Valuta: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select VALID, KETERANGAN from pxvaluta Where status_='#39'AR'#39' order ' +
      'by Keterangan asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 208
    object ValutaVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object ValutaKETERANGAN: TWideStringField
      FieldName = 'KETERANGAN'
      Size = 50
    end
  end
  object dsValuta: TDataSource
    DataSet = Valuta
    Left = 192
    Top = 208
  end
end
