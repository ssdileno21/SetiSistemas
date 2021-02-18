unit uSetiUseful;

interface

uses
  Winsock, Forms, dbctrls, Dialogs, System.SysUtils, Windows, dbgrids, DB,
  Graphics, Classes, ComObj, ADODB, Variants, ComCtrls, DateUtils,Excel2000,
  Math,Grids, Types, Registry, Controls, StrUtils,IdBaseComponent, IdComponent,
  IdIPWatch, ShellAPI, DBClient, IniFiles, MIDASLIB, Messages, StdCtrls,
  Buttons, XMLIntf, XMLDoc, WordXP, System.UITypes, Vcl.Menus, Winapi.Imm,
  Vcl.ActnList, Winapi.MultiMon, System.HelpIntfs, Winapi.DwmApi, Vcl.Themes,
  Vcl.ExtCtrls, Datasnap.Provider, Data.SqlExpr, System.Character, IdHTTP,
  WinInet, uFSDialogs,

  uSetiConfig, uSetiConnects , uLocate, ufrmGetDate
  ;

  type
    TSetiUseFulRegister = class
    private
      FFileID : string;
    public
      Constructor Create;reintroduce;
      Destructor Destroy; override;
    protected
      function GetFileId : string;
      procedure SetFileId(Const Value : string);
      property qFileId : string read GetFileId write SetFileId;
  end;

  type
    TSetiUserFulDB = class(TProvider)
    private
      FConnects : TSetiConnects;
      property qConnects : TSetiConnects read FConnects write FConnects;
    public
      Constructor Create;
      Destructor Destroy;Virtual;
      procedure SetiUsefulDBFillDescById(IdField:TDBEdit;
                                DescField:TEdit;
                                TableName:string;
                                FieldIdName:string;
                                FieldDescName:string;
                                ClausulaAnd : string);
      procedure SetiUsefulDBFillDescById2(IdField:TEdit;
                                DescField:TEdit;
                                TableName:string;
                                FieldIdName:string;
                                FieldDescName:string);
      function GeneratorExists(GenName:string) : Boolean;
      function GetVlrUnitario(pProdutoId:Integer) : Double;
      function GetVlrUnitarioComDesc(pClienteId,pProdutoId:Integer) : Double;
      function GetDateSel(pType:Integer = 0) : string;
      function GetRota(pIdRota:Integer) : string;
      function GetSetor(pIdSetor:Integer) : string;
      function GetVlrTTVMPorRegiao(
                                    pRegiaoId:Integer;
                                    pDtIni : string;
                                    pDtFim : string;
                                    pRotaId : Integer;
                                    pSetorId : Integer
                                    ) : string;
      function GetParameterValue(
                                  pParamValueId : Integer = -1;
                                  pParamValueCodInterno : string = '';
                                  pReturnType : Integer = -1
                                  ) : Variant;
      function ExisteVendaNoPedido(pPedidoId:Integer) : Boolean;
      procedure GeneratorCancel(pName:string);
      function VendaManualExisteProdutoEstoque(pPedido_id:Integer) : Boolean;
    end;

  type
    TSetiUserFulSearching = class
      private
        FLocate : TLocate;
        FcLocate: TLocate;
        procedure SetcLocate(const Value: TLocate);
      public
        Constructor Create;
        Destructor Destroy;Virtual;
        function GetSearchingFieldKeyValue(pParamId:Integer) : Variant;
        function GetSearchingDataSet(pParamId:Integer) : TDataSet;
        function GetSearchingFieldValue(pParamId:Integer) : Variant;
        property cLocate : TLocate read FcLocate write SetcLocate;
    end;

  function fnTableInfor(pTableName:string;pFieldName:string; pReturn:
  Integer): Variant;

var
  tfArqIni  :TIniFile;
