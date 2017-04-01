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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  GlobalSearch: TSearch;

implementation

uses
  umSearchRequest,
  ueSimpleSearch;



{$R *.dfm}

procedure TForm1.btnSearchClick(Sender: TObject);
begin
  GlobalSearch.Show;
end;

procedure TForm1.rbSearchRequiestClick(Sender: TObject);
var
  mSearchRequest: TmSearchRequest;
begin
  mSearchRequest := TmSearchRequest.Create;
  GlobalSearch := mSearchRequest;
  TmveSimpleSearchRequest.Create(mSearchRequest);
end;

end.


