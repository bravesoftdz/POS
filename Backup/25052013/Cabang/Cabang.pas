unit Cabang;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxPC, ADODB, IniFiles,
  ExtCtrls, StdCtrls, ShellAnimations, XPMan;

type
  TCabangForm = class(TtemplateForm)
    connTrading: TADOConnection;
    Cabang: TADODataSet;
    dsCabang: TDataSource;
    CabangCABID: TStringField;
    CabangKeterangan: TStringField;
    CabangtglU: TDateTimeField;
    cxGrid1DBTableView1CABID: TcxGridDBColumn;
    cxGrid1DBTableView1Keterangan: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure CabangBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CabangForm: TCabangForm;

implementation

{$R *.dfm}

procedure TCabangForm.CabangBeforeInsert(DataSet: TDataSet);
var
Ini : TIniFile;
versi : Integer;
begin
  inherited;
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.Ini'));
  if (Ini.ReadInteger('Version','Version',versi) = 1) or (Ini.ReadInteger('Version','Version',versi) = 0) then
  begin
    MessageDlg('Maaf tidak dapat menambah data'#13'Silahkan lakukan upgrade version terlebih dahulu',(mtError),[mbOK],0);
    Cabang.Cancel;
    abort;
  end;
end;

procedure TCabangForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mutex <> 0  then CloseHandle(mutex);  
  inherited;
end;

procedure TCabangForm.FormCreate(Sender: TObject);
begin
  inherited;
  mutex := CreateMutex(nil, True, 'CabangForm');
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
      Cabang.Open;
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
end;

end.
