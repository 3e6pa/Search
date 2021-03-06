unit ueSearchCompany;

interface

uses
  umSearchCompany,
  uSearch;

type
  TmveSearchCompany = class
    Model: TmSearchCompany;
    constructor Create(Model: TSearch);
    procedure Show(Sender: TObject);
    procedure Close(Sender: TObject);
    procedure Search(Sender: TObject);
    procedure FillResult(Sender: TObject);
    procedure RegEvents;
  end;

implementation

uses
  uvSearchCompany,
  uDataResource,
  ComCtrls,
  SysUtils;

{ TmveSearchCompany }

procedure TmveSearchCompany.Close(Sender: TObject);
begin
  frmSearchCompany.Close;
end;

constructor TmveSearchCompany.Create(Model: TSearch);
begin
  Self.Model := TmSearchCompany(Model);
  RegEvents;
end;

procedure TmveSearchCompany.FillResult(Sender: TObject);
var
  item: TListItem;
  Company: TmCompany;
begin
  for Company in Model.FindList do
  begin
    item := frmSearchCompany.lvCompanyList.Items.Add;
    item.Caption := intTostr(Company.id);
    item.SubItems.Add(Company.name);
  end;
end;

procedure TmveSearchCompany.RegEvents;
begin
  Model.OnSearch := Search;
  Model.OnShow := Show;
  Model.OnClose := Close;
  Model.OnFillResult := FillResult;
  Model.Events.AfterSearch.RegEvent(FillResult);
end;

procedure TmveSearchCompany.Search(Sender: TObject);
begin
  Model.SearchText := frmSearchCompany.edtSearchText.Text;
  Model.Search;
end;

procedure TmveSearchCompany.Show(Sender: TObject);
begin
  frmSearchCompany.Show;
end;

end.


