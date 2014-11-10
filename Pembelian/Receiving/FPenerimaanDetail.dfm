inherited FPenerimaanDetailForm: TFPenerimaanDetailForm
  Caption = 'Modul Detail Receiving'
  ClientHeight = 373
  ClientWidth = 463
  ExplicitWidth = 471
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 0
    Width = 463
    Height = 341
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    ParentFont = False
    ExplicitLeft = 0
    ExplicitTop = 80
    ClientRectBottom = 341
    ClientRectRight = 463
    ClientRectTop = 27
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'General'
      ExplicitTop = 24
      ExplicitWidth = 426
      ExplicitHeight = 222
      object lbl1: TLabel
        Left = 16
        Top = 8
        Width = 34
        Height = 16
        Caption = 'BrgID'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 16
        Top = 56
        Width = 20
        Height = 16
        Caption = 'Qty'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 16
        Top = 84
        Width = 52
        Height = 16
        Caption = 'HSatuan'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl15: TLabel
        Left = 16
        Top = 283
        Width = 38
        Height = 16
        Caption = 'Harga'
        FocusControl = DBEdit15
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 16
        Top = 32
        Width = 38
        Height = 16
        Caption = 'NSTN'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 82
        Top = 3
        Width = 350
        Height = 24
        DataField = 'BrgID'
        DataSource = FPenerimaanForm.ReceivingDtl_
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 82
        Top = 54
        Width = 69
        Height = 24
        DataField = 'Qty'
        DataSource = FPenerimaanForm.ReceivingDtl_
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 82
        Top = 81
        Width = 247
        Height = 24
        DataField = 'HSatuan'
        DataSource = FPenerimaanForm.ReceivingDtl_
        TabOrder = 2
      end
      object grp1: TGroupBox
        Left = 3
        Top = 111
        Width = 457
        Height = 162
        Caption = 'Discon'
        TabOrder = 3
        object lbl5: TLabel
          Left = 16
          Top = 27
          Width = 40
          Height = 16
          Caption = 'Disc. 1'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 153
          Top = 27
          Width = 12
          Height = 16
          Caption = '%'
          FocusControl = DBEdit6
        end
        object lbl7: TLabel
          Left = 16
          Top = 54
          Width = 40
          Height = 16
          Caption = 'Disc. 2'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 153
          Top = 54
          Width = 12
          Height = 16
          Caption = '%'
          FocusControl = DBEdit8
        end
        object lbl9: TLabel
          Left = 16
          Top = 81
          Width = 40
          Height = 16
          Caption = 'Disc. 3'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl10: TLabel
          Left = 153
          Top = 108
          Width = 12
          Height = 16
          Caption = '%'
          FocusControl = DBEdit10
        end
        object lbl11: TLabel
          Left = 153
          Top = 81
          Width = 12
          Height = 16
          Caption = '%'
          FocusControl = DBEdit11
        end
        object lbl12: TLabel
          Left = 16
          Top = 108
          Width = 40
          Height = 16
          Caption = 'Disc. 4'
          FocusControl = DBEdit12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl13: TLabel
          Left = 16
          Top = 135
          Width = 40
          Height = 16
          Caption = 'Disc. 5'
          FocusControl = DBEdit13
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl14: TLabel
          Left = 153
          Top = 135
          Width = 12
          Height = 16
          Caption = '%'
          FocusControl = DBEdit14
        end
        object DBEdit5: TDBEdit
          Left = 79
          Top = 24
          Width = 69
          Height = 24
          DataField = 'Disc1'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 171
          Top = 24
          Width = 215
          Height = 24
          DataField = 'NDisc1'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 79
          Top = 51
          Width = 69
          Height = 24
          DataField = 'Disc2'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 171
          Top = 51
          Width = 215
          Height = 24
          DataField = 'NDisc2'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 79
          Top = 78
          Width = 69
          Height = 24
          DataField = 'Disc3'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 4
        end
        object DBEdit10: TDBEdit
          Left = 171
          Top = 105
          Width = 215
          Height = 24
          DataField = 'NDisc4'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 171
          Top = 78
          Width = 215
          Height = 24
          DataField = 'NDisc3'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 6
        end
        object DBEdit12: TDBEdit
          Left = 79
          Top = 105
          Width = 69
          Height = 24
          DataField = 'Disc4'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 7
        end
        object DBEdit13: TDBEdit
          Left = 79
          Top = 132
          Width = 69
          Height = 24
          DataField = 'Disc5'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 8
        end
        object DBEdit14: TDBEdit
          Left = 171
          Top = 132
          Width = 215
          Height = 24
          DataField = 'NDisc5'
          DataSource = FPenerimaanForm.ReceivingDtl_
          TabOrder = 9
        end
      end
      object DBEdit15: TDBEdit
        Left = 82
        Top = 279
        Width = 247
        Height = 24
        DataField = 'Harga'
        DataSource = FPenerimaanForm.ReceivingDtl_
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 82
        Top = 29
        Width = 69
        Height = 24
        DataField = 'NSTN'
        DataSource = FPenerimaanForm.ReceivingDtl_
        TabOrder = 5
      end
    end
  end
  inherited pnl1: TPanel
    Top = 341
    Width = 463
    ExplicitTop = 326
    inherited btn1: TButton
      Left = 302
      ExplicitLeft = 302
    end
    inherited btn2: TButton
      Left = 381
      ExplicitLeft = 381
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    Left = 464
    Top = 72
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 400
    Top = 72
  end
end
