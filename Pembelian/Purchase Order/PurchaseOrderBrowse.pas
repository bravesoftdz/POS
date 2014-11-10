unit PurchaseOrderBrowse;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, ADODB, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, XPMan,
  ShellAnimations, cxClasses, dxBarDBNav, dxBar, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, cxPC, Menus, cxButtons, cxDropDownEdit, cxContainer,
  cxTextEdit, cxMemo, cxCheckBox;
const
  Ssys = 'UserLog.sys';
type
  Tpurchaseorderbrowseform = class(TFormTemplateStayOnTop)
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
    ShellResources1: TShellResources;
    XPManifest1: TXPManifest;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOPO: TcxGridDBColumn;
    cxGrid1DBTableView1Tgl: TcxGridDBColumn;
    cxGrid1DBTableView1SupID: TcxGridDBColumn;
    cxGrid1DBTableView1ValID: TcxGridDBColumn;
    cxGrid1DBTableView1Bayar_: TcxGridDBColumn;
    cxGrid1DBTableView1Netto: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    connTrading: TADOConnection;
    APTPOHDR: TADODataSet;
    APTPOHDRNOPO: TStringField;
    APTPOHDRSupID: TStringField;
    APTPOHDRTgl: TDateField;
    APTPOHDRCompany: TStringField;
    APTPOHDRStatus_: TStringField;
    APTPOHDRValID: TStringField;
    APTPOHDRTukar: TFMTBCDField;
    APTPOHDRBayar_: TStringField;
    APTPOHDRTukarPPn: TFMTBCDField;
    APTPOHDRBruto: TFMTBCDField;
    APTPOHDRNetto: TFMTBCDField;
    APTPOHDREkspedisi: TStringField;
    APTPOHDRTKirim: TStringField;
    APTPOHDRAKirim: TStringField;
    APTPOHDRDisc1: TFMTBCDField;
    APTPOHDRNDisc1: TFMTBCDField;
    APTPOHDRPPn1: TFMTBCDField;
    APTPOHDRNPPn1: TFMTBCDField;
    APTPOHDRNOPR: TStringField;
    APTPOHDRTerm: TSmallintField;
    APTPOHDRCreate_ID: TStringField;
    APTPOHDRCreate_Tgl: TDateTimeField;
    APTPOHDRModify_ID: TStringField;
    APTPOHDRModify_Tgl: TDateTimeField;
    APTPOHDRCabID: TStringField;
    APTPOHDRKet: TStringField;
    APTPOHDRTglKirim1: TDateField;
    APTPOHDRTglKirim2: TDateField;
    supplier: TADODataSet;
    supplierSUPID: TStringField;
    supplierNama: TStringField;
    Valuta: TADODataSet;
    ValutaVALID: TWideStringField;
    ValutaKETERANGAN: TWideStringField;
    valuta_: TDataSource;
    supplier_: TDataSource;
    dsAPTPOHDR: TDataSource;
    btnCetak: TcxButton;
    btnDelete: TcxButton;
    btnEdit: TcxButton;
    btnInsert: TcxButton;
    cetak: TAction;
    cxButton1: TcxButton;
    mmo1: TcxMemo;
    spUser: TADOStoredProc;
    spUserNm_user: TWideStringField;
    spUserAccess: TWideStringField;
    spUserGroupUser: TWideStringField;
    Approved: TAction;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataSetInsert1Execute(Sender: TObject);
    procedure APTPOHDRSupIDValidate(Sender: TField);
    procedure btnInsertClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure APTPOHDRNewRecord(DataSet: TDataSet);
    procedure APTPOHDRDisc1Validate(Sender: TField);
    procedure APTPOHDRPPn1Validate(Sender: TField);
    procedure APTPOHDRAfterPost(DataSet: TDataSet);
    procedure ApprovedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    stat_ : ShortInt;
    cuser, cpass : string;
    { Public declarations }
  end;

var
  purchaseorderbrowseform: Tpurchaseorderbrowseform;
  Querilocal:TADOQuery;
implementation

uses fpurchaseorder, Login;

{$R *.dfm}

