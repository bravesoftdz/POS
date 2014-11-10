unit fHutang;

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
  cxGridDBTableView, cxGrid, cxClasses, ADODB, cxDBLookupComboBox;

type
  TfhutangForm = class(TFormTemplateStayOnTop)
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
    conntrading: TADOConnection;
    tblHutang: TADOTable;
    dsHutang: TDataSource;
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
    cxGrid1DBTableView1Nomor: TcxGridDBColumn;
    cxGrid1DBTableView1SupID: TcxGridDBColumn;
    cxGrid1DBTableView1NoBeli: TcxGridDBColumn;
    cxGrid1DBTableView1Tgl: TcxGridDBColumn;
    cxGrid1DBTableView1Jtgl: TcxGridDBColumn;
    cxGrid1DBTableView1Val: TcxGridDBColumn;
    cxGrid1DBTableView1Tukar: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo: TcxGridDBColumn;
    dsSupplier: TDataSource;
    tblTukar: TADOTable;
    dsValuta: TDataSource;
    dsTukar: TDataSource;
    tblTukarTUKARID: TSmallintField;
    tblTukarVALID: TWideStringField;
    tblTukarTUKAR: TFMTBCDField;
    tblTukarTGL1: TDateField;
    tblTukarTGL2: TDateField;
    tblTukarTglU: TDateTimeField;
    tblValuta: TADODataSet;
    tblValutaValID: TWideStringField;
    tblValutaKeterangan: TWideStringField;
    tblSupplier: TADODataSet;
    tblSupplierSupID: TStringField;
    tblSupplierNama: TStringField;
    tblSupplierTerm: TSmallintField;
    tblPXSystem: TADOTable;
    spNourut: TADOStoredProc;
    spNouruthasil: TIntegerField;
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
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    TaAcc: TAction;
    procedure FormCreate(Sender: TObject);
    procedure tblHutangNewRecord(DataSet: TDataSet);
    procedure tblHutangTglValidate(Sender: TField);
    procedure tblHutangBeforePost(DataSet: TDataSet);
    procedure TaAccExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
    tglakhirbln : array[1..12] of integer = (31,28,31,30,31,30,31,31,30,31,30,31);
var
  fhutangForm: TfhutangForm;

implementation

uses FAccHutang;

{$R *.dfm}
procedure konfError(src: string);
begin
  Application.MessageBox(PChar(src),'Kesalahan',MB_OK or MB_ICONERROR);
end;

function nolkiri(s:string;i:integer):string;
var a : integer;
    s1 : string;
begin
   a := i - length(s);
   s1 := s;
   if a > 0 then
   begin
      while a > 0 do
      begin
        a := a - 1;
        s1 := '0' + s1;
      end;
   end;
   Result := s1;
end;

function prevtgl(xtgl: TDateTime) : TDateTime;
var
      hr,bl,th : integer;
      tglsem   : string;
begin
   hr    := strtoint(copy(DateToStr(xtgl),1,2));
   bl    := strtoint(copy(DateToStr(xtgl),4,2));
   th    := strtoint(copy(DateToStr(xtgl),7,4));
   if hr = 1 then
   begin
      if bl = 3 then
      begin
         bl := bl - 1;
         if (th mod 4 ) <> 0 then
            hr := 28
         else hr := 29;
      end else
      if bl = 1 then
      begin
         bl := 12;
         hr := 31;
         th := th - 1;
      end else
      begin
         bl := bl - 1;
         hr := tglakhirbln[bl];
      end;
   end else
   hr := hr - 1;
   tglsem   := nolkiri(inttostr(hr),2) + '/' +nolkiri(inttostr(bl),2) + '/' + inttostr(th);
   prevtgl  := Strtodate(tglsem);
end;

function nexttgl(xtgl: TDateTime) : TDateTime;
var
  hr,bl,th : integer;
  tglsem   : string;
begin
   hr    := strtoint(copy(DateToStr(xtgl),1,2));
   bl    := strtoint(copy(DateToStr(xtgl),4,2));
   th    := strtoint(copy(DateToStr(xtgl),7,4));
   if bl = 2 then
   begin
      if (th mod 4 ) <> 0 then
      begin
         if hr = 28 then
         begin
            hr := 1;
            bl := 3;
         end else
            hr := hr + 1;
      end else
      begin
         if hr = 29 then
         begin
            hr := 1;
            bl := 3;
         end else
            hr := hr + 1;
      end;
   end else
   begin
      if hr = tglakhirbln[bl] then
      begin
         hr := 1;
         bl := bl + 1;
      end else
         hr := hr + 1;
      if bl > 12 then
      begin
         bl := 1;
         th := th + 1;
      end;
   end;
   tglsem   := nolkiri(inttostr(hr),2) + '/' +nolkiri(inttostr(bl),2) + '/' + inttostr(th);
   nexttgl  := StrToDateTime (tglsem);
end;

procedure TfhutangForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    tblHutang.Open;
    tblSupplier.Open;
    tblValuta.Open;
    tblTukar.Open;
    tblPXSystem.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
  SetWindowLong(Application.Handle, GWL_EXSTYLE, GetWindowLongA(Application.Handle,GWL_EXSTYLE) or WS_EX_TOOLWINDOW);
end;

procedure TfhutangForm.TaAccExecute(Sender: TObject);
begin
  inherited;
  AccHutangForm := TAccHutangForm.create(Self);
  ACcHutangForm.show;
end;

procedure TfhutangForm.tblHutangBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF tblhutangSupID.Value = '' then
  begin
    konfError('Maaf Kode Supplier harus diisi');
    Abort;
  end else
  if tblHutangSaldo.AsCurrency < 0 then
  begin
    konfError('Nilai Saldo harus > 0');
    Abort;
  end  else
  if tblhutangNomor.Value = '' then
  begin
    konfError('Maaf Nomor Urut harus diisi');
    Abort;
  end  else
  if tblhutangNoBeli.Value = '' then
  begin
    konfError('Maaf Nomor Transaksi harus diisi');
    Abort;
  end
end;

procedure TfhutangForm.tblHutangNewRecord(DataSet: TDataSet);
begin
  inherited;
  tblHutangTgl.Value := now;
  tblHutangJtgl.Value := now;
  tblHutangTukar.AsCurrency := 1;
  tblHutangSaldo.AsCurrency := 0;
  tblhutangcabid.Value := tblPXSystemCabID.Value;
  with spNoUrut do
  begin
    close;
    Parameters.ParamByName('cabid_').Value := tblPXSystemCabID.Value;
    Open;
  end;
  tblhutangNomor.Value := nolkiri(spNoUruthasil.AsString,3);
end;

procedure TfhutangForm.tblHutangTglValidate(Sender: TField);
var
  termtemp : Integer;
  tgl2     : TDateTime;
begin
  inherited;
  termtemp := tblSupplierTerm.Value;
  if termtemp > 1 then
  begin
    tgl2     := tblHutangTgl.Value;
    repeat
      termtemp := termtemp - 1;
      tgl2     := nexttgl(tgl2);
    until termtemp = 0;

    tblHutangJtgl.Value := tgl2;
  end;
end;

end.
