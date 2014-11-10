unit HJualMassal;

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
  cxContainer, cxEdit, cxCheckBox, cxTextEdit, cxButtons, DB, ADODB, cxMaskEdit,
  cxSpinEdit;

type
  THJualMassalForm = class(TFormTemplateStayOnTop)
    bvl3: TBevel;
    btnAwal: TcxButton;
    btnAkhi: TcxButton;
    edtKodeTo: TcxTextEdit;
    edtKodeFrom: TcxTextEdit;
    lblFrom: TLabel;
    lblTo: TLabel;
    cburut: TComboBox;
    chkAll: TcxCheckBox;
    lbl8: TLabel;
    bvl2: TBevel;
    bvl1: TBevel;
    lbl1: TLabel;
    cbjenisproses: TComboBox;
    lbl2: TLabel;
    cbkenaikan: TComboBox;
    lbl3: TLabel;
    edtNilai: TcxTextEdit;
    lbl4: TLabel;
    edtPembulatan: TcxTextEdit;
    edtNamaTo: TcxTextEdit;
    edtNamaFrom: TcxTextEdit;
    taProses: TAction;
    taBatal: TAction;
    taCariKodeAwal: TAction;
    taCariKodeAkhir: TAction;
    Merek: TADODataSet;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    Jenis: TADODataSet;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    Golongan: TADODataSet;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    BarangStn1: TStringField;
    BarangStn2: TStringField;
    BarangStn3: TStringField;
    BarangIsi1: TFMTBCDField;
    BarangIsi2: TFMTBCDField;
    HrgId: TcxTextEdit;
    lbl5: TLabel;
    hrgDescription: TcxTextEdit;
    cxButton1: TcxButton;
    sp_proseshrgJual: TADOStoredProc;
    PXSystem: TADODataSet;
    PXSystemMETODE: TWideStringField;
    edtnilaiProsentase: TcxSpinEdit;
    taCariHarga: TAction;
    JHarga: TADODataSet;
    JHargaHrgID: TStringField;
    JHargaKeterangan: TStringField;
    JHargaValID: TStringField;
    procedure taBatalExecute(Sender: TObject);
    procedure taCariKodeAwalExecute(Sender: TObject);
    procedure taCariKodeAkhirExecute(Sender: TObject);
    procedure taProsesExecute(Sender: TObject);
    procedure taCariHargaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbjenisprosesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HJualMassalForm: THJualMassalForm;

implementation

uses Search, HJual;

{$R *.dfm}

procedure THJualMassalForm.cbjenisprosesChange(Sender: TObject);
begin
  inherited;
  case cbjenisproses.ItemIndex of
  0 : begin
        lbl3.Caption := 'Nilai';
        edtnilaiprosentase.Hide;
        edtnilai.Show;
      end;
  1 : begin
        lbl3.Caption := 'Nilai Persentase';
        edtNilai.Text := '0';
        edtnilai.Hide;
        edtnilaiprosentase.Left  := 172;
        edtnilaiprosentase.show;
      end;
  end;
end;

procedure THJualMassalForm.FormCreate(Sender: TObject);
begin
  inherited;
  PXSystem.Close;
  PXSystem.Open;
end;

procedure THJualMassalForm.taBatalExecute(Sender: TObject);
begin
  inherited;
  if ActiveMDIChild <> nil then
  ActiveMDIChild.Close else Self.Close;
end;

procedure THJualMassalForm.taCariHargaExecute(Sender: TObject);
begin
  inherited;
  JHarga.Close;
  JHarga.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
  SearchForm.Left := Self.Width + 30;
  SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := JHarga;
  if SearchForm.ShowModal =mrOk then
    begin
      HrgId.Text := JHargaHrgID.Value;
      hrgDescription.Text := JHargaKeterangan.Value;
      HrgId.SetFocus;
    end
  else
  begin
    HrgId.setfocus;
  end;
end;

procedure THJualMassalForm.taCariKodeAkhirExecute(Sender: TObject);
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

procedure THJualMassalForm.taCariKodeAwalExecute(Sender: TObject);
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
//          SearchForm.Top  := Self.Top  + 50;
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

