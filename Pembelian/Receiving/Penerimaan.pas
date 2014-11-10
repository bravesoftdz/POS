unit Penerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox,
  cxDropDownEdit, cxCheckBox, cxContainer, cxTextEdit, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxBarDBNav, dxBar, cxClasses, XPMan, ADODB, ShellAnimations, DBActns,
  ActnList, ImgList, StdCtrls, cxButtons, ExtCtrls, FormConnection, AES;

const
  sSYS = 'revisoft.SYS';

type
  TPenerimaanForm = class(TForm)
    pnl1: TPanel;
    btnCetak: TcxButton;
    btnDelete: TcxButton;
    btnEdit: TcxButton;
    btnInsert: TcxButton;
    cxButton1: TcxButton;
    cxImageList1: TcxImageList;
    actlst1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    cetak: TAction;
    Approved: TAction;
    ShellResources1: TShellResources;
    connTrading: TADOConnection;
    intranshdr: TADODataSet;
    supplier: TADODataSet;
    supplierSUPID: TStringField;
    supplierNama: TStringField;
    Valuta: TADODataSet;
    ValutaVALID: TWideStringField;
    ValutaKETERANGAN: TWideStringField;
    spUser: TADOStoredProc;
    spUserNm_user: TWideStringField;
    spUserAccess: TWideStringField;
    spUserGroupUser: TWideStringField;
    Valuta_: TDataSource;
    supplier_: TDataSource;
    intranshdr_: TDataSource;
    XPManifest1: TXPManifest;
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
    dxBarManager1: TdxBarManager;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev2: TdxBarDBNavButton;
    dxBarDBNavNext2: TdxBarDBNavButton;
    dxBarDBNavLast2: TdxBarDBNavButton;
    dxBarDBNavInsert2: TdxBarDBNavButton;
    dxBarDBNavEdit2: TdxBarDBNavButton;
    dxBarDBNavDelete3: TdxBarDBNavButton;
    dxBarDBNavPost2: TdxBarDBNavButton;
    dxBarDBNavCancel2: TdxBarDBNavButton;
    dxBarDBNavRefresh3: TdxBarDBNavButton;
    btnPrint: TdxBarButton;
    dxBarDBNavigator1: TdxBarDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    mmo1: TcxMemo;
    intranshdrTrNO: TStringField;
    intranshdrSupID: TStringField;
    intranshdrTgl: TDateField;
    intranshdrNOPO: TStringField;
    intranshdrCompany: TStringField;
    intranshdrStatus_: TStringField;
    intranshdrValID: TStringField;
    intranshdrTukar: TFMTBCDField;
    intranshdrBayar_: TStringField;
    intranshdrTglKirim1: TDateField;
    intranshdrTglKirim2: TDateField;
    intranshdrTukarPPn: TFMTBCDField;
    intranshdrBruto: TFMTBCDField;
    intranshdrNetto: TFMTBCDField;
    intranshdrEkspedisi: TStringField;
    intranshdrTKirim: TStringField;
    intranshdrAKirim: TStringField;
    intranshdrDisc1: TFMTBCDField;
    intranshdrNDisc1: TFMTBCDField;
    intranshdrPPn1: TFMTBCDField;
    intranshdrNPPn1: TFMTBCDField;
    intranshdrNOPR: TStringField;
    intranshdrTerm: TSmallintField;
    intranshdrCreate_ID: TStringField;
    intranshdrCreate_Tgl: TDateTimeField;
    intranshdrModify_ID: TStringField;
    intranshdrModify_Tgl: TDateTimeField;
    intranshdrCabID: TStringField;
    intranshdrKet: TStringField;
    cxGrid1DBTableView1TrNO: TcxGridDBColumn;
    cxGrid1DBTableView1SupID: TcxGridDBColumn;
    cxGrid1DBTableView1Tgl: TcxGridDBColumn;
    cxGrid1DBTableView1NOPO: TcxGridDBColumn;
    cxGrid1DBTableView1Status_: TcxGridDBColumn;
    cxGrid1DBTableView1Bayar_: TcxGridDBColumn;
    cxGrid1DBTableView1Bruto: TcxGridDBColumn;
    cxGrid1DBTableView1Netto: TcxGridDBColumn;
    insert: TAction;
    Change: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure insertExecute(Sender: TObject);
    procedure ChangeExecute(Sender: TObject);
  private
    { Private declarations }
  public
  var
  stat_ : SmallInt;
    { Public declarations }

  end;
