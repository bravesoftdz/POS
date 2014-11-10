unit historiStock;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus, ADODB,
  StdCtrls, cxButtons, cxTextEdit, cxGridTableView, ShellAnimations, XPMan,
  DBActns, ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, cxGroupBox, ExtCtrls, cxPC;

type
  ThistoriStockForm = class(TtemplateForm)
    lbl1: TLabel;
    GudangID: TcxTextEdit;
    cxButton7: TcxButton;
    GudangNama: TcxTextEdit;
    lbl3: TLabel;
    BarangFormID: TcxTextEdit;
    cxButton1: TcxButton;
    BarangFormNama: TcxTextEdit;
    lbl4: TLabel;
    barangToID: TcxTextEdit;
    BarangToNAma: TcxTextEdit;
    cxButton2: TcxButton;
    connTrading: TADOConnection;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    Gudang: TADODataSet;
    GudangGdgID: TStringField;
    GudangKeterangan: TStringField;
    sp_histori_stock: TADOStoredProc;
    dsHistoriStock: TDataSource;
    sp_histori_stockBrgID: TWideStringField;
    sp_histori_stockGdgID: TWideStringField;
    sp_histori_stockFirst_: TFMTBCDField;
    sp_histori_stockIN_: TFMTBCDField;
    sp_histori_stockOut_: TFMTBCDField;
    sp_histori_stockLast_: TFMTBCDField;
    sp_histori_stockNM_Brg: TWideStringField;
    sp_histori_stockNM_Gdg: TWideStringField;
    cxGrid1DBTableView1BrgID: TcxGridDBColumn;
    cxGrid1DBTableView1First_: TcxGridDBColumn;
    cxGrid1DBTableView1IN_: TcxGridDBColumn;
    cxGrid1DBTableView1Out_: TcxGridDBColumn;
    cxGrid1DBTableView1Last_: TcxGridDBColumn;
    cxGrid1DBTableView1NM_Brg: TcxGridDBColumn;
    taCetak: TAction;
    taCariGudang: TAction;
    taBarangForm: TAction;
    taBarangTo: TAction;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    taTampilkan: TAction;
    procedure FormCreate(Sender: TObject);
    procedure taCariGudangExecute(Sender: TObject);
    procedure taBarangFormExecute(Sender: TObject);
    procedure taBarangToExecute(Sender: TObject);
    procedure taTampilkanExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  historiStockForm: ThistoriStockForm;

implementation

uses Search;

{$R *.dfm}

procedure ThistoriStockForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    Gudang.Close;
    Gudang.Open;
    Barang.Close;
    Barang.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure ThistoriStockForm.taBarangFormExecute(Sender: TObject);
begin
  inherited;
  Barang.Close;
  barang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := barang;
  if SearchForm.ShowModal =mrOk then
    begin
      BarangFormID.Text   := BarangBRGID.Value;
      BarangFormNama.Text := BarangNama1.Value;
      BarangFormID.SetFocus;
    end
  else
  begin
    BarangFormID.setfocus;
  end;
end;

procedure ThistoriStockForm.taBarangToExecute(Sender: TObject);
begin
  inherited;
  Barang.Close;
  barang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := barang;
  if SearchForm.ShowModal =mrOk then
    begin
      barangToID.Text := BarangBRGID.Value;
      BarangToNAma.Text := BarangNama1.Value;
      barangToID.SetFocus;
    end
  else
  begin
    barangToID.setfocus;
  end;
  SearchForm.Close;
end;

procedure ThistoriStockForm.taCariGudangExecute(Sender: TObject);
begin
  inherited;
  Gudang.Close;
  Gudang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
  searchForm.dscari.DataSet := Gudang;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 100;
  SearchForm.Hide;
  if SearchForm.ShowModal =mrOk then
    begin
      GudangID.Text := GudangGdgID.Value;
      GudangNama.Text := GudangKeterangan.Value;
      GudangID.SetFocus;
    end
  else
  begin
    GudangID.setfocus;
  end;
  searchForm.Close;
end;

procedure ThistoriStockForm.taTampilkanExecute(Sender: TObject);
begin
  inherited;
  if (BarangFormID.Text = '') and (barangToID.Text <> '') then
  begin
     ShowMessage('Harap diisi terlebih dahulu '#10#13'sebelum melakukan eksekusi Tombol Tampilkan');
     BarangFormID.SetFocus;
     Abort;
  end;
  if (BarangFormID.Text <> '') and (barangToID.Text = '') then
  begin
     ShowMessage('Harap diisi terlebih dahulu '#10#13'sebelum melakukan eksekusi Tombol Tampilkan');
     barangToID.SetFocus;
     Abort;
  end;
  if (barangToID.Text = '') and (BarangFormID.Text = '') then
  begin
    with sp_histori_stock do
    begin
      close;
      Parameters.ParamByName('gdgID_').Value        := GudangID.Text;
      Parameters.ParamByName('BrgIDAwal_').Value    := '0';
      Parameters.ParamByName('BrgIDAkhir_').Value   := 'zzz';
      Parameters.ParamByName('Tgl').Value           := Now;
      Open;
    end;
  end else
  begin
    with sp_histori_stock do
    begin
      close;
      Parameters.ParamByName('gdgID_').Value        := GudangID.Text;
      Parameters.ParamByName('BrgIDAwal_').Value    := BarangFormID.Text;
      Parameters.ParamByName('BrgIDAkhir_').Value   := barangToID.Text;
      Parameters.ParamByName('Tgl').Value           := Now;
      Open;
    end;
  end;
  cxGrid1.SetFocus;
end;

end.
