unit Barang;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxPC, ADODB,
  cxCheckBox, ShellAnimations, XPMan, ExtCtrls, StdCtrls;

type
  TBarangForm = class(TtemplateForm)
    connTrading: TADOConnection;
    Barang: TADODataSet;
    dsBarang: TDataSource;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    BarangNama2: TStringField;
    BarangJenis: TStringField;
    BarangStn1: TStringField;
    BarangStn2: TStringField;
    BarangStn3: TStringField;
    BarangMaxi: TFMTBCDField;
    BarangMini: TFMTBCDField;
    BarangIsi1: TFMTBCDField;
    BarangIsi2: TFMTBCDField;
    BarangHpp: TFMTBCDField;
    Baranghbeli: TFMTBCDField;
    Baranghjual1: TFMTBCDField;
    Baranghjual2: TFMTBCDField;
    Baranghjual3: TFMTBCDField;
    Baranglks: TStringField;
    Barangsup: TStringField;
    Baranggol: TStringField;
    Barangmerek: TStringField;
    Barangtype: TStringField;
    Barangmodel: TStringField;
    Barangklink: TStringField;
    Barangstatus: TSmallintField;
    Barangbarcode: TStringField;
    Barangnamabar: TStringField;
    Barangberat: TFMTBCDField;
    Barangvol: TFMTBCDField;
    Barangslevel: TFMTBCDField;
    Barangkuali: TStringField;
    Barangwrn: TStringField;
    Barangmtf: TStringField;
    Barangsize: TStringField;
    Barangtglu: TDateTimeField;
    BaranglNonkonsinyasi: TStringField;
    BaranglAktif: TStringField;
    Barangcab: TStringField;
    BaranglstatAll: TBooleanField;
    cxGrid1DBTableView1BRGID: TcxGridDBColumn;
    cxGrid1DBTableView1Nama1: TcxGridDBColumn;
    cxGrid1DBTableView1lAktif: TcxGridDBColumn;
    sp_cek_profit_System: TADOStoredProc;
    sp_cek_profit_SystemH1: TFMTBCDField;
    sp_cek_profit_SystemH2: TFMTBCDField;
    sp_cek_profit_SystemH3: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure BarangAfterInsert(DataSet: TDataSet);
    procedure BarangAfterEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure BaranghbeliValidate(Sender: TField);
    procedure BarangBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  BarangForm: TBarangForm;

implementation
Uses FBarang;
{$R *.dfm}



procedure TBarangForm.BarangAfterEdit(DataSet: TDataSet);
begin
  inherited;
//  Barang.Cancel;
  TransaksiBarang := TTransaksiBarang.create(nil);
  TransaksiBarang.Caption := 'EDIT DATA BARANG';
  TransaksiBarang.dbedit1.Enabled := False;
  TransaksiBarang.dbedit1.Color := clSilver;
  TransaksiBarang.ShowModal;
end;

procedure TBarangForm.BarangAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  Barang.Cancel;
  TransaksiBarang := TTransaksiBarang.create(nil);
  TransaksiBarang.Caption := 'INSERT DATA BARANG';
  TransaksiBarang.dbedit1.Enabled := True;
  TransaksiBarang.dbedit1.Color := clWindow;
  TransaksiBarang.ShowModal;
end;

procedure TBarangForm.BarangBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  With sp_cek_profit_System do
//  begin
//    close;
//    Parameters.ParamByName('kode_').Value := BarangBRGID.Value;
//    ExecProc;
//  end;
end;

procedure TBarangForm.BaranghbeliValidate(Sender: TField);
begin
  inherited;
  if Baranghbeli.AsCurrency > 0  then
  begin
    BarangHpp.AsCurrency := Baranghbeli.AsCurrency;
    Baranghjual3.AsCurrency := Baranghbeli.AsCurrency * 1;
    Baranghjual2.AsCurrency := Baranghjual3.AsCurrency * BarangIsi2.AsCurrency;
    Baranghjual1.AsCurrency := Baranghjual2.AsCurrency * BarangIsi1.AsCurrency;
  end;
end;

procedure TBarangForm.FormActivate(Sender: TObject);
begin
  inherited;
  Barang.Close;
  Barang.Open;
end;

procedure TBarangForm.FormCreate(Sender: TObject);
begin
  inherited;

//  mutex := CreateMutex(nil, True, 'BarangForm');
//  if (mutex = 0) or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]) then //or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]
//  begin
//      MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
//      PChar(application.exename), MB_OK or MB_ICONERROR);
//      Self.close;
//  end else
//  begin
    conntrading.Close;
    conntrading.ConnectionString := DBConnectMasterMysql;
    try
      Barang.Open;
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

end.

