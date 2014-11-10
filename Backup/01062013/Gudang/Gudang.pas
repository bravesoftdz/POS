unit Gudang;

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
  ShellAnimations, XPMan, ExtCtrls, StdCtrls;

type
  TGudangForm = class(TtemplateForm)
    connTrading: TADOConnection;
    Gudang: TADODataSet;
    dsGudang: TDataSource;
    GudangGdgID: TStringField;
    GudangKeterangan: TStringField;
    GudangTglU: TDateTimeField;
    cxGrid1DBTableView1GdgID: TcxGridDBColumn;
    cxGrid1DBTableView1Keterangan: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure GudangBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GudangForm: TGudangForm;

implementation

{$R *.dfm}

procedure TGudangForm.FormCreate(Sender: TObject);
begin
  inherited;
//  mutex := CreateMutex(nil, True, 'GudangForm');
//  if (mutex = 0) or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]) then
//  begin
//      MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
//      PChar(application.exename), MB_OK or MB_ICONERROR);
//      Self.close;
//  end else
//  begin
    conntrading.Close;
    conntrading.ConnectionString := DBConnectMasterMysql;
    try
      Gudang.Open;
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
//  end;
end;

procedure TGudangForm.GudangBeforeInsert(DataSet: TDataSet);
var
Ini : TIniFile;
versi : Integer;
begin
  inherited;
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.Ini'));
  if (Ini.ReadInteger('Version','Version',versi) = 1) or (Ini.ReadInteger('Version','Version',versi) = 0) then
  begin
    MessageDlg('Maaf tidak dapat menambah data'#13'Silahkan lakukan upgrade version terlebih dahulu',(mtError),[mbOK],0);
    Gudang.Cancel;
    abort;
  end;
end;

end.
