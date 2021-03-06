unit ufrmCadFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Data.DB, IBDatabase, DBXCommon,
  Midas, Datasnap.DBClient,Data.SqlExpr, System.Generics.Collections;

type
  TfrmCadFornecedores = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    dbgClientes: TDBGrid;
    Panel4: TPanel;
    sbAbrir: TSpeedButton;
    dsFornecedores: TDataSource;
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
    Label4: TLabel;
    dbeCodigo: TDBEdit;
    dbeNome: TDBEdit;
    dbcbxAtivo: TDBCheckBox;
    dbeEmail: TDBEdit;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    Image1: TImage;
    sbExcel: TSpeedButton;
    Label5: TLabel;
    dbeObservacao: TDBMemo;
    Label6: TLabel;
    dbeCep: TDBEdit;
    dbeLogradouro: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    dbeNum: TDBEdit;
    Label9: TLabel;
    dbeComp: TDBEdit;
    Label10: TLabel;
    dbeBairro: TDBEdit;
    Label11: TLabel;
    dbeCidade: TDBEdit;
    Label12: TLabel;
    dbeUf: TDBEdit;
    Label13: TLabel;
    dbeCpfCnpj: TDBEdit;
    dbrTipoCliente: TDBRadioGroup;
    dbeTelefone: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    dbeCelular: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure sbAbrirClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCelularKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCepKeyPress(Sender: TObject; var Key: Char);
    procedure sbExcelClick(Sender: TObject);
    procedure dbgClientesTitleClick(Column: TColumn);
  private
    { Private declarations }
    FStatus : string;
    FDsAux : TDataSource;
    function GetStatus : string;
    procedure SetStatus(Const Value : string);
    procedure ProviderFlags;
    function ValidaCampos : Boolean;
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
  property qDsAux : TDataSource read FDsAux write FDsAux;

  end;

var
  frmCadFornecedores: TfrmCadFornecedores;
  TD : TDBXTransaction;

const
      csQry = 'SELECT                   '+
              '   ID                    '+
              '   ,TIPOPESSOA           '+
              '   ,NOME                 '+
              '   ,EMAIL                '+
              '   ,NUMTELEFONE          '+
              '   ,NUMCELULAR           '+
              '   ,SITE                 '+
              '   ,LOGRADOUROCEP        '+
              '   ,LOGRADOURO           '+
              '   ,LOGRADOURONUM        '+
              '   ,LOGRADOUROCOMP       '+
              '   ,LOGRADOUROBAIRRO     '+
              '   ,LOGRADOUROUF         '+
              '   ,LOGRADOUROCIDADE     '+
              '   ,OBSERVACAO           '+
              '   ,DATCADASTRO          '+
              '   ,DATATUALIZACAO       '+
              '   ,STATUS               '+
              '   ,CPFCNPJ              '+
              '   ,DATULTMOVIMENTACAO   '+
              'FROM TBCADFORNECEDOR     ';
      csTable = 'TBCADFORNECEDOR';
      csGen = 'GEN_ID_FORNECEDOR';
      cdFieldKey_1 = 'ID';
      csArrayForGridQtd = 6;
      csArrayForGrid: array[1..csArrayForGridQtd] of string =
        (
          'ID',
          'NOME',
          'STATUS',
          'NUMTELEFONE',
          'NUMCELULAR',
          'EMAIL'
        );
implementation

{$R *.dfm}

uses udmMasterDataModule, uMess, uSetiConfig, udmGen, uSetiUseful;

procedure TfrmCadFornecedores.Criar;
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
                SQL.Add(csQry);
                dsFornecedores.DataSet := SetiCds;
               end
          end;
    finally

    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadFornecedores.dbeCelularKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TfrmCadFornecedores.dbeCepKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TfrmCadFornecedores.dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TfrmCadFornecedores.dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TfrmCadFornecedores.dbgClientesTitleClick(Column: TColumn);
begin
  SetiUsefulOrdenaGrid(dbgClientes,Column);
