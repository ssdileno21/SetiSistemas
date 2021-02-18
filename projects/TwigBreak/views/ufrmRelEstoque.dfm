inherited frmRelEstoque: TfrmRelEstoque
  Caption = 'frmRelEstoque'
  ClientHeight = 547
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 547
    ExplicitWidth = 120
    ExplicitHeight = 0
    inherited Panel2: TPanel
      ExplicitWidth = 112
      inherited Panel5: TPanel
        ExplicitWidth = 104
      end
    end
    inherited Panel3: TPanel
      Top = 502
      ExplicitTop = -45
      ExplicitWidth = 112
    end
    inherited Panel4: TPanel
      Height = 217
      ExplicitWidth = 112
      inherited DBNavigator1: TDBNavigator
        Height = 209
        Hints.Strings = ()
        ExplicitLeft = 83
      end
      inherited dbgPesquisa: TDBGrid
        Height = 209
      end
    end
  end
end
