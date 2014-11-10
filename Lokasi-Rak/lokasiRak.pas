unit lokasiRak;

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
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, Menus, ADODB, cxButtons, cxTextEdit,
  cxDBLookupComboBox, cxCheckBox;

type
  TLokasiRakForm = class(TtemplateForm)
    lbl1: TLabel;
    GudangID: TcxTextEdit;
    cxButton7: TcxButton;
    GudangNama: TcxTextEdit;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    LokasiRak: TADODataSet;
    connTrading: TADOConnection;
    Merek: TADODataSet;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    Jenis: TADODataSet;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    Gudang: TADODataSet;
    GudangGdgID: TStringField;
    GudangKeterangan: TStringField;
    dsItem: TDataSource;
    dsLokasiRak: TDataSource;
    sp_input_min_Max: TADOStoredProc;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    sp_Tampil: TADOStoredProc;
    sp_delete_all: TADOStoredProc;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    LokasiRakBRGID: TStringField;
    LokasiRakGDGID: TStringField;
    LokasiRakCabID: TStringField;
    LokasiRakRAKID: TStringField;
    LokasiRakTglU: TDateTimeField;
    cxGrid1DBTableView1BRGID: TcxGridDBColumn;
    cxGrid1DBTableView1RAKID: TcxGridDBColumn;
    Rak: TADODataSet;
    RakRAKID: TStringField;
    Rakketerangan: TStringField;
    dsRAk: TDataSource;
    taLoad: TAction;
    taTampil: TAction;
    taCetak: TAction;
    sp_TampilBRGID: TStringField;
    sp_TampilGDGID: TStringField;
    sp_TampilRakID: TStringField;
    sp_TampilcabID: TStringField;
    cbUrut: TComboBox;
    lbl3: TLabel;
    chkAll: TcxCheckBox;
    edtNamaFrom: TcxTextEdit;
    edtNamaTo: TcxTextEdit;
    btnAkhi: TcxButton;
    btnAwal: TcxButton;
    edtKodeFrom: TcxTextEdit;
    edtKodeTo: TcxTextEdit;
    lblTo: TLabel;
    lblFrom: TLabel;
    btTampil: TcxButton;
    btBatal: TcxButton;
    taLoadAll: TAction;
    taBatal: TAction;
    taFrom: TAction;
    taTo: TAction;
    taCariGudang: TAction;
    procedure taLoadExecute(Sender: TObject);
    procedure taTampilExecute(Sender: TObject);
    procedure cbUrutChange(Sender: TObject);
    procedure taFromExecute(Sender: TObject);
    procedure taToExecute(Sender: TObject);
    procedure taCariGudangExecute(Sender: TObject);
    procedure LokasiRakAfterPost(DataSet: TDataSet);
    procedure taLoadAllExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  Querylocal : TADOQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LokasiRakForm: TLokasiRakForm;

implementation

uses Search;

{$R *.dfm}

procedure TLokasiRakForm.cbUrutChange(Sender: TObject);
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

procedure TLokasiRakForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    RAK.Open;
    Barang.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TLokasiRakForm.LokasiRakAfterPost(DataSet: TDataSet);
begin
  inherited;
  with sp_find_table do
  begin
    Close;
    Parameters.ParamByName('brgId_').Value :=LokasiRakBRGID.Value;
    Parameters.ParamByName('CABId_').Value :=LokasiRakCabID.Value;
    Parameters.ParamByName('GDGId_').Value :=LokasiRakGDGID.Value;
    Parameters.ParamByName('table_').Value :='inbarangGudangRAK';
    Open;
  end;
  if sp_find_tableHasil.Value <> '' then
  begin
    With sp_input_min_Max do
    begin
      close;
      Parameters.ParamByName('tempgdg').Value := GudangID.Text;
      parameters.ParamByName('tempcab').Value := LokasiRakCabID.Value;
      parameters.ParamByName('tempRak').Value := LokasiRakRAKID.Value;
      parameters.ParamByName('tempbrg').Value := LokasiRakBRGID.Value;
      parameters.parambyname('stattransaksi').Value := 'Edit';
      ExecProc;
    end;
  end else
  begin
    With sp_input_min_Max do
    begin
      close;
      Parameters.ParamByName('tempgdg').Value := GudangID.Text;
      parameters.ParamByName('tempcab').Value := LokasiRakCabID.Value;
      parameters.ParamByName('tempRak').Value := LokasiRakRAKID.Value;
      parameters.ParamByName('tempbrg').Value := LokasiRakBRGID.Value;
      parameters.parambyname('stattransaksi').Value := 'tambah';
      ExecProc;
    end;
  end;