//==============================================================================//
  function DBConnectMasterMysql : string;
  function enkripsi(src: string): string;
  function dekripsi(src: string): string;
  function Encrypt(const s: String; CryptInt: Integer): String;
  function Decrypt(const s: String; CryptInt: Integer): String;
//==============================================================================//

var
  PenerimaanForm: TPenerimaanForm;

implementation

uses FPenerimaan;

{$R *.dfm}

function IsMDIChildOpen(const AFormName: TForm; const AMDIChildName : string): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := Pred(AFormName.MDIChildCount) DownTo 0 do
    if (AFormName.MDIChildren[i].Name = AMDIChildName) then
    begin
      Result := True;
      Break;
    end;
end;


//========================================================================================================================================
function Encrypt(const s: String; CryptInt: Integer): String;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) + CrypTint);
  Result := s2;
end;

//========================================================================================================================================
function Decrypt(const s: String; CryptInt: Integer): String;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) - cryptint);
  Result := s2;
end;

function enkripsi(src: string): string;
begin
  result:=Encrypt(src,711754);
end;

function dekripsi(src: string): string;
begin
  result:=Decrypt(src,711754);
end;

function DBConnectMasterMysql : string;
var
    conStr, constrencrypt : string;
    ServerName, DBName, myUser, myPasword : string;
    port : Integer;
    F: TextFile;
    DatabasePromptForm :  TDatabasePromptForm;
begin
  if FileExists(ExtractFilePath(ParamStr(0))+sSYS) then
  begin
    AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
    Reset(F);
    Readln(F,conStr);
    CloseFile(F);
    conStr := Decrypt(conStr,1);
  end else
  begin
     DatabasePromptForm := TDatabasePromptForm.Create(nil);
     DatabasePromptForm.FormStyle:= fsNormal;
     DatabasePromptForm.Hide;
     DatabasePromptForm.Caption := 'KONEKSI DATABASE SYSTEM';
     if DatabasePromptForm.ShowModal = mrOk then
     begin
     ServerName := DatabasePromptForm.ledservername.Text;
     myUser     := DatabasePromptForm.ledUserId.Text;
     myPasword  := DatabasePromptForm.ledPass.text;
     DBName     := DatabasePromptForm.leddbname.Text;
//       port       := StrToInt(DatabasePromptForm.ledPort.Text);


     conStr     := 'Provider=MSDASQL.1;'+
                   'Persist Security Info=False;'+
                   'Extended Properties="Driver={MySQL ODBC 5.1 Driver};' +
                   'SERVER=' + ServerName + ';' +
                   'UID=' + myUser + ';' +
                   'PWD=' + myPasword + ';' +
                   'DATABASE=' +DBName + ';' +
                   'Port=' +'3306' +';"';

     conStr :=Encrypt(conStr,1);
     AssignFile(F,ExtractFilePath(ParamStr(0))+sSYS);
     Rewrite(F);
     Writeln(F,conStr);
     CloseFile(F);
     DatabasePromptForm.Free;
     constr := Decrypt(constr,1);
     end;
  end;
  Result        := constr;
end;

procedure TPenerimaanForm.ChangeExecute(Sender: TObject);
begin
  stat_ := 1;
  FPenerimaanForm := TFPenerimaanForm.Create(self);
  FPenerimaanForm.tglTransaksi.Enabled := False;
  FPenerimaanForm.notransaksi.Enabled := false;
  FPenerimaanForm.Show;
end;

procedure TPenerimaanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPenerimaanForm.FormCreate(Sender: TObject);
begin
  SetWindowLong(Application.Handle, GWL_EXSTYLE, GetWindowLongA(Application.Handle,GWL_EXSTYLE) or WS_EX_TOOLWINDOW);
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
//    Self.FormStyle  := fsMDIForm;
    intranshdr.Open;
    supplier.Open;
    Valuta.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

procedure TPenerimaanForm.insertExecute(Sender: TObject);
begin
  stat_ := 0;


  if not IsMDIChildOpen(PenerimaanForm, 'FPenerimaanForm') then
    FPenerimaanForm := TFPenerimaanForm.Create(nil);

    FPenerimaanForm.Show;
    FPenerimaanForm.tglTransaksi.Enabled := true;
    FPenerimaanForm.notransaksi.Enabled := true;

    FPenerimaanForm.BringToFront;//
end;

end.
