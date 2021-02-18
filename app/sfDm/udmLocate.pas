unit udmLocate;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Data.DB, Dialogs, MIDASLIB,
  Variants, uSetiConfig, uSetiConnects, Data.DBXFirebird;

type
  TdmLocate = class(TDataModule)
    LocConnection: TSQLConnection;
    LocQuery: TSQLQuery;
    LocDsp: TDataSetProvider;
    LocCds: TClientDataSet;
    LocSp: TSQLStoredProc;
  private
    { Private declarations }
    FConnects : TSetiConnects;
    FConnectsAux : TSetiConnects;
    FqSearch4_Field: string;
    FqSearch13Tag: Integer;
    FqSearch_Type: integer;
    FqParamValue: variant;
    FqTableName: string;
    FqQry: string;
    FIdParamProvider: Integer;
    FqParameterId: Integer;
    FSearchingReturnDts: TDataSet;
    FSearchingReturnType: Integer;
    FSearchReturnKeyFieldName: string;
    FSearchingReturnFieldName: string;

    procedure ProviderFlags(pDts:TDataSet=Nil;pId:Integer=-1);
    procedure SetSearchingReturnDts(const Value: TDataSet);
    procedure SetSearchingReturnType(const Value: Integer);
    procedure SetSearchingReturnKeyFieldName(const Value: string);
    procedure SetSearchingReturnFieldName(const Value: string);

    property qConnects : TSetiConnects read FConnects write FConnects;
    property qConnectsAux : TSetiConnects read FConnectsAux write FConnectsAux;

  public
    { Public declarations }
      function Searching(
        pParamId,pType:Integer;pParamNotEmpty:Boolean) : Boolean;
      function UseSearchParams(pParamId,pIdReturn:Integer) : Variant;

      procedure SetqParameterId(const Value: Integer);
      procedure SetqParamValue(const Value: Variant);
      procedure SetqQry(const Value: string);
      procedure SetqSearch_Type(const Value: integer);
      procedure SetqSearch13Tag(const Value: Integer);
      procedure SetqSearch4_Field(const Value: string);
      procedure SetqTableName(const Value: string);
      procedure SetIdParamProvider(const Value: Integer);

      property qQry : string read FqQry write SetqQry;
      property qParamValue : Variant read FqParamValue write SetqParamValue;
      property qTableName : string read FqTableName write SetqTableName;
      property qSearch_Type : integer read FqSearch_Type write SetqSearch_Type;
      property qSearch4_Field : string read FqSearch4_Field
      write SetqSearch4_Field;
      property qSearch13Tag : Integer read FqSearch13Tag write SetqSearch13Tag;
      property qIdParamProvider : Integer read FIdParamProvider
      write SetIdParamProvider;
      property qParameterId : Integer read FqParameterId write SetqParameterId;
      property qSearchingReturnDts : TDataSet read FSearchingReturnDts
      write SetSearchingReturnDts;
      property qSearchingReturnType : Integer read FSearchingReturnType
      write SetSearchingReturnType;
      property qSearchingReturnKeyFieldName : string
      read FSearchReturnKeyFieldName write SetSearchingReturnKeyFieldName;
      property qSearchingReturnFieldName : string read FSearchingReturnFieldName
      write SetSearchingReturnFieldName;
  end;

var
  dmLocate: TdmLocate;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uMess, uSetiUseful;

{$R *.dfm}

{ TdmLocate }

function TdmLocate.Searching(
  pParamId,pType:Integer;pParamNotEmpty:Boolean) : Boolean;
var
    i : Integer;
    vQry : TSQLQuery;
    vConn : TSQLConnection;
    vQryAux,vQryAuxOrder,vQryAuxGroup : string;

    vParams_0,vParams_1,vParams_2,vParams_3,vParams_4,
    vParams_5,vParams_6,vParams_7,vParams_8,vParams_9,
    vParams_10,vParams_11,vParams_12,vParams_13,vParams_14,
    vParams_15, vParams_16, vParams_17, vParams_18 : Variant;

    vSearchParam,vIniCommand, vSearchCommand : string;
    vNumP : Integer;

    vObs : string;
    val : Boolean;

    vFieldType : string;


