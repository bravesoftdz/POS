program Receiving;

uses
  Forms,
  Penerimaan in 'Penerimaan.pas' {PenerimaanForm},
  AES in '..\..\Library\AES.pas',
  ElAES in '..\..\Library\ElAES.pas',
  eshardwareid in '..\..\Library\eshardwareid.pas',
  FormConnection in '..\..\Library\FormConnection.pas' {DatabasePromptForm},
  uInfoHardware in '..\..\Library\uInfoHardware.pas' {FMInfoAplikasi},
  templatestayontop in '..\..\Template\templatestayontop.pas' {FormTemplateStayOnTop},
  FPenerimaan in 'FPenerimaan.pas' {FPenerimaanForm},
  template in '..\..\Template\template.pas' {templateForm},
  Search in 'Search.pas' {SearchForm},
  FPenerimaanDetail in 'FPenerimaanDetail.pas' {FPenerimaanDetailForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPenerimaanForm, PenerimaanForm);
  Application.Run;
end.
