unit MinMax;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ShellAnimations,
  XPMan, DBActns, ActnList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  ExtCtrls, cxPC, StdCtrls, Menus, cxCheckBox, cxButtons, cxTextEdit, ADODB,
  cxDBLookupComboBox;

type
  TMinMaxForm = class(TtemplateForm)
    lbl1: TLabel;
    GudangID: TcxTextEdit;
    cxButton7: TcxButton;
    GudangNama: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    taLoad: TAction;
    taTampil: TAction;
    taCetak: TAction;
    taHapus: TAction;
    taCariGudang: TAction;
    lbl3: TLabel;
    cbUrut: TComboBox;
    chkAll: TcxCheckBox;
    edtKodeFrom: TcxTextEdit;
    btnAwal: TcxButton;
    edtNamaFrom: TcxTextEdit;
    edtNamaTo: TcxTextEdit;
    btnAkhi: TcxButton;
    edtKodeTo: TcxTextEdit;
    lblTo: TLabel;
    lblFrom: TLabel;
    btTampil: TcxButton;
    btBatal: TcxButton;
    taCariAwal: TAction;
    taCariAkhir: TAction;
    taLoadAll: TAction;
    taBatal: TAction;
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
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    dsMinMax: TDataSource;
    MinMax: TADODataSet;
    MinMaxBRGID: TStringField;
    MinMaxGDGID: TStringField;
    MinMaxCabID: TStringField;
    MinMaxMIN: TFMTBCDField;
    MinMaxMAX: TFMTBCDField;
    MinMaxTglU: TDateTimeField;
    cxGrid1DBTableView1BRGID: TcxGridDBColumn;
    cxGrid1DBTableView1MIN: TcxGridDBColumn;
    cxGrid1DBTableView1MAX: TcxGridDBColumn;
    dsItem: TDataSource;
    sp_Tampil: TADOStoredProc;
    sp_TampilBRGID: TStringField;
    sp_TampilGDGID: TStringField;
    sp_TampilCabID: TStringField;
    sp_TampilMIN: TFMTBCDField;
    sp_TampilMAX: TFMTBCDField;
    sp_input_min_Max: TADOStoredProc;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    sp_delete_all: TADOStoredProc;
    procedure cbUrutChange(Sender: TObject);
    procedure taCariAwalExecute(Sender: TObject);
    procedure taCariAkhirExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure taCariGudangExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure taLoadExecute(Sender: TObject);
    procedure taTampilExecute(Sender: TObject);
    procedure taLoadAllExecute(Sender: TObject);
    procedure MinMaxAfterPost(DataSet: TDataSet);
    procedure taHapusExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    statusTransaksi : Boolean;
  end;

var
  MinMaxForm: TMinMaxForm;
implementation

uses Search;

{$R *.dfm}

procedure TMinMaxForm.cbUrutChange(Sender: TObject);
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
//  taCariAwal.Enabled := True;
end;

procedure TMinMaxForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    Gudang.Close;
    Gudang.Open;
    jenis.Close;
    jenis.Open;
    Merek.Close;
    Merek.Open;
    Golongan.close;
    Golongan.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TMinMaxForm.MinMaxAfterPost(DataSet: TDataSet);
var
  querylocal : TADOQuery;
