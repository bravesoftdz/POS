unit APNoUrutKet;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  cxGridTableView, ShellAnimations, XPMan, DBActns, ActnList, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, cxDBLookupComboBox;

type
  TAPNoUrutKetForm = class(TtemplateForm)
    APnourutketerangan: TADODataSet;
    dsinnourutketerangan: TDataSource;
    APnourutketeranganJTRAN: TStringField;
    APnourutketeranganNOTRANS: TStringField;
    APnourutketeranganTGLU: TDateTimeField;
    cxGrid1DBTableView1JTRAN: TcxGridDBColumn;
    cxGrid1DBTableView1NOTRANS: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  APNoUrutKetForm: TAPNoUrutKetForm;

implementation
uses APNoUrut;
{$R *.dfm}

procedure TAPNoUrutKetForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  APnourutketerangan.Close;
end;

procedure TAPNoUrutKetForm.FormShow(Sender: TObject);
begin
  inherited;
  APnourutketerangan.Close;
  APnourutketerangan.Parameters.ParamByName('Type_').Value := APNoUrutForm.APNoUrutTYPE.Value;
  APnourutketerangan.Open;
end;

end.
