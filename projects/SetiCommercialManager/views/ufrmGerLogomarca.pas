unit ufrmGerLogomarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmPattern, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TfrmGerLogomarca = class(TfrmPattern)
    Panel8: TPanel;
    Image2: TImage;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    sbGrava: TSpeedButton;
    sbExclui: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerLogomarca: TfrmGerLogomarca;

implementation

{$R *.dfm}

end.
