object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Login'
  ClientHeight = 333
  ClientWidth = 679
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 673
    Height = 233
    Align = alClient
    TabOrder = 0
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 324
      Top = 4
      Width = 345
      Height = 225
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 38
        Width = 69
        Height = 23
        Caption = 'Usu'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 12
        Top = 110
        Width = 60
        Height = 23
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object sbLogin: TSpeedButton
        AlignWithMargins = True
        Left = 87
        Top = 174
        Width = 110
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666886666666666666666666666666666000066666CC8866666666666
          666888666666666600006666C22C88666666666666888886666666660000666A
          2222C886666666666888888866666666000066A222222C886666666668888888
          86666666000066A222A222C8866666666888688888666666000066A22C8A222C
          866666666888868888866666000066A22C86A22C886666666888866888866666
          0000666A2C666A22C8866666668866668888666600006666AA6666A22C886666
          6666666668888666000066666666666A22C88666666666666688886600006666
          66666666A22C8666666666666668888600006666666666666A2C866666666666
          66668886000066666666666666AC666666666666666668660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        ParentFont = False
        OnClick = sbLoginClick
      end
      object sbCancel: TSpeedButton
        AlignWithMargins = True
        Left = 198
        Top = 174
        Width = 110
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666668666666666666666666666666666666
          0000666608866666666666666686666666666666000066691086666688666666
          6888666666666666000066691088666008866666688866666886666600006669
          1108869110866666688886668888666600006666911089111066666666888868
          8888666600006666911191110666666666888888888666660000666669111110
          6666666666688888886666660000666666911108866666666666888886666666
          0000666666911110866666666666888888666666000066666911011088666666
          6668888888666666000066666910691108866666666888688886666600006666
          9106669110886666668886668888666600006666910666691108666666888666
          6888866600006666696666669106666666686666668886660000666666666666
          6966666666666666666866660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        ParentFont = False
        OnClick = sbCancelClick
      end
      object sbKey: TSpeedButton
        AlignWithMargins = True
        Left = 309
        Top = 174
        Width = 29
        Height = 28
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666000666666666666666888666000066666666666033006666
          666666666888886600006666666666030B306666666666668887886600006666
          66666030B0B066666666666888787866000066666660030B0B06666666666888
          8787866600006660000330B0B066666668888888787866660000660333300B0B
          06666666888888878786666600006037B7B3B0B0666666688777787878666666
          0000607BB3B73B06666666687778778786666666000060BB3B3BB00666666668
          77878778866666660000688303B3B70666666668888878778666666600006070
          703B3B06666666687878878786666666000060B803B3B7066666666878887877
          866666660000660BB8BB70666666666687787778666666660000666008000666
          6666666668888886666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
      end
      object edtUserName: TEdit
        Left = 85
        Top = 38
        Width = 253
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'DILENO'
      end
      object edtPassword: TEdit
        Left = 85
        Top = 110
        Width = 253
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        Text = 'Ahtah@123'
      end
      object cbExibirSenha: TCheckBox
        Left = 261
        Top = 140
        Width = 77
        Height = 17
        Caption = 'Exibir senha'
        TabOrder = 2
        OnClick = cbExibirSenhaClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 320
      Height = 231
      Align = alLeft
      TabOrder = 1
      object Image1: TImage
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 312
        Height = 223
        Align = alClient
        Stretch = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 302
        ExplicitHeight = 214
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 673
    Height = 41
    Align = alTop
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 665
      Height = 33
      Align = alClient
      Alignment = taCenter
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Lines.Strings = (
        'S.C.M - SETI COMMERCIAL MANAGER')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 289
    Width = 673
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
  end
end
