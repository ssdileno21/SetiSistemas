unit ufrmControleEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Data.DB, IBDatabase, DBXCommon,
  Midas, Datasnap.DBClient;

type
  TfrmControleEstoque = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    dbgProducts: TDBGrid;
    Panel4: TPanel;
    sbAbrir: TSpeedButton;
    dsProducts: TDataSource;
    sbInsert: TSpeedButton;
    sbUpdate: TSpeedButton;
    sbDel: TSpeedButton;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeCodigo: TDBEdit;
    dbeNome: TDBEdit;
    dbcbxAtivo: TDBCheckBox;
    dbeCodInterno: TDBEdit;
    dbeCodigoBarras: TDBEdit;
    dbmDescricao: TDBMemo;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    dbeVlrCusto: TDBEdit;
    dbeVlrDespesas: TDBEdit;
    dbeVlrOutrasDespesas: TDBEdit;
    dbeVlrCustoFinal: TDBEdit;
    dbePercLucroRequerido: TDBEdit;
    dbeVlrVendaSugerido: TDBEdit;
    dbeVlrVendaUtilizado: TDBEdit;
    dbePercComissao: TDBEdit;
    TabSheet3: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    dbePeso: TDBEdit;
    dbeLargura: TDBEdit;
    dbeAltura: TDBEdit;
    dbeCumprimento: TDBEdit;
    dbeUnidadeVendaUtilizada: TDBEdit;
    TabSheet4: TTabSheet;
    Label19: TLabel;
    dbcbxMovEstoque: TDBCheckBox;
    dbcbxAlteraPrecoDurantVenda: TDBCheckBox;
    dbeEstoqueInicial: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sbAbrirClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure dbeVlrCustoExit(Sender: TObject);
    procedure dbeVlrDespesasExit(Sender: TObject);
    procedure dbeVlrOutrasDespesasExit(Sender: TObject);
    procedure dbeVlrCustoFinalChange(Sender: TObject);
    procedure dbeVlrVendaSugeridoChange(Sender: TObject);
    procedure dbeVlrVendaUtilizadoExit(Sender: TObject);
  private
    { Private declarations }
    FStatus : string;
    function GetStatus : string;
    procedure SetStatus(Const Value : string);
    procedure ProviderFlags;
    procedure FormataValorDbedit(pDbEdit:TDBEdit);
  public
    { Public declarations }
    procedure Abrir;
    procedure Inserir;
    procedure Editar;
    procedure Deletar;
    procedure Gravar;
    procedure CompControle;
    procedure Criar;
  property qStatus : string read GetStatus write SetStatus;

  end;

var
  frmControleEstoque: TfrmControleEstoque;
  TD : TDBXTransaction;

implementation

{$R *.dfm}

uses udmMasterDataModule, uMess, uSetiConfig, udmGen, uSetiUseful;

procedure TfrmControleEstoque.Criar;
var
  i : Integer;
begin
    try
      try
          with (dmMasterDataModule) do
          begin
              UseComponentsDmSeti(1);
              with (SetiSqlQuery) do
               begin
                //SQL.Add('SELECT * FROM TBCADPRODUTOS  ');
                SQL.Add('SELECT                       ');
                SQL.Add('       ID                    ');
                SQL.Add('      ,NOME                  ');
                SQL.Add('      ,CODIGOINTERNO         ');
                SQL.Add('      ,IDFORNECEDOR          ');
                SQL.Add('      ,IDPRODUTOGRUPO        ');
                SQL.Add('      ,IDPRODUTOSUBGRUPO     ');
                SQL.Add('      ,CODIGOBARRAS          ');
                SQL.Add('      ,IDPRODUTOMARCA        ');
                SQL.Add('      ,IDPRODUTOMODELO       ');
                SQL.Add('      ,DESCRICAO             ');
                SQL.Add('      ,VLRCUSTO              ');
                SQL.Add('      ,VLRDESPESAS           ');
                SQL.Add('      ,VLRDESPESASOUTROS     ');
                SQL.Add('      ,VLRCUSTOFINAL         ');
                SQL.Add('      ,VLRLUCROREQUERIDO     ');
                SQL.Add('      ,VLRVENDASUGERIDO      ');
                SQL.Add('      ,VLRVENDAUTILIZADO     ');
                SQL.Add('      ,PESO                  ');
                SQL.Add('      ,LARGURA               ');
                SQL.Add('      ,ALTURA                ');
                SQL.Add('      ,COMPRIMENTO           ');
                SQL.Add('      ,COMISSAO              ');
                SQL.Add('      ,UNIDADEVENDA          ');
                SQL.Add('      ,STATUS                ');
                SQL.Add('      ,MOVIMENTAESTOQUE      ');
                SQL.Add('      ,ALTERAPRECONAVENDA    ');
                SQL.Add('      ,QTDESTOQUEINICIAL     ');
                SQL.Add('FROM TBCADPRODUTOS           ');
                dsProducts.DataSet := SetiCds;
               end
          end;
    finally

    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmControleEstoque.dbeVlrCustoExit(Sender: TObject);
