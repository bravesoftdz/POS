inherited ValutaSalesForm: TValutaSalesForm
  Caption = 'Valuta Sales Form'
  ClientWidth = 424
  OnCreate = FormCreate
  ExplicitWidth = 432
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Width = 424
    Height = 344
    ExplicitTop = 5
    ExplicitWidth = 424
    ExplicitHeight = 344
    ClientRectBottom = 338
    ClientRectRight = 418
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 424
    ExplicitHeight = 0
    Height = 0
    Width = 424
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 349
    ExplicitTop = 349
    ExplicitWidth = 424
    Width = 424
  end
  inherited cxGroupBox3: TcxGroupBox
    Top = 349
    ExplicitTop = 349
    ExplicitWidth = 424
    ExplicitHeight = 0
    Height = 0
    Width = 424
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
    ExplicitWidth = 424
    Width = 424
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Width = 424
    Height = 344
    ExplicitTop = 5
    ExplicitWidth = 424
    ExplicitHeight = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsValuta
      object cxGrid1DBTableView1VALID: TcxGridDBColumn
        Caption = 'VALUTA ID'
        DataBinding.FieldName = 'VALID'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGrid1DBTableView1KETERANGAN: TcxGridDBColumn
        DataBinding.FieldName = 'KETERANGAN'
        Width = 352
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsValutaTukar
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView2TGL1: TcxGridDBColumn
        DataBinding.FieldName = 'TGL1'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView2TGL2: TcxGridDBColumn
        DataBinding.FieldName = 'TGL2'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView2TUKAR: TcxGridDBColumn
        DataBinding.FieldName = 'TUKAR'
        HeaderAlignmentHorz = taRightJustify
      end
    end
    inherited cxGrid1Level1: TcxGridLevel
      Caption = 'Valuta'
    end
    object cxGrid1Level2: TcxGridLevel
      Caption = 'Valuta Tukar'
      GridView = cxGrid1DBTableView2
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
  object Valuta: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    BeforeInsert = ValutaBeforeInsert
    BeforePost = ValutaBeforePost
    CommandText = 
      'select VALID, KETERANGAN, TGLU, Status_ from pxvaluta'#13#10'where sta' +
      'tus_ ='#39'AR'#39' order by'#13#10'Keterangan asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 160
    object ValutaVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object ValutaKETERANGAN: TWideStringField
      FieldName = 'KETERANGAN'
      Size = 50
    end
    object ValutaTGLU: TDateTimeField
      FieldName = 'TGLU'
    end
    object ValutaStatus_: TWideStringField
      FieldName = 'Status_'
      FixedChar = True
      Size = 2
    end
  end
  object dsValuta: TDataSource
    DataSet = Valuta
    Left = 192
    Top = 160
  end
  object ValutaTukar: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select TUKARID, VALID, TUKAR, TGL1, TGL2, TglU from pxvalutatuka' +
      'r'#13#10'order by ValID asc, TGL1, TGL2 desc'
    CommandTimeout = 300
    Parameters = <>
    Left = 136
    Top = 208
    object ValutaTukarTUKARID: TSmallintField
      FieldName = 'TUKARID'
    end
    object ValutaTukarVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object ValutaTukarTUKAR: TFMTBCDField
      FieldName = 'TUKAR'
      Precision = 28
    end
    object ValutaTukarTGL1: TDateField
      FieldName = 'TGL1'
    end
    object ValutaTukarTGL2: TDateField
      FieldName = 'TGL2'
    end
    object ValutaTukarTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsValutaTukar: TDataSource
    DataSet = ValutaTukar
    Left = 192
    Top = 208
  end
end
