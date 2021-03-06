unit umSearchCompany;

interface

uses
  uSearch,
  uDataResource;

type
  TmSearchCompany = class(TSearch)
    SearchText: string;
    FindList: TCompanyList;
    procedure Search;
  end;

implementation

{ TmCompanySearch }

procedure TmSearchCompany.Search;
var
  Company: TmCompany;
begin
  if not Assigned(FindList) then
    FindList := TCompanyList.Create();
  FindList.Clear;
  for Company in CompanyList do
    if Company.name = SearchText then
      FindList.Add(Company);
end;

end.


