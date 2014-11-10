unit template;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, cxGroupBox, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBActns, ActnList, ADODB, FormConnection, AES,
  ExtCtrls, StdCtrls, ShellAnimations, XPMan;

const
  sSYS = 'revisoft.SYS';
type

  TtemplateForm = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    actlst1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    XPManifest1: TXPManifest;
    ShellResources1: TShellResources;
    lbl2: TLabel;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    dscari: TDataSource;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
//
    { Public declarations }
  end;
   function DBConnectMasterMysql : string;
   function enkripsi(src: string): string;
   function dekripsi(src: string): string;
   function Encrypt(const s: String; CryptInt: Integer): String;
   function Decrypt(const s: String; CryptInt: Integer): String;
var
  templateForm: TtemplateForm;
  mutex : Thandle;
implementation

{$R *.dfm}

function enkripsi(src: string): string;
begin
  result:=Encrypt(src,711754);
end;

function dekripsi(src: string): string;
begin
  result:=Decrypt(src,711754);
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

procedure TtemplateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
