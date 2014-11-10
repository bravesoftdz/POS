unit HJualPerKode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, templatestayontop, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxBarDBNav,
  dxBar, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, cxContainer,
  cxEdit, Menus, cxButtons, cxTextEdit, cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxClasses,
  Mask, DBCtrls, ADODB, cxCheckBox, cxDBLookupComboBox, cxCalc;

type
  THJualPerKodeForm = class(TFormTemplateStayOnTop)
    cxGroupBox1: TcxGroupBox;
    lbl1: TLabel;
    GudangID: TcxTextEdit;
    cxButton7: TcxButton;
    GudangNama: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    JHarga: TADODataSet;
    JHargaHrgID: TStringField;
    JHargaKeterangan: TStringField;
    JHargaValID: TStringField;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    BarangStn1: TStringField;
    BarangStn2: TStringField;
    BarangStn3: TStringField;
    BarangIsi1: TFMTBCDField;
    BarangIsi2: TFMTBCDField;
    HJual: TADODataSet;
    HJualCabID: TStringField;
    HJualHrgID: TStringField;
    HJualBrgID: TStringField;
    HJualHpp: TFMTBCDField;
    HJualProfit: TFMTBCDField;
    HJualProfitnilai: TFMTBCDField;
    HJualH1: TFMTBCDField;
    HJualH2: TFMTBCDField;
    HJualH3: TFMTBCDField;
    HJualCreate_id: TStringField;
    HJualCreate_Tgl: TDateTimeField;
    HJualModify_id: TStringField;
    HJualModify_Tgl: TDateTimeField;
    dsHJual: TDataSource;
    cxGroupBox3: TcxGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    cxButton6: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    taCariHarga: TAction;
    taLoad: TAction;
    taTampil: TAction;
    taCetak: TAction;
    lbl2: TLabel;
    DBEdit6: TDBEdit;
    ds_find_barang: TDataSource;
    sp_Tampil: TADOStoredProc;
    sp_TampilCabID: TStringField;
    sp_TampilHrgID: TStringField;
    sp_TampilBrgID: TStringField;
    sp_TampilHpp: TFMTBCDField;
    sp_TampilProfit: TFMTBCDField;
    sp_TampilProfitnilai: TFMTBCDField;
    sp_TampilH1: TFMTBCDField;
    sp_TampilH2: TFMTBCDField;
    sp_TampilH3: TFMTBCDField;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    lbl8: TLabel;
    cbUrut: TComboBox;
    chkAll: TcxCheckBox;
    lblFrom: TLabel;
    lblTo: TLabel;
    edtKodeTo: TcxTextEdit;
    edtKodeFrom: TcxTextEdit;
    btnAwal: TcxButton;
    btnAkhi: TcxButton;
    edtNamaTo: TcxTextEdit;
    edtNamaFrom: TcxTextEdit;
    btBatal: TcxButton;
    btTampil: TcxButton;
    taCariAwal: TAction;
    taCariAkhir: TAction;
    taLoadAll: TAction;
    taBatal: TAction;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    Jenis: TADODataSet;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    Merek: TADODataSet;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1BrgID: TcxGridDBColumn;
    cxGrid1DBTableView1Hpp: TcxGridDBColumn;
    cxGrid1DBTableView1Profit: TcxGridDBColumn;
    cxGrid1DBTableView1Profitnilai: TcxGridDBColumn;
    cxGrid1DBTableView1H3: TcxGridDBColumn;
    cxGrid1DBTableView1H2: TcxGridDBColumn;
    cxGrid1DBTableView1H1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Barang_: TADODataSet;
    Barang_BRGID: TStringField;
    Barang_Nama1: TStringField;
    Barang_Stn1: TStringField;
    Barang_Stn2: TStringField;
    Barang_Stn3: TStringField;
    Barang_Isi1: TFMTBCDField;
    Barang_Isi2: TFMTBCDField;
    ds1: TDataSource;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    sp_input_H_Jual: TADOStoredProc;
    ds2: TDataSource;
    taMassal: TAction;
    taLoadHpp: TAction;
    sp_find_barang: TADOStoredProc;
    sp_find_barangNama: TStringField;
    sp_find_barangStn1: TStringField;
    sp_find_barangStn2: TStringField;
    sp_find_barangStn3: TStringField;
    sp_find_barangIsi1: TFMTBCDField;
    sp_find_barangIsi2: TFMTBCDField;
    sp_find_barangHPP_: TFMTBCDField;
    sp_prosesloadhpp: TADOStoredProc;
    sp_prosesloadhpphasil: TIntegerField;
    sphishbelibrg: TADOStoredProc;
    PXSystem: TADODataSet;
    PXSystemMETODE: TWideStringField;
    sphishbelibrgCabID: TStringField;
    sphishbelibrgHrgID: TStringField;
    sphishbelibrgBrgID: TStringField;
    sphishbelibrgHpp: TFMTBCDField;
    sphishbelibrgProfit: TFMTBCDField;
    sphishbelibrgProfitnilai: TFMTBCDField;
    sphishbelibrgH1: TFMTBCDField;
    sphishbelibrgH2: TFMTBCDField;
    sphishbelibrgH3: TFMTBCDField;
    procedure taCariHargaExecute(Sender: TObject);
    procedure taTampilExecute(Sender: TObject);
    procedure cbUrutChange(Sender: TObject);
    procedure taCariAwalExecute(Sender: TObject);
    procedure taCariAkhirExecute(Sender: TObject);
    procedure taLoadAllExecute(Sender: TObject);
    procedure taLoadExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure HJualBrgIDValidate(Sender: TField);
    procedure HJualAfterPost(DataSet: TDataSet);
    procedure HJualProfitValidate(Sender: TField);
    procedure HJualH3Validate(Sender: TField);
    procedure HJualH2Validate(Sender: TField);
    procedure taMassalExecute(Sender: TObject);
    procedure taLoadHppExecute(Sender: TObject);
  private
    Querylocal : TADOQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HJualPerKodeForm: THJualPerKodeForm;

