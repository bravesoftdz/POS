unit ARNoUrutKet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridTableView,
  ShellAnimations, XPMan, DBActns, ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, ADODB, cxDBLookupComboBox;

type
  TARNoUrutKetForm = class(TtemplateForm)
    ARnourutketerangan: TADODataSet;
    dsinnourutketerangan: TDataSource;
    ARnourutketeranganJTRAN: TStringField;
    ARnourutketeranganNOTRANS: TStringField;
    ARnourutketeranganTGLU: TDateTimeField;
    cxGrid1DBTableView1JTRAN: TcxGridDBColumn;
    cxGrid1DBTableView1NOTRANS: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ARNoUrutKetForm: TARNoUrutKetForm;

implementation
uses ARNoUrut;
{$R *.dfm}

end.
