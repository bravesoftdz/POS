program Hutang;

uses
  Forms,
  templatestayontop in '..\..\Template\templatestayontop.pas' {FormTemplateStayOnTop},
  template in '..\..\Template\template.pas' {templateForm},
  uInfoHardware in '..\..\Library\uInfoHardware.pas' {FMInfoAplikasi},
  AES in '..\..\Library\AES.pas',
  ElAES in '..\..\Library\ElAES.pas',
  eshardwareid in '..\..\Library\eshardwareid.pas',
  FormConnection in '..\..\Library\FormConnection.pas' {DatabasePromptForm},
  fHutang in 'fHutang.pas' {fhutangForm},
  FAccHutang in 'FAccHutang.pas' {AccHutangForm},
  Login in '..\..\Login\Login.pas' {LoginForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfhutangForm, fhutangForm);
  Application.Run;
end.
