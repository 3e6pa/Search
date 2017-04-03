unit uMain;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  uSearch;

type
  TForm1 = class(TForm)
    btnSearch: TButton;
    rbSearchRequiest: TRadioButton;
    rbSearchCompany: TRadioButton;
    procedure btnSearchClick(Sender: TObject);
    procedure rbSearchRequiestClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbSearchCompanyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  GlobalSearch: TSearch;
  CompanySearch: TSearch;
  RequiestSearch: TSearch;

implementation

uses
  umSearchRequest,
  ueSimpleSearch,
  umSearchCompany,
  ueSearchCompany;



{$R *.dfm}

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  GlobalSearch.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CompanySearch := TmSearchCompany.Create;
  RequiestSearch := TmSearchRequest.Create;
  TmveSimpleSearchRequest.Create(RequiestSearch);
  TmveSearchCompany.Create(CompanySearch);
end;

procedure TForm1.rbSearchCompanyClick(Sender: TObject);
begin
  GlobalSearch := CompanySearch;
end;

procedure TForm1.rbSearchRequiestClick(Sender: TObject);
begin
  GlobalSearch := RequiestSearch;
end;

end.


