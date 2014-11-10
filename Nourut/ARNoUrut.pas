unit ARNoUrut;

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
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, ADODB, cxDBLookupComboBox, Menus,
  cxButtons;

type
  TARNoUrutForm = class(TtemplateForm)
    taKeterangan: TAction;
    connTrading: TADOConnection;
    ARNoUrut: TADODataSet;
    ARNoUrutTYPE: TStringField;
    ARNoUrutKODE: TStringField;
    ARNoUrutNOAKHIR: TIntegerField;
    ARNoUrutTGLU: TDateTimeField;
    dsARNoUrut: TDataSource;
    dspxkode: TDataSource;
    pxkode: TADODataSet;
    pxkodeType: TStringField;
    pxkodelBrg: TStringField;
    pxkodelBeli: TStringField;
    pxkodelJual: TStringField;
    pxkodeJtran: TStringField;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1KODE: TcxGridDBColumn;
    cxGrid1DBTableView1NOAKHIR: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure taKeteranganExecute(Sender: TObject);
    procedure ARNoUrutNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ARNoUrutForm: TARNoUrutForm;

implementation

uses ARNoUrutKet;

{$R *.dfm}

procedure TARNoUrutForm.ARNoUrutNewRecord(DataSet: TDataSet);
begin
  inherited;
  ARNoUrutNOAKHIR.Value := 0;
end;

procedure TARNoUrutForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    ARNoUrut.Open;
    pxkode.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TARNoUrutForm.taKeteranganExecute(Sender: TObject);
begin
  inherited;
  ARnourutketForm := TARnourutketForm.Create(self);
  ARnourutketForm.Position := poScreenCenter;
  ARnourutketForm.show;
end;

end.
