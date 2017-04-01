unit uSearch;

interface

uses
  uISearch,
  uEventManager;

type
  TSearch = class(TInterfacedObject, ISearch)
  private
    type
      TEventManager = class
        SearchEvents: TEvents;
        FillResultEvents: TEvents;
        ShowEvents: TEvents;
        CloseEvents: TEvents;
      end;

  protected
     OnSearch : procedure ()

  protected
     /// <summary>
    ///   Выполненить поиск (источник - определяется вами)
    /// </summary>
    procedure Search; virtual;
    /// <summary>
    ///   Заполнить объект представления резльтатами поиска
    /// </summary>
    procedure FillResult; virtual;
    /// <summary>
    ///   Открыть окно поиска
    /// </summary>
    procedure Show; virtual;
    /// <summary>
    ///   Закрыть окно поиска
    /// </summary>
    procedure Close; virtual;
  end;

implementation

end.