end;

procedure TLokasiRakForm.taBatalExecute(Sender: TObject);
begin
  inherited;
  edtKodeFrom.Clear;
  edtKodeTo.Clear;
  edtNamaFrom.Clear;
  edtNamaTo.Clear;
  chkAll.Checked:= false;
  cbUrut.ItemIndex := -1;
  cxGrid1.Show;
  GudangID.SetFocus;
end;

procedure TLokasiRakForm.taCariGudangExecute(Sender: TObject);
begin
  inherited;
  Gudang.Close;
  Gudang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := Gudang;
  if SearchForm.ShowModal =mrOk then
    begin
      GudangID.Text   := GudangGdgID.Value;
      GudangNama.Text := GudangKeterangan.Value;
      GudangID.SetFocus;
    end
  else
  begin
    GudangID.setfocus;
  end;
end;

procedure TLokasiRakForm.taFromExecute(Sender: TObject);
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

procedure TLokasiRakForm.taLoadAllExecute(Sender: TObject);
begin
  inherited;
  barang.Close;
  barang.Open;
  Rak.Close;
  Rak.Open;
  if chkAll.Checked = true then
  begin
//    FmProses := TFmProses.create(self);
//    FmProses.show;
    case cbUrut.ItemIndex of
    0 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgAwal').Value  := '';
            Parameters.ParamByName('brgAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'BrgID';
            Parameters.ParamByName('gdgTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := sp_tampilBRGID.Value;
              LokasiRakGDGID.Value   := GudangID.text;
              LokasiRakCabID.Value   := sp_TampilCabID.Value;
              LokasiRakRAKID.Value   := sp_TampilRakID.Value;
              sp_tampil.Next;
            end;
          end;
        end;
    1 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgAwal').Value  := '';
            Parameters.ParamByName('brgAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Jns';
            Parameters.ParamByName('gdgTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := sp_tampilBRGID.Value;
              LokasiRakGDGID.Value   := GudangID.text;
              LokasiRakCabID.Value   := sp_TampilCabID.Value;
              LokasiRakRAKID.Value   := sp_TampilRakID.Value;
              sp_tampil.Next;
            end;
          end;
        end;
    2 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgAwal').Value  := '';
            Parameters.ParamByName('brgAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Gol';
            Parameters.ParamByName('gdgTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := sp_tampilBRGID.Value;
              LokasiRakGDGID.Value   := GudangID.text;
              LokasiRakCabID.Value   := sp_TampilCabID.Value;
              LokasiRakRAKID.Value   := sp_TampilRakID.Value;
              sp_tampil.Next;
            end;
          end;
        end;
    3 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgAwal').Value  := '';
            Parameters.ParamByName('brgAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Mrk';
            Parameters.ParamByName('gdgTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := sp_tampilBRGID.Value;
              LokasiRakGDGID.Value   := GudangID.text;
              LokasiRakCabID.Value   := sp_TampilCabID.Value;
              LokasiRakRAKID.Value   := sp_TampilRakID.Value;
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
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Gudang_RAK('''+GudangID.Text+''','''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''BRG'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := Querylocal.Fields[0].Value;
              LokasiRakGDGID.Value   := GudangID.Text;
              LokasiRakCabID.Value   := Querylocal.Fields[3].Value;              ;
              LokasiRakRAKID.value   := Querylocal.Fields[2].Value;
              Querylocal.Next;
            end;
          end;
        end;
    1 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Gudang_RAK('''+GudangID.Text+''','''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''Jns'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := Querylocal.Fields[0].Value;
              LokasiRakGDGID.Value   := GudangID.Text;
              LokasiRakCabID.Value   := Querylocal.Fields[3].Value;              ;
              LokasiRakRAKID.value   := Querylocal.Fields[2].Value;
              Querylocal.Next;
            end;
          end;
        end;
    2 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
             Querylocal.SQL.Add('Call SP_Find_Gudang_RAK('''+GudangID.Text+''','''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''Gol'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := Querylocal.Fields[0].Value;
              LokasiRakGDGID.Value   := GudangID.Text;
              LokasiRakCabID.Value   := Querylocal.Fields[3].Value;              ;
              LokasiRakRAKID.value   := Querylocal.Fields[2].Value;
              Querylocal.Next;
            end;
          end;
        end;
    3 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
               Querylocal.SQL.Add('Call SP_Find_Gudang_RAK('''+GudangID.Text+''','''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''Mrk'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              LokasiRak.open;
              LokasiRak.insert;
              LokasiRakBRGID.Value   := Querylocal.Fields[0].Value;
              LokasiRakGDGID.Value   := GudangID.Text;
              LokasiRakCabID.Value   := Querylocal.Fields[3].Value;              ;
              LokasiRakRAKID.value   := Querylocal.Fields[2].Value;
              Querylocal.Next;
            end;
          end;
        end;
    end;
    Querylocal.Free;
  end;
  LokasiRak.Last;
  LokasiRak.Append;
  cxGrid1.Show;
  cxGrid1DBTableView1BRGID.Properties.ReadOnly := true;
  cxGrid1DBTableView1.Columns[0].FocusWithSelection;
  cxGrid1DBTableView1RAKID.Selected:= true;
  cxGrid1.SetFocus;
end;

procedure TLokasiRakForm.taLoadExecute(Sender: TObject);
begin
  inherited;
  if GudangNama.Text <> '' then
  begin
    LokasiRak.Close;
    cxGrid1.Hide;
    cbUrut.ItemIndex := -1;
    cbUrut.SetFocus;
//    taCariAwal.Enabled := false;
//    taCariAkhir.Enabled:= false;
  end else
  begin
    MessageDlg('Data gudang SO Harus Dipilih Terlebih Dahulu',(mtError),[mbOK],0);
    GudangID.SetFocus;
    Abort;
  end;
end;

procedure TLokasiRakForm.taTampilExecute(Sender: TObject);
begin
  inherited;
  if GudangNama.Text <> '' then
  begin
    LokasiRak.Close;
    // Karena masih dalam kondisi Button Tampil maka ditampilkan semua dari table
    // INBarangGudang di unionkan dengan inbarang
    // Procedure yang dipake sp_find_Gudang_Min_Max
    With sp_Tampil do
    begin
      close;
      Parameters.ParamByName('BrgAwal').Value := '';
      Parameters.ParamByName('BrgAwal').Value := '';
      Parameters.ParamByName('GdgTemp').Value := GudangID.Text;
      Parameters.ParamByName('statAll').Value   := 0;
      Parameters.ParamByName('cari').Value      := '';
      open;
    end;
    if not sp_Tampil.IsEmpty then
    begin
      while not sp_Tampil.Eof do
      begin
        LokasiRak.Open;
        LokasiRak.Insert;
        LokasiRakGDGID.Value   := sp_TampilGDGID.Value;
        LokasiRakBRGID.Value   := sp_TampilBRGID.Value;
        LokasiRakCabID.Value   := sp_TampilCabID.Value;
        LokasiRakRAKID.Value   := sp_TampilRakID.Value;
        sp_Tampil.Next;
      end;
      LokasiRak.Last;
      LokasiRak.Append;
      Barang.Close;
      Barang.Open;
      Rak.Close;
      Rak.Open;
      cxGrid1DBTableView1.Columns[0].Selected := True;
      cxGrid1DBTableView1BRGID.FocusWithSelection;
      cxGrid1.SetFocus;
    end;
  end else
  begin
    MessageDlg('Data gudang SO Harus Dipilih Terlebih Dahulu',(mtError),[mbOK],0);
    GudangNama.SetFocus;
    Abort;
  end;
end;

procedure TLokasiRakForm.taToExecute(Sender: TObject);
begin
  inherited;
    if chkAll.Checked = false then
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
//          SearchForm.Top  := Self.Top  + 100;
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
//          SearchForm.Top  := Self.Top  + 100;
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
//          SearchForm.Top  := Self.Top  + 100;
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
//          SearchForm.Top  := Self.Top  + 100;
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
  End;
end;

end.
