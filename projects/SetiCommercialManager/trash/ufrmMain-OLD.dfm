object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Seti Framework'
  ClientHeight = 867
  ClientWidth = 1412
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 345
    Top = 32
    Height = 835
    OnCanResize = Splitter1CanResize
    ExplicitLeft = 324
    ExplicitTop = 43
    ExplicitHeight = 791
  end
  object pHeader: TPanel
    Left = 0
    Top = 0
    Width = 1412
    Height = 32
    Align = alTop
    Color = clInactiveBorder
    ParentBackground = False
    PopupMenu = ppmHeader
    TabOrder = 0
    DesignSize = (
      1412
      32)
    object sbClose: TSpeedButton
      AlignWithMargins = True
      Left = 1378
      Top = 2
      Width = 31
      Height = 27
      Anchors = [akTop, akRight]
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777777777770000000777777777777770F700000007777
        0F777777777770000000777000F7777770F770000000777000F777770F777000
        00007777000F77700F777000000077777000F700F7777000000077777700000F
        7777700000007777777000F777777000000077777700000F7777700000007777
        7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
        00007700F7777777700F70000000777777777777777770000000777777777777
        777770000000}
      OnClick = sbCloseClick
    end
  end
  object pgcMain: TPageControl
    AlignWithMargins = True
    Left = 351
    Top = 35
    Width = 1058
    Height = 829
    ActivePage = tsOne
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 314
    ExplicitWidth = 1095
    ExplicitHeight = 802
    object tsOne: TTabSheet
      Caption = 'Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 1087
      ExplicitHeight = 764
    end
  end
  object pLeftBar: TPanel
    AlignWithMargins = True
    Left = 40
    Top = 35
    Width = 33
    Height = 829
    Align = alLeft
    TabOrder = 2
    Visible = False
    ExplicitLeft = 3
    ExplicitHeight = 802
    object SpeedButton3: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 25
      Height = 22
      Align = alTop
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000666666666666666666666FF6666666666666000066848666666666666666
        888F66FFFFFFFF66000066444660000000066666888F68888888866600006684
        8666666666666666888666666666666600006666666666666666666666666666
        666666660000666666666666666666666FF66666666666660000668486666666
        66666666888F66FFFFFFFF66000066444660000000066666888F688888888666
        0000668486666666666666668886666666666666000066666666666666666666
        66666666666666660000666666666666666666666FF666666666666600006684
        8666666666666666888F66FFFFFFFF66000066444660000000066666888F6888
        8888866600006684866666666666666688866666666666660000666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 23
    end
    object SpeedButton5: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 798
      Width = 25
      Height = 27
      Align = alBottom
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778888888
        887777000000777778FFFFFFF87777000000777778FFFFFFF888770000007777
        78FFFFFFF8F877000000778788FFFFFFF8F888000000777778FFFFFFF8F8F800
        0000778778FFFFFFF8F8F8000000777778FFFFFFF8F8F8000000778778888888
        88F8F800000077777778FFFFFFF8F80000007787777888888888F80000007777
        777778FFFFFFF800000078888777788888888800000088888877777778777700
        00008F88887777777777770000008FF88878787878777700000088FF88777777
        777777000000788887777777777777000000}
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 31
    end
  end
  object pMenuLeft: TPanel
    AlignWithMargins = True
    Left = 79
    Top = 35
    Width = 263
    Height = 829
    Align = alLeft
    TabOrder = 3
    ExplicitLeft = 42
    ExplicitHeight = 802
    object pgMenuLeft: TPageControl
      Left = 1
      Top = 24
      Width = 261
      Height = 804
      ActivePage = tsMenuLeft
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 777
      object tsMenuLeft: TTabSheet
        Caption = 'Menu'
        ExplicitHeight = 749
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 261
      Height = 23
      Align = alTop
      Color = clActiveCaption
      ParentBackground = False
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 210
        Top = 1
        Width = 25
        Height = 21
        Align = alRight
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888880000008088888888888888880000008F088888888888888800000088F0
          88888888888888000000888F088700088888880000008888F07FFFF088888800
          0000888887FFFFF088888800000088887FFFFFF08888880000008888FFFFFFF0
          8888880000008888FFFFFFFF0888880000008888FFFFFFFF0000880000008888
          8FFFFFF0FFFF08000000888888888FFFFFFF080000008888888888FFFFFF0800
          00008888888888FFFFFF780000008888888888FFFFF78800000088888888888F
          FF7888000000888888888888888888000000}
        OnClick = SpeedButton1Click
        ExplicitLeft = 191
        ExplicitTop = 0
      end
      object SpeedButton2: TSpeedButton
        Left = 235
        Top = 1
        Width = 25
        Height = 21
        Align = alRight
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
        OnClick = SpeedButton2Click
        ExplicitLeft = 215
        ExplicitTop = 0
      end
      object SpeedButton4: TSpeedButton
        Left = 1
        Top = 1
        Width = 23
        Height = 21
        Align = alLeft
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666FF6666666666666000066848666666666666666
          888F66FFFFFFFF66000066444660000000066666888F68888888866600006684
          8666666666666666888666666666666600006666666666666666666666666666
          666666660000666666666666666666666FF66666666666660000668486666666
          66666666888F66FFFFFFFF66000066444660000000066666888F688888888666
          0000668486666666666666668886666666666666000066666666666666666666
          66666666666666660000666666666666666666666FF666666666666600006684
          8666666666666666888F66FFFFFFFF66000066444660000000066666888F6888
          8888866600006684866666666666666688866666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        ExplicitLeft = 3
        ExplicitHeight = 22
      end
    end
  end
  object sbFooter: TStatusBar
    Left = 0
    Top = 32
    Width = 37
    Height = 835
    Align = alLeft
    Panels = <>
    PopupMenu = ppmFooter
    ExplicitTop = 822
    ExplicitHeight = 1412
  end
  object mmMain: TMainMenu
    Left = 424
    Top = 192
    object Cadastros1: TMenuItem
      Caption = 'Arquivos'
      object Cadastros2: TMenuItem
        Caption = 'Cadastros'
        object CadastroPadro1: TMenuItem
          Caption = 'Cadastro Padr'#227'o'
          OnClick = CadastroPadro1Click
        end
      end
      object FormPadrao1: TMenuItem
        Caption = 'FormPadrao'
        OnClick = FormPadrao1Click
      end
      object este1: TMenuItem
        Caption = 'Teste'
        OnClick = este1Click
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Recortar1: TMenuItem
        Caption = 'Recortar'
      end
      object Copiar1: TMenuItem
        Caption = 'Copiar'
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
      end
      object Deletar1: TMenuItem
        Caption = 'Deletar'
      end
    end
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      object PainelEsquerdo1: TMenuItem
        Caption = 'Painel Esquerdo'
        OnClick = PainelEsquerdo1Click
      end
      object Rodap1: TMenuItem
        Caption = 'Cabe'#231'alho'
        OnClick = Rodap1Click
      end
      object Rodap2: TMenuItem
        Caption = 'Rodap'#233
        OnClick = Rodap2Click
      end
    end
    object Ferramentas1: TMenuItem
      Caption = 'Ferramentas'
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object ManualSetiFramework1: TMenuItem
        Caption = 'Manual SetiFramework'
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object SetiSistemas1: TMenuItem
        Caption = 'Quem somos'
      end
      object ASetiSistemas1: TMenuItem
        Caption = 'A SetiSistemas'
      end
      object Contato1: TMenuItem
        Caption = 'Contato'
      end
    end
    object Desenvolvedor1: TMenuItem
      Caption = 'Desenvolvedor'
      object CadastrodeTelas1: TMenuItem
        Caption = 'Manuten'#231#227'o de Forms'
        OnClick = CadastrodeTelas1Click
      end
    end
  end
  object ImgMenuList: TImageList
    Left = 160
    Top = 192
  end
  object ppmHeader: TPopupMenu
    Left = 450
    Top = 113
    object Ocultar1: TMenuItem
      Caption = 'Ocultar'
      OnClick = Ocultar1Click
    end
  end
  object ppmFooter: TPopupMenu
    Left = 536
    Top = 196
    object Ocultar2: TMenuItem
      Caption = 'Ocultar'
      OnClick = Ocultar2Click
    end
  end
  object EvAppProtect1: TEvAppProtect
    IdApplication = 12345
    RegKey = '\SOFTWARE\TCF Software\AppProtect\'
    Left = 384
    Top = 400
  end
end