const
  QuebraLinha = #13+#10;
  SeparadorFonte = '|';
  cntArqIniLer         = 1;
  cntArqIniGravar      = 2;
  cntArqIniInicializar = 3;
  cntArqIniFinalizar   = 4;
  cntArqIniCriar       = 5;
  GreetingTimeMorning   = '00:01';
  GreetingTimeAfternoon = '12:01';
  GreetingTimeNight     = '18:01';

implementation

uses udmMasterDataModule;

function PermissionForm(FormName:string;TpSearch:Integer) : Boolean;
var
  vName : string;
begin
    Result := False;
    vName := UpperCase('Sconfig'+FormName);
    if (vName) = 'SCONFIGFRMCADCLIENTES' then
      Result := (SConfigFrmCadClientes = True);
    if (vName) = 'SCONFIGFRMCADCOMPRAS' then
      Result := (SConfigFrmCadCompras = True);
    if (vName) = 'SCONFIGFRMCADEMPRESA' then
      Result := (SConfigFrmCadEmpresa = True);
    if (vName) = 'SCONFIGFRMCADFORNECEDORES' then
      Result := (SConfigFrmCadFornecedores = True);
    if (vName) = 'SCONFIGFRMCADFUNCIONARIOS' then
      Result := (SConfigFrmCadFuncionarios = True);
    if (vName) = 'SCONFIGFRMCADORDEMSERVICOS' then
      Result := (SConfigFrmCadOrdemServicos = True);
    if (vName) = 'SCONFIGFRMCADPRODUTOS' then
      Result := (sConfigFrmCadProdutos = True);
    if (vName) = 'SCONFIGFRMCADPRODUTODEFEITO' then
      Result := (SConfigFrmCadProdutoDefeito = True);
    if (vName) = 'SCONFIGFRMCADPRODUTOMARCA' then
      Result := (SConfigFrmCadProdutoMarca = True);
    if (vName) = 'SCONFIGFRMCADPRODUTOMODELO' then
      Result := (SConfigFrmCadProdutoModelo = True);
    if (vName) = 'SCONFIGFRMCONTROLEVENDAMANUAL' then
      Result := (sConfigFrmControleVendaManual = True);
    if (vName) = 'SCONFIGFRMCADUSUARIOS' then
      Result := (SConfigFrmCadUsuarios = True);
    if (vName) = 'SCONFIGFATURAMENTOPAINEL' then
      Result := (SConfigFaturamentoPainel = True);
    if (vName) = 'SCONFIGFRMVENDAS' then
      Result := (SConfigVendas = True);
    if (vName) = 'SCONFIGFRMCADROTAS' then
      Result := (SConfigFrmCadRotas = True);
    if (vName) = 'SCONFIGFRMCADREGIOES' then
      Result := (SConfigFrmCadRegioes = True);
    if (vName) = 'SCONFIGFRMCADSETORES' then
      Result := (SConfigFrmCadSetores = True);
    if (vName) = 'SCONFIGFRMCADFORMAPAGTO' then
      Result := (sConfigfrmCadFormaPagto = True);
    if (vName) = 'SCONFIGREPVENDAMANUAL' then
      Result := (sConfigRepVendaManual = True);
    if (Result = False) and (TpSearch = 1) then
      SetiMens('Perfil sem acesso à esta tela! Gentileza entrar em contato '+
      'com o administrador do sistema, caso necessite modificar o seu perfil.'+
      '');

end;

function fnTableInfor(pTableName:string;pFieldName: string; pReturn:
Integer ): Variant;
var
  cReg : TSetiUseFulRegister;
begin
  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-FN-6');
  case pReturn of
    1 : Result := '';
    2 : Result := '';
    3 : Result := '';
    4 : Result := '';
    5 : Result := 'N';
    6 : Result := -1;
    7 : Result := '';
  end;
  try
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Result := dmMasterDataModule.fnTableInforDM
                                (
                                  pTableName,
                                  pFieldName,
                                  pReturn
                                );
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(e.Message,0);
  end;
end;

{ TSetiUseFulRegister }

constructor TSetiUseFulRegister.Create;
begin
//
end;