implementation

uses Search, HJual, HJualMassal;

{$R *.dfm}

procedure THJualPerKodeForm.cbUrutChange(Sender: TObject);
begin
  inherited;
  case cburut.ItemIndex of
  0 : begin
        lblFrom.Caption := 'Dari Kode Barang';
        lblTo.Caption := 'S/D Kode Barang';
      end;
  1 : begin
        lblFrom.Caption := 'Dari Kode Jenis';
        lblTo.Caption := 'S/D Kode Jenis';
      end;
  2 : begin
        lblFrom.Caption := 'Dari Kode Golongan';
        lblTo.Caption := 'S/D Kode Golongan';
      end;
  3 : begin
        lblFrom.Caption := 'Dari Kode Merek';
        lblTo.Caption := 'S/D Kode Merek';
      end;
  end;
end;

procedure THJualPerKodeForm.HJualAfterPost(DataSet: TDataSet);
var
  querylocal : TADOQuery;
begin
  inherited;
  with sp_find_table do
  begin
    Close;
    Parameters.ParamByName('brgId_').Value :=HJualBrgID.Value;
    Parameters.ParamByName('CABId_').Value :=HJualCabID.Value;
    Parameters.ParamByName('GDGId_').Value :=HJualHrgID.Value;
    Parameters.ParamByName('table_').Value :='inbarangHJual';
    Open;
  end;
  if sp_find_tableHasil.Value <> '' then
  begin
    With sp_input_H_Jual do
    begin
      close;
      Parameters.ParamByName('BRGID_').Value        := HJualBrgID.Value;
      parameters.ParamByName('HRGID_').Value        := HJualHrgID.Value;
      parameters.ParamByName('CABID_').Value        := HJualCabID.Value;
      parameters.ParamByName('Profit_').Value       := HJualProfit.AsFloat;
      Parameters.ParamByName('ProfitNIlai_').Value  := HJualProfitnilai.AsFloat;
      parameters.ParamByName('H1_').Value           := HJualH1.AsFloat;
      parameters.ParamByName('H2_').Value           := HJualH2.AsFloat;
      parameters.ParamByName('H3_').Value           := HJualH3.AsFloat;
      parameters.ParamByName('ID_').Value           := HJualForm.cUser_;
      parameters.parambyname('stattransaksi').Value := 'Edit';
      parameters.ParamByName('Hpp_').Value          := HJualHpp.AsFloat;
      ExecProc;
    end;
  end else
  begin
    With sp_input_H_Jual do
    begin
      close;
      Parameters.ParamByName('BRGID_').Value        := HJualBrgID.Value;
      parameters.ParamByName('HRGID_').Value        := HJualHrgID.Value;
      parameters.ParamByName('CABID_').Value        := HJualCabID.Value;
      parameters.ParamByName('Profit_').Value       := HJualProfit.AsFloat;
      Parameters.ParamByName('ProfitNIlai_').Value  := HJualProfitnilai.AsFloat;
      parameters.ParamByName('H1_').Value           := HJualH1.AsFloat;
      parameters.ParamByName('H2_').Value           := HJualH2.AsFloat;
      parameters.ParamByName('H3_').Value           := HJualH3.AsFloat;
      parameters.ParamByName('ID_').Value           := HJualForm.cUser_;
      parameters.parambyname('stattransaksi').Value := 'tambah';
      parameters.ParamByName('Hpp_').Value          := HJualHpp.AsFloat;
      ExecProc;
    end;
  end;
