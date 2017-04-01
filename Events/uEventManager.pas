unit uEventManager;

interface

uses
  Classes;

type
  TEvents = class;

//  TEventManager = class;

  TEvents = class
  private
    FEvents: array of TNotifyEvent;
  public
    procedure RegEvent(aEvent: TNotifyEvent);
    procedure UnregEvent(aEvent: TNotifyEvent);
    procedure ClearEvents;
    function EventRegistered(aEvent: TNotifyEvent): Boolean;
    procedure DoEvents;
    destructor Destroy; override;
  end;

//  TEventManager = class
//    procedure AddToReg(_Event: TEvents; _Method: TMethod);
//    procedure RemoveFromReg(_Event: TEvents; _Method: TMethod);
//    procedure RegEvents; overload;
//    procedure UnregEvents; overload;
//  end;

implementation

{ TEventManager }

procedure TEvents.ClearEvents;
var
  I: Integer;
begin
  for I := 0 to High(FEvents) do
    FEvents[I] := nil;
  SetLength(FEvents, 0);
end;

destructor TEvents.Destroy;
begin
  ClearEvents;
  inherited;
end;

procedure TEvents.DoEvents;
var
  I: Integer;
begin
  for I := 0 to High(FEvents) do
    if i < Length(FEvents) then
      FEvents[I](Self)
    else
      break;
end;

function TEvents.EventRegistered(aEvent: TNotifyEvent): Boolean;
var
  I: Integer;
begin
    // Методы объектов вполне допустимо приводить к TMethod для сравнения
  Result := True;
  for I := 0 to High(FEvents) do
    if (TMethod(aEvent).Code = TMethod(FEvents[I]).Code) and (TMethod(aEvent).Data = TMethod(FEvents[I]).Data) then
      Exit;
  Result := False;
end;

procedure TEvents.RegEvent(aEvent: TNotifyEvent);
var
  I: Integer;
begin
  if EventRegistered(aEvent) then
    Exit;
  I := Length(FEvents);
  SetLength(FEvents, I + 1);
  FEvents[I] := aEvent;
end;

procedure TEvents.UnregEvent(aEvent: TNotifyEvent);
var
  I: Integer;
  vDel: Boolean;
begin
    // Дублей обработчиков быть не может (эта проверка реализуется в RegisterEvent)
  vDel := False;
  for I := 0 to High(FEvents) do
    if vDel then
      FEvents[I - 1] := FEvents[I]
    else if (TMethod(aEvent).Code = TMethod(FEvents[I]).Code) and (TMethod(aEvent).Data = TMethod(FEvents[I]).Data) then
      vDel := True;
  if vDel then
    SetLength(FEvents, Length(FEvents) - 1);
end;

end.


