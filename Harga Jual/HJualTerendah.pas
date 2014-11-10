unit HJualTerendah;

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
  dxBar, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, Menus,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxDBLookupComboBox, cxCalc, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxCheckBox, cxButtons, ADODB, Mask, DBCtrls, cxGroupBox;

type
  THJualTerendahForm = class(TFormTemplateStayOnTop)
    cxButton8: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    btBatal: TcxButton;
    btTampil: TcxButton;
    btnAkhi: TcxButton;
    btnAwal: TcxButton;
    lbl8: TLabel;
    lblFrom: TLabel;
    lblTo: TLabel;
    cbUrut: TComboBox;
    chkAll: TcxCheckBox;
    edtKodeFrom: TcxTextEdit;
    edtKodeTo: TcxTextEdit;
    edtNamaTo: TcxTextEdit;
    edtNamaFrom: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    HJualMin: TADODataSet;
    cxGroupBox3: TcxGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    dsHJualMin: TDataSource;
    HJualMinCabID: TWideStringField;
    HJualMinBRGID: TWideStringField;
    HJualMinHPP: TFMTBCDField;
    HJualMinH1: TFMTBCDField;
    HJualMinH2: TFMTBCDField;
    HJualMinH3: TFMTBCDField;
    HJualMinCreate_ID: TWideStringField;
    HJualMinCreate_Tgl: TDateTimeField;
    HJualMinModify_ID: TWideStringField;
    HJualMinModify_Tgl: TDateTimeField;
    cxGrid1DBTableView1BRGID: TcxGridDBColumn;
    cxGrid1DBTableView1H1: TcxGridDBColumn;
    cxGrid1DBTableView1H2: TcxGridDBColumn;
    cxGrid1DBTableView1H3: TcxGridDBColumn;
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
    taLoad: TAction;
    taCariAwal: TAction;
    taCariAkhir: TAction;
    taBatal: TAction;
    taTampil: TAction;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    BarangStn1: TStringField;
    BarangStn2: TStringField;
    BarangStn3: TStringField;
    BarangIsi1: TFMTBCDField;
    BarangIsi2: TFMTBCDField;
    Barang_: TADODataSet;
    Barang_BRGID: TStringField;
    Barang_Nama1: TStringField;
    Barang_Stn1: TStringField;
    Barang_Stn2: TStringField;
    Barang_Stn3: TStringField;
    Barang_Isi1: TFMTBCDField;
    Barang_Isi2: TFMTBCDField;
    sp_Tampil: TADOStoredProc;
    ds_find_barang: TDataSource;
    PXSystem: TADODataSet;
    PXSystemMETODE: TWideStringField;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    Jenis: TADODataSet;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    Merek: TADODataSet;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    sp_input_H_Jual_Min: TADOStoredProc;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    lbl1: TLabel;
    DBEdit7: TDBEdit;
    lbl9: TLabel;
    DBEdit8: TDBEdit;
    sp_TampilCabID: TStringField;
    sp_TampilBrgID: TStringField;
    sp_Tampilhbeli: TFMTBCDField;
    sp_TampilHpp: TFMTBCDField;
    sp_TampilH1: TFMTBCDField;
    sp_TampilH2: TFMTBCDField;
    sp_TampilH3: TFMTBCDField;
    sp_find_barang: TADOStoredProc;
    sp_find_barangNama: TStringField;
    sp_find_barangStn1: TStringField;
    sp_find_barangStn2: TStringField;
    sp_find_barangStn3: TStringField;
    sp_find_barangIsi1: TFMTBCDField;
    sp_find_barangIsi2: TFMTBCDField;
    sp_find_barangHPP_: TFMTBCDField;
    BarangHBeli: TFMTBCDField;
    procedure taLoadExecute(Sender: TObject);
    procedure taCariAwalExecute(Sender: TObject);
    procedure taCariAkhirExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure taTampilExecute(Sender: TObject);
    procedure HJualMinAfterPost(DataSet: TDataSet);
    procedure HJualMinBRGIDValidate(Sender: TField);
    procedure HJualMinH3Validate(Sender: TField);
    procedure HJualMinH2Validate(Sender: TField);
  private
  Querylocal : TADOQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HJualTerendahForm: THJualTerendahForm;

