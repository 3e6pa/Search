object frmSearchRequiest: TfrmSearchRequiest
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1087#1086#1080#1089#1082#1072' '#1079#1072#1103#1074#1082#1080
  ClientHeight = 230
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtSearchText: TEdit
    Left = 8
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 0
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090
  end
  object btnSearch: TButton
    Left = 167
    Top = 8
    Width = 75
    Height = 21
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object lvRequestList: TListView
    Left = 8
    Top = 35
    Width = 237
    Height = 187
    Columns = <
      item
        Caption = #1044#1072#1090#1072' '#1079#1072#1103#1074#1082#1080
        Width = 79
      end
      item
        Caption = #1053#1086#1084#1077#1088' '#1079#1072#1103#1074#1082#1080
        Width = 150
      end>
    TabOrder = 2
    ViewStyle = vsReport
  end
end
