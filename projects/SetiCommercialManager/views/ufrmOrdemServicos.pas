unit ufrmOrdemServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardItemReg, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmOrdemServicos = class(TfrmStandardItemReg)
    Label6: TLabel;
    Edit25: TEdit;
    Edit5: TEdit;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdemServicos: TfrmOrdemServicos;

implementation

{$R *.dfm}

end.
