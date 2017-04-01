unit uISearch;

interface

type
  ISearch = interface
    /// <summary>
    ///   Выполненить поиск (источник - определяется вами)
    /// </summary>
    procedure Search;
    /// <summary>
    ///   Заполнить объект представления резльтатами поиска
    /// </summary>
    procedure FillResult;
    /// <summary>
    ///   Открыть окно поиска
    /// </summary>
    procedure Show;
    /// <summary>
    ///   Закрыть окно поиска
    /// </summary>
    procedure Close;
  end;

implementation

end.


