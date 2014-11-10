unit INNoUrut;

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
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, ADODB, cxDBLookupComboBox, cxTextEdit,
  Menus, cxButtons;

type
  TINNoUrutForm = class(TtemplateForm)
    connTrading: TADOConnection;
    INNoUrut: TADODataSet;
    INNoUrutTYPE: TStringField;
    INNoUrutKODE: TStringField;
    INNoUrutNOAKHIR: TIntegerField;
    INNoUrutTGLU: TDateTimeField;
    dsINNoUrut: TDataSource;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1KODE: TcxGridDBColumn;
    cxGrid1DBTableView1NOAKHIR: TcxGridDBColumn;
    pxkode: TADODataSet;
    pxkodeType: TStringField;
    pxkodelBrg: TStringField;
    pxkodelBeli: TStringField;
    pxkodelJual: TStringField;
    pxkodeJtran: TStringField;
    dspxkode: TDataSource;
    cxButton1: TcxButton;
    taKeterangan: TAction;
    procedure FormCreate(Sender: TObject);
    procedure INNoUrutNewRecord(DataSet: TDataSet);
    procedure taKeteranganExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INNoUrutForm: TINNoUrutForm;

implementation

uses INNoUrutket;

{$R *.dfm}

procedure TINNoUrutForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    INNoUrut.Open;
    pxkode.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TINNoUrutForm.INNoUrutNewRecord(DataSet: TDataSet);
begin
  inherited;
  INNoUrutNOAKHIR.Value := 0;
end;

procedure TINNoUrutForm.taKeteranganExecute(Sender: TObject);
begin
  inherited;
  innourutketForm := TinnourutketForm.Create(self);
  innourutketForm.Position := poScreenCenter;
  innourutketForm.show;
end;

end.
