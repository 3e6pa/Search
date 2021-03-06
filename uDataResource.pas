unit uDataResource;

interface

uses
  Generics.Collections;

type
  TmRequiest = class
    id: Integer;
    date: TDateTime;
    number: string;
    constructor Create(id: Integer; number: string);
  end;

  TmCompany = class
    id: integer;
    name: string;
    constructor Create(id: integer; name: string);
  end;

  TRequiestList = class(TObjectList<TmRequiest>)
    procedure init;
  end;

  TCompanyList = class(TObjectList<TmCompany>)
    procedure init;
  end;

var
  RequiestList: TRequiestList;
  CompanyList: TCompanyList;

implementation

uses
  SysUtils;

{ TRequisiteList }

procedure TRequiestList.init;
var
  i: integer;
begin
  for I := 0 to 1000 do
    Self.Add(TmRequiest.Create(i, '������ ����� ' + intToStr(i)));
end;

{ TCompanyList }

procedure TCompanyList.init;
var
  i: integer;
begin
  for I := 0 to 1000 do
    Self.Add(TmCompany.Create(i, '�������� ' + intToStr(i)));
end;

{ TmRequiest }

constructor TmRequiest.Create(id: Integer; number: string);
begin
  Self.id := id;
  Self.number := number;
  date := now;
end;

{ TmCompany }

constructor TmCompany.Create(id: integer; name: string);
begin
  Self.id := id;
  Self.name := name;
end;

end.


