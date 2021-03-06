{ID: F1; | CODIGO: FS4-F1}

unit uMasterDao;

interface

uses SysUtils, SqlExpr, ADODB, DB, Provider, DBClient, DBGrids,
System.Variants, Dialogs,
//Classes
uMess, uSetiConfig, uSetiConnects,
//DataModule
udmMasterDataModule, udmGen
;

  type TMasterDao = class(TProvider)
    private
      FFileID : string;
      FCdsScreening : TClientDataSet;
      FOperationType : Integer; // 1:INSERT; 2:UPDATE; 3:DELETE; 4:CANCEL
      FTableName : string;
      //Get and Set
      function GetFileId : string;
      procedure SetFileId(Const Value : string);
      property qFileId : string read GetFileId write SetFileId;
      //Other methods
      function fnScreeningFilter(pFieldName:string='') : Boolean;
      function fnGetFieldName : string;
      function fnGetFieldType : string;
      function fnGetFieldGenName : string;
      function fnGetFieldDefault : Boolean;
      function fnGetFieldUseGen : Boolean;
    public
        Constructor Create;reintroduce;
        Destructor Destroy; override;
        function SFD1Save : Boolean;
        function SFD1Cancel : Boolean;
        function SFD1Insert : Boolean;
        function SFD1Update : Boolean;
        function SFD1Delete : Boolean;
        //Get and Set
        function SFD1GetTableName : string;
        procedure SFD1SetTableName(Const Value: string);
        function SFD1GetOperationType : Integer;
        procedure SFD1SetOperationType(Const Value:Integer);
        //Other methods
        {FS4-F1-PU-FN-1}
        function fnFillCdsScreeningFSUF1(pDataSet:TDataSet) : Boolean;
        //Property
        property SFD1qCdsScreening : TClientDataSet read FCdsScreening write
          FCdsScreening;
        property SFD1qOperationType : Integer read SFD1GetOperationType write
          SFD1SetOperationType;
        property SFD1qTableName : string read SFD1GetTableName write
          SFD1SetTableName;

  end;

implementation

{ TEmpresasDao }

procedure TMasterDao.SetFileId(const Value: string);
begin
    FFileID := Value;
end;

function TMasterDao.SFD1Cancel: Boolean;
begin
  try
    Result := False;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

constructor TMasterDao.Create;
begin
    try
      SFD1qCdsScreening  := TClientDataSet.Create(Self);
      SFD1qCdsScreening.Close;
      SFD1qCdsScreening.FieldDefs.Clear;
      SFD1qCdsScreening.FieldDefs.Add('ID',ftInteger);
      SFD1qCdsScreening.FieldDefs.Add('TABLENAME',ftString,50);
      SFD1qCdsScreening.FieldDefs.Add('FIELDNAME',ftString,50);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_STR',ftString,255);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_INT',ftInteger);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_FLO',ftFloat);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_TIM',ftDateTime);
      SFD1qCdsScreening.FieldDefs.Add('FIELD_GEN',ftString,1);
      SFD1qCdsScreening.FieldDefs.Add('FIELD_GEN_NAME',ftString,50);
      SFD1qCdsScreening.FieldDefs.Add('FIELD_DEFAULT',ftString,1);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_STR_NEW',ftString,255);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_INT_NEW',ftInteger);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_FLO_NEW',ftFloat);
      SFD1qCdsScreening.FieldDefs.Add('FIELDVALUE_TIM_NEW',ftDateTime);
      SFD1qCdsScreening.CreateDataSet;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TMasterDao.SFD1Delete : Boolean;
begin
  try

  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

destructor TMasterDao.Destroy;
begin
  try

  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.fnFillCdsScreeningFSUF1(pDataSet: TDataSet): Boolean;
{FS4-F1-PU-FN-1}
var
  iDs, iCds : Integer;
  vCountDs, vCountCds : Integer;
  vFieldNameDs, vFieldNameCds  : string;
  vWarning : Boolean;
  vField : TField;