destructor TSetiUseFulRegister.Destroy;
begin
  //
  inherited;
end;

function TSetiUseFulRegister.GetFileId: string;
begin
    Result := FFileID;
end;

procedure TSetiUseFulRegister.SetFileId(const Value: string);
begin
    FFileID := UpperCase(Value);
end;

{ TSetiUserFulDB }

constructor TSetiUserFulDB.Create;
begin
  //
end;

destructor TSetiUserFulDB.Destroy;
begin
  //
end;

function TSetiUserFulDB.ExisteVendaNoPedido(pPedidoId:Integer): Boolean;
var
    vQry : TSQLQuery;
begin
  Result := False;
  try
    if (pPedidoId > 0) then
    begin
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1 VLRVENDA                ');
      vQry.SQL.Add('FROM tbvendamanual_itens               ');
      vQry.SQL.Add('WHERE ID_VENDAMANUAL = :ID_VENDAMANUAL ');
      vQry.SQL.Add('AND VLRVENDA > 0                       ');
      vQry.Params.ParamByName('ID_VENDAMANUAL').Value := pPedidoId;
      vQry.Open;
      Result := NOT (vQry.IsEmpty);
    end;
  finally
    qConnects := Nil;
    vQry := Nil;
  end;
end;

procedure TSetiUserFulDB.GeneratorCancel(pName: string);
var
    vQry : TSQLQuery;
    SetiSqlStoredProc: TSQLStoredProc;
begin
    if pName = '' then
      Exit;
    try
      pName := UpperCase(pName);
      if GeneratorExists(pName) then
      begin
        qConnects := TSetiConnects.Create;
        SetiSqlStoredProc := TSQLStoredProc.Create(Nil);
        SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD;
        SetiSqlStoredProc.StoredProcName := 'SP_GENERATOR_CANCEL';
        SetiSqlStoredProc.ParamByName('GEN_NAME').Value := pName;
        SetiSqlStoredProc.ExecProc;;
      end;
    finally
      if Assigned(SetiSqlStoredProc) then
        SetiSqlStoredProc := Nil;


    end;

end;

function TSetiUserFulDB.GeneratorExists(GenName: string): Boolean;
var
    vQry : TSQLQuery;
begin
  Result :=False;
  try
    if (GenName <> '') then
    begin
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1 RDB$GENERATOR_NAME ');
      vQry.SQL.Add('FROM RDB$GENERATORS G            ');
      vQry.SQL.Add('WHERE G.RDB$GENERATOR_NAME = '+QuotedStr(GenName));
      vQry.Open;
      Result := NOT (vQry.IsEmpty);
    end;
  finally
    qConnects := Nil;
    vQry := Nil;
  end;
end;

function TSetiUserFulDB.GetDateSel(pType: Integer): string;
begin
    Result := '';
    try
      if pType in [0,1,2,3,4,5] then
      begin
        frmGetDate := TfrmGetDate.Create(Nil);
        frmGetDate.SetqType(pType);
        if (frmGetDate.ShowModal = mrOk) then
        begin
            Result := frmGetDate.qResult;
        end;
      end;
    finally
      if Assigned(frmGetDate) then
        frmGetDate := Nil;
    end;
end;

function TSetiUserFulDB.GetParameterValue(pParamValueId : Integer;
pParamValueCodInterno : string; pReturnType : Integer): Variant;
var
    vQry : TSQLQuery;
    vFieldReturn : string;