begin
  FormataValorDbedit(dbeVlrCusto);
end;

procedure TfrmControleEstoque.dbeVlrCustoFinalChange(Sender: TObject);
begin
  FormataValorDbedit(dbeVlrCustoFinal);
end;

procedure TfrmControleEstoque.dbeVlrDespesasExit(Sender: TObject);
begin
  FormataValorDbedit(dbeVlrDespesas);
end;

procedure TfrmControleEstoque.dbeVlrOutrasDespesasExit(Sender: TObject);
begin
  FormataValorDbedit(dbeVlrOutrasDespesas);
end;

procedure TfrmControleEstoque.dbeVlrVendaSugeridoChange(Sender: TObject);
begin
  FormataValorDbedit(dbeVlrVendaSugerido);
end;

procedure TfrmControleEstoque.dbeVlrVendaUtilizadoExit(Sender: TObject);
begin
  FormataValorDbedit(dbeVlrVendaUtilizado);
end;

procedure TfrmControleEstoque.Deletar;
begin
    try
      if MessageDlg('Confirmar exclus�o do registro?',mtConfirmation,
      [mbYes,mbNo],0) = mrYes then
      begin
          dmMasterDataModule.SetiCds.Delete;
          dmMasterDataModule.SetiCds.ApplyUpdates(0);
          dmMasterDataModule.SetiCds.Refresh;
          SetiMens(1,'Registro exclu�do com sucesso.');
          SetStatus('ABERTO');
          CompControle;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.Editar;
begin
    try
      dbgProducts.DataSource := nil;
      dmMasterDataModule.SetiCds.Edit;
      SetStatus('UPDATE');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.FormataValorDbedit(pDbEdit: TDBEdit);
begin
    {TDBEdit(pDbEdit).Text := FormatFloat('R$ ###,##0.00',
    StrToFloatDef(TDBEdit(pDbEdit).Text,0));}
end;

procedure TfrmControleEstoque.FormCreate(Sender: TObject);
begin
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Criar;
      dmMasterDataModule.fnTableInforFS8F1('TBCADPRODUTOS');

    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.FormShow(Sender: TObject);
begin
    SetStatus('INICIAL');
    CompControle;
end;

function TfrmControleEstoque.GetStatus: string;
begin
    Result := FStatus;
end;

procedure TfrmControleEstoque.Gravar;
begin
    try
      if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
      begin
        if qStatus = 'INSERT' then
        begin
          dmMasterDataModule.SetiCds.FieldByName('ID').AsInteger :=
            dmGen.ProximoId('GEN_ID_PRODUTO');
        end;
        if dbeNome.Text = '' then
        begin
          SetiMens(1,'Nome n�o informado.');
          Exit;
        end;

      end;

    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.CompControle;
var
  iStatus : Integer;
  reg : Boolean;
  i : Integer;
