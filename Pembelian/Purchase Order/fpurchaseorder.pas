unit fpurchaseorder;

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
  dxBar, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxClasses, ADODB, Mask, DBCtrls, cxDBLookupComboBox,
  cxContainer, cxGroupBox, ComCtrls, Buttons, PurchaseOrderBrowse, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBEdit;

type
  Tfpurchaseorderform = class(TFormTemplateStayOnTop)
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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    APTPODTL: TADODataSet;
    APTPODTLNOPO: TStringField;
    APTPODTLNomor: TSmallintField;
    APTPODTLBrgID: TStringField;
    APTPODTLStn: TStringField;
    APTPODTLQty: TFMTBCDField;
    APTPODTLHSatuan: TFMTBCDField;
    APTPODTLDisc1: TFMTBCDField;
    APTPODTLDisc2: TFMTBCDField;
    APTPODTLDisc3: TFMTBCDField;
    APTPODTLDisc4: TFMTBCDField;
    APTPODTLDisc5: TFMTBCDField;
    APTPODTLNDisc1: TFMTBCDField;
    APTPODTLNDisc2: TFMTBCDField;
    APTPODTLNDisc3: TFMTBCDField;
    APTPODTLNDisc4: TFMTBCDField;
    APTPODTLNDisc5: TFMTBCDField;
    APTPODTLHarga: TFMTBCDField;
    APTPODTLTerima: TFMTBCDField;
    APTPODTLTglTerima: TDateTimeField;
    APTPODTLBackOrder: TFMTBCDField;
    APTPODTLNSTN: TStringField;
    APTPODTLNOBELI: TStringField;
    APTPODTLGolID: TStringField;
    APTPODTLJenisID: TStringField;
    APTPODTLMerekID: TStringField;
    qrySupplier_: TDataSource;
    dsAPTPODTL: TDataSource;
    lbl9: TLabel;
    pnl2: TPanel;
    lbl4: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    lbl1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    pnl3: TPanel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl11: TLabel;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl10: TLabel;
    lbl12: TLabel;
    DBEdit9: TDBEdit;
    cxGrid1DBTableView1Nomor: TcxGridDBColumn;
    cxGrid1DBTableView1BrgID: TcxGridDBColumn;
    cxGrid1DBTableView1Qty: TcxGridDBColumn;
    cxGrid1DBTableView1HSatuan: TcxGridDBColumn;
    cxGrid1DBTableView1Disc1: TcxGridDBColumn;
    cxGrid1DBTableView1Disc2: TcxGridDBColumn;
    cxGrid1DBTableView1Disc3: TcxGridDBColumn;
    cxGrid1DBTableView1Disc4: TcxGridDBColumn;
    cxGrid1DBTableView1Disc5: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc1: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc2: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc3: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc4: TcxGridDBColumn;
    cxGrid1DBTableView1NDisc5: TcxGridDBColumn;
    cxGrid1DBTableView1Harga: TcxGridDBColumn;
    cxGrid1DBTableView1NSTN: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    pnl4: TPanel;
    lbl13: TLabel;
    DBEdit14: TDBEdit;
    pnl5: TPanel;
    lbl14: TLabel;
    DBEdit11: TDBEdit;
    pnl6: TPanel;
    lbl15: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    lbl16: TLabel;
    DBEdit15: TDBEdit;
    lbl17: TLabel;
    DBEdit16: TDBEdit;
    lbl18: TLabel;
    DBEdit17: TDBEdit;
    lbl19: TLabel;
    DBEdit18: TDBEdit;
    lbl20: TLabel;
    DBEdit19: TDBEdit;
    lbl21: TLabel;
    DBEdit20: TDBEdit;
    calTgl: TMonthCalendar;
    calKirim: TMonthCalendar;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    qrySupplier: TADOQuery;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBComboBox1: TcxDBComboBox;
    dxBarManager1Bar1: TdxBar;
    qrySupplierSUPID: TStringField;
    qrySupplierNAMA: TStringField;
    qrySupplierVALID: TStringField;
    qrySupplierTukar: TFMTBCDField;
    qrySupplierTerm: TSmallintField;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dsHutang: TDataSource;
    hutang_: TADOQuery;
    hutang_Hutang_: TIntegerField;
    System_: TADOQuery;
    System_DiscTingkat: TSmallintField;
    Barang: TADOQuery;
    BarangBRGID: TStringField;
    BarangNAMA1: TStringField;
    BarangSTN3: TStringField;
    BarangHBeli: TFMTBCDField;
    Barang_: TDataSource;
    Barang2: TADOQuery;
    Barang2_: TDataSource;
    Barang2NAMA1: TStringField;
    Stock: TADOQuery;
    StockStock: TFMTBCDField;
    Stock_: TDataSource;
    BarangJenis: TStringField;
    BarangKetJenis: TStringField;
    Baranggol: TStringField;
    BarangKetGol: TStringField;
    Barangmerek: TStringField;
    BarangKetMerek: TStringField;
    Satuan_: TDataSource;
    Satuan: TADOQuery;
    SatuanBRGID: TStringField;
    SatuanStn: TStringField;
    SatuanISI: TFMTBCDField;
    SatuanNStn: TLargeintField;
    Satuan2: TADOQuery;
    Satuan2BRGID: TStringField;
    Satuan2Stn: TStringField;
    Satuan2ISI: TFMTBCDField;
    Satuan2NStn: TLargeintField;
    Satuan2_: TDataSource;
    spTotal: TADOStoredProc;
    spTotalhrgtotal: TFMTBCDField;
    spTotaldiscnota: TFMTBCDField;
    spTotalndiscnota: TFMTBCDField;
    spTotalppnnota: TFMTBCDField;
    spTotalnppnnota: TFMTBCDField;
    spTotalnnetto: TFMTBCDField;
    dsTotal_: TDataSource;
    spNomor: TADOStoredProc;
    spNomorhasil: TIntegerField;
    Satuan2Hbeli_: TFMTBCDField;
    Barang2STN3: TStringField;
    Barang2STN2: TStringField;
    Barang2STN1: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn3Click(Sender: TObject);
    procedure calTglClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure calKirimClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure APTPODTLBeforeOpen(DataSet: TDataSet);
    procedure cxGrid1Enter(Sender: TObject);
    procedure APTPODTLBrgIDValidate(Sender: TField);
    procedure APTPODTLAfterCancel(DataSet: TDataSet);
    procedure APTPODTLNewRecord(DataSet: TDataSet);
    procedure APTPODTLNSTNValidate(Sender: TField);
    procedure APTPODTLQtyValidate(Sender: TField);
    procedure APTPODTLDisc1Validate(Sender: TField);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure APTPODTLDisc2Validate(Sender: TField);
    procedure APTPODTLDisc3Validate(Sender: TField);
    procedure APTPODTLDisc4Validate(Sender: TField);
    procedure APTPODTLDisc5Validate(Sender: TField);
    procedure APTPODTLAfterPost(DataSet: TDataSet);
    procedure DBEdit10Exit(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure APTPODTLBeforePost(DataSet: TDataSet);
    procedure APTPODTLHSatuanValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpurchaseorderform: Tfpurchaseorderform;
  Tgl_ : Boolean;
  var xx : Integer;
implementation

{$R *.dfm}

procedure Tfpurchaseorderform.APTPODTLAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Barang2.Close;
end;

procedure Tfpurchaseorderform.APTPODTLAfterPost(DataSet: TDataSet);
begin
  inherited;
  with spTotal do
  begin
    Close;
    Parameters.ParamByName('Nopotemp').Value := purchaseorderbrowseform.APTPOHDRNOPO.Value;
    Open;
  end;
  purchaseorderbrowseform.APTPOHDR.Edit;
  purchaseorderbrowseform.APTPOHDRBruto.Value  := sptotalhrgtotal.Value;
  purchaseorderbrowseform.APTPOHDRDisc1.Value  := sptotaldiscnota.Value;
  purchaseorderbrowseform.APTPOHDRnDisc1.Value := sptotalndiscnota.Value;
  purchaseorderbrowseform.APTPOHDRPPn1.Value   := sptotalppnnota.Value;
  purchaseorderbrowseform.APTPOHDRNPPn1.Value  := sptotalnppnnota.Value;
  purchaseorderbrowseform.APTPOHDRNetto.Value  := sptotalnnetto.Value;
  cxGrid1DBTableView1BrgID.FocusWithSelection;
  cxGrid1DBTableView1.Columns[1].Selected := True;
  cxGrid1.SetFocus;
  APTPODTL.Append;
end;

procedure Tfpurchaseorderform.APTPODTLBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Barang.Close;
  Barang.Open;
end;

procedure Tfpurchaseorderform.APTPODTLBeforePost(DataSet: TDataSet);
begin
  inherited;
  APTPODTLNOPO.Value := purchaseorderbrowseform.APTPOHDRNOPO.Value;
end;

procedure Tfpurchaseorderform.APTPODTLBrgIDValidate(Sender: TField);
begin
  inherited;
  Barang2.Close;
//  Barang2.SQL.Clear;
//  Barang2.SQL.Add('Select Nama1 From INBarang Where BrgID='''+APTPODTLBrgID.Value+'''');
  Barang2.Open;
  Satuan.Close;
  Satuan.SQL.Clear;
  Satuan.SQL.Add('Select * from vBarangSatuan');
  Satuan.SQL.Add(' where BrgID='''+APTPODTLBrgID.Value+'''');
  Satuan.Open;
//  APTPODTLNStn.Value := BarangSTN3.Value;
//  APTPODTLSTN.Value := '3';
//  Satuan2.Close;
//  Satuan2.SQL.Add('Select * from vBarangSatuan');
//  Satuan2.SQL.Add(' where BrgID='''+APTPODTLBrgID.Value+''' and Stn='''+APTPODTLNSTN.Value+'''');
//  Satuan2.Open;
//  APTPODTLHSatuan.AsCurrency := BarangHBeli.AsCurrency;
  APTPODTLJenisID.Value := BarangJenis.Value;
  APTPODTLGolID.Value   := Baranggol.Value;
  APTPODTLMerekID.Value := Barangmerek.Value;
  Stock.Close;
  Stock.SQL.Clear;
  Stock.SQL.Add('Select PX_Find_Stock_Gudang('''+APTPODTLBrgID.Value+''') as stock');
  Stock.Open;
end;

procedure Tfpurchaseorderform.APTPODTLDisc1Validate(Sender: TField);
begin
  inherited;
  if APTPODTLDisc1.AsCurrency > 0 then
  begin
    APTPODTLNDisc1.AsCurrency := (APTPODTLHarga.AsCurrency * APTPODTLDisc1.AsCurrency) / 100;
    APTPODTLHarga.AsCurrency  := (APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLDisc2Validate(Sender: TField);
begin
  inherited;
  if APTPODTLDisc2.AsCurrency > 0 then
  begin
    APTPODTLNDisc2.AsCurrency := (((APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency) * APTPODTLDisc2.AsCurrency)/100;
    APTPODTLHarga.AsCurrency  := (APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLDisc3Validate(Sender: TField);
begin
  inherited;
  if APTPODTLDisc3.AsCurrency > 0 then
  begin
    APTPODTLNDisc3.AsCurrency := (((APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency) * APTPODTLDisc3.AsCurrency) /100;
    APTPODTLHarga.AsCurrency  := (APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency - APTPODTLNDisc3.AsCurrency;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLDisc4Validate(Sender: TField);
begin
  inherited;
  if APTPODTLDisc4.AsCurrency > 0 then
  begin
    APTPODTLNDisc4.AsCurrency := (((APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency - APTPODTLNDisc3.AsCurrency) * APTPODTLDisc4.AsCurrency)/100;
    APTPODTLHarga.AsCurrency  := (APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency - APTPODTLNDisc3.AsCurrency - APTPODTLNDisc4.AsCurrency;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLDisc5Validate(Sender: TField);
begin
  inherited;
  if APTPODTLDisc5.AsCurrency > 0 then
  begin
    APTPODTLNDisc5.AsCurrency := (((APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency - APTPODTLNDisc3.AsCurrency - APTPODTLNDisc4.AsCurrency) * APTPODTLDisc5.AsCurrency) /100;
    APTPODTLHarga.AsCurrency  := (APTPODTLQty.AsCurrency * APTPODTLHSatuan.AsCurrency) - APTPODTLNDisc1.AsCurrency - APTPODTLNDisc2.AsCurrency - APTPODTLNDisc3.AsCurrency - APTPODTLNDisc4.AsCurrency - APTPODTLNDisc5.AsCurrency;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLHSatuanValidate(Sender: TField);
begin
  inherited;
  if (APTPODTLHSatuan.AsCurrency > 0) then
  begin
    // Karena Satuan2 belum diopen maka akan menyebabkan error
    // sehingga dipindahkan pengecekannya kedalam HSatuan > 0
    if (APTPODTLHSatuan.AsCurrency < Satuan2Hbeli_.AsCurrency) then
    Begin
      ShowMessage('Harga beli tidak sama dengan harga beli terakhir');
      APTPODTLHarga.AsCurrency := APTPODTLHSatuan.AsCurrency * APTPODTLQty.AsCurrency;
    End;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLNewRecord(DataSet: TDataSet);
begin
  inherited;
  // Setting Default Nilai Awal
  // pada table PO Detail
  // Tujuannya untuk membuat nilai inputan awal sesuai dengan default.
  APTPODTLQty.AsCurrency     := 0;
  APTPODTLDisc1.AsCurrency   := 0;
  APTPODTLDisc2.AsCurrency   := 0;
  APTPODTLDisc3.AsCurrency   := 0;
  APTPODTLDisc4.AsCurrency   := 0;
  APTPODTLDisc5.AsCurrency   := 0;
  APTPODTLNDisc1.AsCurrency  := 0;
  APTPODTLNDisc2.AsCurrency  := 0;
  APTPODTLNDisc3.AsCurrency  := 0;
  APTPODTLNDisc4.AsCurrency  := 0;
  APTPODTLNDisc5.AsCurrency  := 0;
  APTPODTLHSatuan.AsCurrency := 0;
  APTPODTLHarga.AsCurrency   := 0;
  with spNomor do
  begin
    Close;
    Parameters.ParamByName('nopo_').Value := purchaseorderbrowseform.APTPOHDRNOPO.Value;
    Open;
  end;
  APTPODTLNomor.Value := spNomorhasil.Value;
end;

procedure Tfpurchaseorderform.APTPODTLNSTNValidate(Sender: TField);
begin
  inherited;
  // Cari Nilai Satuan berdasarkan Satuan Value
  Satuan2.Close;
  Satuan2.SQL.Clear;
  Satuan2.SQL.Add('Select * from vBarangSatuan');
  Satuan2.SQL.Add(' where BrgID='''+APTPODTLBrgID.Value+''' and Stn='''+APTPODTLNSTN.Value+'''');
  Satuan2.Open;
  APTPODTLSTN.Value := IntToStr(Satuan2NStn.Value);
  APTPODTLHSatuan.AsCurrency := Satuan2Hbeli_.AsCurrency;
  if APTPODTLSTN.Value <> '' then
  begin
    Stock.Close;
    Stock.SQL.Clear;
    Stock.SQL.Add('Select PX_Find_Stock_Gudang('''+APTPODTLBrgID.Value+''') as Stock');
    Stock.Open;
  end;
end;

procedure Tfpurchaseorderform.APTPODTLQtyValidate(Sender: TField);
begin
  inherited;
  if APTPODTLQty.AsCurrency > 0 then
  begin
    APTPODTLHarga.AsCurrency := APTPODTLHSatuan.AsCurrency * APTPODTLQty.AsCurrency;
  end;
end;

procedure Tfpurchaseorderform.btn3Click(Sender: TObject);
begin
  inherited;
  calTgl.Show;
end;

procedure Tfpurchaseorderform.btn4Click(Sender: TObject);
begin
  inherited;
  calKirim.Show;
  Tgl_ := False; // Tgl ini digunakan untuk set tgl kirim awal atau akhir // Tgl = False [berarti Kirim awal Set Focus]
end;

procedure Tfpurchaseorderform.btn5Click(Sender: TObject);
begin
  inherited;
  calKirim.Show;
  Tgl_ := True; // Tgl ini digunakan untuk set tgl kirim awal atau akhir // Tgl = False [berarti Kirim akhir Set Focus]
end;

procedure Tfpurchaseorderform.calKirimClick(Sender: TObject);
begin
  inherited;
  if Tgl_ = False then
  begin
     DBEdit7.SetFocus;
     purchaseorderbrowseform.APTPOHDRTglKirim1.Value := calKirim.Date;
  end else
  begin
    DBEdit8.SetFocus;
    purchaseorderbrowseform.APTPOHDRTglKirim2.Value := calKirim.Date;
  end;
     calKirim.Hide;
end;

procedure Tfpurchaseorderform.calTglClick(Sender: TObject);
begin
  inherited;
  purchaseorderbrowseform.APTPOHDRTgl.Value := calTgl.Date;
  calTgl.Hide;
  DBEdit1.SetFocus;
end;

procedure Tfpurchaseorderform.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  purchaseorderbrowseform.APTPOHDR.Post;
end;

procedure Tfpurchaseorderform.DBEdit10Enter(Sender: TObject);
begin
  inherited;
  calKirim.Hide;
end;

procedure Tfpurchaseorderform.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  APTPODTL.Close;;
  APTPODTL.Parameters.ParamByName('NOPO').Value := purchaseorderbrowseform.APTPOHDRNOPO.Value;
  APTPODTL.Open;
  APTPODTL.Append;
  cxGrid1DBTableView1BrgID.FocusWithSelection;
  cxGrid1DBTableView1.Columns[0].Selected := True;
  cxGrid1.SetFocus;
end;

procedure Tfpurchaseorderform.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key =vk_F4 then
  begin
    btn3Click(sender);
  end;
end;

procedure Tfpurchaseorderform.DBEdit2Enter(Sender: TObject);
begin
  inherited;
  calTgl.Hide;
end;

procedure Tfpurchaseorderform.DBEdit8Enter(Sender: TObject);
begin
  inherited;
  calKirim.Hide;
end;

procedure Tfpurchaseorderform.dxBarLargeButton1Click(Sender: TObject);
begin
  inherited;
  DataSetPost1.Execute;
end;

procedure Tfpurchaseorderform.dxBarLargeButton2Click(Sender: TObject);
begin
  inherited;
  DataSetCancel1.Execute;
end;

procedure Tfpurchaseorderform.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  purchaseorderbrowseform.APTPOHDR.Close;
  purchaseorderbrowseform.APTPOHDR.open;
  APTPODTL.Close;
end;

procedure Tfpurchaseorderform.FormCreate(Sender: TObject);
begin
  inherited;
  qrySupplier.Close;
  qrySupplier.Open;
  System_.Close;
  System_.Open;
  xx := System_DiscTingkat.Value;
  case xx of
  1 : begin
        cxGrid1DBTableView1Disc1.Visible  := true;
        cxGrid1DBTableView1Disc2.Visible  := False;
        cxGrid1DBTableView1Disc3.Visible  := false;
        cxGrid1DBTableView1Disc4.Visible  := false;
        cxGrid1DBTableView1Disc5.Visible  := False;
        cxGrid1DBTableView1NDisc1.Visible := True;
        cxGrid1DBTableView1NDisc2.Visible := false;
        cxGrid1DBTableView1NDisc3.Visible := false;
        cxGrid1DBTableView1NDisc4.Visible := false;
        cxGrid1DBTableView1NDisc5.Visible := false;
        cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True;
      end;
  2 : begin
        cxGrid1DBTableView1Disc1.Visible  := true;
        cxGrid1DBTableView1Disc2.Visible  := true;
        cxGrid1DBTableView1Disc3.Visible  := false;
        cxGrid1DBTableView1Disc4.Visible  := false;
        cxGrid1DBTableView1Disc5.Visible  := False;
        cxGrid1DBTableView1NDisc1.Visible := True;
        cxGrid1DBTableView1NDisc2.Visible := True;
        cxGrid1DBTableView1NDisc3.Visible := false;
        cxGrid1DBTableView1NDisc4.Visible := false;
        cxGrid1DBTableView1NDisc5.Visible := false;
        cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True;
      end;
  3 : begin
        cxGrid1DBTableView1Disc1.Visible  := true;
        cxGrid1DBTableView1Disc2.Visible  := true;
        cxGrid1DBTableView1Disc3.Visible  := True;
        cxGrid1DBTableView1Disc4.Visible  := false;
        cxGrid1DBTableView1Disc5.Visible  := False;
        cxGrid1DBTableView1NDisc1.Visible := True;
        cxGrid1DBTableView1NDisc2.Visible := True;
        cxGrid1DBTableView1NDisc3.Visible := True;
        cxGrid1DBTableView1NDisc4.Visible := false;
        cxGrid1DBTableView1NDisc5.Visible := false;
        cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := True;
      end;
  4 : begin
        cxGrid1DBTableView1Disc1.Visible  := true;
        cxGrid1DBTableView1Disc2.Visible  := true;
        cxGrid1DBTableView1Disc3.Visible  := True;
        cxGrid1DBTableView1Disc4.Visible  := True;
        cxGrid1DBTableView1Disc5.Visible  := False;
        cxGrid1DBTableView1NDisc1.Visible := True;
        cxGrid1DBTableView1NDisc2.Visible := True;
        cxGrid1DBTableView1NDisc3.Visible := True;
        cxGrid1DBTableView1NDisc4.Visible := True;
        cxGrid1DBTableView1NDisc5.Visible := false;
        cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := false;
      end;
  5 : begin
        cxGrid1DBTableView1Disc1.Visible  := true;
        cxGrid1DBTableView1Disc2.Visible  := true;
        cxGrid1DBTableView1Disc3.Visible  := True;
        cxGrid1DBTableView1Disc4.Visible  := True;
        cxGrid1DBTableView1Disc5.Visible  := True;
        cxGrid1DBTableView1NDisc1.Visible := True;
        cxGrid1DBTableView1NDisc2.Visible := True;
        cxGrid1DBTableView1NDisc3.Visible := True;
        cxGrid1DBTableView1NDisc4.Visible := True;
        cxGrid1DBTableView1NDisc5.Visible := True;
        cxGrid1DBTableView1.OptionsView.ColumnAutoWidth := False;
      end;
  end;
end;

procedure Tfpurchaseorderform.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key :=#0;
    if DBEdit1.Focused then
      DBEdit2.SetFocus else
      if DBEdit2.Focused then
        cxDBLookupComboBox2.SetFocus else
        if cxDBLookupComboBox2.Focused then
          cxDBComboBox1.SetFocus else
          if cxDBComboBox1.Focused Then
            DBEdit7.SetFocus else
          if DBEdit7.Focused then
            DBEdit8.SetFocus else
            if DBEdit8.Focused then
              DBEdit10.SetFocus else
              if DBEdit10.Focused then
              begin
                APTPODTL.Open;
                APTPODTL.Parameters.ParamByName('nopo').Value := purchaseorderbrowseform.APTPOHDRNOPO.Value;
                APTPODTL.Append;
                cxGrid1DBTableView1BrgID.FocusWithSelection;
                cxGrid1DBTableView1.Columns[0].Selected := True;
                cxGrid1.SetFocus;
              end else
              if cxGrid1.Focused then
                 DBEdit16.SetFocus else
                 if DBEdit16.Focused then
                    DBEdit18.SetFocus else
                    if DBEdit18.Focused then
                      DBEdit19.SetFocus;

  end;
end;

end.
