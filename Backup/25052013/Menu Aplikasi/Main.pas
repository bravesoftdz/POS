unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, IniFiles, MMSystem, ExtCtrls,ComCtrls, Math,
  DBClientActns, DBActns, StdActns, info, ImgList, cxGraphics, ADODB, Template,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxSplitter, DB, StrUtils,
  ShellAPI;

const
  screenx1  = 800;
  screenx2  = 1024;
  screenx3  = 1366;
  screeny1  = 600;
  screeny2  = 768;

type
  TExecuteChild = procedure;
  TDisplayModalForm2 = procedure(App: TApplication; x : integer);
  TDLLEntryPoint = procedure(dwReason: DWORD); stdcall; //register; //stdcall;
  TPluginIn = procedure (App: TApplication;Parent: TWinControl);
  TPluginOut = procedure (app : TApplication);
  TPluginShow = procedure;

  TMainForm = class(TForm)
    mm1: TMainMenu;
    pm1: TPopupMenu;
    actlst1: TActionList;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    PasteSpecial1: TMenuItem;
    Find1: TMenuItem;
    Replace1: TMenuItem;
    GoTo1: TMenuItem;
    N4: TMenuItem;
    Window1: TMenuItem;
    NewWindow1: TMenuItem;
    Tile1: TMenuItem;
    Cascade1: TMenuItem;
    ArrangeAll1: TMenuItem;
    N6: TMenuItem;
    Help1: TMenuItem;
    Contents1: TMenuItem;
    Index1: TMenuItem;
    Commands1: TMenuItem;
    Procedures1: TMenuItem;
    Keyboard1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    Tutorial1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    About1: TMenuItem;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    FilePrintSetup1: TFilePrintSetup;
    FilePageSetup1: TFilePageSetup;
    FileExit1: TFileExit;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    ClientDataSetApply1: TClientDataSetApply;
    ClientDataSetRevert1: TClientDataSetRevert;
    ClientDataSetUndo1: TClientDataSetUndo;
    ransaction1: TMenuItem;
    Reporting1: TMenuItem;
    Master1: TMenuItem;
    N3: TMenuItem;
    N311PurchaseRequest1: TMenuItem;
    N312PurchaseOrder1: TMenuItem;
    N313Receiving1: TMenuItem;
    N314PurchaseRetur1: TMenuItem;
    N5: TMenuItem;
    N315MonitoringPurchase1: TMenuItem;
    N32Sales1: TMenuItem;
    N321SalesRequest1: TMenuItem;
    N322SalesOrder1: TMenuItem;
    N323ReturSales1: TMenuItem;
    N324SalesReturn1: TMenuItem;
    N7: TMenuItem;
    N325MonitoringSales1: TMenuItem;
    N33PosPointOfSales1: TMenuItem;
    N58Sales1: TMenuItem;
    N9: TMenuItem;
    pnlInfo: TPanel;
    taMerk: TAction;
    taKategori: TAction;
    taRak: TAction;
    cxImageList1: TcxImageList;
    InformasiFrame1: TInformasiFrame;
    taBarang: TAction;
    Setting1: TMenuItem;
    CustomInventory1: TMenuItem;
    Jenis1: TMenuItem;
    N612Golongan1: TMenuItem;
    N613Merek1: TMenuItem;
    N614Type1: TMenuItem;
    N10: TMenuItem;
    N62CustomPurchase1: TMenuItem;
    N63CustomSales1: TMenuItem;
    N621Wilayah1: TMenuItem;
    N622Valuta1: TMenuItem;
    N11: TMenuItem;
    N631Wilayah1: TMenuItem;
    N632Valuta1: TMenuItem;
    N12: TMenuItem;
    N51Inventory1: TMenuItem;
    N511ITEM1: TMenuItem;
    N512KeterangandanGambar1: TMenuItem;
    N513MinDanMax1: TMenuItem;
    N514HargaBeli1: TMenuItem;
    N515HargaJual1: TMenuItem;
    N13: TMenuItem;
    N516MutasiStock1: TMenuItem;
    N521Supplier1: TMenuItem;
    N531Customer1: TMenuItem;
    N532Sales1: TMenuItem;
    taJenis: TAction;
    taGolongan: TAction;
    taType: TAction;
    N615RakLokasi1: TMenuItem;
    N616Kategori1: TMenuItem;
    N617Gudang1: TMenuItem;
    N618Cabang1: TMenuItem;
    N8: TMenuItem;
    taGudang: TAction;
    taCabang: TAction;
    taValutaPurchase: TAction;
    taValutaSales: TAction;
    cxSplitter1: TcxSplitter;
    Saldo1: TMenuItem;
    N31SaldoAwalBarang1: TMenuItem;
    N32SaldoAwalHutang1: TMenuItem;
    N33SaldoAwalPiutang1: TMenuItem;
    taSaldoAwalBarang: TAction;
    taSaldoAwalHutang: TAction;
    qryMenu: TADOQuery;
    connTrading: TADOConnection;
    taKeterangan: TAction;
    taMinMax: TAction;
    taHargaBeli: TAction;
    taHargaJual: TAction;
    taMutasiStock: TAction;
    taSupplier: TAction;
    taCustomer: TAction;
    taSales: TAction;
    taSaldoAwalPiutang: TAction;
    taPurchaseRequest: TAction;
    taPurchaseOrder: TAction;
    taReceiving: TAction;
    taPurchaseReturn: TAction;
    taMonitoringPurchase: TAction;
    taSalesRequest: TAction;
    taSalesOrder: TAction;
    taShipment: TAction;
    taSalesReturn: TAction;
    taMonitoringSales: TAction;
    taPOS: TAction;
    taWilayahPurchase: TAction;
    taWilayahSales: TAction;
    procedure autosizeAll;
    procedure FormActivate(Sender: TObject);
    procedure taKategoriExecute(Sender: TObject);
    procedure taMerkExecute(Sender: TObject);
    procedure taRakExecute(Sender: TObject);
    procedure taBarangExecute(Sender: TObject);
    procedure taJenisExecute(Sender: TObject);
    procedure taGolonganExecute(Sender: TObject);
    procedure taGudangExecute(Sender: TObject);
    procedure taCabangExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure taValutaPurchaseExecute(Sender: TObject);
    procedure taValutaSalesExecute(Sender: TObject);
    procedure taSaldoAwalBarangExecute(Sender: TObject);
    procedure taSaldoAwalHutangExecute(Sender: TObject);
    procedure taWilayahPurchaseExecute(Sender: TObject);
    procedure taWilayahSalesExecute(Sender: TObject);
    procedure taKeteranganExecute(Sender: TObject);
    procedure taMinMaxExecute(Sender: TObject);
    procedure taHargaBeliExecute(Sender: TObject);
    procedure taHargaJualExecute(Sender: TObject);
    procedure taMutasiStockExecute(Sender: TObject);
    procedure taSupplierExecute(Sender: TObject);
    procedure taCustomerExecute(Sender: TObject);
    procedure taSalesExecute(Sender: TObject);
    procedure taPOSExecute(Sender: TObject);
    procedure taSaldoAwalPiutangExecute(Sender: TObject);
    procedure taPurchaseRequestExecute(Sender: TObject);
    procedure taPurchaseOrderExecute(Sender: TObject);
    procedure taReceivingExecute(Sender: TObject);
    procedure taPurchaseReturnExecute(Sender: TObject);
    procedure taMonitoringPurchaseExecute(Sender: TObject);
    procedure taSalesRequestExecute(Sender: TObject);
    procedure taSalesOrderExecute(Sender: TObject);
    procedure taShipmentExecute(Sender: TObject);
    procedure taSalesReturnExecute(Sender: TObject);
    procedure taMonitoringSalesExecute(Sender: TObject);
  private
    { Private declarations }
    PackageModule : HModule;
    ExecuteChild : TExecuteChild;
    procedure EksekusiMenu(Sender: TObject);
    procedure PackageLoad;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  ini : TIniFile;
  adConnection : TADOConnection;
  adQueryVersion : TADOQuery;
  LibHandle: THandle;
  DisplayModalForm2  : TDisplayModalForm2;
  DLLEntryPoint      : TDLLEntryPoint;
  PlugDLLEntryPoint : TDLLEntryPoint;
  PluginIn : TPluginIn;
  PluginOut : TPluginOut;
  pluginShow : TPluginShow;
  PlugLibHandle : THandle;
