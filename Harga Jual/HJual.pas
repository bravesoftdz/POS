unit HJual;

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
  ExtCtrls, cxPC, StdCtrls, Menus, cxButtons, ADODB, cxTextEdit,
  cxDBLookupComboBox, Mask, DBCtrls, cxCalc;

const
  sSYS = 'UserLog.SYS';

type
  THJualForm = class(TtemplateForm)
    taPerKode: TAction;
    taTerendah: TAction;
    taBersih: TAction;
    taCetak: TAction;
    DataSetPost1: TDataSetPost;
    lbl1: TLabel;
    GudangID: TcxTextEdit;
    cxButton7: TcxButton;
    GudangNama: TcxTextEdit;
    connTrading: TADOConnection;
    HJual: TADODataSet;
    dsHJual: TDataSource;
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
    cxGrid1DBTableView1HrgID: TcxGridDBColumn;
    cxGrid1DBTableView1Hpp: TcxGridDBColumn;
    cxGrid1DBTableView1Profit: TcxGridDBColumn;
    cxGrid1DBTableView1Profitnilai: TcxGridDBColumn;
    cxGrid1DBTableView1H1: TcxGridDBColumn;
    cxGrid1DBTableView1H2: TcxGridDBColumn;
    cxGrid1DBTableView1H3: TcxGridDBColumn;
    JHarga: TADODataSet;
    dsJharga: TDataSource;
    JHargaHrgID: TStringField;
    JHargaKeterangan: TStringField;
    JHargaValID: TStringField;
    taCariBarang: TAction;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    sp_Hrg_Jual: TADOStoredProc;
    sp_Hrg_JualCabID: TStringField;
    sp_Hrg_JualHrgID: TStringField;
    sp_Hrg_JualBrgID: TStringField;
    sp_Hrg_JualHpp: TFMTBCDField;
    sp_Hrg_JualProfit: TFMTBCDField;
    sp_Hrg_JualProfitnilai: TFMTBCDField;
    sp_Hrg_JualH1: TFMTBCDField;
    sp_Hrg_JualH2: TFMTBCDField;
    sp_Hrg_JualH3: TFMTBCDField;
    cxGroupBox5: TcxGroupBox;
    cxButton6: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    BarangStn1: TStringField;
    BarangStn2: TStringField;
    BarangStn3: TStringField;
    BarangIsi1: TFMTBCDField;
    BarangIsi2: TFMTBCDField;
    lbl3: TLabel;
    DBEdit1: TDBEdit;
    ds1: TDataSource;
    lbl4: TLabel;
    DBEdit2: TDBEdit;
    lbl5: TLabel;
    DBEdit3: TDBEdit;
    lbl6: TLabel;
    DBEdit4: TDBEdit;
    lbl7: TLabel;
    DBEdit5: TDBEdit;
    sp_input_H_Jual: TADOStoredProc;
    sp_find_table: TADOStoredProc;
    sp_find_tableHasil: TWideStringField;
    mmo1: TMemo;
    procedure taCariBarangExecute(Sender: TObject);
    procedure HJualNewRecord(DataSet: TDataSet);
    procedure HJualProfitValidate(Sender: TField);
    procedure HJualAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure taBersihExecute(Sender: TObject);
    procedure HJualH3Validate(Sender: TField);
    procedure HJualH2Validate(Sender: TField);
    procedure taPerKodeExecute(Sender: TObject);
    procedure taTerendahExecute(Sender: TObject);
  private
    { Private declarations }
  public
  cUser_ : string;
    { Public declarations }
  end;

var
  HJualForm: THJualForm;

implementation

uses Search, HJualPerKode, HJualTerendah;

{$R *.dfm}

procedure THJualForm.FormCreate(Sender: TObject);
begin
  inherited;
  If FileExists(sSys) then
  Begin
    mmo1.Lines.LoadFromFile('UserLog.Sys');
    cUser_:=Trim(mmo1.Lines.Strings[0]);
  End;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    Barang.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure THJualForm.HJualAfterPost(DataSet: TDataSet);
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
      parameters.ParamByName('Profit_').Value       := HJualProfit.AsCurrency;
      Parameters.ParamByName('ProfitNIlai_').Value  := HJualProfitnilai.AsCurrency;
      parameters.ParamByName('H1_').Value           := HJualH1.AsCurrency;
      parameters.ParamByName('H2_').Value           := HJualH2.AsCurrency;
      parameters.ParamByName('H3_').Value           := HJualH3.AsCurrency;
      parameters.ParamByName('ID_').Value           := cUser_;
      parameters.parambyname('stattransaksi').Value := 'Edit';
      parameters.ParamByName('Hpp_').Value          := HJualHpp.AsCurrency;
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
      parameters.ParamByName('Profit_').Value       := HJualProfit.AsCurrency;
      Parameters.ParamByName('ProfitNIlai_').Value  := HJualProfitnilai.AsCurrency;
      parameters.ParamByName('H1_').Value           := HJualH1.AsCurrency;
      parameters.ParamByName('H2_').Value           := HJualH2.AsCurrency;
      parameters.ParamByName('H3_').Value           := HJualH3.AsCurrency;
      parameters.ParamByName('ID_').Value           := Cuser_;
      parameters.parambyname('stattransaksi').Value := 'tambah';
      parameters.ParamByName('Hpp_').Value          := HJualHpp.AsCurrency;
      ExecProc;
    end;
  end;

