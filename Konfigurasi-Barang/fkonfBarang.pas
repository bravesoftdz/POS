unit fkonfBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, templatestayontop, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  StdCtrls, dxBarDBNav, dxBar, ImgList, DBActns, ActnList, ExtCtrls, cxPC, konfbarang,
  Mask, DBCtrls;

type
  Tfkonfbarangform = class(TFormTemplateStayOnTop)
    Label1: TLabel;
    Label4: TLabel;
    edNama: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdNourut: TDBEdit;
    Label5: TLabel;
    EdKodeBarang: TDBEdit;
    Label6: TLabel;
    EDKodeGudang: TDBEdit;
    Label7: TLabel;
    edSatuan: TDBEdit;
    Label8: TLabel;
    EdQty: TDBEdit;
    Label9: TLabel;
    EDHrgSatuan: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    EdNamaBarang: TLabel;
    EDNamaGudang: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkonfbarangform: Tfkonfbarangform;

implementation

{$R *.dfm}

end.
