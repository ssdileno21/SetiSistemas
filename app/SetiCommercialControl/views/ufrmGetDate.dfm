object frmGetDate: TfrmGetDate
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  Caption = 'Retorna data'
  ClientHeight = 240
  ClientWidth = 246
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 240
    Height = 193
    Align = alClient
    Date = 0.564043587961350600
    TabOrder = 0
    OnDblClick = MonthCalendar1DblClick
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 240
    Height = 35
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 232
      Height = 27
      Align = alClient
      Caption = 'Seleciona data'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000666666666666666666666666666666666666000066666666666666666666
        6666666666666666000066666666666666666666666666666666666600006666
        666666666F66666666666666666F66660000666FFFFFF66684F6666666FFFFF6
        6688F666000066844444F666848F66666888886666688F6600006684444F6666
        684F66666888866666668F660000668444F66666684F66666888666666668F66
        00006684484FF6666F4F666668868FF6666F8F660000668486844FFFF4866666
        6866688FFFF88666000066886668844448666666666666688888666600006666
        6666688886666666666666666666666600006666666666666666666666666666
        6666666600006666666666666666666666666666666666660000666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitWidth = 149
    end
  end
end
