unit HBeli;

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
  ExtCtrls, cxPC, StdCtrls, Menus, cxButtons, ADODB, cxTextEdit, cxCheckBox,
  cxDBLookupComboBox;

type
  THBeliForm = class(TtemplateForm)
    taLoad: TAction;
    taTampil: TAction;
    taCetak: TAction;
    TaHapus: TAction;
    taCariAwal: TAction;
    taCariAkhir: TAction;
    taLoadAll: TAction;
    taBatal: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    DataSetPost1: TDataSetPost;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    Gudang: TADODataSet;
    GudangGdgID: TStringField;
    GudangKeterangan: TStringField;
    Jenis: TADODataSet;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    Merek: TADODataSet;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    dsItem: TDataSource;
    connTrading: TADOConnection;
    HBeli: TADODataSet;
    HBeliBrgID: TStringField;
    HBelicabID: TStringField;
    HBelihbeli: TFMTBCDField;
    HBelihpp: TFMTBCDField;
    HBelitglu: TDateTimeField;
    dsHBeli: TDataSource;
    cxGrid1DBTableView1BrgID: TcxGridDBColumn;
    cxGrid1DBTableView1hbeli: TcxGridDBColumn;
    cxGrid1DBTableView1hpp: TcxGridDBColumn;
    sp_Tampil: TADOStoredProc;
    sp_TampilBRGID: TStringField;
    sp_TampilCabID: TStringField;
    sp_TampilHBeli: TFMTBCDField;
    sp_TampilHPP: TFMTBCDField;
    lbl3: TLabel;
    cbUrut: TComboBox;
    chkAll: TcxCheckBox;
    edtKodeFrom: TcxTextEdit;
    edtKodeTo: TcxTextEdit;
    btnAkhi: TcxButton;
    btnAwal: TcxButton;
    edtNamaFrom: TcxTextEdit;
    edtNamaTo: TcxTextEdit;
    lblFrom: TLabel;
    lblTo: TLabel;
    btTampil: TcxButton;
    btBatal: TcxButton;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    sp_input_harga_beli: TADOStoredProc;
    sp_delete_all: TADOStoredProc;
    procedure taTampilExecute(Sender: TObject);
    procedure taLoadExecute(Sender: TObject);
    procedure cbUrutChange(Sender: TObject);
    procedure taCariAwalExecute(Sender: TObject);
    procedure taCariAkhirExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure taLoadAllExecute(Sender: TObject);
    procedure HBeliAfterPost(DataSet: TDataSet);
    procedure TaHapusExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    statusTransaksi:Boolean;
  end;

var
  HBeliForm: THBeliForm;

implementation

uses Search;

{$R *.dfm}

procedure THBeliForm.cbUrutChange(Sender: TObject);
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

procedure THBeliForm.HBeliAfterPost(DataSet: TDataSet);
var
  querylocal : TADOQuery;
begin
  inherited;
  with sp_find_table do
  begin
    Close;
    Parameters.ParamByName('brgId_').Value :=HbeliBRGID.Value;
    Parameters.ParamByName('CABId_').Value :=HBelicabID.Value;
    Parameters.ParamByName('GDGId_').Value :='';
    Parameters.ParamByName('table_').Value :='inbarangHBeli';
    Open;
  end;
  if sp_find_tableHasil.Value <> '' then
  begin
    With sp_input_harga_beli do
    begin
      close;
      Parameters.ParamByName('cabID_').Value := HBelicabID.Value;
      parameters.ParamByName('Hbeli_').Value := HBelihbeli. AsCurrency;
      parameters.ParamByName('Hpp_').Value   := HBelihpp.AsCurrency;
      parameters.ParamByName('BrgID_').Value := HBeliBrgID.Value;
      parameters.parambyname('stattransaksi').Value := 'Edit';
      ExecProc;
    end;
  end else
  begin
    With sp_input_harga_beli do
    begin
      close;
      Parameters.ParamByName('cabID_').Value := HBelicabID.Value;
      parameters.ParamByName('Hbeli_').Value := HBelihbeli. AsCurrency;
      parameters.ParamByName('Hpp_').Value   := HBelihpp.AsCurrency;
      parameters.ParamByName('BrgID_').Value := HBeliBrgID.Value;
      parameters.parambyname('stattransaksi').Value := 'tambah';
      ExecProc;
    end;
  end;
end;

procedure THBeliForm.taBatalExecute(Sender: TObject);
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

procedure THBeliForm.taCariAkhirExecute(Sender: TObject);
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 100;
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 100;
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 100;
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 100;
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

procedure THBeliForm.taCariAwalExecute(Sender: TObject);
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 50;
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 500;
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 50;
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
          SearchForm.Left := Self.Width + 30;
          SearchForm.Top  := Self.Top  + 50;
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

procedure THBeliForm.TaHapusExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Apakah akan menghapus semua data'#13'Pilih OK jika akan mendelete semua data'#13'Pilih Cancel Jika hanya satu data',(mtConfirmation),[mbOK,mbCancel],0) = MrOk then
  begin
    with sp_delete_all do
    begin
      close;
      Parameters.ParamByName('Table_').Value :='inbarangHBeli';
      Parameters.ParamByName('Stat_').Value  := 1;
      Parameters.ParamByName('BRGID_').Value :='';
      Parameters.ParamByName('GDGID_').Value := HBelicabID.Value;
      ExecProc;
    end;
  end else
  begin
    with sp_delete_all do
    begin
      close;
      Parameters.ParamByName('Table_').Value :='inbarangHBeli';
      Parameters.ParamByName('Stat_').Value  := 0;
      Parameters.ParamByName('BRGID_').Value := HBeliBrgID.Value;
      Parameters.ParamByName('GDGID_').Value := HBelicabID.Value;
      ExecProc;
    end;
  end;
  taTampil.Execute;