procedure Tpurchaseorderbrowseform.ApprovedExecute(Sender: TObject);
begin
  inherited;
  LoginFOrm := TLoginForm.create(nil);
  LoginForm.FormStyle := fsNormal;
  LoginForm.Hide;
  if LoginForm.ShowModal = mrOk then
  begin
    Cuser :=  LoginFOrm.edtUserName.Text;
    Cpass :=  LoginFOrm.edtPassword.Text;
    with spUser do
    begin
      close;
      Parameters.ParamByName('userIdIn').Value :=  cUser;
      Parameters.ParamByName('passin').Value   :=  Cpass;
      Open;
    end;
    IF not spUser.IsEmpty then
    begin
      QueriLocal := TADOQuery.Create(nil);
      With QueriLocal do
      begin
        Connection := connTrading;
        Close;
        SQL.Clear;
        SQL.Add('Select 1 From PXGroupUser Where LACC_PO = ''Y'' and GroupID ='''+spUserGroupUser.Value+'''');
        Open;
      end;
      if QueriLocal.IsEmpty  then
      begin
         ShowMessage('Maaf anda tidak memiliki Hak untuk MengAcc Purchase Order');
         APTPOHDR.Cancel;
         abort;
      end else
      begin
       APTPOHDR.Edit;
       APTPOHDRStatus_.Value := '1';
       APTPOHDRModify_ID.Value := Cuser;
       APTPOHDRModify_Tgl.Value := Now;
       APTPOHDR.Post;
      end;
      QueriLocal.Free;
    end;
  end;
end;

procedure Tpurchaseorderbrowseform.APTPOHDRAfterPost(DataSet: TDataSet);
begin
  inherited;
  If dsAPTPOHDR.State in [dsInsert] then
  begin
    APTPOHDRCreate_ID.Value := cuser;
    APTPOHDRCreate_Tgl.Value := Now;
  end;
end;

procedure Tpurchaseorderbrowseform.APTPOHDRDisc1Validate(Sender: TField);
begin
  inherited;
  if APTPOHDRDisc1.AsCurrency > 0 then
  begin
    APTPOHDRNDisc1.AsCurrency := (APTPOHDRBruto.AsCurrency * APTPOHDRDisc1.AsCurrency) / 100;
    APTPOHDRNetto.AsCurrency  := APTPOHDRBruto.AsCurrency - APTPOHDRNDisc1.AsCurrency;
  end;
end;

procedure Tpurchaseorderbrowseform.APTPOHDRNewRecord(DataSet: TDataSet);
begin
  inherited;
  // Setting Default Nilai Awal
  // pada table PO Header
  // Tujuannya untuk membuat nilai inputan awal sesuai dengan default.
  APTPOHDRTgl.Value           := Now;
  APTPOHDRTerm.Value          := 0;
  APTPOHDRTglKirim1.Value     := Now;
  APTPOHDRTglKirim2.Value     := Now;
  APTPOHDRTukarPPn.AsCurrency := 0;
  APTPOHDRTukar.AsCurrency    := 0;
  APTPOHDRBruto.AsCurrency    := 0;
  APTPOHDRDisc1.AsCurrency    := 0;
  APTPOHDRNDisc1.AsCurrency   := 0;
  APTPOHDRPPn1.AsCurrency     := 0;
  APTPOHDRNPPn1.AsCurrency    := 0;
  APTPOHDRNetto.AsCurrency    := 0;
  APTPOHDRBayar_.Value        := 'T';
end;

procedure Tpurchaseorderbrowseform.APTPOHDRPPn1Validate(Sender: TField);
begin
  inherited;
  if APTPOHDRPPn1.AsCurrency > 0 then
  begin
    APTPOHDRNPPn1.AsCurrency := (APTPOHDRNetto.AsCurrency * APTPOHDRPPn1.AsCurrency) / 100;
    APTPOHDRNetto.AsCurrency := (APTPOHDRBruto.AsCurrency - APTPOHDRNDisc1.AsCurrency) + APTPOHDRNPPn1.AsCurrency;
  end;
end;

procedure Tpurchaseorderbrowseform.APTPOHDRSupIDValidate(Sender: TField);
begin
  inherited;
  APTPOHDRValID.Value     := fpurchaseorderform.qrySupplier.Fields[2].Value;
  APTPOHDRTukar.AsCurrency     := fpurchaseorderform.qrySupplier.Fields[3].AsCurrency;
  APTPOHDRTukarPPn.AsCurrency  := fpurchaseorderform.qrySupplier.Fields[3].AsCurrency;
  APTPOHDRTerm.Value      := fpurchaseorderform.qrySupplier.Fields[4].Value;
  fpurchaseorderform.Hutang_.Close;
  fpurchaseorderform.Hutang_.sql.Clear;
  fpurchaseorderform.Hutang_.SQL.Add('Select PX_Find_Hutang_Supplier('''+APTPOHDRSupID.Value+''','''+APTPOHDRValID.Value+''')AS Hutang_');
  fpurchaseorderform.Hutang_.open;
end;

procedure Tpurchaseorderbrowseform.btnEditClick(Sender: TObject);
begin
  inherited;
  stat_ := 1;
  fpurchaseorderform  := Tfpurchaseorderform.Create(self);
  fpurchaseorderform.dbedit1.Enabled := false;
  fpurchaseorderform.dbedit2.Enabled := False;
  APTPOHDR.edit;
  fpurchaseorderform.APTPODTL.Close;
  fpurchaseorderform.APTPODTL.Parameters.ParamByName('nopo').Value := APTPOHDRNOPO.Value;
  fpurchaseorderform.APTPODTL.Open;
  fpurchaseorderform.Hutang_.Close;
  fpurchaseorderform.Hutang_.sql.Clear;
  fpurchaseorderform.Hutang_.SQL.Add('Select PX_Find_Hutang_Supplier('''+APTPOHDRSupID.Value+''','''+APTPOHDRValID.Value+''')AS Hutang_');
  fpurchaseorderform.Hutang_.open;
  fpurchaseorderform.Show;
end;

procedure Tpurchaseorderbrowseform.btnInsertClick(Sender: TObject);
begin
  inherited;
  stat_ := 0;
  fpurchaseorderform  := Tfpurchaseorderform.Create(self);
  fpurchaseorderform.dbedit1.Enabled := true;
  fpurchaseorderform.dbedit2.Enabled := true;
  APTPOHDR.Append;
  fpurchaseorderform.Show;
end;

procedure Tpurchaseorderbrowseform.DataSetInsert1Execute(Sender: TObject);
begin
  inherited;
  APTPOHDR.Append;
end;

procedure Tpurchaseorderbrowseform.FormCreate(Sender: TObject);
begin
  inherited;
  SetWindowLong(Application.Handle, GWL_EXSTYLE, GetWindowLongA(Application.Handle,GWL_EXSTYLE) or WS_EX_TOOLWINDOW);
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    Self.FormStyle  := fsStayOnTop;
    APTPOHDR.Open;
    supplier.Open;
    Valuta.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

end.
