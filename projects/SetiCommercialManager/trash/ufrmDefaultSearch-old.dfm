inherited frmDefaultSearch: TfrmDefaultSearch
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa'
  ClientHeight = 256
  ClientWidth = 752
  Menu = MainMenu1
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 768
  ExplicitHeight = 315
  PixelsPerInch = 96
  TextHeight = 13
  object pLeft: TPanel
    Left = 157
    Top = 0
    Width = 595
    Height = 256
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 593
      Height = 254
      Align = alClient
      TabOrder = 0
      object dbgridResult: TDBGrid
        Left = 1
        Top = 33
        Width = 591
        Height = 220
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 591
        Height = 32
        Align = alTop
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 583
          Height = 24
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alClient
          Kind = dbnHorizontal
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 157
    Height = 256
    Align = alLeft
    Color = clInactiveBorder
    ParentBackground = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 155
      Height = 254
      Align = alClient
      TabOrder = 0
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 147
        Height = 25
        Align = alTop
        Caption = 'Selecionar'
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 35
        Width = 147
        Height = 25
        Align = alTop
        Caption = 'Cancelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 136
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Copiar1: TMenuItem
        Caption = 'Copiar'
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
      end
    end
    object mENU1: TMenuItem
      Caption = 'Menu'
      object Pesquisar1: TMenuItem
        Caption = 'Pesquisar'
      end
      object Selecionar1: TMenuItem
        Caption = 'Selecionar'
      end
      object Sair1: TMenuItem
        Caption = 'Cancelar'
      end
    end
  end
  object imgMenu: TImageList
    Left = 200
    Top = 152
    Bitmap = {
      494C010104000800E80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0006B6B6A0089898A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0006B6B6A004E4C49005A5A5B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2BFE8401000BEFF1100DFFF1100DEFF1100DDFF1000D0FF5A50C5AF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F0006A6A69004F4D49005A5B5C00EEEEEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E10
      C2EF1200E3FF1200E1FF1200E0FF1100DFFF1100DEFF1100DDFF1100DBFF1100
      D6FFA49FDA6000000000000000000000000000000000000000006960C69F6960
      C69F000000000000000000000000000000000000000000000000000000000000
      00000F00B6FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0006A6A
      69004E4D49005A5A5C00F1F1F10000000000000000008C8985FF8C8985FF8C89
      85FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FF8C89
      85FF8C8985FF8C8985FF8C8985FF0000000000000000000000001100CAFF1200
      E5FF1200E4FF2D20BADFEFEFF9100000000000000000A49FDB601000CEFF1100
      DBFF1100DAFFA49FDA60000000000000000000000000A49FDD601200E6FF1200
      E5FF6960C69F0000000000000000000000000000000000000000000000001000
      C6FF1100DBFF0F00B6FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF006B6A69004E4D
      49005A5A5C00F1F1F100000000000000000000000000FAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5F5FFF5F5
      F5FFF4F4F4FFF3F3F3FF8C8985FF00000000000000004B40C5BF1200E8FF1200
      E6FFD1CFEE3000000000000000000000000000000000EFEFF9101000D3FF1100
      DDFF1100DBFF1100D6FF000000000000000000000000000000006960C79F1200
      E6FF1200E5FF6960C69F000000000000000000000000000000001000C8FF1100
      DDFF1000C6FF000000000000000000000000000000000000000000000000F9F9
      F800EAE9E600E9E7E400F4F3F2000000000000000000666665004C4A47005B5B
      5D00F1F1F10000000000000000000000000000000000FAFAFAFFFAFAFAFFDCD7
      D1FFF3D5B0FFFAFAFAFFF9F9F9FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFF5F5F5FFF4F4F4FF8C8985FF00000000000000001200EAFF1200E9FF958F
      D87000000000000000000000000000000000EFEFF9101100D5FF1100DFFF1000
      D3FF1000CEFF1100DBFF5A50C5AF000000000000000000000000000000006960
      C79F1200E6FF1200E5FF6960C69F00000000000000001100CAFF1200DFFF1000
      C8FF0000000000000000000000000000000000000000FEFEFE00D7D4CD00D1CD
      C600DCD8D200DDD9D300D4CFC900D0CDC600D8D5CD007D7A76005B5B5D00F1F1
      F1000000000000000000000000000000000000000000FAFAFAFFFAFAFAFFE4C7
      A3FFE2BC8CFFF9F4EEFFFAFAFAFFF9F9F9FFF8F8F8FFF7F7F7FFF7F7F7FFF6F6
      F6FFF5F5F5FFF5F5F5FF8C8985FF00000000A49FDE601200EBFF1100DEFF0000
      0000000000000000000000000000EFEFF9101100D7FF1200E1FF1100D5FFEFEF
      F910A49FDB601100DDFF1000D0FF000000000000000000000000000000000000
      00006960C79F1200E6FF1200E5FF6960C69F1100CBFF1200E2FF1100CAFF0000
      000000000000000000000000000000000000FFFFFE00CFCCC500E5E3DE00FAF9
      F800FDFDFC00FDFDFC00F9F8F600E9E7E300D7D3CC00D9D6CF00000000000000
      00000000000000000000000000000000000000000000FAFAFAFFFAFAFAFFD9D9
      D9FFD3D3D4FFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8F8FFF7F7F7FFF7F7
      F7FFF6F6F6FFF5F5F5FF8C8985FF000000004B40CCBF1300ECFF2D20C7DF0000
      00000000000000000000EFEFF9101100D9FF1200E4FF1100D7FFEFEFF9100000
      0000000000001100DEFF1100DDFF000000000000000000000000000000000000
      0000000000006960C79F1200E6FF1200E5FF1200E4FF1100CBFF000000000000
      000000000000000000000000000000000000DFDCD700E0DDD800FBFAF900FBFB
      FA00FBFAFA00FAFAF900F9F8F600F6F4F200E6E3DE00D1CDC600000000000000
      00000000000000000000000000000000000000000000FAFAFAFFFAFAFAFFE6A7
      58FFE9A045FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8F8FFF7F7
      F7FFF7F7F7FFF6F6F6FF8C8985FF000000004B40D0BF1300EEFF4B40CFBF0000
      000000000000EFEFF9101100DBFF1200E6FF1100D9FFEFEFF910000000000000
      0000000000001100DFFF1100DEFF000000000000000000000000000000000000
      000000000000000000001100CFFF1200E6FF1200E5FF6960C69F000000000000
      000000000000000000000000000000000000CDCAC100EEECE800F8F7F600FBFA
      F900FDFDFD00FCFBFB00F9F8F700F1EFEC00EAE7E200D0CBC300F3F2F0000000
      00000000000000000000000000000000000000000000FAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFF4DDC0FFB4D0A2FFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFF8F8
      F8FFF7F7F7FFF7F7F7FF8C8985FF00000000867FD4801300EFFF1100CCFF0000
      0000EFEFF9101100DEFF1200E9FF1100DBFFEFEFF91000000000000000000000
      0000EFEFF9101200E0FF1100DFFF000000000000000000000000000000000000
      0000000000001100D1FF1200E8FF1100CFFF1200E6FF1200E5FF6960C69F0000
      000000000000000000000000000000000000CFCAC200EEEBE800F6F5F300FBFB
      FA00FDFCFC00FCFCFB00FAF9F800F1EFEC00E7E3DE00D4CFC800E7E4E1000000
      00000000000000000000000000000000000000000000FAFAFAFF619E3CFFDBDB
      DCFFFAFAFAFFFAFAFAFF389612FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
      D1FFF8F8F8FFF7F7F7FF8C8985FF00000000EFEFF9101300F0FF1300EFFFEFEF
      F9101200E0FF1200EBFF1100DEFFEFEFF9100000000000000000000000000000
      00002D20BADF1200E1FF1000BEFF000000000000000000000000000000000000
      00001100D3FF1200EBFF1100D1FF000000006960C79F1200E6FF1200E5FF6960
      C69F00000000000000000000000000000000CDC9C100EAE6E200F6F4F300FCFB
      FB00FCFCFB00FCFBFB00FAF9F800F5F3F000E6E2DC00D1CCC400E9E7E4000000
      00000000000000000000000000000000000000000000619E3CFF30AB16FFE1E1
      E1FF8DB276FF2DB318FF6DA54BFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFF9F9F9FFF8F8F8FF8C8985FF00000000000000001200D7FF1300F0FF1300
      E6FF1300EEFF1200E0FFEFEFF91000000000000000000000000000000000D1CF
      EE301200E4FF1200E3FFC2BFE840000000000000000000000000000000001200
      D5FF1300EDFF1100D3FF0000000000000000000000006960C79F1200E6FF1200
      E5FF6960C69F000000000000000000000000CFCBC300E3DED900FAF9F800FBFB
      FA00FBFBFA00FBFBFA00FAF9F800FBFAF900E6E2DD00CAC5BC00F8F7F6000000
      000000000000000000000000000000000000629F3CCF27CC21FF27CC21FF27CC
      21FF27CC21FF31AF1AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFF9F9F9FF8C8985FF0000000000000000E0DFF4201300F1FF1300
      F0FF1300E6FFEFEFF91000000000000000000000000000000000958FD8701200
      E6FF1200E5FF1E10C2EF000000000000000000000000000000001200D6FF1300
      EFFF1200D5FF00000000000000000000000000000000000000006960C79F1200
      E6FF1200E5FF6960C69F0000000000000000EAE8E500D0CBC300F6F4F2000000
      0000FFFFFE00FEFEFE0000000000FEFEFD00DAD6CF00D6D3CC00000000000000
      00000000000000000000000000000000000037A218FF2CCC26FF2CCC26FF2CCC
      26FF399A15FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FF8C8985FF8C89
      85FF8C8985FF8C8985FF8C8985FF000000000000000000000000A49FDF601300
      F1FF1300F0FF1300EFFF1100CCFF4B40CFBF2D20C7DF1100DEFF1200E9FF1200
      E8FF1100CAFF00000000000000000000000000000000000000001200D7FF1200
      D6FF000000000000000000000000000000000000000000000000000000006960
      C79F1200E6FF6960C69F000000000000000000000000DBD8D300D3CFC800F2F0
      EE00FDFDFD00FFFEFE00F8F7F500DFDBD600CECAC300FDFDFC00000000000000
      0000000000000000000000000000000000000000000039A21AFF37AB1EFFE6F0
      E120000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0DF
      F4201200D7FF1300F0FF1300EFFF1300EEFF1300ECFF1200EBFF1200EAFF4B40
      C5BF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A49FDD600000000000000000000000000000000000000000E9E7E400CFCB
      C400CFCBC400D0CCC400CEC9C300DDDBD6000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D8D12FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFF910867FD4804B40D0BF4B40CCBFA49FDE60000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFF8FFFFFFFFFFFFFFF0FFFFF01FFFFF
      FFE0FFFFE007CFF7FFC18001C18387E3FF8380018783C3C7E18780018F01E18F
      800F80011E01F01F003F80011C19F83F003F80011839FC3F001F80011071F81F
      001F800100F1F10F001F800181E1E387001F000183C3C7C3123F0001C007CFE3
      803F8FFFE00FFFF7C0FFDFFFF83FFFFF00000000000000000000000000000000
      000000000000}
  end
  object DataSource1: TDataSource
    Left = 384
    Top = 152
  end
end