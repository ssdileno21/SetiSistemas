unit ufrmFaturamentoPainel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr,
  uSetiConnects, Vcl.Mask, Datasnap.DBClient, Datasnap.Provider;

type
  TfrmFaturamentoPainel = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    lbDtIni: TLabel;
    lbDtFim: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    sbPesquisa: TSpeedButton;
    sbLimpa: TSpeedButton;
    sbSair: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtComprasB3QtdProdutos: TEdit;
    edtComprasB3VlrTotal: TEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    edtComprasB1QtdProdutos: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edtComprasB2QtdProdutos: TEdit;
    edtComprasB2VlrTotal: TEdit;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edtVendasB1QtdProdutos: TEdit;
    edtVendasB1VlrTotal: TEdit;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    edtVendasB2QtdProdutos: TEdit;
    edtVendasB2VlrTotal: TEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    edtVendasB3QtdProdutos: TEdit;
    edtVendasB3VlrTotal: TEdit;
    dbgVendas: TDBGrid;
    GroupBox8: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edtOSB6QtdServicos: TEdit;
    edtOSB6VlrTotal: TEdit;
    Label19: TLabel;
    edtOSB6QtdProdutos: TEdit;
    GroupBox9: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    edtOSB1QtdServicos: TEdit;
    edtOSB1VlrTotal: TEdit;
    edtOSB1QtdProdutos: TEdit;
    GroupBox10: TGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtOSB3QtdServicos: TEdit;
    edtOSB3VlrTotal: TEdit;
    edtOSB3QtdProdutos: TEdit;
    GroupBox11: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtOSB4QtdServicos: TEdit;
    edtOSB4VlrTotal: TEdit;
    edtOSB4QtdProdutos: TEdit;
    GroupBox12: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edtOSB5QtdServicos: TEdit;
    edtOSB5VlrTotal: TEdit;
    edtOSB5QtdProdutos: TEdit;
    GroupBox13: TGroupBox;
    dbgServicos: TDBGrid;
    GroupBox14: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edtOSB2QtdServicos: TEdit;
    edtOSB2VlrTotal: TEdit;
    edtOSB2QtdProdutos: TEdit;
    edtComprasB1VlrTotal: TEdit;
    DSVENDAS: TDataSource;
    DSOS: TDataSource;
    DSSAUX: TDataSource;
    sqlVendas: TSQLQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    sqlOS: TSQLQuery;
    dspOS: TDataSetProvider;
    cdsOS: TClientDataSet;
    procedure sbPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbLimpaClick(Sender: TObject);
    procedure sbSairClick(Sender: TObject);
  private
    { Private declarations }
    FConnects : TSetiConnects;
    procedure Controle(pStatus:Integer);
    procedure Pesquisa;
    procedure ListaDadosCompras;
    procedure ListaDadosVendas;
    procedure ListaDadosServicos;
    procedure PreencheGridVendas;
    procedure PreencheGridServicos;
    procedure ProviderFlag(pdataSet:TDataSet);
  public
    { Public declarations }
    property qConnects : TSetiConnects read FConnects write FConnects;
  end;

var
  frmFaturamentoPainel: TfrmFaturamentoPainel;

implementation

{$R *.dfm}

uses uSetiUseful, uMess;

{ TForm1 }

procedure TfrmFaturamentoPainel.Controle(pStatus: Integer);
var
  i : Integer;
  x : Integer;
begin
    //INICIAR  = pStatus = 0;
    //PESQUISA = pStatus = 1;
    for i := 0 to ComponentCount -1 do
    begin
      if Components[i].Tag <> 99 then
      begin
        if Components[i] is TEdit then
        begin
          TEdit(Components[i]).Enabled := False;
          if (pStatus = 0) then
          begin
            TEdit(Components[i]).Color := clSilver;
            TEdit(Components[i]).Clear;
          end else
          if (pStatus = 1) then
          begin
            TEdit(Components[i]).Clear;
            TEdit(Components[i]).Color := clInfoBk;
          end;
        end;
      end;
    end;
    if (pStatus = 0) then
    begin
      dtpIni.Enabled := True;
      dtpFim.Enabled := True;
      dtpIni.DateTime := Now;
      dtpFim.DateTime := Now;
      dbgVendas.DataSource := DSSAUX;
      dbgVendas.Color := clSilver;
      dbgServicos.DataSource := DSSAUX;
      dbgServicos.Color := clSilver;
    end else
    begin
      dtpIni.Enabled := False;
      dtpFim.Enabled := False;
      dbgVendas.Color := clInfoBk;
      dbgServicos.Color := clInfoBk;
    end;