begin
    Result := False;
    val := True;
    try
        try
          if (pParamId > 0) then
          begin
            qConnects := TSetiConnects.Create;
            LocConnection := qConnects.ConnectsFIREBIRD;
            LocConnection.Connected;
            LocQuery.Close;
            LocCds.Close;
            LocQuery.SQLConnection := LocConnection;
            LocQuery.SQL.Clear;
            vQryAux := 'SELECT '' as Nenhum_registro_encontrado '+
                       'FROM RDB$DATABASE';
            vConn := TSQLConnection.Create(Nil);
            vConn := qConnects.ConnectsFIREBIRD;
            vConn.Connected;
            vQry := TSQLQuery.Create(Nil);
            vQry.Close;
            vQry.SQL.Clear;
            vQry.SQLConnection := vConn;
            vQry.SQL.Add(' SELECT * FROM TBSEARCHPARAMS SP ');
            vQry.SQL.Add(' WHERE SP.ID = :ID               ');
            vQry.Params.ParamByName('ID').Value := pParamId;
            vQry.Open;
            vQryAux := '';
            if not (vQry.IsEmpty) then
            begin
              vParams_0 := vQry.FieldByName('PARAMETER_0').Value;
              vParams_1 := vQry.FieldByName('PARAMETER_1').Value;
              vParams_2 := vQry.FieldByName('PARAMETER_2').Value;
              vParams_3 := vQry.FieldByName('PARAMETER_3').Value;
              vParams_4 := vQry.FieldByName('PARAMETER_4').Value;
              vParams_5 := vQry.FieldByName('PARAMETER_5').Value;
              vParams_6 := vQry.FieldByName('PARAMETER_6').Value;
              vParams_7 := vQry.FieldByName('PARAMETER_7').Value;
              vParams_8 := vQry.FieldByName('PARAMETER_8').Value;
              vParams_9 := vQry.FieldByName('PARAMETER_9').Value;
              vParams_10 := vQry.FieldByName('PARAMETER_10').Value;
              vParams_11 := vQry.FieldByName('PARAMETER_11').Value;
              vParams_12 := vQry.FieldByName('PARAMETER_12').Value;
              vParams_13 := vQry.FieldByName('PARAMETER_13').Value;
              vParams_14 := vQry.FieldByName('PARAMETER_14').Value;
              vParams_15 := vQry.FieldByName('PARAMETER_15').Value;
              vParams_16 := vQry.FieldByName('PARAMETER_16').Value;
              vParams_17 := vQry.FieldByName('PARAMETER_17').Value;
              vParams_18 := vQry.FieldByName('PARAMETER_18').Value;

              //SE O TIPO DE CONSULTA FOR POR SQL COMANDO SEM SP
              if (vParams_2 = 1) then
              begin
                if (NOT(IsEmptyOrNull(vParams_10))) then
                begin
                  //VERIFICA SE FOI INFORMADO ':' QUE CONDIZ UM PARAMETRO
                  //NESTE CAMPO, N�O � PERMITIDO PARAMETROS...
                  if Pos(':',vParams_10) <> 0 then
                  begin
                    SetiMens(2,Mess26);
                    Exit;
                  end;
                end;
                //VERIFICA SE EXISTE VALOR NA VARIAVEL REF A INFORMA��O DA
                //CLAUSULA AND COM 1 PARAMETRO
                if (NOT (IsEmptyOrNull(vParams_11))) then
                begin
                  //� PERMITIDO INFORMAR SOMENTE 1 PARAMETRO NO PARAMETRO 11
                  if ((SetiUserfulRetornaQtdCarct(':',vParams_11)) <> 1)  then
                  begin
                    SetiMens(2,Mess26);
                    Exit;
                  end;
                end else
                begin
                    SetiMens(2,Mess26);
                    Exit;
                end;
              end;

              if (NOT (IsEmptyOrNull(vParams_2)))then
              begin
                //TAB
                if (vParams_2 = 0) then
                begin
                  if (IsEmptyOrNull(vParams_5)) or
                      (IsEmptyOrNull(vParams_9)) then
                        Exit;
                  vQryAux :=
                    ' SELECT *                                            '+#13+
                    ' FROM '+VarToStr(vParams_5)                           +#13+
                    ' WHERE 1 = 1                                         '+#13+
                    ' AND '+VarToStr(vParams_9)+ ' IS NOT NULL            '+#13;
                  //AND COMPLEMENT
                  if (NOT (IsEmptyOrNull(vParams_10))) then
                  begin
                    vQryAux := vQryAux + VarToStr(vParams_10);
                  end;
                end else
                //SQL COM
                if (vParams_2 = 1) then
                begin
                  if (IsEmptyOrNull(vParams_6)) then
                    Exit;
                  vQryAux :=  VarToStr(vParams_6);
                end else
                //SQL COM SP
                if (vParams_2 = 2) then
                begin
                  if (IsEmptyOrNull(vParams_7)) then
                    Exit;
                  vQryAux :=  VarToStr(vParams_7);
                  if (IsEmptyOrNull(vParams_16)) or
                      (IsEmptyOrNull(vParams_8)) or
                        (IsEmptyOrNull(vParams_17)) then
                    Exit;
                  if (vParams_16 > 0) and (vParams_17 >= 0) then
                  begin
                    vNumP := (vParams_16 -1);
                    vSearchParam := ':'+VarToStr(vParams_8);
                    vIniCommand := VarToStr(vParams_7) + '(';
                    vSearchCommand := vIniCommand;
                    for i := 0 to vNumP do
                    begin
                        if (i < vNumP) then
                        begin
                           vIniCommand := vIniCommand + 'NULL,'+#13;
                          if (vParams_17 = i) then
                            vSearchCommand :=
                              vSearchCommand + vSearchParam+','+#13
                          else
                            vSearchCommand := vSearchCommand + 'NULL,'+#13;
                        end else
                        begin
                           vIniCommand := vIniCommand + 'NULL'+#13+')';
                           if (vParams_17 = i) then
                             vSearchCommand :=
                                vSearchCommand +vSearchParam+#13+') '
                           else
                             vSearchCommand := vSearchCommand + 'NULL'+#13+') ';
                        end;
                    end;
                    if (pType = 0) then
                      vQryAux := vIniCommand else
                    if (pType = 1) then
                    begin
                      if (pParamNotEmpty = false) then
                        vQryAux := vIniCommand else
                      vQryAux := vSearchCommand;
                    end;
                  end;
                end;

                LocQuery.SQL.Add(vQryAux);
                vQryAux := '';
                vQryAuxOrder := '';
                vQryAuxGroup := '';
                //SEARCH
                if (pType = 1) then
                begin
                  if (pParamNotEmpty) then
                  begin
                    if (NOT IsEmptyOrNull(vParams_5)) and
                        (NOT IsEmptyOrNull(vParams_18)) then
                      vFieldType := fnTableInfor(vParams_5,vParams_18,2);
                    if (vFieldType <> '') then
                    begin
                      LocQuery.SQL.Add(vParams_11);
                    end;
                    if (vFieldType = 'LONG') then
                    begin
                      if OnlyNumber(qParamValue) then
                        LocQuery.Params.ParamByName(vParams_8).Value :=
                          qParamValue
                      else
                      begin
                        SetiMens(2,
                          'Valor n�o permitido para este tipo de campo.');
                        Exit;
                      end;
                    end else
                    if (vFieldType = 'TEXT') or
                          (vFieldType = 'VARYING') then
                    LocQuery.Params.ParamByName(vParams_8).Value :=
                      AnsiUpperCase(qParamValue);
                     // '%' + AnsiUpperCase(qParamValue) + '%';
                  end;
                end;
                //GROUP BY
                if (vParams_2 = 0) or (vParams_2 = 1) then
                begin
                  if NOT (IsEmptyOrNull(vParams_13)) then
                  begin
                    vQryAuxGroup := VarToStr(vParams_13);
                  end;
                  if NOT (IsEmptyOrNull(vParams_13)) then
                  begin
                    vQryAuxOrder := VarToStr(vParams_12);
                  end;
                  vQryAux :=  vQryAuxGroup +#13+ vQryAuxOrder +#13;
                end;
              end;
            end else
            begin
              SetiMens(2,Mess26);
              Exit;
            end;
            LocQuery.SQL.Add(vQryAux);
            LocDsp.DataSet := LocQuery;
            LocDsp.Options := [poAllowCommandText];
            LocCds.SetProvider(LocDsp);
            if (pType = 0) and (SConfigFrmToLocateIniSearch) then
              LocCds.Open else
              val := False;
            if (pType = 1) then
            begin
              LocCds.Open;
              val := True;
            end;
            if val then
            begin
              if NOT (IsEmptyOrNull(vParams_15)) then
              begin
                if (vParams_15 > 0) then
                  ProviderFlags(LocCds,vParams_15);
              end;
              if (NOT LocCds.IsEmpty) then
              begin
                if (IsEmptyOrNull(vParams_1)) then
                  Exit;
                if (IsEmptyOrNull(vParams_8)) then
                  Exit;
                if (IsEmptyOrNull(vParams_9)) then
                  Exit;

                SetSearchingReturnType(vParams_1);

                SetSearchingReturnKeyFieldName(vParams_9);
                SetSearchingReturnDts(LocCds);
                SetSearchingReturnFieldName(vParams_8);

                Result := True;
              end else
              begin
                SetiMens(1,'Nenhum registro encontrado.');
                Result := False;
              end;
            end;
          end;
        finally
          vQry.Free;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


