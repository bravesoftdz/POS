inherited FPenerimaanForm: TFPenerimaanForm
  Caption = 'Modul Transaksi Receiving'
  ClientHeight = 568
  ClientWidth = 993
  Font.Height = -13
  FormStyle = fsNormal
  Visible = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  ExplicitWidth = 1001
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 16
  inherited cxPageControl1: TcxPageControl
    Top = 42
    Width = 993
    Height = 378
    Align = alClient
    LookAndFeel.SkinName = ''
    ExplicitLeft = 0
    ExplicitTop = 42
    ExplicitWidth = 993
    ExplicitHeight = 378
    ClientRectBottom = 378
    ClientRectRight = 993
    ClientRectTop = 27
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'General'
      Color = 15985897
      ParentColor = False
      ExplicitTop = 27
      ExplicitWidth = 993
      ExplicitHeight = 351
      object bvl1: TBevel
        Left = 3
        Top = 0
        Width = 470
        Height = 141
        Shape = bsFrame
        Style = bsRaised
      end
      object bvl2: TBevel
        Left = 470
        Top = 0
        Width = 520
        Height = 141
        Shape = bsFrame
        Style = bsRaised
      end
      object lbl1: TLabel
        Left = 8
        Top = 6
        Width = 100
        Height = 19
        Caption = 'Tgl. Transaksi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 8
        Top = 33
        Width = 97
        Height = 19
        Caption = 'No. Transaksi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 8
        Top = 60
        Width = 58
        Height = 19
        Caption = 'Supplier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 8
        Top = 114
        Width = 51
        Height = 19
        Caption = 'No. PO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 476
        Top = 33
        Width = 44
        Height = 19
        Caption = 'Valuta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 476
        Top = 86
        Width = 38
        Height = 19
        Caption = 'Term'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 476
        Top = 114
        Width = 109
        Height = 19
        Caption = 'Nilai Tukar Ppn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 476
        Top = 61
        Width = 90
        Height = 19
        Caption = 'Valuta Tukar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 476
        Top = 5
        Width = 39
        Height = 19
        Caption = 'Bayar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblBayar: TLabel
        Left = 664
        Top = 8
        Width = 4
        Height = 16
      end
      object lbl10: TLabel
        Left = 684
        Top = 86
        Width = 34
        Height = 19
        Caption = 'Days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn4: TButton
        Left = 438
        Top = 58
        Width = 31
        Height = 25
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn4Click
        OnExit = btn4Exit
      end
      object notransaksi: TEdit
        Left = 160
        Top = 30
        Width = 249
        Height = 26
        BevelInner = bvSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'edt1'
      end
      object namaSupplier: TEdit
        Left = 160
        Top = 57
        Width = 279
        Height = 26
        BevelInner = bvSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'edt1'
        OnKeyDown = namaSupplierKeyDown
      end
      object kodeSupp: TEdit
        Left = 160
        Top = 84
        Width = 166
        Height = 26
        BevelInner = bvSpace
        Color = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'kodeSupp'
      end
      object valutaID: TEdit
        Left = 612
        Top = 30
        Width = 197
        Height = 26
        BevelInner = bvSpace
        Color = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'edt1'
      end
      object ValTukar: TEdit
        Left = 612
        Top = 57
        Width = 153
        Height = 26
        Alignment = taRightJustify
        BevelInner = bvSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'edt1'
      end
      object term: TEdit
        Left = 612
        Top = 84
        Width = 69
        Height = 26
        Alignment = taRightJustify
        BevelInner = bvSpace
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = 'edt4'
      end
      object tukarPpn: TEdit
        Left = 612
        Top = 111
        Width = 153
        Height = 26
        Alignment = taRightJustify
        BevelInner = bvSpace
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = 'edt4'
      end
      object cbbBayar: TComboBox
        Left = 612
        Top = 3
        Width = 49
        Height = 26
        AutoCloseUp = True
        BevelInner = bvSpace
        BevelKind = bkSoft
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnChange = cbbBayarChange
        OnCloseUp = cbbBayarCloseUp
        Items.Strings = (
          'T'
          'K')
      end
      object noPo: TEdit
        Left = 160
        Top = 111
        Width = 279
        Height = 26
        BevelInner = bvSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = 'edt1'
      end
      object btn5: TButton
        Left = 438
        Top = 112
        Width = 31
        Height = 25
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object cxPageControl2: TcxPageControl
        Left = 3
        Top = 147
        Width = 985
        Height = 201
        ActivePage = cxTabSheet2
        Anchors = [akLeft, akTop, akRight, akBottom]
        LookAndFeel.Kind = lfOffice11
        TabOrder = 11
        ClientRectBottom = 201
        ClientRectRight = 985
        ClientRectTop = 27
        object cxTabSheet2: TcxTabSheet
          Caption = 'Detail'
          ImageIndex = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 174
            Align = alClient
            TabOrder = 0
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
              DataController.DataSource = ReceivingDtl_
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Qty
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Harga
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1NDisc5
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1NDisc4
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1NDisc3
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1NDisc2
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1NDisc
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Disc5
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Disc4
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Disc3
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Disc2
                end
                item
                  Format = '###,#0.00'
                  Column = cxGrid1DBTableView1Disc1
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsData.CancelOnExit = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderEndEllipsis = True
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
              object cxGrid1DBTableView1Nomor: TcxGridDBColumn
                DataBinding.FieldName = 'Nomor'
              end
              object cxGrid1DBTableView1BrgID: TcxGridDBColumn
                DataBinding.FieldName = 'BrgID'
              end
              object cxGrid1DBTableView1NStn: TcxGridDBColumn
                DataBinding.FieldName = 'NStn'
              end
              object cxGrid1DBTableView1Qty: TcxGridDBColumn
                DataBinding.FieldName = 'Qty'
              end
              object cxGrid1DBTableView1HSatuan: TcxGridDBColumn
                DataBinding.FieldName = 'HSatuan'
              end
              object cxGrid1DBTableView1Disc1: TcxGridDBColumn
                DataBinding.FieldName = 'Disc1'
              end
              object cxGrid1DBTableView1Disc2: TcxGridDBColumn
                DataBinding.FieldName = 'Disc2'
              end
              object cxGrid1DBTableView1Disc3: TcxGridDBColumn
                DataBinding.FieldName = 'Disc3'
              end
              object cxGrid1DBTableView1Disc4: TcxGridDBColumn
                DataBinding.FieldName = 'Disc4'
              end
              object cxGrid1DBTableView1Disc5: TcxGridDBColumn
                DataBinding.FieldName = 'Disc5'
              end
              object cxGrid1DBTableView1NDisc: TcxGridDBColumn
                DataBinding.FieldName = 'NDisc'
              end
              object cxGrid1DBTableView1NDisc2: TcxGridDBColumn
                DataBinding.FieldName = 'NDisc2'
              end
              object cxGrid1DBTableView1NDisc3: TcxGridDBColumn
                DataBinding.FieldName = 'NDisc3'
              end
              object cxGrid1DBTableView1NDisc4: TcxGridDBColumn
                DataBinding.FieldName = 'NDisc4'
              end
              object cxGrid1DBTableView1NDisc5: TcxGridDBColumn
                DataBinding.FieldName = 'NDisc5'
              end
              object cxGrid1DBTableView1Harga: TcxGridDBColumn
                DataBinding.FieldName = 'Harga'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
      object tgltransaksi: TDateTimePicker
        Left = 160
        Top = 4
        Width = 186
        Height = 26
        BevelOuter = bvSpace
        Date = 41534.864798715280000000
        Time = 41534.864798715280000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
    end
  end
  inherited pnl1: TPanel
    Top = 420
    Width = 993
    Height = 148
    ExplicitTop = 420
    ExplicitWidth = 993
    ExplicitHeight = 148
    inherited btn1: TButton
      Left = 10
      Top = 45
      Visible = False
      ExplicitLeft = 10
      ExplicitTop = 45
    end
    inherited btn2: TButton
      Left = 89
      Top = 45
      Visible = False
      ExplicitLeft = 89
      ExplicitTop = 45
    end
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      PanelStyle.Active = True
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      DesignSize = (
        991
        146)
      Height = 146
      Width = 991
      object lbl16: TLabel
        Left = 5
        Top = 12
        Width = 91
        Height = 18
        Caption = 'Nama Barang'
        FocusControl = DBEdit15
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnl4: TPanel
        Left = 3
        Top = 37
        Width = 532
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvLowered
        TabOrder = 0
        object lbl13: TLabel
          Left = 3
          Top = 15
          Width = 89
          Height = 18
          Caption = 'Saldo Hutang'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object PosisiHutang: TEdit
          Left = 126
          Top = 12
          Width = 279
          Height = 26
          Alignment = taRightJustify
          BevelInner = bvSpace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'edt1'
        end
      end
      object pnl5: TPanel
        Left = 3
        Top = 94
        Width = 532
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvLowered
        TabOrder = 1
        object lbl14: TLabel
          Left = 5
          Top = 14
          Width = 84
          Height = 18
          Caption = 'Posisi Stock'
          FocusControl = DBEdit11
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit11: TDBEdit
          Left = 126
          Top = 11
          Width = 81
          Height = 26
          DataField = 'Stock'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 209
          Top = 11
          Width = 69
          Height = 26
          DataField = 'Stn'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Visible = False
        end
      end
      object pnl6: TPanel
        Left = 541
        Top = 37
        Width = 440
        Height = 102
        Anchors = [akTop, akRight]
        BevelOuter = bvLowered
        TabOrder = 2
        object lbl15: TLabel
          Left = 7
          Top = 5
          Width = 36
          Height = 18
          Caption = 'Bruto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl17: TLabel
          Left = 7
          Top = 29
          Width = 30
          Height = 18
          Caption = 'Disc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl18: TLabel
          Left = 227
          Top = 29
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl19: TLabel
          Left = 7
          Top = 53
          Width = 26
          Height = 18
          Caption = 'Ppn'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl20: TLabel
          Left = 7
          Top = 77
          Width = 36
          Height = 18
          Caption = 'Netto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl21: TLabel
          Left = 227
          Top = 53
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Disc: TEdit
          Left = 148
          Top = 23
          Width = 70
          Height = 26
          BevelInner = bvSpace
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'edt4'
        end
        object Ppn: TEdit
          Left = 148
          Top = 50
          Width = 70
          Height = 26
          BevelInner = bvSpace
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'edt4'
        end
        object NDisc: TEdit
          Left = 250
          Top = 26
          Width = 185
          Height = 26
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'edt4'
        end
        object NPPn: TEdit
          Left = 250
          Top = 50
          Width = 185
          Height = 26
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'edt4'
        end
        object Netto_: TEdit
          Left = 250
          Top = 74
          Width = 185
          Height = 26
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'edt4'
        end
        object Bruto_: TEdit
          Left = 250
          Top = 2
          Width = 185
          Height = 26
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'edt4'
        end
      end
      object DBEdit15: TDBEdit
        Left = 129
        Top = 7
        Width = 847
        Height = 26
        DataField = 'NAMA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  inherited actlst1: TActionList
    Images = cxImageList2
    object PilihSupplier: TAction
      Caption = 'PilihSupplier'
      OnExecute = PilihSupplierExecute
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
    ImageOptions.LargeImages = cxImageList2
    Left = 744
    Top = 216
    DockControlHeights = (
      0
      0
      42
      0)
    object dxBarManager1Bar1: TdxBar [0]
      Caption = 'Toolba'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 947
      FloatTop = 7
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSimpan'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnSimpan: TdxBarLargeButton [1]
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 2
      GlyphLayout = glLeft
    end
    object btnCancel: TdxBarLargeButton [2]
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 3
      PaintStyle = psCaptionGlyph
      GlyphLayout = glLeft
    end
    object dxBarLargeButton1: TdxBarLargeButton [3]
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 1
      PaintStyle = psCaptionGlyph
      GlyphLayout = glLeft
    end
  end
  inherited dxBarDBNavigator1: TdxBarDBNavigator
    Left = 680
    Top = 216
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 800
    Top = 216
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
  object cxImageList2: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 3146496
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000110000
          001A0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000
          001C0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000
          001C0000001C0000001C0000001C0000001C0000001A00000011000000050000
          0000000000000000000000000000000000000000000000000000000000370000
          0050000000540000005400000054000000540000005400000054000000540000
          0054000000540000005400000054000000540000005400000054000000540000
          0054000000540000005400000054000000540000005000000037000000110000
          0000000000000000000000000000000000000000000000000000322C22D24D45
          37FF524A3CFF534B3DFF76716CFF76716CFF76716CFF76716CFF76716CFF7671
          6CFF76716CFF76716CFF76716CFF76716CFF76716CFF76716CFF76716CFF7671
          6CFF76716CFF76716CFF534B3DFF524A3CFF4D4537FF322C22D20000001A0000
          001E000000000000000000000000000000000000000000000000473F31FF574F
          41FF5B5345FF5B5345FFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA6
          9FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA6
          9FFFAEA69FFFAEA69FFF5B5345FF5B5345FF574F41FF473F31FF0000001C1C00
          00910000001E0000000000000000000000000000000000000000797163FF9B93
          85FF9B9385FF9B9385FFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFF
          FAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFF
          FAFFFFFFFAFFFFFFFAFF9B9385FF9B9385FF9B9385FF797163FF0000001C6F12
          07FF1C0000910000001E00000000000000000000000000000000766E60FF7C74
          66FF7C7466FF7C7466FFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1
          DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1
          DCFFE4E1DCFFE4E1DCFF7C7466FF7C7466FF7C7466FF766E60FF0000001CCB7C
          71FF6F1207FF1C0000910000001E0000000000000000000000006F6759FF7D75
          67FF7D7567FF7D7567FFE7E3DEFFE7E3DEFFCDC8C0FFCDC8C0FFCDC8C0FFCDC8
          C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFAFABA4FF8D8A
          85FF9F9D99FF9F9D99FF565147FF565147FF565147FF4D473DFF00000062FFBF
          B4FFCB776CFF6F1207FF1C0000910000001F000000000000000070685AFF7E76
          68FF7E7668FF7E7668FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6
          E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FF8D6866FF4A00
          00FF4A0000FF4A0000FF4A0000FF4A0000FF4A0000FF4A0000FF4A0000FFFCA1
          96FFFFBBB0FFCB776CFF6F1207FF1D0000930000001F0000000071695BFF7F77
          69FF7F7769FF7F7769FFECE9E3FFECE9E3FFD1CCC4FFD1CCC4FFD1CCC4FFD1CC
          C4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FF976960FFAC4F
          44FFAC4F44FFAC4F44FFAC4F44FFAC4F44FFAC4F44FFAC4F44FFAC4F44FFFFA6
          9BFFFFB3A8FFFFBBB0FFCB776CFF701308FF1D0000930000001F736B5DFF8179
          6BFF81796BFF81796BFFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEB
          E6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFA47770FFFFB8
          ADFFFFD3C8FFFFD3C8FFFFD3C8FFFFD3C8FFFFD3C8FFFFD3C8FFFFCABFFFFFB9
          AEFFFCA196FFFFB3A8FFFFBBB0FFCC786DFF701308FF1D000093746C5EFF827A
          6CFF827A6CFF827A6CFFF2EEE8FFF2EEE8FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0
          C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FF996B62FFFCA1
          96FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA1
          96FFFCA196FFFCA196FFFFB2A7FFFFBBB0FFCC786DFF701308FF756D5FFF837B
          6DFF837B6DFF837B6DFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0
          EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFA77971FFFCA1
          96FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA1
          96FFFCA196FFFCA196FFFCA196FFFFB2A7FFFA9F94FFBE6257FF766F61FF847D
          6FFF847D6FFF847D6FFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1
          EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFA77A72FFFCA1
          96FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA1
          96FFFCA196FFFCA196FFFCA196FFFA9F94FFD87E74FC4B292560787062FF867E
          70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E
          70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF75463AFFFCA1
          96FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA196FFFCA1
          96FFFCA196FFFCA196FFFA9F94FFD87E74FC4B29256000000000797163FF877F
          71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F
          71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF805043FFC86D
          62FFC86D62FFC86D62FFC86D62FFC86D62FFC86D62FFC86D62FFC86D62FFFCA1
          96FFFCA196FFFA9F94FFD87E74FC4B29256000000000000000007B7365FF8981
          73FF898173FF898173FF898173FF898173FF898173FF898173FF898173FF8981
          73FF898173FF898173FF898173FF898173FF898173FF898173FF898173FF8981
          73FF898173FF898173FF898173FF898173FF898173FF7B7365FF0000001CFCA1
          96FFFA9F94FFD87E74FC4B2925600000000000000000000000007C7466FF8A82
          74FF8A8274FF8A8274FF8A8274FF9D9587FF9D9587FF9D9587FF9D9587FF9D95
          87FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D95
          87FF9D9587FF9D9587FF9D9587FF8A8274FF8A8274FF7C7466FF0000001CFA9F
          94FFD87E74FC4B292560000000000000000000000000000000007D7567FF8B83
          75FF8B8375FF8B8375FF615A4EFF746D61FF746D61FF918A7FFF8F887DFF8D86
          7BFF8C857AFF8A8378FF898277FF888176FF867F74FF857E73FF847D72FF837C
          71FF837C71FF837C71FF9E9688FF8B8375FF8B8375FF7D7567FF0000001CD87E
          74FC4B29256000000000000000000000000000000000000000007E7668FF8C84
          76FF8C8476FF8C8476FF615B4FFF746E62FF746E62FFC4BDB2FFC3BCB1FFC1BA
          AFFFBFB8ADFFBEB7ACFFBCB5AAFFBBB4A9FFB9B2A7FFB8B1A6FFB7B0A5FFC9C2
          B7FFC8C1B6FF837C71FF9F9789FF8C8476FF8C8476FF7E7668FF0000001C4B29
          256000000000000000000000000000000000000000000000000080786AFF8E86
          78FF8E8678FF8E8678FF635C51FF766F64FF766F64FFC7C0B5FFC6BFB4FFC4BD
          B2FFC2BBB0FFC1BAAFFFBFB8ADFFBDB6ABFFBCB5AAFFBAB3A8FF665F54FF7972
          67FFCAC3B8FF857E73FFA1998BFF8E8678FF8E8678FF80786AFF0000001C0000
          000000000000000000000000000000000000000000000000000081796BFF8F87
          79FF8F8779FF8F8779FF645D52FF777065FF777065FFDED7CCFFC8C1B6FFC7C0
          B5FFC5BEB3FFC3BCB1FFC2BBB0FFC0B9AEFFBEB7ACFFBDB6ABFF665F54FF7972
          67FFCCC5BAFF867F74FFA29A8CFF8F8779FF8F8779FF81796BFF0000001C0000
          0000000000000000000000000000000000000000000000000000827A6CFF9088
          7AFF90887AFF90887AFF655E52FF787165FF787165FFDED7CCFFDED7CCFFDAD3
          C8FFC8C1B6FFC6BFB4FFC4BDB2FFC3BCB1FFC1BAAFFFBFB8ADFF665F54FF7972
          67FFCEC7BCFF888176FFA39B8DFF90887AFF90887AFF827A6CFF0000001C0000
          0000000000000000000000000000000000000000000000000000837B6DFF9189
          7BFF91897BFF91897BFF665F53FF797266FF797266FFDED7CCFFDED7CCFFDED7
          CCFFDED7CCFFD2CBC0FFC7C0B5FFC6BFB4FFC4BDB2FFC2BBB0FF665F54FF7972
          67FFD0C9BEFF8B8479FFA49C8EFF91897BFF91897BFF837B6DFF0000001C0000
          0000000000000000000000000000000000000000000000000000847C6EFF928A
          7CFF928A7CFF928A7CFF666054FF797367FF797367FFDED7CCFFDED7CCFFDED7
          CCFFDED7CCFFDED7CCFFDED7CCFFC8C1B6FFC7C0B5FFC5BEB3FF665F54FF7972
          67FFD3CCC1FF8D867BFFA59D8FFF928A7CFF928A7CFF847C6EFF0000001C0000
          0000000000000000000000000000000000000000000000000000857D6FFF938B
          7DFF938B7DFF938B7DFF676155FF7A7468FF7A7468FFDED7CCFFDED7CCFFDED7
          CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDAD3C8FFC8C1B6FF665F54FF7972
          67FFC3BCB1FF90897EFFA69E90FF938B7DFF938B7DFF857D6FFF0000001A0000
          0000000000000000000000000000000000000000000000000000837B6DFF9189
          7BFF938B7DFF938B7DFF676155FF7A7468FF7A7468FFDED7CCFFDED7CCFFDED7
          CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFD2CBC0FFC7C0
          B5FFC6BFB4FF938C81FF938B7DFF938B7DFF91897BFF837B6DFF000000120000
          00000000000000000000000000000000000000000000000000005A5449C2847C
          6EFF867E70FF867E70FF867E70FF867E70FF867E70FFCCC5BAFFCCC5BAFFCCC5
          BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5
          BAFFBBB4A8FF938C80FF867E70FF867E70FF847C6EFF5A5449C2000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000002C0000
          002C0000002C0000002C0000002C0000002C0000002C0000002C0000002C0000
          002C0000002C0000002C0000002C0000002C0000002C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000380000008F0000
          008F0000008F0000008F0000008F0000008F0000008F0000008F0000008F0000
          008F0000008F0000008F0000008F0000008F0000008F00000038000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000400000038FFFFFFFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFF00000038000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000D0000002A0000003B00000038FFFFFFFFF6F3
          F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3
          F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FFF6F3F0FF000000380000003C0000
          002A0000000F0000000000000000000000000000000000000000000000000000
          0000000000000000001E0000003B0000003B0C0B09531816126EF8F2E8FFE3DD
          D3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DD
          D3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FFE3DDD3FF1B1814730E0D0A570000
          003B0000003B0000001C00000000000000000000000000000000000000000000
          0000000000000000003B2A262089665C4DEE766B5AFF5E5649FFE1D7C6FFCCC2
          B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2
          B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FFCCC2B1FF5E5649FF766B5AFF665C
          4DEE2E2A24900000003B00000000000000000000000000000000000000000000
          000000000000554E43CF8B8172FFAAA193FF7A7060FF62594AFFCDC0A9FFC2B5
          9EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFC2B5
          9EFFC2B59EFFC2B59EFFC2B59EFFC2B59EFFB9AC95FF62594AFF7A7060FFABA3
          95FF8D8374FF534C40CB00000000000000000000000000000000000000000000
          0000000000007F7566FFBCB2A4FFC1B8AAFF7F7566FF5E5647FF5E5647FF5E56
          47FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E56
          47FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF5E5647FF7F7566FFC1B8
          AAFFBAB1A3FF7F7566FF00000000000000000000000000000000000000000000
          000000000000847B6DFFBCB3A4FFBCB3A4FF847B6DFF595142FF595142FF5951
          42FF595142FF595142FF595142FF595142FF595142FF595142FF595142FF5951
          42FF595142FF595142FF595142FF595142FF595142FF595142FF847B6DFFBCB3
          A4FFBCB3A4FF847B6DFF00000000000000000000000000000000000000000000
          000000000000898173FFB8AE9EFFB8AE9EFF898173FF554C3DFF554C3DFF554C
          3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C
          3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF554C3DFF898173FFB8AE
          9EFFB8AE9EFF898173FF00000000000000000000000000000000000000000000
          0000000000008F877AFFB5AA99FFB5AA99FF9F9587FF8F877AFF8F877AFF8F87
          7AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F87
          7AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF8F877AFF9F9587FFB5AA
          99FFB5AA99FF8F877AFF00000000000000000000000000000000000000000000
          000000000000948D81FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
          96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
          96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
          96FFB3A896FF948D81FF00000000000000000000000000000000000000000000
          0000000000009A9388FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
          96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
          96FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A896FFB3A8
          96FFB3A896FF9A9388FF00000000000000000000000000000000000000000000
          0000000000009F998FFFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A9
          97FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A9
          97FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A997FFB4A9
          97FFB4A997FF9F998FFF00000000000000000000000000000000000000000000
          000000000000A49E96FFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6
          EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6
          EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6EBFFFCF6
          EBFFFCF6EBFFA49E96FF00000000000000000000000000000000000000000000
          000000000000A9A49CFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9
          BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9
          BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFD2C9BAFFB9B0A1FF473E2FFF473E
          2FFFB9B0A1FFA9A49CFF00000000000000000000000000000000000000000000
          000000000000ADA9A1FFDAD3C7FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4
          C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4
          C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFDBD4C8FFAAA397FFFCF4E8FFFCF4
          E8FFA9A296FFADA9A1FF00000000000000000000000000000000000000000000
          000000000000A8A49EF2D3CEC6FFE7E2DAFFE7E2DAFFD9D5CDFF8A8782FF817E
          79FF817E79FF817E79FF817E79FF817E79FF817E79FF817E79FF817E79FF817E
          79FF817E79FF817E79FF817E79FF817E79FF8A8782FFC0BCB4FF9F9A92FF9F9A
          92FFBAB5ADFFA9A69FF400000000000000000000000000000000000000000000
          00000000000044434161AFACA5F8B4B1AAFFB4B1AAFF95928DFFDBD3C4FFD6CE
          BFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CE
          BFFFD6CEBFFFD6CEBFFFD6CEBFFFD6CEBFFFD4CCBDFF95928DFFB4B1AAFFB4B1
          AAFFAFACA5F84443416100000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AF7F1E3FFE9E3
          D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3
          D5FFE9E3D5FFE9E3D5FFE9E3D5FFE9E3D5FFE2DCCEFF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFBF0FFF6F0
          E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0
          E5FFF6F0E5FFF6F0E5FFF6F0E5FFF6F0E5FFECE6DBFF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFEF6FFF7F3
          EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3
          EBFFF7F3EBFFF7F3EBFFF7F3EBFFF7F3EBFFEDE9E1FF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFFFCFFF9F6
          F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6
          F1FFF9F6F1FFF9F6F1FFF9F6F1FFF9F6F1FFEFECE7FF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFFFFFFFCFA
          F7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFA
          F7FFFCFAF7FFFCFAF7FFFCFAF7FFFCFAF7FFF2F0EDFF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFFFFFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFF3F2F0FF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFFFFFFFEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFF4F3F2FF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003AFFFFFFFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF4F4F4FF0000003A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000002CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF0000002C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000F0000002C0000
          003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
          003A0000003A0000003A0000003A0000003A0000002C0000000F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000005000000110000001A0000001C0000001C0000001C0000
          001C0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000
          001C0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000
          001C0000001A0000001100000005000000000000000000000000000000000000
          0000000000000000001100000037000000500000005400000054000000540000
          0054000000540000005400000054000000540000005400000054000000540000
          0054000000540000005400000054000000540000005400000054000000540000
          0054000000500000003700000011000000000000000000000000000000000000
          0000000000000000001A322C22D24D4537FF524A3CFF534B3DFF76716CFF7671
          6CFF76716CFF76716CFF76716CFF76716CFF76716CFF76716CFF76716CFF7671
          6CFF76716CFF76716CFF76716CFF76716CFF76716CFF76716CFF534B3DFF524A
          3CFF4D4537FF322C22D20000001A000000000000000000000000000000000000
          0000000000000000001C473F31FF574F41FF5B5345FF5B5345FFAEA69FFFAEA6
          9FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA6
          9FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFFAEA69FFF5B5345FF5B53
          45FF574F41FF473F31FF0000001C000000000000000000000000000000000000
          0000000000000000001C797163FF9B9385FF9B9385FF9B9385FFFFFFFAFFFFFF
          FAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFF
          FAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFFFFFFFAFF9B9385FF9B93
          85FF9B9385FF797163FF0000001C000000000000000000000000000000000000
          0000000000000000001C766E60FF7C7466FF7C7466FF7C7466FFE4E1DCFFE4E1
          DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1
          DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFFE4E1DCFF7C7466FF7C74
          66FF7C7466FF766E60FF0000001C000000000000000000000000000000000000
          0000000000000000001C6F6759FF7D7567FF7D7567FF7D7567FFE7E3DEFFE7E3
          DEFFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8
          C0FFCDC8C0FFCDC8C0FFCDC8C0FFCDC8C0FFE7E3DEFFE7E3DEFF7D7567FF7D75
          67FF7D7567FF6F6759FF0000001C000000000000000000000000000000000000
          0000000000000000001C70685AFF7E7668FF7E7668FF7E7668FFEAE6E1FFEAE6
          E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6
          E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FFEAE6E1FF7E7668FF7E76
          68FF7E7668FF70685AFF0000001C000000000000000000000000000000000000
          0000000000000000001C71695BFF7F7769FF7F7769FF7F7769FFECE9E3FFECE9
          E3FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CC
          C4FFD1CCC4FFD1CCC4FFD1CCC4FFD1CCC4FFECE9E3FFECE9E3FF7F7769FF7F77
          69FF7F7769FF71695BFF0000001C000000000000000000000000000000000000
          0000000000000000001C736B5DFF81796BFF81796BFF81796BFFEFEBE6FFEFEB
          E6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEB
          E6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FFEFEBE6FF81796BFF8179
          6BFF81796BFF736B5DFF0000001C000000000000000000000000000000000000
          0000000000000000001C746C5EFF827A6CFF827A6CFF827A6CFFF2EEE8FFF2EE
          E8FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0
          C7FFD5D0C7FFD5D0C7FFD5D0C7FFD5D0C7FFF2EEE8FFF2EEE8FF827A6CFF827A
          6CFF827A6CFF746C5EFF0000001C000000000000000000000000000000000000
          0000000000000000001C756D5FFF837B6DFF837B6DFF837B6DFFF4F0EAFFF4F0
          EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0
          EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFFF4F0EAFF837B6DFF837B
          6DFF837B6DFF756D5FFF0000001C000000000000000000000000000000000000
          0000000000000000001C766F61FF847D6FFF847D6FFF847D6FFFF5F1EBFFF5F1
          EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1
          EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFFF5F1EBFF847D6FFF847D
          6FFF847D6FFF766F61FF0000001C000000000000000000000000000000000000
          0000000000000000001C787062FF867E70FF867E70FF867E70FF867E70FF867E
          70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E
          70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E70FF867E
          70FF867E70FF787062FF0000001C000000000000000000000000000000000000
          0000000000000000001C797163FF877F71FF877F71FF877F71FF877F71FF877F
          71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F
          71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F71FF877F
          71FF877F71FF797163FF0000001C000000000000000000000000000000000000
          0000000000000000001C7B7365FF898173FF898173FF898173FF898173FF8981
          73FF898173FF898173FF898173FF898173FF898173FF898173FF898173FF8981
          73FF898173FF898173FF898173FF898173FF898173FF898173FF898173FF8981
          73FF898173FF7B7365FF0000001C000000000000000000000000000000000000
          0000000000000000001C7C7466FF8A8274FF8A8274FF8A8274FF8A8274FF9D95
          87FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D95
          87FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF9D9587FF8A82
          74FF8A8274FF7C7466FF0000001C000000000000000000000000000000000000
          0000000000000000001C7D7567FF8B8375FF8B8375FF8B8375FF615A4EFF746D
          61FF746D61FF918A7FFF8F887DFF8D867BFF8C857AFF8A8378FF898277FF8881
          76FF867F74FF857E73FF847D72FF837C71FF837C71FF837C71FF9E9688FF8B83
          75FF8B8375FF7D7567FF0000001C000000000000000000000000000000000000
          0000000000000000001C7E7668FF8C8476FF8C8476FF8C8476FF615B4FFF746E
          62FF746E62FFC4BDB2FFC3BCB1FFC1BAAFFFBFB8ADFFBEB7ACFFBCB5AAFFBBB4
          A9FFB9B2A7FFB8B1A6FFB7B0A5FFC9C2B7FFC8C1B6FF837C71FF9F9789FF8C84
          76FF8C8476FF7E7668FF0000001C000000000000000000000000000000000000
          0000000000000000001C80786AFF8E8678FF8E8678FF8E8678FF635C51FF766F
          64FF766F64FFC7C0B5FFC6BFB4FFC4BDB2FFC2BBB0FFC1BAAFFFBFB8ADFFBDB6
          ABFFBCB5AAFFBAB3A8FF665F54FF797267FFCAC3B8FF857E73FFA1998BFF8E86
          78FF8E8678FF80786AFF0000001C000000000000000000000000000000000000
          0000000000000000001C81796BFF8F8779FF8F8779FF8F8779FF645D52FF7770
          65FF777065FFDED7CCFFC8C1B6FFC7C0B5FFC5BEB3FFC3BCB1FFC2BBB0FFC0B9
          AEFFBEB7ACFFBDB6ABFF665F54FF797267FFCCC5BAFF867F74FFA29A8CFF8F87
          79FF8F8779FF81796BFF0000001C000000000000000000000000000000000000
          0000000000000000001C827A6CFF90887AFF90887AFF90887AFF655E52FF7871
          65FF787165FFDED7CCFFDED7CCFFDAD3C8FFC8C1B6FFC6BFB4FFC4BDB2FFC3BC
          B1FFC1BAAFFFBFB8ADFF665F54FF797267FFCEC7BCFF888176FFA39B8DFF9088
          7AFF90887AFF827A6CFF0000001C000000000000000000000000000000000000
          0000000000000000001C837B6DFF91897BFF91897BFF91897BFF665F53FF7972
          66FF797266FFDED7CCFFDED7CCFFDED7CCFFDED7CCFFD2CBC0FFC7C0B5FFC6BF
          B4FFC4BDB2FFC2BBB0FF665F54FF797267FFD0C9BEFF8B8479FFA49C8EFF9189
          7BFF91897BFF837B6DFF0000001C000000000000000000000000000000000000
          0000000000000000001C847C6EFF928A7CFF928A7CFF928A7CFF666054FF7973
          67FF797367FFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFC8C1
          B6FFC7C0B5FFC5BEB3FF665F54FF797267FFD3CCC1FF8D867BFFA59D8FFF928A
          7CFF928A7CFF847C6EFF0000001C000000000000000000000000000000000000
          0000000000000000001A857D6FFF938B7DFF938B7DFF938B7DFF676155FF7A74
          68FF7A7468FFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7
          CCFFDAD3C8FFC8C1B6FF665F54FF797267FFC3BCB1FF90897EFFA69E90FF938B
          7DFF938B7DFF857D6FFF0000001A000000000000000000000000000000000000
          00000000000000000012837B6DFF91897BFF938B7DFF938B7DFF676155FF7A74
          68FF7A7468FFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7CCFFDED7
          CCFFDED7CCFFDED7CCFFD2CBC0FFC7C0B5FFC6BFB4FF938C81FF938B7DFF938B
          7DFF91897BFF837B6DFF00000012000000000000000000000000000000000000
          000000000000000000055A5449C2847C6EFF867E70FF867E70FF867E70FF867E
          70FF867E70FFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5
          BAFFCCC5BAFFCCC5BAFFCCC5BAFFCCC5BAFFBBB4A8FF938C80FF867E70FF867E
          70FF847C6EFF5A5449C200000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0004000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000060000000900000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000000E0000
          00150000000D0000000300000000000000000000000000000000000000000000
          0000000000000000000100000008000000170101032500000015000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000005000000120202042D1A1A
          3693010103270000000F00000003000000000000000000000000000000000000
          000000000001000000080000001A0F0F2068303063E70A0A1553000000170000
          0007000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000006000000140404093A2B2B59D53636
          70FF26264EC1010103280000000F000000030000000000000000000000000000
          0001000000090000001A1010226E35356EFA363670FF323268F10B0B16560000
          0018000000070000000100000000000000000000000000000000000000000000
          00000000000000000001000000070000001707070F462E2E60E33A3A8EFF3838
          85FF363670FF26264EC1010103290000000F0000000300000000000000010000
          00090000001A1111247035356EFA363670FF373783FF37378BFF33336AF30D0D
          1B5E000000190000000800000001000000000000000000000000000000000000
          00000000000000000005000000160C0C1859313166EC3A3A8FFF4646D6FF4444
          D1FF383885FF363670FF26264FC4010103290000000F00000004000000090000
          001B1212257435356EFA363670FF373783FF3E3ECAFF3E3ECEFF38388CFF3535
          6CF80E0E1D630000001600000005000000000000000000000000000000000000
          000000000000000000090F0F206033336BF63B3B90FF4747D7FF4747D9FF4646
          D8FF4444D1FF383885FF363670FF26264FC401010329000000160000001D1313
          287836366FFD363670FF373784FF3E3ECBFF3E3ED0FF3E3ED0FF3E3ECEFF3838
          8CFF35356CF81111226500000009000000000000000000000000000000000000
          00000000000000000007272750BF3C3C90FF4949D8FF4848DAFF4848DAFF4747
          D9FF4646D8FF4545D2FF383885FF363670FF26264FC4010103341313287B3636
          6FFD363670FF373784FF3F3FCCFF4040D2FF3F3FD1FF3F3FD1FF3E3ED0FF3E3E
          CEFF38388DFF262651C000000008000000000000000000000000000000000000
          00000000000000000002212166B84747D7FF4A4ADCFF4949DBFF4949DBFF4848
          DAFF4747D9FF4747D9FF4545D2FF383885FF363670FF2C2C5BDA36366FFD3636
          70FF383884FF4141CEFF4141D3FF4040D2FF4040D2FF3F3FD1FF3F3FD1FF3F3F
          D1FF3A3ACAFF212169CA00000003000000000000000000000000000000000000
          00000000000000000000060625382626B2F98181FFFF5555E7FF4A4ADCFF4949
          DBFF4848DAFF4848DAFF4747D9FF4545D2FF393985FF363670FF363670FF3838
          85FF4242CFFF4242D4FF4242D4FF4141D3FF4141D3FF4040D2FF4A4ADCFF7575
          FFFF1B1BA6FB0505264200000000000000000000000000000000000000000000
          0000000000000000000000000000060625382727B3F88686FFFF5555E7FF4A4A
          DCFF4A4ADCFF4949DBFF4848DAFF4747D9FF4646D3FF393985FF383885FF4444
          D1FF4444D6FF4343D5FF4343D5FF4242D4FF4242D4FF4B4BDDFF7A7AFFFF1B1B
          A7FA0404243D0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000070726382727B2F78686FFFF5555
          E7FF4B4BDDFF4A4ADCFF4949DBFF4949DBFF4848DAFF4646D3FF4545D2FF4646
          D8FF4545D7FF4444D6FF4444D6FF4343D5FF4C4CDEFF7C7CFFFF1C1CA8F90404
          2338000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000080827372727B2F68787
          FFFF5656E8FF4B4BDDFF4A4ADCFF4A4ADCFF4949DBFF4848DAFF4747D9FF4747
          D9FF4646D8FF4545D7FF4545D7FF4E4EE0FF7D7DFFFF1E1EA9F8040423380000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020A0A293F2A2A
          B4F68787FFFF5656E8FF4B4BDDFF4B4BDDFF4A4ADCFF4949DBFF4949DBFF4848
          DAFF4747D9FF4646D8FF5050E2FF7F7FFFFF1E1EAAF70505233A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000B0000001E1E1E
          52A93333C0FF8787FFFF5757E9FF4C4CDEFF4B4BDDFF4A4ADCFF4A4ADCFF4949
          DBFF4848DAFF5151E3FF8181FFFF2222AEFC0606255600000010000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000C0000001F1A1A36953636
          70FF373783FF5757E4FF5C5CEEFF4D4DDFFF4C4CDEFF4B4BDDFF4B4BDDFF4A4A
          DCFF4949DBFF5353E5FF4343D0FF32327EFF272751C60202042C000000100000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000000C0000001F1C1C3A9C363670FF3636
          70FF3E3E8CFF5D5DE9FF5F5FF1FF5959EBFF4D4DDFFF4D4DDFFF4C4CDEFF4B4B
          DDFF4A4ADCFF4A4ADCFF4848D5FF393987FF363670FF272751C60202042C0000
          0010000000030000000000000000000000000000000000000000000000000000
          000000000000000000020000000C0000001F1C1C3A9C363670FF363670FF3E3E
          8CFF5D5DE9FF5F5FF1FF5F5FF1FF5F5FF1FF5F5FF1FF5353E5FF4D4DDFFF4C4C
          DEFF4B4BDDFF4B4BDDFF4A4ADCFF4848D5FF393987FF363670FF272751C60202
          042C000000100000000300000000000000000000000000000000000000000000
          000000000000000000080000001E1D1D3DA1363670FF363670FF3E3E8CFF5D5D
          E9FF5F5FF1FF5F5FF1FF5F5FF1FF5F5FF1FF5F5FF1FF5F5FF1FF5A5AECFF4D4D
          DFFF4D4DDFFF4C4CDEFF4B4BDDFF4A4ADCFF4949D6FF393987FF363670FF2727
          51C60202042C0000000F00000003000000000000000000000000000000000000
          0000000000000000000E1E1E3EA0363670FF363670FF3E3E8CFF5D5DE9FF5F5F
          F1FF5F5FF1FF5F5FF1FF5F5FF1FF5F5FF1FF6969FBFF7070FFFF7070FFFF6969
          FBFF5454E6FF4D4DDFFF4C4CDEFF4C4CDEFF4B4BDDFF4949D6FF393987FF3636
          70FF272750C50202042600000008000000000000000000000000000000000000
          0000000000000000000E363670FF363670FF3E3E8CFF5D5DE9FF5F5FF1FF5F5F
          F1FF5F5FF1FF5F5FF1FF5F5FF1FF6969FBFF9999FFFF1E1EB0FF1E1EB0FF9999
          FFFF6969FBFF5A5AECFF4D4DDFFF4D4DDFFF4C4CDEFF4B4BDDFF4949D6FF3A3A
          87FF363670FF222247AF0000000A000000000000000000000000000000000000
          00000000000000000009363670FF3E3E8CFF5D5DE9FF5F5FF1FF5F5FF1FF5F5F
          F1FF5F5FF1FF5F5FF1FF6969FBFF9999FFFF3737C0F00A0A29360A0A29363737
          C0F09999FFFF6969FBFF5F5FF1FF5555E7FF4D4DDFFF4C4CDEFF4C4CDEFF4A4A
          D7FF3A3A87FF292955C900000007000000000000000000000000000000000000
          000000000000010101062B2B6AC35B5BE8FF5F5FF1FF5F5FF1FF5F5FF1FF5F5F
          F1FF5F5FF1FF6969FBFF9999FFFF3737C0F00A0A293600000000000000000A0A
          29363737C0F09999FFFF6969FBFF5F5FF1FF5B5BEDFF4E4EE0FF4D4DDFFF4C4C
          DEFF4848D5FF1F1F57A300000002000000000000000000000000000000000000
          000000000000000000000F0F3B4F3D3DCCFB9393FFFF6363F5FF5F5FF1FF5F5F
          F1FF6969FBFF9999FFFF3737C0F00A0A29360000000000000000000000000000
          00000A0A29363737C0F09999FFFF6969FBFF5F5FF1FF5F5FF1FF5A5AECFF8181
          FFFF2A2AB9FB0909344C00000000000000000000000000000000000000000000
          00000000000000000000000000000F0F3B4E3D3DCCFA9F9FFFFF6363F5FF6969
          FBFF9999FFFF3737C0F00A0A2936000000000000000000000000000000000000
          0000000000000A0A29363737C0F09999FFFF6969FBFF6363F5FF9F9FFFFF3A3A
          C9FA0909344B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F0F3B4E3D3DCBF9AAAAFFFF9E9E
          FFFF3737C0F00A0A293600000000000000000000000000000000000000000000
          000000000000000000000A0A29363737C0F09E9EFFFFAAAAFFFF3D3DCBF90F0F
          3B4E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0F3B4E4949D8F93737
          C0F00A0A29360000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A0A29363737C0F04949D8F90F0F3B4E0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001A1A454B0F0F
          2E36000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F0F2E361A1A454B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object ReceivingDtl: TADOQuery
    Connection = PenerimaanForm.connTrading
    CursorType = ctStatic
    AfterInsert = ReceivingDtlAfterInsert
    Parameters = <
      item
        Name = 'TrNo_'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT i.TrNO, i.Nomor, i.BrgID, i.Stn, i.Qty, i.HSatuan, i.Disc' +
        '1, i.Disc2, i.Disc3, i.Disc4, i.Disc5, i.NDisc1,'
      
        'i.NDisc2, i.NDisc3, i.NDisc4, i.NDisc5, i.Harga, i.NSTN, i.GolID' +
        ', i.JenisID, i.MerekID FROM intransdtl AS i'
      'Where i.TrNO=:TrNo_'
      'Order by i.Nomor, i.BrgID Asc')
    Left = 680
    Top = 264
    object ReceivingDtlTrNO: TStringField
      FieldName = 'TrNO'
    end
    object ReceivingDtlNomor: TSmallintField
      FieldName = 'Nomor'
    end
    object ReceivingDtlBrgID: TStringField
      FieldName = 'BrgID'
      Size = 30
    end
    object ReceivingDtlStn: TStringField
      FieldName = 'Stn'
      Size = 1
    end
    object ReceivingDtlQty: TFMTBCDField
      FieldName = 'Qty'
      Precision = 18
    end
    object ReceivingDtlHSatuan: TFMTBCDField
      FieldName = 'HSatuan'
      Precision = 28
    end
    object ReceivingDtlDisc1: TFMTBCDField
      FieldName = 'Disc1'
      Precision = 18
    end
    object ReceivingDtlDisc2: TFMTBCDField
      FieldName = 'Disc2'
      Precision = 18
    end
    object ReceivingDtlDisc3: TFMTBCDField
      FieldName = 'Disc3'
      Precision = 18
    end
    object ReceivingDtlDisc4: TFMTBCDField
      FieldName = 'Disc4'
      Precision = 18
    end
    object ReceivingDtlDisc5: TFMTBCDField
      FieldName = 'Disc5'
      Precision = 18
    end
    object ReceivingDtlNDisc1: TFMTBCDField
      FieldName = 'NDisc1'
      Precision = 28
    end
    object ReceivingDtlNDisc2: TFMTBCDField
      FieldName = 'NDisc2'
      Precision = 28
    end
    object ReceivingDtlNDisc3: TFMTBCDField
      FieldName = 'NDisc3'
      Precision = 28
    end
    object ReceivingDtlNDisc4: TFMTBCDField
      FieldName = 'NDisc4'
      Precision = 28
    end
    object ReceivingDtlNDisc5: TFMTBCDField
      FieldName = 'NDisc5'
      Precision = 28
    end
    object ReceivingDtlHarga: TFMTBCDField
      FieldName = 'Harga'
      Precision = 28
    end
    object ReceivingDtlNSTN: TStringField
      FieldName = 'NSTN'
      Size = 5
    end
    object ReceivingDtlGolID: TStringField
      FieldName = 'GolID'
      Size = 10
    end
    object ReceivingDtlJenisID: TStringField
      FieldName = 'JenisID'
      Size = 10
    end
    object ReceivingDtlMerekID: TStringField
      FieldName = 'MerekID'
      Size = 10
    end
  end
  object ReceivingDtl_: TDataSource
    DataSet = ReceivingDtl
    Left = 744
    Top = 264
  end
end
