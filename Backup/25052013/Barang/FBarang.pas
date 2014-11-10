unit FBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, templatestayontop, Barang, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, ToolWin, ComCtrls, cxPC, ExtCtrls,
  DBActns, ActnList, ImgList, DBCtrls, StdCtrls, Mask, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinsdxBarPainter, dxBar, dxBarDBNav, cxClasses, DB,
  ADODB, IniFiles;

type
  TTransaksiBarang = class(TFormTemplateStayOnTop)
    lbl1: TLabel;
    lbl2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    lbl3: TLabel;
    DBEdit4: TDBEdit;
    lbl4: TLabel;
    DBEdit5: TDBEdit;
    lbl5: TLabel;
    DBEdit6: TDBEdit;
    lbl6: TLabel;
    DBEdit7: TDBEdit;
    lbl7: TLabel;
    DBEdit8: TDBEdit;
    lbl8: TLabel;
    DBEdit9: TDBEdit;
    lbl9: TLabel;
    DBEdit10: TDBEdit;
    lbl10: TLabel;
    DBEdit11: TDBEdit;
    lbl11: TLabel;
    DBEdit12: TDBEdit;
    lbl12: TLabel;
    DBEdit13: TDBEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Jenis: TADODataSet;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    Merek: TADODataSet;
    dsMerek: TDataSource;
    dsJenis: TDataSource;
    dsGolongan: TDataSource;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    dsType: TDataSource;
    PxType: TADODataSet;
    PxTypeTypeID: TStringField;
    PxTypeKeterangan: TStringField;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    sp_find_Barang: TADOStoredProc;
    sp_find_BarangNama: TStringField;
    DBEdit1: TDBEdit;
    cxTabSheet2: TcxTabSheet;
    lbl13: TLabel;
    DBEdit14: TDBEdit;
    lbl15: TLabel;
    DBEdit16: TDBEdit;
    lbl14: TLabel;
    DBEdit15: TDBEdit;
    lbl16: TLabel;
    DBEdit17: TDBEdit;
    lbl17: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    lbl19: TLabel;
    lbl18: TLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    Rak: TADODataSet;
    RakRakID: TStringField;
    RakKeterangan: TStringField;
    dsRak: TDataSource;
    lbl20: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    DBEdit21: TDBEdit;
    warna: TADODataSet;
    dsWarna: TDataSource;
    warnaWRNID: TStringField;
    warnaKeterangan: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransaksiBarang: TTransaksiBarang;

implementation

{$R *.dfm}

procedure TTransaksiBarang.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  Jenis.Close;
  Jenis.Open;
  Golongan.Close;
  Golongan.Open;
  Merek.Close;
  Merek.Open;
  PxType.Close;
  PxType.Open;
  warna.Close;
  warna.Open;
end;

procedure TTransaksiBarang.FormActivate(Sender: TObject);
begin
  inherited;
  if DBEdit1.Enabled = True then dbedit1.SetFocus else
  DBEdit2.SetFocus;
  Jenis.Close;
  Jenis.Open;
  Golongan.Close;
  Golongan.Open;
  Merek.Close;
  Merek.Open;
  PxType.Close;
  PxType.Open;
  Rak.Close;
  Rak.Open;
  warna.Close;
  warna.Open;
  cxPageControl1.ActivePage := cxTabSheet1;
end;

procedure TTransaksiBarang.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  Jenis.Close;
  Golongan.Close;
  Merek.Close;
  PxType.Close;
  warna.Close;
end;

procedure TTransaksiBarang.FormCreate(Sender: TObject);
begin
  inherited;
  if BarangForm.Barang.State in [dsEdit] then
  begin
    With BarangForm.sp_cek_profit_System do
    begin
      close;
      Parameters.ParamByName('kode_').Value := BarangForm.BarangBRGID.Value;
      Open;
    end;
    if not BarangForm.sp_cek_profit_System.IsEmpty then
    begin
      BarangForm.Baranghjual1.Value := BarangForm.sp_cek_profit_SystemH1.Value;
      BarangForm.Baranghjual2.Value := BarangForm.sp_cek_profit_SystemH2.Value;
      BarangForm.Baranghjual3.Value := BarangForm.sp_cek_profit_SystemH3.Value;
    end;
//    BarangForm.Barang.Refresh;
  end;
end;

procedure TTransaksiBarang.FormShow(Sender: TObject);
var
Ini : TIniFile;
versi : Integer;
begin
  inherited;
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.Ini'));
  if (Ini.ReadInteger('Version','Version',versi) = 1) or (Ini.ReadInteger('Version','Version',versi) = 0) or (Ini.ReadInteger('Version','Version',versi) = 2)then
  begin
    DBEdit1.Enabled := True;
    DBEdit1.Color := clWindow;
    DBEdit1.SetFocus;
  end else
  begin
    // Kode Automatik
    DBEdit1.Enabled := False;
    DBEdit1.Color := clSilver;
    DBEdit2.SetFocus;
  end;
end;

end.
