inherited frmCadProdutoMarca: TfrmCadProdutoMarca
  Caption = 'Produtos - Marcas'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 37
    ExplicitHeight = 37
    inherited sbIncluirItem: TSpeedButton
      Height = 29
      ExplicitHeight = 29
    end
    inherited sbDelItem: TSpeedButton
      Height = 29
      ExplicitHeight = 29
    end
    inherited sbSelRegistro: TSpeedButton
      AlignWithMargins = True
      Left = 215
      Top = 4
      Width = 132
      Height = 29
      ExplicitLeft = 381
      ExplicitTop = 4
      ExplicitWidth = 132
      ExplicitHeight = 29
    end
    inherited sbClose: TSpeedButton
      Height = 29
      ExplicitHeight = 29
    end
  end
  inherited Panel2: TPanel
    Top = 37
    ExplicitTop = 37
  end
  inherited Panel3: TPanel
    Top = 157
    ExplicitTop = 157
  end
  inherited Panel4: TPanel
    Top = 198
    Height = 252
    ExplicitTop = 198
    ExplicitHeight = 252
    inherited DBGrid1: TDBGrid
      Height = 244
    end
  end
end