begin
  inherited;
  if statusTransaksi = false then
  begin
    with sp_find_table do
    begin
      Close;
      Parameters.ParamByName('brgId_').Value :=MinMaxBRGID.Value;
      Parameters.ParamByName('CABId_').Value :=MinMaxCabID.Value;
      Parameters.ParamByName('GDGId_').Value :=MinMaxGDGID.Value;
      Parameters.ParamByName('table_').Value :='inbarangGudang';
      Open;
    end;
    if sp_find_tableHasil.Value <> '' then
    begin
      With sp_input_min_Max do
      begin
        close;
        Parameters.ParamByName('tempgdgid').Value := GudangID.Text;
        parameters.ParamByName('tempcabid').Value := MinMaxCabID.Value;
        parameters.ParamByName('tempMin').Value := MinMaxMIN.AsCurrency;
        parameters.ParamByName('tempMax').Value := MinMaxMAX.AsCurrency;
        parameters.ParamByName('tempbrgId').Value := MinMaxBRGID.Value;
        parameters.parambyname('stattransaksi').Value := 'Edit';
        ExecProc;
      end;
    end else
    begin
      With sp_input_min_Max do
      begin
        close;
        Parameters.ParamByName('tempgdgid').Value := GudangID.Text;
        parameters.ParamByName('tempcabid').Value := MinMaxCabID.Value;
        parameters.ParamByName('tempMin').Value := MinMaxMIN.AsCurrency;
        parameters.ParamByName('tempMax').Value := MinMaxMAX.AsCurrency;
        parameters.ParamByName('tempbrgId').Value := MinMaxBRGID.Value;
        parameters.parambyname('stattransaksi').Value := 'tambah';
        ExecProc;
      end;
    end;
  end;
end;

procedure TMinMaxForm.taBatalExecute(Sender: TObject);
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

procedure TMinMaxForm.taCariAkhirExecute(Sender: TObject);
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

procedure TMinMaxForm.taCariAwalExecute(Sender: TObject);
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

procedure TMinMaxForm.taCariGudangExecute(Sender: TObject);
begin
  inherited;
  Gudang.Close;
  Gudang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 100;
  SearchForm.Hide;
  searchForm.dscari.DataSet := Gudang;
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

procedure TMinMaxForm.taHapusExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Apakah akan menghapus semua data'#13'Pilih OK jika akan mendelete semua data'#13'Pilih Cancel Jika hanya satu data',(mtConfirmation),[mbOK,mbCancel],0) = MrOk then
  begin
    with sp_delete_all do
    begin
      close;
      Parameters.ParamByName('Table_').Value :='inbarangGudang';
      Parameters.ParamByName('Stat_').Value  := 1;
      Parameters.ParamByName('BRGID_').Value :='';
      Parameters.ParamByName('GDGID_').Value := GudangID.Text;
      ExecProc;
    end;
  end else
  begin
    with sp_delete_all do
    begin
      close;
      Parameters.ParamByName('Table_').Value :='inbarangGudang';
      Parameters.ParamByName('Stat_').Value  := 0;
      Parameters.ParamByName('BRGID_').Value :=MinMaxBRGID.Value;
      Parameters.ParamByName('GDGID_').Value := GudangID.Text;
      ExecProc;
    end;
  end;
  taTampil.Execute;
end;

