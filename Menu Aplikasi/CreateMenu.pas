unit CreateMenu;

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
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, Menus, cxButtons, ADODB;

type
  TCreateMenuForm = class(TtemplateForm)
    connTrading: TADOConnection;
    System: TADODataSet;
    SystemCABID: TWideStringField;
    pxmenu: TADODataSet;
    dsMenu: TDataSource;
    cxButton1: TcxButton;
    pxmenuDescription: TWideStringField;
    pxmenuExename: TWideStringField;
    cxGrid1DBTableView1Description: TcxGridDBColumn;
    cxGrid1DBTableView1Exename: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreateMenuForm: TCreateMenuForm;

implementation

{$R *.dfm}

procedure TCreateMenuForm.FormCreate(Sender: TObject);
begin
  inherited;
  conntrading.Close;
  conntrading.ConnectionString := DBConnectMasterMysql;
  try
    pxmenu.Open;
    System.Open;
  except
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    self.close;
  end;
end;

end.