end;

procedure TfrmFaturamentoPainel.FormShow(Sender: TObject);
begin
    Controle(0);
end;

procedure TfrmFaturamentoPainel.ListaDadosCompras;
var
  sql : TSQLQuery;
  vDtIni, vDtFim : string;
begin
      try
        vDtIni :=
          StringReplace(DateToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
        vDtFim :=
          StringReplace(DateToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT * FROM SP_FINANCEIRO_PAINEL_COMPRAS ');
        sql.sql.Add( ' ( ');
        sql.SQL.Add( ' '+QuotedStr(vDtIni) );
        sql.SQL.Add( ' ,'+QuotedStr(vDtFim) );
        sql.sql.Add( ' ) ');
        sql.Open;
        if not sql.IsEmpty then
        begin
          edtComprasB1VlrTotal.Text :=
            sql.FieldByName('VLRTOTALCOMPRAS_').AsString;
          edtComprasB1QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOS_').AsString;
          edtComprasB2VlrTotal.Text :=
            sql.FieldByName('VLRTOTALCOMPRASFECHADAS_').AsString;
          edtComprasB2QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSFECHADOS_').AsString;
          edtComprasB3VlrTotal.Text :=
            sql.FieldByName('VLRTOTALCOMPRASABERTAS_').AsString;
          edtComprasB3QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSABERTOS_').AsString;
        end;
      finally
        sql.Free;
        qConnects.Free;
        edtComprasB1VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtComprasB1VlrTotal.Text),0),ffNumber,2);
        edtComprasB2VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtComprasB2VlrTotal.Text),0),ffNumber,2);
        edtComprasB3VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtComprasB3VlrTotal.Text),0),ffNumber,2);
      end;
end;

procedure TfrmFaturamentoPainel.ListaDadosServicos;
var
  sql : TSQLQuery;
  vDtIni, vDtFim : string;
begin
      try
        vDtIni :=
          StringReplace(DateToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
        vDtFim :=
          StringReplace(DateToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT * FROM SP_FINANCEIRO_PAINEL_OS ');
        sql.sql.Add( ' ( ');
        sql.SQL.Add( ' '+QuotedStr(vDtIni) );
        sql.SQL.Add( ' ,'+QuotedStr(vDtFim) );
        sql.sql.Add( ' ) ');
        sql.Open;
        if not sql.IsEmpty then
        begin
          edtOSB1VlrTotal.Text :=
            sql.FieldByName('VLRTOTALOS_').AsString;
          edtOSB1QtdServicos.Text :=
            sql.FieldByName('TOTALSERVICOS_').AsString;
          edtOSB1QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOS_').AsString;

          edtOSB2VlrTotal.Text :=
            sql.FieldByName('VLRTOTALOSPENDENTES_').AsString;
          edtOSB2QtdServicos.Text :=
            sql.FieldByName('TOTALSERVICOSPENDENTES_').AsString;
          edtOSB2QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSPENDENTES_').AsString;

          edtOSB3VlrTotal.Text :=
            sql.FieldByName('VLRTOTALOSAUTORIZADAS_').AsString;
          edtOSB3QtdServicos.Text :=
            sql.FieldByName('TOTALSERVICOSAUTORIZADOS_').AsString;
          edtOSB3QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSAUTORIZADOS_').AsString;

          edtOSB4VlrTotal.Text :=
            sql.FieldByName('VLRTOTALOSENTREGUES_').AsString;
          edtOSB5QtdServicos.Text :=
            sql.FieldByName('TOTALSERVICOSENTREGUES_').AsString;
          edtOSB4QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSENTREGUES_').AsString;

          edtOSB5VlrTotal.Text :=
            sql.FieldByName('VLRTOTALOSNAUTOUCANC_').AsString;
          edtOSB5QtdServicos.Text :=
            sql.FieldByName('TOTALSERVICOSNAUTOUCANC_').AsString;
          edtOSB5QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSNAUTOUCANC_').AsString;

          edtOSB6VlrTotal.Text :=
            sql.FieldByName('VLRTOTALOSPAGAS_').AsString;
          edtOSB6QtdServicos.Text :=
            sql.FieldByName('TOTALSERVICOSPAGOS_').AsString;
          edtOSB6QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSPAGOS_').AsString;
        end;
      finally
        sql.Free;
        qConnects.Free;
        edtOSB1VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtOSB1VlrTotal.Text),0),ffNumber,2);
        edtOSB2VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtOSB2VlrTotal.Text),0),ffNumber,2);
        edtOSB3VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtOSB3VlrTotal.Text),0),ffNumber,2);
        edtOSB4VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtOSB4VlrTotal.Text),0),ffNumber,2);
        edtOSB5VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtOSB5VlrTotal.Text),0),ffNumber,2);
        edtOSB6VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtOSB6VlrTotal.Text),0),ffNumber,2);
      end;
