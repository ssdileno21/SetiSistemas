unit ufrmRelFaturamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmRelatorioPadrao, Data.FMTBcd,
  Vcl.ImgList, Data.SqlExpr, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TfrmrelFaturamento = class(TfrmRelatorioPadrao)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    Label1: TLabel;
    edtCodigo: TEdit;
    Label2: TLabel;
    edtCodInterno: TEdit;
    Panel7: TPanel;
    rgTipoRelatorio: TRadioGroup;
    lbDtIni: TLabel;
    dtpIni: TDateTimePicker;
    lbDtFim: TLabel;
    dtpFim: TDateTimePicker;
    Panel11: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    edtComprasCodFornecedor: TEdit;
    edtComprasFornecedor: TEdit;
    Label5: TLabel;
    edtComprasNF: TEdit;
    Label4: TLabel;
    edtComprasFechamento: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    edtDtaServicos: TEdit;
    Label11: TLabel;
    edtCodCliente: TEdit;
    edtServicosDtaEntrega: TEdit;
    edtCliente: TEdit;
    Label10: TLabel;
    edtServicosDtaAutorizacao: TEdit;
    Label12: TLabel;
    edtServicosDtaDesistencia: TEdit;
    Label13: TLabel;
    edtServicosDtaCancelamento: TEdit;
    Panel10: TPanel;
    rgComprasStatus: TRadioGroup;
    rgServicosStatus: TRadioGroup;
    Image1: TImage;
    Label8: TLabel;
    procedure FormShow(Sender: TObject);
    procedure sbIniciarClick(Sender: TObject);
    procedure rgTipoRelatorioClick(Sender: TObject);
    procedure sbLimparFiltroClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbListarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ControleTela(pStatus:Integer);
    procedure ComponentesLimpar;
    procedure Desabilitar;
    procedure ComponentesHab(pTpRel:Integer);
  public
    { Public declarations }
  end;

var
  frmrelFaturamento: TfrmrelFaturamento;

implementation

{$R *.dfm}

{ TfrmrelFaturamento }

procedure TfrmrelFaturamento.ComponentesHab(pTpRel:Integer);
begin

  //LIMPANDO TEDITS
  edtComprasCodFornecedor.Clear;
  edtComprasFornecedor.Clear;
  edtCodCliente.Clear;
  edtCliente.Clear;
  edtComprasNF.Clear;
  edtComprasFechamento.Clear;
  edtDtaServicos.Clear;
  edtServicosDtaAutorizacao.Clear;
  edtServicosDtaEntrega.Clear;
  edtServicosDtaDesistencia.Clear;
  edtServicosDtaCancelamento.Clear;

  //COMPRAS
  if pTpRel = 1 then
  begin
    rgComprasStatus.ItemIndex := 0;
    edtComprasCodFornecedor.Color := clWindow;
    edtComprasFornecedor.Color := clWindow;
    edtComprasNF.Color := clWindow;
    edtComprasFechamento.Color := clWindow;
  end else
  begin
    rgComprasStatus.ItemIndex := -1;
    edtComprasCodFornecedor.Color := clInfoBk;
    edtComprasFornecedor.Color := clInfoBk;
    edtComprasNF.Color := clInfoBk;
    edtComprasFechamento.Color := clInfoBk;
  end;

  //COMPRAS
  rgComprasStatus.Enabled := pTpRel in [1];
  edtComprasCodFornecedor.Enabled := pTpRel in [1];
  edtComprasFornecedor.Enabled := pTpRel in [1];
  edtComprasNF.Enabled := pTpRel in [1];
  edtComprasFechamento.Enabled := pTpRel in [1];

  //VENDAS E SERVICOS
  if pTpRel in [2,3,4] then
  begin
    edtCodCliente.Enabled := True;
    edtCodCliente.Color := clWindow;
    edtCliente.Enabled := True;
    edtCliente.Color := clWindow;
  end else
  begin
    edtCodCliente.Enabled := False;
    edtCodCliente.Color := clInfoBk;
    edtCliente.Enabled := False;
    edtCliente.Color := clInfoBk;
  end;

  //SERVIÇOS / SERV.PROD
  if pTpRel in [3,4] then
  begin
    rgServicosStatus.ItemIndex := 0;
    rgServicosStatus.Enabled := True;
    edtDtaServicos.Color := clWindow;
    edtServicosDtaAutorizacao.Color := clWindow;
    edtServicosDtaEntrega.Color := clWindow;
    edtServicosDtaDesistencia.Color := clWindow;
    edtServicosDtaCancelamento.Color := clWindow;
  end else
  begin
    rgServicosStatus.ItemIndex := -1;
    rgServicosStatus.Enabled := False;
    edtDtaServicos.Color := clInfoBk;
    edtServicosDtaAutorizacao.Color := clInfoBk;
    edtServicosDtaEntrega.Color := clInfoBk;
    edtServicosDtaDesistencia.Color := clInfoBk;
    edtServicosDtaCancelamento.Color := clInfoBk;
  end;
