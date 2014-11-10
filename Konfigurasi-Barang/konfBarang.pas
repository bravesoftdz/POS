unit konfBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridTableView, ShellAnimations, XPMan, DBActns, ActnList, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxGroupBox, ExtCtrls, cxPC, StdCtrls, ADODB, Search;

type
  TkonfigBarangForm = class(TtemplateForm)
    Label1: TLabel;
    edNama: TLabel;
    Label4: TLabel;
    edBarang: TEdit;
    Button1: TButton;
    ConnTrading: TADOConnection;
    tblGudang: TADOTable;
    tblGudangGdg: TStringField;
    tblGudangNama: TStringField;
    tblGudangTglU: TDateTimeField;
    tblkonfigbrg: TADODataSet;
    tblkonfigbrgBRG: TStringField;
    tblkonfigbrgNOUR: TSmallintField;
    tblkonfigbrgBRGD: TStringField;
    tblkonfigbrgGD: TStringField;
    tblkonfigbrgSTN3: TStringField;
    tblkonfigbrgQTY: TBCDField;
    tblkonfigbrgHSATUAN: TBCDField;
    tblkonfigbrgTGLU: TDateTimeField;
    tblkonfigbrgCab: TStringField;
    spnour: TADOStoredProc;
    spnourhasil: TIntegerField;
    dstblkonfbrg: TDataSource;
    tblbarangcari: TADOTable;
    tblbarangcariBRG: TStringField;
    tblbarangcariNama1: TStringField;
    tblbarangcariNama2: TStringField;
    tblbarangcariJenis: TStringField;
    tblbarangcariStn1: TStringField;
    tblbarangcariStn2: TStringField;
    tblbarangcariStn3: TStringField;
    tblbarangcariMaxi: TBCDField;
    tblbarangcariMini: TBCDField;
    tblbarangcariIsi1: TBCDField;
    tblbarangcariIsi2: TBCDField;
    tblbarangcariHpp: TBCDField;
    tblbarangcarihbeli: TBCDField;
    tblbarangcarihjual1: TBCDField;
    tblbarangcarihjual2: TBCDField;
    tblbarangcarihjual3: TBCDField;
    tblbarangcarilks: TStringField;
    tblbarangcarisup: TStringField;
    tblbarangcarigol: TStringField;
    tblbarangcarimerek: TStringField;
    tblbarangcaritype: TStringField;
    tblbarangcarimodel: TStringField;
    tblbarangcariklink: TStringField;
    tblbarangcaristatus: TSmallintField;
    tblbarangcaribarcode: TStringField;
    tblbarangcarinamabar: TStringField;
    tblbarangcariberat: TBCDField;
    tblbarangcarivol: TBCDField;
    tblbarangcarislevel: TBCDField;
    tblbarangcarikuali: TStringField;
    tblbarangcariwrn: TStringField;
    tblbarangcarimtf: TStringField;
    tblbarangcarisize: TStringField;
    tblbarangcaritglu: TDateTimeField;
    tblbarangcarilNonkonsinyasi: TStringField;
    tblbarangcarilAktif: TStringField;
    tblbarangcaricab: TStringField;
    tblbarangcarilstatAll: TBooleanField;
    tblbarangcariRak: TStringField;
    tblbarangcariKdHarga: TStringField;
    tblbarangcarihppjual: TBCDField;
    tblbarangcaripersentjual: TBCDField;
    tblbarangcaripersentnilai: TBCDField;
    cxGrid1DBTableView1NOUR: TcxGridDBColumn;
    cxGrid1DBTableView1BRGD: TcxGridDBColumn;
    cxGrid1DBTableView1GD: TcxGridDBColumn;
    cxGrid1DBTableView1STN3: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1HSATUAN: TcxGridDBColumn;
    procedure edBarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  konfigBarangForm: TkonfigBarangForm;

implementation

{$R *.dfm}

procedure TkonfigBarangForm.edBarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
  begin
    try
      if edbarang.Text <> '' then
      begin
        SearchForm := TSearchForm.Create(nil);
        SearchForm.FormStyle := fsNormal;

      end;
    finally

    end;
  end;
end;

end.