procedure TdmLocate.ProviderFlags(pDts:TDataSet;pId:Integer);
var
    i : Integer;
    vQry : TSQLQuery;
    vConn : TSQLConnection;
    vDsp : TDataSetProvider;
    vCds : TClientDataSet;
begin
    try
      //fnTableInfor
      if (pId > 0) then
      begin
        if Assigned(pDts) then
        begin
            qConnectsAux := TSetiConnects.Create;
            vConn := TSQLConnection.Create(Nil);
            vConn := qConnectsAux.ConnectsFIREBIRD;
            vConn.Connected;

            vQry := TSQLQuery.Create(Nil);
            vDsp := TDataSetProvider.Create(Self);
            vCds := TClientDataSet.Create(Self);

            vQry.Close;
            vQry.SQLConnection := vConn;
            vQry.SQL.Clear;
            vQry.SQL.Add(' SELECT * FROM  TBPROVIDERPARAMS ');
            vQry.SQL.Add(' WHERE CODPARAM = '+IntToStr(pId));

            vDsp.DataSet := vQry;
            vDsp.Name := 'dsp';
            vDsp.Options := [poAllowCommandText];
            vCds.SetProvider(vDsp);

            vCds.Open;

            if NOT (vCds.IsEmpty) then
            begin
                pDts.First;
                while not pDts.Eof do
                begin
                  for i := 0 to pDts.Fields.Count -1 do
                  begin
                    vCds.Filtered := False;
                    vCds.Filter := 'FIELDNAME = '+
                      QuotedStr(pDts.Fields.Fields[i].FieldName);
                    vCds.Filtered := True;
                    if (vCds.IsEmpty) then
                    begin
                      vCds.Filtered := False;
                      vCds.Filter := 'FIELDNAMEALIAS = '+
                        QuotedStr(pDts.Fields.Fields[i].FieldName);
                      vCds.Filtered := True;
                    end;
                    if (vCds.IsEmpty) then
                    begin
                      Exit;
                    end else
                    begin
                      if (vCds.FieldByName('VISIBLEINGRID').Value <> 'S') then
                        pDts.Fields.Fields[i].Visible := False
                      else
                      begin
                        pDts.Fields.Fields[i].Visible := True;
                        if (vCds.FieldByName('FIELDCAPTION').Value <> '') then
                        begin
                          pDts.Fields.Fields[i].DisplayLabel :=
                            vCds.FieldByName('FIELDCAPTION').Value;
                        end;
                        if not (vCds.FieldByName('SIZEFORGRID').IsNull) then
                        begin
                          pDts.Fields.Fields[i].DisplayWidth :=
                            vCds.FieldByName('SIZEFORGRID').Value;
                        end;
                      end;
                    end;
                  end;
                  pDts.Next;
                end;
            end;
        end;
      end;
    finally
      qConnectsAux.Free;
      vConn.Free;
      vQry.Free;
      vDsp.Free;
      vCds.Free;
    end;
