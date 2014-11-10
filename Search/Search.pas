unit Search;

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
  ExtCtrls, cxPC, StdCtrls, Menus, cxButtons;

type
  TSearchForm = class(TtemplateForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    taSelect: TAction;
    taBatal: TAction;
    procedure taSelectExecute(Sender: TObject);
    procedure taBatalExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchForm: TSearchForm;

implementation

{$R *.dfm}

procedure TSearchForm.FormActivate(Sender: TObject);
begin
  inherited;
  cxgrid1DBTableView1.DataController.DataSource := dsCari;
  cxgrid1DBTableView1.BeginUpdate;
  cxgrid1DBTableView1.ClearItems;
  //      fillGridView(cxgrid1DBTableView1,command);
  cxgrid1DBTableView1.DataController.CreateAllItems;
  cxgrid1DBTableView1.EndUpdate;
end;

procedure TSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if mutex <> 0 then CloseHandle(mutex);
  inherited;
end;

procedure TSearchForm.FormCreate(Sender: TObject);
begin
  inherited;
//  mutex := CreateMutex(nil, True, 'SearchForm');
//  if GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED] then
//  begin
//    MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
//    PChar(application.exename), MB_OK or MB_ICONERROR);
//    Self.Close;
//  end;
end;

procedure TSearchForm.taBatalExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrNo;
  Self.Close;
end;

procedure TSearchForm.taSelectExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

end.