end;

procedure THJualPerKodeForm.HJualBrgIDValidate(Sender: TField);
begin
  inherited;
  sp_find_barang.Close;
  sp_find_barang.Parameters.ParamByName('Nama_').Value := HJualBrgID.Value;
  sp_find_barang.Open;
  if not sp_find_barang.IsEmpty then
  HJualHpp.Value := sp_find_barangHPP_.Value else HJualHpp.AsCurrency := 0;
end;

procedure THJualPerKodeForm.HJualH2Validate(Sender: TField);
begin
  inherited;
  if HJualH2.AsCurrency > 0 then
  Begin
    HJualH1.AsCurrency          := HJualH2.AsCurrency * sp_find_barangIsi1.AsCurrency;
  End;
end;

procedure THJualPerKodeForm.HJualH3Validate(Sender: TField);
begin
  inherited;
    if HJualH3.AsCurrency > 0 then
    Begin
      HJualH2.AsCurrency          := HJualH3.AsCurrency * sp_find_barangIsi2.AsCurrency;
      HJualH1.AsCurrency          := HJualH2.AsCurrency * sp_find_barangIsi1.AsCurrency;
    End;
end;

procedure THJualPerKodeForm.HJualProfitValidate(Sender: TField);
begin
  inherited;
  if HJualProfit.AsCurrency > 0  then
  begin
    HJualProfitnilai.AsCurrency := ((HJualHpp.AsCurrency * HJualProfit.AsCurrency) / 100);
    HJualH3.AsCurrency          := (HJualProfitnilai.AsCurrency + HJualHpp.AsCurrency) * 1;
    HJualH2.AsCurrency          := HJualH3.AsCurrency * sp_find_barangIsi2.AsCurrency;
    HJualH1.AsCurrency          := HJualH2.AsCurrency * sp_find_barangIsi1.AsCurrency;
  end;
end;

procedure THJualPerKodeForm.taBatalExecute(Sender: TObject);
begin
  inherited;
  edtKodeFrom.Clear;
  edtKodeTo.Clear;
  edtNamaFrom.Clear;
  edtNamaTo.Clear;
  chkAll.Checked:= false;
  cbUrut.ItemIndex := -1;
  cxGrid1.Show;
  cxGrid1.SetFocus;
