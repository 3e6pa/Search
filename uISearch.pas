unit uISearch;

interface

type
  ISearch = interface
    /// <summary>
    ///   ����������� ����� (�������� - ������������ ����)
    /// </summary>
    procedure Search;
    /// <summary>
    ///   ��������� ������ ������������� ����������� ������
    /// </summary>
    procedure FillResult;
    /// <summary>
    ///   ������� ���� ������
    /// </summary>
    procedure Show;
    /// <summary>
    ///   ������� ���� ������
    /// </summary>
    procedure Close;
  end;

implementation

end.


