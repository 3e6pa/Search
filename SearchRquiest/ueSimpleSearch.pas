unit ueSimpleSearch;

interface

uses
  umSearchRequest, uSearch;

type
  TmveSimpleSearchRequest = class
  public
    Model: TmSearchRequest;
    constructor Create(Model: TSearch);
    procedure Show(Sender: TObject);
    procedure Close(Sender: TObject);
    procedure Search(Sender: TObject);
    procedure FillResult(Sender: TObject);
  public
    procedure RegEvents;
  end;

implementation

uses
  uvSearchRequest,
  ComCtrls,
  uDataResource,
  SysUtils;

{ TmveSimpleSearchRequest }

procedure TmveSimpleSearchRequest.Close(Sender: TObject);
begin
  frmSearchRequiest.Close;
end;

constructor TmveSimpleSearchRequest.Create(Model: TSearch);
begin
  Self.Model :=TmSearchRequest(Model);
  RegEvents;
end;

procedure TmveSimpleSearchRequest.FillResult(Sender: TObject);
var
  item: TListItem;
  Requiest: TmRequiest;
begin
  for Requiest in Model.FindList do
  begin
    item := frmSearchRequiest.lvRequestList.Items.Add;
    item.Caption := DateTostr(Requiest.date);
    item.SubItems.Add(Requiest.number);
  end;
end;

procedure TmveSimpleSearchRequest.RegEvents;
begin
  Model.OnSearch := Search;
  Model.OnShow := Show;
  Model.OnClose := Close;
  Model.OnFillResult := FillResult;
  Model.Events.AfterSearch.RegEvent(FillResult);
end;

procedure TmveSimpleSearchRequest.Search(Sender: TObject);
begin
  Model.SearchText := frmSearchRequiest.edtSearchText.Text;
  Model.Search;
end;

procedure TmveSimpleSearchRequest.Show(Sender: TObject);
begin
  frmSearchRequiest.Show;
end;

end.