end;

procedure THBeliForm.taLoadAllExecute(Sender: TObject);
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
            Parameters.ParamByName('gdgIDTemp').Value   := '';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value      := sp_tampilBRGID.Value;
              HBeliCabID.Value      := sp_TampilCabID.Value;
              HBelihbeli.AsCurrency := sp_TampilHBeli.AsCurrency;
              HBelihpp.AsCurrency   := sp_TampilHPP.AsCurrency;
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
            Parameters.ParamByName('gdgIDTemp').Value   :='';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value      := sp_tampilBRGID.Value;
              HBeliCabID.Value      := sp_TampilCabID.Value;
              HBelihbeli.AsCurrency := sp_TampilHBeli.AsCurrency;
              HBelihpp.AsCurrency   := sp_TampilHPP.AsCurrency;
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
            Parameters.ParamByName('gdgIDTemp').Value   := '';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value      := sp_tampilBRGID.Value;
              HBeliCabID.Value      := sp_TampilCabID.Value;
              HBelihbeli.AsCurrency := sp_TampilHBeli.AsCurrency;
              HBelihpp.AsCurrency   := sp_TampilHPP.AsCurrency;
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
            Parameters.ParamByName('gdgIDTemp').Value   := '';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value      := sp_tampilBRGID.Value;
              HBeliCabID.Value      := sp_TampilCabID.Value;
              HBelihbeli.AsCurrency := sp_TampilHBeli.AsCurrency;
              HBelihpp.AsCurrency   := sp_TampilHPP.AsCurrency;
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
          Querylocal.SQL.Add('Call SP_Find_Harga_Beli('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''BRGID'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value   := Querylocal.Fields[0].Value;
              HBeliCabID.Value   := Querylocal.Fields[1].Value;
              HBelihbeli.AsCurrency:= Querylocal.Fields[2].AsCurrency;
              HBelihpp.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    1 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
           Querylocal.SQL.Add('Call SP_Find_Harga_Beli('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''Jns'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value   := Querylocal.Fields[0].Value;
              HBeliCabID.Value   := Querylocal.Fields[1].Value;
              HBelihbeli.AsCurrency:= Querylocal.Fields[2].AsCurrency;
              HBelihpp.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    2 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Beli('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''Gol'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value   := Querylocal.Fields[0].Value;
              HBeliCabID.Value   := Querylocal.Fields[1].Value;
              HBelihbeli.AsCurrency:= Querylocal.Fields[2].AsCurrency;
              HBelihpp.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    3 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Beli('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''Mrk'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HBeli.open;
              HBeli.insert;
              HBeliBRGID.Value   := Querylocal.Fields[0].Value;
              HBeliCabID.Value   := Querylocal.Fields[1].Value;
              HBelihbeli.AsCurrency:= Querylocal.Fields[2].AsCurrency;
              HBelihpp.AsCurrency:= Querylocal.Fields[3].AsCurrency;
              Querylocal.Next;
            end;
          end;
        end;
    end;
    Querylocal.Free;
  end;
  HBeli.Last;
  HBeli.Append;
  cxGrid1.Show;
  cxGrid1DBTableView1BRGID.Properties.ReadOnly := true;
  cxGrid1DBTableView1.Columns[0].FocusWithSelection;
  cxGrid1DBTableView1hbeli.Selected:= true;
  cxGrid1.SetFocus;
end;

procedure THBeliForm.taLoadExecute(Sender: TObject);
begin
  inherited;
  HBeli.Close;
  cxGrid1.Hide;
  cbUrut.ItemIndex := -1;
  cbUrut.SetFocus;
//    taCariAwal.Enabled := false;
//    taCariAkhir.Enabled:= false;
end;

procedure THBeliForm.taTampilExecute(Sender: TObject);
begin
  inherited;
  HBeli.Close;
  // Karena masih dalam kondisi Button Tampil maka ditampilkan semua dari table
  // INBarangHBeli di unionkan dengan inbarang
  // Procedure yang dipake sp_find_Harga_Beli
  With sp_Tampil do
  begin
    close;
    Parameters.ParamByName('BrgIDAwal').Value := '';
    Parameters.ParamByName('BrgIDAwal').Value := '';
    Parameters.ParamByName('GdgIdTemp').Value := '';
    Parameters.ParamByName('statAll').Value   := 0;
    Parameters.ParamByName('cari').Value      := '';
    open;
  end;
  if not sp_Tampil.IsEmpty then
  begin
    while not sp_Tampil.Eof do
    begin
      HBeli.Open;
      HBeli.Insert;
      HBeliBRGID.Value        := sp_TampilBRGID.Value;
      HBeliCabID.Value        := sp_TampilCabID.Value;
      HBelihbeli.AsCurrency   := sp_TampilHBeli.AsCurrency;
      HBelihpp.AsCurrency     := sp_TampilHPP.AsCurrency;
      sp_Tampil.Next;
    end;
    HBeli.Last;
    HBeli.Append;
    Barang.Close;
    Barang.Open;
    cxGrid1DBTableView1.Columns[0].Selected := True;
    cxGrid1DBTableView1BRGID.FocusWithSelection;
    cxGrid1.SetFocus;
  end;
end;

end.