implementation

uses Search, HJual;
{$R *.dfm}

procedure THJualTerendahForm.HJualMinAfterPost(DataSet: TDataSet);
begin
  inherited;
  with sp_find_table do
  begin
    Close;
    Parameters.ParamByName('brgId_').Value :=HJualMinBRGID.Value;
    Parameters.ParamByName('CABId_').Value :=HJualMinCabID.Value;
    Parameters.ParamByName('GDGId_').Value :='';
    Parameters.ParamByName('table_').Value :='inbarangHJualmin';
    Open;
  end;
  if sp_find_tableHasil.Value <> '' then
  begin
    With sp_input_H_Jual_Min do
    begin
      close;
      Parameters.ParamByName('BRGID_').Value        := HJualMinBrgID.Value;
      parameters.ParamByName('CABID_').Value        := HJualMinCabID.Value;
      parameters.ParamByName('H1_').Value           := HJualMinH1.AsFloat;
      parameters.ParamByName('H2_').Value           := HJualMinH2.AsFloat;
      parameters.ParamByName('H3_').Value           := HJualMinH3.AsFloat;
      parameters.ParamByName('ID_').Value           := HJualForm.cUser_;
      parameters.parambyname('stattransaksi').Value := 'Edit';
      parameters.ParamByName('Hpp_').Value          := HJualMinHpp.AsFloat;
      ExecProc;
    end;
  end else
  begin
    With sp_input_H_Jual_Min do
    begin
      close;
      Parameters.ParamByName('BRGID_').Value        := HJualMinBrgID.Value;
      parameters.ParamByName('CABID_').Value        := HJualMinCabID.Value;
      parameters.ParamByName('H1_').Value           := HJualMinH1.AsFloat;
      parameters.ParamByName('H2_').Value           := HJualMinH2.AsFloat;
      parameters.ParamByName('H3_').Value           := HJualMinH3.AsFloat;
      parameters.ParamByName('ID_').Value           := HJualForm.cUser_;
      parameters.parambyname('stattransaksi').Value := 'tambah';
      parameters.ParamByName('Hpp_').Value          := HJualMinHpp.AsFloat;
      ExecProc;
    end;
  end;
end;

procedure THJualTerendahForm.HJualMinBRGIDValidate(Sender: TField);
begin
  inherited;
  sp_find_barang.Close;
  sp_find_barang.Parameters.ParamByName('Nama_').Value := HJualMinBRGID.Value;
  sp_find_barang.Open;
  if not sp_find_barang.IsEmpty then
  HJualMinHPP.Value := sp_find_barangHPP_.Value else HJualMinHPP.AsCurrency := 0;
end;

procedure THJualTerendahForm.HJualMinH2Validate(Sender: TField);
begin
  inherited;
  if HJualMinH2.AsCurrency > 0 then
  Begin
    HJualMinH1.AsCurrency          := HJualMinH2.AsCurrency * sp_find_barangIsi1.AsCurrency;
  End;
end;

procedure THJualTerendahForm.HJualMinH3Validate(Sender: TField);
begin
  inherited;
  if HJualMinH3.AsCurrency > 0 then
  Begin
    HJualMinH2.AsCurrency          := HJualMinH3.AsCurrency * sp_find_barangIsi2.AsCurrency;
    HJualMinH1.AsCurrency          := HJualMinH2.AsCurrency * sp_find_barangIsi1.AsCurrency;
  End;
end;

procedure THJualTerendahForm.taBatalExecute(Sender: TObject);
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

procedure THJualTerendahForm.taCariAkhirExecute(Sender: TObject);
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

procedure THJualTerendahForm.taCariAwalExecute(Sender: TObject);
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

procedure THJualTerendahForm.taLoadExecute(Sender: TObject);
begin
  inherited;
  HJualMin.Close;
  cxGrid1.Hide;
  cbUrut.ItemIndex := -1;
  cbUrut.SetFocus;