end;

procedure TdmLocate.SetIdParamProvider(const Value: Integer);
begin
    FIdParamProvider := Value;
end;

procedure TdmLocate.SetqParameterId(const Value: Integer);
begin
    FqParameterId := Value;
end;

procedure TdmLocate.SetqParamValue(const Value: Variant);
begin
    FqParamValue := Value;
end;

procedure TdmLocate.SetqQry(const Value: string);
begin
    FqQry := Value;
end;

procedure TdmLocate.SetqSearch13Tag(const Value: Integer);
begin
    FqSearch13Tag := Value;
end;

procedure TdmLocate.SetqSearch4_Field(const Value: string);
begin
    FqSearch4_Field := Value;
end;

procedure TdmLocate.SetqSearch_Type(const Value: integer);
begin
    FqSearch_Type := Value;
end;

procedure TdmLocate.SetqTableName(const Value: string);
begin
    FqTableName := Value;
end;

procedure TdmLocate.SetSearchingReturnKeyFieldName(const Value: string);
begin
    FSearchReturnKeyFieldName := Value;
end;

procedure TdmLocate.SetSearchingReturnDts(const Value: TDataSet);
begin
    FSearchingReturnDts := Value;
end;

procedure TdmLocate.SetSearchingReturnFieldName(const Value: string);
begin
    FSearchingReturnFieldName := Value;