end;

procedure TfrmFaturamentoPainel.ListaDadosVendas;
var
  sql : TSQLQuery;
  vDtIni, vDtFim : string;
begin
      try
        vDtIni :=
          StringReplace(DateToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
        vDtFim :=
          StringReplace(DateToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT * FROM SP_FINANCEIRO_PAINEL_VENDAS ');
        sql.sql.Add( ' ( ');
        sql.SQL.Add( ' '+QuotedStr(vDtIni) );
        sql.SQL.Add( ' ,'+QuotedStr(vDtFim) );
        sql.sql.Add( ' ) ');
        sql.Open;
        if not sql.IsEmpty then
        begin
          edtVendasB1VlrTotal.Text :=
            sql.FieldByName('VLRTOTALVENDAS_').AsString;
          edtVendasB1QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOS_').AsString;
          edtVendasB2VlrTotal.Text :=
            sql.FieldByName('VLRTOTALVENDASFINALIZADAS_').AsString;
          edtVendasB2QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSFINALIZADOS_').AsString;
          edtVendasB3VlrTotal.Text :=
            sql.FieldByName('VLRTOTALVENDASCANCELADOS_').AsString;
          edtVendasB3QtdProdutos.Text :=
            sql.FieldByName('TOTALPRODUTOSCANCELADOS_').AsString;
        end;
      finally
        sql.Free;
        qConnects.Free;
        edtVendasB1VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtVendasB1VlrTotal.Text),0),ffNumber,2);
        edtVendasB2VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtVendasB2VlrTotal.Text),0),ffNumber,2);
        edtVendasB3VlrTotal.Text := CurrToStrF(
          StrToCurrDef(Trim(edtVendasB3VlrTotal.Text),0),ffNumber,2);
      end;

end;

procedure TfrmFaturamentoPainel.Pesquisa;
begin
  if (SetiUseFulSetiValidatePeriod(dtpIni.DateTime,dtpFim.DateTime)) then
  begin
    ListaDadosCompras;
    ListaDadosVendas;
    ListaDadosServicos;
    PreencheGridServicos;
    PreencheGridVendas;
  end else
  begin
    SetiMens(2,'Per�odo selecionado � inv�lido.');
    Exit;
  end;
end;

procedure TfrmFaturamentoPainel.PreencheGridServicos;
var
    vDtIni, vDtFim : string;
