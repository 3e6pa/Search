unit uvSearchRequest;

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
  ComCtrls,
  uSearch;

type
  TfrmSearchRequiest = class(TForm)
    edtSearchText: TEdit;
    btnSearch: TButton;
    lvRequestList: TListView;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Search: TSearch;
  end;

var
  frmSearchRequiest: TfrmSearchRequiest;

implementation

uses
  uMain;

{$R *.dfm}

procedure TfrmSearchRequiest.btnSearchClick(Sender: TObject);
begin
 GlobalSearch.Search;
end;

end.


