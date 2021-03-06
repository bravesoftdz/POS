unit ValutaSales;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, DBActns,
  ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxPC, IniFiles, ADODB;

type
  TValutaSalesForm = class(TtemplateForm)
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    connTrading: TADOConnection;
    Valuta: TADODataSet;
    dsValuta: TDataSource;
    ValutaVALID: TWideStringField;
    ValutaKETERANGAN: TWideStringField;
    ValutaTGLU: TDateTimeField;
    ValutaStatus_: TWideStringField;
    ValutaTukar: TADODataSet;
    dsValutaTukar: TDataSource;
    ValutaTukarTUKARID: TSmallintField;
    ValutaTukarVALID: TWideStringField;
    ValutaTukarTUKAR: TFMTBCDField;
    ValutaTukarTGL1: TDateField;
    ValutaTukarTGL2: TDateField;
    ValutaTukarTglU: TDateTimeField;
    cxGrid1DBTableView1VALID: TcxGridDBColumn;
    cxGrid1DBTableView1KETERANGAN: TcxGridDBColumn;
    cxGrid1DBTableView2TUKAR: TcxGridDBColumn;
    cxGrid1DBTableView2TGL1: TcxGridDBColumn;
    cxGrid1DBTableView2TGL2: TcxGridDBColumn;
    procedure ValutaBeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ValutaBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ValutaSalesForm: TValutaSalesForm;

implementation

{$R *.dfm}

procedure TValutaSalesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Mutex <> 0 then CloseHandle(mutex);
  inherited;
end;

procedure TValutaSalesForm.FormCreate(Sender: TObject);
begin
 Inherited;
 mutex := CreateMutex(nil, True, 'ValutaSalesForm');
 if (mutex = 0) or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]) then
 begin
  MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
  PChar(application.exename), MB_OK or MB_ICONERROR);
  Self.close;
 end else
 begin
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    Valuta.Open;
    valutaTukar.Open;
  //      str := ExtractFilePath(Application.ExeName)+'skins';
  //      sSkinManager1.SkinDirectory :=  str ;
  //      sSkinManager1.SkinName      := 'Office2007';
  //      sSkinManager1.Active := true;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
 end;
End;

procedure TValutaSalesForm.ValutaBeforeInsert(DataSet: TDataSet);
var
Ini : TIniFile;
versi : Integer;
begin
  inherited;
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.Ini'));
  if (Ini.ReadInteger('Version','Version',versi) = 1) or (Ini.ReadInteger('Version','Version',versi) = 0) then
  begin
    MessageDlg('Maaf tidak dapat menambah data'#13'Silahkan lakukan upgrade version terlebih dahulu',(mtError),[mbOK],0);
    Valuta.Cancel;
    abort;
  end;
end;

procedure TValutaSalesForm.ValutaBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValutaStatus_.Value := 'AR';
end;

end.
