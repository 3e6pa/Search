program Search;

uses
  Forms,
  uMain in 'uMain.pas' {Form1},
  uEventManager in 'Events\uEventManager.pas',
  uISearch in 'Search\uISearch.pas',
  uSearch in 'Search\uSearch.pas',
  umSearchRequest in 'SearchRquiest\umSearchRequest.pas',
  uvSearchRequest in 'SearchRquiest\uvSearchRequest.pas' {frmSearchRequiest},
  ueSimpleSearch in 'SearchRquiest\ueSimpleSearch.pas',
  uDataResource in 'uDataResource.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmSearchRequiest, frmSearchRequiest);
  RequiestList := TRequiestList.Create;
  RequiestList.init;
  CompanyList := TCompanyList.Create;
  CompanyList.init;
  Application.Run;
end.