//  min: Integer;
implementation

uses Merk, Kategori, Rak, Barang, Golongan, Jenis, Cabang, Gudang,
  ValutaPurchase, ValutaSales, SaldoAwalBarang, WilayahPurchase, WilayahSales,
  KeteranganGambar;

{$R *.dfm}

procedure TMainForm.PackageLoad;
begin
  //try loading the package
  //(let's presume it's in the same
  //folder, where the main app. exe is)
  PackageModule := LoadPackage(PAnsiChar(QryMenu.Fields[0].AsString));

  //if loaded, try locating
  //the ExecuteChild procedure
  if PackageModule <> 0 then
  try
    @ExecuteChild := GetProcAddress(PackageModule,
                                    'ExecuteChild');
  except
    //display an error message if we fail
    ShowMessage ('Package not found'#13' And With Proses Quality Control Application');
  end;
end;

procedure TMainForm.EksekusiMenu(Sender:TObject);
var
//    strSQL: string;
    menuID_:string;
begin
    menuID_ := Copy(TMainMenu(sender).Name,2,length(TMainMenu(sender).Name));
    QryMenu.Close;
    QryMenu.SQL.Clear;
    QryMenu.SQL.Add('SELECT exename,STATUS_ FROM PXMENU WHERE MenuID='''+menuID_+'''');
    QryMenu.Open;
    if not QryMenu.IsEmpty then
    begin
//      konfBerhasil('Onclik');
      if RightStr(QryMenu.Fields[0].Value,3) = 'bpl' then
      begin
         PackageLoad;
        if Assigned(ExecuteChild) then ExecuteChild;
      end else
      if RightStr(QryMenu.Fields[0].Value,3) = 'dll' then
      begin
        if LibHandle <> 0 then
        begin
          ShowMessage('Library already loaded');
          Exit;
        end;
        LibHandle := LoadLibrary(AnsiLastChar(qryMenu.Fields[0].AsString));//(PAnsiChar(QryMenu.Fields[0].AsString));
        try
          if LibHandle = 0 then
          begin
             Exit;
          end;
          @DisplayModalForm2  := GetProcAddress(LibHandle, 'DLLFormCreate');
          @DLLEntryPoint      := GetProcAddress(LibHandle, 'DLLEntryPoint');

          DisplayModalForm2(Application,QryMenu.Fields[1].AsInteger);
          @DisplayModalForm2  := nil;
        finally
          if LibHandle <> 0 then
          DLLEntryPoint(DLL_PROCESS_DETACH);
        end;
       LibHandle := 0;
      end else
      if RightStr(QryMenu.Fields[0].Value,3) = 'exe' then
      begin
        if ShellExecute(0, 'open', PChar(QryMenu.Fields[0].AsString), nil, nil,
                SW_SHOW) <= 32 then
              ShowMessage('Package not found'#13' And With Proses Quality Control Application');
      end else
      begin
        ShowMessage('With Proses Quality Control Application');
      end;

    end;
end;

function centreleft(fw:integer):integer;
  {calculates the form.left}
var
  smcx:integer;
begin
  smcx:=GetSystemMetrics(SM_CXSCREEN);
  centreleft:=(smcx-fw) div 2;
end;

function centretop(fh:integer):integer;
  {calculates the form.top}
var
  smcy:integer;
begin
  smcy:=GetSystemMetrics(SM_CYSCREEN);
  centretop:=(smcy-fh) div 2;
end;

procedure TMainForm.autosizeall  ;
var
  scrx,scry, k,i, y, screenxvalue, screenyvalue:integer ;
  ratio:double;
begin
  scrx:= GetSystemMetrics(SM_CXSCREEN); {finds screen resolution x value}
  scry:= (GetSystemMetrics(SM_CYSCREEN)); {finds screen resolution y value}

  if (scrx >= 1024) and (scrx <= 1280) then
  begin
    ratio:=min(scrx/screenx2,scry/screeny2);
  end else
  if (scrx >= 1280) and (scrx <= 1366) then
  begin
    ratio:=min(scrx/screenx3,scry/screeny2);
  end else
  if (scrx < 1024) then
  begin
    ratio:=min(scrx/screenx1,scry/screeny1);
  end;

  {takes the smaller ratio and makes sure you dont make the window
  too big for the screen}

  scaleby(trunc(ratio*100),100);
  {scales all controls and attempts to place them in the correct position}

  {to centre the form on the screen}
  self.Left :=centreleft(Self.width);
  self.Top  :=centretop(self.Height)  + 15;

end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  if WindowState <> wsMaximized then autosizeAll;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  adConnection := TADOConnection.Create(Self);
  adConnection.Close;
  adConnection.LoginPrompt:= false;
  adConnection.ConnectionString := DBConnectMasterMysql;
  qryMenu.Close;
  qryMenu.ConnectionString := DBConnectMasterMysql;
  try
    adQueryVersion := TADOQuery.Create(nil);
    adQueryVersion.Connection := adConnection;
    adQueryVersion.Close;
    adQueryVersion.SQL.Clear;
    adQueryVersion.SQL.Add('Select Vertion_ from PxSystem');
    adQueryVersion.Open;
    ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
    if adQueryVersion.Fields[0].Value = 0 then
    begin
      ini.WriteInteger('version','Version', adQueryVersion.Fields[0].Value);
    end else
    if adQueryVersion.Fields[0].Value = 1 then
    begin
      ini.WriteInteger('version','Version', adQueryVersion.Fields[0].Value);
    end else
    if adQueryVersion.Fields[0].Value = 2 then
    begin
      ini.WriteInteger('version','Version', adQueryVersion.Fields[0].Value);
    end else
    begin
      ini.WriteInteger('version','Version', adQueryVersion.Fields[0].Value);
    end;
    ini.Free;
    adQueryVersion.Free;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
  adConnection.Free;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  if FileExists(ChangeFileExt(Application.ExeName,'.Ini')) then DeleteFile(ChangeFileExt(Application.ExeName,'.Ini'));
end;

procedure TMainForm.taBarangExecute(Sender: TObject);
begin
  BarangForm := TBarangForm.create(nil);
  BarangForm.show;
end;

procedure TMainForm.taCabangExecute(Sender: TObject);
begin
  CabangForm := TCabangForm.create(nil);
  CabangForm.show;
end;

procedure TMainForm.taCustomerExecute(Sender: TObject);
begin
  EksekusiMenu(Sender);
end;

procedure TMainForm.taGolonganExecute(Sender: TObject);
begin
  GolonganForm := TGolonganForm.Create(self);
  GolonganForm.show;
end;

procedure TMainForm.taGudangExecute(Sender: TObject);
begin
  GudangForm := TGudangForm.create(nil);
  GudangForm.show;
end;

procedure TMainForm.taHargaBeliExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taHargaJualExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taJenisExecute(Sender: TObject);
begin
  JenisForm := TJenisForm.create(nil);
  JenisForm.show;
end;

procedure TMainForm.taKategoriExecute(Sender: TObject);
begin
  KategoriForm := TKategoriForm.create(nil);
  KategoriForm.show;
end;

procedure TMainForm.taKeteranganExecute(Sender: TObject);
begin
  KeteranganGambarForm := TKeteranganGambarForm.create(nil);
  KeteranganGambarForm.show
end;

procedure TMainForm.taMerkExecute(Sender: TObject);
begin
  MerkForm := TMerkForm.create(nil);
  MerkForm.show;
end;

procedure TMainForm.taMinMaxExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taMonitoringPurchaseExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taMonitoringSalesExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taMutasiStockExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taPOSExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taPurchaseOrderExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taPurchaseRequestExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taPurchaseReturnExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taRakExecute(Sender: TObject);
begin
  rakForm := TRakForm.create(nil);
  rakForm.show;
end;

procedure TMainForm.taReceivingExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taSaldoAwalBarangExecute(Sender: TObject);
begin
  SaldoAwalBarangForm := TSaldoAwalBarangForm.create(nil);
  SaldoAwalBarangForm.show
end;

procedure TMainForm.taSaldoAwalHutangExecute(Sender: TObject);
begin
  EksekusiMenu(Sender);
end;

procedure TMainForm.taSaldoAwalPiutangExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taSalesExecute(Sender: TObject);
begin
  EksekusiMenu(Sender);
end;

procedure TMainForm.taSalesOrderExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taSalesRequestExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taSalesReturnExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taShipmentExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taSupplierExecute(Sender: TObject);
begin
  EksekusiMenu(sender);
end;

procedure TMainForm.taValutaPurchaseExecute(Sender: TObject);
begin
  ValutaPurchaseForm := TValutaPurchaseForm.create(nil);
  ValutaPurchaseForm.show
end;

procedure TMainForm.taValutaSalesExecute(Sender: TObject);
begin
  ValutaSalesForm := TValutaSalesForm.create(nil);
  ValutaSalesForm.show
end;

procedure TMainForm.taWilayahPurchaseExecute(Sender: TObject);
begin
  WilayahPurchaseForm := TWilayahPurchaseForm.create(nil);
  WilayahPurchaseForm.show;
end;

procedure TMainForm.taWilayahSalesExecute(Sender: TObject);
begin
  WilayahSalesForm := TWilayahsalesForm.create(nil);
  WilayahsalesForm.show;
end;

end.
