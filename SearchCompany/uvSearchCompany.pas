unit uvSearchCompany;

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
  ComCtrls,
  StdCtrls;

type
  TfrmSearchCompany = class(TForm)
    edtSearchText: TEdit;
    btnSearch: TButton;
    lvCompanyList: TListView;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchCompany: TfrmSearchCompany;

implementation

uses
  uMain;

{$R *.dfm}

procedure TfrmSearchCompany.btnSearchClick(Sender: TObject);
begin
  GlobalSearch.Search;
end;

end.


