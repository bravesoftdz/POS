unit JHarga;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ShellAnimations,
  XPMan, DBActns, ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  ExtCtrls, cxPC, StdCtrls, cxDBLookupComboBox, ADODB, cxTextEdit;

type
  TJHargaForm = class(TtemplateForm)
    JHarga: TADODataSet;
    connTrading: TADOConnection;
    dsJharga: TDataSource;
    JHargaHrgID: TStringField;
    JHargaKeterangan: TStringField;
    JHargaValID: TStringField;
    JHargaPresen_: TFMTBCDField;
    JHargaPresen_nilai: TFMTBCDField;
    JHargaTglu: TDateTimeField;
    cxGrid1DBTableView1HrgID: TcxGridDBColumn;
    cxGrid1DBTableView1Keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1ValID: TcxGridDBColumn;
    Valuta: TADODataSet;
    dsValuta: TDataSource;
    ValutaVALID: TWideStringField;
    ValutaKETERANGAN: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JHargaForm: TJHargaForm;

implementation

{$R *.dfm}

procedure TJHargaForm.FormActivate(Sender: TObject);
begin
  inherited;
  JHarga.Close;
  JHarga.Open;
end;

procedure TJHargaForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    JHarga.Open;
    Valuta.Open;//
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

end.
