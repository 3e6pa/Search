unit uSearch;

interface

uses
  uISearch,
  uEventManager,
  Classes;

type
  TSearch = class(TInterfacedObject, ISearch)
  private
    type
      TEventManager = class
        BeforeSearch: TEvents;
        AfterSearch: TEvents;
        BeforeFillResult: TEvents;
        AfterFillResult: TEvents;
        BeforeShow: TEvents;
        AfterShow: TEvents;
        BeforeClose: TEvents;
        AfterClose: TEvents;
        constructor Create;
        destructor Destroy; override;
      end;
  private
    procedure DoEvent(Event: TNotifyEvent);
  public
    Events: TEventManager;
    OnSearch: TNotifyEvent;
    OnFillResult: TNotifyEvent;
    OnShow: TNotifyEvent;
    OnClose: TNotifyEvent;

     /// <summary>
    ///   ����������� ����� (�������� - ������������ ����)
    /// </summary>
    procedure Search; virtual;
    /// <summary>
    ///   ��������� ������ ������������� ����������� ������
    /// </summary>
    procedure FillResult; virtual;
    /// <summary>
    ///   ������� ���� ������
    /// </summary>
    procedure Show; virtual;
    /// <summary>
    ///   ������� ���� ������
    /// </summary>
    procedure Close; virtual;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  SysUtils;

{ TSearch }

procedure TSearch.Close;
begin
  Events.BeforeClose.DoEvents;
  DoEvent(OnClose);
  Events.AfterClose.DoEvents;
end;

constructor TSearch.Create;
begin
  Events := TEventManager.Create;
end;

destructor TSearch.Destroy;
begin
  FreeAndNil(Events);
  inherited;
end;

procedure TSearch.DoEvent(Event: TNotifyEvent);
begin
  if Assigned(Event) then
    Event(Self)
end;

procedure TSearch.FillResult;
begin
  Events.BeforeFillResult.DoEvents;
  DoEvent(OnFillResult);
  Events.AfterFillResult.DoEvents;
end;

procedure TSearch.Search;
begin
  Events.BeforeSearch.DoEvents;
  DoEvent(OnSearch);
  Events.AfterSearch.DoEvents;
end;

procedure TSearch.Show;
begin
  Events.BeforeShow.DoEvents;
  DoEvent(OnShow);
  Events.AfterShow.DoEvents;
end;

{ TSearch.TEventManager }

constructor TSearch.TEventManager.Create;
begin
  BeforeSearch := TEvents.Create;
  AfterSearch := TEvents.Create;
  BeforeFillResult := TEvents.Create;
  AfterFillResult := TEvents.Create;
  BeforeShow := TEvents.Create;
  AfterShow := TEvents.Create;
  BeforeClose := TEvents.Create;
  AfterClose := TEvents.Create;
end;

destructor TSearch.TEventManager.Destroy;
begin
  FreeAndNil(BeforeSearch);
  FreeAndNil(AfterSearch);
  FreeAndNil(BeforeFillResult);
  FreeAndNil(AfterFillResult);
  FreeAndNil(BeforeShow);
  FreeAndNil(AfterShow);
  FreeAndNil(BeforeClose);
  FreeAndNil(AfterClose);
  inherited;
end;

end.

