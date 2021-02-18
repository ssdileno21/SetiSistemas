unit ufrmTestePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ImgList, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.Buttons,Data.DB, DBClient, Vcl.Menus,
  Vcl.DBCtrls, Data.Win.ADODB, Vcl.Mask, Datasnap.Provider, uLocate;

type
  TfrmTestePesquisa = class(TForm)
    dsCliente: TDataSource;
    DBNavigator1: TDBNavigator;
    adocliente: TADOQuery;
    ADOConnection1: TADOConnection;
    adoclienteIDCLIENTE: TIntegerField;
    adoclienteNOMECLIENTE: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lCodCliente: TLabel;
    lNomCliente: TLabel;
    PopupMenu1: TPopupMenu;
    PorCodigo: TMenuItem;
    Button1: TButton;
    porNome: TMenuItem;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    procedure PesquisarporCodigo1Click(Sender: TObject);
    procedure PorCodigoClick(Sender: TObject);
    procedure porNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestePesquisa: TfrmTestePesquisa;
  cLocate : TLocate;
implementation

{$R *.dfm}

uses uMess, ufrmToLocate;

procedure TfrmTestePesquisa.PesquisarporCodigo1Click(Sender: TObject);
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure TfrmTestePesquisa.PorCodigoClick(Sender: TObject);
begin
    try
        dsCliente.DataSet := cLocate.GetSearchDataSet(
                                0,
                                cdsCliente,
                                'TBCLIENTE',
                                'IDCLIENTE',
                                'IDCLIENTE',
                                'Consulta de cliente por c�digo',
                                '');
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmTestePesquisa.porNomeClick(Sender: TObject);
begin
    try
        cLocate := TLocate.Create;

{        ShowMessage(cLocate.GetSearchString(
                                0,
                                cdsCliente,
                                'TBCLIENTE',
                                'NOMECLIENTE',
                                'IDCLIENTE',
                                'NOMECLIENTE',
                                'Consulta de cliente por nome'));   }

        dsCliente.DataSet := cLocate.GetSearchDataSet(
                                0,
                                cdsCliente,
                                'TBCLIENTE',
                                'NOMECLIENTE',
                                'IDCLIENTE',
                                'Consulta de cliente por nome',
                                '');



    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
