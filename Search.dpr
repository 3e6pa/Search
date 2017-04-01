program Search;

uses
  Forms,
  uMain in 'uMain.pas' {Form1},
  uISearch in 'uISearch.pas',
  umSearchRequest in 'umSearchRequest.pas',
  umSearchCompany in 'umSearchCompany.pas',
  uSearch in 'uSearch.pas',
  uEventManager in 'Events\uEventManager.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
