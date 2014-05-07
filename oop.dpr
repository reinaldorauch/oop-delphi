program oop;

uses
  Vcl.Forms,
  Princ in 'Princ.pas' {FormPrinc},
  unClassBox in '..\..\classes\box\unClassBox.pas',
  unClassShadowBox in '..\..\classes\box\unClassShadowBox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrinc, FormPrinc);
  Application.Run;
end.