begin
    {  try
        vDtIni :=
          StringReplace(DateToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
        vDtFim :=
          StringReplace(DateToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
        qConnects := TSetiConnects.Create;
        sqlOS := TSQLQuery.Create(Nil);
        sqlOS.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sqlOS.sql.Add( ' SELECT ID_FORMAPAGTO_, DESCRICAO_, VLRTOTALOS_  FROM SP_FINANCEIRO_PAINEL_OS_TP ');
        sqlOS.sql.Add( ' ( ');
        sqlOS.SQL.Add( ' '+QuotedStr(vDtIni) );
        sqlOS.SQL.Add( ' ,'+QuotedStr(vDtFim) );
        sqlOS.sql.Add( ' ) ');
        cdsos.Open;
        if NOT cdsOS.IsEmpty then
        begin
          dbgServicos.DataSource := DSOS;
        end else
          dbgServicos.DataSource := DSSAUX;
      finally

      end;}
    try
      dbgServicos.DataSource := DSOS;
      vDtIni :=
        StringReplace(DateToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
      vDtFim :=
        StringReplace(DateToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
      qConnects := TSetiConnects.Create;
      sqlOS.Close;
      sqlOS.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlOS.SQL.Clear;
      sqlOS.SQL.Add( '    SELECT                                               ');
      sqlOS.SQL.Add( '    O.id_formapagto                                      ');
      sqlOS.SQL.Add( '    ,FP.descricao                                        ');
      sqlOS.SQL.Add( '    ,SUM(COALESCE(O.vlrtotal_os,0.00)) AS VLRTOTALOS     ');
      sqlOS.SQL.Add( '    FROM tbos O                                          ');
      sqlOS.SQL.Add( '    LEFT JOIN tbformapagto FP ON O.id_formapagto = FP.id ');
      sqlOS.SQL.Add( '    WHERE O.dta_os BETWEEN '+QuotedStr(vDtIni));
      sqlOS.SQL.Add( '    AND '+QuotedStr(vDtFim));
      sqlOS.SQL.Add( '    AND O.dta_os IS NOT NULL AND O.status = ''F''        ');
      sqlOS.SQL.Add( '    AND O.dtacancelamento IS NULL                        ');
      sqlOS.SQL.Add( '    AND O.dtanaoautorizacao IS NULL                      ');
      sqlOS.SQL.Add( '    GROUP BY O.id_formapagto, FP.descricao               ');
      cdsOS.Close;
      cdsOS.FetchParams;
      cdsOS.Open;
        if NOT cdsOS.IsEmpty then
        begin
          dbgServicos.DataSource := DSOS;
          ProviderFlag(cdsOS);
        end else
          dbgServicos.DataSource := DSSAUX;
    finally
      qConnects.Free;
    end;
end;

procedure TfrmFaturamentoPainel.PreencheGridVendas;
var
    vDtIni, vDtFim : string;
begin
    try
      dbgVendas.DataSource := DSVENDAS;
      vDtIni :=
        StringReplace(DateToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
      vDtFim :=
        StringReplace(DateToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
      qConnects := TSetiConnects.Create;
      sqlVendas.Close;
      sqlVendas.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlVendas.SQL.Clear;
      sqlVendas.SQL.Add( '    SELECT                                                    ');
      sqlVendas.SQL.Add( '    V.id_formapagto                                           ');
      sqlVendas.SQL.Add( '    ,FP.descricao                                             ');
      sqlVendas.SQL.Add( '    ,SUM(COALESCE(V.vlr_total_final,0.00)) AS VLRTOTALVENDAS  ');
      sqlVendas.SQL.Add( '    FROM tbvendas V                                           ');
      sqlVendas.SQL.Add( '    LEFT JOIN tbformapagto FP ON V.id_formapagto = FP.id      ');
      sqlVendas.SQL.Add( '    WHERE V.dtavenda BETWEEN '+QuotedStr(vDtIni)               );
      sqlVendas.SQL.Add( '    AND '+QuotedStr(vDtFim)                                    );
      sqlVendas.SQL.Add( '    AND V.dtacancelamento IS NULL                             ');
      sqlVendas.SQL.Add( '    GROUP BY V.id_formapagto, FP.descricao                    ');
      cdsVendas.Close;
      cdsVendas.FetchParams;
      cdsVendas.Open;
        if NOT cdsVendas.IsEmpty then
        begin
          dbgVendas.DataSource := DSVENDAS;
          ProviderFlag(cdsVendas);
        end else
          dbgVendas.DataSource := DSSAUX;
    finally
      qConnects.Free;
    end;
end;

procedure TfrmFaturamentoPainel.ProviderFlag(pdataSet: TDataSet);
begin
    try
      if pdataSet = cdsOS then
      begin
        with cdsOS do
        begin
          FieldByName('id_formapagto').Visible := False;
          FieldByName('descricao').DisplayLabel := 'Forma Pagto.';
          FieldByName('VLRTOTALOS').DisplayLabel := 'Vlr.Total Pago';

          FieldByName('descricao').DisplayWidth := 30;
          FieldByName('VLRTOTALOS').DisplayWidth := 10;
          FieldByName('VLRTOTALOS').CurValue;
        end;
      end else
      if pdataSet = cdsVendas then
      begin
        with cdsVendas do
        begin
          FieldByName('id_formapagto').Visible := False;
          FieldByName('descricao').DisplayLabel := 'Forma Pagto.';
          FieldByName('VLRTOTALVENDAS').DisplayLabel := 'Vlr.Total Vendas';

          FieldByName('descricao').DisplayWidth := 30;
          FieldByName('VLRTOTALVENDAS').DisplayWidth := 10;
          FieldByName('VLRTOTALVENDAS').CurValue;
        end;
      end else

    finally

    end;
end;

procedure TfrmFaturamentoPainel.sbLimpaClick(Sender: TObject);
begin
    Controle(0);
end;

procedure TfrmFaturamentoPainel.sbPesquisaClick(Sender: TObject);
begin
    Controle(1);
    Pesquisa;
end;

procedure TfrmFaturamentoPainel.sbSairClick(Sender: TObject);
begin
    Close;
end;

end.
