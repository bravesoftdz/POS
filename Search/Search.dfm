inherited SearchForm: TSearchForm
  Caption = 'Search'
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 434
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 5
    Height = 311
    ExplicitTop = 5
    ExplicitHeight = 311
    ClientRectBottom = 305
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 6
      ExplicitTop = 29
      ExplicitWidth = 411
      ExplicitHeight = 273
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Style.IsFontAssigned = True
    ExplicitHeight = 0
    Height = 0
  end
  inherited cxGroupBox3: TcxGroupBox
    object cxButton1: TcxButton
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Action = taSelect
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 81
      Top = 4
      Width = 75
      Height = 25
      Action = taBatal
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 1
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 0
    ExplicitTop = 0
  end
  inherited cxGrid1: TcxGrid
    Top = 5
    Height = 311
    ExplicitTop = 5
    ExplicitHeight = 311
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OptionsData.Appending = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
    end
  end
  inherited actlst1: TActionList
    object taSelect: TAction
      Caption = '&Select'
      OnExecute = taSelectExecute
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
end
