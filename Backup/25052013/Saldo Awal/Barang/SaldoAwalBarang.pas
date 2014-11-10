unit SaldoAwalBarang;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBActns, ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxPC, cxDBEdit, Menus, cxButtons, ADODB, ExtCtrls,
  ShellAnimations, XPMan, cxCheckBox, cxCalendar, Mask, DBCtrls;

type
  TSaldoAwalBarangForm = class(TtemplateForm)
    lbl1: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    taLoad: TAction;
    taTampil: TAction;
    taHapus: TAction;
    taCetak: TAction;
    Opname: TADODataSet;
    Jenis: TADODataSet;
    Merek: TADODataSet;
    Golongan: TADODataSet;
    Barang: TADODataSet;
    connTrading: TADOConnection;
    JenisJenisID: TStringField;
    JenisKeterangan: TStringField;
    GolonganGolID: TStringField;
    GolonganKeterangan: TStringField;
    MerekMRKID: TStringField;
    MerekKETERANGAN: TStringField;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    Gudang: TADODataSet;
    GudangGdgID: TStringField;
    GudangKeterangan: TStringField;
    dsGudang: TDataSource;
    lbl3: TLabel;
    cbUrut: TComboBox;
    chkAll: TcxCheckBox;
    edtKodeFrom: TcxTextEdit;
    edtKodeTo: TcxTextEdit;
    edtNamaFrom: TcxTextEdit;
    edtNamaTo: TcxTextEdit;
    lblFrom: TLabel;
    lblTo: TLabel;
    btnAwal: TcxButton;
    btnAkhi: TcxButton;
    btTampil: TcxButton;
    btBatal: TcxButton;
    taBatal: TAction;
    OpnameGDGID: TStringField;
    OpnameBRGID: TStringField;
    OpnameCabID: TStringField;
    OpnameNOMOR: TSmallintField;
    OpnameSTN: TStringField;
    OpnameNSTN: TStringField;
    OpnameHPOKOK: TFMTBCDField;
    OpnameQTY: TFMTBCDField;
    OpnamePOSISI: TDateField;
    OpnameCreate_id: TStringField;
    OpnameCreate_tgl: TDateTimeField;
    OpnameModify_id: TStringField;
    Opnamemodify_tgl: TDateTimeField;
    Opnamebukti: TStringField;
    Opnamelacc: TStringField;
    OpnameCreate_IdAcc: TStringField;
    OpnameCreate_TglAcc: TDateTimeField;
    dsOpname: TDataSource;
    cxGrid1DBTableView1BRGID: TcxGridDBColumn;
    cxGrid1DBTableView1STN: TcxGridDBColumn;
    cxGrid1DBTableView1HPOKOK: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1POSISI: TcxGridDBColumn;
    sp_Tampil: TADOStoredProc;
    sp_TampilNOMOR: TLargeintField;
    sp_TampilBRGID: TStringField;
    sp_TampilNSTN: TStringField;
    sp_TampilHPOKOK: TFMTBCDField;
    sp_TampilQTY: TFMTBCDField;
    sp_TampilPOSISI: TDateTimeField;
    sp_TampilGDGID: TStringField;
    dsItem: TDataSource;
    sp_tampil_satuan: TADOStoredProc;
    ds_tampil_Satuan: TDataSource;
    sp_find_satuan_: TADOStoredProc;
    sp_find_satuan_BRGID: TStringField;
    sp_find_satuan_stn: TStringField;
    sp_find_satuan_ISI: TFMTBCDField;
    sp_find_satuan_stn_: TLargeintField;
    sp_tampil_satuanBRGID: TStringField;
    sp_tampil_satuanstn: TStringField;
    sp_tampil_satuanISI: TFMTBCDField;
    sp_tampil_satuanstn_: TLargeintField;
    taFromCari: TAction;
    taToCari: TAction;
    taLoadAll: TAction;
    GudangID: TcxTextEdit;
    cxButton7: TcxButton;
    GudangNama: TcxTextEdit;
    taCariGudang: TAction;
    cxButton5: TcxButton;
    DataSetPost1: TDataSetPost;
    sp_no_urut_opname: TADOStoredProc;
    sp_no_urut_opnamehasil: TIntegerField;
    sp_input_opname: TADOStoredProc;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    procedure GudangNamaEnter(Sender: TObject);
    procedure taLoadExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure taTampilExecute(Sender: TObject);
    procedure OpnameNewRecord(DataSet: TDataSet);
    procedure OpnameBRGIDValidate(Sender: TField);
    procedure cbUrutChange(Sender: TObject);
    procedure OpnameNSTNValidate(Sender: TField);
    procedure taFromCariExecute(Sender: TObject);
    procedure taToCariExecute(Sender: TObject);
    procedure taLoadAllExecute(Sender: TObject);
    procedure taCariGudangExecute(Sender: TObject);
    procedure chkAllClick(Sender: TObject);
    procedure OpnameAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
  statusTransaksi : Boolean;
    { Public declarations }
  end;