begin
  Result := '';
  try
    if (pParamValueId > 0) or (pParamValueCodInterno <> '')
          and (pReturnType > -1) then
    begin
      if (pReturnType = 1) then
        vFieldReturn:= 'VALUESTR';
      if (pReturnType = 2) then
        vFieldReturn:= 'VALUEBINT';
      if (pReturnType = 3) then
        vFieldReturn:= 'VALUEINT';
      if (pReturnType = 4) then
        vFieldReturn:= 'VALUENUM';
      if (pReturnType = 5) then
        vFieldReturn:= 'VALUETIMEST';
      if (pReturnType > 5) then
        vFieldReturn:= 'VALUESTR';

      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1                         ');
      vQry.SQL.Add(vFieldReturn);
      vQry.SQL.Add('FROM TBPARAMETERS                      ');
      vQry.SQL.Add('WHERE 1 = 1                            ');
      if (pParamValueId > 0) then
      begin
        vQry.SQL.Add('AND ID = :ID                          ');
        vQry.Params.ParamByName('ID').Value := pParamValueId;
      end;
      if (pParamValueCodInterno <> '') then
      begin
        vQry.SQL.Add('AND INTERNALCODE = :INTERNALCODE      ');
        vQry.Params.ParamByName('INTERNALCODE').AsString :=
          pParamValueCodInterno;
      end;
      vQry.Open;
      if NOT (vQry.IsEmpty) then
        Result :=  vQry.FieldByName(vFieldReturn).Value;
    end;
  finally
    qConnects := Nil;
    vQry := Nil;
  end;
end;

function TSetiUserFulDB.GetRota(pIdRota: Integer): string;
var
    vQry : TSQLQuery;
begin
  Result := '';
  try
    if (pIdRota > 0) then
    begin
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1 DESCRICAO                ');
      vQry.SQL.Add('FROM TBCADROTAS R                       ');
      vQry.SQL.Add('AND R.ID =                              ');
      vQry.Params.ParamByName('ID').Value := pIdRota;
      vQry.Open;
      if NOT (vQry.IsEmpty) then
        Result :=  vQry.FieldByName('DESCRICAO').Value;
    end;
  finally
    qConnects := Nil;
    vQry := Nil;
  end;
end;

function TSetiUserFulDB.GetSetor(pIdSetor: Integer): string;
var
    vQry : TSQLQuery;
begin
  Result := '';
  try
    if (pIdSetor > 0) then
    begin
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1 DESCRICAO                ');
      vQry.SQL.Add('FROM TBCADSETORES S                     ');
      vQry.SQL.Add('AND S.ID =                              ');
      vQry.Params.ParamByName('ID').Value := pIdSetor;
      vQry.Open;
      if NOT (vQry.IsEmpty) then
        Result :=  vQry.FieldByName('DESCRICAO').Value;
    end;
  finally
    qConnects := Nil;
    vQry := Nil;
  end;
end;

function TSetiUserFulDB.GetVlrTTVMPorRegiao(pRegiaoId:Integer;pDtIni : string;
pDtFim : string; pRotaId : Integer; pSetorId : Integer) : string;
var
    vQry : TSQLQuery;
begin
  Result := '0.00';
  try
    qConnects := TSetiConnects.Create;
    vQry := TSQLQuery.Create(Nil);
    vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
    vQry.SQL.Add('SELECT * FROM SP_GET_REGIOES_INFOVENDAS ('+
                            ':ID_REGIAO,:DTINI,:DTFIM,:ID_ROTA,:ID_SETOR)');
    vQry.Params.ParamByName('ID_REGIAO').Value := pRegiaoId;
    vQry.Params.ParamByName('DTINI').Value := pDtIni;
    vQry.Params.ParamByName('DTFIM').Value := pDtFim;
    vQry.Params.ParamByName('ID_ROTA').Value := pRotaId;
    vQry.Params.ParamByName('ID_SETOR').Value := pSetorId;
    vQry.Open;
    if NOT (vQry.IsEmpty) then
      Result := formatfloat('#,##0.00',
        (vQry.FieldByName('TOTALPORREGIAO').Value));
  finally
    qConnects := Nil;
    vQry := Nil;
  end;
end;

function TSetiUserFulDB.GetVlrUnitario(pProdutoId:Integer): Double;
var
    vQry : TSQLQuery;
