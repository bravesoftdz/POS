unit info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxNavBar2Painter, dxNavBar, dxNavBarCollns,
  cxClasses, dxNavBarBase;

type
  TInformasiFrame = class(TFrame)
    dxNavBar1: TdxNavBar;
    PEMBELIAN: TdxNavBarGroup;
    PENJUALAN: TdxNavBarGroup;
    REPORTING: TdxNavBarGroup;
    NBPurchaseOrder: TdxNavBarItem;
    NBSalesOrder: TdxNavBarItem;
    NBPurchaseRequest: TdxNavBarItem;
    NBSalesRequest: TdxNavBarItem;
    NBSalesReturn: TdxNavBarItem;
    NBPurchaseReturn: TdxNavBarItem;
    SALDO: TdxNavBarGroup;
    NBSaldoAwalBarang: TdxNavBarItem;
    NBSaldoAwalHutang: TdxNavBarItem;
    NBSaldoAwalPiutang: TdxNavBarItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