var
  SaldoAwalBarangForm: TSaldoAwalBarangForm;

implementation

uses Search;

{$R *.dfm}

procedure TSaldoAwalBarangForm.cbUrutChange(Sender: TObject);
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

procedure TSaldoAwalBarangForm.chkAllClick(Sender: TObject);
begin
  inherited;
  if chkAll.Checked = true then
  begin
    edtKodeFrom.Enabled := False;
    edtKodeTo.Enabled := False;
    btnAwal.Enabled := false;
    btnAkhi.Enabled := false;
  end else
  begin
    edtKodeFrom.Enabled := True;
    edtKodeTo.Enabled := True;
    btnAwal.Enabled := true;
    btnAkhi.Enabled := true;
  end;
end;

procedure TSaldoAwalBarangForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if mutex <> 0 then CloseHandle(mutex);
  inherited;
end;

procedure TSaldoAwalBarangForm.FormCreate(Sender: TObject);
begin
  inherited;
  mutex := CreateMutex(nil, True, 'SaldoAwalBarangForm');
  if (mutex = 0) or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]) then
  begin
      MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
      PChar(application.exename), MB_OK or MB_ICONERROR);
      Self.close;
  end else
  begin
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
end;

procedure TSaldoAwalBarangForm.GudangNamaEnter(Sender: TObject);
begin
  inherited;
  Gudang.Close;
  Gudang.Open;
  Barang.Close;
  Barang.Open;
end;

procedure TSaldoAwalBarangForm.OpnameAfterPost(DataSet: TDataSet);
var
  querylocal : TADOQuery;
begin
  inherited;
  if statusTransaksi = false then
  begin
    if Opname.FieldValues['Qty'] >= 0 then
    begin
      with sp_no_urut_opname do
      begin
        close;
        Parameters.ParamByName('GdgId_').Value := OpnameGDGID.Value;
        Parameters.ParamByName('gdgID_').Value := OpnameCabID.Value;
        Open;
      end;
//      OpnameNOMOR.Value := StrToInt(sp_no_urut_opnamehasil.AsString);
      with sp_find_table do
      begin
        Close;
        Parameters.ParamByName('brgId_').Value :=OpnameBRGID.Value;
        Parameters.ParamByName('CABId_').Value :=OpnameCabID.Value;
        Parameters.ParamByName('GDGId_').Value :=OpnameGDgID.Value;
        Parameters.ParamByName('table_').Value :='inbarangopname';
        Open;
      end;
      if sp_find_tableHasil.Value <> '' then
      begin
        With sp_input_opname do
        begin
          close;
          Parameters.ParamByName('tempgdgid').Value := OpnameGDgID.Value;
          parameters.ParamByName('tempcabid').Value := OpnameCabID.Value;
          parameters.ParamByName('tempnstn').Value := OpnameNSTN.Value;
          parameters.ParamByName('temphpokok').Value := OpnameHPOKOK.AsCurrency;
          parameters.ParamByName('tempqty').Value := OpnameQTY.AsCurrency;
          parameters.ParamByName('tempposisi').Value := OpnamePOSISI.Value;
          parameters.ParamByName('tempcreateid').Value := ''; //untuk admin
          parameters.ParamByName('tempcreatetgl').Value := now;
          parameters.ParamByName('tempmodify_id').Value := ''; // untuk admin
          parameters.ParamByName('tempmodify_tgl').Value := Now;
          parameters.ParamByName('tempbrgId').Value := OpnameBRGID.Value;
          parameters.parambyname('stattransaksi').Value := 'Edit';
          parameters.ParamByName('tempnomor').Value := StrToInt(sp_no_urut_opnamehasil.AsString);
          ExecProc;
        end;
      end else
      begin
        With sp_input_opname do
        begin
          close;
          Parameters.ParamByName('tempgdgid').Value := OpnameGDgID.Value;
          parameters.ParamByName('tempcabid').Value := OpnameCabID.Value;
          parameters.ParamByName('tempnstn').Value := OpnameNSTN.Value;
          parameters.ParamByName('temphpokok').Value := OpnameHPOKOK.AsCurrency;
          parameters.ParamByName('tempqty').Value := OpnameQTY.AsCurrency;
          parameters.ParamByName('tempposisi').Value := OpnamePOSISI.Value;
          parameters.ParamByName('tempcreateid').Value := ''; //untuk admin
          parameters.ParamByName('tempcreatetgl').Value := now;
          parameters.ParamByName('tempmodify_id').Value := ''; // untuk admin
          parameters.ParamByName('tempmodify_tgl').Value := Now;
          parameters.ParamByName('tempbrgId').Value := OpnameBRGID.Value;
          parameters.parambyname('stattransaksi').Value := 'tambah';
          parameters.ParamByName('tempnomor').Value := StrToInt(sp_no_urut_opnamehasil.AsString);
          ExecProc;
        end;
      end;
    end;
  end;
