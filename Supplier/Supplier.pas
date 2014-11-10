unit Supplier;

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
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, ADODB, cxCheckBox, cxCheckComboBox,
  cxTextEdit;

type
  TSupplierForm = class(TtemplateForm)
    connTrading: TADOConnection;
    Supplier: TADODataSet;
    SupplierSUPID: TStringField;
    SupplierCabID: TStringField;
    SupplierNama: TStringField;
    SupplierAL1: TStringField;
    SupplierAL2: TStringField;
    SupplierTelp: TStringField;
    SupplierContact_Perso: TStringField;
    SupplierNPWP: TStringField;
    SupplierTerm: TSmallintField;
    SupplierKlink: TStringField;
    SuppliervalID: TStringField;
    SupplierTglU: TDateTimeField;
    SupplierwilID: TStringField;
    SupplierFax: TStringField;
    SupplierLNOAktif: TStringField;
    dsSupplier: TDataSource;
    cxGrid1DBTableView1SUPID: TcxGridDBColumn;
    cxGrid1DBTableView1Nama: TcxGridDBColumn;
    cxGrid1DBTableView1LNOAktif: TcxGridDBColumn;
    Valuta: TADODataSet;
    Wilayah: TADODataSet;
    dsValuta: TDataSource;
    dsWilayah: TDataSource;
    WilayahWilayahID: TStringField;
    WilayahKeterangan: TStringField;
    ValutaVALID: TWideStringField;
    ValutaKETERANGAN: TWideStringField;
    ValutaTGLU: TDateTimeField;
    ValutaStatus_: TWideStringField;
    sp1: TADOStoredProc;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    sp2: TADOStoredProc;
    pxSystem: TADODataSet;
    pxSystemCABID: TWideStringField;
    qrySystem: TADOQuery;
    qrySystemLargeintField1: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure SupplierAfterInsert(DataSet: TDataSet);
    procedure SupplierAfterEdit(DataSet: TDataSet);
    procedure SupplierNewRecord(DataSet: TDataSet);
    procedure SupplierBeforePost(DataSet: TDataSet);
    procedure SupplierAfterPost(DataSet: TDataSet);
    procedure SupplierAfterDelete(DataSet: TDataSet);
    procedure SupplierBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierForm: TSupplierForm;

implementation

uses FSupplier;

{$R *.dfm}

procedure TSupplierForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    Supplier.Open;
    Wilayah.Open;
    Valuta.Open;
    pxSystem.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TSupplierForm.SupplierAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Supplier.Close;
  Supplier.Open;
end;

procedure TSupplierForm.SupplierAfterEdit(DataSet: TDataSet);
begin
  inherited;
  FSUPPLIERFORM := TFSUPPLIERFORM.create(nil);
  FSUPPLIERFORM.Caption := 'EDIT DATA SUPPLIER';
  FSUPPLIERFORM.dbedit1.Enabled := False;
  FSUPPLIERFORM.dbedit1.Color := clSilver;
  FSUPPLIERFORM.ShowModal;
end;

procedure TSupplierForm.SupplierAfterInsert(DataSet: TDataSet);
begin
  inherited;
  FSUPPLIERFORM := TFSUPPLIERFORM.create(nil);
  FSUPPLIERFORM.Caption := 'TAMBAH DATA SUPPLIER';
  FSUPPLIERFORM.dbedit1.Enabled := true;
  FSUPPLIERFORM.dbedit1.Color := clWindow;
  FSUPPLIERFORM.ShowModal;
end;

procedure TSupplierForm.SupplierAfterPost(DataSet: TDataSet);
begin
  inherited;
  with sp_find_table do
  begin
    Close;
    Parameters.ParamByName('brgId_').Value :=SupplierSUPID.Value;
    Parameters.ParamByName('CABId_').Value :=SupplierCabID.Value;
    Parameters.ParamByName('GDGId_').Value :='';
    Parameters.ParamByName('table_').Value :='APSupplier';
    Open;
  end;
  if sp_find_tableHasil.Value <> '' then
  begin
    with sp1 do
    begin
      close;
      Parameters.ParamByName('supID_').Value := SupplierSUPID.Value;
      Parameters.ParamByName('CabId_').Value := SupplierCabID.Value;
      Parameters.ParamByName('AL1_').Value   := SupplierAL1.Value;
      Parameters.ParamByName('AL2_').Value    := SupplierAL2.Value;
      Parameters.ParamByName('telp_').Value  := SupplierTelp.Value;
      Parameters.ParamByName('NPWP_').Value := SupplierNPWP.Value;
      Parameters.ParamByName('term_').Value := SupplierTerm.Value;
      Parameters.ParamByName('VALID_').Value   := SuppliervalID.Value;
      Parameters.ParamByName('WilID_').Value    := SupplierwilID.Value;
      Parameters.ParamByName('FAX_').Value  := SupplierFax.Value;
      Parameters.ParamByName('LNOaktif_').Value  := SupplierLNOAktif.Value;
      Parameters.ParamByName('StatTransaksi').Value:= 'edit';
      Parameters.ParamByName('Nama_').Value:= SupplierNama.Value;
      ExecProc;
    end;
  end else
  begin
    with sp1 do
    begin
      close;
      Parameters.ParamByName('supID_').Value := SupplierSUPID.Value;
      Parameters.ParamByName('CabId_').Value := SupplierCabID.Value;
      Parameters.ParamByName('AL1_').Value   := SupplierAL1.Value;
      Parameters.ParamByName('AL2_').Value    := SupplierAL2.Value;
      Parameters.ParamByName('telp_').Value  := SupplierTelp.Value;
      Parameters.ParamByName('NPWP_').Value := SupplierNPWP.Value;
      Parameters.ParamByName('term_').Value := SupplierTerm.Value;
      Parameters.ParamByName('VALID_').Value   := SuppliervalID.Value;
      Parameters.ParamByName('WilID_').Value    := SupplierwilID.Value;
      Parameters.ParamByName('FAX_').Value  := SupplierFax.Value;
      Parameters.ParamByName('LNOaktif_').Value  := SupplierLNOAktif.Value;
      Parameters.ParamByName('StatTransaksi').Value:= 'tambah';
      Parameters.ParamByName('Nama_').Value:= SupplierNama.Value;
      ExecProc;
    end;
  end;
end;

procedure TSupplierForm.SupplierBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with sp2 do
  begin
    close;
    Parameters.ParamByName('Table_').Value  :='APSupplier';
    Parameters.ParamByName('Stat_').Value   := 0;
    Parameters.ParamByName('BrgId_').Value  :=SupplierSUPID.Value;
    Parameters.ParamByName('GdgID_').Value  := SupplierCabID.Value;
    ExecProc;
  end;
end;

procedure TSupplierForm.SupplierBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (SupplierTerm.Value = 0) or (SupplierTerm.Value = null) then
  begin
    MessageDlg('Harap diisi TERM OF PAYMENT Untuk Supplier Bersangkutan...!!!',(mtError),[mbYes],0);
    abort;
  end;
  if (SupplierSUPID.Value = '') or (SupplierTerm.Value = null) then
  begin
    MessageDlg('Harap diisi Supplier ID Untuk Supplier Bersangkutan...!!!',(mtError),[mbYes],0);
    abort;
  end;
end;

procedure TSupplierForm.SupplierNewRecord(DataSet: TDataSet);
begin
  inherited;
  SupplierLNOAktif.Value := 'F';
  SupplierCabID.Value := pxSystemCABID.Value;
end;

end.