begin
  Result := 0.00;
  try
    if (pProdutoId > 0) then
    begin
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1 VLRVENDAUTILIZADO                      ');
      vQry.SQL.Add('FROM TBCADPRODUTOS P                                  ');
      vQry.SQL.Add('AND ID = '+IntToStr(pProdutoId));
      vQry.Open;
      if NOT (vQry.IsEmpty) then
        Result :=  vQry.FieldByName('VLRVENDAUTILIZADO').Value;
    end;
  finally
    qConnects := Nil;
    vQry := Nil;

  end;
end;

function TSetiUserFulDB.GetVlrUnitarioComDesc(pClienteId,pProdutoId: Integer):
Double;
var
    vQry : TSQLQuery;
begin
  Result := 0.00;
  try
    if (pClienteId > 0) and (pProdutoId > 0)then
    begin
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.SQL.Add('SELECT FIRST 1                          '+
                   '  VLRVENDAUTILIZADO,                    '+
                   '  VLRVENDAUTILIZADO -                   '+
                   '  (                                     '+
                   '    SELECT FIRST 1                      '+
                   '    CASE                                '+
                   '      WHEN P.vlrvendautilizado <        '+
                   '        C.vlrdescespecial THEN 0        '+
                   '    ELSE                                '+
                   'C.vlrdescespecial END                   '+
                   'FROM tbcadclientes C                    '+
                   'WHERE C.id = :ID_CLEINTE                '+
                   ') AS DESCONTOAPLICADO                   '+
                   'FROM TBCADPRODUTOS P                    '+
                   'WHERE P.ID = :ID_PROD                   ');
      vQry.Params.ParamByName('ID_PROD').Value := pProdutoId;
      vQry.Params.ParamByName('ID_CLEINTE').Value := pClienteId;
      if NOT (vQry.IsEmpty) then
        Result :=  vQry.FieldByName('DESCONTOAPLICADO').Value;
    end;
  finally
    qConnects := Nil;
    vQry := Nil;

  end;

end;

procedure TSetiUserFulDB.SetiUsefulDBFillDescById(IdField: TDBEdit;
  DescField: TEdit; TableName, FieldIdName, FieldDescName,
  ClausulaAnd : string);
var
    vQry : TSQLQuery;
begin
    try
      try
        if IdField.Text <> '' then
        begin
          try
            qConnects := TSetiConnects.Create;
            vQry := TSQLQuery.Create(Nil);
            vQry.SQLConnection :=
              qConnects.ConnectsFIREBIRD(False);
            vQry.SQL.Add('SELECT FIRST 1 '+FieldDescName+' ');
            vQry.SQL.Add('FROM '+TableName +' ');
            vQry.SQL.Add('WHERE '+FieldIdName+ ' = :ID ');
            if ClausulaAnd <> '' then
            begin
              vQry.SQL.Add(ClausulaAnd);
            end;
            vQry.Params.ParamByName('ID').Value := StrToInt(IdField.Text);
            vQry.Open;
            if NOT (vQry.IsEmpty) then
            begin
                DescField.Text := vQry.FieldByName(FieldDescName).Value;
            end else
            begin
              IdField.Clear;
              DescField.Clear;
            end;
          finally
            vQry := Nil;
            qConnects := Nil;
          end;
        end else
        begin
          IdField.Clear;
          DescField.Clear;
        end;
      finally

      end;
    except on e : exception do
      SetiMens(e.Message,0);
    end;
end;

procedure TSetiUserFulDB.SetiUsefulDBFillDescById2(IdField, DescField: TEdit;
  TableName, FieldIdName, FieldDescName: string);
var
    vQry : TSQLQuery;
begin
    try
      try
        if IdField.Text <> '' then
        begin
          try
            qConnects := TSetiConnects.Create;
            vQry := TSQLQuery.Create(Nil);
            vQry.SQLConnection :=
              qConnects.ConnectsFIREBIRD(False);
            vQry.SQL.Add('SELECT FIRST 1 '+FieldDescName+' ');
            vQry.SQL.Add('FROM '+TableName +' ');
            vQry.SQL.Add('WHERE '+FieldIdName+ ' = :ID ');
            vQry.Params.ParamByName('ID').Value := StrToInt(IdField.Text);
            vQry.Open;
            if NOT (vQry.IsEmpty) then
            begin
                DescField.Text := vQry.FieldByName(FieldDescName).Value;
            end else
            begin
              IdField.Clear;
              DescField.Clear;
            end;
          finally
            vQry := Nil;
            qConnects := Nil;
          end;
        end else
        begin
          IdField.Clear;
          DescField.Clear;
        end;
      finally

      end;
    except on e : exception do
      SetiMens(e.Message,0);
    end;