end;

procedure TSaldoAwalBarangForm.OpnameBRGIDValidate(Sender: TField);
begin
  inherited;
  with sp_tampil_satuan do
  begin
    close;
    Parameters.ParamByName('brgId_').Value := OpnameBRGID.Value;
    open;
  end;
end;

procedure TSaldoAwalBarangForm.OpnameNewRecord(DataSet: TDataSet);
var
  Querylocal : TADOQuery;
begin
  inherited;
  with sp_find_table do
  begin
    Close;
    Parameters.ParamByName('brgId_').Value :='';
    Parameters.ParamByName('CABId_').Value :='';
    Parameters.ParamByName('GDGId_').Value :='';
    Parameters.ParamByName('table_').Value :='pxsystem';
    Open;
  end;
  Opnamecabid.Value := sp_find_tableHasil.Value;
  OpnameQTY.AsCurrency := 0;
end;

procedure TSaldoAwalBarangForm.OpnameNSTNValidate(Sender: TField);
begin
  inherited;
  with sp_find_satuan_ do
  begin
    close;
    Parameters.ParamByName('BrgId_').Value := OpnameBRGID.Value;
    Parameters.ParamByName('stn_').Value   := OpnameNSTN.Value;
    Open;
  end;
  if not sp_find_satuan_.IsEmpty then OpnameHPOKOK.AsCurrency := OpnameHPOKOK.AsCurrency * sp_find_satuan_ISI.AsCurrency;
end;

procedure TSaldoAwalBarangForm.taBatalExecute(Sender: TObject);
begin
  inherited;
  edtKodeFrom.Clear;
  edtKodeTo.Clear;
  edtNamaFrom.Clear;
  edtNamaTo.Clear;
  chkAll.Checked:= false;
  cbUrut.ItemIndex := -1;
  cxGrid1.Show;
  GudangNama.SetFocus;
end;

procedure TSaldoAwalBarangForm.taCariGudangExecute(Sender: TObject);
begin
  inherited;
  Gudang.Close;
  Gudang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
  SearchForm.Left := Self.Width + 30;
  SearchForm.Top  := Self.Top  + 100;
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

procedure TSaldoAwalBarangForm.taFromCariExecute(Sender: TObject);
begin
  inherited;
  if chkAll.Checked = False then
  begin
    case cbUrut.ItemIndex of
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
  End;
end;

