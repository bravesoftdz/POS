unit FSupplier;

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
  dxBar, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, DB, Mask, DBCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxClasses, ADODB, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, IniFiles,
  cxDBEdit;

type
  TfSupplierForm = class(TFormTemplateStayOnTop)
    lbl1: TLabel;
    DBEdit1: TDBEdit;
    lbl2: TLabel;
    DBEdit2: TDBEdit;
    lbl3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    bvl1: TBevel;
    lbl4: TLabel;
    DBEdit5: TDBEdit;
    lbl5: TLabel;
    DBEdit6: TDBEdit;
    bvl2: TBevel;
    lbl6: TLabel;
    DBEdit7: TDBEdit;
    lbl7: TLabel;
    DBEdit8: TDBEdit;
    lbl8: TLabel;
    DBEdit9: TDBEdit;
    lbl9: TLabel;
    DBEdit10: TDBEdit;
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
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    person: TADODataSet;
    personContacID: TStringField;
    personSupID: TStringField;
    personNama: TStringField;
    personTglu: TDateTimeField;
    personjabatan: TStringField;
    personAlamat: TStringField;
    Rekening: TADODataSet;
    dsPerson: TDataSource;
    dsRekening: TDataSource;
    RekeningnorekID: TStringField;
    RekeningsupID: TStringField;
    Rekeningket: TStringField;
    RekeningtglU: TDateTimeField;
    RekeningBank: TStringField;
    cxGrid1DBTableView1ContacID: TcxGridDBColumn;
    cxGrid1DBTableView1Nama: TcxGridDBColumn;
    cxGrid1DBTableView1jabatan: TcxGridDBColumn;
    cxGrid1DBTableView1Alamat: TcxGridDBColumn;
    cxGridDBTableView1norekID: TcxGridDBColumn;
    cxGridDBTableView1ket: TcxGridDBColumn;
    cxGridDBTableView1Bank: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lbl10: TLabel;
    sp_kode_auto: TADOStoredProc;
    sp_kode_autohasil: TWideStringField;
    lbl11: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit8Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxPageControl1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSupplierForm: TfSupplierForm;

implementation

uses Supplier;
{$R *.dfm}

procedure TfSupplierForm.cxPageControl1Click(Sender: TObject);
begin
  inherited;
  if cxPageControl1.ActivePageIndex = 1 then
  begin
    person.Close;
    person.Open;
  end;
  if cxPageControl1.ActivePageIndex = 2 then
  begin
    Rekening.Close;
    Rekening.Open;
  end;
end;

procedure TfSupplierForm.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  SupplierForm.Valuta.Close;
  SupplierForm.Valuta.Open;
  SupplierForm.Wilayah.Close;
  SupplierForm.Wilayah.Open;
end;

procedure TfSupplierForm.FormActivate(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfSupplierForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  person.Close;
  Rekening.Close;
end;

procedure TfSupplierForm.FormShow(Sender: TObject);
var
Ini : TIniFile;
versi : Integer;
begin
  inherited;
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.Ini'));
  if (Ini.ReadInteger('Version','Version',versi) = 1) or (Ini.ReadInteger('Version','Version',versi) = 0) or (Ini.ReadInteger('Version','Version',versi) = 2)then
  begin
    DBEdit1.Enabled := True;
    DBEdit1.Color := clWindow;
    DBEdit1.SetFocus;
  end else
  begin
    // Kode Automatik
    IF SupplierForm.Supplier.State in [dsInsert] then
    Begin
      With SupplierForm.qrySystem do
      begin
        Close;
        Open;
      end;
      if Not SupplierForm.qrySystem.IsEmpty then
      begin
        with sp_kode_auto do
        begin
          close;
          Parameters.ParamByName('table_').Value := 1;
          Parameters.ParamByName('NoTemp').Value := '';
          Open;
        end;
        if sp_kode_autohasil.Value = '' then
        begin
          DBEdit1.ReadOnly := False;
          DBEdit1.Color := clWhite;
          DBEdit1.SetFocus;
        end else
        begin
          SupplierForm.SupplierSUPID.Value := sp_kode_autohasil.Value;
          DBEdit1.ReadOnly := True;
          DBEdit1.Color := clWhite;
          DBEdit2.SetFocus;
        end;
      End else
      begin
        DBEdit1.SetFocus;
      end;
    End;
  end;

end;

end.