end;

procedure TdmLocate.SetSearchingReturnType(const Value: Integer);
begin
    FSearchingReturnType := Value;
end;

function TdmLocate.UseSearchParams(pParamId,pIdReturn: Integer): Variant;
var
    vQry : TSQLQuery;
    vConn : TSQLConnection;
    vCon : TSetiConnects;
    vStr : string;
begin
    try
        vStr := '';
        qConnectsAux := TSetiConnects.Create;
        vConn := TSQLConnection.Create(Nil);
        vConn := qConnectsAux.ConnectsFIREBIRD;
        vConn.Connected;
        vQry := TSQLQuery.Create(Nil);
      if (pParamId <> -1) and (pIdReturn <> -1) then
      begin
        vQry.Close;
        vQry.SQL.Clear;
        vQry.SQLConnection := vConn;
        vQry.SQL.Add(' SELECT * FROM TBSEARCHPARAMS SP ');
        vQry.SQL.Add(' WHERE SP.ID = :ID               ');
        vQry.Params.ParamByName('ID').Value := pParamId;
        vQry.Open;
        vStr := 'PARAMETER_'+IntToStr(pIdReturn);
        Result := vQry.FieldByName(vStr).Value;
      end;
    finally
      qConnects.Free;
      vConn.Free;
      vQry.Free;
    end;
end;

end.