end;

procedure THJualPerKodeForm.taCariAkhirExecute(Sender: TObject);
begin
  inherited;
  if chkAll.Checked = False then
  begin
    case cbUrut.ItemIndex of
    -1: begin
          MessageDlg('Silahkan pilih Data diurutkan Terlebih Dahulu',(mtError),[mbOK],0);
          cbUrut.SetFocus;
          Abort;
        end;
    0 : begin
          Barang.Close;
          barang.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
          SearchForm.Hide;
          searchForm.dscari.DataSet := barang;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeTo.Text := BarangBRGID.Value;
              edtNamaTo.Text := BarangNama1.Value;
              edtKodeTo.SetFocus;
            end
          else
          begin
            edtKodeTo.setfocus;
          end;
        end;
    1 : begin
          Jenis.Close;
          Jenis.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 500;
          SearchForm.Hide;
          searchForm.dscari.DataSet := Jenis;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeTo.Text := JenisJenisID.Value;
              edtNamaTo.Text := JenisKeterangan.Value;
              edtKodeTo.SetFocus;
            end
          else
          begin
            edtKodeTo.setfocus;
          end;
        end;
    2 : begin
          Golongan.Close;
          Golongan.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
          SearchForm.Hide;
          searchForm.dscari.DataSet := Golongan;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeTo.Text := GolonganGolID.Value;
              edtNamaTo.Text := GolonganKeterangan.Value;
              edtKodeTo.SetFocus;
            end
          else
          begin
            edtKodeTo.setfocus;
          end;
        end;
    3 : begin
          Merek.Close;
          Merek.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
          SearchForm.Hide;
          searchForm.dscari.DataSet := Merek;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeTo.Text := MerekMRKID.Value;
              edtNamaTo.Text := MerekKETERANGAN.Value;
              edtKodeTo.SetFocus;
            end
          else
          begin
            edtKodeTo.setfocus;
          end;
        end;
    end;
    SearchForm.Close;
    SearchForm.Free;
//    taCariAkhir.Enabled:= True;
  End;
end;

procedure THJualPerKodeForm.taCariAwalExecute(Sender: TObject);
begin
  inherited;
  if chkAll.Checked = False then
  begin
    case cbUrut.ItemIndex of
    -1: begin
          MessageDlg('Silahkan pilih Data diurutkan Terlebih Dahulu',(mtError),[mbOK],0);
          cbUrut.SetFocus;
          Abort;
        end;
    0 : begin
          Barang.Close;
          barang.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
          SearchForm.Hide;
          searchForm.dscari.DataSet := barang;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeFrom.Text := BarangBRGID.Value;
              edtNamaFrom.Text := BarangNama1.Value;
              edtKodeFrom.SetFocus;
            end
          else
          begin
            edtKodeFrom.setfocus;
          end;
        end;
    1 : begin
          Jenis.Close;
          Jenis.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 500;
          SearchForm.Hide;
          searchForm.dscari.DataSet := Jenis;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeFrom.Text := JenisJenisID.Value;
              edtNamaFrom.Text := JenisKeterangan.Value;
              edtKodeFrom.SetFocus;
            end
          else
          begin
            edtKodeFrom.setfocus;
          end;
        end;
    2 : begin
          Golongan.Close;
          Golongan.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
          SearchForm.Hide;
          searchForm.dscari.DataSet := Golongan;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeFrom.Text := GolonganGolID.Value;
              edtNamaFrom.Text := GolonganKeterangan.Value;
              edtKodeFrom.SetFocus;
            end
          else
          begin
            edtKodeFrom.setfocus;
          end;
        end;
    3 : begin
          Merek.Close;
          Merek.Open;
          SearchForm := TSearchForm.create(nil);
          SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
          SearchForm.Hide;
          searchForm.dscari.DataSet := Merek;
          if SearchForm.ShowModal =mrOk then
            begin
              edtKodeFrom.Text := MerekMRKID.Value;
              edtNamaFrom.Text := MerekKETERANGAN.Value;
              edtKodeFrom.SetFocus;
            end
          else
          begin
            edtKodeFrom.setfocus;
          end;
        end;
    end;
    SearchForm.Close;
    SearchForm.Free;