procedure TMinMaxForm.taLoadAllExecute(Sender: TObject);
var
Querylocal : TADOQuery;
begin
  inherited;
  statusTransaksi :=true;
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
            Parameters.ParamByName('gdgIDTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value   := sp_tampilBRGID.Value;
              MinMaxGDGID.Value   := GudangID.text;
              MinMaxCabID.Value   := sp_TampilCabID.Value;
              MinMaxMIN.Value     := sp_TampilMIN.Value;
              MinMaxMAX.Value     := sp_TampilMAX.Value;
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
            Parameters.ParamByName('gdgIDTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value   := sp_TampilBRGID.Value;
              MinMaxGDGID.Value   := GudangID.text;
              MinMaxCabID.Value   := sp_TampilCabID.Value;
              MinMaxMIN.Value     := sp_TampilMIN.Value;
              MinMaxMAX.Value     := sp_TampilMAX.Value;
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
            Parameters.ParamByName('gdgIDTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value  := sp_TampilBRGID.Value;
              MinMaxGDGID.Value  := GudangID.text;
              MinMaxCabID.Value   := sp_TampilCabID.Value;
              MinMaxMIN.Value     := sp_TampilMIN.Value;
              MinMaxMAX.Value     := sp_TampilMAX.Value;
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
            Parameters.ParamByName('gdgIDTemp').Value   := GudangID.text;
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value    := sp_TampilBRGID.Value;
              MinMaxGDGID.Value     := GudangID.text;
              MinMaxCabID.Value   := sp_TampilCabID.Value;
              MinMaxMIN.Value     := sp_TampilMIN.Value;
              MinMaxMAX.Value     := sp_TampilMAX.Value;
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
          Querylocal.SQL.Add('Call SP_Find_Gudang_Min_Max('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''BRGID'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value   := Querylocal.Fields[0].Value;
              MinMaxGDGID.Value   := GudangID.Text;
              MinMaxCabID.Value   := Querylocal.Fields[2].Value;
              MinMaxMIN.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              MinMaxMAX.AsCurrency:= Querylocal.Fields[4].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    1 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
           Querylocal.SQL.Add('Call SP_Find_Gudang_Min_Max('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''Jns'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value   := Querylocal.Fields[0].Value;
              MinMaxGDGID.Value   := GudangID.Text;
              MinMaxCabID.Value   := Querylocal.Fields[2].Value;
              MinMaxMIN.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              MinMaxMAX.AsCurrency:= Querylocal.Fields[4].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    2 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Gudang_Min_Max('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''Gol'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value   := Querylocal.Fields[0].Value;
              MinMaxGDGID.Value   := GudangID.Text;
              MinMaxCabID.Value   := Querylocal.Fields[2].Value;
              MinMaxMIN.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              MinMaxMAX.AsCurrency:= Querylocal.Fields[4].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    3 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Gudang_Min_Max('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''+GudangID.Text+''',''1'',''Mrk'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              MinMax.open;
              MinMax.insert;
              MinMaxBRGID.Value   := Querylocal.Fields[0].Value;
              MinMaxGDGID.Value   := GudangID.Text;
              MinMaxCabID.Value   := Querylocal.Fields[2].Value;
              MinMaxMIN.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              MinMaxMAX.AsCurrency:= Querylocal.Fields[4].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    end;
    Querylocal.Free;
  end;
  MinMax.Last;
  MinMax.Append;
  cxGrid1.Show;
  cxGrid1DBTableView1BRGID.Properties.ReadOnly := true;
  cxGrid1DBTableView1.Columns[0].FocusWithSelection;
  cxGrid1DBTableView1MIN.Selected:= true;
  cxGrid1.SetFocus;
end;

procedure TMinMaxForm.taLoadExecute(Sender: TObject);
begin
  inherited;
  if GudangNama.Text <> '' then
  begin
    MinMax.Close;
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

procedure TMinMaxForm.taTampilExecute(Sender: TObject);
begin
  inherited;
  if GudangNama.Text <> '' then
  begin
    MinMax.Close;
    // Karena masih dalam kondisi Button Tampil maka ditampilkan semua dari table
    // INBarangGudang di unionkan dengan inbarang
    // Procedure yang dipake sp_find_Gudang_Min_Max
    With sp_Tampil do
    begin
      close;
      Parameters.ParamByName('BrgIDAwal').Value := '';
      Parameters.ParamByName('BrgIDAwal').Value := '';
      Parameters.ParamByName('GdgIdTemp').Value := GudangID.Text;
      Parameters.ParamByName('statAll').Value   := 0;
      Parameters.ParamByName('cari').Value      := '';
      open;
    end;
    if not sp_Tampil.IsEmpty then
    begin
      while not sp_Tampil.Eof do
      begin
        MinMax.Open;
        MinMax.Insert;
        MinMaxGDGID.Value   := sp_TampilGDGID.Value;
        MinMaxBRGID.Value   := sp_TampilBRGID.Value;
        MinMaxCabID.Value   := sp_TampilCabID.Value;
        MinMaxMIN.Value  := sp_TampilMIN.Value;
        MinMaxMAX.Value  := sp_TampilMAX.Value;
        sp_Tampil.Next;
      end;
      MinMax.Last;
      MinMax.Append;
      Barang.Close;
      Barang.Open;
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

end.
