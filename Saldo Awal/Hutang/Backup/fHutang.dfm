inherited fhutangForm: TfhutangForm
  Caption = 'SALDO AWAL HUTANG FORM'
  ClientHeight = 396
  ClientWidth = 804
  OnCreate = FormCreate
  ExplicitLeft = -96
  ExplicitWidth = 812
  ExplicitHeight = 430
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Top = 56
    Width = 804
    Height = 340
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 56
    ExplicitWidth = 804
    ExplicitHeight = 340
    ClientRectBottom = 340
    ClientRectRight = 804
    inherited cxTabSheet1: TcxTabSheet
      Caption = 'HUTANG'
      ExplicitTop = 24
      ExplicitWidth = 804
      ExplicitHeight = 316
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 804
        Height = 316
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
          DataController.DataSource = dsHutang
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
          object cxGrid1DBTableView1Nomor: TcxGridDBColumn
            Caption = 'NO.'
            DataBinding.FieldName = 'Nomor'
            Width = 38
          end
          object cxGrid1DBTableView1SupID: TcxGridDBColumn
            Caption = 'SUPPLIER'
            DataBinding.FieldName = 'SupID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'SUPID'
            Properties.ListColumns = <
              item
                FieldName = 'Nama'
              end>
            Properties.ListSource = dsSupplier
            Width = 295
          end
          object cxGrid1DBTableView1NoBeli: TcxGridDBColumn
            Caption = 'NO. TRANSAKSI'
            DataBinding.FieldName = 'NoBeli'
            Width = 133
          end
          object cxGrid1DBTableView1Tgl: TcxGridDBColumn
            Caption = 'TGL'
            DataBinding.FieldName = 'Tgl'
            Width = 122
          end
          object cxGrid1DBTableView1Jtgl: TcxGridDBColumn
            Caption = 'JTGL'
            DataBinding.FieldName = 'Jtgl'
            Width = 118
          end
          object cxGrid1DBTableView1Val: TcxGridDBColumn
            Caption = 'VAL'
            DataBinding.FieldName = 'Val'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'VALID'
            Properties.ListColumns = <
              item
                FieldName = 'KETERANGAN'
              end>
            Properties.ListSource = dsValuta
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object cxGrid1DBTableView1Tukar: TcxGridDBColumn
            Caption = 'TUKAR'
            DataBinding.FieldName = 'Tukar'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'TUKAR'
            Properties.ListColumns = <
              item
                FieldName = 'TUKARID'
              end
              item
                FieldName = 'TGL1'
              end
              item
                FieldName = 'TGL2'
              end
              item
                FieldName = 'TUKAR'
              end>
            Properties.ListSource = dsTukar
            HeaderAlignmentHorz = taRightJustify
            Width = 95
          end
          object cxGrid1DBTableView1Saldo: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo'
            HeaderAlignmentHorz = taRightJustify
            Width = 99
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 396
    Width = 804
    Height = 0
    ExplicitTop = 396
    ExplicitWidth = 804
    ExplicitHeight = 0
    inherited btn1: TButton
      Left = 805
      Top = 2
      Width = 79
      Height = 31
      Anchors = [akTop, akRight]
      ExplicitLeft = 805
      ExplicitTop = 2
      ExplicitWidth = 79
      ExplicitHeight = 31
    end
    inherited btn2: TButton
      Left = 884
      Top = 2
      Height = 31
      Anchors = [akTop, akRight]
      ExplicitLeft = 884
      ExplicitTop = 2
      ExplicitHeight = 31
    end
  end
  inherited actlst1: TActionList
    object TaAcc: TAction
      Caption = 'Posting'
      OnExecute = TaAccExecute
    end
  end
  inherited cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00D3C8CB00C4B7B800BDB4B200BAB3B000BEB4
          B200C4BAB600DACACA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00ABB8B20071A7980056B1A0004CB5A2004EB6A2004EB6
          A10051B29F0074A89800BBBBB400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BDCFC70040BAA4001CDAC50016E3D5001CE1D6001CE3D5001CE2
          D7001DE0D6001CD7C10046BA9F00B8BFBA00DFD9DB00DBDBDB00DADADA00DADA
          DA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADADA00DADA
          DA00DBDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0074C7AF0024D8BD003CE0CF003DDCC6003ADCC7003ADCC9003CDC
          C9003DDDC80033E1CF002FDBC2005A9B8600857A7C007F7F7F007F7F7F007F7F
          7F007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E7E007E7E
          7E007E7E7E0081818100B3B3B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0070C6A90046D4B00063DCBE005FDABA0061DBBE0060DCBD0060DB
          BD0063DBBC0063DAC20047D5B40068B49900B8B4B500B8B7B700B7B7B700B7B7
          B700B7B7B700B7B7B700B7B7B700B6B6B600B7B7B700B7B7B700B6B6B600B7B7
          B700B8B8B800B2B2B2008F8F8F00CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A8D4BF0058C79A0087DFC10080DFBA0087DCBB0086DDBB0088DD
          BC0085DBBE008CDEC00054C59400B7E0CE00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00DDDDDD00A0A0A000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF006DC3980094DABA00BBE6CB00B0DDC100ADDCBF00AEDF
          C200BCEACE0086DBA90073C39600F4EFF100F5F2F400EFF0F000F0F0F000F1F0
          F000F0F0F000F1F0F100F0EFF000F0EFF000EFEEEE00F0EFF000F2F1F100F0F0
          F000EFEFF000F4F4F300E4E4E5009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00BBDBC30073C18C0085D6B30052CBAF004CCBAB0061CB
          AC0090D5B0006EC28C00C3D2C300F1E6ED00E2E3E200E3E2E300E3E3E300E3E3
          E300E3E3E300E4E4E400E0E0E000D5D2D300D3CECE00DDDEDD00E4E4E400E4E2
          E200E2E2E300E7E8E700DBDBDC009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0053B190001CD2B9001DDDD70019E0D3001EDD
          CF001FC3A70083C2A600FCEEF200EBEDEB00E9EBEA00EAE9EA00E8EAEA00E9E9
          E900EAEAEA00E5E9E900E0DCD900939495007B858600D6D6D400EBEAEA00E9EA
          EC00EAEAEA00EEEFEF00DFDFDF009E9E9E00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00BBD3C80031C8AF0025DECD002AD8C7002BDAC6002ADC
          C7001DD9C6005BC8B000EFEEE800F8F9F800F6F6F600F6F5F600F4F7F600F4F6
          F600F5F4F500ECEBE800BEA9A90022868F00099A9C00ACA6A600F5F2EF00F6F5
          F600F6F6F700FAFAFA00E4E5E4009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008DCDB70031D3B0003ED5BE003ED5BB0040D6BA0041D7
          BB003DD8BE0035CBA400C9E4D900FFFFFF00FBFCFC00FBFCFC00FBFCFD00F8F9
          F900F1EFF000D1B9B900477C830000E4EB0000EAEF00497A8200E1D1CD00F8F9
          F700FDFDFD00FFFFFF00E9EAE9009E9E9E00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0087CCB30052D6B2006EDABF0068DABB006ED9BC006ED8
          BD006BDCC10051CCA500C8E6D900FFFFFF00FFFFFF00FFFFFF00FBFFFF00F7F4
          F300CEBBBC00487B7D000FCCD6003AFAFF002AF6FF0000B4BD0086888900F4EF
          EF00FFFFFF00FFFFFF00C4C5C500B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0099D2B70073D6AE00A0E7CE0099E2C9009EE4C8009BE2
          CA009CEAD10064C7A20089A08F00A7A1A200A2A3A4009DA0A200A09F9E008E76
          75003760690015C9D30058FBFF0062EEFE0048EDFF0017F1FC00148490008170
          7000A1A4A2009FA2A100B1B0B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C5E2D30062C39500C4F4D900D5F2E800D2F1E100DFF6
          E800A7E5C60071C09A00D3DCD600DDDCDE00DFDEDC00D4D2CC00A1909000295F
          6D0018C2D00081FBFF008CEDFF0034E7F90036E4FC003BEAFF0000D4E8002D65
          6D00C4B4AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0093CEB40076C89A00C2EBD000D8F3E200AFE4
          C50070BC9500BBDCC900FFFFFF00FFFFFF00FFFFFF00AAA9A8002B7F8C0037D7
          E500A0FEFF00C4F5FC0073EFFF00139CAB0019ACC1004BE8FF0031E9FF0003B1
          CB0075848F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0D9C20080C59E0081C49C0088C9
          9F00C4EAD200FFFFFF00FFFFFF00FFFFFF0095A8B0000089A50040E9FE00D1FF
          FF00F0F7FB00C8F7FF0036D0E80070909A005197A7002CDAF8005CE0FF0027E2
          FF000794AE00908A8800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2D5D7004692A20025B1CC009AF0
          FE00F1FFFF00A3F5FF001E9BB300DBD2D400B0BBC00014ACC70056E7FF0055DC
          FE001AD7FA000F7D93009F929000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008598A100208E
          AB0055D5EF003ACEEF006590A300FFFFFF00FFFFFF003B899E0034D2F5006ADF
          FC004BD7FF0011C7F300196C8500A7999A00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7C1
          C7003788A20008779D00C8C6CC00FFFFFF00FFFFFF009CAAB600179CC80067E1
          FF006DD6FC0046D3FF0009BDEE001D6C8B00A2969200E4DED800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C5C0C200FFFFFF00FFFFFF00FFFFFF00FFFFFF004286A30038C2
          F30083DCFE0066D5FD0043D0FF000DBBF4001270970085868A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBBCC000168A
          BB0066D7FF0085D7FD0068CDFE0042C8FF0014B9FC00017BB200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B8D
          A50025A9DF0082DAFF0079D1FE0062C7FC003DC4FF000595D900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0031739B0040BCF40096D5FF007ECEFB0041C3FF001382BA00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C0B9BF001A7BB50062C7FF009BD8FD005CC6FF001D7AB600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0098ABB4001482C00072CCFF0072CAFF002379B600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF007E97A9001F83CA004ABFFF00217FBD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF008494A900086CBA000170C900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5ADB4002D578900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E3DD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end>
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = cxImageList1
    DockControlHeights = (
      0
      0
      56
      0)
    object dxBarManager1Bar1: TdxBar [0]
      Caption = 'Toolbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 830
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton [1]
      Action = TaAcc
      Category = 0
      LargeImageIndex = 0
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 208
    Top = 56
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
  object conntrading: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=revisoft012686;Persist Security Info' +
      '=True;User ID=revisoft;Extended Properties="Driver=MySQL ODBC 5.' +
      '1 Driver;SERVER=localhost;UID=revisoft;PWD=revisoft012686;DATABA' +
      'SE=trading;PORT=3306"'
    ConnectionTimeout = 300
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 80
    Top = 112
  end
  object tblHutang: TADOTable
    Connection = conntrading
    CursorType = ctStatic
    BeforePost = tblHutangBeforePost
    OnNewRecord = tblHutangNewRecord
    TableName = 'apsaldoawalhutang'
    Left = 144
    Top = 112
    object tblHutangNomor: TStringField
      FieldName = 'Nomor'
      FixedChar = True
      Size = 5
    end
    object tblHutangSupID: TStringField
      FieldName = 'SupID'
      Size = 10
    end
    object tblHutangNoBeli: TStringField
      FieldName = 'NoBeli'
    end
    object tblHutangTgl: TDateField
      FieldName = 'Tgl'
      OnValidate = tblHutangTglValidate
    end
    object tblHutangJtgl: TDateField
      FieldName = 'Jtgl'
    end
    object tblHutangVal: TStringField
      FieldName = 'Val'
      Size = 5
    end
    object tblHutangTukar: TFMTBCDField
      FieldName = 'Tukar'
      DisplayFormat = '#,###,#0.00'
      Precision = 18
    end
    object tblHutangSaldo: TFMTBCDField
      FieldName = 'Saldo'
      DisplayFormat = '#,###,#0.00'
      Precision = 28
    end
    object tblHutangKet: TStringField
      FieldName = 'Ket'
      Size = 50
    end
    object tblHutangUMuka: TFMTBCDField
      FieldName = 'UMuka'
      Precision = 28
    end
    object tblHutangTglu: TDateTimeField
      FieldName = 'Tglu'
    end
    object tblHutangcabID: TStringField
      FieldName = 'cabID'
      Size = 10
    end
  end
  object dsHutang: TDataSource
    DataSet = tblHutang
    Left = 144
    Top = 160
  end
  object dsSupplier: TDataSource
    DataSet = tblSupplier
    Left = 144
    Top = 208
  end
  object tblTukar: TADOTable
    Connection = conntrading
    CursorType = ctStatic
    CommandTimeout = 300
    IndexFieldNames = 'VALID'
    MasterFields = 'ValID'
    MasterSource = dsValuta
    TableName = 'pxvalutatukar'
    Left = 80
    Top = 256
    object tblTukarTUKARID: TSmallintField
      FieldName = 'TUKARID'
    end
    object tblTukarVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object tblTukarTUKAR: TFMTBCDField
      FieldName = 'TUKAR'
      Precision = 28
    end
    object tblTukarTGL1: TDateField
      FieldName = 'TGL1'
    end
    object tblTukarTGL2: TDateField
      FieldName = 'TGL2'
    end
    object tblTukarTglU: TDateTimeField
      FieldName = 'TglU'
    end
  end
  object dsValuta: TDataSource
    DataSet = tblValuta
    Left = 144
    Top = 256
  end
  object dsTukar: TDataSource
    DataSet = tblTukar
    Left = 208
    Top = 256
  end
  object tblValuta: TADODataSet
    Connection = conntrading
    CursorType = ctStatic
    CommandText = 'Select ValID, Keterangan From PXValuta Where status_='#39'AP'#39
    Parameters = <>
    Left = 208
    Top = 208
    object tblValutaValID: TWideStringField
      FieldName = 'ValID'
      Size = 5
    end
    object tblValutaKeterangan: TWideStringField
      FieldName = 'Keterangan'
      Size = 50
    end
  end
  object tblSupplier: TADODataSet
    Connection = conntrading
    CursorType = ctStatic
    CommandText = 'Select SupID, Nama, Term From APSupplier where Lnoaktif='#39'F'#39
    CommandTimeout = 300
    Parameters = <>
    Left = 80
    Top = 160
    object tblSupplierSupID: TStringField
      FieldName = 'SupID'
      Size = 10
    end
    object tblSupplierNama: TStringField
      FieldName = 'Nama'
      Size = 30
    end
    object tblSupplierTerm: TSmallintField
      FieldName = 'Term'
    end
  end
  object tblPXSystem: TADOTable
    Connection = conntrading
    CursorType = ctStatic
    CommandTimeout = 300
    TableName = 'pxsystem'
    Left = 80
    Top = 208
    object tblPXSystemConfigID: TSmallintField
      FieldName = 'ConfigID'
    end
    object tblPXSystemSatID: TWideStringField
      FieldName = 'SatID'
      Size = 3
    end
    object tblPXSystemGDGID: TWideStringField
      FieldName = 'GDGID'
      Size = 5
    end
    object tblPXSystemCABID: TWideStringField
      FieldName = 'CABID'
      Size = 5
    end
    object tblPXSystemVALID: TWideStringField
      FieldName = 'VALID'
      Size = 5
    end
    object tblPXSystemHRGID: TWideStringField
      FieldName = 'HRGID'
      Size = 5
    end
    object tblPXSystemMETODE: TWideStringField
      FieldName = 'METODE'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemDISCTINGKAT: TSmallintField
      FieldName = 'DISCTINGKAT'
    end
    object tblPXSystemProfit_: TBooleanField
      FieldName = 'Profit_'
    end
    object tblPXSystemVertion_: TSmallintField
      FieldName = 'Vertion_'
    end
    object tblPXSystemGOLID: TWideStringField
      FieldName = 'GOLID'
      Size = 5
    end
    object tblPXSystemJNSID: TWideStringField
      FieldName = 'JNSID'
      Size = 5
    end
    object tblPXSystemMRKID: TWideStringField
      FieldName = 'MRKID'
      Size = 5
    end
    object tblPXSystemTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object tblPXSystemSUPID: TWideStringField
      FieldName = 'SUPID'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemCUSTID: TWideStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemBRGID: TWideStringField
      FieldName = 'BRGID'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLYears: TWideStringField
      FieldName = 'LYears'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLMonth: TWideStringField
      FieldName = 'LMonth'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLDay: TWideStringField
      FieldName = 'LDay'
      FixedChar = True
      Size = 1
    end
    object tblPXSystemLengthBRGID_: TSmallintField
      FieldName = 'LengthBRGID_'
    end
    object tblPXSystemTimeTrial_: TSmallintField
      FieldName = 'TimeTrial_'
    end
    object tblPXSystemTimeTrialRunning_: TSmallintField
      FieldName = 'TimeTrialRunning_'
    end
    object tblPXSystemInstall_: TDateField
      FieldName = 'Install_'
    end
    object tblPXSystemLengthSUPPID_: TSmallintField
      FieldName = 'LengthSUPPID_'
    end
    object tblPXSystemLengthCUSTID_: TSmallintField
      FieldName = 'LengthCUSTID_'
    end
  end
  object spNourut: TADOStoredProc
    Connection = conntrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_nomer_urut_Hutang'
    Parameters = <
      item
        Name = 'CabID_'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end>
    Left = 208
    Top = 160
    object spNouruthasil: TIntegerField
      FieldName = 'hasil'
      ReadOnly = True
    end
  end
end
