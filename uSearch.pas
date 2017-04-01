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
  end;

implementation

end.


