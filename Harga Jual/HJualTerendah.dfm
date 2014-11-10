inherited HJualTerendahForm: THJualTerendahForm
  Caption = 'Harga Jual Minimum'
  ClientWidth = 804
  FormStyle = fsNormal
  Visible = True
  ExplicitWidth = 812
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 0
    Width = 804
    Height = 326
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 804
    ExplicitHeight = 326
    ClientRectBottom = 326
    ClientRectRight = 804
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'Setting Harga Jual Minimal'
      ExplicitTop = 24
      ExplicitWidth = 804
      ExplicitHeight = 302
      object bvl1: TBevel
        Left = 5
        Top = 3
        Width = 660
        Height = 293
        Style = bsRaised
      end
      object bvl2: TBevel
        Left = 14
        Top = 13
        Width = 643
        Height = 61
      end
      object bvl3: TBevel
        Left = 14
        Top = 80
        Width = 643
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
        Top = 92
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
        Left = 25
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
      object btBatal: TcxButton
        Left = 265
        Top = 151
        Width = 88
        Height = 31
        Action = taBatal
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 0
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
        Action = taTampil
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
      object btnAkhi: TcxButton
        Left = 372
        Top = 117
        Width = 27
        Height = 25
        Action = taCariAkhir
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Black'
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
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
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
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
        TabOrder = 4
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
        TabOrder = 5
        Transparent = True
        Width = 145
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
        TabOrder = 6
        Width = 200
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
        TabOrder = 7
        Width = 200
      end
      object edtNamaTo: TcxTextEdit
        Left = 400
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
        TabOrder = 8
        Width = 250
      end
      object edtNamaFrom: TcxTextEdit
        Left = 400
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
        TabOrder = 9
        Width = 250
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 804
        Height = 202
        Align = alClient
        TabOrder = 10
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
          DataController.DataSource = dsHJualMin
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
          object cxGrid1DBTableView1BRGID: TcxGridDBColumn
            Caption = 'BRG. ID'
            DataBinding.FieldName = 'BRGID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'BRGID'
            Properties.ListColumns = <
              item
                FieldName = 'BRGID'
              end>
            Properties.ListSource = ds_find_barang
          end
          object cxGrid1DBTableView1H3: TcxGridDBColumn
            Caption = 'HRG. KECIL'
            DataBinding.FieldName = 'H3'
            HeaderAlignmentHorz = taRightJustify
          end
          object cxGrid1DBTableView1H2: TcxGridDBColumn
            Caption = 'HRG. MENENGAH'
            DataBinding.FieldName = 'H2'
            HeaderAlignmentHorz = taRightJustify
          end
          object cxGrid1DBTableView1H1: TcxGridDBColumn
            Caption = 'HRG. BESAR'
            DataBinding.FieldName = 'H1'
            HeaderAlignmentHorz = taRightJustify
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 202
        Align = alBottom
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 11
        Height = 100
        Width = 804
        object lbl3: TLabel
          Left = 282
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
          Left = 372
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
          Left = 479
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
          Left = 625
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
          Left = 783
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
        object lbl1: TLabel
          Left = 8
          Top = 49
          Width = 52
          Height = 20
          Caption = 'Hrg. Beli'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 142
          Top = 49
          Width = 25
          Height = 20
          Caption = 'HPP'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 282
          Top = 69
          Width = 84
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
          Left = 372
          Top = 69
          Width = 101
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
          Left = 479
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
          Left = 625
          Top = 69
          Width = 117
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
          Left = 748
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
          Width = 888
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
        object DBEdit7: TDBEdit
          Left = 3
          Top = 70
          Width = 133
          Height = 28
          Color = 15985897
          DataField = 'HBeli'
          DataSource = ds_find_barang
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 142
          Top = 70
          Width = 134
          Height = 28
          Color = 15985897
          DataField = 'HPP'
          DataSource = dsHJualMin
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  inherited pnl1: TPanel
    Width = 804
    ExplicitTop = 326
    ExplicitWidth = 804
    inherited btn1: TButton
      Left = 445
      Top = 6
      Visible = False
      ExplicitLeft = 445
      ExplicitTop = 6
    end
    inherited btn2: TButton
      Left = 526
      Top = 6
      Visible = False
      ExplicitLeft = 526
      ExplicitTop = 6
    end
    object cxButton8: TcxButton
      Left = 5
      Top = 4
      Width = 75
      Height = 25
      Action = taLoad
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 2
    end
    object cxButton10: TcxButton
      Left = 86
      Top = 4
      Width = 75
      Height = 25
      Action = DataSetPost1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 3
    end
    object cxButton11: TcxButton
      Left = 163
      Top = 4
      Width = 75
      Height = 25
      Action = DataSetCancel1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 4
    end
  end
  inherited actlst1: TActionList
    inherited DataSetPost1: TDataSetPost
      DataSource = dsHJualMin
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = dsHJualMin
    end
    object taLoad: TAction
      Caption = '&Load'
      OnExecute = taLoadExecute
    end
    object taCariAwal: TAction
      Caption = '...'
      OnExecute = taCariAwalExecute
    end
    object taCariAkhir: TAction
      Caption = '...'
      OnExecute = taCariAkhirExecute
    end
    object taBatal: TAction
      Caption = '&Batal'
      OnExecute = taBatalExecute
    end
    object taTampil: TAction
      Caption = '&Tampil'
      OnExecute = taTampilExecute
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
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object HJualMin: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = HJualMinAfterPost
    CommandText = 
      'Select CabID, BRGID, HPP, H1, H2, H3, Create_ID, Create_Tgl, Mod' +
      'ify_ID, Modify_Tgl FROM inhisbaranghjualmin'
    CommandTimeout = 300
    Parameters = <>
    Left = 144
    Top = 104
    object HJualMinCabID: TWideStringField
      FieldName = 'CabID'
      Size = 10
    end
    object HJualMinBRGID: TWideStringField
      FieldName = 'BRGID'
      OnValidate = HJualMinBRGIDValidate
      Size = 30
    end
    object HJualMinHPP: TFMTBCDField
      FieldName = 'HPP'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualMinH1: TFMTBCDField
      FieldName = 'H1'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualMinH2: TFMTBCDField
      FieldName = 'H2'
      OnValidate = HJualMinH2Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualMinH3: TFMTBCDField
      FieldName = 'H3'
      OnValidate = HJualMinH3Validate
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object HJualMinCreate_ID: TWideStringField
      FieldName = 'Create_ID'
      Size = 10
    end
    object HJualMinCreate_Tgl: TDateTimeField
      FieldName = 'Create_Tgl'
    end
    object HJualMinModify_ID: TWideStringField
      FieldName = 'Modify_ID'
      Size = 10
    end
    object HJualMinModify_Tgl: TDateTimeField
      FieldName = 'Modify_Tgl'
    end
  end
  object dsHJualMin: TDataSource
    DataSet = HJualMin
    Left = 200
    Top = 104
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 312
    Top = 104
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
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
      Font.Height = -16
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
      AssignedValues = [svColor, svFont]
      Color = 14872561
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
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
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4707838
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
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
  object Barang: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 
      'select B.BRGID, B.Nama1, B.Stn1, B.Stn2, B.Stn3, B.Isi1, B.Isi2,' +
      ' BL.HBeli '#13#10'from inbarang B Inner Join INBarangHBeli BL on B.Brg' +
      'ID = BL.BrgID  order by BrgID,Nama1 asc'
    DataSource = dsHJualMin
    IndexFieldNames = 'BRGID'
    MasterFields = 'BrgID'
    Parameters = <>
    Left = 24
    Top = 154
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
      DisplayFormat = '#,#0.00'
      Precision = 18
    end
    object BarangIsi2: TFMTBCDField
      FieldName = 'Isi2'
      DisplayFormat = '#,#0.00'
      Precision = 18
    end
    object BarangHBeli: TFMTBCDField
      FieldName = 'HBeli'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
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
    Left = 80
    Top = 154
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
  object sp_Tampil: TADOStoredProc
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_find_harga_Jual_Minimal'
    Parameters = <
      item
        Name = 'brgtempakhir'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'brgtempawal'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = ''
      end
      item
        Name = 'statAll'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = 'cari'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = ''
      end>
    Left = 80
    Top = 104
    object sp_TampilCabID: TStringField
      FieldName = 'CabID'
      ReadOnly = True
      Size = 10
    end
    object sp_TampilBrgID: TStringField
      FieldName = 'BrgID'
      ReadOnly = True
      Size = 30
    end
    object sp_Tampilhbeli: TFMTBCDField
      FieldName = 'hbeli'
      ReadOnly = True
      Precision = 28
    end
    object sp_TampilHpp: TFMTBCDField
      FieldName = 'Hpp'
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
  object ds_find_barang: TDataSource
    DataSet = Barang
    Left = 144
    Top = 152
  end
  object PXSystem: TADODataSet
    Connection = HJualForm.connTrading
    CursorType = ctStatic
    CommandText = 'select METODE from pxsystem'
    Parameters = <>
    Left = 440
    Top = 80
    object PXSystemMETODE: TWideStringField
      FieldName = 'METODE'
      FixedChar = True
      Size = 1
    end
  end
  object Golongan: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select GolID, Keterangan from pxgolongan order by keterangan, Go' +
      'lID asc'
    Parameters = <>
    Left = 440
    Top = 32
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
    Left = 488
    Top = 32
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
    Left = 488
    Top = 80
    object MerekMRKID: TStringField
      FieldName = 'MRKID'
      Size = 10
    end
    object MerekKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
  end
  object sp_input_H_Jual_Min: TADOStoredProc
    Connection = HJualForm.connTrading
    CommandTimeout = 300
    ProcedureName = 'sp_input_temp_harga_jual_min'
    Parameters = <
      item
        Name = 'brgID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = 'HPP_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = Null
      end
      item
        Name = 'stattransaksi'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = 'CabID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = 'H1_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = Null
      end
      item
        Name = 'H2_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = Null
      end
      item
        Name = 'H3_'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 8
        Precision = 28
        Value = Null
      end
      item
        Name = 'ID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 200
    Top = 152
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
    Left = 200
    Top = 200
    object sp_find_tableHasil: TWideStringField
      FieldName = 'Hasil'
      ReadOnly = True
      Size = 1000
    end
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
end