end;

procedure TfrmCadFornecedores.Deletar;
var
  vRec : Integer;
begin
    try
      if MessageDlg('Confirmar exclus�o do registro?',mtConfirmation,
      [mbYes,mbNo],0) = mrYes then
      begin
          dmMasterDataModule.SetiCds.Delete;
          dmMasterDataModule.SetiCds.ApplyUpdates(0);
          dmMasterDataModule.SetiCds.Refresh;
          SetiMens(1,'Registro exclu�do com sucesso.');
          vRec := dmMasterDataModule.SetiCds.RecordCount;
          if vRec > 0 then
            SetStatus('ABERTO') else
          SetStatus('INICIAL');
          CompControle;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadFornecedores.Editar;
begin
    try
      dbgClientes.DataSource := nil;
      dmMasterDataModule.SetiCds.Edit;
      SetStatus('UPDATE');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadFornecedores.FormCreate(Sender: TObject);
begin
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Criar;
      dmMasterDataModule.fnTableInforFS8F1(csTable);

    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadFornecedores.FormShow(Sender: TObject);
begin
    SetStatus('INICIAL');
    CompControle;
end;

function TfrmCadFornecedores.GetStatus: string;
begin
    Result := FStatus;
end;

procedure TfrmCadFornecedores.Gravar;
begin
    try
      try
        if NOT (ValidaCampos) then
          Exit;
        if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
        begin
          if (qStatus = 'INSERT') then
          begin
            if (dbcbxAtivo.Checked = True) then
              dmMasterDataModule.SetiCds.FieldByName('STATUS').Value := 'S' else
            dmMasterDataModule.SetiCds.FieldByName('STATUS').Value := 'N';
          end;
          if (dbrTipoCliente.ItemIndex = 0) then
            dmMasterDataModule.SetiCds.FieldByName('TIPOPESSOA').Value := 'F'
          else
            dmMasterDataModule.SetiCds.FieldByName('TIPOPESSOA').Value := 'J';

          dmMasterDataModule.SetiCds.Post;
          dmMasterDataModule.SetiCds.ApplyUpdates(0);
          if (qStatus = 'INSERT') then
            SetiMens(1,'Registro inserido com sucesso.') else
          if (qStatus = 'UPDATE') then
            SetiMens(1,'Registro atualizado com sucesso.');
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