begin
  SetFileId('FS3-F1-PU-FN-2');
  Result := False;
  vWarning := False;
  try
    if Assigned(pDataSet) then
    begin
      if Assigned(SFD1qCdsScreening) then
      begin
        //Verificar se o dataset possui a mesma quantidade de fields que o
        //qCdsScreening...
        //DataSet
        vCountDs := 0;
        for iDs := 0 to pDataSet.Fields.Count -1 do
          vCountDs := vCountDs + 1;
        vCountCds := 0;
        //qCdsScreening
        for iCds := 0 to SFD1qCdsScreening.Fields.Count -1 do
          vCountCds := vCountCds + 1;
        if (vCountDs = vCountCds) then
        begin
          //Verificar se os nomes dos fields do dataset e o qCdsScreening
          //est�o identicos...
          vCountDs := 0;
          for iDs := 0 to pDataSet.Fields.Count - 1 do
          begin
            if vWarning then
              Break;
            vFieldNameDs := '';
            vFieldNameDs := pDataSet.Fields.Fields[iDs].FieldName;
            vCountCds := 0;
            for iCds := 0 to SFD1qCdsScreening.Fields.Count -1 do
            begin
              if (vCountDs = vCountCds) then
              begin
                vFieldNameCds := '';
                vFieldNameCds := SFD1qCdsScreening.Fields.Fields[iCds].FieldName;
                if (vFieldNameDs <> vFieldNameCds) then
                  vWarning := True;
              end;
              vCountCds := vCountCds + 1;
            end;
            vCountDs := vCountDs +1;
          end;
        end else
        begin
          vWarning := True;
        end;
        //Existem pend�ncias
        if vWarning then
        begin
          Result := False;
          Exit;
        end else
        begin
          //Copiando registros...
          pDataSet.First;
          while NOT(pDataSet.Eof) do
          begin
            SFD1qCdsScreening.Append;
            for vField in pDataSet.Fields do
              SFD1qCdsScreening.Fields[vField.Index].Value := vField.Value;
            SFD1qCdsScreening.Post;
            pDataSet.Next;
          end;
          Result := True;
        end;
      end;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TMasterDao.fnGetFieldDefault: Boolean;
begin
  {O qCdsScreening dever� estar diferente de vazio}
  try
    Result := False;
    if Assigned(SFD1qCdsScreening) then
    begin
      Result := (SFD1qCdsScreening.FieldByName('FIELD_DEFAULT').AsString = 'S');
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.fnGetFieldGenName: string;
begin
  {O qCdsScreening dever� estar diferente de vazio}
  try
    if Assigned(SFD1qCdsScreening) then
    begin
      Result := SFD1qCdsScreening.FieldByName('FIELDNAME_').AsString;
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.fnGetFieldName: string;
begin
  {O SetiCds dever� estar diferente de vazio}
  try
    if Assigned(dmMasterDataModule.SetiCds) then
    begin
      Result := dmMasterDataModule.SetiCds.FieldByName('FIELDNAME_').AsString;
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.fnGetFieldType: string;
begin
  {O SetiCds dever� estar diferente de vazio}
  try
    if Assigned(dmMasterDataModule.SetiCds) then
    begin
      Result := dmMasterDataModule.SetiCds.FieldByName('FIELDTYPE_').AsString;
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.SFD1GetOperationType: Integer;
begin
  try
    Result := FOperationType;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.fnGetFieldUseGen: Boolean;
begin
  try
    {O qCdsScreening dever� estar diferente de vazio}
    Result := False;
    if Assigned(SFD1qCdsScreening) then
    begin
      Result :=
        (SFD1qCdsScreening.FieldByName('FIELD_GEN').AsString = 'S');
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.SFD1GetTableName: string;
begin
  try
    Result := FTableName;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.SFD1Insert: Boolean;
var
  vCount : Integer;
  vFieldType, vFieldName, vFieldDef, vGer, vGerName : string;
  vScFieldName : string;
  vValueInt : Integer;