end;

function TSetiUserFulDB.VendaManualExisteProdutoEstoque(
  pPedido_id: Integer): Boolean;
var
    vQry : TSQLQuery;
begin
    Result := False;
    try
      if pPedido_id = 0 then
        Exit;
      qConnects := TSetiConnects.Create;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection :=
      qConnects.ConnectsFIREBIRD(False);
      vQry.SQL.Add('SELECT SUM(QTDESTOQUE) AS QTDESTOQUE    ');
      vQry.SQL.Add('FROM TBVENDAMANUAL_ESTOQUE E            ');
      vQry.SQL.Add('WHERE E.ID_VENDAMANUAL = :ID_VENDAMANUAL');
      vQry.Params.ParamByName('ID_VENDAMANUAL').Value := pPedido_id;
      vQry.Open;
      if NOT (vQry.IsEmpty) then
      begin
          Result := (vQry.FieldByName('QTDESTOQUE').AsInteger > 0);
      end;
    finally
      if Assigned(qConnects) then
        qConnects := Nil;
      if Assigned(vQry) then
        qConnects := Nil;
    end;
end;

{ TSetiUserFulSearching }

constructor TSetiUserFulSearching.Create;
begin
    try
      cLocate := TLocate.Create;
    finally

    end;
end;

destructor TSetiUserFulSearching.Destroy;
begin
    try
      if Assigned(cLocate) then
        cLocate.Free;
    finally

    end;
end;

function TSetiUserFulSearching.GetSearchingDataSet(pParamId: Integer): TDataSet;
begin
    try
      Result := Nil;
      if (pParamId >= 0) then
      begin
        if Assigned(cLocate) then
        begin
          cLocate.SearchingToLocate(pParamId);
          if (cLocate.qSearchingReturnType = 1) then
          begin
            if (cLocate <> NIL) then
              if Assigned(cLocate.qSearchingReturnDts) then
              begin
                Result := cLocate.qSearchingReturnDts;
              end;
          end;
        end
      end;
    finally

    end;
end;

function TSetiUserFulSearching.GetSearchingFieldKeyValue(pParamId:Integer):
Variant;
var
    vLocate : TLocate;
    vVar : Variant;
begin
    Result := -1;
    try
      if (pParamId >= 0) then
      begin
          vLocate := TLocate.Create;
          vLocate.SearchingToLocate(pParamId);
          if (vLocate <> NIL) then
            if (vLocate.qSearchingReturnType = 0) then
            begin
              vVar := VarToStr(vLocate.qSearchingReturnKeyFieldValue);
              if vVar <> '' then
                Result := vVar;
            end
      end;
    finally
      vLocate.Free;
    end;
end;

function TSetiUserFulSearching.GetSearchingFieldValue(
  pParamId: Integer): Variant;
var
    vLocate : TLocate;
    vVar : Variant;
begin
    Result := '';
    try
      if (pParamId >= 0) then
      begin
          vLocate := TLocate.Create;
          vLocate.SearchingToLocate(pParamId);
          if (vLocate <> NIL) then
            if (vLocate.qSearchingReturnType = 2) then
            begin
              vVar := VarToStr(vLocate.qSearchingReturnFieldValue);
              if vVar <> '' then
                Result := vVar;
            end
      end;
    finally
      vLocate.Free;
    end;

end;

procedure TSetiUserFulSearching.SetcLocate(const Value: TLocate);
begin
    FcLocate := Value;
end;

end.