procedure TfrmCadFornecedores.CompControle;
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

      sbExcel.Enabled := reg;

      for I := 0 to ComponentCount -1 do
      begin
        if iStatus = 0 then
        begin
          if Components[i] is TDBEdit then
            TDBEDIT(Components[i]).ReadOnly := True else
          if Components[i] is TMaskEdit then
            TMaskEdit(Components[i]).ReadOnly := True else
          if Components[i] is TDBRadioGroup then
            TDBRadioGroup(Components[i]).ReadOnly := True else
          if Components[i] is TDBMemo then
            TDBMemo(Components[i]).ReadOnly := True else
          if Components[i] is TDBComboBox then
            TDBComboBox(Components[i]).ReadOnly := True else
          if Components[i] is TDBLookupComboBox then
            TDBLookupComboBox(Components[i]).ReadOnly := True else
          if Components[i] is TDBCheckBox then
            TDBCheckBox(Components[i]).ReadOnly := True;
          if Components[i] is TMaskEdit then
          begin
            TMaskEdit(Components[i]).Clear;
            TMaskEdit(Components[i]).ReadOnly := True;
          end;
        end else
        if iStatus = 1 then
        begin
          if Components[i] is TDBEdit then
            TDBEDIT(Components[i]).ReadOnly := True else
          if Components[i] is TMaskEdit then
            TMaskEdit(Components[i]).ReadOnly := True else
          if Components[i] is TDBRadioGroup then
            TDBRadioGroup(Components[i]).ReadOnly := True else
          if Components[i] is TDBMemo then
            TDBMemo(Components[i]).ReadOnly := True else
          if Components[i] is TDBComboBox then
            TDBComboBox(Components[i]).ReadOnly := True else
          if Components[i] is TDBLookupComboBox then
            TDBLookupComboBox(Components[i]).ReadOnly := True else
          if Components[i] is TDBCheckBox then
            TDBCheckBox(Components[i]).ReadOnly := True;
          if Components[i] is TMaskEdit then
          begin
            TMaskEdit(Components[i]).Clear;
            TMaskEdit(Components[i]).ReadOnly := True;
          end;
        end else
        if iStatus = 2 then
        begin
          if Components[i] is TDBEdit then
            TDBEDIT(Components[i]).ReadOnly := True else
          if Components[i] is TMaskEdit then
            TMaskEdit(Components[i]).ReadOnly := True else
          if Components[i] is TDBRadioGroup then
            TDBRadioGroup(Components[i]).ReadOnly := True else
          if Components[i] is TDBMemo then
            TDBMemo(Components[i]).ReadOnly := True else
          if Components[i] is TDBComboBox then
            TDBComboBox(Components[i]).ReadOnly := True else
          if Components[i] is TDBLookupComboBox then
            TDBLookupComboBox(Components[i]).ReadOnly := True else
          if Components[i] is TDBCheckBox then
            TDBCheckBox(Components[i]).ReadOnly := True;
          if Components[i] is TMaskEdit then
          begin
            TMaskEdit(Components[i]).ReadOnly := True;
          end;
        end else
        if iStatus = 3 then
        begin
          if Components[i] is TDBEdit then
            TDBEDIT(Components[i]).ReadOnly := False else
          if Components[i] is TMaskEdit then
            TMaskEdit(Components[i]).ReadOnly := False else
          if Components[i] is TDBRadioGroup then
            TDBRadioGroup(Components[i]).ReadOnly := False else
          if Components[i] is TDBMemo then
            TDBMemo(Components[i]).ReadOnly := False else
          if Components[i] is TDBComboBox then
            TDBComboBox(Components[i]).ReadOnly := False else
          if Components[i] is TDBLookupComboBox then
            TDBLookupComboBox(Components[i]).ReadOnly := False else
          if Components[i] is TDBCheckBox then
            TDBCheckBox(Components[i]).ReadOnly := False;
          if Components[i] is TMaskEdit then
          begin
            TMaskEdit(Components[i]).ReadOnly := False;
          end;
        end else
        if iStatus = 4 then
        begin
          if Components[i] is TDBEdit then
            TDBEDIT(Components[i]).ReadOnly := False else
          if Components[i] is TMaskEdit then
            TMaskEdit(Components[i]).ReadOnly := False else
          if Components[i] is TDBRadioGroup then
            TDBRadioGroup(Components[i]).ReadOnly := False else
          if Components[i] is TDBMemo then
            TDBMemo(Components[i]).ReadOnly := False else
          if Components[i] is TDBComboBox then
            TDBComboBox(Components[i]).ReadOnly := False else
          if Components[i] is TDBLookupComboBox then
            TDBLookupComboBox(Components[i]).ReadOnly := False else
          if Components[i] is TDBCheckBox then
            TDBCheckBox(Components[i]).ReadOnly := False;
          if Components[i] is TMaskEdit then
          begin
            TMaskEdit(Components[i]).ReadOnly := False;
          end;
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
        dbgClientes.DataSource := qDsAux;
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
        dbgClientes.DataSource := qDsAux;
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
        dbgClientes.DataSource := dsFornecedores;
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
        dbgClientes.DataSource := qDsAux;
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
        dbgClientes.DataSource := qDsAux;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadFornecedores.Abrir;
var
  i : Integer;
begin
    try
      dmMasterDataModule.SetiCds.Open;
      if NOT (dmMasterDataModule.SetiCds.IsEmpty) then
      begin
        ProviderFlags;
        dbgClientes.DataSource := dsFornecedores;
        DBNavigator1.DataSource := dsFornecedores;
        SetStatus('ABERTO');
      end else
        SetStatus('INICIAL');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadFornecedores.Inserir;
