unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxTextEdit, cxLabel,
  cxGroupBox, ActnList, AES;

type
  TLoginForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtUserName: TcxTextEdit;
    edtPassword: TcxTextEdit;
    cxButton1: TcxButton;
    actlst1: TActionList;
    taLogin: TAction;
    taBatal: TAction;
    procedure taLoginExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure taBatalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    strPass : string;
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
 KeyPreview := true;
end;

procedure TLoginForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if edtUserName.Focused then
       edtPassword.SetFocus else
       if edtPassword.Focused then
          cxButton1.SetFocus;
  end;
end;

procedure TLoginForm.taBatalExecute(Sender: TObject);
begin
  ModalResult := mrNo;
  Self.Close;
end;

procedure TLoginForm.taLoginExecute(Sender: TObject);
Var cPas:String;
begin
  cPas            :=edtPassword.Text;
  strPass         := EncryptString(cPas,'');
  edtPassword.Text:=EncryptString(cPas,'');
  ModalResult:=MrOk;
  Self.Hide;
end;

end.