procedure TSaldoAwalBarangForm.taLoadAllExecute(Sender: TObject);
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
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value    := sp_tampilBRGID.Value;
              OpnameGDGID.Value    := GudangID.text;
              OpnameNSTN.Value   := sp_tampilNSTN.Value;
              OpnameHPOKOK.Value := sp_tampilHPOKOK.Value;
              OpnameQTY.Value    := sp_TampilQTY.Value;
              OpnamePOSISI.Value := sp_tampilPOSISI.Value;
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
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value    := sp_TampilBRGID.Value;
              OpnameGDGID.Value     := GudangID.text;
              OpnameNSTN.Value   := sp_tampilNSTN.Value;
              OpnameHPOKOK.Value := sp_tampilHPOKOK.Value;
              OpnameQTY.Value    := sp_TampilQTY.Value;
              OpnamePOSISI.Value := sp_tampilPOSISI.Value;
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
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value    := sp_TampilBRGID.Value;
              OpnameGDGID.Value     := GudangID.text;
              OpnameNSTN.Value   := sp_tampilNSTN.Value;
              OpnameHPOKOK.Value := sp_tampilHPOKOK.Value;
              OpnameQTY.Value    := sp_TampilQTY.Value;
              OpnamePOSISI.Value := sp_tampilPOSISI.Value;
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
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value    := sp_TampilBRGID.Value;
              OpnameGDGID.Value     := GudangID.text;
              OpnameNSTN.Value   := sp_tampilNSTN.Value;
              OpnameHPOKOK.Value := sp_tampilHPOKOK.Value;
              OpnameQTY.Value    := sp_TampilQTY.Value;
              OpnamePOSISI.Value := sp_tampilPOSISI.Value;
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
          Querylocal.SQL.Add('Call SP_Find_Opname('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''BRGID'','''+GudangID.Text+''')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value  := Querylocal.Fields[1].Value;
              OpnameGDGID.Value  := GudangID.Text;
              OpnameNSTN.Value   := Querylocal.Fields[2].Value;
              OpnameHPOKOK.AsCurrency := Querylocal.Fields[3].AsCurrency;
              OpnameQTY.AsCurrency    := Querylocal.Fields[4].AsCurrency;
              OpnamePOSISI.Value := Querylocal.Fields[5].Value;
              Querylocal.Next;
            end;
          end;
        end;
    1 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Opname('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''JNS'','''+GudangID.Text+''')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value  := Querylocal.Fields[1].Value;
              OpnameGDGID.Value  := GudangID.Text;
              OpnameNSTN.Value   := Querylocal.Fields[2].Value;
              OpnameHPOKOK.AsCurrency := Querylocal.Fields[3].AsCurrency;
              OpnameQTY.AsCurrency    := Querylocal.Fields[4].AsCurrency;
              OpnamePOSISI.Value := Querylocal.Fields[5].Value;
              Querylocal.Next;
            end;
          end;
        end;
    2 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Opname('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''GOL'','''+GudangID.Text+''')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value  := Querylocal.Fields[1].Value;
              OpnameGDGID.Value  := GudangID.Text;
              OpnameNSTN.Value   := Querylocal.Fields[2].Value;
              OpnameHPOKOK.AsCurrency := Querylocal.Fields[3].AsCurrency;
              OpnameQTY.AsCurrency    := Querylocal.Fields[4].AsCurrency;
              OpnamePOSISI.Value := Querylocal.Fields[5].Value;
              Querylocal.Next;
            end;
          end;
        end;
    3 : begin
          Querylocal := TADOQuery.Create(nil);
          Querylocal.Connection := connTrading;
          Querylocal.SQL.Clear;
          Querylocal.SQL.Add('Call SP_Find_Opname('''+edtKodeFrom.Text+''','''+edtKodeTo.Text+''',''1'',''MRK'','''+GudangID.Text+''')');
          Querylocal.Open;
          if not Querylocal.IsEmpty then
          begin
            while not Querylocal.Eof do
            begin
              Opname.open;
              Opname.insert;
              OpnameBRGID.Value  := Querylocal.Fields[1].Value;
              OpnameGDGID.Value  := GudangID.Text;
              OpnameNSTN.Value   := Querylocal.Fields[2].Value;
              OpnameHPOKOK.AsCurrency := Querylocal.Fields[3].AsCurrency;
              OpnameQTY.AsCurrency    := Querylocal.Fields[4].AsCurrency;
              OpnamePOSISI.Value := Querylocal.Fields[5].Value;
              Querylocal.Next;
            end;
          end;
        end;
    end;
    Querylocal.Free;
  end;
  Opname.First;
  cxGrid1.Show;
  cxGrid1DBTableView1BRGID.Properties.ReadOnly := true;
  cxGrid1DBTableView1.Columns[0].FocusWithSelection;
  cxGrid1DBTableView1QTY.Selected:= true;
  cxGrid1.SetFocus;
end;

procedure TSaldoAwalBarangForm.taLoadExecute(Sender: TObject);
begin
  inherited;
  if GudangNama.Text <> '' then
  begin
    opname.Close;
    cxGrid1.Hide;
    cbUrut.ItemIndex := -1;
    cbUrut.SetFocus;
  end else
  begin
    MessageDlg('Data gudang SO Harus Dipilih Terlebih Dahulu',(mtError),[mbOK],0);
    GudangNama.SetFocus;
    Abort;
  end;
end;

procedure TSaldoAwalBarangForm.taTampilExecute(Sender: TObject);
begin
  inherited;
  if GudangNama.Text <> '' then
  begin
    // Karena masih dalam kondisi Button Tampil maka ditampilkan semua dari table
    // INBarangopname di unionkan dengan inbaranghbeli
    // Procedure yang dipake sp_find_opname
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
        Opname.Open;
        Opname.Insert;
        OpnameGDGID.Value   := sp_TampilGDGID.Value;
        OpnameBRGID.Value   := sp_TampilBRGID.Value;
        OpnameNSTN.Value    := sp_TampilNSTN.Value;
        OpnamePOSISI.Value  := sp_TampilPOSISI.Value;
        OpnameHPOKOK.Value  := sp_TampilHPOKOK.Value;
        OpnameQTY.Value     := sp_TampilQTY.Value;
        sp_Tampil.Next;
      end;
      Barang.Close;
      Barang.Open;
      with sp_tampil_satuan do
      begin
        close;
        Parameters.ParamByName('brgId_').Value := OpnameBRGID.Value;
        open;
      end;
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

procedure TSaldoAwalBarangForm.taToCariExecute(Sender: TObject);
begin
  inherited;
  if chkAll.Checked = false then
  begin
    case cbUrut.ItemIndex of
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

end.