end;

procedure THJualTerendahForm.taTampilExecute(Sender: TObject);
begin
  inherited;
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
            Parameters.ParamByName('brgtempAwal').Value  := '';
            Parameters.ParamByName('brgtempAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'BrgID';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinBRGID.Value            := sp_TampilBRGID.Value;
              HJualMinCabID.Value            := sp_TampilCabID.Value;
              HJualMinHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualMinH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualMinH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualMinH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    1 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgtempAwal').Value  := '';
            Parameters.ParamByName('brgtempAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Jns';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinBRGID.Value            := sp_TampilBRGID.Value;
              HJualMinCabID.Value            := sp_TampilCabID.Value;
              HJualMinHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualMinH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualMinH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualMinH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    2 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgtempAwal').Value  := '';
            Parameters.ParamByName('brgtempAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Gol';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinBRGID.Value            := sp_TampilBRGID.Value;
              HJualMinCabID.Value            := sp_TampilCabID.Value;
              HJualMinHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualMinH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualMinH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualMinH3.AsCurrency          := sp_TampilH3.AsFloat;
              sp_tampil.Next;
            end;
          end;
        end;
    3 : begin
          with sp_tampil do
          begin
            close;
            Parameters.ParamByName('brgtempawal').Value  := '';
            Parameters.ParamByName('brgtempAkhir').Value := '';
            Parameters.ParamByName('statall').Value  := '0';
            Parameters.ParamByName('cari').Value     := 'Mrk';
            open;
          end;
          if not sp_tampil.IsEmpty then
          begin
            while not sp_tampil.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinBRGID.Value            := sp_TampilBRGID.Value;
              HJualMinCabID.Value            := sp_TampilCabID.Value;
              HJualMinHpp.AsCurrency         := sp_TampilHPP.AsFloat;
              HJualMinH1.AsCurrency          := sp_TampilH1.AsFloat;
              HJualMinH2.AsCurrency          := sp_TampilH2.AsFloat;
              HJualMinH3.AsCurrency          := sp_TampilH3.AsFloat;
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
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''BRGID'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinCabID.Value            := Querylocal.Fields[0].Value;
              HJualMinBrgID.Value            := Querylocal.Fields[2].Value;
              HJualMinhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualMinH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualMinH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualMinH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    1 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''Jns'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinCabID.Value            := Querylocal.Fields[0].Value;
              HJualMinBrgID.Value            := Querylocal.Fields[2].Value;
              HJualMinhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualMinH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualMinH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualMinH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    2 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''Gol'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinCabID.Value            := Querylocal.Fields[0].Value;
              HJualMinBrgID.Value            := Querylocal.Fields[2].Value;
              HJualMinhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualMinH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualMinH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualMinH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    3 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := HJualForm.connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Harga_Jual_ALL('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''','''',''1'',''Mrk'')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              HJualMin.open;
              HJualMin.insert;
              HJualMinCabID.Value            := Querylocal.Fields[0].Value;
              HJualMinBrgID.Value            := Querylocal.Fields[2].Value;
              HJualMinhpp.AsCurrency         := Querylocal.Fields[3].AsFloat;
              HJualMinH1.AsCurrency          := Querylocal.Fields[6].AsFloat;
              HJualMinH2.AsCurrency          := Querylocal.Fields[7].AsFloat;
              HJualMinH3.AsCurrency          := Querylocal.Fields[8].AsFloat;
              Querylocal.Next;
            end;
          end;
        end;
    end;
    Querylocal.Free;
  end;
  HJualMin.Last;
  HJualMin.Append;
  cxGrid1.Show;
  cxGrid1DBTableView1BRGID.Properties.ReadOnly := true;
  cxGrid1DBTableView1.Columns[0].FocusWithSelection;
  cxGrid1DBTableView1H1.Selected:= true;
  cxGrid1.SetFocus;
end;

end.
