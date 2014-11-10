unit INNoUrutket;

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
  TinnourutketForm = class(TtemplateForm)
    innourutketerangan: TADODataSet;
    innourutketeranganJTRAN: TStringField;
    innourutketeranganNOTRANS: TStringField;
    innourutketeranganTGLU: TDateTimeField;
    dsinnourutketerangan: TDataSource;
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
  innourutketForm: TinnourutketForm;

implementation
uses
  INNoUrut;
{$R *.dfm}

procedure TinnourutketForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  innourutketerangan.Close;
end;

procedure TinnourutketForm.FormShow(Sender: TObject);
begin
  inherited;
  innourutketerangan.Close;
  innourutketerangan.Parameters.ParamByName('Type_').Value := INNoUrutForm.INNoUrutTYPE.Value;
  innourutketerangan.Open;
end;

end.
