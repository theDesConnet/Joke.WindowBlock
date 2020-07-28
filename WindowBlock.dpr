program WindowBlock;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.ShowMainForm:=false;
  Application.Run;
end.