end;

procedure THJualForm.HJualH2Validate(Sender: TField);
begin
  inherited;
  if HJualH2.AsCurrency > 0 then
  Begin
    HJualH1.AsCurrency          := HJualH2.AsCurrency * StrToCurr(DBEdit2.Text);
  End;
end;

procedure THJualForm.HJualH3Validate(Sender: TField);
begin
  inherited;
  if HJualH3.AsCurrency > 0 then
  Begin
    HJualH2.AsCurrency          := HJualH3.AsCurrency * StrToCurr(DBEdit4.Text);
    HJualH1.AsCurrency          := HJualH2.AsCurrency * StrToCurr(DBEdit2.Text);
  End;
end;

procedure THJualForm.HJualNewRecord(DataSet: TDataSet);
begin
  inherited;
  HJualBrgID.Value := GudangID.Text;
//  HJualCreate_id.Value :=
  HJualCreate_Tgl.Value := Now;
end;

procedure THJualForm.HJualProfitValidate(Sender: TField);
begin
  inherited;
  if HJualProfit.AsCurrency > 0  then
  begin
    HJualProfitnilai.AsCurrency := ((HJualHpp.AsCurrency * HJualProfit.AsCurrency) / 100);
    HJualH3.AsCurrency          := (HJualProfitnilai.AsCurrency + HJualHpp.AsCurrency) * 1;
    HJualH2.AsCurrency          := HJualH3.AsCurrency * StrToCurr(DBEdit4.Text);
    HJualH1.AsCurrency          := HJualH2.AsCurrency * StrToCurr(DBEdit2.Text);
  end;
end;

procedure THJualForm.taBersihExecute(Sender: TObject);
begin
  inherited;
  HJual.Close;
  HJual.Open;
end;

procedure THJualForm.taCariBarangExecute(Sender: TObject);
begin
  inherited;
  Barang.Close;
  Barang.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := Barang;
  if SearchForm.ShowModal =mrOk then
    begin
      GudangID.Text := BarangBRGID.Value;
      GudangNama.Text := BarangNama1.Value;
      GudangID.SetFocus;
      HJual.Close;
      HJual.Open;
      with sp_Hrg_Jual do
      begin
        close;
        Parameters.ParamByName('brgtemp').Value := GudangID.Text;
        Open;
      end;
      if not sp_Hrg_Jual.IsEmpty then
      begin
        while not sp_Hrg_Jual.Eof do
        begin
          HJual.insert;
          HJualBrgID.Value            := sp_Hrg_JualBrgID.Value;
          HJualCabID.Value            := sp_Hrg_JualCabID.Value;
          HJualHrgID.Value            := sp_Hrg_JualHrgID.Value;
          HJualHpp.AsCurrency         := sp_Hrg_JualHpp.AsCurrency;
          HJualProfit.AsCurrency      := sp_Hrg_JualProfit.AsCurrency;
          HJualProfitnilai.AsCurrency := sp_Hrg_JualProfitnilai.AsCurrency;
          HJualH1.AsCurrency          := sp_Hrg_JualH1.AsCurrency;
          HJualH2.AsCurrency          := sp_Hrg_JualH2.AsCurrency;
          HJualH3.AsCurrency          := sp_Hrg_JualH3.AsCurrency;
          sp_Hrg_Jual.Next;
        end;
        HJual.Last;
        HJual.Append;
      end;
      JHarga.Close;
      JHarga.Open;
      cxGrid1DBTableView1.Columns[0].FocusWithSelection;
      cxGrid1DBTableView1HrgID.Selected:= true;
      cxGrid1DBTableView1HrgID.Properties.ReadOnly := True;
      cxGrid1.SetFocus;
    end
  else
  begin
    GudangID.setfocus;
  end;
end;

procedure THJualForm.taPerKodeExecute(Sender: TObject);
begin
  inherited;
  HJualPerKodeForm := THJualPerKodeForm.create(Self);
  HJualPerKodeForm.show;
end;

procedure THJualForm.taTerendahExecute(Sender: TObject);
begin
  inherited;
  HJualTerendahForm := THJualTerendahForm.create(Self);
  HJualTerendahForm.show;
end;

end.
