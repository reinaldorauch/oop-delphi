program oop;

uses
  Vcl.Forms,
  Princ in 'Princ.pas' {FormPrinc},
  unClassBox in 'unClassBox.pas',
  unClassShadowBox in 'unClassShadowBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrinc, FormPrinc);
  Application.Run;
end.
