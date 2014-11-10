unit APNoUrut;

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
  TAPNOUrutForm = class(TtemplateForm)
    connTrading: TADOConnection;
    APNoUrut: TADODataSet;
    dsAPNoUrut: TDataSource;
    dspxkode: TDataSource;
    pxkode: TADODataSet;
    pxkodeType: TStringField;
    pxkodelBrg: TStringField;
    pxkodelBeli: TStringField;
    pxkodelJual: TStringField;
    pxkodeJtran: TStringField;
    APNoUrutTYPE: TStringField;
    APNoUrutKODE: TStringField;
    APNoUrutNOAKHIR: TIntegerField;
    APNoUrutTGLU: TDateTimeField;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1KODE: TcxGridDBColumn;
    cxGrid1DBTableView1NOAKHIR: TcxGridDBColumn;
    cxButton1: TcxButton;
    taKeterangan: TAction;
    procedure FormCreate(Sender: TObject);
    procedure taKeteranganExecute(Sender: TObject);
    procedure APNoUrutNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  APNOUrutForm: TAPNOUrutForm;

implementation

uses APNoUrutKet;

{$R *.dfm}

procedure TAPNOUrutForm.APNoUrutNewRecord(DataSet: TDataSet);
begin
  inherited;
  APNoUrutNOAKHIR.Value := 0;
end;

procedure TAPNOUrutForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    APNoUrut.Open;
    pxkode.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TAPNOUrutForm.taKeteranganExecute(Sender: TObject);
begin
  inherited;
  APnourutketForm := TAPnourutketForm.Create(self);
  ApnourutketForm.Position := poScreenCenter;
  APnourutketForm.show;
end;

end.