begin
    try
      dmMasterDataModule.SetiCds.Open;
      dbgClientes.DataSource := nil;
      dmMasterDataModule.SetiCds.Append;
      dmGen := TdmGen.Create(Nil);
      dmMasterDataModule.SetiCds.FieldByName('ID').Value :=
        dmGen.ProximoId(csGen);
      dmGen.Free;
      dbcbxAtivo.Checked := True;
      dbrTipoCliente.ItemIndex := 0;
      SetStatus('INSERT');
      CompControle;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadFornecedores.ProviderFlags;
var
  i, i2 : Integer;
  vTab : string;
  vteste : Variant;
  vCont : Integer;
  vNameField : string;
  vNameArray : string;
  vval : Boolean;
begin
  vTab := csTable;
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

      if (SetiCds.Fields[i].FieldName = 'CNPJCPF') then
      begin
        if dbrTipoCliente.ItemIndex = 0 then
        begin
          TStringField(SetiCds.Fields[i]).EditMask := '000-000-000-00;1;_';
          TStringField(SetiCds.Fields[i]).DisplayWidth := 11;
        end else
        if dbrTipoCliente.ItemIndex = 1 then
        begin
          TStringField(SetiCds.Fields[i]).EditMask := '00-000-000/0000-00;1;_';
          TStringField(SetiCds.Fields[i]).DisplayWidth := 14;
        end;
      end;
      vCont := 0;
      vval := False;
      //VERIFICAR SE ESTA NO ARRAY
      for i2 := 1 to csArrayForGridQtd do
      begin
        vNameField := '';
        vNameArray := csArrayForGrid[i2];
        vNameField := SetiCds.Fields[i].FieldName;
        if (vNameField = vNameArray) then
        begin
          vval := True;
          SetiCds.Fields[i].Visible := True;
          if SetiCds.Fields[i].DataType = ftString then
            SetiCds.Fields[i].DisplayWidth := 20
          else
          begin
            SetiCds.Fields[i].DisplayWidth := 10;
          end;
          if SetiCds.Fields[i].FieldName = 'NOME' then
            SetiCds.Fields[i].DisplayWidth := 40;
          Break;
        end;
        vCont := vCont +1;
        if (vCont = csArrayForGridQtd)  then
        begin
          if (vval = False) then
            SetiCds.Fields[i].Visible := False;
          Break;
        end;
      end;
    end;
  end;
end;

procedure TfrmCadFornecedores.SetStatus(const Value: string);
begin
    FStatus := Value;
end;

procedure TfrmCadFornecedores.sbExcelClick(Sender: TObject);
begin
    SetiExpDataSet(2,dmMasterDataModule.SetiCds);
end;

function TfrmCadFornecedores.ValidaCampos : Boolean;
begin
    Result := False;
    try
      if (dbeNome.Text = '') then
      begin
        SetiMens(2,'Informa��o no campo nome � obrigat�rio');
        dbeNome.SetFocus;
        Exit;
      end;
      if (dbeCpfCnpj.Text = '') then
      begin
        SetiMens(2,'Informa��o no campo cpf/cnpj � obrigat�rio');
        dbeCpfCnpj.SetFocus;
        Exit;
      end;
      Result := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadFornecedores.sbAbrirClick(Sender: TObject);
begin
    Abrir;
end;

procedure TfrmCadFornecedores.sbCancelClick(Sender: TObject);
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

procedure TfrmCadFornecedores.sbDelClick(Sender: TObject);
begin
    Deletar;
end;

procedure TfrmCadFornecedores.sbInsertClick(Sender: TObject);
begin
    Inserir;
end;

procedure TfrmCadFornecedores.sbSaveClick(Sender: TObject);
begin
    Gravar;
end;

procedure TfrmCadFornecedores.sbUpdateClick(Sender: TObject);
begin
    Editar;
end;

end.
