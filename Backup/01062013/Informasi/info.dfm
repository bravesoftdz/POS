object InformasiFrame: TInformasiFrame
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Align = alClient
    ActiveGroupIndex = 1
    TabOrder = 0
    View = 12
    object SALDO: TdxNavBarGroup
      Caption = 'SALDO'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NBSaldoAwalBarang
        end
        item
          Item = NBSaldoAwalHutang
        end
        item
          Item = NBSaldoAwalPiutang
        end>
    end
    object PEMBELIAN: TdxNavBarGroup
      Caption = 'PEMBELIAN'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NBPurchaseRequest
        end
        item
          Item = NBPurchaseOrder
        end
        item
          Item = NBPurchaseReturn
        end>
    end
    object PENJUALAN: TdxNavBarGroup
      Caption = 'PENJUALAN'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NBSalesRequest
        end
        item
          Item = NBSalesOrder
        end
        item
          Item = NBSalesReturn
        end>
    end
    object REPORTING: TdxNavBarGroup
      Caption = 'REPORTING'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <>
    end
    object NBPurchaseOrder: TdxNavBarItem
      Caption = 'Purchase Order'
      Hint = 'Modul Purchase Order'
    end
    object NBSalesOrder: TdxNavBarItem
      Caption = 'Sales Order'
      Hint = 'Modul Sales Order'
    end
    object NBPurchaseRequest: TdxNavBarItem
      Caption = 'Purchase Request'
      Hint = 'Modul Purchase Request'
    end
    object NBSalesRequest: TdxNavBarItem
      Caption = 'Sales Request'
      Hint = 'Modul Sales Request'
    end
    object NBSalesReturn: TdxNavBarItem
      Caption = 'Sales Return'
      Hint = 'Modul Sales Return'
    end
    object NBPurchaseReturn: TdxNavBarItem
      Caption = 'Purchase Return'
      Hint = 'Modul Purchase Return'
    end
    object NBSaldoAwalBarang: TdxNavBarItem
      Caption = 'Saldo Awal Barang'
    end
    object NBSaldoAwalHutang: TdxNavBarItem
      Caption = 'Saldo Awal Hutang'
    end
    object NBSaldoAwalPiutang: TdxNavBarItem
      Caption = 'Saldo Awal Piutang'
    end
  end
end
