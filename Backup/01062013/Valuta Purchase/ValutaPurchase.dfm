inherited ValutaPurchaseForm: TValutaPurchaseForm
  Caption = 'Valuta Purchase Form'
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
    LevelTabs.Style = 8
    RootLevelOptions.DetailTabsPosition = dtpTop
    ExplicitTop = 5
    ExplicitHeight = 344
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsValuta
      object cxGrid1DBTableView1VALID: TcxGridDBColumn
        Caption = 'VALUTA'
        DataBinding.FieldName = 'VALID'
        HeaderAlignmentHorz = taCenter
        Width = 48
      end
      object cxGrid1DBTableView1KETERANGAN: TcxGridDBColumn
        DataBinding.FieldName = 'KETERANGAN'
        Width = 376
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
      Caption = 'Nilai Tukar Valuta'
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
      'select VALID, KETERANGAN, TGLU, Status_ from pxvaluta '#13#10'Where st' +
      'atus_ = '#39'AP'#39#13#10'order by Keterangan asc'
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
  object valutaTukar: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 
      'select TUKARID, VALID, TUKAR, TGL1, TGL2, TglU from pxvalutatuka' +
      'r'#13#10'order by VaLID asc, TGL1, TGL2 desc'
    CommandTimeout = 300
    DataSource = dsValuta
    IndexFieldNames = 'VALID'
    MasterFields = 'VALID'
    Parameters = <>
    Left = 136
    Top = 216
    object valutaTukarVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object valutaTukarTUKAR: TFMTBCDField
      FieldName = 'TUKAR'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object valutaTukarTGL1: TDateField
      FieldName = 'TGL1'
    end
    object valutaTukarTGL2: TDateField
      FieldName = 'TGL2'
    end
    object valutaTukarTglU: TDateTimeField
      FieldName = 'TglU'
    end
    object valutaTukarTUKARID: TSmallintField
      FieldName = 'TUKARID'
    end
  end
  object dsValutaTukar: TDataSource
    DataSet = valutaTukar
    Left = 192
    Top = 216
  end
end