begin
  try
    try
      if (SFD1qTableName = '') then
        Exit;
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      dmGen := TdmGen.Create(Nil);
      with (dmMasterDataModule) do
      begin
        if (fnTableInforFS8F1(SFD1qTableName) = True) then
        begin
          if Assigned(SFD1qCdsScreening) then
          begin
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            //XXXXXXXXXXXXXXXXXXXX 1 XXXXXXXXXXXXXXXXXXXXXX//
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            SetiSqlHelp.SQL.Clear;
            SetiSqlHelp.SQL.Add('INSERT INTO '+SFD1qTableName+#13);
            SetiSqlHelp.SQL.Add('(');
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            //XXXXXXXXXXXXXXXXXXXX 2 XXXXXXXXXXXXXXXXXXXXXX//
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            vCount := 0;
            SetiCds.First;
            while NOT (SetiCds.Eof) do
            begin
              //  Filtra o qCdsScreening de acordo com o field do
              //  SetiCds selecionado...
              //ScreeningFilter;
              if (vCount > 0) then
               SetiSqlHelp.SQL.Add(',');
               // Se o field n�o possuir valor default...
              if (fnGetFieldDefault = False) then
                SetiSqlHelp.SQL.Add(Trim(vFieldName));
                vCount := vCount + 1;
              SetiCds.Next;
            end;
            SetiSqlHelp.SQL.Add(') VALUES (');
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            //XXXXXXXXXXXXXXXXXXXX 3 XXXXXXXXXXXXXXXXXXXXXX//
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            vCount := 0;
            SetiCds.First;
            while NOT (SetiCds.Eof) do
            begin
              fnScreeningFilter;
              if (fnGetFieldDefault = False) then
                SetiSqlHelp.SQL.Add(':'+fnGetFieldName);
              SetiCds.Next;
            end;
            SetiSqlHelp.SQL.Add(') ');
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            //XXXXXXXXXXXXXXXXXXXX 4 XXXXXXXXXXXXXXXXXXXXXX//
            //-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-//
            vCount := 0;
            SetiCds.First;
            while NOT (SetiCds.Eof) do
            begin
              if NOT (fnScreeningFilter) then
              begin
                if (fnGetFieldDefault = False) then
                begin
                  if UpperCase(Trim(vScFieldName)) =
                      (UpperCase(vFieldName)) then
                  begin
                    //DATAS
                    if (fnGetFieldType = SConfigFireTIMESTAMP) then
                    begin
                      SetiSqlHelp.Params.ParamByName(vFieldName).Value :=
                        SFD1qCdsScreening.FieldByName('FIELDVALUE_TIM').Value;
                    end else
                    //TEXTO
                    if (fnGetFieldType = SConfigFireCHAR) or
                       (fnGetFieldType = SConfigFireVARCHAR) then
                    begin
                      SetiSqlHelp.Params.ParamByName(vFieldName).Value :=
                        SFD1qCdsScreening.FieldByName('FIELDVALUE_STR').Value;
                    end else
                    //INTEIRO
                    if (fnGetFieldType = SConfigFireSMALLINT) or
                       (fnGetFieldType = SConfigFireINTEGER) then
                    begin
                      if (fnGetFieldUseGen) then
                      begin
                        SetiSqlHelp.Params.ParamByName(vFieldName).Value :=
                          dmGen.ProximoId(vGerName);
                      end else
                      begin
                        SetiSqlHelp.Params.ParamByName(vFieldName).Value :=
                          vValueInt;
                      end;
                    end;
                    //NUMERICO
                    if (fnGetFieldType = SConfigFireFLOAT) or
                       (fnGetFieldType = SConfigFireDOUBLEPRECISION) or
                       (fnGetFieldType = SConfigFireBIGINT) or
                       (fnGetFieldType = SConfigFireNUMERIC) or
                       (fnGetFieldType = SConfigFireDECIMAL) then
                    begin
                      SetiSqlHelp.Params.ParamByName(fnGetFieldName).Value :=
                        SFD1qCdsScreening.FieldByName('FIELDVALUE_FLO').Value;
                    end;
                    SetiSqlHelp.ExecSQL;
                  end;
                end;
              end;
              SetiCds.Next;
            end;
          end;
        end;
      end;
    finally
      dmMasterDataModule.Free;
      dmGen.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.SFD1Save : Boolean;
begin
  // qOperationType : 1:INSERT; 2:UPDATE; 3:DELETE; 4:CANCEL
  try
    try
      Result := False;
      if Assigned(SFD1qCdsScreening) then
      begin
        SFD1qCdsScreening.Close;
        SFD1qCdsScreening.Open;
        if NOT(SFD1qCdsScreening.IsEmpty) then
        begin
          if (SFD1qOperationType > 0) and (SFD1qOperationType <= 4) then
          begin
            case SFD1qOperationType of
              1 : Result := SFD1Insert;
              2 : Result := SFD1Update;
              3 : Result := SFD1Delete;
              //4 :
            end;
          end;
        end;
      end;
    finally

    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.fnScreeningFilter(pFieldName: string): Boolean;
var
  pParam : string;
begin
  try
    {Observa��o: Quando n�o passar o pFieldName, o SetiCds dever� estar em
    loop}
    pParam := '';
    pParam := pFieldName;
    if Assigned(SFD1qCdsScreening) then
    begin
      if (pFieldName <> '') then
      begin
        if (pParam = '') then
          pParam := fnGetFieldName;
        SFD1qCdsScreening.Close;
        SFD1qCdsScreening.Filtered := False;
        SFD1qCdsScreening.Filter := 'UPPER(FIELDNAME) = '+UpperCase(
          QuotedStr(pFieldName));
        SFD1qCdsScreening.Filtered := True;
        SFD1qCdsScreening.Open;
        Result := (NOT (SFD1qCdsScreening.IsEmpty));
      end;
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.GetFileId: string;
begin
    Result := FFileID;
end;

procedure TMasterDao.SFD1SetOperationType(const Value: Integer);
begin
  try
    FOperationType := Value;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

procedure TMasterDao.SFD1SetTableName(const Value: string);
begin
  try
    FTableName := Value;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

function TMasterDao.SFD1Update : Boolean;
var
  vCount : Integer;
  vFieldType, vFieldName, vFieldDef, vGer, vGerName : string;
  vScFieldName : string;
  vValueInt : Integer;
begin
  try
    try
      if (SFD1qTableName = '') then
        Exit;
      with (dmMasterDataModule) do
      begin
        if (dmMasterDataModule.fnTableInforFS8F1(SFD1qTableName) = True) then
        begin
          if Assigned(SFD1qCdsScreening) then
          begin
            SetiSqlHelp.SQL.Clear;
            SetiSqlHelp.SQL.Add('UPDATE '+SFD1qTableName+' SET ');
           {
            PEGUEI O CODIGO ABAIXO DO METODO INSERT, DEVERA ALTERA-LO DE ACORDO
            COM A SINTAXE PARA UPDATE DA TABELA, E LOGO DEPOIS CONTINUAR O ESQUEMA
            PARA ATUALIZAR...
            DEUS ME ABEN�OE, VOU CONSEGUIR TERMINAR ATE DIA 23
           }
            vCount := 0;
            SetiCds.First;
            while NOT (SetiCds.Eof) do
            begin
              //  Filtra o qCdsScreening de acordo com o field do
              //  SetiCds selecionado...
              fnScreeningFilter;
              if (vCount > 0) then
               SetiSqlHelp.SQL.Add(',');
               // Se o field n�o possuir valor default...
              if (fnGetFieldDefault = False) then
                SetiSqlHelp.SQL.Add(Trim(vFieldName));
                vCount := vCount + 1;
              SetiCds.Next;
            end;

          end;
        end;
      end;
    finally

    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

end.
