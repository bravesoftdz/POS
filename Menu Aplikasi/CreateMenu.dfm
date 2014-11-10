inherited CreateMenuForm: TCreateMenuForm
  Caption = 'Create Akses Menu'
  ClientWidth = 745
  OnCreate = FormCreate
  ExplicitWidth = 753
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Width = 745
    Height = 316
    ExplicitTop = 5
    ExplicitWidth = 745
    ExplicitHeight = 316
    ClientRectBottom = 310
    ClientRectRight = 739
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 730
      ExplicitHeight = 278
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitWidth = 745
    ExplicitHeight = 0
    Height = 0
    Width = 745
  end
  inherited cxGroupBox2: TcxGroupBox
    Top = 321
    ExplicitTop = 321
    ExplicitWidth = 745
    ExplicitHeight = 33
    Height = 33
    Width = 745
    object cxButton1: TcxButton
      Left = 667
      Top = 3
      Width = 75
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Akses Menu'
      LookAndFeel.Kind = lfOffice11
      TabOrder = 0
    end
  end
  inherited cxGroupBox3: TcxGroupBox
    ExplicitWidth = 745
    ExplicitHeight = 0
    Height = 0
    Width = 745
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
    ExplicitWidth = 745
    Width = 745
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Width = 745
    Height = 316
    ExplicitTop = 5
    ExplicitWidth = 745
    ExplicitHeight = 316
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsMenu
      object cxGrid1DBTableView1Description: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
        Width = 561
      end
      object cxGrid1DBTableView1Exename: TcxGridDBColumn
        DataBinding.FieldName = 'Exename'
        Width = 182
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
    Left = 24
    Top = 88
  end
  object System: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select CABID from pxsystem'
    Parameters = <>
    Left = 80
    Top = 88
    object SystemCABID: TWideStringField
      FieldName = 'CABID'
      Size = 5
    end
  end
  object pxmenu: TADODataSet
    Connection = connTrading
    CursorType = ctStatic
    CommandText = 'select  Description, Exename from pxmenu'
    CommandTimeout = 300
    Parameters = <>
    Left = 24
    Top = 144
    object pxmenuDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object pxmenuExename: TWideStringField
      FieldName = 'Exename'
      Size = 50
    end
  end
  object dsMenu: TDataSource
    DataSet = pxmenu
    Left = 80
    Top = 144
  end
end
