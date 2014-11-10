inherited HJualPerKodeForm: THJualPerKodeForm
  Caption = 'Setting Harga Jual Per Kode'
  ClientHeight = 388
  ClientWidth = 804
  FormStyle = fsNormal
  ExplicitWidth = 812
  ExplicitHeight = 422
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 40
    Width = 804
    Height = 316
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 804
    ExplicitHeight = 316
    ClientRectBottom = 316
    ClientRectRight = 804
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'Setting Harga'
      ExplicitTop = 24
      ExplicitWidth = 804
      ExplicitHeight = 292
      object bvl1: TBevel
        Left = 3
        Top = 4
        Width = 837
        Height = 182
        Style = bsRaised
      end
      object bvl2: TBevel
        Left = 16
        Top = 13
        Width = 817
        Height = 61
      end
      object bvl3: TBevel
        Left = 16
        Top = 80
        Width = 817
        Height = 68
      end
      object lbl8: TLabel
        Left = 24
        Top = 20
        Width = 141
        Height = 20
        Caption = 'Diurutkan Berdasarkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFrom: TLabel
        Left = 25
        Top = 87
        Width = 141
        Height = 20
        Caption = 'Diurutkan Berdasarkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTo: TLabel
        Left = 24
        Top = 118
        Width = 141
        Height = 20
        Caption = 'Diurutkan Berdasarkan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 192
        Align = alBottom
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 0
        Height = 100
        Width = 804
        object lbl3: TLabel
          Left = 8
          Top = 49
          Width = 80
          Height = 20
          Caption = 'Satuan Besar'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 167
          Top = 49
          Width = 98
          Height = 20
          Caption = 'Isi Satuan Besar'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 286
          Top = 49
          Width = 109
          Height = 20
          Caption = 'Satuan Menengah'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 432
          Top = 49
          Width = 127
          Height = 20
          Caption = 'Isi Satuan Menengah'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 590
          Top = 49
          Width = 76
          Height = 20
          Caption = 'Satuan Kecil'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 8
          Top = 3
          Width = 97
          Height = 20
          Caption = 'NAMA BARANG'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 69
          Width = 152
          Height = 28
          Color = 15985897
          DataField = 'Stn1'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 167
          Top = 69
          Width = 113
          Height = 28
          Color = 15985897
          DataField = 'Isi1'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 286
          Top = 69
          Width = 140
          Height = 28
          Color = 15985897
          DataField = 'Stn2'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 432
          Top = 69
          Width = 113
          Height = 28
          Color = 15985897
          DataField = 'Isi2'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 551
          Top = 69
          Width = 148
          Height = 28
          Color = 15985897
          DataField = 'Stn3'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 23
          Width = 832
          Height = 28
          Color = 15985897
          DataField = 'Nama1'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
      end
      object cbUrut: TComboBox
        Left = 172
        Top = 17
        Width = 216
        Height = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = cbUrutChange
        Items.Strings = (
          'Barang'
          'Jenis'
          'Golongan'
          'Merek')
      end
      object chkAll: TcxCheckBox
        Left = 172
        Top = 46
        Caption = 'Tampilkan Semua'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Transparent = True
        Width = 145
      end
      object edtKodeTo: TcxTextEdit
        Left = 172
        Top = 115
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 200
      end
      object edtKodeFrom: TcxTextEdit
        Left = 172
        Top = 84
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 200
      end
      object btnAwal: TcxButton
        Left = 372
        Top = 86
        Width = 27
        Height = 25
        Action = taCariAwal
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAkhi: TcxButton
        Left = 372
        Top = 117
        Width = 27
        Height = 25
        Action = taCariAkhir
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNamaTo: TcxTextEdit
        Left = 399
        Top = 115
        Enabled = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        Width = 400
      end
      object edtNamaFrom: TcxTextEdit
        Left = 399
        Top = 84
        Enabled = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Arial Narrow'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        Width = 400
      end
      object btBatal: TcxButton
        Left = 265
        Top = 151
        Width = 88
        Height = 31
        Action = taBatal
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btTampil: TcxButton
        Left = 172
        Top = 151
        Width = 87
        Height = 32
        Action = taLoadAll
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 804
        Height = 192
        Align = alClient
        TabOrder = 11
        LookAndFeel.SkinName = 'Office2010Blue'
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          DataController.DataSource = dsHJual
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle1
          Styles.Content = cxStyle2
          Styles.ContentEven = cxStyle3
          Styles.ContentOdd = cxStyle4
          Styles.FilterBox = cxStyle5
          Styles.Inactive = cxStyle10
          Styles.IncSearch = cxStyle11
          Styles.Selection = cxStyle14
          Styles.Footer = cxStyle6
          Styles.Group = cxStyle7
          Styles.GroupByBox = cxStyle8
          Styles.Header = cxStyle9
          Styles.Indicator = cxStyle12
          Styles.Preview = cxStyle13
          object cxGrid1DBTableView1BrgID: TcxGridDBColumn
            Caption = 'BARANG'
            DataBinding.FieldName = 'BrgID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'BRGID'
            Properties.ListColumns = <
              item
                FieldName = 'BRGID'
              end>
            Properties.ListSource = ds1
            HeaderAlignmentHorz = taCenter
            Width = 147
          end
          object cxGrid1DBTableView1Hpp: TcxGridDBColumn
            Caption = 'HPP'
            DataBinding.FieldName = 'Hpp'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taRightJustify
            Width = 106
          end
          object cxGrid1DBTableView1Profit: TcxGridDBColumn
            Caption = 'PROFIT'
            DataBinding.FieldName = 'Profit'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGrid1DBTableView1Profitnilai: TcxGridDBColumn
            Caption = 'NILAI PROFIT'
            DataBinding.FieldName = 'Profitnilai'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taRightJustify
            Width = 113
          end
          object cxGrid1DBTableView1H3: TcxGridDBColumn
            Caption = 'HRG. SAT. KECIL'
            DataBinding.FieldName = 'H3'
            HeaderAlignmentHorz = taRightJustify
            Width = 125
          end
          object cxGrid1DBTableView1H2: TcxGridDBColumn
            Caption = 'HRG. SAT. MENENGAH'
            DataBinding.FieldName = 'H2'
            HeaderAlignmentHorz = taRightJustify
            Width = 159
          end
          object cxGrid1DBTableView1H1: TcxGridDBColumn
            Caption = 'HRG. SAT. BESAR'
            DataBinding.FieldName = 'H1'
            HeaderAlignmentHorz = taRightJustify
            Width = 133
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 356
    Width = 804
    ExplicitTop = 356
    ExplicitWidth = 804
    inherited btn1: TButton
      Left = 689
      Top = 33
      Visible = False
      ExplicitLeft = 689
      ExplicitTop = 33
    end
    inherited btn2: TButton
      Left = 768
      Top = 33
      Visible = False
      ExplicitLeft = 768
      ExplicitTop = 33
    end
    object cxButton6: TcxButton
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Action = taMassal
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 2
    end
    object cxButton8: TcxButton
      Left = 85
      Top = 4
      Width = 75
      Height = 25
      Action = taLoad
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
    end
    object cxButton9: TcxButton
      Left = 162
      Top = 4
      Width = 75
      Height = 25
      Action = taLoadHpp
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 4
    end
    object cxButton10: TcxButton
      Left = 239
      Top = 4
      Width = 75
      Height = 25
      Action = DataSetPost1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 5
    end
    object cxButton11: TcxButton
      Left = 316
      Top = 4
      Width = 75
      Height = 25
      Action = DataSetCancel1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 6
    end
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alLeftCenter
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Arial Narrow'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 6
    Height = 40
    Width = 804
    object lbl1: TLabel
      Left = 8
      Top = 11
      Width = 73
      Height = 20
      Caption = 'Jenis Harga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GudangID: TcxTextEdit
      Left = 117
      Top = 6
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 228
    end
    object cxButton7: TcxButton
      Left = 345
      Top = 8
      Width = 27
      Height = 25
      Action = taCariHarga
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GudangNama: TcxTextEdit
      Left = 372
      Top = 6
      Enabled = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Arial Narrow'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 327
    end
  end
  inherited actlst1: TActionList
    Top = 112
    inherited DataSetPost1: TDataSetPost
      DataSource = dsHJual
    end
    object taCariHarga: TAction
      Caption = '...'
      OnExecute = taCariHargaExecute
    end
    object taLoad: TAction
      Caption = '&Load'
      OnExecute = taLoadExecute
    end
    object taTampil: TAction
      Caption = '&Tampil'
      OnExecute = taTampilExecute
    end
    object taCetak: TAction
      Caption = '&Cetak'
    end
    object taCariAwal: TAction
      Caption = '...'
      OnExecute = taCariAwalExecute
    end
    object taCariAkhir: TAction
      Caption = '...'
      OnExecute = taCariAkhirExecute
    end
    object taLoadAll: TAction
      Caption = 'T&ampilkan'
      OnExecute = taLoadAllExecute
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
    object taMassal: TAction
      Caption = '&Massal'
      OnExecute = taMassalExecute
    end
    object taLoadHpp: TAction
      Caption = 'Load HPP'
      OnExecute = taLoadHppExecute
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 7340384
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 208
    Top = 104
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 216
    Top = 104
    PixelsPerInch = 96
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle27: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clWhite
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle15
      Styles.Content = cxStyle16
      Styles.ContentEven = cxStyle17
      Styles.ContentOdd = cxStyle18
      Styles.FilterBox = cxStyle19
      Styles.Inactive = cxStyle24
      Styles.IncSearch = cxStyle25
      Styles.Selection = cxStyle28
      Styles.Footer = cxStyle20
      Styles.Group = cxStyle21
      Styles.GroupByBox = cxStyle22
      Styles.Header = cxStyle23
      Styles.Indicator = cxStyle26
      Styles.Preview = cxStyle27
      BuiltIn = True
    end
  end
  object JHarga: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select HrgID, Keterangan, ValID from pxharga'#13#10'order by Keteranga' +
      'n Asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 16
    Top = 144
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
  end
  object Barang: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select BRGID, Nama1, Stn1, Stn2, Stn3, Isi1, Isi2 from inbarang ' +
      'order by BrgID,Nama1 asc'
    DataSource = dsHJual
    IndexFieldNames = 'BRGID'
    MasterFields = 'BrgID'
    Parameters = <>
    Left = 16
    Top = 194
    object BarangBRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object BarangNama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
    object BarangStn1: TStringField
      FieldName = 'Stn1'
      Size = 5
    end
    object BarangStn2: TStringField
      FieldName = 'Stn2'
      Size = 5
    end
    object BarangStn3: TStringField
      FieldName = 'Stn3'
      Size = 5
    end
    object BarangIsi1: TFMTBCDField
      FieldName = 'Isi1'
      Precision = 18
    end
    object BarangIsi2: TFMTBCDField
      FieldName = 'Isi2'
      Precision = 18
    end
  end
  object HJual: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = HJualAfterPost
    CommandText = 
      'select CabID, HrgID, BrgID, Hpp, Profit, Profitnilai, H1, H2, H3' +
      ', Create_id, Create_Tgl, Modify_id, Modify_Tgl from inhisbarangh' +
      'jual'#13#10'order by BrgId, HrgID asc'
    CommandTimeout = 300
    Parameters = <>
    Left = 16
    Top = 96
    object HJualCabID: TStringField
      FieldName = 'CabID'
      Size = 10
    end
    object HJualHrgID: TStringField
      FieldName = 'HrgID'
      Size = 5
    end
    object HJualBrgID: TStringField
      FieldName = 'BrgID'
      OnValidate = HJualBrgIDValidate
      Size = 30
    end
    object HJualHpp: TFMTBCDField
      FieldName = 'Hpp'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualProfit: TFMTBCDField
      FieldName = 'Profit'
      OnValidate = HJualProfitValidate
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object HJualProfitnilai: TFMTBCDField
      FieldName = 'Profitnilai'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualH1: TFMTBCDField
      FieldName = 'H1'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualH2: TFMTBCDField
      FieldName = 'H2'
      OnValidate = HJualH2Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualH3: TFMTBCDField
      FieldName = 'H3'
      OnValidate = HJualH3Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualCreate_id: TStringField
      FieldName = 'Create_id'
      Size = 10
    end
    object HJualCreate_Tgl: TDateTimeField
      FieldName = 'Create_Tgl'
    end
    object HJualModify_id: TStringField
      FieldName = 'Modify_id'
      Size = 10
    end
    object HJualModify_Tgl: TDateTimeField
      FieldName = 'Modify_Tgl'
    end
  end
  object dsHJual: TDataSource
    DataSet = HJual
    Left = 72
    Top = 96
  end
  object ds_find_barang: TDataSource
    DataSet = Barang
    Left = 136
    Top = 192
  end
  object sp_Tampil: TADOStoredProc
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_Harga_Jual_ALL'
    Parameters = <
      item
        Name = 'BrgIDAwal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'BrgIDAkhir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'HrgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'StatAll'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = 'cari'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end>
    Left = 72
    Top = 144
    object sp_TampilCabID: TStringField
      FieldName = 'CabID'
      ReadOnly = True
      Size = 10
    end
    object sp_TampilHrgID: TStringField
      FieldName = 'HrgID'
      ReadOnly = True
      Size = 5
    end
    object sp_TampilBrgID: TStringField
      FieldName = 'BrgID'
      ReadOnly = True
      Size = 30
    end
    object sp_TampilHpp: TFMTBCDField
      FieldName = 'Hpp'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilProfit: TFMTBCDField
      FieldName = 'Profit'
      ReadOnly = True
      Precision = 18
    end
    object sp_TampilProfitnilai: TFMTBCDField
      FieldName = 'Profitnilai'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilH1: TFMTBCDField
      FieldName = 'H1'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilH2: TFMTBCDField
      FieldName = 'H2'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilH3: TFMTBCDField
      FieldName = 'H3'
      ReadOnly = True
      Precision = 28
    end
  end
  object Golongan: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select GolID, Keterangan from pxgolongan order by keterangan, Go' +
      'lID asc'
    Parameters = <>
    Left = 432
    Top = 72
    object GolonganGolID: TStringField
      FieldName = 'GolID'
      Size = 10
    end
    object GolonganKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Jenis: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select JenisID, Keterangan  from pxjenis order by Keterangan, Je' +
      'nisId Asc'
    Parameters = <>
    Left = 480
    Top = 72
    object JenisJenisID: TStringField
      FieldName = 'JenisID'
      Size = 10
    end
    object JenisKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 30
    end
  end
  object Merek: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select MRKID, KETERANGAN from pxmerek order by Keterangan, MRKID' +
      ' Asc'
    Parameters = <>
    Left = 480
    Top = 120
    object MerekMRKID: TStringField
      FieldName = 'MRKID'
      Size = 10
    end
    object MerekKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
  end
  object Barang_: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select BRGID, Nama1, Stn1, Stn2, Stn3, Isi1, Isi2 from inbarang'#13 +
      #10'where brgId =:brgId'
    Parameters = <
      item
        Name = 'brgId'
        DataType = ftWideString
        Size = -1
        Value = ''
      end>
    Left = 72
    Top = 194
    object Barang_BRGID: TStringField
      FieldName = 'BRGID'
      Size = 30
    end
    object Barang_Nama1: TStringField
      FieldName = 'Nama1'
      Size = 100
    end
    object Barang_Stn1: TStringField
      FieldName = 'Stn1'
      Size = 5
    end
    object Barang_Stn2: TStringField
      FieldName = 'Stn2'
      Size = 5
    end
    object Barang_Stn3: TStringField
      FieldName = 'Stn3'
      Size = 5
    end
    object Barang_Isi1: TFMTBCDField
      FieldName = 'Isi1'
      Precision = 18
    end
    object Barang_Isi2: TFMTBCDField
      FieldName = 'Isi2'
      Precision = 18
    end
  end
  object ds1: TDataSource
    DataSet = Barang
    Left = 136
    Top = 144
  end
  object sp_find_table: TADOStoredProc
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'px_find_table'
    Parameters = <
      item
        Name = 'brgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'CabID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'GdgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'Table_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 216
    Top = 200
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
  end
  object sp_input_H_Jual: TADOStoredProc
    Connection = HJualForm.connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_harga_jual'
    Parameters = <
      item
        Name = 'BrgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'HRGID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'CABID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'Profit_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 18
        Value = 0c
      end
      item
        Name = 'ProfitNilai_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'H1_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'H2_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'H3_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end
      item
        Name = 'ID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'StatTransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 255
        Value = ''
      end
      item
        Name = 'HPP_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = 0c
      end>
    Left = 216
    Top = 152
  end
  object ds2: TDataSource
    DataSet = sp_Tampil
    Left = 136
    Top = 96
  end
  object sp_find_barang: TADOStoredProc
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'PX_Find_Barang'
    Parameters = <
      item
        Name = 'Nama_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 296
    Top = 200
    object sp_find_barangNama: TStringField
      FieldName = 'Nama'
      ReadOnly = True
      Size = 30
    end
    object sp_find_barangStn1: TStringField
      FieldName = 'Stn1'
      Size = 5
    end
    object sp_find_barangStn2: TStringField
      FieldName = 'Stn2'
      Size = 5
    end
    object sp_find_barangStn3: TStringField
      FieldName = 'Stn3'
      Size = 5
    end
    object sp_find_barangIsi1: TFMTBCDField
      FieldName = 'Isi1'
      Precision = 18
    end
    object sp_find_barangIsi2: TFMTBCDField
      FieldName = 'Isi2'
      Precision = 18
    end
    object sp_find_barangHPP_: TFMTBCDField
      FieldName = 'HPP_'
      ReadOnly = True
      Precision = 28
    end
  end
  object sp_prosesloadhpp: TADOStoredProc
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    ProcedureName = 'sp_proses_load_Hpp_Jual'
    Parameters = <
      item
        Name = 'hrgtemp'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'sysparam'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'ID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 368
    Top = 201
    object sp_prosesloadhpphasil: TIntegerField
      FieldName = 'hasil'
      ReadOnly = True
    end
  end
  object sphishbelibrg: TADOStoredProc
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    ProcedureName = 'sp_find_Harga_Jual_ALL'
    Parameters = <
      item
        Name = 'BrgIDAwal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'BrgIDAkhir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'HrgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = 'StatAll'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = 'cari'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end>
    Left = 448
    Top = 201
    object sphishbelibrgCabID: TStringField
      FieldName = 'CabID'
      ReadOnly = True
      Size = 10
    end
    object sphishbelibrgHrgID: TStringField
      FieldName = 'HrgID'
      ReadOnly = True
      Size = 5
    end
    object sphishbelibrgBrgID: TStringField
      FieldName = 'BrgID'
      ReadOnly = True
      Size = 30
    end
    object sphishbelibrgHpp: TFMTBCDField
      FieldName = 'Hpp'
      ReadOnly = True
      Precision = 28
    end
    object sphishbelibrgProfit: TFMTBCDField
      FieldName = 'Profit'
      ReadOnly = True
      Precision = 18
    end
    object sphishbelibrgProfitnilai: TFMTBCDField
      FieldName = 'Profitnilai'
      ReadOnly = True
      Precision = 28
    end
    object sphishbelibrgH1: TFMTBCDField
      FieldName = 'H1'
      ReadOnly = True
      Precision = 28
    end
    object sphishbelibrgH2: TFMTBCDField
      FieldName = 'H2'
      ReadOnly = True
      Precision = 28
    end
    object sphishbelibrgH3: TFMTBCDField
      FieldName = 'H3'
      ReadOnly = True
      Precision = 28
    end
  end
  object PXSystem: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 'select METODE from pxsystem'
    Parameters = <>
    Left = 432
    Top = 120
    object PXSystemMETODE: TWideStringField
      FieldName = 'METODE'
      FixedChar = True
      Size = 1
    end
  end
end
