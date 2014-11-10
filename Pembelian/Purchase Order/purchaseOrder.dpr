program purchaseOrder;

uses
  Forms,
  Windows,
  ADODB,
  Messages,
  Controls,
  Dialogs,
  template in '..\..\Template\template.pas' {templateForm},
  templatestayontop in '..\..\Template\templatestayontop.pas' {FormTemplateStayOnTop},
  AES in '..\..\Library\AES.pas',
  ElAES in '..\..\Library\ElAES.pas',
  eshardwareid in '..\..\Library\eshardwareid.pas',
  FormConnection in '..\..\Library\FormConnection.pas' {DatabasePromptForm},
  uInfoHardware in '..\..\Library\uInfoHardware.pas' {FMInfoAplikasi},
  fpurchaseorder in 'fpurchaseorder.pas' {fpurchaseorderform},
  PurchaseOrderBrowse in 'PurchaseOrderBrowse.pas' {purchaseorderbrowseform},
  Login in '..\..\Login\Login.pas' {LoginForm};

{$R *.res}

const
  Ssys = 'UserLog.sys';

var
  cUser, Cpass : string;
  spUser_, Querylocal : TADOQuery;
  Conn_   : TADOConnection;
begin
  Application.Initialize;
  Conn_ := TADOConnection.Create(nil);
  Conn_.ConnectionString := DBConnectMasterMysql;
  Conn_.LoginPrompt := false;
  try
    Conn_.Connected := True;
    LoginFOrm := TLoginForm.create(nil);
    LoginForm.FormStyle := fsNormal;
    LoginForm.Hide;
    if LoginForm.ShowModal = mrOk then
    begin
      Cuser :=  LoginFOrm.edtUserName.Text;
      Cpass :=  LoginFOrm.edtPassword.Text;
      spUser_ := TADOQuery.Create(nil);
      with spUser_ do
      begin
        Connection := conn_;
        close;
        SQL.Clear;
        SQL.Add('Call sp_pencarianUser('''+Cuser+''','''+cpass+''')');
        Open;
      end;
      IF not spUser_.IsEmpty then
      begin
        QueriLocal := TADOQuery.Create(nil);
        With QueriLocal do
        begin
          Connection := conn_;
          Close;
          SQL.Clear;
          SQL.Add('Select 1 From PXGroupMenu Where Status_ = ''1'' and GroupID ='''+spUser_.FieldByName('GroupUser').AsString+'''');
          Open;
        end;
        if QueriLocal.IsEmpty  then
        begin
           ShowMessage('Maaf anda tidak memiliki Hak Akses Purchase Order');
           Querilocal.Free;
           Application.Terminate;
           //abort;
        end;
        Application.MainFormOnTaskbar := True;
        Application.CreateForm(Tpurchaseorderbrowseform, purchaseorderbrowseform);
        Application.Run;
        Querilocal.Free;
      end;
      spUser_.Free;
    end;
  finally
    MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
              'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
              'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
    Application.Terminate;
  end;
  Conn_.Free;



end.
