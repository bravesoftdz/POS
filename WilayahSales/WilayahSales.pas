unit WilayahSales;

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
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  ShellAnimations, XPMan, DBActns, ActnList, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, ExtCtrls, cxPC, StdCtrls, IniFiles;

type
  TWilayahSalesForm = class(TtemplateForm)
    connTrading: TADOConnection;
    WilayahSales: TADODataSet;
    dsWilayahSales: TDataSource;
    WilayahSalesWilayahID: TWideStringField;
    WilayahSalesDescription: TWideStringField;
    WilayahSalesTglU: TDateTimeField;
    cxGrid1DBTableView1WilayahID: TcxGridDBColumn;
    cxGrid1DBTableView1Description: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WilayahSalesForm: TWilayahSalesForm;

implementation

{$R *.dfm}

procedure TWilayahSalesForm.FormCreate(Sender: TObject);
begin
  inherited;
//  mutex := CreateMutex(nil, True, 'WilayahSalesForm');
//  if (mutex = 0) or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]) then
//  begin
//      MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
//      PChar(application.exename), MB_OK or MB_ICONERROR);
//      Self.close;
//  end else
//  begin
    conntrading.Close;
    conntrading.ConnectionString := DBConnectMasterMysql;
    try
      WilayahSales.Open;
//      str := ExtractFilePath(Application.ExeName)+'skins';
//      sSkinManager1.SkinDirectory :=  str ;
//      sSkinManager1.SkinName      := 'Office2007';
//      sSkinManager1.Active := true;
    except
      MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
      self.close;
    end;
//  end;
end;

end.
