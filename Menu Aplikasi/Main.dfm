object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Main Form'
  ClientHeight = 350
  ClientWidth = 804
  Color = 15985897
  UseDockManager = True
  DockSite = True
  DoubleBuffered = True
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  Menu = mm1
  OldCreateOrder = False
  PopupMenu = pm1
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object pnlInfo: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 330
    Align = alLeft
    BevelOuter = bvLowered
    DockSite = True
    TabOrder = 0
    inline InformasiFrame1: TInformasiFrame
      Left = 1
      Top = 1
      Width = 183
      Height = 328
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 183
      ExplicitHeight = 328
      inherited dxNavBar1: TdxNavBar
        Width = 183
        Height = 328
        ExplicitWidth = 183
        ExplicitHeight = 328
        inherited SALDO: TdxNavBarGroup
          Links = <
            item
              Item = InformasiFrame1.NBSaldoAwalBarang
            end
            item
              Item = InformasiFrame1.NBSaldoAwalHutang
            end
            item
              Item = InformasiFrame1.NBSaldoAwalPiutang
            end>
        end
        inherited PEMBELIAN: TdxNavBarGroup
          Links = <
            item
              Item = InformasiFrame1.NBPurchaseRequest
            end
            item
              Item = InformasiFrame1.NBPurchaseOrder
            end
            item
              Item = InformasiFrame1.NBPurchaseReturn
            end>
        end
        inherited PENJUALAN: TdxNavBarGroup
          Links = <
            item
              Item = InformasiFrame1.NBSalesRequest
            end
            item
              Item = InformasiFrame1.NBSalesOrder
            end
            item
              Item = InformasiFrame1.NBSalesReturn
            end>
        end
        inherited REPORTING: TdxNavBarGroup
          Links = <>
        end
        inherited NBSaldoAwalBarang: TdxNavBarItem
          Action = taSaldoAwalBarang
        end
        inherited NBSaldoAwalHutang: TdxNavBarItem
          Action = taSaldoAwalHutang
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 185
    Top = 0
    Width = 8
    Height = 330
    HotZoneClassName = 'TcxSimpleStyle'
    HotZone.SizePercent = 59
    AutoSnap = True
    ResizeUpdate = True
    Control = pnlInfo
  end
  object mmo1: TMemo
    Left = 392
    Top = 80
    Width = 433
    Height = 169
    Lines.Strings = (
      'mmo1')
    TabOrder = 2
    Visible = False
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 330
    Width = 804
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.AutoHint = True
        PanelStyle.EllipsisType = dxetSmartPath
        PanelStyle.Font.Charset = ANSI_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -13
        PanelStyle.Font.Name = 'Arial Narrow'
        PanelStyle.Font.Style = []
        PanelStyle.ParentFont = False
        Width = 500
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        Width = 124
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Office2010Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object mm1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 64
    Top = 72
    object File1: TMenuItem
      Caption = '&File'
      object New1: TMenuItem
        Caption = '&Login'
      end
      object Open1: TMenuItem
        Caption = 'L&ogout'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Action = FilePageSetup1
      end
      object PrintSetup1: TMenuItem
        Action = FilePrintSetup1
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Action = FileExit1
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      object Cut1: TMenuItem
        Caption = 'Cu&t'
        ShortCut = 16472
      end
      object Copy1: TMenuItem
        Caption = '&Copy'
        ShortCut = 16451
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        ShortCut = 16470
      end
      object PasteSpecial1: TMenuItem
        Caption = 'Paste &Special...'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Find1: TMenuItem
        Caption = '&Find...'
      end
      object Replace1: TMenuItem
        Caption = 'R&eplace...'
      end
      object GoTo1: TMenuItem
        Caption = '&Go To...'
      end
    end
    object Saldo1: TMenuItem
      Caption = '&Saldo'
      object N31SaldoAwalBarang1: TMenuItem
        Action = taSaldoAwalBarang
      end
      object N32SaldoAwalHutang1: TMenuItem
        Action = taSaldoAwalHutang
      end
      object N33SaldoAwalPiutang1: TMenuItem
        Action = taSaldoAwalPiutang
      end
    end
    object ransaction1: TMenuItem
      Caption = '&Transaction'
      object N3: TMenuItem
        Caption = '4.1. Purchase'
        object N311PurchaseRequest1: TMenuItem
          Action = taPurchaseRequest
        end
        object N312PurchaseOrder1: TMenuItem
          Action = taPurchaseOrder
        end
        object N313Receiving1: TMenuItem
          Action = taReceiving
        end
        object N314PurchaseRetur1: TMenuItem
          Action = taPurchaseReturn
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object N315MonitoringPurchase1: TMenuItem
          Action = taMonitoringPurchase
        end
      end
      object N32Sales1: TMenuItem
        Caption = '4.2. Sales'
        object N321SalesRequest1: TMenuItem
          Action = taSalesRequest
        end
        object N322SalesOrder1: TMenuItem
          Action = taSalesOrder
        end
        object N323ReturSales1: TMenuItem
          Action = taShipment
        end
        object N324SalesReturn1: TMenuItem
          Action = taSalesReturn
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object N325MonitoringSales1: TMenuItem
          Action = taMonitoringSales
        end
      end
      object N33PosPointOfSales1: TMenuItem
        Action = taPOS
      end
    end
    object Reporting1: TMenuItem
      Caption = '&Reporting'
    end
    object Master1: TMenuItem
      Caption = '&Master'
      object N51Inventory1: TMenuItem
        Caption = '6.1. Data Barang'
        object N511ITEM1: TMenuItem
          Action = taBarang
          Caption = '6.1.1. Barang'
        end
        object N512KeterangandanGambar1: TMenuItem
          Action = taKeterangan
        end
        object N513MinDanMax1: TMenuItem
          Action = taMinMax
        end
        object N514HargaBeli1: TMenuItem
          Action = taHargaBeli
        end
        object N515HargaJual1: TMenuItem
          Action = taLokasiRak
        end
        object N616NoUrut1: TMenuItem
          Action = taNOUrutInv
        end
        object N13: TMenuItem
          Caption = '-'
        end
        object N516MutasiStock1: TMenuItem
          Action = taMutasiStock
        end
      end
      object N58Sales1: TMenuItem
        Caption = '6.2. Data Pembelian'
        object N521Supplier1: TMenuItem
          Action = taSupplier
        end
        object N622Valuta1: TMenuItem
          Action = taValutaPurchase
          Caption = '6.2.2. Valuta '
        end
        object N621Wilayah1: TMenuItem
          Action = taWilayahPurchase
          Caption = '6.2.3. Wilayah '
        end
        object N624NoUrut1: TMenuItem
          Action = taNOUrut
        end
        object N11: TMenuItem
          Caption = '-'
        end
        object N625HistoriHutang1: TMenuItem
          Action = taMutasiHutang
        end
      end
      object N9: TMenuItem
        Caption = '6.3. Data Penjualan'
        object N631Wilayah1: TMenuItem
          Action = taWilayahSales
          Caption = '6.3.1. Wilayah Penjualan'
        end
        object N632Valuta1: TMenuItem
          Action = taValutaSales
          Caption = '6.3.2. Valuta Penjualan'
        end
        object N531Customer1: TMenuItem
          Action = taCustomer
        end
        object N532Sales1: TMenuItem
          Action = taSales
        end
        object N633JenisHarga1: TMenuItem
          Action = taJnsHarga
        end
        object N634HargaJual1: TMenuItem
          Action = taHargaJual
        end
        object N637NoUrut1: TMenuItem
          Action = taNOUrutSales
        end
      end
    end
    object Setting1: TMenuItem
      Caption = 'Setting'
      object CustomInventory1: TMenuItem
        Caption = '7.1. Custom Inventory'
        object Jenis1: TMenuItem
          Action = taJenis
          Caption = '7.1.1. Jenis'
        end
        object N612Golongan1: TMenuItem
          Action = taGolongan
          Caption = '7.1.2. Golongan'
        end
        object N613Merek1: TMenuItem
          Action = taMerk
          Caption = '7.1.3. Merk'
        end
        object N614Type1: TMenuItem
          Caption = '7.1.4. Type'
        end
        object N10: TMenuItem
          Caption = '-'
        end
        object N615RakLokasi1: TMenuItem
          Action = taRak
          Caption = '7.1.5. Rak /Lokasi'
        end
        object N616Kategori1: TMenuItem
          Action = taKategori
          Caption = '7.1.6. Warna'
        end
        object N617Gudang1: TMenuItem
          Action = taGudang
          Caption = '7.1.7. Gudang'
        end
        object N618Cabang1: TMenuItem
          Action = taCabang
          Caption = '7.1.8. Cabang'
        end
        object N8: TMenuItem
          Caption = '-'
        end
      end
    end
    object Window1: TMenuItem
      Caption = '&Window'
      object NewWindow1: TMenuItem
        Action = WindowMinimizeAll1
      end
      object Tile1: TMenuItem
        Action = WindowTileHorizontal1
      end
      object Cascade1: TMenuItem
        Action = WindowCascade1
      end
      object ArrangeAll1: TMenuItem
        Action = WindowArrange1
      end
      object N6: TMenuItem
        Caption = '-'
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Contents1: TMenuItem
        Caption = '&Contents'
      end
      object Index1: TMenuItem
        Caption = '&Index'
      end
      object Commands1: TMenuItem
        Caption = 'Co&mmands'
      end
      object Procedures1: TMenuItem
        Caption = '&Procedures'
      end
      object Keyboard1: TMenuItem
        Caption = '&Keyboard'
      end
      object SearchforHelpOn1: TMenuItem
        Caption = '&Search for Help On'
      end
      object Tutorial1: TMenuItem
        Caption = '&Tutorial'
      end
      object HowtoUseHelp1: TMenuItem
        Caption = '&How to Use Help'
      end
      object About1: TMenuItem
        Caption = '&About...'
      end
    end
  end
  object pm1: TPopupMenu
    Left = 112
    Top = 72
  end
  object actlst1: TActionList
    Left = 160
    Top = 72
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 15
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 16
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
    object FilePrintSetup1: TFilePrintSetup
      Category = 'File'
      Caption = 'Print Set&up...'
      Hint = 'Print Setup'
    end
    object FilePageSetup1: TFilePageSetup
      Category = 'File'
      Caption = 'Page Set&up...'
      Dialog.MinMarginLeft = 0
      Dialog.MinMarginTop = 0
      Dialog.MinMarginRight = 0
      Dialog.MinMarginBottom = 0
      Dialog.MarginLeft = 2500
      Dialog.MarginTop = 2500
      Dialog.MarginRight = 2500
      Dialog.MarginBottom = 2500
      Dialog.PageWidth = 21000
      Dialog.PageHeight = 29700
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 9
    end
    object ClientDataSetApply1: TClientDataSetApply
      Category = 'DataSnap Client'
      Caption = 'Apply Updates'
      ImageIndex = 2
      DisplayErrorDlg = False
    end
    object ClientDataSetRevert1: TClientDataSetRevert
      Category = 'DataSnap Client'
      Caption = 'Revert'
      ImageIndex = 1
    end
    object ClientDataSetUndo1: TClientDataSetUndo
      Category = 'DataSnap Client'
      Caption = 'Undo'
      ImageIndex = 0
      FollowChange = False
    end
    object taMerk: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.3. Merk'
      OnExecute = taMerkExecute
    end
    object taKategori: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.6. Warna'
      OnExecute = taKategoriExecute
    end
    object taRak: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.5. Rak /Lokasi'
      OnExecute = taRakExecute
    end
    object taBarang: TAction
      Category = 'Inventory'
      Caption = '5.1.1. Barang'
      OnExecute = taBarangExecute
    end
    object taJenis: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.1. Jenis'
      OnExecute = taJenisExecute
    end
    object taGolongan: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.2. Golongan'
      OnExecute = taGolonganExecute
    end
    object taType: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.4. Type'
    end
    object taGudang: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.7. Gudang'
      OnExecute = taGudangExecute
    end
    object taCabang: TAction
      Category = 'Custom Inventory'
      Caption = '6.1.8. Cabang'
      OnExecute = taCabangExecute
    end
    object taValutaPurchase: TAction
      Category = 'MPurchase'
      Caption = '6.2.2. Valuta Purchase'
      OnExecute = taValutaPurchaseExecute
    end
    object taValutaSales: TAction
      Category = 'MSales'
      Caption = '6.3.2. Valuta Sales'
      OnExecute = taValutaSalesExecute
    end
    object taSaldoAwalBarang: TAction
      Category = 'Saldo'
      Caption = '3.1. Saldo Awal Barang'
      OnExecute = taSaldoAwalBarangExecute
    end
    object taSaldoAwalHutang: TAction
      Category = 'Saldo'
      Caption = '3.2. Saldo Awal Hutang'
      OnExecute = taSaldoAwalHutangExecute
    end
    object taKeterangan: TAction
      Category = 'Inventory'
      Caption = '6.1.2. Keterangan Barang'
      OnExecute = taKeteranganExecute
    end
    object taMinMax: TAction
      Category = 'Inventory'
      Caption = '6.1.3. Min dan Max'
      OnExecute = taMinMaxExecute
    end
    object taHargaBeli: TAction
      Category = 'Inventory'
      Caption = '6.1.4. Harga Pokok'
      OnExecute = taHargaBeliExecute
    end
    object taHargaJual: TAction
      Category = 'MSales'
      Caption = '6.3.6. Harga Jual'
      OnExecute = taHargaJualExecute
    end
    object taMutasiStock: TAction
      Category = 'Inventory'
      Caption = '6.1.7. Histori Stock'
      OnExecute = taMutasiStockExecute
    end
    object taSupplier: TAction
      Category = 'MPurchase'
      Caption = '6.2.1. Supplier'
      OnExecute = taSupplierExecute
    end
    object taCustomer: TAction
      Category = 'MSales'
      Caption = '6.3.3. Customer'
      OnExecute = taCustomerExecute
    end
    object taSales: TAction
      Category = 'MSales'
      Caption = '6.3.4. Sales'
      OnExecute = taSalesExecute
    end
    object taSaldoAwalPiutang: TAction
      Category = 'Saldo'
      Caption = '3.3. Saldo Awal Piutang'
      OnExecute = taSaldoAwalPiutangExecute
    end
    object taPurchaseRequest: TAction
      Category = 'TPurchase'
      Caption = '4.1.1 Purchase Request'
      OnExecute = taPurchaseRequestExecute
    end
    object taPurchaseOrder: TAction
      Category = 'TPurchase'
      Caption = '4.1.2. Purchase Order'
      OnExecute = taPurchaseOrderExecute
    end
    object taReceiving: TAction
      Category = 'TPurchase'
      Caption = '4.1.3. Receiving'
      OnExecute = taReceivingExecute
    end
    object taPurchaseReturn: TAction
      Category = 'TPurchase'
      Caption = '4.1.4. Purchase Return'
      OnExecute = taPurchaseReturnExecute
    end
    object taMonitoringPurchase: TAction
      Category = 'TPurchase'
      Caption = '4.1.5. Monitoring Purchase'
      OnExecute = taMonitoringPurchaseExecute
    end
    object taSalesRequest: TAction
      Category = 'TSales'
      Caption = '4.2.1. Sales Request'
      OnExecute = taSalesRequestExecute
    end
    object taSalesOrder: TAction
      Category = 'TSales'
      Caption = '4.2.2. Sales Order'
      OnExecute = taSalesOrderExecute
    end
    object taShipment: TAction
      Category = 'TSales'
      Caption = '4.2.3. Shipment'
      OnExecute = taShipmentExecute
    end
    object taSalesReturn: TAction
      Category = 'TSales'
      Caption = '4.2.4. Sales Return'
      OnExecute = taSalesReturnExecute
    end
    object taMonitoringSales: TAction
      Category = 'TSales'
      Caption = '4.2.5. Monitoring Sales'
      OnExecute = taMonitoringSalesExecute
    end
    object taPOS: TAction
      Category = 'POS'
      Caption = '4.3. Pos [Point Of Sales]'
      OnExecute = taPOSExecute
    end
    object taWilayahPurchase: TAction
      Category = 'MPurchase'
      Caption = '6.2.3. Wilayah Purchase'
      OnExecute = taWilayahPurchaseExecute
    end
    object taWilayahSales: TAction
      Category = 'MSales'
      Caption = '6.3.1. Wilayah Sales'
      OnExecute = taWilayahSalesExecute
    end
    object taLokasiRak: TAction
      Category = 'Inventory'
      Caption = '6.1.5. Lokasi Barang'
      OnExecute = taLokasiRakExecute
    end
    object taJnsHarga: TAction
      Category = 'MSales'
      Caption = '6.3.5. Jenis Harga'
      OnExecute = taJnsHargaExecute
    end
    object taNOUrut: TAction
      Category = 'MPurchase'
      Caption = '6.2.4. No. Urut'
      OnExecute = taNOUrutExecute
    end
    object taNOUrutSales: TAction
      Category = 'MSales'
      Caption = '6.3.7. No.  Urut'
      OnExecute = taNOUrutSalesExecute
    end
    object taNOUrutInv: TAction
      Category = 'Inventory'
      Caption = '6.1.6. No. Urut'
      OnExecute = taNOUrutInvExecute
    end
    object taMutasiHutang: TAction
      Category = 'MPurchase'
      Caption = '6.2.5. Mutasi Hutang'
      OnExecute = taMutasiHutangExecute
    end
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 4718792
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000050000
          0007000000080000000800000008000000080000000800000008000000080000
          0008000000080000000800000008000000070000000500000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000009000000120000
          0016000000170000001700000017000000170000001700000017000000170000
          0017000000170000001700000017000000160000001200000009000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000051E1C1B3A837C76C4ADA4
          9DF7B3A9A2F9BFB6B0FEBEB5B0FEBCB3ADFDB9B0AAFCB6ADA7FBB3A9A2F9B0A5
          9FF8ACA29BF7AAA098F6A99F98F5A99F98F5817974C21C1A1937000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000078A817BCBCBC6C0F5E3E2
          DFF4E9E8E6F7FBFBFAFEF8F8F8FDF4F3F2FBEEEDEBF9E7E6E3F6E0DEDBF3DBD9
          D5F1DAD8D4F1DDDBD6F2DBD9D6F1DBD9D6F1C6C0BCF3867D78C6000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5DFDDD9F3C4C0
          BEF69E9695F8A8A1A1FEA69F9FFDA19B9AFB9D9593FA988F8DF8918885F58C84
          80F38B827EF38C8480F3968F8BF6C0BCB9F4D9D7D3F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5DDDBD7F39A91
          8FF8A79F9CF6BFB9B8FDBEB7B6FDB8B0AFFAB2AAA7F8AAA29FF5A29894F19C92
          8EEF99908AEE9A918BEE988F8BF2948C88F5D8D6D2F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5DBD9D5F4938A
          87F6AAA39FF4C1BABAFDBEB7B6FCB8B1AFFAB1A8A5F6A79F9BF39D948FEF968D
          86EC938882EB938983EB9B928CEE8C847FF3D8D6D2F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D5D3CEF18E85
          81F4AEA7A4F6C1C0C0FFC1C1C1FFBDBDBDFFB7B7B7FFAFAFAFFFA7A7A7FF9F9F
          9FFF979797FF908E8DFB8F8883EF877E79F2D4D1CCEF9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D0CDC8EE8C84
          7FF3BDBCBBFDCFCFCFFFF3F3F3FFFBFBFBFFF5F5F5FFEDEDEDFFE5E5E5FFDDDD
          DDFFD5D5D5FFCECECEFFB4B2B1FB837A75F0CFCCC7ED9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5CDCAC4ED8A81
          7CF2C1C1C1FFF4F4F4FF8E8EFBFF4949EDFFD6D6F1FFEDEDEDFFC5C5DDFF2222
          A6FF5B5BACFFCECECEFFC7C7C7FF827873F0CDC9C3EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5CFCCC7EE8A81
          7CF2C1C1C1FFFFFFFFFFF9F9FFFF6161EFFF5959E1FFDDDDEAFF4545BFFF3B3B
          ADFFCECED3FFCECECEFFC7C7C7FF827873F0CDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CEC9ED8A81
          7CF2C1C1C1FFFFFFFFFFFFFFFFFFDDDDF9FF4343DEFF3D3DCCFF2C2CB9FFBDBD
          D4FFD5D5D5FFCECECEFFC7C7C7FF827873F0CDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CEC9ED8A81
          7CF2C1C1C1FFFFFFFFFFFFFFFFFFFBFBFBFF8E8EE8FF3030CAFF7B7BCCFFDDDD
          DDFFD5D5D5FFCECECEFFC7C7C7FF827873F0CDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CEC9ED8A81
          7CF2C1C1C1FFFFFFFFFFFFFFFFFFDDDDF9FF4141DEFF4242CDFF2C2CB9FFBDBD
          D4FFD5D5D5FFCECECEFFC7C7C7FF827873F0CDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D2D0CBEE8A81
          7CF2C1C1C1FFFFFFFFFFF9F9FFFF6161EFFF5959E1FFE0E0EBFF4545BFFF3B3B
          ADFFCCCCD2FFCECECEFFC7C7C7FF827873F0CDC9C3EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D3D1CBEEC7C4
          BDE9C1C1C1FFFFFFFFFF8B8BFBFF4C4CEEFFD6D6F1FFEDEDEDFFC5C5DDFF2424
          A7FF5959ACFFCECECEFFC7C7C7FFB7B4ABE3CECCC6ED9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D7D5CFEFCAC7
          C1EAC3C2C1FBFFFFFFFFFFFFFFFFFBFBFBFFF5F5F5FFEDEDEDFFE5E5E5FFDDDD
          DDFFD5D5D5FFCECECEFFC1C0BEF8BDB9B0E5D2CFCAEE9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000007A99F98F5DCDBD6F2CFCD
          C7ECCBC9C4EFF3F3F3FEFFFFFFFFFBFBFBFFF5F5F5FFEDEDEDFFE5E5E5FFDDDD
          DDFFD5D5D5FFC5C4C3F8B4B0A8E5C3C0B8E7D8D6D1F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000006A79D96F2DFDCD8F3D8D6
          D0EFD4D2CCEEF7F6F5FCF1F1EFFAE8E8E5F6DAD8D4F0CCC9C2EBBCB8AFE4AFAB
          A1DFABA59BDEADA99EDFBAB6ADE4CDCBC4EBD9D7D3F19F958FE8000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000004948A84D7D9D6D3F4E1E0
          DCF3DDDBD7F2F8F7F6FCF4F3F2FBEBEAE8F7E1DFDBF3D3D1CBEEC6C4BCE9BCB9
          B0E4B8B5ACE3BCB8B0E5C8C5BEE9DAD8D4F0D4D1CCF2908781D2000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001534E4B7DC2BBB6F5E4E3
          E0F4E8E7E4F6FAFAF9FDF7F6F5FCF0EFEDF9E8E7E4F6DDDCD7F2D4D1CBEECDCA
          C3EBCAC7C1EACECCC5ECDAD8D4F0DCDAD7F1BEB8B1F44A45426E000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000404040779726CB0C1BA
          B5F6C9C2BEFDE3E0DEFFE4E1DEFFE3E0DEFFE2DFDDFEE2DEDCFEE1DCDAFDE0DB
          D9FDDEDAD7FCDDD8D5FCC8C1BEFDBCB5AEF4736C67A900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000013F3C
          395CCAC5C1F0F2F1F0FCFBFBFAFFFAFAF9FFF9F8F8FFF7F6F5FEF4F3F2FEF2F0
          EFFEEFEDEBFDE9E7E6F9C9C5C1F03D39375B0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF9595
          95FFB0B0B0FF989898FF7C7C7CFF6A6A6AFF5B5B5BFF4D4D4DFF414141FF3838
          38FF303030FF2B2B2BFF262626FF232323FF212121FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF767676FF8B8B8BFF626262FF6E6E6EFF4040
          40FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282DDB1B1
          B1F0B6B6B6FAB5B5B5FFB5B5B5FFB5B5B5FFBABABAFFC4C4C4FFC4C4C4FFC4C4
          C4FFBBBBBBFFB5B5B5FFABABABFB8F8F8FF15E5E5EE000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000240000
          00780000009F000000CC000000CC000000CC000000FC000000FF000000FF0000
          00CC000000CC000000CC000000A50000007E0000002D00000000000000000000
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
          000000000000000000000000000000000000000000000000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
          000A0000000A0000000A0000000A0000000A0000000A0000000A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001A0000001A00000023000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          00230000002300000023000000230000002300000023000000230000001A0000
          001A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001A0000001A7D7A77FF7D7A77FF7D7A
          77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF7D7A
          77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF7D7A77FF0000001A0000
          001A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000888683FFAEABA8FF827F7CFFE5E2DFFFF2F0
          EEFFF0EEECFFEEECE9FFEBE9E6FFE8E5E1FFE4E1DDFFE0DCD8FFDCD8D3FFD8D4
          CEFFD4D0CAFFD1CCC6FFCEC9C2FFCCC7C0FFCCC7C0FF827F7CFF9C9893FF7976
          72FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B1AEACFFE6E3DFFF898582FFDDDAD6FFDEDB
          D8FFE5E2DFFFF2F0EEFFF0EEECFFEEECE9FFEBE9E6FFE8E5E1FFE4E1DDFFE0DC
          D8FFDCD8D3FFD8D4CEFFD4D0CAFFD1CCC6FFCEC9C2FF898582FFCDC8C1FF9C98
          93FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B2B1AEFFE8E5E2FF8F8C88FFDDDAD6FFDDDA
          D6FFDDDAD6FFDEDBD8FFE5E2DFFFF2F0EEFFF0EEECFFEEECE9FFEBE9E6FFE8E5
          E1FFE4E1DDFFE0DCD8FFDCD8D3FFD8D4CEFFD4D0CAFF8F8C88FFCEC9C3FF9D9A
          94FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B4B2B0FFEAE8E5FF95928EFFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFDDDAD6FFDEDBD8FFE5E2DFFFF2F0EEFFF0EEECFFEEEC
          E9FFEBE9E6FFE8E5E1FFE4E1DDFFE0DCD8FFDCD8D3FF95928EFFD0CBC5FF9E9A
          96FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B5B4B1FFECEAE7FF9C9894FFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDEDBD8FFE5E2DFFFF2F0
          EEFFF0EEECFFEEECE9FFEBE9E6FFE8E5E1FFE4E1DDFF9C9894FFD2CDC7FFA09C
          97FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B7B5B3FFEEECE9FFA19D99FFF6F6F5FFF6F6
          F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF7F6
          F5FFF8F8F7FFFCFBFBFFFBFBFAFFFBFAF9FFFAF9F9FFA19D99FFD4D0CAFFA19E
          99FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8B6B4FFF0EDEBFFA6A29EFFA6A29EFF908C
          88FF908C88FF908C88FF908C88FF908C88FF908C88FF908C88FF908C88FF908C
          88FF908C88FFA9A5A1FFA9A5A1FFA9A5A1FFA6A29EFFA6A29EFFD6D2CDFFA3A0
          9BFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8B7B5FFF1EFEDFFA9A5A1FF7C7A78FF908C
          88FFFAF8F5FFFBF9F6FFFCFBF8FFFCFBFAFFFDFCFBFFFDFDFCFFFEFDFDFFFEFE
          FDFF908C88FFCBCAC9FFF2F1EFFFA9A5A1FF777571FFA9A5A1FFD9D5D0FFA4A1
          9EFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B8B6B4FFF2F0EEFFA9A5A1FF6C6A68FF908C
          88FFF9F6F2FFCECCC9FFCECDCBFFE5E4E2FFD0CFCDFFFDFCFAFFFDFDFBFFFEFD
          FCFF908C88FF8E8A87FFA9A5A1FFA9A5A1FF676562FFA9A5A1FFDBD8D3FFA7A4
          A0FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AFAEABFFE8E6E3FFA9A5A1FF5A5957FF908C
          88FFF8F5F0FFF8F6F2FFF9F7F4FFFAF8F5FFFBFAF7FFFCFBF9FFFDFCFAFFFDFC
          FBFF908C88FFA4A199FFC4C0B6FF83807DFF565452FFA9A5A1FFDEDAD6FFA8A6
          A2FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000ACAAA7FFE4E1DEFFA9A5A1FF494947FF908C
          88FFF7F4EFFFD0CECAFFA9A8A5FFAAA9A6FFFAF8F5FFABAAA9FFFCFBF9FFFCFB
          FAFF908C88FF6E6B69FF83807DFF83807DFF484745FFA9A5A1FFE1DDD9FFABA8
          A4FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AAA7A4FFDFDCD9FFA9A5A1FFA9A5A1FF908C
          88FFF6F3EDFFF7F4EEFFF7F5F0FFF8F6F1FFF9F7F3FFFAF8F4FFFBF9F6FFFCFA
          F8FF908C88FF8E8A87FFA9A5A1FFA9A5A1FFA9A5A1FFA9A5A1FFE3E0DCFFADAA
          A7FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFF7F6F5FFF7F6F6FF908C
          88FFF5F2EBFF8C8A86FFC0BEBAFF8C8B88FF8D8B89FFF9F6F2FFF9F7F4FFFAF9
          F6FF908C88FFD2D2D1FFFAF9F9FFFAF9F8FFF9F9F8FFF9F8F7FFE6E3DFFFAEAC
          A9FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFA9A5A1FF908C
          88FFFCFBFAFFFCFBFAFFFDFCFAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFDFCFFFDFD
          FCFF908C88FF8E8A87FFA9A5A1FFA9A5A1FFA9A5A1FFA9A5A1FFE8E5E2FFB1AE
          ABFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFDDDAD6FF908C
          88FF908C88FF908C88FF908C88FF908C88FF908C88FF908C88FF908C88FF908C
          88FF908C88FFC9C8C5FFEFEDEAFFEEECE9FFEDEAE8FFA9A5A1FFEAE8E5FFB2B0
          AEFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFDDDAD6FFDDDA
          D6FFB9B7B4FFB9B7B4FFBAB8B4FFBCBAB7FFBFBCB9FFC1BFBCFFC4C1BFFFCBC9
          C8FFCAC9C7FFCAC9C7FFF0EEECFFEFEDEBFFEFECEAFFA9A5A1FFECEAE7FFB4B2
          B0FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFDDDAD6FFDBD8D4FFDCD9D5FFDDDAD7FFE0DDDBFFE5E2
          DFFFEAE8E5FFF2F0EEFFF1EFEDFFF1EFECFFF0EEECFFA9A5A1FFEEECE9FFB5B4
          B1FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFD8D5D1FFB3B0ACFF989592FF8C8986FF989592FFB6B3
          B0FFE0DDDAFFE8E6E3FFF2F0EEFFF2F0EEFFF1EFEDFFA9A5A1FFF0EEEBFFB7B5
          B3FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFA7A4A1FFA3A19FFFB8B8B7FFC0C0C0FFB8B8B7FFA3A1
          9FFFA9A6A2FFE3E0DDFFE6E4E0FFE9E7E4FFF2F0EEFFA9A5A1FFF1EFEDFFB8B6
          B4FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFF6F6F5FFF6F6
          F5FFF6F6F5FFF6F6F5FF908D8AFFF5F5F5FFF9F9F9FFF9F9F9FFF9F9F9FFF6F6
          F6FF8E8B89FFF7F6F5FFF7F7F6FFF8F8F7FFF9F8F8FFA9A5A1FFF2F0EEFFB8B7
          B5FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFA9A5A1FFA9A5A1FFA9A5
          A1FFA9A5A1FFA9A5A1FF969390FF8C8986FF8C8986FF8C8986FF8C8986FF8C89
          86FF969390FFA9A5A1FFA9A5A1FFA9A5A1FFA9A5A1FFA9A5A1FFE8E6E3FFB9B8
          B6FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9A7A4FFDDDAD6FFDDDAD6FFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDA
          D6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDFDCD8FFE1DEDAFFE3E1DDFFB0AE
          ACFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C1
          C0FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BDBAB7FFF6F3EFFFF5F2EEFFF4F1EEFFF3F0
          EDFFF2EFECFFF1EEEBFFEFEDEAFFEEECE9FFE4E1DEFFE2DFDCFFE0DEDAFFDFDC
          D8FFDEDBD7FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFA9A7
          A4FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BDBAB7FFF6F3EFFFF5F2EEFFF4F1EEFFF3F0
          EDFFF2EFECFFF1EEEBFFEFEDEAFFEEECE9FFE4E1DEFFE2DFDCFFE0DEDAFFDFDC
          D8FFDEDBD7FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFA9A7
          A4FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BDBAB7FFF6F3EFFFF5F2EEFFF4F1EEFFF3F0
          EDFFF2EFECFFF1EEEBFFEFEDEAFFEEECE9FFE4E1DEFFE2DFDCFFE0DEDAFFDFDC
          D8FFDEDBD7FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFA9A7
          A4FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BDBAB7FFF6F3EFFFF5F2EEFFF4F1EEFFF3F0
          EDFFF2EFECFFF1EEEBFFEFEDEAFFEEECE9FFE4E1DEFFE2DFDCFFE0DEDAFFDFDC
          D8FFDEDBD7FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFA9A7
          A4FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BDBAB7FFF6F3EFFFF5F2EEFFF4F1EEFFF3F0
          EDFFF2EFECFFF1EEEBFFEFEDEAFFEEECE9FFE4E1DEFFE2DFDCFFE0DEDAFFDFDC
          D8FFDEDBD7FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFDDDAD6FFA9A7
          A4FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000092908EFFBCBAB7FFBBB9B6FFBBB8B6FFBAB8
          B5FFB9B7B4FFB8B6B4FFB7B5B3FFB6B4B2FFAEACAAFFADABA8FFABAAA7FFABA8
          A5FFAAA7A4FFA9A7A4FFA9A7A4FFA9A7A4FFA9A7A4FFA9A7A4FFA9A7A4FF8381
          7FFF000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00080000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000
          002B0000002B0000002B0000002B0000002B0000000800000000000000001D1C
          1B3FA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A0
          9AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A0
          9AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A0
          9AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFF1D1C1B3F00000000000000005554
          5092C0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BD
          B7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BD
          B7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BD
          B7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FF5554509200000000000000008B88
          83D49B9994FF9B9994FF9B9994FF9B9994FF9B9994FF9B9994FF9B9994FF9B99
          94FF9B9994FF9B9994FF9B9994FF9B9994FF9B9994FF9D9B96FFA6A39EFFADAA
          A5FFB0ADA8FFB5B2ADFFBBB8B2FFBFBCB6FFC0BDB7FFC0BDB7FFC0BDB7FFC0BD
          B7FFC0BDB7FFC0BDB7FFC0BDB7FFC0BDB7FF92908BD400000000000000000000
          0031FFFFFFFFFEFDFDFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFF3F3F3FFEAE9
          E8FFEAEAE8FFDFDEDCFFD8D7D5FFD1D0CDFFC8C6C2FFBFBDB7FFBBB9B2FFCBC7
          BFFFD9D5CDFFE3DFD6FFE3DFD6FFE3DFD6FF0000002700000000000000000000
          0031FFFFFFFFFBFBFAFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFEDED
          EBFFD7D6D3FFC1BEBAFFB3B0AAFFC9C5BDFF0000002900000000000000000000
          0031FFFFFFFFFAFAF8FFFBFAF8FFCAC6C0FFCAC6C0FFCAC6C0FFCAC6C0FFCAC6
          C0FFCAC6C0FFCAC6C0FFCAC6C0FFCAC6C0FFCAC6C0FFCAC6C0FFCBC7C1FFD4D1
          CCFFD4D1CCFFD4D1CCFFDBD8D4FFDFDCD9FFDFDDDAFFE9E8E5FFEDECEAFFF4F3
          F2FFFDFBFBFFFFFEFEFFF7F6F6FFD4D3D0FF3F3F3F8D0000001E000000000000
          0031FFFFFFFFFAF8F6FFFAF9F7FFC8C3BCFFFEFDFCFFFEFDFCFFCECAC4FFFEFD
          FDFFFEFDFDFFCFCBC5FFFEFDFDFFFEFEFDFFD0CCC6FFFEFEFDFFFDFDFCFFCFCB
          C5FFF4F3F1FFF4F3F1FFCFCBC5FFD7D2E5FFDBD6E4FFCDC9C3FFD7D4D3FFD4D0
          CCFFCAC6C0FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF18181848000000000000
          0031FFFFFFFFF8F7F5FFF8F8F5FFC6C2BAFFFAFAF9FFFDFDFCFFCECAC4FFFDFD
          FCFFFDFDFCFFCFCBC5FFFEFDFCFFFEFDFCFFCFCBC5FFFEFDFCFFFEFDFCFFD0CC
          C6FFFEFDFCFFFEFDFCFFD1CDC7FFDDD6FDFFDDD6FDFFD1CDC7FFDDD6FDFFDDD6
          FDFFCAC6C0FFFEFEFDFFFEFEFDFFFEFEFDFFF8F8F7FC00000031000000000000
          0031FFFFFFFFF7F6F3FFF8F6F3FFC5C1B9FFC9C4BDFFCBC7BFFFCDC9C3FFCDC9
          C3FFCECAC4FFCECAC4FFCECAC4FFCFCBC5FFCFCBC5FFCFCBC5FFCFCBC5FFD0CC
          C6FFD8D5D0FFD9D6D1FFD0CCC6FFD3CED1FFD5D0DBFFD1CDC7FFD6D1DFFFD8D2
          E7FFCAC6C0FFFEFDFCFFFEFDFCFFFEFDFCFFDAD9D9EC00000028000000000000
          0031FFFFFFFFF5F4F1FFF7F5F1FFC4C0B8FFF8F6F3FFF8F7F3FFCBC6C0FFFDFC
          FAFFFDFCFBFFCDC9C3FFFDFCFBFFFDFCFBFFCECAC4FFFDFCFBFFFDFCFBFFCFCB
          C5FFF5F3F1FFF4F2F0FFD0CCC6FFDAD4F2FFD8D2E9FFD0CCC6FFD8D2E5FFD6D1
          DDFFCAC6C0FFFDFDFCFFFDFDFCFFFDFDFCFFBBBBBADB0000001E000000000000
          0031FFFFFFFFF5F4EFFFF5F3EFFFC4BFB7FFF6F5F1FFF7F5F1FFC7C2BBFFFAF9
          F7FFFCFBFAFFCDC9C3FFFCFBFAFFFCFCFAFFCECAC4FFFCFCFAFFFDFCFAFFCFCB
          C5FFFDFCFAFFFDFCFAFFCFCBC5FFDDD6FDFFDDD6FDFFD0CCC6FFDDD6FDFFDDD6
          FDFFCAC6C0FFFDFCFBFFFDFCFBFFFDFCFBFF9E9E9DCA00000016000000000000
          0031FFFFFFFFF4F2EDFFF4F1EDFFC3BEB6FFC4BFB7FFC5C0B8FFC5C1B9FFC7C2
          BAFFCAC6BFFFCCC8C2FFCDC9C3FFCDC9C3FFCDC9C3FFCDC9C3FFCECAC4FFCECA
          C4FFCECAC4FFCFCBC5FFCFCBC5FFCFCBC5FFCFCBC5FFD0CCC6FFD0CCC6FFD0CC
          C6FFCAC6C0FFFCFCFAFFFDFCFAFFFDFCFAFF838381B90000000E000000000000
          0031FFFFFFFFF3F0EBFFF3EFEBFFC2BDB4FFF4F1ECFFF4F2EDFFC5C0B8FFF5F3
          EEFFF6F4EFFFCAC5BFFFFBFAF8FFFBFAF8FFCDC9C3FFFBFAF8FFFCFAF8FFCDC9
          C3FFFCFAF8FFFCFBF8FFCECAC4FFDDD6FDFFDDD6FDFFCFCBC5FFDDD6FDFFDDD6
          FDFFCAC6C0FFFCFBF9FFFCFBF9FFFCFBF9FF6E6D6DAB00000008000000000000
          0031FFFFFFFFF2EEE9FFF1EEE8FFC2BCB3FFF2EFE9FFF2EFEAFFC3BEB6FFF3F1
          ECFFF4F2EDFFC5C1B9FFF9F6F2FFFBF9F6FFCCC8C2FFFBF9F6FFFBF9F7FFCDC9
          C3FFFBF9F7FFFBFAF7FFCECAC4FFDDD6FDFFDDD6FDFFCFCBC5FFDDD6FDFFDDD6
          FDFFCAC6C0FFFBFAF8FFFCFAF8FFFCFAF8FF5655549B00000003000000000000
          0031FFFFFFFFF0ECE7FFEFECE5FFC1BBB2FFC1BCB3FFC2BCB4FFC2BDB4FFC3BE
          B5FFC3BEB6FFC5C0B8FFC5C0B8FFC8C4BCFFCBC7C1FFCCC8C2FFCCC8C2FFCCC8
          C2FFCDC9C3FFCDC9C3FFCDC9C3FFCDC9C3FFCECAC4FFCECAC4FFCECAC4FFCFCB
          C5FFCAC6C0FFFBF9F6FFFBF9F7FFFBF9F7FF4443438E00000000000000000000
          0031FFFFFFFFEFEBE4FFEFEAE2FFC0BBB1FFF0ECE5FFF0ECE5FFC2BCB3FFF1ED
          E7FFF1EEE8FFC3BEB5FFF2EFE9FFF3F0EAFFC7C3BBFFF9F7F4FFF9F7F4FFCCC8
          C2FFF9F7F4FFFAF8F4FFCDC9C3FFDDD6FDFFDDD6FDFFCDC9C3FFDDD6FDFFDDD6
          FDFFCAC6C0FFFAF8F5FFFAF8F5FFFAF8F5FF3232318100000000000000000000
          0031FFFFFFFFEFEBE3FFEDE9E0FFBFB9B0FFEEEAE2FFEEEBE3FFC1BBB2FFEFEC
          E5FFF0ECE5FFC2BDB4FFF1EDE7FFF2EEE8FFC3BEB6FFF4F0EBFFF8F5F1FFCBC7
          C1FFF9F7F3FFF9F7F3FFCCC8C2FFDDD6FDFFDDD6FDFFCDC9C3FFDDD6FDFFDDD6
          FDFFCAC6C0FFF9F7F4FFF9F7F4FFF9F7F4FF2929287900000000000000000000
          0031FFFFFFFFEEE9E1FFECE7DEFFBFB9AFFFBFB9B0FFC0BAB0FFC0BAB1FFC1BB
          B2FFC1BBB2FFC2BCB3FFC2BCB4FFC2BDB5FFC3BEB5FFC3BEB6FFC4BFB8FFC9C5
          BEFFCBC7C1FFCBC7C1FFCBC7C1FFCCC8C2FFCCC8C2FFCCC8C2FFCDC9C3FFCDC9
          C3FFCAC6C0FFF9F6F2FFF9F6F2FFF9F6F2FF1D1D1D6F00000000000000000000
          0031FFFFFFFFEDE8DFFFEBE6DDFFBEB8AEFFECE7DEFFECE7DEFFBFB9B0FFEDE8
          E0FFEDE9E1FFC1BBB2FFEEEBE3FFEFEBE3FFC2BDB4FFF0ECE5FFF1EDE6FFC3BE
          B6FFF5F1EBFFF8F5F0FFCBC7C1FFDDD6FDFFDDD6FDFFCCC8C2FFDDD6FDFFDDD6
          FDFFCAC6C0FFF8F6F1FFF8F6F1FFF8F6F1FF1514146700000000000000000000
          0031FFFFFFFFEBE7DEFFE9E4DBFFBEB7ADFFEBE5DCFFEBE6DCFFBFB9AFFFECE7
          DEFFEDE8DEFFC0BAB1FFEEE9E1FFEEE9E1FFC1BCB3FFEFEAE3FFEFEBE3FFC3BE
          B5FFF0ECE5FFF2EEE7FFC9C4BEFFDDD6FDFFDDD6FDFFCBC7C1FFDDD6FDFFDDD6
          FDFFCAC6C0FFF8F5F0FFF8F5F0FFF8F5F0FF0E0E0E6100000000000000000000
          0031FFFFFFFFEBE6DDFFE9E4D9FFBDB7ADFFBEB7ADFFBEB7ADFFBEB8AEFFBFB9
          AFFFBFB9AFFFBFB9B0FFC0BAB0FFC0BBB1FFC1BBB2FFC1BCB3FFC2BCB3FFC2BD
          B4FFC2BDB5FFC3BEB6FFC3BEB6FFC6C2BBFFCAC6C0FFCAC6C0FFCAC6C0FFCAC6
          C0FFCAC6C0FFF7F4EFFFF7F4EFFFF7F4EFFF0303035700000000000000000000
          0031FFFFFFFFEBE6DDFFE8E2D8FFE9E2D8FFE9E3D8FFE9E3D9FFEAE3D9FFEAE4
          DAFFEAE4DAFFEBE5DBFFEBE5DCFFECE6DDFFECE7DEFFECE8DEFFEDE8DFFFEDE9
          E0FFEEE9E1FFEEEAE1FFEFEBE2FFEFEBE3FFF1EDE5FFF4F1EAFFF6F3EEFFF6F3
          EEFFF6F3EEFFF6F3EEFFF6F3EEFFF7F3EEFF0000005300000000000000000000
          0031FFFFFFFFEBE5DCFFE8E1D7FFBAB4ABFFE8E1D7FF949087FFE8E3D7FFC3BE
          B4FFC4BEB5FFBBB6AEFFBCB7AFFFD8D3C9FFA9A49DFFC6C1B8FFEBE7DDFFEDE7
          DEFFDBD5CCFFC0BAB3FFEEE8E0FFACA8A2FFEFEAE1FFC1BCB6FFD6D1CCFFD9D5
          D1FFC8C5C0FFF6F3EDFFF6F3EDFFF6F3EDFF0000005100000000000000000000
          0031FFFFFFFFEBE5DBFFE8E1D6FFC3BCB2FFE8E1D6FFC3BCB2FFE8E1D6FFBAB5
          ABFFDED9CFFFD7D0C6FFD7D1C7FFDFDAD0FFCEC9BFFFD8D2C8FFD8D2C9FFEBE5
          DCFFEBE6DCFFC7C2B9FFECE8DEFFACA79FFFEDE9E0FFC8C4BDFFC9C5BEFFC9C5
          BEFFCCC8C2FFF4F1EBFFF5F2ECFFF6F2ECFF0000005100000000000000000000
          0031FFFFFFFFEAE4DBFFE7E0D6FFDDD7CDFFE7E0D6FFE7E1D6FFE7E1D6FFE7E1
          D6FFE7E2D6FFE7E2D6FFE8E2D7FFE9E2D7FFE9E3D8FFE9E3D8FFEAE4D9FFEAE4
          DAFFE1DCD1FFD9D3CAFFECE6DCFFDAD4CBFFEDE7DEFFDBD5CDFFEDE8E0FFE4E0
          D7FFE4E0D8FFEFEAE2FFF1EDE6FFF4F0E9FF0000005100000000000000000000
          0031FFFFFDFFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F3FFFDF9F3FFFDF9F3FFFDF9
          F3FFFDF9F3FFFDFAF3FFFDFAF3FFFDFAF3FFFDFAF3FFFDFAF3FFFEFAF3FFFEFA
          F3FFFEFAF3FFFEFAF3FFFEFAF3FFF5F1EAFF0000003900000000000000000000
          000D000000310000003100000031000000310000003100000031000000310000
          0031000000310000003100000031000000310000003100000031000000310000
          0031000000310000003100000031000000310000003100000031000000310000
          0031000000310000003100000031000000310000000D00000000000000000000
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
          0000000000000000000A00000027000000270000002700000027000000270000
          0027000000270000002700000027000000270000002700000027000000270000
          0027000000270000002700000027000000270000002700000027000000270000
          00270000000A0000000000000000000000000000000000000000000000000000
          000000000000000000270000004D0000004D0000004D0000004D0000004D0000
          004D0000004D0000004D0000004D0000004D0000004D0000004D0000004D0000
          004D0000004D0000004D0000004D0000004D0000004D0000004D0000004D0000
          004D000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFFFFFFFFFFFFFFFFEAEAEAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFFFEFDFFFFFEFEFFEAE9E9FFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFDFDFDFFFEFEFEFFE9E9E9FFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFDFDFBFFFDFDFBFFE9E9E8FFFEFEFDFFFEFE
          FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
          FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFEFFFEFEFEFFFEFE
          FEFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFCFBFAFFFCFBFBFFE9E8E8FFFEFDFDFFFEFD
          FDFFA0A0A0FFD0CFCFFFA0A0A0FFA0A0A0FFFEFDFDFFFEFEFDFFFEFEFDFFFEFE
          FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
          FDFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFBFAF9FFFCFBF9FFE8E6E5FFFEFDFCFFFEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
          FCFFCECDCDFFA0A09FFFD0CFCFFFA0A09FFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
          FCFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFFAF9F7FFFAFAF7FFE6E6E3FFFCFCFAFFFDFD
          FBFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
          FCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
          FCFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF9F8F6FFFAF8F7FFE6E4E3FFFAF9F8FFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
          FBFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF8F7F4FFF9F7F5FFE5E4E1FFFAF8F6FFFCFB
          F8FFCFCFCDFFA09F9EFFFDFCFAFFA09F9EFFCFCFCDFFFDFCFAFFFDFCFAFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFC
          FBFF000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF6F5F3FFF7F6F4FFE4E2E0FFF8F7F5FFF9F7
          F5FFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFB
          FAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFCFAFFEDED
          EBF5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF9F8F5FFF9F9F8FFE3E2DFFFF7F6F4FFF8F6
          F4FFFAF9F7FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFAF76
          6DFFAF766DFFFCFBF9FFDB968DFFDB968DFFFCFBF9FFD4AAA4FFD4AAA4FFEDEC
          EAF5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFF09080758F8F8F6FFE1E0DCFFF6F4F1FFF6F5
          F2FFF7F6F2FFFAF9F6FFFBFAF7FFFBFAF8FFFBFAF8FFFBFAF8FFFBFAF8FFCA90
          88FFAF756DFFFBFAF8FFF5B1A8FFDA968DFFFCFAF8FFEFC5BEFFD4AAA3FFEDEB
          E9F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF4F2EEFFF6F4F1FFE1DEDBFFF5F3EFFFF6F3
          F0FFCAC8C5FF9C9B99FF9E9D9BFFFBF9F6FF9E9D9BFFFBF9F6FFFBF9F6FFCA90
          88FFAF756DFFFBF9F7FFF5B1A8FFDA968DFFFBF9F7FFEFC5BEFFD4AAA3FFECEA
          E9F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF3F0ECFFF2F0ECFFDFDDD9FFF3F1EDFFF4F1
          EEFFF4F2EEFFF5F2EFFFF8F6F3FFFAF8F5FFFAF8F5FFFAF8F5FFFAF8F5FFCA90
          87FFAF756CFFFAF8F5FFF5B1A7FFDA968CFFFAF8F5FFEFC5BEFFD4AAA3FFEBEA
          E8F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF1EEEAFFF0EEEAFFDEDBD7FFF2EFEBFFF2F0
          ECFFF2F0ECFFF3F1EDFFF4F1EEFFF8F6F3FFF9F7F4FFF9F7F4FFF9F7F4FFCA90
          87FFAF756CFFFAF8F4FFF5B1A7FFDA968CFFFAF8F4FFFAF8F4FFFAF8F4FFEBE9
          E6F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF0EDE8FFF0EDE8FFDDDAD5FFF1EDE9FFF1EF
          EAFFF2F0EBFFF2F0EBFFF3F0ECFFF5F3EEFFF9F7F3FFF9F7F3FFF9F7F3FFCA90
          87FFAF756CFFF9F7F3FFF5B1A7FFDA968CFFF9F7F3FFF9F7F3FFF9F7F3FFEAE9
          E5F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFF2EFE9FFF5F4EFFFDCD9D3FFEFEDE8FFEFED
          E8FF989693FFC6C3C0FF989794FF989794FFF5F3EFFFF8F6F2FFF8F6F2FFF8F6
          F2FFF8F6F2FFF8F6F2FFF5B0A7FFDA958CFFF8F6F2FFF9F6F2FFF9F6F2FFEAE8
          E4F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFEFF0E0D0B5EF4F0EAFFDBD7D2FFEEEBE6FFEFEC
          E7FFEFECE7FFF0ECE8FFF0EDE8FFF1EEE9FFF1EEEAFFF6F3EFFFF8F5F1FFF8F5
          F1FFF8F5F1FFF8F5F1FFF5B0A7FFDA958CFFF8F5F1FFF8F5F1FFF8F6F1FFE9E8
          E3F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFAFFECE9E4FFEEEBE5FFD9D6D0FFEDE9E4FFEDEA
          E5FFEEEBE5FFEEECE6FFEFECE6FFEFEDE7FFF0EDE8FFF0EEE8FFF6F4EFFFF7F5
          F0FFF7F5F0FFF7F5F0FFF7F5F0FFF7F5F0FFF8F5F0FFF8F5F0FFF8F5F0FFE9E7
          E2F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFECE9E3FFEBE8E2FFD9D5CFFFECE9E3FFECE9
          E3FFEDE9E4FFEDEAE4FFEEEBE5FFEFEBE5FFEFECE6FFEFECE6FFF1EEE8FFF7F3
          EEFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFE9E6
          E1F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFEBE8E1FFEAE6E0FFD7D4CEFFEAE7E1FFEBE7
          E1FFC1BEB9FF95938FFF95938FFFC2BFBBFF969490FFEEEAE4FFEEEBE5FFF1ED
          E8FFF7F3EEFFF7F3EEFFF7F3EEFFF7F3EEFFF7F3EEFFF7F4EEFFF7F4EEFFE9E6
          E0F5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFEBE7E1FFE9E6DFFFD7D4CDFFEAE6DFFFEAE7
          E0FFEBE7E0FFEBE8E1FFECE8E1FFECE9E2FFECE9E2FFEDEAE3FFEEEAE4FFEEEB
          E4FFF0EDE7FFF6F3EDFFF6F3EDFFF6F3EDFFF6F3EDFFF6F3EDFFF6F3EDFFE8E5
          DFF5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFE9E6DFFFE8E4DDFFD6D2CBFFE8E5DEFFEAE5
          DEFFEAE6DFFFEAE6DFFFEBE6DFFFEBE7E0FFECE8E1FFECE8E1FFEDE8E2FFEDE9
          E2FFEEE9E3FFF0ECE6FFF6F2ECFFF6F2ECFFF6F2ECFFF6F2ECFFF6F2ECFFE8E4
          DEF5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFE9E5DEFFE7E3DBFFD5D1CAFFE8E3DCFFE8E5
          DDFFE9E5DDFFE9E6DEFFEAE6DEFFEAE6DFFFEAE7DFFFEBE7DFFFEBE8E0FFEBE8
          E0FFECE9E1FFEDE9E3FFEEEBE5FFF4F1EBFFF5F2ECFFF5F2ECFFF5F2ECFFE7E4
          DEF5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFE9E5DDFFE7E2DAFFD5D0C9FFE7E3DBFFE8E3
          DCFF928F8BFF92908CFFBFBBB5FF93918CFFEAE5DEFFEAE5DFFFEAE6DFFFEBE7
          E0FFEBE7E0FFECE8E1FFECE8E1FFEEE9E3FFF3EFE9FFF5F1EBFFF5F1EBFFE7E3
          DDF5000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFFFFE8E4DCFFE5E2DAFFD4D0C8FFE6E2DAFFE6E3
          DBFFE7E3DBFFE7E3DCFFE7E4DCFFE8E4DCFFE9E5DDFFEAE5DDFFEAE5DEFFEAE6
          DEFFEBE6DFFFEBE7DFFFEBE7DFFFECE8E0FFEDE8E1FFF1EDE5FFF5F1EAFFE4E0
          D9F2000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFEFFE8E4DBFFE5E1D8FFD4CFC7FFE5E1D9FFE6E1
          D9FFE6E2DAFFE6E2DAFFE7E2DAFFE7E3DBFFE7E3DBFFE8E3DCFFE8E4DDFFE9E4
          DDFFE9E5DEFFE9E5DEFFEAE6DFFFEBE6DFFFEBE7E0FFEBE7E0FFEDE9E3FFD5D2
          CDEA000000270000000000000000000000000000000000000000000000000000
          00000000000000000027FFFFFDFFFDF9F2FFFDF9F2FFE8E4DDFFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFBF7F0FFD7D4
          CEEA000000270000000000000000000000000000000000000000000000000000
          0000000000000000000A00000027000000270000002700000027000000270000
          0027000000270000002700000027000000270000002700000027000000270000
          0027000000270000002700000027000000270000002700000027000000270000
          00270000000A0000000000000000000000000000000000000000000000000000
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
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0009000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023000000460000004500000045000000450000004500000045000000450000
          0045000000450000004500000045000000450000004500000045000000450000
          0045000000450000004500000045000000450000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FEFEFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFFF5F5F5FFF5F5F5FFF8F8F8FF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FEFEFDFFFEFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFF4F4
          F3FFEBEBEAFFEEEEEDFFF3F3F2FFF6F6F5FF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FDFDFDFFFDFDFBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFEBEBEBFFE1E1
          E1FFE6E6E6FFEDEDEDFFF7F7F7FFFDFDFDFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FDFDFDFFFCFCFAFFFDFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
          FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFDFDFCFFE6E6E5FFDADAD9FFE1E1
          E0FFF3F3F2FFFEFEFDFFFEFEFDFFFEFEFDFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FDFDFCFFFBFAF9FFFCFBF9FFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFE4E3E2FFD4D3D3FFE3E2E2FFFAF9
          F9FFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FCFCFBFFFAF9F8FFFAFAF8FFFBFBFAFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
          FCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFCBCBCBFFB5B5B4FFFDFDFCFFFDFD
          FCFFFDFDFCFFFDFDFCFFFEFDFCFFFEFDFCFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C2DFBFBFBFFF9F7F6FFFAF8F7FFFAF9F7FFFCFBFAFFFDFCFBFFFDFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFF1F0EFFF1B1B1BFF181818FF6B6B
          6AFFFAF9F8FFFDFCFBFFFDFCFBFFFDFDFBFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF8F7F4FFF9F7F5FFF9F8F5FFFBF9F7FFFDFCFAFFFDFCFAFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFA4A4A3FF696969FF4343
          43FF6B6B6AFFC2C2C1FFFDFCFBFFFDFCFBFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFBFFF6F5F3FFF7F6F3FFF7F6F4FFF8F7F5FFFBF9F7FFFCFBF9FFFCFB
          F9FFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFFCFBFAFFF6F5F4FF979696FF9797
          97FF545453FF7C7C7CFFF6F5F4FFFCFCFAFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF6F3F1FFF6F4F1FFF6F4F2FFF7F5F3FFF8F6F3FFFCFBF9FFFCFB
          F9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFE3E3
          E1FFD3D3D3FF2D2D2DFF474746FFCCCBC9FF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF4F1EFFFF4F2EFFFF5F3F0FFF6F3F1FFF6F5F1FFF8F7F4FFFBFA
          F7FFFBFAF7FFFBFAF7FFFBFAF7FFFBFAF7FFFBFAF7FFFBFAF7FFFBFAF7FFDBDB
          D9FF8B8B8BFF353535FF2D2D2DFF807F7FFF0000002800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF2F0ECFFF3F0ECFFF3F1EDFFF4F2EFFFF4F3EFFFF5F4F0FFF8F7
          F4FFFAF9F6FFFAF9F6FFFAF9F6FFFAF9F6FFFAF9F6FFFBF9F6FFFBF9F6FFFBF9
          F6FFD9D7D5FF979797FF828282FF1A1A1AFF000000B900000006000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FAFAFAFFF0EEEAFFF1EEEAFFF3F0EBFFF3F1ECFFF3F1ECFFF4F2EDFFF5F3
          EFFFFAF8F4FFFAF8F4FFFAF8F4FFFAF8F4FFFAF8F5FFFAF8F5FFFAF8F5FFFAF8
          F5FFFAF8F5FFB7B6B4FF969696FF434343FF000000FF000000AB000000060000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFAFAFFF0EDE8FFF0EDE9FFF1EEEAFFF1EFEAFFF2EFEAFFF2F0EBFFF3F0
          ECFFF5F3EEFFF9F7F3FFF9F7F3FFF9F7F3FFF9F7F3FFF9F7F3FFF9F7F3FFF9F7
          F3FFF9F7F3FFF9F7F3FFCFCECBFF909090FF464646FF000000FF000000D50000
          0014000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFAFAFFEEEBE6FFEEECE7FFEFEDE8FFEFEDE8FFF0EDE9FFF1EEEAFFF1EF
          EAFFF2F0EBFFF6F4EFFFF8F6F2FFF8F6F2FFF9F6F2FFF9F6F2FFF9F6F2FFF9F6
          F2FFF9F6F2FFF9F6F2FFF9F6F2FFCAC8C4FF7F7F7FF2434343FFAEAEAEFF1818
          18DD2D2D2DB20707071B00000000000000000000000000000000000000000F0F
          0F30FBFBFAFFEDE9E4FFEEEAE5FFEEEBE6FFEFEBE6FFEFECE7FFF0ECE8FFF0ED
          E8FFF1EDE9FFF1EEEAFFF7F4F0FFF8F5F1FFF8F5F1FFF8F5F1FFF8F5F1FFF8F6
          F1FFF8F6F1FFF8F6F1FFF8F6F1FFF8F6F1FF0707075CB8B8B8FF808080FF0000
          00FF111111D3353535D508080821000000000000000000000000000000000F0F
          0F30FBFBFAFFEBE8E2FFECE9E3FFECE9E3FFEDE9E4FFEDEAE5FFEEEBE6FFEFEC
          E6FFEFECE7FFF0EDE8FFF1EFE9FFF6F4EFFFF7F5F0FFF7F5F0FFF7F5F0FFF7F5
          F0FFF7F5F0FFF8F5F0FFF8F5F0FFF8F5F0FF000000230E0E0E811C1C1CFF8B8B
          8BFF000000FF1C1C1CC3383838E10B0B0B2A0000000000000000000000001212
          1233FCFBFBFFEBE7E0FFEBE8E1FFECE8E1FFECE9E2FFEDE9E3FFEDEAE4FFEEEA
          E4FFEFEBE5FFEFECE6FFEFECE6FFF1EEE8FFF7F4EFFFF7F4EFFFF7F4EFFFF7F4
          EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFF00000023000000000D0D0D7A1E1E
          1EFF878787FF000000FF272727B12E2E2EB70000000000000000000000001E1E
          1E3DFCFCFBFFE9E6DFFFEAE6DFFFEAE6DFFFEBE7E0FFEBE8E1FFECE8E1FFECE9
          E2FFEDE9E4FFEDEAE4FFEEEAE4FFEEEBE5FFF0EDE8FFF6F3EDFFF6F3EEFFF6F3
          EEFFF6F3EEFFF6F3EEFFF7F3EEFFF7F3EEFF0000002300000000000000000B0B
          0B6B1E1E1EFE797979FF000000FE3A3A3AEE0000000000000000000000001E1E
          1E3DFCFCFBFFE9E4DDFFE9E5DEFFEAE5DEFFEAE6DFFFEAE6DFFFEBE6E0FFEBE7
          E1FFECE8E2FFECE8E2FFEDE8E3FFEEEAE4FFEEEBE4FFEFECE5FFF5F2ECFFF6F3
          EDFFF6F3EDFFF6F3EDFFF6F3EDFFF6F3EDFF0000002300000000000000000000
          00000808084E232323FB6A6A6AFF121212FE0000002400000000000000001E1E
          1E3DFDFDFBFFE7E3DBFFE8E4DDFFE8E4DDFFE8E5DEFFE9E5DEFFE9E6DFFFEAE6
          DFFFEAE7E0FFEBE7E0FFEBE8E1FFECE8E2FFECE9E2FFEDE9E3FFEEEBE5FFF4F1
          EAFFF5F2ECFFF6F2ECFFF6F2ECFFF6F2ECFF0000002300000000000000000000
          000000000000050505312A2A2AF58B8B8BFF0F0F0F9E00000000000000001E1E
          1E3DFDFDFBFFE7E2DBFFE7E3DBFFE8E3DCFFE8E3DCFFE8E4DDFFE9E4DDFFE9E5
          DEFFEAE5DEFFEAE5DFFFEAE6DFFFEBE7E0FFEBE7E0FFECE8E1FFEDE8E2FFEDE9
          E2FFF3EFE9FFF5F1EBFFF5F1EBFFF5F2EBFF0000002300000000000000000000
          0000000000000000000002020217313131A30606061200000000000000001E1E
          1E3DFEFEFBFFE5E2DAFFE6E2DAFFE6E2DAFFE7E3DBFFE8E3DBFFE8E3DCFFE8E4
          DCFFE9E4DCFFE9E5DDFFEAE5DEFFEAE6DEFFEBE6DFFFEBE7DFFFECE8E0FFECE8
          E0FFEDE8E1FFF0ECE5FFF5F1EAFFF5F1EAFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E3DFFFFFBFFE5E1D8FFE5E1D9FFE5E1D9FFE6E1D9FFE6E2DAFFE7E2DAFFE7E3
          DBFFE7E3DCFFE8E3DCFFE8E4DDFFE9E4DDFFE9E5DEFFE9E5DEFFEAE6DFFFEBE6
          DFFFEBE7E0FFECE7E1FFEDE9E2FFF2EFE8FF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1D3DFFFFFCFFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFF4F0E9FF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0009000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000000900000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000800000017000000230000002A0000002E0000002E0000
          002E000000290000002300000016000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000B00000024131210503A362F955A554BCE6D6559EB7A7264FF7C7365FF7D75
          66FF726A5CE960594ECB3F3A339311100E49000000230000000A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000201B19
          1762575149D3797266FF8D8579FFB8B1A4FFD2CABDFFE5DDCFFFE6DED1FFE8DF
          D2FFD7CEC0FFC2B9ABFF999081FF877E6FFF635B50CE1C1A175A0000001E0000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008070706374B453EC27770
          66FFA7A196FFDDD6CBFFDCD5CAFFD2CBC1FFC5BEB3FFC3BCB0FFB9B2A5FFC5BD
          B0FFC6BEB1FFD7CFC2FFE9E0D2FFEDE4D6FFB6AD9EFF8B8273FF564F45B80606
          0530000000060000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000811100E4E5B564EE18D877DFFD8D1
          C7FFD4CEC4FFC6C0B7FFBCB7ADFFBCB6ABFFC3BDB1FFC1BAADFFA09A90FFBDB6
          A8FFBBB4A6FFB2AB9DFFB3AC9EFFC7BFB2FFE3DBCEFFEDE4D6FFA39A8BFF6C65
          58DA12110F480000000600000000000000000000000000000000000000000000
          00000000000000000000000000041413124B78746DF39B958CFFD5D0C6FFC8C3
          BAFFB8B3AAFFC8C3BAFFF6F1E6FFF1EADFFFEAE3D6FFE7E0D3FF9E988EFFE5DD
          D0FFE4DDCFFFE5DDD0FFE2DBCDFFB1AA9DFFB0A89BFFD0C7BAFFEBE3D5FFAFA6
          98FF7C7366EE11100D4200000002000000000000000000000000000000000000
          000000000000000000000A0A0932706D67E1B4B0A8FFE6E1DAFFCAC5BDFFCCC8
          BFFFEBE6DDFFBAB4AAFFF2EBE0FFEBE4D8FFE7E0D3FFE5DED0FF9B958BFFE4DC
          CFFFE6DED1FFE8E0D3FFE8E0D3FFA59E94FFCCC5B8FFBAB2A5FFC8C0B3FFE8DF
          D2FFB1A99BFF6D665ADA06050528000000000000000000000000000000000000
          0000000000000000000B5A5854BFABA7A1FFEAE6DFFFCAC6BEFFC1BDB8FFF7F2
          EBFFFFFFF7FFE2DCD2FFEFE8DCFFE9E2D5FFE6DED1FFE4DDCFFFE3DCCEFFE6DE
          D1FFE9E1D4FFEBE4D6FFEDE5D7FFD6CEC2FFF0E8DAFFEFE7DAFFBDB5A7FFC7C0
          B2FFE7DED1FFA59D8FFF504A42B3000000090000000000000000000000000000
          00000000000020201F5BA6A39FFFF0EDE8FFD4D0C9FFD2CDC6FFFBF7F0FFA7A7
          A7FFBDBAB3FFF6F0E5FFEDE6DAFFE7E0D3FFE4DDCFFFE3DCCEFFE5DDD0FFE8E0
          D3FFEBE4D6FFF2EADCFFF7EFE2FFFAF2E5FFF9F2E5FFF6EEE1FFF1E9DCFFBEB6
          A8FFCEC7BAFFE6DED1FF9A9184FF1715134C0000000000000000000000000000
          00000000000A757371D5CCCAC6FFE6E3DFFFBFBAB2FFFDF8F0FFFFFFFFFF9A98
          ACFF969696FF7E7B76FFEAE3D7FFE6DFD2FFE4DCCFFFE3DCCEFFE6DFD1FFEAE2
          D5FFF1E9DBFFF9F1E4FFFFF8EBFFFFFCEFFFFFFBEEFFFEF6E9FFF7EFE2FFD1CA
          BDFFB4ADA0FFD9D2C6FFB6AEA2FF5D584EC60000000700000000000000000000
          00001D1D1D49B2B1B0FFF6F5F3FFD1CEC9FFDDD8D1FFCDC7BEFFC4BFCEFF8785
          DAFF7676ADFF909090FF4D4B47FFDBD4C7FFE3DCCEFFE4DCCFFFE7DFD2FFEBE3
          D6FFF5EDE0FFFFF7EAFFFFFFF3FFFFFFF9FFFFFFF7FFFFFDF0FFDED7CBFFA69F
          95FFB8B0A4FFC6BEB2FFE1D9CDFF999285FF12100F3A00000000000000000000
          00004F4F4F98C3C2C1FFF3F2F0FFCDC9C2FFFFFFFFFFFFFFFFFF8985C2FF9695
          FFFF908FFFFF6A698FFF8A8A8AFF2E2C2AFFCBC5B8FFE4DCCFFFE8E0D2FFECE5
          D7FFF7EFE1FFFFFAEDFFFFFFF7FFFFFFFEFFFFFFFCFFFFFFF3FFFDF5E8FFF2EB
          DEFFE9E1D3FFBCB5A7FFDAD3C8FFA69F93FF39352F8900000000000000000000
          0000868686D2E2E2E2FFE0DFDCFFDCD8D1FFFFFFFFFFDAD7EEFF9492E8FF9C9A
          FFFF9593FFFF8988FDFF5F5E74FF868686FF1F1E1CFFCCC5B9FFE7DFD2FFEBE3
          D6FFF5EDE0FFFFF7EAFFFFFFF3FFFFFFF9FFFFFFF7FFFFFDF0FFFCF4E7FFF3EB
          DEFFEFE7DAFFBAB2A5FFC9C2B6FFBAB3A8FF605B53C300000000000000000000
          0002B1B1B1F5F6F6F6FFD3D1CDFFEEEAE3FFFFFFFFFFB6B2DBFFA09DFFFFA09D
          FFFF9796FFFF9190FFFF7F7DEAFF5A5A6EFF838383FF1D1C1BFFCEC7BBFFEAE2
          D5FFF1E9DBFFF9F1E4FFFFF8EBFFFFFCEFFFFFFBEEFFFEF6E9FFF7EFE2FFF1E9
          DCFFEEE6D8FFBAB2A5FFBCB6A9FFCBC5BAFF827C72E900000000000000000706
          060FC2C1BEFFFFFFFFFFCDCAC6FFF9F8F8FFFFFFFFFFA19ED1FFA8A6FFFFA4A2
          FFFF9D9BFFFF9594FFFF908DFFFF7D7CE6FF555463FF696969FF0B0A0AFFB6AF
          A6FFEBE4D6FFF2EADCFFF7EFE2FFFAF2E5FFF9F2E5FFF6EEE1FFF1E9DCFFEFE7
          D9FFEBE4D6FFC4BCAFFFB6AFA3FFD4CEC4FF969086FD00000001000000000A0A
          0914C3BDB5FFFCF7EFFFC7C4BFFFC9C3B9FFCAC4BAFFC5BFB5FFAFADFFFFA8A7
          FFFFA2A1FFFF9C9AFFFF9695FFFF918FFCFF7774C4FF585859FF333333FF6B68
          62FFE9E1D4FFEBE4D6FFEEE6D8FFF0E8DBFFF0E8DAFFEFE7DAFFEEE6D8FF9993
          89FF999389FF9B958BFFB0A99DFFD6D0C6FF9B958BFF01010103000000000706
          060CC2BBB1FFFBF5ECFFC7C3BCFFF9F9F8FFFFFFFFFFAAA7D9FFB3B2FFFFAEAD
          FFFFAAA7FFFFA3A1FFFF9F9DFFFF9B98FCFF9895EFFF827EA1FFA29F9CFFD0C9
          BEFFE6DED1FFE8E0D3FFEAE2D5FFEBE3D6FFEBE4D6FFEBE3D6FFE9E1D4FFE8E0
          D3FFE8E0D3FFC3BBAEFFB5AEA3FFE2DDD5FF989289FA00000000000000000000
          0000B3ADA2EFF0E9DEFFC8C3BBFFF0EFE8FFFFFFFFFFC9C7EDFFB3B1FFFFB5B3
          FFFFB0AEFFFFABAAFFFFA8A5FFFFA6A3FFFFA5A3F7FF9E9AD3FFBAB4C0FFE5DD
          D0FFE4DDCFFFE5DDD0FFE6DFD1FFE7DFD2FFE8E0D2FFDFD8CFFFBDB7C3FFE7DF
          D2FFE8E1D3FFB6AEA1FFB9B4AAFFD9D4CDFF97928BE200000000000000000000
          00008D867DC6DCD5C8FFDAD4CAFFDBD7D1FFFFFFFFFFF6F5FFFFB3B0F8FFBBB9
          FFFFB7B5FFFFB4B2FFFFB1AFFFFFAFACFFFFAFADFAFFB2AEF1FFA6A1CAFFB9B3
          C0FFD5CFCAFFE1DACFFFE4DDD0FFDCD4CDFFCDC6C8FFBEB7C7FFC0BACAFFDCD6
          CFFFE9E2D4FFAFA89AFFD2CDC5FFC8C3BDFF76736EB700000000000000000000
          00005C575088C1B8AAFFF5EEE1FFBCB7B1FFFFFFFFFFFFFFFFFFB3B0E3FFC0BE
          FFFFBFBCFFFFBDBAFFFFBAB7FFFFB8B5FFFFB7B4FEFFB9B6F8FFBBB7F1FFB7B2
          DCFFB1ACC8FFB0ABC0FFB1ABBEFFB9B4C7FFC2BCD2FFCBC6DDFFBBB5C3FFE7E0
          D3FFE3DBCEFFA0998DFFEEEBE6FFB5B2ACFF4A48467800000000000000000000
          00001B19172ABFB6A7FFF8EFE1FFBCB7AEFFDFDAD3FFDED9D1FFE8E6F5FFB9B7
          F4FFC5C3FFFFC3C1FFFFC1BFFFFFC1BEFFFFC0BDFFFFC0BCFEFFC1BDF7FFC3BF
          F2FFC6C1EEFFC7C3EAFFCAC5E9FFCBC6E7FFCEC9E7FFBFB9CEFFC7C1BEFFB2AC
          A1FFAFA99CFFB1ACA4FFEFEDE9FFB6B3AEFC1212111E00000000000000000000
          000000000000918A7EC6D2C8B9FFEEE5D7FFB0ACA5FFFEFEFEFFFFFFFFFFECEC
          FFFFBFBDFCFFCAC9FFFFC9C7FFFFC8C6FFFFC8C5FFFFC8C5FFFFC8C5FFFFC9C5
          FAFFCAC6F5FFCCC7F2FFCDC8EFFFCFCAEEFFC3BDD6FFD2CCD1FFF1EADEFFD1CB
          BFFF9A9389FFEEECE9FFC8C6C3FF82807EB70000000000000000000000000000
          0000000000002E2B2742BEB4A4FFF7EDDEFFCAC3B8FFCBC8C1FFFFFFFFFFFFFF
          FFFFEFEEFFFFC3C0F7FFCDCAFFFFD0CDFFFFCFCCFFFFCFCDFFFFD0CDFFFFD1CE
          FFFFD1CEFFFFD2CEFBFFD0CBF3FFC3BFD9FFD8D2D9FFF8F2E6FFFBF4E9FFA7A1
          96FFCBC8C3FFF6F5F3FFBCBBB9FC222222330000000000000000000000000000
          00000000000000000000797268A3BEB4A4FFF7EDDDFFB8B3AAFFD0CCC6FFFFFF
          FFFFFFFFFFFFEFEDF9FFC5C2EBFFC8C5F8FFCDCBFFFFD2CFFFFFD5D2FFFFD3D0
          FFFFD1CEFAFFCAC6E9FFC5C0D9FFD7D2D3FFFFFEF4FFFFFCF3FFB0AAA1FFB9B6
          B0FFFCFCFBFFC2C1C1FF6E6E6D94000000000000000000000000000000000000
          000000000000000000000A09080FA39A8DDCC4BAAAFFF4EADAFFB9B4A9FFBFBB
          B5FFFDFDF8FFDDD8CFFFFFFFFFFFFFFFFFFFECE9FFFFDEDBF5FFC1BBB1FFDCD9
          F0FFE6E2F4FFFBF7FBFFFFFFFEFFC7C1B7FFE4DFD5FFA9A49BFFBCB9B3FFFBFB
          FBFFC5C5C6FFA1A1A1D306060609000000000000000000000000000000000000
          00000000000000000000000000001A181624ACA395E7C1B7A7FFF7EDDDFFCBC4
          B8FFA29E97FFCFCAC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C0B6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFAFFBCB7AFFF9A958CFFCFCAC2FFFCF7F0FFC6C6
          C5FFAFAFAFE11414141B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000001614131E968E81C9BEB4A4FFF4EA
          DAFFEBE2D3FFBBB5ABFF9F9C94FFB6B2ABFFC6C2BBFFDCD8D1FFC2BCB2FFD8D4
          CCFFBEBAB2FFACA7A0FF9B968EFFBBB6ACFFF1EBE0FFF6F0E6FFC2BDB3FF938E
          88C00F0F0E150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000006060509726C6299BCB2
          A2FCC6BCACFFF7EDDDFFF7EDDDFFDCD4C6FFCDC6BAFFBAB4AAFFBAB4A9FFBAB3
          A9FFCEC7BCFFDED7CBFFF9F0E3FFF9F1E4FFC7BFB3FFBCB6AAF96D6A63900404
          0406000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001F1D
          1B2A7F796EABBEB4A4FFBEB4A4FFD3C9B9FFDFD5C5FFE9DFCFFFF5EBDBFFE8DE
          CFFFDFD6C6FFD3C9BAFFBFB6A7FFBFB7A9FF7A746CA21B1A1824000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000100F0E1548443E60847D72B1989083CCAAA193E4BEB4A4FFA89F
          91E1989083CC827B70AE43403A5A0D0D0C120000000000000000000000000000
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
          0000000000120000001200000012000000120000001200000012000000120000
          0012000000120000001200000012000000120000001200000012000000120000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A0
          9AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000999791FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF7D7B
          76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF999791FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007D7B76FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF7D7B76FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2
          ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFFEFDFCFF0000003D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFFDFCFBFFBAB6B1FFFDFCFBFFBBB7B2FFFDFC
          FBFFBCB8B3FFDDD6FDFFBDB9B4FFDDD6FDFFB6B2ADFFFDFCFBFF0000004C0000
          0012000000120000001200000012000000120000001200000012000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFB7B3AEFFB8B4AFFFB8B4AFFFB9B5B0FFBAB6
          B1FFBBB7B2FFBBB7B2FFBCB8B3FFBCB8B3FFB6B2ADFFFCFBF9FF7B7975FFA3A0
          9AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFFAF8F5FFB6B2ADFFFAF8F5FFB7B3AEFFFAF8
          F5FFB9B5B0FFDDD6FDFFBAB6B1FFDDD6FDFFB6B2ADFFFAF8F5FF5F5D59FF7D7B
          76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF999791FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB7B3
          AEFFB7B3AEFFB8B4AFFFB8B4AFFFB9B5B0FFB6B2ADFFF8F6F2FFBFBFBFFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF7D7B76FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFF7F4EFFFB6B2ADFFF7F4EFFFB6B2ADFFF7F4
          EFFFB6B2ADFFDDD6FDFFB7B3AEFFDDD6FDFFB6B2ADFFF7F4EFFF888581FFB6B2
          ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFFEFDFCFF0000003D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000003BFFFFFFFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2
          ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB9B5B0FFF6F2EDFFBCBBBAFFBCB8
          B3FFDDD6FDFFBDB9B4FFDDD6FDFFB6B2ADFFFDFCFBFF0000004C000000120000
          0012000000120000001200000012000000120000001200000000000000000000
          00000000003BFFFFFFFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1
          EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFF8A8783FFBBB7
          B2FFBBB7B2FFBCB8B3FFBCB8B3FFB6B2ADFFFCFBF9FF7B7975FFA3A09AFFA3A0
          9AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFFA3A09AFF00000000000000000000
          00000000003BFFFFFDFFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFF4F0E9FFB9B8B6FFB9B5
          B0FFDDD6FDFFBAB6B1FFDDD6FDFFB6B2ADFFFAF8F5FF5F5D59FF7D7B76FF7D7B
          76FF7D7B76FF7D7B76FF7D7B76FF7D7B76FF999791FF00000000000000000000
          00000000000F0000003B0000003B0000003B0000003B0000003B0000003B0000
          0068C4C4C4FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FFA7A49FFFB7B3
          AEFFB8B4AFFFB8B4AFFFB9B5B0FFB6B2ADFFF8F6F2FFBFBFBFFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF7D7B76FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          003BFFFFFFFFB6B2ADFFF7F4EFFFB6B2ADFFF7F4EFFFB6B2ADFFF7F4EFFFB6B2
          ADFFDDD6FDFFB7B3AEFFDDD6FDFFB6B2ADFFF7F4EFFF888581FFB6B2ADFFB6B2
          ADFFB6B2ADFFB6B2ADFFB6B2ADFFFEFDFCFF0000003D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          003BFFFFFFFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2
          ADFFB6B2ADFFB6B2ADFFB6B2ADFFB9B5B0FFF6F2EDFFBCBBBAFFBCB8B3FFDDD6
          FDFFBDB9B4FFDDD6FDFFB6B2ADFFFDFCFBFF0000003E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          003BFFFFFFFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1
          EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFF8A8783FFBBB7B2FFBBB7
          B2FFBCB8B3FFBCB8B3FFB6B2ADFFFCFBF9FF0000003E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          003BFFFFFDFFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFF4F0E9FFB9B8B6FFB9B5B0FFDDD6
          FDFFBAB6B1FFDDD6FDFFB6B2ADFFFAF8F5FF0000003E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000F0000003B0000003B0000003B0000003B0000003B0000003B00000068C4C4
          C4FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FFA7A49FFFB7B3AEFFB8B4
          AFFFB8B4AFFFB9B5B0FFB6B2ADFFF8F6F2FF0000003F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000003BFFFF
          FFFFB6B2ADFFF7F4EFFFB6B2ADFFF7F4EFFFB6B2ADFFF7F4EFFFB6B2ADFFDDD6
          FDFFB7B3AEFFDDD6FDFFB6B2ADFFF7F4EFFF0000004100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000003BFFFF
          FFFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2ADFFB6B2
          ADFFB6B2ADFFB6B2ADFFB9B5B0FFF6F2EDFF0000004200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000003BFFFF
          FFFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1
          EAFFF5F1EAFFF5F1EAFFF5F1EAFFF5F1EAFF0000004200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000003BFFFF
          FDFFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9
          F2FFFDF9F2FFFDF9F2FFFDF9F2FFF4F0E9FF0000004200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000F0000
          003B0000003B0000003B0000003B0000003B0000003B0000003B0000003B0000
          003B0000003B0000003B0000003B0000003B0000001600000000000000000000
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
          0009000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023000000460000004500000045000000450000004500000045000000450000
          0045000000450000004500000045000000450000004500000045000000450000
          0045000000450000004500000045000000450000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FEFEFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FEFEFDFFFEFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FDFDFDFFFDFDFBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FDFDFDFFFCFCFAFFFDFDFCFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
          FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
          FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FDFDFCFFFBFAF9FFFCFBF9FFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFDFFFEFDFDFFFEFD
          FDFFFEFDFDFFFCFDFDFFFBFDFDFFFAFDFDFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0023FCFCFBFFFAF9F8FFFAFAF8FFFBFBFAFFFDFDFCFFFDFDFCFFFDFDFCFFFDFD
          FCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFCFDFCFFF8FD
          FCFFF5FDFCFFF3FDFCFFF2FDFCFFF1FDFCFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C2DFBFBFBFFF9F7F6FFFAF8F7FFFAF9F7FFFCFBFAFFFDFCFBFFFDFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFFDFCFBFFF8FCFBFFF4FCFBFFF0FC
          FBFFEDFCFBFFEAFCFBFFE9FCFBFFE8FDFBFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF8F7F4FFF9F7F5FFF9F8F5FFFBF9F7FFFDFCFAFFFDFCFAFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFCFCFAFFF6FCFAFFF1FCFAFFECFCFBFFE8FC
          FBFFE5FCFBFFE2FCFBFFE1FCFBFFE0FCFBFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFBFFF6F5F3FFF7F6F3FFF7F6F4FFF8F7F5FFFBF9F7FFFCFBF9FFFCFB
          F9FFFCFBFAFFFCFBFAFFFBFBFAFFF5FBFAFFEFFBFAFFE9FBFAFFE4FBFAFFE0FB
          FBFFDCFCFBFFD9FCFBFFD8FCFBFFD7FCFBFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF6F3F1FFF6F4F1FFF6F4F2FFF7F5F3FFF8F6F3FFFCFBF9FFFCFB
          F9FFFCFBF9FFFCFBF9FFF5FBF9FFEEFBF9FFE8FBF9FFE3FBFAFFDDFBFAFFD9FC
          FAFFD5FCFAFFD3FCFAFFD2FCFAFFD1FCFAFF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF4F1EFFFF4F2EFFFF5F3F0FFF6F3F1FFF6F5F1FFF8F7F4FFFBFA
          F7FFFBFAF7FFF6FAF7FFEEFAF7FFE8FAF8FFE1FBF8FFDCFBF8FFD7FBF8FFD2FB
          F9FFCFFBF9FFCCFBF9FFCAFBF9FFC9FBF9FF0000002300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFF2F0ECFFF3F0ECFFF3F1EDFFF4F2EFFFF4F3EFFFF5F4F0FFF8F7
          F4FFF8F9F6FFF0F9F6FFE8F9F7FFE1FAF7FFDCFAF7FFD6FAF7FFD1FAF8FFCDFA
          F8FFC9FAF8FFC6FAF8FFC3FAF8FFBFF8F8FF0004072900020404000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FAFAFAFFF0EEEAFFF1EEEAFFF3F0EBFFF3F1ECFFF3F1ECFFF4F2EDFFF5F3
          EFFFF4F8F4FFEBF8F5FFE4F9F5FFDDF9F5FFD7F9F6FFD0F9F7FFCBF9F7FFC6F9
          F7FFC2F9F7FFBFF9F7FFBDF9F7FFAFF0F6FF002C3A5700091012000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFAFAFFF0EDE8FFF0EDE9FFF1EEEAFFF1EFEAFFF2EFEAFFF2F0EBFFF1F0
          ECFFEBF3EFFFE6F8F4FFDFF8F4FFD8F8F5FFD1F8F5FFCBF8F5FFC5F8F5FFC0F9
          F6FFBCF9F6FFBAF9F6FFB8F9F7FF99E6F5FF006A859A0016262A000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFAFAFFEEEBE6FFEEECE7FFEFEDE8FFEFEDE8FFF0EDE9FFF1EEEAFFECEF
          EAFFE5F1ECFFE1F5F0FFDBF7F4FFD3F7F4FFCDF7F4FFC7F8F5FFC1F8F5FFBCF8
          F5FFB9F8F5FFB6F8F6FFB3F8F6FF83D9F2FF0097BBC900243F45000000000000
          0000000000000000000000000000000000000000000000000000000000000F0F
          0F30FBFBFAFFEDE9E4FFEEEAE5FFEEEBE6FFEFEBE6FFEFECE7FFF0ECE8FFE9ED
          E9FFE2EEEAFFD9F0ECFFD7F5F2FFD0F6F3FFC9F7F4FFC3F7F4FFBDF7F4FFB6F6
          F5FFAEF4F4FFAFF6F5FFAFF8F5FF6FCDF1FF00B5DDE50030555D000000000002
          0404000407080002040400000000000000000000000000000000000000000F0F
          0F30FBFBFAFFEBE8E2FFECE9E3FFECE9E3FFEDE9E4FFEDEAE5FFEEEBE6FFE7ED
          E7FFDDEDE9FFD7EFEAFFCFF1ECFFCCF6F2FFC6F7F3FFC0F7F3FFBAF7F4FFAEF3
          F3FF83E9F4FF90E4F2FF9FEFF4FF5CC3F0FF00C9EFF4003E6D76000A12140017
          282C00303E410004070800000000000000000000000000000000000000001212
          1233FCFBFBFFEBE7E0FFEBE8E1FFECE8E1FFECE9E2FFEDE9E3FFECEAE4FFE4EB
          E5FFDCECE7FFD4EEE9FFCBEFEAFFC6F1ECFFC4F6F2FFBDF6F3FFB7F7F3FFB0F5
          F3FF90E3F2FF35DBF7FF65CDF0FF3DAFEFFF00D7FAFC005697A3003B6169008D
          ABAF0017282C0002040400000000000000000000000000000000000000001E1E
          1E3DFCFCFBFFE9E6DFFFEAE6DFFFEAE6DFFFEBE7E0FFEBE8E1FFEAE8E1FFE1EA
          E3FFD9EBE6FFD1ECE7FFCBEDE8FFC3EEEAFFBEF1EDFFBCF6F1FFB6F6F2FFB1F6
          F3FF9FEDF3FF65CDEFFF11D9FBFF0E9AF5FF00DFFFFF0086E2EB00C1E3E6003B
          6169000A12140000000000000000000000000000000000000000000000001E1E
          1E3DFCFCFBFFE9E4DDFFE9E5DEFFEAE5DEFFEAE6DFFFEAE6DFFFE9E6E0FFE0E8
          E2FFD9EAE4FFD0EAE5FFCAEBE7FFBAE8E9FFA4E0EAFF95DCEAFF8AD9EFFF6FCB
          EFFF59BFEEFF40B0EFFF0F9CF5FF00D0FFFF00EFFFFF00D2FFFF0086E0E90054
          95A00041727C0031575F0020393E00192C300012202300060B0C000000001E1E
          1E3DFDFDFBFFE7E3DBFFE8E4DDFFE8E4DDFFE8E5DEFFE9E5DEFFE8E6DFFFE0E7
          E0FFD8E9E2FFD0EAE4FFC8EBE5FFB2E3E7FF5FDCF0FF4CD6F1FF3ECFF2FF13D4
          FAFF06DAFDFF04D8FDFF00D7FFFF00F6FFFF00F6FFFF00F6FFFF00D7FFFF00D2
          F7F900D2F5F700B9DFE3007A9FA50073909500647B7F000B1416000000001E1E
          1E3DFDFDFBFFE7E2DBFFE7E3DBFFE8E3DCFFE8E3DCFFE8E4DDFFE9E4DDFFE1E6
          DFFFD9E7E0FFD0E8E3FFC9E9E4FFB9E6E5FFA3DDE6FF94D9E8FF87D3E9FF6DC7
          EAFF59BDEDFF40AFEEFF0F9CF5FF00D0FFFF00EFFFFF00D0FFFF0085DEE70054
          95A00041727C0031575F0020393E00192C300012202300060B0C000000001E1E
          1E3DFEFEFBFFE5E2DAFFE6E2DAFFE6E2DAFFE7E3DBFFE8E3DBFFE8E3DCFFE2E5
          DDFFDAE6DEFFD2E7E0FFCBE8E2FFC4EAE3FFBFEAE5FFB8ECE6FFB4EDE7FFAFED
          E8FF9FE6E9FF67CAECFF13D9FAFF0F9AF5FF00DFFFFF0084E0E900BDDEE20039
          5D65000A12140000000000000000000000000000000000000000000000001E1E
          1E3DFFFFFBFFE5E1D8FFE5E1D9FFE5E1D9FFE6E1D9FFE6E2DAFFE7E2DAFFE2E4
          DCFFDAE4DEFFD4E5DFFFCCE7E1FFC6E8E2FFC0E9E4FFB9EAE5FFB6EBE6FFAFEA
          E7FF91DCE8FF38D7F3FF67CAEAFF3EADEEFF00D7FAFC005597A200395D650089
          A6AA0016262A0002040400000000000000000000000000000000000000001E1E
          1D3DFFFFFCFFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFDF9F2FFFBF9
          F2FFF3F9F3FFEAF9F3FFE2FAF3FFDBFAF4FFD4FAF4FFCEFAF4FFC8FAF5FFBDF6
          F4FF8EEBF5FF9DE7F3FFADF2F4FF60C0EDFF00C9EFF4003E6D76000A12140016
          262A00303E410004070800000000000000000000000000000000000000000000
          0009000000230000002300000023000000230000002300000023000000230000
          0023000000230000002300000023000000230000002300000023000000230002
          04270004072900020427000000230030567400B6DDE20030555D000000000002
          0404000407080002040400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000243F450096BABF00243F45000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000016262A006A858A0016262A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000091012002D3B3E00091012000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000204040004070800020404000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000010000000260000
          0033000000330000003300000033000000330000003300000033000000330000
          0033000000330000003300000033000000330000003700000033000000320000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101003013110475262004D0261F
          02DE302700FF302700FF302700FF302700FF302700FF302700FF302700FF3027
          00FF302700FF302700FF302700FF261F02DE302700FF302700FF302700FB0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000312903EB494011FF6E6536FF6860
          33FFC2B98AFFC2B98AFFC2B98AFFC2B98AFFC2B98AFFC2B98AFFC2B98AFFC2B9
          8AFFC2B98AFFC2B98AFFC2B98AFF6A6134FF968D5EFFB5AC7DFF6F663CEB0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000069623BE5B3AB7FFF9B9367FF928A
          5FFFC9C093FFC9C093FFC9C093FFC9C093FFC9C093FFC9C093FFC9C093FFC9C0
          93FFC9C093FFC9C093FFC9C093FF938B61FF9B9367FFA9A175FF615C38D70000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000605A3BD0A79F76FF9F976EFF9B94
          6CFFCCC499FFCCC499FFCCC499FFCCC499FFCCC499FFCCC499FFCCC499FFCCC4
          99FFCCC499FFCCC499FFCCC499FF9E976EFF9F976EFF9F976EFF575134C20000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000544F36BB9E9771FFA39C76FFA59F
          79FFCFC8A0FFCFC8A0FFCFC8A0FFCFC8A0FFCCC59DFFCCC59DFFCFC8A0FFCFC8
          A0FFCFC8A0FFCFC8A0FFCFC8A0FFA59F79FFA39C76FF968F69FF4C4730AF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000464330A0928B69FFA7A07EFFAAA3
          81FFD3CCA7FFD3CCA7FFD3CCA7FFD3CCA7FF989271FF948E6DFFD3CCA7FFD3CC
          A7FFD3CCA7FFD3CCA7FFD3CCA7FFAAA381FFA7A07EFF8D8664FF413D2B970000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003B382A898E886AFFABA587FFB5AF
          8FFFD6D0AEFFD6D0AEFFD6D0AEFFAEA888FF979174FF9A9477FFA6A080FFD6D0
          AEFFD6D0AEFFD6D0AEFFD6D0AEFFB5AF8FFFABA587FF8E886AFF3533267F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002D2C226B928D72FFAEA98EFFD4CE
          AFFFDAD4B5FFDAD4B5FFC6C0A2FF8E896DFFC0BDAAFFBCBBB0FF918C70FFBAB4
          96FFDAD4B5FFDAD4B5FFDAD4B5FFD4CEAFFFAEA98EFF928D72FF2A281F660000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000201F194D96927AFFADA88FFFDDD8
          BCFFDDD8BCFFD5D0B4FF8D886DFFB8B398FFB1B3B6FF979DB1FFC5C0A5FF8D88
          6DFFCBC6AAFFDDD8BCFFDDD8BCFFDDD8BCFFAEA991FF96927AFF201F194D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001313102E9A9681FFB8B39BFFE1DC
          C3FFE0DBC2FF98937AFFA9A48BFFE0DBC2FF9299B2FF7883AFFFD5D2BFFFB5B0
          97FF8E8970FFD8D3BAFFE1DCC3FFE1DCC3FFBAB59DFF9A9681FF1313102E0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007070610928F7DFACECAB4FFE4E0
          CAFFDEDAC4FFC3BFA8FFBBB69FFFCDC9B5FF7A85B1FF7B87B5FFA7ABB7FFCAC5
          AEFFB9B49EFFD0CCB5FFE4E0CAFFE4E0CAFFD2CEB8FF918E7DFA090907140000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007E7B6CE6C9C5B2FFDDD9
          C6FFC4BFABFFB6B19CFFB2AD98FFB8B8B6FF7B87B5FF9FABD9FF7F89B1FFD2CD
          B9FFB0AB96FFB6B29DFFD5D1BEFFE7E3D0FFCBC7B4FF807C6EE9000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000424039719E9A89FF9793
          81FF94907CFFA39F8AFFD0CCB7FFA1A6B9FF838FBDFFA8B4E2FF7985B3FFB9BB
          BFFFCBC7B2FF999580FFA19D8AFF9E9A89FF9E9A89FF45433C74000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002726233B5553
          4C82868377D0B2AE9BFFB3AF9EFF626D9AFF5B6798FF5C689AFF5B6799FF646F
          99FFB1AE9DFFA7A492F777756ABA53524A802726233B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010100F195C6483E97884B7FF8894C7FF8894C8FF8692C6FF7783
          B7FF525B7FE20102030600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000020263E78818DBFFF939FD3FFA0ACDEFF9FABDDFF9DA9DCFF8C98
          CEFF7C88BCFF2026408100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010203626D99EA8E9ACEFFA0ACDDFFA6B2E1FF9EAADCFFA2AEDFFF939F
          D4FF838FC7FF5D6899F002030409000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000011131D368490BDFF939FD2FFB1BDE8FFA1ADDDFF8F9BD0FFA7B3E2FFA2AE
          DEFF8894CBFF7480B4FF11142142000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002227396698A4CEFFB9C5EDFFB9C5ECFF96A2D2FFB5C1EBFFA6B2E0FFAAB6
          E4FFA3AFE0FF838FC1FF1C22386F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002F3D4FB9A3AFD7FFB1BDE6FFA1ADD9FF98A4D1FFBDC9F0FF9AA6D5FF9DA9
          D9FF9BA7D8FF8A96C7FF2A384DBC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000324656E19AA7CDFF9FABD6FF9AA6D1FF9BA7D3FFC2CEF3FF919DCCFF8692
          C5FF828EC3FF7B88B7FF2F4055D4000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000364958E48796B3FFCAD6F8FFCCD8F9FFCAD6F8FFC6D2F5FFC0CCF1FFB8C4
          ECFFAEBAE6FF7080A3FF334458D7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000042666EF65E7889FFC0CFEDFFCFDBFBFFCCD8F9FFC8D4F6FFC3CFF3FFBBC7
          EEFFB1BDE8FF576A84FF3A5764E6000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000416469E575A2A4FF78A5A7FF759FA5FF7DA0ABFF89A5B8FF9EB4CEFFB0BF
          E3FFA3B3DAFF4A6A77FF3C5F67DE000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000111A1B39789FA2FE9CC6C8FF9FC9CBFF97C1C4FF8EB8BBFF84AFB2FF7EA9
          ACFF79A4A7FF608C8EFE121C1D3E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000233334717CA1A3FF98BDBFFFA2C8CBFFA5CCCEFFA1C9CCFF96BE
          C1FF79A3A5FF2134367200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000151D1E42455C5DB7729193F67B9D9FFF709295F6435D
          5FB7141E1F420000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000190000002000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0019000000380C0C0C910F0F0F9E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000190000
          00380C0C0C911B1B1BFF535353FF1313139E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000019000000380C0C
          0C911B1B1BFF616161FF353535FF282828FF3B3B3B9D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000019000000380C0C0C911B1B
          1BFF616161FF373737FF3D3D3DFF7C7C7CFF9A9A9AFF29292987000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000019000000380C0C0C911B1B1BFF6161
          61FF373737FF3D3D3DFF7E7E7EFFA0A0A0FF494949F31212123C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000019000000380C0C0C911B1B1BFF616161FF3737
          37FF3D3D3DFF7E7E7EFFA0A0A0FF494949F31212123C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000019000000380C0C0C911B1B1BFF616161FF373737FF3D3D
          3DFF7E7E7EFFA0A0A0FF494949F31212123C0000000000000000000000000000
          000000000000000000000000000000000000000000000000000E000000190000
          002000000026000000260000001D000000180000000A00000000000000000000
          000000000019000000380C0C0C911B1B1BFF616161FF373737FF3D3D3DFF7E7E
          7EFF9F9F9FFF494949F31212123C000000000000000000000000000000000000
          0000000000000000000000000000000000110000002A2C2A256A504B449E605A
          50B8665F50D6665F50D64F493EAF413C33961C1A165C000000260000000C0000
          00010000002B0C0C0C911B1B1BFF616161FF373737FF3D3D3DFF7E7E7EFF9F9F
          9FFF494949F31111113900000000000000000000000000000000000000000000
          00000000000000000003000000223C3934798F8678E6988C7AFF91846FFF9184
          6DFF8F826BFF8F836CFF8E836CFF8A816BFF887F6BFF6B6456D4221F1C630000
          001C00000006151515CD535353FF373737FF3D3D3DFF7E7E7EFF9F9F9FFF4949
          49F3111111390000000000000000000000000000000000000000000000000000
          0000000000040B0A0A3680796FC79A8F7BFF8E8069FF998C79FFBEB4A4FFD7CD
          BFFFEAE1D5FFE5DED0FFD8D1C4FFB4AD9DFF9B927FFF8F8770FF8B836FFF534E
          44B145433FFF53514CFF302F2EFF282828FF7E7E7EFF9F9F9FFF494949F31111
          1139000000000000000000000000000000000000000000000000000000000000
          0001100F0E379A9185E38F816BFF9B8F7DFFE3DBCEFFF3EBDFFFE3DCD1FFD7CF
          C5FFCEC8BDFFD2CBC1FFD9D3CAFFECE7DCFFFDF9EDFFDAD6CAFF9E9785FF8E85
          70FF90887AFFE0DCD5FFF5F5F5FF686866FF9A9A9AFF494949F3111111390000
          0000000000000000000000000000000000000000000000000000000000000505
          041C91897DD58E806BFFACA294FFF1E9DEFFD1CCC1FFC2BDB3FFBFBBB1FFC6C2
          B7FFCECAC0FFC8C4BAFFBFBBB1FFBBB6ACFFC1BCB2FFE4DFD5FFFFFCF0FFACA8
          99FF908772FF978F83FFA8A49DFF6D6A66FF373737B711111139000000000000
          000000000000000000000000000000000000000000000000000000000004625D
          5699948671FFB1A89BFFE7E0D4FFC5C1B7FFC7C4BAFFEBE8DEFFEFECE3FFEFEC
          E2FFEEEBE1FFECE8DFFFE8E4DBFFE4E0D6FFD3CFC5FFBBB6ACFFD1CCC2FFFDF9
          EEFFB1AD9FFF908874FF4A4741950A0A09190000000000000000000000000000
          000000000000000000000000000000000000000000000000000011100F29A49D
          91FBB1AFA2FFEEE6DBFFBAB6ACFFC6C3BAFFDED9CFFFDED9CFFFDED9CFFFDED9
          CFFFDED9CFFFEBE8DFFFF0EDE3FFEDEAE1FFE8E4DAFFE2DED4FFBAB6ACFFD1CC
          C2FFFEFAEFFFABA697FF817968E90202010E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000645F5998A7A3
          9DFFF8F8F7FFB5B3AAFFB7B2A8FFDFDAD0FFDFDBD1FFE0DBD1FFE0DBD1FFE0DB
          D1FFDFDBD1FFDFDAD0FFDED9CFFFE9E5DBFFEFECE3FFEAE6DDFFE3DFD5FFBBB6
          ACFFE5DFD5FFDEDACEFF9D9582FF25231E550000000000000000000000000000
          0000000000000000000000000000000000000000000000000000979187E5B7B7
          B7FFE7E7E6FF9B978EFFE0DBD1FFE1DDD2FFE2DED4FFE3DFD5FFE3DFD5FFE3DF
          D5FFE2DED4FFE1DDD2FFE0DBD1FFDFDAD0FFDED9CFFFF0EDE3FFEAE6DDFFD3CF
          C5FFC2BDB3FFFDF7EBFFB4AEA2FF645E50BC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AAA59EFEDCDC
          DCFFB0AEAAFFB0ABA1FFE3DED4FFE4E0D6FFEEEBE1FFEFECE2FFEFECE2FFEFEC
          E2FFEEEBE1FFE4E0D6FFE3DED4FFE1DCD2FFDFDAD0FFDED9CFFFEFECE3FFE8E4
          DAFFBBB6ACFFE9E2D7FFC4BEB2FF89806FEA0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B0ADAAFFF9F9
          F9FF928E88FFCBC7BDFFEEEBE1FFEFECE3FFF0EDE4FFF1EDE5FFF1EEE5FFF1ED
          E5FFF0EDE4FFEFECE3FFEEEBE1FFE3DFD5FFE1DCD2FFDFDAD0FFE9E5DBFFEDEA
          E1FFC3BFB5FFD7D1C6FFE2DACEFF9F9586F90000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B7B7B7FFFFFF
          FFFF7B776EFFDEDBD1FFF0EDE3FFF7F4EBFFF2F0E7FFF2EFE7FFF2F0E7FFF2EF
          E7FFF1EFE6FFF1EEE5FFF0EDE3FFEEEBE1FFE3DED4FFE0DBD1FFDED9CFFFF0ED
          E3FFCECAC1FFC6C0B5FFEDE5DAFFACA295FD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B9B9B9FFFFFF
          FFFF6D6960FFDAD7CEFFF1EEE5FFFFFDF5FFF7F4EDFFF4F1EAFFF4F2EAFFF4F1
          EAFFF3F0E9FFF2EFE7FFF1EEE5FFEFECE3FFE4E0D6FFE1DDD2FFDFDAD0FFEBE8
          DFFFD2CEC5FFBAB5A9FFECE3D8FFACA397FB0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B9B9B9FFFBFB
          FBFF7E7B72FFBDBAB0FFF4F2E9FFFFFFFFFFFEFCF4FFF5F3ECFFF5F3ECFFF5F3
          ECFFF4F2EAFFF3F0E9FFF1EFE6FFF0EDE4FFEEEBE1FFE2DED4FFDFDBD1FFDED9
          CFFFB9B5AAFFC9C2B7FFDCD4C8FFA1988BF00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AEAEACF1E8E8
          E8FFA8A7A1FF77746AFFF7F4ECFFFFFFFFFFFFFFFFFFFBF9F2FFF7F5EEFFF6F4
          EDFFF5F3ECFFF4F1EAFFF2EFE7FFF1EDE5FFEFECE2FFE3DFD5FFE0DBD1FFDBD6
          CCFF9D9A8FFFE1D9CEFFC5BDB1FF827A6FC70000000000000000000000000000
          00000000000000000000000000000000000000000000000000007C7B78AEC2C2
          C2FFE0E0DFFF5E5B50FFC6C3B9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF4FFF8F6
          EFFFF5F3ECFFF4F2EAFFF2F0E7FFF2EFE6FFF1EEE4FFE3DFD5FFE0DBD1FFB2AD
          A1FFB0ACA1FFF0E8DCFFB1A99DFF403C35660000000000000000000000000000
          00000000000000000000000000000000000000000000000000001D1D1C2DB9B9
          B9FFFFFFFFFF9A9892FF5F5C51FFE8E5DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FAFFFCFAF3FFFAF7F0FFF9F6EEFFFAF6EEFFF0EDE3FFE1DCD2FFBAB6AAFF8883
          77FFD4CDC3FFE4DCD0FFAAA296F70908070F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008383
          82B4BEBEBEFFEEEEEEFF7B7971FF716E64FFE1DED5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFFFAF7EDFFD9D6CCFFB2ADA0FF878276FFB0AA
          9FFFF1E9DDFFAFA79BFF57534C82000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001615
          1521AFAFAFF1CECECEFFE2E1E1FF807E77FF67645AFFC2BFB5FFE4E1D7FFF5F2
          E9FFF3F0E7FFE9E6DCFFD3D0C6FFBBB7ACFFADA99CFF8E897CFFA3A199FFF1F1
          EBFFBDB7ABFF958E84DA04030306000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2C2C3FB6B6B6FBCECECEFFEFEEEEFFA2A09BFF6C6960FF737065FF9390
          85FFAAA79BFFADAA9EFFA09C90FF8F8B80FF858176FFB2B0ABFFF9F9F8FFC0C0
          C0FFACACA9EE1514131E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002D2D2D3FADADADEEBBBBBBFFFFFFFFFFE0DFDFFFB8B7B4FF9B99
          94FF807D75FF848179FF9D9C96FFBAB8B5FFE8E7E6FFF8F8F8FFB9B9B9FF9B9B
          9AD71A1919240000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001313131B787878A5B9B9B9FFBBBBBBFFE6E6E6FFFCFC
          FCFFFFFFFFFFFFFFFFFFFCFCFCFFDCDCDCFFB9B9B9FFB5B5B5FA6666668D0808
          080C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002121212D606060849B9B9BD5B9B9
          B9FFB9B9B9FFB9B9B9FFB9B9B9FF8D8D8DC35959597B1313131B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000200000004000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000D000000140000000D0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000400000011010302290F301F88010302280000001000000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000050000
          0013020503311B5336CD236E48FF184C32C10104022D00000011000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000700000015030A
          073D1C5B3CDC236E48FF2C8357FF2C8357FF1A5135CB02050330000000110000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000060000001606120C4E1F61
          40E8236E48FF2D8558FF43B87DFF43B87DFF2C8458FF1B5638D2030805360000
          0013000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000400000013081A115B206643F1236E
          48FF2D8659FF45BA7FFF45BB7FFF45BB7FFF43B87DFF2C8558FF1C593BD9030A
          073C000000140000000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000500000012030805361E5E3DE3236E48FF2E86
          59FF47BC81FF47BD81FF47BD81FF46BC80FF45BB7FFF44B97EFF2C8558FF1E5D
          3DE0040D09420000001500000006000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000500000013030906391C593BD9236E48FF2E8659FF49BE
          83FF49BF83FF48BE82FF48BE82FF47BD81FF46BC80FF46BC80FF44B97EFF2C84
          57FF1F6140E805100A4800000016000000070000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000500000013030A073C1E5C3CDE236E48FF2B8055FF4ABD82FF4BC1
          85FF4AC084FF4AC084FF49BF83FF48BE82FF48BE82FF47BD81FF46BC80FF43B6
          7CFF297D53FF1F6442EC07150E54000000170000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000500000014040C08401E5D3DE0236E48FF2C8156FF4BBF84FF4DC387FF4CC2
          86FF4CC286FF4BC185FF4AC084FF49BF83FF49BF83FF48BE82FF47BD81FF47BD
          81FF44B77DFF297D53FF206643F10819105B0000001800000008000000010000
          0000000000000000000000000000000000000000000000000000000000040000
          0014040D09421F603FE5236E48FF308459FF51C58AFF4FC589FF4EC488FF4DC3
          87FF4DC387FF4CC286FF4BC185FF4BC185FF4AC084FF49BF83FF48BE82FF48BE
          82FF47BD81FF44B77DFF2A7F54FF226944F6091C13630000001A000000090000
          00010000000000000000000000000000000000000000000000000000000B050E
          09411F6140E8236E48FF30855AFF5DD196FF61D79BFF5DD397FF50C68AFF4FC5
          89FF4EC488FF57CD91FF5ED498FF5DD397FF55CB8FFF4AC084FF4AC084FF49BF
          83FF48BE82FF48BE82FF45B87EFF2A7F54FF226A45F80B22166E0000001B0000
          000A0000000100000000000000000000000000000000000000000000000F1F61
          3FE6236E48FF30855AFF5DD196FF61D79BFF61D79BFF61D79BFF61D79BFF59CF
          93FF59CF93FF89FFC3FF2B9D63FF2B9D63FF86FCC0FF56CC90FF4BC185FF4AC0
          84FF49BF83FF49BF83FF48BE82FF45B87EFF2A7F54FF226C47FA0C2719780000
          001C0000000A00000002000000000000000000000000000000000000000C236E
          48FF30855AFF5DD196FF61D79BFF61D79BFF61D79BFF61D79BFF61D79BFF6BE1
          A5FF9BFFD5FF2E9F66F70720133809261747289A60FC87FDC1FF56CC90FF4BC1
          85FF4BC185FF4AC084FF49BF83FF48BE82FF46B97FFF2A7F54FF236D47FD0E2C
          1D830000001D0000000B0000000200000000000000000000000000000006297D
          52FD5BCF94FF61D79BFF61D79BFF61D79BFF61D79BFF61D79BFF6BE1A5FF9BFF
          D5FF39AA70F50B24173700000000000000000722143D289A60FA87FDC1FF57CD
          91FF4CC286FF4BC185FF4AC084FF4AC084FF49BF83FF46B97FFF2A7F54FF236E
          48FF0F31208D0000001F0000000C000000020000000000000000000000011444
          2B763FB479FE95FFCFFF65DB9FFF61D79BFF61D79BFF6BE1A5FF9BFFD5FF39A9
          70F40B2417370000000000000000000000000000000007201338299A60F888FE
          C2FF57CD91FF4CC286FF4CC286FF4BC185FF4AC084FF49BF83FF47BA80FF2A7F
          54FF236E48FF1238249A000000200000000D0000000200000000000000000000
          0000103623563FB378FCA1FFDBFF65DB9FFF6BE1A5FF9BFFD5FF39A870F20B24
          1736000000000000000000000000000000000000000000000000082114372999
          60F688FEC2FF58CE92FF4DC387FF4CC286FF4BC185FF4BC185FF4AC084FF47BA
          80FF2B7F54FF236E48FF14402AA9000000210000000D00000002000000000000
          0000000000000F33214F3FB278FBACFFE6FFA0FFDAFF39A870F10B2417360000
          0000000000000000000000000000000000000000000000000000000000000A23
          16372B9B62F489FFC3FF58CE92FF4DC387FF4DC387FF4CC286FF4BC185FF4AC0
          84FF48BB80FF2B7F54FF236E48FF16442DB20001012000000008000000000000
          000000000000000000000F33214E4BBE84F938A86FF00B241736000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B24173733A36AF389FFC3FF59CF93FF4EC488FF4DC387FF4CC286FF4CC2
          86FF4BC185FF48BB80FF2B7F54FF236E48FF15422BA70000000A000000000000
          00000000000000000000000000001B3E2C4B10291C3600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B24173639A870F291FFCBFF59CF93FF4EC488FF4EC488FF4DC3
          87FF4CC286FF4BC185FF49BC81FF2B7F55FF1B5437CA00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B24173639A870F199FFD3FF5DD397FF4FC589FF4EC4
          88FF4DC387FF4DC387FF4CC286FF47BA80FF1A5638B100000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B24173638A86FF09BFFD5FF66DCA0FF4FC5
          89FF4FC589FF52C88CFF81F7BBFF2A9E63FB092B1A4C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B24173638A86FF09BFFD5FF6BE1
          A5FF5CD296FF8FFFC9FF2DA166FA092C1A4B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B24173638A86FF0A0FF
          DAFFACFFE6FF3DB075F90B2F1D4E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B24173638A8
          6FF04BBE84F90F33214E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001029
          1C361B3E2C4B0000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000800000018000000280000002E0000002E0000002E000000290000001B0000
          000A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000001C1211
          0F503936329D605A52E4706960FF716B61FF736D63FF69635AE944403BA61918
          165A0000001E0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000130000
          00220000002A0000002B0000002B0000002B0000002F030303503D3A36B96E6A
          62FD87837AFFC6C0B5FFDFD8CCFFE2DACDFFE4DCCFFFD3CBBFFF9A9489FF8079
          6EFF4E4A42B80808073700000006000000000000000000000000000000000000
          00000000000000000000000000000000000000000003000000230000002B0000
          002B0000002B0000002B0000002B0000002D0C0C0B5C524E49DE837F78FFD2CD
          C3FFCCC7BFFFBBB8B0FFABA69FFF9B968FFF9F9991FFACA69DFFC8C2B6FFE7DF
          D2FF979087FF676258E10F0E0D44000000030000000000000000000000000000
          00000000000000000000000000000000000000000019020202303D3D3B8A6A68
          66D5777570FD696862FF626059FF54534CFF6E6C66FF9F9C96FFE1DDD5FFBAB6
          B1FFAEABA6FFC3BFB8FFD8D2C7FFBCB6AAFFD2CBBFFFB3ADA3FF928D84FFA09B
          92FFDAD2C6FFA39D93FF69635AE10706062A0000000000000000000000000000
          0000000000000000000000000000000000000606053452514CD7979692FFA7A5
          A0FFA9A7A1FF9B9A91FF918E86FF76746FFFA09E9AFFE3E0DAFFC2BFB9FFB8B5
          AFFFD0CCC4FFE1DBD0FFE4DDD0FFA09A90FFE4DCCFFFE4DDCFFFB3ADA2FF9F9A
          90FF9A948CFFD8D1C5FF9C968EFF494640B20000000800000000000000000000
          0000000000000000000000000000000000003B3935A57F7D76FFCDCBC7FFD8D6
          D0FFCDCBC3FFB9B7ADFF9D9B92FF969493FFE9E7E4FFCAC8C3FFC1BEB9FFFFFF
          F8FFF3EEE4FFE4DDD1FFE2DACDFFE3DBCEFFE7E0D2FFF0E8DAFFEDE5D8FFF5ED
          E0FF9F9A90FFA9A49AFFDDD6CBFF8D877EFD1312114100000000000000000000
          00000000000000000000000000000000000064635BEB9B9891FFE3E1DCFFE3E0
          DAFFD0CEC6FF9A9990FF5E5C59FFB1B0AFFFDEDEDBFFC5C3BEFFDCD7D0FFEDE8
          DFFFF4EEE4FFE5DED2FFE1DACCFFE4DDCFFFEDE5D8FFFEF6E8FFFFFFF2FFF5EE
          E1FFBCB5AAFF9A958CFFBCB6ACFFA09B93FF3E3A369800000000000000000000
          00000000000000000000000000000000000077746CFFA8A59DFFE8E6E1FFE4E1
          DBFFD0CEC6FF67665EFF8E8D8BFFD6D6D6FFD2D0CDFFE7E4DEFFFFFFFFFFFDF9
          F0FFF2ECE2FFE4DDD0FFE1D9CCFFE5DDD0FFF1EADCFFFFFBEEFFFFFFFCFFFFFF
          F5FFFCF4E7FFC7C1B6FFA39F95FFC1BCB2FF6B6862D700000000000000000000
          00000000000000000000000000000000000079766EFFACA9A1FFEAE8E3FFE4E1
          DBFFD0CEC6FF95938AFFA7A7A6FFEBEBECFFCCCAC6FFFFFFFFFFFFFFFFFFFFFF
          F7FFF4EEE4FFE5DED2FFDED7CAFF928E85FFBAB4A9FFE7E0D3FFFFFFF2FFFFFD
          F0FFF9F1E4FFE9E2D4FF99938BFFD2CCC2FF8C8881FA00000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FFEAE8E3FFE4E1
          DBFFD0CEC6FF929086FFA9A59EFFEFEAE3FFC2C0BCFFFFFFFDFFE3DFD7FFFEF9
          F1FFF8F3E9FFE8E1D5FFC2BBB1FF444444FF0E0E0EFF1C1C1CFF2E2C2AFFB4AE
          A5FFB9B3A7FFD0C9BCFF938E85FFE0DBD3FF98938DFF00000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FFEAE8E3FFE4E1
          DBFFD0CEC6FFACAAA0FFA5A098FFE1DBD1FFBEBCB7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFEF9F1FFEEE8DDFFCDC7BBFF090909FF8B867EFFBEB8ADFFEAE2D5FFEBE4
          D6FFEAE2D5FFE1DACCFF8E8980FFDFDAD4FF9A9792ED00000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FFFDFBF6FFF7F4
          EEFFE3E1D9FFCDCBC1FFACA69DFFCDC6BDFFBDB8B2FFF1EEE9FFFFFFFFFFFFFF
          FFFFFFFFF8FFF8F3E9FFD6CFC5FF050505FFB3ADA3FFE4DCCFFFE4DDCFFFDDD5
          C9FFDAD3C6FFC0B9AFFF969189FFD0CDC8FF817F7BCB00000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF678F90FFA3B1
          ACFFA8B3AEFFADB4AFFFA8A9A1FFB3ACA2FFD0CBC1FFC6C4C0FFFCF8F1FFFFFF
          FFFFFFFFFFFFFFFFF7FFF4EEE4FF292928FFD2CCC0FFE6DED1FFE5DED0FFE1D9
          CDFFBFB9ADFF8D8880FFBEBBB6FFAFADABFF4C4B497B00000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF648E8FFFDFF3
          F4FFE4F5F5FFE9F7F7FFE7F0EFFFB5AFA4FFE6DDCFFFADA8A2FFCFCDC9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF52504EFFF6F0E5FFEBE4D8FFD7D0C5FFECE5
          D8FF9E9991FF98958FFFF2F2F0FFAEADABFA1313132100000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF668F90FFDCF2
          F3FFE2F6F7FFE7F8F8FFECFAFAFFD0D2CDFFB2AB9FFFE5DCCFFFA4A19CFFC7C4
          C0FFFAF6EFFFFFFFFFFFFFFFFFFFB0ACA4FFFFFFF9FFFFFAF0FFD5D0C6FFA8A4
          9DFF86827BFFECECEBFFB6B6B5FF6363638E0000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF749394FFDEF3
          F4FFDFF5F6FFE2F6F7FFE7F8F8FFEBF9F9FFC3C1B8FFB2AB9FFFE7DED0FFA4A0
          9AFFAAA7A4FFC1BEB9FFE8E5DEFFF2EEE6FFE2DDD6FFB3B0AAFF95928DFF928E
          88FFE8E3DCFFB9B9B9FF909090CA060606090000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF769494FFECF7
          F8FFE1F6F7FFDFF5F6FFE2F6F7FFE7F8F8FFE8F4F4FFC1BFB5FFB2AB9FFFE8DE
          CFFFD1CABEFFBBB5ACFFA5A19BFF908D88FFA09B95FFB6B2A9FFCEC9BFFFF2EB
          E1FFB5B0A9FF95938DD210100F18000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF799495FFEEF8
          F8FFEFFAFBFFE1F6F7FFDFF5F6FFE2F6F7FFE7F8F8FFEAF8F8FFD3D4CFFFB5AF
          A3FFB2AB9FFFD2CABCFFE6DCCDFFF5EBDBFFE8E0D1FFD6CDC0FFB3ACA2FFB0A9
          A0F964615B8D0606060900000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF7B9595FFF1F8
          F9FFF1FBFBFFEFFAFBFFE1F6F7FFDFF5F6FFE2F6F7FFE7F8F8FFECFAFAFFEBF4
          F3FFD4D6D1FFB1AEA3FFACA69AFFB2AB9FFFA19B90E788837AC356534D7B1514
          131E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF7D9696FFF3F9
          F9FFF4FBFCFFF1FBFBFFEFFAFBFFE1F6F7FFDFF5F6FFE2F6F7FFE7F8F8FFECFA
          FAFFEEF8F8FFAFB5B0FF838078FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF7F9696FFF5FA
          FAFFF6FCFCFFF4FBFCFFF1FBFBFFEFFAFBFFE1F6F7FFDFF5F6FFE2F6F7FFE7F8
          F8FFE9F7F7FFADB4AFFF838078FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF809797FFF7FA
          FAFFF8FDFDFFF6FCFCFFF4FBFCFFF1FBFBFFEFFAFBFFE1F6F7FFDFF5F6FFE2F6
          F7FFE4F5F5FFA8B3AEFF838078FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF829797FFF8FB
          FBFFFAFDFDFFF8FDFDFFF6FCFCFFF4FBFCFFF1FBFBFFEFFAFBFFE1F6F7FFDFF5
          F6FFDFF3F4FFA3B1ACFF838078FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF839898FFFAFB
          FBFFF8FBFBFFF7FAFAFFF5FAFAFFF3F9F9FFF1F8F9FFEEF8F8FFECF7F8FFDEF3
          F4FFDCF2F3FF9EAFABFF838078FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFACA9A1FF849898FF8398
          98FF829797FF809797FF7F9696FF7D9696FF7B9595FF799495FF769494FF7493
          94FF668F90FF648E8FFF838078FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007A776FFFADAAA2FFEAE8E3FFE4E1
          DBFFD0CEC6FFBAB8AEFFAEABA1FFAFACA2FFA5A399FF918F87FF7F7D76FF7775
          6FFF78766FFF7D7B73FF848178FF6C6960FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007D7A71FFAEABA3FFEAE8E3FFE4E1
          DBFFD0CEC6FFBAB8AEFFAEABA1FFCECCC6FFC8C7C1FF918F87FF7F7D76FF7775
          6FFF78766FFF7D7B73FF858279FF6F6C62FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007B7870F0ABA8A0FFEAE8E3FFE4E1
          DBFFD0CEC6FFBAB8AEFFAEABA1FF65635DFF5F5E57FF918F87FF7F7D76FF7775
          6FFF78766FFF7D7B73FF827F76FF6D6A61F00000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000044423E849E9B93FFE3E1DCFFE1DE
          D8FFD0CEC6FFBAB8AEFFAEABA1FFA5A298FF9B998FFF918F87FF7F7D76FF7775
          6FFF75736CFF76746CFF757269FF3C3A35840000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000038373460999894BABBB8
          B3EAB8B6AEFFA2A096FF969389FF8D8A80FF838177FF79776FFF67655EFF5F5D
          57FF585650EA4A4842BA29282560000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000400000017000000360000002E000000330000003300000033000000330000
          0033000000330000003300000033000000330000002E00000041000000450000
          0063000000310000003300000033000000330000003300000033000000330000
          0033000000310000003D00000017000000040000000000000000000000000B0B
          0B44363636945F5F5FEB636363EE6B6B6BFF6B6B6BFF6B6B6BFF888888FF7171
          71FF676767FF6B6B6BFF6B6B6BFF6B6B6BFF636363EE585858FF5F5F5FFF6767
          67FF686868F96B6B6BFF6B6B6BFF888888FF717171FF676767FF6B6B6BFF6B6B
          6BFF686868F9626262F0353535940B0B0B440000000000000000000000006D6D
          6DF68B8B8BFFB7B7B7FFD3D3D3FFFBFBFBFFFBFBFBFFFBFBFBFFE2E2E2FFB5B5
          B5FFC9C9C9FFF2F2F2FFFBFBFBFFFBFBFBFFD3D3D3FF737373FF8B8B8BFFB7B7
          B7FFEAEAEAFFFBFBFBFFFBFBFBFFE2E2E2FFB5B5B5FFC9C9C9FFF2F2F2FFFBFB
          FBFFEAEAEAFFB7B7B7FF8B8B8BFF6D6D6DF60000000000000000000000009999
          99E4E6E6E6FFD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFCACACAFFFFFF
          FFFFBEBEBEFFE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFE6E6E6FFD0D0
          D0FFFFFFFFFFFFFFFFFFF5F5F5FFC6C6C6FFFFFFFFFFBEBEBEFFE3E3E3FFFFFF
          FFFFFFFFFFFFD0D0D0FFE6E6E6FF999999E40000000000000000000000008686
          86D0D8D8D8FFD0D0D0FFFFFFFFFFFFFFFFFFFCFCFCFFD0D0D0FF9F9F9FFFFDFD
          FDFFE9E9E9FFC8C8C8FFF4F4F4FFFFFFFFFFFFFFFFFFABABABFFD8D8D8FFD0D0
          D0FFFFFFFFFFFCFCFCFFD0D0D0FF9B9B9BFFFDFDFDFFE9E9E9FFC8C8C8FFF4F4
          F4FFFFFFFFFFD0D0D0FFD8D8D8FF868686D00000000000000000000000007171
          71B8CACACAFFD0D0D0FFFFFFFFFFFFFFFFFFDCDCDCFFB0B0B0FFBDBDBDFFF0F0
          F0FFFFFFFFFFC1C1C1FFE0E0E0FFFFFFFFFFFFFFFFFFA9A9A9FFCACACAFFD0D0
          D0FFFFFFFFFFDCDCDCFFB0B0B0FFC8C8C8FFDFDFDFFFFFFFFFFFC1C1C1FFE0E0
          E0FFFFFFFFFFD0D0D0FFCBCBCBFF707070B90000000000000000000000005C5C
          5C9EB9B9B9FFD0D0D0FFFFFFFFFFE8E8E8FFB7B7B7FFDFDFDFFFDBDBDBFFC1C1
          C1FFFFFFFFFFEDEDEDFFC6C6C6FFF3F3F3FFFFFFFFFFAAAAAAFFB9B9B9FFD0D0
          D0FFE8E8E8FFB7B7B7FFDFDFDFFFEAEAEBFF99989BFFFFFFFFFFEDEDEDFFC6C6
          C6FFF3F3F3FFD0D0D0FFB9B9B9FF5D5D5D9E0000000000000000000000004848
          4883B3B3B3FFCECECEFFF4F4F4FFC2C2C2FFC8C8C8FFFFFFFFFFDBD9D6FF9695
          93FFFFFFFFFFFFFFFFFFC2C2C2FFDFDFDFFFFFFFFFFFABABABFFB3B3B3FFC6C6
          C6FFC2C2C2FFC8C8C8FFFFFFFFFFCDCBD7FF8E89AEFFFFFFFFFFFFFFFFFFC2C2
          C2FFDFDFDFFFCFCFCFFFB3B3B3FF484848830000000000000000000000003737
          3768B3B3B3FFD3D3D3FFFBFBFBFFD4D4D4FFF2F2F2FFFFFFFFFFBEB5A9FF9D8D
          75FFF6F6F6FFFFFFFFFFE6E6E6FFECECECFFFFFFFFFFB3B3B3FFB3B3B3FFD2D2
          D2FFD4D4D4FFF2F2F2FFFFFFFFFF9F9BB9FF7D75ADFFEDECEFFFFFFFFFFFE6E6
          E6FFECECECFFD6D6D6FFB3B3B3FF373737680000000000000000000000002828
          284DB0B0B0FDE9E9E9FFF4F4F4FFD1D1D1FFE2E2E2FFFFFFFFFFA8967DFFAD97
          78FFD5D0CAFFFFFFFFFFD2D2D2FFCFCFCFFFF7F7F7FFC9C9C9FFB1B1B1FFE1E1
          E1FFD1D1D1FFE2E2E2FFFEFEFFFF857DB3FF9A92CBFFA8A5BDFFFFFFFFFFD2D2
          D2FFCFCFCFFFE4E4E4FFB0B0B0FE2828284D0000000000000000000000001717
          172DA3A3A3FBF8F8F8FFD5D5D5FFB7B7B7FFDDDDDDFFF1F0EEFFB49E7FFFD6C0
          A1FF9D8D75FFFFFFFFFFF4F4F4FFB6B6B6FFDBDBDBFFE3E3E3FFA7A7A7FFCFCF
          CFFFB7B7B7FFDDDDDDFFE7E7ECFF9991CAFFC1B9F2FF7A73A6FFFEFEFEFFF4F4
          F4FFB6B6B6FFD6D6D6FFA3A3A3FB1717172E0000000000000000000000000707
          070D9D9D9DEFCACACAFFE6E6E6FFDCDCDCFFFFFFFFFFC9C2B9FFC6B091FFF3DD
          BEFFAD9778FFE2DFDBFFFFFFFFFFEDEDEDFFE9E9E9FFC6C6C6FFA6A6A6FEBCBC
          BCFFDCDCDCFFFFFFFFFFB8B5C9FFA59DD6FFCAC2FBFF938BC4FFD2D1DBFFFFFF
          FFFFEDEDEDFFBEBEBEFF9E9E9EF0080808100000000000000000000000000000
          00002F2F2F44929292CEADADADFF9A9A9AFFFFFFFFFFA5957FFFC6B091FFC6B0
          91FFC6B091FF9B8D7AFFFFFFFFFFA6A6A6FFAEAEAEFF929292CE55595D97898E
          91E98A8E92FFFDFDFDFF8781AEFF9D95CEFF9D95CEFF9D95CEFF837DA2FFECEE
          F0FF91969AFF798289EE414D57B10A0D10240000000000000000000000000000
          000000000000000000001B1B1B245959597C6D6E73A95C668EF56773A7FF6C78
          ACFF6773A7FF565F89ED68696FA24343435D1616161E0000000033414EB17086
          98FF7B91A3FF5B7183FF566286F56773A7FF6C78ACFF6773A7FF525E81F0586C
          7EFE7C91A3FF8297A9FF55697AED010101030000000000000000000000000000
          00000000000000000000000000000101020347517BD28591C5FF9AA6D9FF9CA8
          DBFF98A4D8FF7C88BFFF444D78D20101010300000000000000001C232A60889C
          AEFF9FB4C6FF708497FE7380B7FF9AA6D9FF9CA8DBFF98A4D8FF727EB8FF3746
          68F193A7B9FF94A8BAFF394752A5000000000000000000000000000000000000
          0000000000000000000000000000191D2F5A7E8ABCFF919DD2FFA2AEDFFFA0AC
          DEFF9EAADCFF7884C0FF7682B7FF161A2D5A00000000000000000C0F11277F93
          A3FF9AADBEFF637590FF9EAADBFF919DD2FF7E8AC5FF8D99CFFF97A3D6FF4D5A
          8BFF889BABFF8C9FB0FF1F282F6C000000000000000000000000000000000000
          00000000000000000000000000003F4768B17F8BBFFFA3AFDFFF9FABDBFF808C
          C4FFA3AFE0FF97A3D7FF7B87BEFF363E63B10000000000000000010101037B8C
          9BFF91A4B4FF6C7C9BFFAAB6E4FFA9B5E3FFA7B3E2FFA3AFE0FFA0ACDEFF7985
          B7FF8292A1FF8699A9FF161C214B000000000000000000000000000000000000
          0000000000000000000000000000525978EEACB8E2FFB4C0EAFF939FD0FFAFBB
          E7FFA2AEDEFFA4B0E0FF98A4D6FF454B6DF10000000000000000000000006D7B
          87EA8A9BAAFF8694B4FFB4C0EAFFB3BFE9FF8692C7FFAAB6E4FFA4B0E0FF96A2
          D4FF808F9CFF8495A4FF0E121530000000000000000000000000000000000000
          00000000000000000000000000004D516DFCB8C4EBFFB1BDE6FF8D99C9FFB7C3
          ECFF9AA6D5FFA9B5E3FFA0ACDDFF3C3E58FD0202030C0000000000000000606C
          77D88394A2FF97A5C5FFBDC9F0FFBBC7EEFFB7C3ECFFB1BDE8FFA9B5E3FF9EAA
          DAFF818F9CFF8293A1FF0B0D1024000000000000000000000000000000000000
          0000000000000000000000000000454860FFA5B1DCFF94A0CDFF929ECCFFBDC9
          F0FF8793C4FF7E8ABFFF838FC3FF313146FF0303040F0000000000000000545E
          67C67F8F9CFF8C9ABFFF96A2CFFFA0ACD8FFBDC9F0FF94A0D0FF808CC1FF7985
          B5FF85939FFF677A8AFF0406070F000000000000000000000000000000000000
          000000000000000000000000000037384DFFC7D3F6FFC9D5F7FFC7D3F6FFC2CE
          F3FFBBC7EEFFB2BEE9FF7980A4FF46465AFF0303051200000000000000004750
          59B48393A0FF94A2C0FFACB8E0FFBBC7ECFFC2CEF3FFAFBBE4FF95A1D2FF717E
          9DFF607485FF516577FA00000000000000000000000000000000000000000000
          000000000000000000000505071A303044FF8086A2FFBDC8E8FFCAD6F8FFC5D1
          F4FFBECAF0FFB5C1EBFF61637CFF58586CFF0606081E0000000000000000373F
          479E8B9BA8FF8091A3FFC3CFEFFFCAD6F8FFC5D1F4FFBECAF0FF8797B7FF7489
          9BFF7E93A5FF4D5E6DE600000000000000000000000000000000000000000000
          000000000000000000000202030C535367FF6F6F83FF57576BFF969EBBFFC6D2
          F5FFC0CCF1FF7A809DFF727284FF5E5E71FF0404061500000000000000002126
          2B668A9AA7FF96A8B7FF7D91A3FF7A8DA3FF8193ADFF77889EFF8699AAFF9CAF
          C0FF8195A7FF384651B500000000000000000000000000000000000000000000
          000000000000000000000000000046475AEE7E7E91FF828296FF606074FF7075
          8FFF6A6D82FF787889FF828293FF48495BE70000000000000000000000000809
          0A186A7886F59AABBAFF9FB3C3FF8BA0B2FF657889FF93A5B4FFA3B5C4FF9CAF
          BFFF6B7E8FFF13171B3E00000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0E30555567F578788AFF6F6F83FF3F3F
          52FF868695FF8E8E9DFF717181FF1D1D27870000000000000000000000000000
          00000F1215306C7B88F58D9FAEFF6C7F8FFF8F9FACFFA6B6C3FF9EAEBBFF7E8E
          9DFF404D59C80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0C2A21212B90393949E63737
          44D0686875FF5B5B69F31D1D257B020203090000000000000000000000000000
          0000000000000E10122A293139844D5C69EC75828EFF7D8A95FF6A7783FD3640
          49AB030304090000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000002000000050000
          0007000000080000000800000008000000080000000800000008000000080000
          0008000000080000000800000008000000070000000500000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000009000000120000
          0016000000170000001700000017000000170000001700000017000000170000
          0017000000170000001700000017000000160000001200000009000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000051E1C1B3A837C76C4ADA4
          9DF7B3A9A2F9BFB6B0FEBEB5B0FEBCB3ADFDB9B0AAFCB6ADA7FBB3A9A2F9B0A5
          9FF8ACA29BF7AAA098F6A99F98F5A99F98F5817974C21C1A1937000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000078A817BCBCBC6C0F5E3E2
          DFF4E9E8E6F7FBFBFAFEF8F8F8FDF4F3F2FBEEEDEBF9E7E6E3F6E0DEDBF3DBD9
          D5F1DAD8D4F1DDDBD6F2DBD9D6F1DBD9D6F1C6C0BCF3867D78C6000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5DFDDD9F3DCCC
          C8F6D2B0ABF8E0BCB9FEDDBAB7FDDAB6B2FBD5AFABFACDA9A4F7C8A29CF5C29D
          96F3C19B94F2C29D96F3CAA69FF5D6C6C2F4D9D7D3F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5DFDCD8F3CDAA
          A5F7DEB9B3F6F7D3CFFDF4D1CDFCEFCCC7FAE8C4BEF7E0BCB5F4D8B2AAF0D1AC
          A2EECEA89FEDCFA9A1EDCEA8A0F1C9A59FF4D9D6D2F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5DFDAD6F4C9A3
          9EF5E1BDB6F4F9D4D1FDF5D2CEFCEFCBC6F9E8C2BCF6DCB8B1F2D3AEA5EECBA5
          9CEBC7A197EAC8A297EAD0AAA1EDC29D95F2D9D6D2F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D8D5CFF1C49F
          98F3D7BAB5F5CAC4C3FEC1C1C1FFBDBDBDFFB7B7B7FFAFAFAFFFA7A7A7FF9F9F
          9FFF979797FF999290FBBA9D94EFBC9790F1D4D1CCEF9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D3CFCAEEC29D
          95F2C5BFBEFDCFCFCFFFF3F3F3FFFBFBFBFFF5F5F5FFEDEDEDFFE5E5E5FFDDDD
          DDFFD5D5D5FFCECECEFFBDB7B5FBB8938BEFCFCCC7ED9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D0CCC6EDC09B
          93F2C1C1C1FFF4F4F4FFFFFFFFFFC7EBD9FF63C392FF33AA6EFF4EAC7CFFB2CC
          BFFFD5D5D5FFCECECEFFC7C7C7FFB79189EFCDC9C3EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CDC8EEC09B
          93F2C1C1C1FFFFFFFFFFCFF1E0FF4BC386FF47B97FFF55B685FF259C5FFF188F
          52FFAEC5BAFFCECECEFFC7C7C7FFB79188EFCDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CEC9EDC09B
          93F2C1C1C1FFFFFFFFFF70D5A2FF5CC891FFDFEEE6FFEDEDEDFFC0D7CBFF188F
          52FF3F986BFFCECECEFFC7C7C7FFB79188EFCDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CEC9EDC09B
          93F2C1C1C1FFF2FCF7FF56CE91FF9ADCBAFFF5F5F5FFEDEDEDFFE5E5E5FF56A7
          7EFF0F8549FFCECECEFFC7C7C7FFB79188EFCDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D1CEC9EDC09B
          93F2C1C1C1FFF4FCF8FF56CE91FF98DBB9FFF5F5F5FFEDEDEDFFE5E5E5FF4CA4
          77FF14874DFFCECECEFFC7C7C7FFB79188EFCDC9C2EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D2D0CBEEC09B
          93F2C1C1C1FFFFFFFFFF7AD8A8FF53C68CFFCCE7D9FFEDEDEDFFA9CEBBFF158E
          51FF4C9D74FFCECECEFFC7C7C7FFB79189EFCDC9C3EC9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D3D1CBEEC7C4
          BDE9C1C1C1FFFFFFFFFFDBF5E8FF51C58AFF3EB679FF2FA86BFF209A5CFF2193
          59FFBDCBC4FFCECECEFFC7C7C7FFB7B4ABE3CECCC6ED9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008A99F98F5D7D5CFEFCAC7
          C1EAC3C2C1FBFFFFFFFFFFFFFFFFE0F2E9FF81CDA6FF55B685FF71B994FFC8D5
          CEFFD5D5D5FFCECECEFFC1C0BEF8BDB9B0E5D2CFCAEE9F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000007A99F98F5DCDBD6F2CFCD
          C7ECCBC9C4EFF3F3F3FEFFFFFFFFFBFBFBFFF5F5F5FFEDEDEDFFE5E5E5FFDDDD
          DDFFD5D5D5FFC5C4C3F8B4B0A8E5C3C0B8E7D8D6D1F19F958FE8000000070000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000006A79D96F2DFDCD8F3D8D6
          D0EFD4D2CCEEF7F6F5FCF1F1EFFAE8E8E5F6DAD8D4F0CCC9C2EBBCB8AFE4AFAB
          A1DFABA59BDEADA99EDFBAB6ADE4CDCBC4EBD9D7D3F19F958FE8000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000004948A84D7D9D6D3F4E1E0
          DCF3DDDBD7F2F8F7F6FCF4F3F2FBEBEAE8F7E1DFDBF3D3D1CBEEC6C4BCE9BCB9
          B0E4B8B5ACE3BCB8B0E5C8C5BEE9DAD8D4F0D4D1CCF2908781D2000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001534E4B7DC2BBB6F5E4E3
          E0F4E8E7E4F6FAFAF9FDF7F6F5FCF0EFEDF9E8E7E4F6DDDCD7F2D4D1CBEECDCA
          C3EBCAC7C1EACECCC5ECDAD8D4F0DCDAD7F1BEB8B1F44A45426E000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000404040779726CB0C1BA
          B5F6C9C2BEFDE3E0DEFFE4E1DEFFE3E0DEFFE2DFDDFEE2DEDCFEE1DCDAFDE0DB
          D9FDDEDAD7FCDDD8D5FCC8C1BEFDBCB5AEF4736C67A900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000013F3C
          395CCAC5C1F0F2F1F0FCFBFBFAFFFAFAF9FFF9F8F8FFF7F6F5FEF4F3F2FEF2F0
          EFFEEFEDEBFDE9E7E6F9C9C5C1F03D39375B0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF9595
          95FFB0B0B0FF989898FF7C7C7CFF6A6A6AFF5B5B5BFF4D4D4DFF414141FF3838
          38FF303030FF2B2B2BFF262626FF232323FF212121FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF717171FF808080FF4D4D4DFF5C5C5CFF3636
          36FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282FF8282
          82FFF8F8F8FFAAAAAAFFAEAEAEFF767676FF8B8B8BFF626262FF6E6E6EFF4040
          40FF444444FF282828FF363636FF212121FF2E2E2EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000828282DDB1B1
          B1F0B6B6B6FAB5B5B5FFB5B5B5FFB5B5B5FFBABABAFFC4C4C4FFC4C4C4FFC4C4
          C4FFBBBBBBFFB5B5B5FFABABABFB8F8F8FF15E5E5EE000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000240000
          00780000009F000000CC000000CC000000CC000000FC000000FF000000FF0000
          00CC000000CC000000CC000000A50000007E0000002D00000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000003000000130000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001300000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000A0000000E0000001000000010000000100000001000000010000000100000
          00100909083C3B3A35C25F5C56FF636059FF636059FF17174EFF1B1B5CFF1B1B
          5CFF1A1A59FF212147ED0A0A1048000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000120000
          00230000002A0000002C0000002C0000002C0000002C0000002C0000002C0000
          002C3E3C38D19D998DFFC2BCAEFFC4BEB0FFC4BEB0FF2424A1FF2C2CC2FF2C2C
          C2FF2B2BC0FF23239CFF1E1D4EF1000000000000000000000000000000000000
          000000000000000000360000003D0000003D0000003D000000452F2B298A8A7E
          77F0978980FE978880FE988A82FF998B83FF978981FF96887FFE95877FFE7E73
          6AFE9E9C97FFE6E3DCFFEDE9E2FFEDE9E2FFEDE9E2FF6060C4FF7474EDFF7474
          EDFF7474EDFF7171E7FF5454A6FF000000000000000000000000000000000000
          000019191927484848EE1A1A1AFF1A1A1AFF1A1A1AFF181818FF91837BFFCEC8
          C4FFEDEDEDFDDEDEE1FEE1E1E5FFEDEDEDFFDEDEDDFFD9D9D7FFDADAD8FFA2A2
          A0FF989797FFE4E2DEFFF8F5F1FFFBF8F4FFFBF8F4FFB4B2CCFFD9D7F7FFD9D7
          F7FFD6D4F4FFC5C4E1FF8F8D9DF0000000000000000000000000000000000000
          0000555555848F8F8FF82F2F2FFF313131FF313131FF2E2E2EFF978980FFEEEE
          EEFFBEBECEFF9898C1FF9C9CC1FF9C9CB4FFAFAEB4FFDBD9D3FFE1DFD8FFC4C2
          BCFF636383FF8E8C96FFC1BFB9FFC9C6C1FFCAC7C2FF8D8CAFFFA7A6CFFFA6A6
          CEFFA1A0C7FF838298E71A1A1C33000000000000000000000000000000000000
          0000767676B7C8C8C8FC292929FF2B2B2BFF2B2B2BFF292929FF978880FFDADA
          DFFFA5A5E2FF6969D3FF6A6ACDFF6F6FC8FF6A6AA6FF6C6B86FFCBC8C6FFE7E4
          E0FF8282C3FF7C7CC1FF7979BBFF7A7ABBFF9494BDFFA3A2B0FF7C706AFC0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000888888D2E8E8E8FF3C3C3CFF3C3C3CFF3C3C3CFF383838FF978980FFE5E4
          E6FFCCCCECFF9C9CF2FF8080EDFF6969D4FF6767C3FF8786A9FFA19E9AFFABAA
          A7FFB9B7C6FFE2E0F7FFDEDDF3FFDDDDF1FFE4E4F1FFE2E2E5FF95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000979797EAF2F2F2FF494949FF363636FF363636FF323232FF978980FFF1F1
          F0FFDFDEDEFFD8D7ECFFBEBEF4FF9A9AEEFF7C7CCFFFC8C5C2FFD3CEC5FFBCB9
          B2FF908E8EFFA6A6BCFF8D8CA2FF8A889EFFC4C4CDFEEBE9E9FC95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          00009F9F9FF6F9F9F9FF696969FF4F4F4FFF4F4F4FFF4B4B4BFF978980FFEFEE
          EDFFC2C1C1FDAEAEBDFFE0DFDFFFCECDE0FFC3C2D2FFF2EFEAFFEAE6E0FFC9C5
          BCFF878690FF68688DFF6969A2FF6767A3FF9C9CB5FFE5E3E4FC95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000A5A5A5FFFCFCFCFF676767FF494949FF494949FF454545FF978980FFE1E1
          E0FFE6E5E4FFEEECE7FFB6B4B3FFB0AFBDFFE5E3E1FFEAE8E5FFCECDCAFF6B6B
          86FF6A6AA6FF6F6FC8FF6A6ACDFF6C6CD4FFABABE4FFD5D4D9FE95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0003A5A5A5FFFFFFFFFF8A8A8AFF6C6C6CFF6C6C6CFF666666FF978980FFEBEB
          EAFFFCFAF8FFF2EFEAFFD4CFC6FFB2B0A9FFC4C3C0FB9D9B98FEA09D99FF8684
          A8FF6767C3FF6969D3FF7E7EE7FF9B9BECFFCFCFECFFDFDEDEFE95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000A6A6A6FFFFFFFFFF7D7D7DFF656565FF656565FF5F5F5FFF978980FFF1F0
          F0FFFDFCFAFFF2EFEAFFD5D1C7FFB5B2ABFF9B9A96FEC1BEB7FFD6D1C8FFC6C3
          C0FF7A7ACAFF9090D5FF8E8EA9FF9795A3FFD0D0D1FEE9E7E6FB95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000A1A1A1F9FFFFFFFFA3A3A3FF969696FF969696FF8C8C8CFF978980FFF2F1
          F0FFFDFCFAFFF2EFEAFFD5D1C7FFA3A19CFFC9C6BFFFD7D2C9FFD2CEC4FFE0DC
          D7FF8D8C97FF898786FF9F9C96FFB4B2ADFFBABABBFFE5E3E3FC95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000979797EAFDFDFDFF919191FF898989FF898989FF818181FF978980FFD6D6
          DBFFB8B7BFFF72729BFF59598CFF7A7889FFC8C3BCFFD2CEC4FFCDCACCFF8180
          83FFA6A29CFFC9C5BCFFEDE9E3FFF3F0EBFFEBE9E7FFD9D8D9FE95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000888888D2F9F9F9FFCFCFCFFFD6D6D6FFD6D6D6FFC9C9C9FF978981FFEAEA
          F3FFEDECFBFF9C9CF2FF6969D4FF6E6EB7FFACAAA7FE8B899EFF66669AFF8F8C
          A6FFC8C4BBFFEDEAE3FFF4F1ECFFF9F7F4FFF2F1F0FFE0DFDEFE95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          0000767676B7E8E8E8FCBCBCBCFFC3C3C3FFC3C3C3FFB7B7B7FF978981FFEAEA
          F3FFEDECFBFF9C9CF2FF6969D4FF6969B3FF6F6F94FE6969B5FF6969CCFF6E6D
          CDFFCBC8C8FFEFEDE8FFF7F5F2FFEFEEECFFDEDEDCFFEAE8E8FC95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          00005B5B5B8DCCCCCCF8CBCBCBFFD2D2D2FFD2D2D2FFC5C5C5FF978981FFE9E9
          F1FFECEAFAFF9C9CF2FF6969D2FF626295FF6565B9FF6969D3FF8080EDFF9C9C
          F2FFBAB9D2FFE0DEDBFFE2E0DEFFB2B1B9FFAAAAB9FEE3E2E2FC95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          000025252539969696EBB1B1B1FFB7B7B7FFB7B7B7FFADADADFF978981FFE6E6
          EBFFE4E3F1FF9A9AEDFF6666C8FF6E6D8DFF7A7ADAFF9C9CF2FFBFBFF6FFDEDD
          F3FFE4E3E3FFB7B7C2FF8584CAFF6C6CD3FF9E9ED4FFC9C8D3FF95877FFB0000
          000E000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000C96877FFDF2F1
          F1FDD5D4DBFE8E8ECCFF7E7DADFFB7B6B7FFA9A9CBFFCFCDE1FFE4E3E3FFBEBD
          D5FF9898CCFF9C9CF2FF9C9CF2FFA0A0F3FFC5C5F5FFD3D2E4FF95877FFB0000
          000C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000893867DF6EAE7
          E5FCF7F7F6FCECEAE8F8FAF9F9FDCFCECCFEE8E6E3FFDCDAE1FFE1E0E5FFF8F6
          F4FFCAC8DBFFE4E3F9FFE5E4F9FFE8E7F9FFF1F0F8FFDBD9DBFF92857CF40000
          0006000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000026E655FB7C0B8
          B2FEF8F8F7FCF9F9F9FDFDFDFCFEF6F6F6FEE0DEDDFEE3E2DFFFE6E4E2FFE6E4
          E3FFC9C9D9FFD7D6E9FFDBDBEBFFE9E9F2FFE8E7EDFFBBB2AEFE655D58A80000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000706060D887C
          75E1B8AFA9FEA2958EFECCC5C0FFCDC6C2FFCDC6C2FFCDC6C2FFCCC5C1FFCBC4
          C0FECBC4C0FECBC4C0FECAC3BEFEA2958EFEB7AEA7FD857A73DC000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00025A534E92B8AFA9FBEDEBEAFEF9F8F8FFF5F4F2FFE9E6E4FFDDD8D5FFD4CE
          CAFFD2CCC8FFD7D1CEFFDBD6D4FEB9AFAAFB59514D9100000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009D9591CFB7B2AFDCD6D3D0F2E1DFDDEFE6E5E5EAE3E3E3E3DCDC
          DCDCD4D3D3D5C9C9C8D0BBBAB8CDA09894D20000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009D9591CFD4D3D3D4EBEBEAF0E1DFDEEED2CECDECC7C3C0E8C6C1
          BFE1CAC8C6D8CBCBCBCFC8C8C8C8A09894D20000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E746DE3837D79F47F7874FD7E7874FC6F6964FF6E6863FF6F69
          64FF7B7570F97A746FF8817A75F180766FE50000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002F2C2A5D605B57AE827B76CC88817ACCA29992F3B4AAA2FFACA3
          9BF3908882CC88817ACC746E68AE3B38365D0000000000000000000000000000
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
  object qryMenu: TADOQuery
    Connection = connTrading
    CommandTimeout = 300
    Parameters = <>
    Left = 264
    Top = 72
  end
  object connTrading: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=True;Extended Propertie' +
      's="Driver=MySQL ODBC 5.1 Driver;SERVER=localhost;UID=revisoft;PW' +
      'D=revisoft012686;DATABASE=trading;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 312
    Top = 72
  end
  object spUser: TADOStoredProc
    Connection = connTrading
    CursorType = ctStatic
    CommandTimeout = 300
    ProcedureName = 'sp_pencarianUser'
    Parameters = <
      item
        Name = 'UserIdin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = 'Passin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Left = 264
    Top = 128
    object spUserNm_user: TWideStringField
      FieldName = 'Nm_user'
      Size = 30
    end
    object spUserAccess: TWideStringField
      FieldName = 'Access'
      FixedChar = True
      Size = 1
    end
    object spUserGroupUser: TWideStringField
      FieldName = 'GroupUser'
      Size = 10
    end
  end
end