procedure THJualMassalForm.taProsesExecute(Sender: TObject);
begin
  inherited;
  if (cburut.ItemIndex <> -1) and (cbjenisproses.ItemIndex <> -1) and (cbkenaikan.ItemIndex <> -1) and (cbjenisproses.ItemIndex <> -1) then
  begin
    with sp_proseshrgjual do
    begin
       if chkAll.Checked = True then
       begin
          close;
          Parameters.ParamByName('brgtempawal').Value     :='';
          Parameters.ParamByName('brgtempakhir').Value    :='';
          Parameters.ParamByName('hrgtemp').Value         :=HrgId.Text;
          Parameters.ParamByName('statAll').Value         :='0';
          Parameters.ParamByName('cari').Value            :='';
          Parameters.ParamByName('sysparam').Value        :=PXSystemMETODE.Value;
          Parameters.ParamByName('jproses').Value         :=cbjenisproses.ItemIndex;
          Parameters.ParamByName('kdari').Value           :=cbkenaikan.ItemIndex;
          Parameters.ParamByName('nilai').Value           :=StrToFloat(edtnilai.Text);
          Parameters.ParamByName('persentase').Value      :=StrToFloat(edtnilaiprosentase.Text);
          Parameters.ParamByName('pembulatan').Value      :=StrToFloat(edtpembulatan.Text);
          Parameters.ParamByName('ID_').Value             :=HJualForm.cUser_;
          ExecProc;
       end else
       begin
          Close;
          Parameters.ParamByName('brgtempawal').Value     :=edtKodeFrom.Text;
          Parameters.ParamByName('brgtempakhir').Value    :=edtKodeTo.Text;
          Parameters.ParamByName('hrgtemp').Value         :=HrgId.Text;
          Parameters.ParamByName('statAll').Value         :='1';
          case cburut.ItemIndex of
          0 : begin
                Parameters.ParamByName('cari').Value :='Brg';
              end;
          1 : begin
                Parameters.ParamByName('cari').Value :='Jns';
              end;
          2 : begin
                Parameters.ParamByName('cari').Value :='Gol';
              end;
          3 : begin
                Parameters.ParamByName('cari').Value :='Mrk';
              end;
          end;
          Parameters.ParamByName('sysparam').Value        :=PXSystemMETODE.Value;
          Parameters.ParamByName('jproses').Value         :=cbjenisproses.ItemIndex;
          Parameters.ParamByName('kdari').Value           :=cbkenaikan.ItemIndex;
          Parameters.ParamByName('nilai').Value           :=StrToFloat(edtnilai.Text);
          Parameters.ParamByName('persentase').Value      :=StrToFloat(edtnilaiprosentase.Text);
          Parameters.ParamByName('pembulatan').Value      :=StrToFloat(edtpembulatan.Text);
          Parameters.ParamByName('ID_').Value             :=HJualForm.cUser_;
          ExecProc;
       end;
    end;
    MessageDlg('Data berhasil diupdate secara massal',(mtInformation),[mbOK],0);
    edtnilaiprosentase.Text :='0';
    edtnilai.Text :='0';
    HrgId.Clear;
    edtNamaFrom.Clear;
    edtNamaTo.Clear;
    edtKodeFrom.Clear;
    edtKodeTo.Clear;
    cbjenisproses.ItemIndex :=-1;
    cbkenaikan.ItemIndex :=-1;
    hrgDescription.Clear;
    edtpembulatan.Clear;
    edtNilai.Show;
    edtnilaiprosentase.Hide;
    cburut.SetFocus;
    chkAll.Checked:= false;
    cburut.ItemIndex := -1;
  end else
  begin
    MessageDlg('Maaf tentukan dahulu Jenis Proses Kenaikan'#13'Kenaikan dari dan Nilai besarannya',(mtInformation),[mbOK],0);
    edtnilaiprosentase.Text :='0';
    edtnilai.Text :='0';
    HrgId.Clear;
    edtNamaFrom.Clear;
    edtNamaTo.Clear;
    edtKodeFrom.Clear;
    edtKodeTo.Clear;
    hrgDescription.Clear;
    cbjenisproses.ItemIndex :=0;
    cbkenaikan.ItemIndex :=0;
    edtpembulatan.Clear;
    edtnilaiprosentase.Hide;
    edtNilai.Show;
    cburut.SetFocus;
    chkAll.Checked:= false;
    cburut.ItemIndex := -1;
    abort;
  end;
end;

end.
