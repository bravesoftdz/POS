unit FAccHutang;

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
  cxGridTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, dxBarDBNav, dxBar, ImgList,
  DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, cxCheckBox, ADODB, fHutang;

type
  TAccHutangForm = class(TFormTemplateStayOnTop)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    Supplier: TADODataSet;
    SupplierSupID: TStringField;
    SupplierNama: TStringField;
    SupplierTerm: TSmallintField;
    tblPXSystem: TADOTable;
    tblPXSystemConfigID: TSmallintField;
    tblPXSystemSatID: TWideStringField;
    tblPXSystemGDGID: TWideStringField;
    tblPXSystemCABID: TWideStringField;
    tblPXSystemVALID: TWideStringField;
    tblPXSystemHRGID: TWideStringField;
    tblPXSystemMETODE: TWideStringField;
    tblPXSystemDISCTINGKAT: TSmallintField;
    tblPXSystemProfit_: TBooleanField;
    tblPXSystemVertion_: TSmallintField;
    tblPXSystemGOLID: TWideStringField;
    tblPXSystemJNSID: TWideStringField;
    tblPXSystemMRKID: TWideStringField;
    tblPXSystemTYPE: TWideStringField;
    tblPXSystemSUPID: TWideStringField;
    tblPXSystemCUSTID: TWideStringField;
    tblPXSystemBRGID: TWideStringField;
    tblPXSystemLYears: TWideStringField;
    tblPXSystemLMonth: TWideStringField;
    tblPXSystemLDay: TWideStringField;
    tblPXSystemLengthBRGID_: TSmallintField;
    tblPXSystemTimeTrial_: TSmallintField;
    tblPXSystemTimeTrialRunning_: TSmallintField;
    tblPXSystemInstall_: TDateField;
    tblPXSystemLengthSUPPID_: TSmallintField;
    tblPXSystemLengthCUSTID_: TSmallintField;
    tblTukar: TADOTable;
    tblTukarTUKARID: TSmallintField;
    tblTukarVALID: TWideStringField;
    tblTukarTUKAR: TFMTBCDField;
    tblTukarTGL1: TDateField;
    tblTukarTGL2: TDateField;
    tblTukarTglU: TDateTimeField;
    dsValuta: TDataSource;
    dsSupplier: TDataSource;
    dsHutang: TDataSource;
    Valuta: TADODataSet;
    ValutaValID: TWideStringField;
    ValutaKeterangan: TWideStringField;
    dsTukar: TDataSource;
    spNourut: TADOStoredProc;
    tblHutang: TADOTable;
    cxGrid1DBTableView1Nomor: TcxGridDBColumn;
    cxGrid1DBTableView1SupID: TcxGridDBColumn;
    cxGrid1DBTableView1NoBeli: TcxGridDBColumn;
    cxGrid1DBTableView1Val: TcxGridDBColumn;
    cxGrid1DBTableView1Tukar: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo: TcxGridDBColumn;
    cxGrid1DBTableView1LACC: TcxGridDBColumn;
    spNourutNm_user: TWideStringField;
    spNourutAccess: TWideStringField;
    spNourutGroupUser: TWideStringField;
    tblHutangNomor: TStringField;
    tblHutangSupID: TStringField;
    tblHutangNoBeli: TStringField;
    tblHutangTgl: TDateField;
    tblHutangJtgl: TDateField;
    tblHutangVal: TStringField;
    tblHutangTukar: TFMTBCDField;
    tblHutangSaldo: TFMTBCDField;
    tblHutangKet: TStringField;
    tblHutangUMuka: TFMTBCDField;
    tblHutangTglu: TDateTimeField;
    tblHutangcabID: TStringField;
    tblHutangLACC: TStringField;
    tblHutangLACC_Tgl: TDateTimeField;
    tblHutangLACC_By: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure tblHutangBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccHutangForm: TAccHutangForm;
  Cuser, Cpass : string;
  QueriLocal   : TADOQuery;
implementation

uses Login;

{$R *.dfm}

procedure TAccHutangForm.FormCreate(Sender: TObject);
begin
  inherited;
  if fhutangForm.conntrading.Connected = True then
  begin
    tblHutang.Close;
    tblHutang.Open;
    Supplier.Close;
    Supplier.Open;
    Valuta.Close;
    Valuta.Open;
    tblTukar.Close;
    tblTukar.Open;
    tblPXSystem.Close;
    tblPXSystem.Open;
  end;
end;

procedure TAccHutangForm.tblHutangBeforePost(DataSet: TDataSet);
begin
  inherited;
  LoginFOrm := TLoginForm.create(nil);
  LoginForm.FormStyle := fsNormal;
  LoginForm.Hide;
  if LoginForm.ShowModal = mrOk then
  begin
    Cuser :=  LoginFOrm.edtUserName.Text;
    Cpass :=  LoginFOrm.edtPassword.Text;
    with spNourut do
    begin
      close;
      Parameters.ParamByName('userIdIn').Value :=  cUser;
      Parameters.ParamByName('passin').Value   :=  Cpass;
      Open;
    end;
    IF not spNourut.IsEmpty then
    begin
      QueriLocal := TADOQuery.Create(nil);
      With QueriLocal do
      begin
        Connection := fhutangForm.conntrading;
        Close;
        SQL.Clear;
        SQL.Add('Select 1 From PXGroupUser Where LACC_SLD_Hutang = ''Y'' and GroupID ='''+spNourutGroupUser.Value+'''');
        Open;
      end;
      if QueriLocal.IsEmpty  then
      begin
         ShowMessage('Maaf anda tidak memiliki Hak untuk MengAcc Saldo Awal Hutang');
         tblHutang.Cancel;
         abort;
      end else
      begin
        tblHutangLACC_Tgl.Value:= Now;
        tblHutangLACC_By.Value := spNourutNm_user.Value;
      end;
      QueriLocal.Free;
    end;
  end;
end;

end.
