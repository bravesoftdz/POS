unit FPenerimaan;

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
  dxBar, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, ComCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxClasses,
  MemDS, VirtualTable, cxContainer, Mask, DBCtrls, cxGroupBox, ADODB;

type
  TFPenerimaanForm = class(TFormTemplateStayOnTop)
    bvl1: TBevel;
    bvl2: TBevel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    btn4: TButton;
    notransaksi: TEdit;
    namaSupplier: TEdit;
    kodeSupp: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    valutaID: TEdit;
    ValTukar: TEdit;
    term: TEdit;
    lbl9: TLabel;
    tukarPpn: TEdit;
    lbl5: TLabel;
    cbbBayar: TComboBox;
    noPo: TEdit;
    btn5: TButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
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
    dxBarManager1Bar1: TdxBar;
    btnSimpan: TdxBarLargeButton;
    btnCancel: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    cxImageList2: TcxImageList;
    tgltransaksi: TDateTimePicker;
    lblBayar: TLabel;
    cxGroupBox1: TcxGroupBox;
    lbl16: TLabel;
    pnl4: TPanel;
    lbl13: TLabel;
    pnl5: TPanel;
    lbl14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    pnl6: TPanel;
    lbl15: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    DBEdit15: TDBEdit;
    Disc: TEdit;
    Ppn: TEdit;
    NDisc: TEdit;
    NPPn: TEdit;
    Netto_: TEdit;
    Bruto_: TEdit;
    PilihSupplier: TAction;
    PosisiHutang: TEdit;
    lbl10: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Nomor: TcxGridDBColumn;
    cxGrid1DBTableView1BrgID: TcxGridDBColumn;
    cxGrid1DBTableView1NStn: TcxGridDBColumn;
    cxGrid1DBTableView1Qty: TcxGridDBColumn;
    cxGrid1DBTableView1HSatuan: TcxGridDBColumn;
    cxGrid1DBTableView1Disc1: TcxGridDBColumn;
    cxGrid1DBTableView1Disc2: TcxGridDBColumn;
    cxGrid1DBTableView1Disc3: TcxGridDBColumn;
    cxGrid1DBTableView1Disc4: TcxGridDBColumn;
    cxGrid1DBTableView1Disc5: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc2: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc3: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc4: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc5: TcxGridDBColumn;
    cxGrid1DBTableView1Harga: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ReceivingDtl: TADOQuery;
    ReceivingDtlTrNO: TStringField;
    ReceivingDtlNomor: TSmallintField;
    ReceivingDtlBrgID: TStringField;
    ReceivingDtlStn: TStringField;
    ReceivingDtlQty: TFMTBCDField;
    ReceivingDtlHSatuan: TFMTBCDField;
    ReceivingDtlDisc1: TFMTBCDField;
    ReceivingDtlDisc2: TFMTBCDField;
    ReceivingDtlDisc3: TFMTBCDField;
    ReceivingDtlDisc4: TFMTBCDField;
    ReceivingDtlDisc5: TFMTBCDField;
    ReceivingDtlNDisc1: TFMTBCDField;
    ReceivingDtlNDisc2: TFMTBCDField;
    ReceivingDtlNDisc3: TFMTBCDField;
    ReceivingDtlNDisc4: TFMTBCDField;
    ReceivingDtlNDisc5: TFMTBCDField;
    ReceivingDtlHarga: TFMTBCDField;
    ReceivingDtlNSTN: TStringField;
    ReceivingDtlGolID: TStringField;
    ReceivingDtlJenisID: TStringField;
    ReceivingDtlMerekID: TStringField;
    ReceivingDtl_: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cbbBayarCloseUp(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure namaSupplierKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PilihSupplierExecute(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn4Exit(Sender: TObject);
    procedure cbbBayarChange(Sender: TObject);
    procedure ReceivingDtlAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
  procedure bersih;
  procedure cekData(Data_ : string; Stat_ :SmallInt);
    { Public declarations }
  end;

var
  FPenerimaanForm: TFPenerimaanForm;
  QLocal : TAdoQuery;
implementation

uses Penerimaan, Search, FPenerimaanDetail;
{$R *.dfm}

procedure ribuan(edit : TEdit);
var
 sRupiah: string;
 iRupiah: Currency;
begin
 //ribuan --> currency ( menyesuaikan setting windows )
 sRupiah := edit.Text;
 sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
 sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik . pemisah //ribuan IDR
 iRupiah := StrToCurrDef(sRupiah,0); // convert srupiah ke currency

//currency --> format ribuan
 edit.Text := FormatCurr('#,###',iRupiah);
 edit.SelStart := length(edit.text);
end;

function hapusribuan(edit : TEdit): string;
var hasil : string;
begin
 hasil := edit.text;
 hasil := StringReplace(hasil,',','',[rfReplaceAll,rfIgnoreCase]);
 hasil := StringReplace(hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
 hapusribuan := hasil;
end;

procedure TFPenerimaanForm.CekData(Data_ : string; Stat_ :SmallInt);
begin
  QLocal := TADOQuery.Create(nil);
  Qlocal.Connection := PenerimaanForm.connTrading;
  case Stat_ of
    1: begin
         With QLocal do
         begin
           Close;
           SQL.Clear;
           SQL.Add(' Select Term, ValID From APSupplier Where SupID=:SupID_');
           Parameters.ParamByName('SupID_').Value := Data_;
           Open;
         end;
         if not QLocal.IsEmpty then
         begin
           term.Text := QLocal.Fields[0].Value;
           valutaID.Text := QLocal.Fields[1].Value;
           With QLocal do
           begin
             Close;
             SQL.Clear;
             SQL.Add(' Select Tukar From PXValutaTukar Where ValID=:ValID_ and Stat_ = 0');
             Parameters.ParamByName('ValID_').Value := valutaID.Text;
             Open;
           end;
           if not QLocal.IsEmpty then
           begin
             ValTukar.Text := QLocal.Fields[0].Value;
             Ribuan(ValTukar);
             tukarPpn.Text := QLocal.Fields[0].Value;
             ribuan(tukarPpn);
           end;
           With QLocal do
           begin
             Close;
             SQL.Clear;
             SQL.Add(' Select IFNull(Hutang,0) From APPosisiHutang Where SupID=:SupID_ And ValID=:ValID_');
             Parameters.ParamByName('SupID_').Value := Data_;
             Parameters.ParamByName('ValID_').Value := valutaID.Text;
             Open;
           end;
           if not QLocal.IsEmpty then
           begin
             PosisiHutang.Text := QLocal.Fields[0].Value;
             if StrToFloat(PosisiHutang.Text) > 0 then
                Ribuan(PosisiHutang);
           end;
         end;
       end;
  end;
  QLocal.Free;
end;

procedure TFPenerimaanForm.bersih;
begin
  tglTransaksi.Date:= now;
  notransaksi.Clear;
  noPo.Clear;
  kodeSupp.Clear;
  namaSupplier.Clear;
  cbbBayar.ItemIndex := 0;
  valutaID.Clear;
  tukarPpn.Clear;
  ValTukar.Clear;
  term.Clear;
  Bruto_.Text :='0';
  Disc.Text :='0';
  Ppn.Text :='0';
  NDisc.Text :='0';
  NPPn.Text :='0';
  Netto_.Text :='0';
end;

procedure TFPenerimaanForm.btn4Click(Sender: TObject);
begin
  inherited;
  PilihSupplier.Execute;
end;

procedure TFPenerimaanForm.btn4Exit(Sender: TObject);
begin
  inherited;
  cekData(kodeSupp.Text,1);
end;

procedure TFPenerimaanForm.cbbBayarChange(Sender: TObject);
begin
  inherited;
  if cbbBayar.ItemIndex = 0 then
  begin
    lblBayar.Caption := 'Tunai';
  end;
  if cbbBayar.ItemIndex = 1 then
  begin
    lblBayar.Caption := 'Kredit';
  end;
end;

procedure TFPenerimaanForm.cbbBayarCloseUp(Sender: TObject);
begin
  inherited;
//  if cbbBayar.ItemIndex = 0 then
//  begin
//    lblBayar.Caption := 'Tunai';
//  end;
//  if cbbBayar.ItemIndex = 1 then
//  begin
//    lblBayar.Caption := 'Kredit';
//  end;
end;

procedure TFPenerimaanForm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.FormStyle := fsNormal;
  bersih;
  KeyPreview := True;
end;

procedure TFPenerimaanForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    Key := #0;
    if tgltransaksi.Focused then
       notransaksi.SetFocus else
    if notransaksi.Focused then
       namaSupplier.SetFocus else
    if namaSupplier.Focused then
       noPo.SetFocus else
    if noPo.Focused then
    begin
      ReceivingDtl.Close;
      ReceivingDtl.Parameters.ParamByName('TrNo_').Value := notransaksi.Text;
      ReceivingDtl.Open;
      ReceivingDtl.Append;
    end else
    if cxGrid1.Focused then
       Disc.SetFocus else
    if Disc.Focused then
       Ppn.SetFocus else
    if Ppn.Focused then
       Netto_.SetFocus;

  end;
end;

procedure TFPenerimaanForm.namaSupplierKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F4 then
  begin
    PilihSupplier.Execute;
    cekData(kodeSupp.Text,1);
  end;
end;

procedure TFPenerimaanForm.PilihSupplierExecute(Sender: TObject);
begin
  inherited;
  PenerimaanForm.supplier.Close;
  PenerimaanForm.supplier.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//          SearchForm.Left := Self.Width + 30;
//          SearchForm.Top  := Self.Top  + 50;
  SearchForm.Hide;
  searchForm.dscari.DataSet := PenerimaanForm.supplier;
  if SearchForm.ShowModal =mrOk then
    begin
      kodeSupp.Text := PenerimaanForm.supplierSUPID.Value;
      namaSupplier.Text := PenerimaanForm.supplierNama.Value;
      namaSupplier.SetFocus;
    end
  else
  begin
    namaSupplier.setfocus;
  end;
end;

procedure TFPenerimaanForm.ReceivingDtlAfterInsert(DataSet: TDataSet);
begin
  inherited;
  FPenerimaanDetailForm := TFPenerimaanDetailForm.create(Self);
  FPenerimaanDetailForm.show;
end;

end.