begin
    try
      if (dmMasterDataModule.SetiCds.IsEmpty) then
        reg := False else reg := True;
      if (qStatus = 'INICIAL') then iStatus := 1 else
      if (qStatus = 'ABERTO') then iStatus := 2 else
      if (qStatus = 'INSERT') then iStatus := 3 else
      if (qStatus = 'UPDATE') then iStatus := 4;
      if (iStatus in [2]) and (reg = False) then iStatus := 0;

      for I := 0 to ComponentCount -1 do
      begin
        if Components[i] is TDBEdit then
        begin
          if iStatus = 0 then
            TDBEDIT(Components[i]).ReadOnly := True else
          if iStatus = 1 then
            TDBEDIT(Components[i]).ReadOnly := True else
          if iStatus = 2 then
            TDBEDIT(Components[i]).ReadOnly := True else
          if iStatus = 3 then
            TDBEDIT(Components[i]).ReadOnly := False else
          if iStatus = 4 then
            TDBEDIT(Components[i]).ReadOnly := False else
        end;
      end;

      if (iStatus in [0]) then  //INICIAL - SEM REGISTRO
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := True;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := False;
        sbCancel.Enabled := True;
        PageControl1.ActivePageIndex := 0;
        DBNavigator1.Enabled := False;
      end else
      if (iStatus in [1]) then  //INICIAL
      begin
        sbAbrir.Enabled := True;
        sbInsert.Enabled := True;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := False;
        sbCancel.Enabled := False;
        PageControl1.ActivePageIndex := 0;
        DBNavigator1.Enabled := False;
      end else
      if (iStatus in [2]) then //ABERTO
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := True;
        sbUpdate.Enabled := True;
        sbDel.Enabled := True;
        sbSave.Enabled := False;
        sbCancel.Enabled := True;
        DBNavigator1.Enabled := True;
      end else
      if (iStatus in [3]) then //INSERT
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := False;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := True;
        sbCancel.Enabled := True;
        DBNavigator1.Enabled := False;
        PageControl1.ActivePageIndex := 0;
        dbeNome.SetFocus;
      end else
      if (iStatus in [4]) then //UPDATE
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := False;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := True;
        sbCancel.Enabled := True;
        DBNavigator1.Enabled := False;
        PageControl1.ActivePageIndex := 0;
        dbeNome.SetFocus;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.Abrir;
var
  i : Integer;
begin
    try
      dmMasterDataModule.SetiCds.Open;
      ProviderFlags;
      dbgProducts.DataSource := dsProducts;
      DBNavigator1.DataSource := dsProducts;
      SetStatus('ABERTO');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmControleEstoque.Inserir;
begin
    try
      dmMasterDataModule.SetiCds.Open;
      dbgProducts.DataSource := nil;
      dmMasterDataModule.SetiCds.Append;
      dmGen := TdmGen.Create(Nil);
      dmMasterDataModule.SetiCds.FieldByName('ID').Value :=
        dmGen.ProximoId('GEN_ID_PRODUTO');
      dmGen.Free;
      dbcbxAtivo.Checked := True;

      SetStatus('INSERT');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.ProviderFlags;
var
  i : Integer;
  vTab : string;
  vteste : Variant;
begin
  vTab := 'TBCADPRODUTOS';
  with (dmMasterDataModule) do
  begin
    for I := 0 to Pred(SetiCds.FieldCount) do
    begin
      //RETORNAR CAPTION
      SetiCds.Fields[i].DisplayLabel :=
        fnTableInforFS8F1(vTab,SetiCds.Fields[i].FieldName,3);
      if (SetiCds.Fields[i].DataType = ftSingle) then //FLOAT
        TFloatField(SetiCds.Fields[i]).DisplayFormat := '#,##0.00';
      if (SetiCds.Fields[i].DataType = ftFMTBcd) then //NUMERIC(15,2)
        TFloatField(SetiCds.Fields[i]).currency := True;

      SetiCds.Fields[i].DisplayWidth := 10;

    end;
  end;
end;

procedure TfrmControleEstoque.SetStatus(const Value: string);
begin
    FStatus := Value;
end;

procedure TfrmControleEstoque.sbAbrirClick(Sender: TObject);
begin
    try
      Abrir;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.sbCancelClick(Sender: TObject);
begin
    try
      dmMasterDataModule.SetiCds.Cancel;
      dmMasterDataModule.SetiCds.Close;
      SetStatus('INICIAL');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.sbDelClick(Sender: TObject);
begin
    try
      Deletar;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.sbInsertClick(Sender: TObject);
begin
    try
      Inserir;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.sbSaveClick(Sender: TObject);
begin
    try
      try
        if (dbeNome.Text = '') then
        begin
          SetiMens(2,'Informa��o no campo nome � obrigat�rio');
          dbeNome.SetFocus;
          Exit;
        end;
        if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
        begin
          if (qStatus = 'INSERT') then
          begin
            if (dbcbxAtivo.Checked = True) then
              dmMasterDataModule.SetiCds.FieldByName('STATUS').Value := 'S' else
            dmMasterDataModule.SetiCds.FieldByName('STATUS').Value := 'N';
          end;
          dmMasterDataModule.SetiCds.Post;
          dmMasterDataModule.SetiCds.ApplyUpdates(0);
          SetiMens(1,'Procedimento conclu�do');
          dmMasterDataModule.SetiCds.Close;
        end;
        SetStatus('INICIAL');
        CompControle;
      finally

      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmControleEstoque.sbUpdateClick(Sender: TObject);
begin
    try
      Editar;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

end.