end;

procedure TfrmrelFaturamento.ComponentesLimpar;
begin
  rgComprasStatus.ItemIndex := -1;
  rgComprasStatus.Enabled := False;
  rgServicosStatus.ItemIndex := -1;
  rgServicosStatus.Enabled := False;
  edtComprasCodFornecedor.Clear;
  edtComprasCodFornecedor.Enabled := False;
  edtComprasFornecedor.Clear;
  edtComprasFornecedor.Enabled := False;
  edtCodCliente.Clear;
  edtCodCliente.Enabled := False;
  edtCliente.Clear;
  edtCliente.Enabled := False;
  edtComprasNF.Clear;
  edtComprasNF.Enabled := False;
  edtComprasFechamento.Clear;
  edtComprasFechamento.Enabled := False;
  edtDtaServicos.Clear;
  edtDtaServicos.Enabled := False;
  edtServicosDtaAutorizacao.Clear;
  edtServicosDtaAutorizacao.Enabled := False;
  edtServicosDtaEntrega.Clear;
  edtServicosDtaEntrega.Enabled := False;
  edtServicosDtaDesistencia.Clear;
  edtServicosDtaDesistencia.Enabled := False;
  edtServicosDtaCancelamento.Clear;
  edtServicosDtaCancelamento.Enabled := False;
end;

procedure TfrmrelFaturamento.ControleTela(pStatus: Integer);
var
    vTipoRel : Integer;
begin

    //INICIAL  = pStatus = 0;
    //INICIAR  = pStatus = 1;
    //PESQUISA = pStatus = 2;


    //Totalizadores           : vTipoRel = 0;
    //Compras                 : vTipoRel = 1;
    //Venda balcão            : vTipoRel = 2;
    //Serviços                : vTipoRel = 3;
    //Serviços - Produtos     : vTipoRel = 4;

    vTipoRel := rgTipoRelatorio.ItemIndex;

    if (pStatus = 0) then
      ComponentesLimpar else
    if (pStatus = 1) then
      ComponentesHab(vTipoRel) else
    if (pStatus = 2) then
      Desabilitar;
end;

procedure TfrmrelFaturamento.Desabilitar;
begin
  rgComprasStatus.Enabled := False;
  rgServicosStatus.Enabled := False;

  edtComprasCodFornecedor.Color := clInfoBk;
  edtComprasCodFornecedor.Enabled := False;
  edtComprasFornecedor.Color := clInfoBk;
  edtComprasFornecedor.Enabled := False;
  edtComprasNF.Color := clInfoBk;
  edtComprasNF.Enabled := False;
  edtComprasFechamento.Color := clInfoBk;
  edtComprasFechamento.Enabled := False;
  edtCodCliente.Enabled := False;
  edtCodCliente.Color := clInfoBk;
  edtCliente.Enabled := False;
  edtCliente.Color := clInfoBk;
  edtDtaServicos.Color := clInfoBk;
  edtDtaServicos.Enabled := False;
  edtServicosDtaAutorizacao.Color := clInfoBk;
  edtServicosDtaAutorizacao.Enabled := False;
  edtServicosDtaEntrega.Color := clInfoBk;
  edtServicosDtaEntrega.Enabled := False;
  edtServicosDtaDesistencia.Color := clInfoBk;
  edtServicosDtaDesistencia.Enabled := False;
  edtServicosDtaCancelamento.Color := clInfoBk;
  edtServicosDtaCancelamento.Enabled := False;
end;

procedure TfrmrelFaturamento.FormShow(Sender: TObject);
begin
  inherited;
    ControleTela(0);
end;

procedure TfrmrelFaturamento.rgTipoRelatorioClick(Sender: TObject);
begin
  inherited;
    ControleTela(1);
end;

procedure TfrmrelFaturamento.sbCancelarClick(Sender: TObject);
begin
  inherited;
    ControleTela(0);
end;

procedure TfrmrelFaturamento.sbIniciarClick(Sender: TObject);
begin
  inherited;
    ControleTela(1);
end;

procedure TfrmrelFaturamento.sbLimparFiltroClick(Sender: TObject);
begin
  inherited;
    ControleTela(0);
end;

procedure TfrmrelFaturamento.sbListarClick(Sender: TObject);
begin
  inherited;
    ControleTela(2);
end;

end.


