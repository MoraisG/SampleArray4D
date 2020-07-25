program SampleArray4D;

uses
  Vcl.Forms,
  FormPrincipal in 'src\view\FormPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