//    taCariAkhir.Enabled:= True;
  End;
end;

procedure THJualPerKodeForm.taCariHargaExecute(Sender: TObject);
begin
  inherited;
  JHarga.Close;
  JHarga.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := JHarga;
  if SearchForm.ShowModal = mrOk then
    begin
      GudangID.Text   := JHargaHrgID.Value;
      GudangNama.Text := JHargaKeterangan.Value;
      GudangID.SetFocus;
      HJual.Close;
      HJual.Open;
      barang.close;
      Barang.Open;
      PXSystem.Close;
      PXSystem.Open;
    end
  else
  begin
    GudangID.setfocus;
  end;
end;

procedure THJualPerKodeForm.taLoadAllExecute(Sender: TObject);
begin
  inherited;
//  statusTransaksi :=true;
  barang.Close;
  barang.Open;
  if chkAll.Checked = true then
  begin
//    FmProses := TFmProses.create(self);
//    FmProses.show;
    case cbUrut.ItemIndex of
    0 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgIDAwal').Value  := '';
            Parameters.ParamByName('brgIDAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'BrgID';
            Parameters.ParamByName('HrgID_').Value   := GudangID.Text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualBRGID.Value            := sp_TampilBRGID.Value;
              HJualCabID.Value            := sp_TampilCabID.Value;
              HJualHrgID.Value            := sp_TampilHrgID.Value;
              HJualHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualProfit.AsCurrency      := sp_TampilProfit.AsFloat;
              HJualProfitnilai.AsCurrency := sp_TampilProfitnilai.AsFloat;
              HJualH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    1 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgIDAwal').Value  := '';
            Parameters.ParamByName('brgIDAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Jns';
            Parameters.ParamByName('HrgID_').Value   := GudangID.Text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualBRGID.Value            := sp_TampilBRGID.Value;
              HJualCabID.Value            := sp_TampilCabID.Value;
              HJualHrgID.Value            := sp_TampilHrgID.Value;
              HJualHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualProfit.AsCurrency      := sp_TampilProfit.AsFloat;
              HJualProfitnilai.AsCurrency := sp_TampilProfitnilai.AsFloat;
              HJualH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    2 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgIDAwal').Value  := '';
            Parameters.ParamByName('brgIDAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Gol';
            Parameters.ParamByName('HrgID_').Value   := GudangID.Text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualBRGID.Value            := sp_TampilBRGID.Value;
              HJualCabID.Value            := sp_TampilCabID.Value;
              HJualHrgID.Value            := sp_TampilHrgID.Value;
              HJualHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualProfit.AsCurrency      := sp_TampilProfit.AsFloat;
              HJualProfitnilai.AsCurrency := sp_TampilProfitnilai.AsFloat;
              HJualH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    3 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgIDAwal').Value  := '';
            Parameters.ParamByName('brgIDAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Mrk';
            Parameters.ParamByName('HrgID_').Value   := GudangID.Text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualBRGID.Value            := sp_TampilBRGID.Value;
              HJualCabID.Value            := sp_TampilCabID.Value;
              HJualHrgID.Value            := sp_TampilHrgID.Value;
              HJualHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualProfit.AsCurrency      := sp_TampilProfit.AsFloat;
              HJualProfitnilai.AsCurrency := sp_TampilProfitnilai.AsFloat;
              HJualH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    end;
  end else
  begin
    case cbUrut.ItemIndex of
    0 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''BRGID'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualCabID.Value            := Querylocal.Fields[0].Value;
              HJualHrgID.Value            := Querylocal.Fields[1].Value;
              HJualBrgID.Value            := Querylocal.Fields[2].Value;
              HJualhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualProfit.AsCurrency      := Querylocal.Fields[4].AsFloat;
              HJualProfitnilai.AsCurrency := Querylocal.Fields[5].AsFloat;
              HJualH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    1 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''Jns'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualCabID.Value            := Querylocal.Fields[0].Value;
              HJualHrgID.Value            := Querylocal.Fields[1].Value;
              HJualBrgID.Value            := Querylocal.Fields[2].Value;
              HJualhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualProfit.AsCurrency      := Querylocal.Fields[4].AsFloat;
              HJualProfitnilai.AsCurrency := Querylocal.Fields[5].AsFloat;
              HJualH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    2 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''Gol'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualCabID.Value            := Querylocal.Fields[0].Value;
              HJualHrgID.Value            := Querylocal.Fields[1].Value;
              HJualBrgID.Value            := Querylocal.Fields[2].Value;
              HJualhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualProfit.AsCurrency      := Querylocal.Fields[4].AsFloat;
              HJualProfitnilai.AsCurrency := Querylocal.Fields[5].AsFloat;
              HJualH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    3 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''Mrk'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJual.open;
              HJual.insert;
              HJualCabID.Value            := Querylocal.Fields[0].Value;
              HJualHrgID.Value            := Querylocal.Fields[1].Value;
              HJualBrgID.Value            := Querylocal.Fields[2].Value;
              HJualhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualProfit.AsCurrency      := Querylocal.Fields[4].AsFloat;
              HJualProfitnilai.AsCurrency := Querylocal.Fields[5].AsFloat;
              HJualH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    end;
    Querylocal.Free;
  end;
  HJual.Last;
  HJual.Append;
  cxGrid1.Show;
  cxGrid1DBTableView1BRGID.Properties.ReadOnly := true;
  cxGrid1DBTableView1.Columns[0].FocusWithSelection;
  cxGrid1DBTableView1Hpp.Selected:= true;
  cxGrid1.SetFocus;
end;

procedure THJualPerKodeForm.taLoadExecute(Sender: TObject);
begin
  inherited;
  if GudangID.Text = '' then
  begin
    ShowMessage('Jenis Harga harap dipilih terlebih dahulu');
    GudangID.SetFocus;
    Abort;
  end;
  HJual.Close;
  cxGrid1.Hide;
  cbUrut.ItemIndex := -1;
  cbUrut.SetFocus;
end;

procedure THJualPerKodeForm.taLoadHppExecute(Sender: TObject);
begin
  inherited;
  if GudangID.Text <> '' then
  begin
    HJual.Close;
    with sp_prosesloadhpp do
    begin
      close;
      Parameters.ParamByName('hrgtemp').Value   := GudangID.Text;
      Parameters.ParamByName('sysparam').Value  := PXSystemMETODE.Value;
      Parameters.ParamByName('ID_').Value       := HJualForm.cUser_;
      ExecProc;
    end;
    with sphishbelibrg do
    begin
      close;
      Parameters.ParamByName('brgIDAwal').Value := '';
      Parameters.ParamByName('brgIDAkhir').Value := '';
      Parameters.ParamByName('hrgID_').Value := GudangID.Text;;
      Parameters.ParamByName('statAll').Value := 0;
      Parameters.ParamByName('cari').Value := 'Brg';
      open;
    end;
    if not sphishbelibrg.IsEmpty then
    begin
      while not sphishbelibrg.Eof do
      begin
        HJual.open;
        HJual.insert;
        HJualBrgID.Value            := sphishbelibrgBrgID.value;
        Querylocal := TADOQuery.Create(self);
        Querylocal.Connection := HJualForm.connTrading;
        Querylocal.SQL.Clear;
        Querylocal.SQL.Add('Select hbeli, hpp from inbaranghbeli where brgid='''+sphishbelibrgBrgID.Value+'''');
        if not Querylocal.IsEmpty then
        begin
          if  PXSystemMETODE.Value <> '1' then
            HJualHpp.AsCurrency := Querylocal.Fields[0].AsCurrency else
            HJualHpp.AsCurrency := Querylocal.Fields[1].AsCurrency;
        end;
//              HJualSHpp.Value              := sphishbelibrg.Value;
        HJualHrgID.value                 := GudangID.Text;;
        HJualProfit.AsCurrency           := sphishbelibrgProfit.AsCurrency;
        HJualProfitnilai.AsCurrency      := sphishbelibrgProfitnilai.AsCurrency;
        HJualH1.AsCurrency               := sphishbelibrgH1.AsCurrency;
        HJualH2.AsCurrency               := sphishbelibrgH2.AsCurrency;
        HJualH3.AsCurrency               := sphishbelibrgH3.AsCurrency;
        sphishbelibrg.Next;
        Querylocal.Free;
      end;
    end;
    ShowMessage('Data berhasil diupdate');
    HJual.Last;
    HJual.Append;
    Barang.Close;
    Barang.Open;
    cxGrid1DBTableView1.Columns[0].Selected := True;
    cxGrid1DBTableView1BRGID.FocusWithSelection;
    cxGrid1.SetFocus;
  end else
  begin
    HJual.Close;
    ShowMessage('Jenis Harga harap dipilih terlebih dahulu');
    GudangID.SetFocus;
    Abort;
  end;
end;

procedure THJualPerKodeForm.taMassalExecute(Sender: TObject);
begin
  inherited;
  HJualMassalForm := THJualMassalForm.create(Self);
  HJualMassalForm.show;
end;

procedure THJualPerKodeForm.taTampilExecute(Sender: TObject);
begin
  inherited;
  if GudangID.Text = '' then
  begin
    ShowMessage('Jenis Harga harap dipilih terlebih dahulu');
    GudangID.SetFocus;
    Abort;
  end;
  HJual.Close;
  // Karena masih dalam kondisi Button Tampil maka ditampilkan semua dari table
  // INBarangHJual di unionkan dengan inbarang
  // Procedure yang dipake sp_find_Harga_Beli
  With sp_Tampil do
  begin
    close;
    Parameters.ParamByName('BrgIDAwal').Value := '';
    Parameters.ParamByName('BrgIDAwal').Value := '';
    Parameters.ParamByName('hrgID_').Value := GudangID.Text;
    Parameters.ParamByName('statAll').Value   := 0;
    Parameters.ParamByName('cari').Value      := '';
    open;
  end;
  if not sp_Tampil.IsEmpty then
  begin
    while not sp_Tampil.Eof do
    begin
      HJual.Open;
      HJual.Insert;
      HJualBRGID.Value            := sp_TampilBRGID.Value;
      HJualCabID.Value            := sp_TampilCabID.Value;
      HJualHrgID.Value            := sp_TampilHrgID.Value;
      HJualHpp.Value              := sp_TampilHPP.Value;
      HJualProfit.Value           := sp_TampilProfit.Value;
      HJualProfitnilai.Value      := sp_TampilProfitnilai.Value;
      HJualH1.Value               := sp_TampilH1.Value;
      HJualH2.Value               := sp_TampilH2.Value;
      HJualH3.Value               := sp_TampilH3.Value;
      sp_Tampil.Next;
    end;
    HJual.Last;
    HJual.Append;
    Barang.Close;
    Barang.Open;
    cxGrid1DBTableView1.Columns[0].Selected := True;
    cxGrid1DBTableView1BRGID.FocusWithSelection;
    cxGrid1.SetFocus;
  end;
end;

end.
