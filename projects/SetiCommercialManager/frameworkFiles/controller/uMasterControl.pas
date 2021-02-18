{ID: F1; | CODIGO: FS3-F1;}

unit uMasterControl;

interface

uses SysUtils, Forms, Buttons, StdCtrls, Vcl.Graphics, Windows, Messages,
Variants, Classes, Controls, Dialogs, DBGrids, Data.DB, Datasnap.DBClient,
Datasnap.Provider,
//Classes
uMess, uFormControlModel, uMasterDao
;

  type TMasterControl = class
//------------------------------------------------------------------------------
    private
      FFileID : string;
      FCdsOldFS3F1: TClientDataSet;
      FcMDaoFS3F1 : TMasterDao;
      FDataSetNew: TDataSet;
      FTableNameC : string;
      //PARAMETROS PARA CDS OLD E NEW
      FpId : Integer;
      FpTableName : string;
      FpFieldName : string;
      FpValueStr : string;
      FpValueInt : Integer;
      FpValueFlo : Double;
      FpValueTmp : TDateTime;
      FpValueTim : TTime;
      FpValueDat : TDate;
      FpGen : string;
      FpGenName : string;
      FpDefault : string;
//..............................................................................
      //Get and Set
      function GetFileId : string;
      function GetTableNameCFS3F1 : string;
      procedure SetFileId(Const Value : string);
      procedure SetTableNameCFS3F1(Const Value: string);
      property qFileId : string read GetFileId write SetFileId;
//..............................................................................
      //Other methods
      {FS3-F1-PR-FN-1}
      function fnSaveFS3F1 : Boolean;
      //Property
      property qTableNameCFS3F1 : string read GetTableNameCFS3F1 write
        SetTableNameCFS3F1;
//------------------------------------------------------------------------------
    public
      //Get and Set
       function GetIdFS3F1 : Integer;
       function GetTableNameFS3F1 : string;
       function GetFieldNameFS3F1 : string;
       function GetValueStrFS3F1 : string;
       function GetValueIntFS3F1 : Integer;
       function GetValueFloFS3F1 : Double;
       function GetValueTmpFS3F1 : TDateTime;
       function GetValueTimFS3F1 : TTime;
       function GetValueDatFS3F1 : TDate;
       function GetGenFS3F1 : string;
       function GetGenNameFS3F1 : string;
       function GetDefaultFS3F1 : string;

       procedure SetIdFS3F1(Const Value : Integer);
       procedure SetTableNameFS3F1(Const Value : string);
       procedure SetFieldNameFS3F1(Const Value : string);
       procedure SetValueStrFS3F1(Const Value : string);
       procedure SetValueIntFS3F1(Const Value : Integer);
       procedure SetValueFloFS3F1(Const Value : Double);
       procedure SetValueTmpFS3F1(Const Value : TDateTime);
       procedure SetValueTimFS3F1(Const Value : TTime);
       procedure SetValueDatFS3F1(Const Value : TDate);
       procedure SetGenFS3F1(Const Value : string);
       procedure SetGenNameFS3F1(Const Value : string);
       procedure SetDefaultFS3F1(Const Value : string);

      {FS3-F1-PU-CR-0}
      constructor Create;reintroduce;
      {FS3-F1-PU-DE-0}
      destructor Destroy;override;
      {FS3-F1-PU-FN-1}
      function fnOpFormFS3F1(pTableName:string; OpType:
      Integer) : Boolean;
      {FS3-F1-PU-FN-2}
      function fnInsertRecordsCdsOldNewFS3F1(pType:Integer) : Boolean;
//..............................................................................
//OPERATIONS
      {FS3-F1-PU-FN-3}
      function fnSaveDataSetToOperations(pType:string) : Boolean;


//..............................................................................
      property cMDaoFS3F1 : TMasterDao read FcMDaoFS3F1 write FcMDaoFS3F1;
      property qDataSetNewFS3F1 : TDataSet read FDataSetNew write
        FDataSetNew;
      property pIdFS3F1 : Integer read GetIdFS3F1 write SetIdFS3F1;
      property pTableNameFS3F1 : string read GetTableNameFS3F1 write
        SetTableNameFS3F1;
      property pFieldNameFS3F1 : string read GetFieldNameFS3F1 write
        SetFieldNameFS3F1;
      property pValueStrFS3F1 : string read GetValueStrFS3F1 write
        SetValueStrFS3F1;
      property pValueIntFS3F1 : Integer read GetValueIntFS3F1 write
        SetValueIntFS3F1;
      property pValueFloFS3F1 : Double read GetValueFloFS3F1 write
        SetValueFloFS3F1;
      property pValueTmpFS3F1 : TDateTime read GetValueTmpFS3F1 write
        SetValueTmpFS3F1;
      property pValueTimFS3F1 : TTime read GetValueTimFS3F1 write
        SetValueTimFS3F1;
      property pValueDatFS3F1 : TDate read GetValueDatFS3F1 write
        SetValueDatFS3F1;
      property pGenFS3F1 : string read GetGenFS3F1 write SetGenNameFS3F1;
      property pGenNameFS3F1 : string read GetGenNameFS3F1 write
        SetGenNameFS3F1;
      property pDefaultFS3F1 : string read GetDefaultFS3F1 write
        SetDefaultFS3F1;
      property qCdsSetOldFS3F1 : TClientDataSet read FCdsOldFS3F1 write
      FCdsOldFS3F1;

//------------------------------------------------------------------------------
  end;

  var
    ProviderFS3F1 : TProvider;

implementation

{ TMasterControl }


constructor TMasterControl.Create;
{FS3-F1-PU-CR-0}
begin
  SetFileId('FS3-F1-PU-CR-0');
    try
      cMDaoFS3F1 := TMasterDao.Create;
      qCdsSetOldFS3F1 := TClientDataSet.Create(ProviderFS3F1);
      qCdsSetOldFS3F1.Close;
      qCdsSetOldFS3F1.FieldDefs.Clear;
      qCdsSetOldFS3F1.FieldDefs.Add('ID',ftInteger);
      qCdsSetOldFS3F1.FieldDefs.Add('TABLENAME',ftString,50);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDNAME',ftString,50);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDVALUE_STR',ftString,255);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDVALUE_INT',ftInteger);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDVALUE_FLO',ftFloat);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDVALUE_TMP',ftDateTime);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDVALUE_TIM',ftTime);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELDVALUE_DAT',ftDate);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELD_GEN',ftString,1);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELD_GEN_NAME',ftString,50);
      qCdsSetOldFS3F1.FieldDefs.Add('FIELD_DEFAULT',ftString,1);
      qCdsSetOldFS3F1.CreateDataSet;

    {  qDataSetNewFS3F1 := TDataSet.Create(Nil);
      qDataSetNewFS3F1.Close;
      qDataSetNewFS3F1.FieldDefs.Clear;
      qDataSetNewFS3F1.FieldDefs.Add('ID',ftInteger);
      qDataSetNewFS3F1.FieldDefs.Add('TABLENAME',ftString,50);
      qDataSetNewFS3F1.FieldDefs.Add('FIELDNAME',ftString,50);
      qDataSetNewFS3F1.FieldDefs.Add('FIELDVALUE_STR',ftString,255);
      qDataSetNewFS3F1.FieldDefs.Add('FIELDVALUE_INT',ftInteger);
      qDataSetNewFS3F1.FieldDefs.Add('FIELDVALUE_FLO',ftFloat);
      qDataSetNewFS3F1.FieldDefs.Add('FIELDVALUE_TIM',ftDateTime);
      qDataSetNewFS3F1.FieldDefs.Add('FIELD_GEN',ftString,1);
      qDataSetNewFS3F1.FieldDefs.Add('FIELD_GEN_NAME',ftString,50);
      qDataSetNewFS3F1.FieldDefs.Add('FIELD_DEFAULT',ftString,1);}
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

destructor TMasterControl.Destroy;
{FS3-F1-PU-DE-0}
begin
  if Assigned(cMDaoFS3F1) then
    cMDaoFS3F1.Free;
  if Assigned(qDataSetNewFS3F1) then
    qDataSetNewFS3F1.Free;
  inherited;
end;

function TMasterControl.GetDefaultFS3F1: string;
begin
    Result := FpDefault;
end;

function TMasterControl.GetFieldNameFS3F1: string;
begin
    Result := FpFieldName
end;

function TMasterControl.GetFileId: string;
begin
    Result := FFileID;
end;

function TMasterControl.GetGenFS3F1: string;
begin
    Result := FpGen;
end;

function TMasterControl.GetGenNameFS3F1: string;
begin
    Result := FpGenName;
end;

function TMasterControl.GetIdFS3F1: Integer;
begin
    Result := FpId;
end;

function TMasterControl.GetTableNameCFS3F1: string;
begin
    Result := FTableNameC;
end;


function TMasterControl.GetTableNameFS3F1: string;
begin
    Result := FpTableName;
end;

function TMasterControl.GetValueDatFS3F1: TDate;
begin
    Result := FpValueDat;
end;

function TMasterControl.GetValueFloFS3F1: Double;
begin
    Result := FpValueFlo;
end;

function TMasterControl.GetValueIntFS3F1: Integer;
begin
    Result := FpValueInt;
end;

function TMasterControl.GetValueStrFS3F1: string;
begin
    Result := FpValueStr;
end;

function TMasterControl.GetValueTimFS3F1: TTime;
begin
    Result := FpValueTim;
end;

function TMasterControl.GetValueTmpFS3F1: TDateTime;
begin
    Result := FpValueTmp;
end;

function TMasterControl.fnInsertRecordsCdsOldNewFS3F1(pType: Integer): Boolean;
{FS3-F1-PU-FN-2}
begin
  SetFileId('FS3-F1-PU-FN-2');
  Result := False;
  try
    if (pType = 0) then
    begin
      if Assigned(qCdsSetOldFS3F1) then
      begin
        qCdsSetOldFS3F1.EmptyDataSet;
        qCdsSetOldFS3F1.Append;
        qCdsSetOldFS3F1.FieldByName('ID').Value := pIdFS3F1;
        qCdsSetOldFS3F1.FieldByName('TABLENAME').Value := pTableNameFS3F1;
        qCdsSetOldFS3F1.FieldByName('FIELDNAME').Value := pFieldNameFS3F1;
        if pValueStrFS3F1 <> '' then
        qCdsSetOldFS3F1.FieldByName('FIELDVALUE_STR').Value := pValueStrFS3F1;
        if pValueIntFS3F1 >= 0 then
        qCdsSetOldFS3F1.FieldByName('FIELDVALUE_INT').Value := pValueIntFS3F1;
        if pValueFloFS3F1 >= 0 then
        qCdsSetOldFS3F1.FieldByName('FIELDVALUE_FLO').Value := pValueFloFS3F1;
        qCdsSetOldFS3F1.FieldByName('FIELDVALUE_TMP').Value := pValueTmpFS3F1;
        qCdsSetOldFS3F1.FieldByName('FIELDVALUE_TIM').Value := pValueTimFS3F1;
        qCdsSetOldFS3F1.FieldByName('FIELDVALUE_DAT').Value := pValueDatFS3F1;
        if pGenFS3F1 <> '' then
        qCdsSetOldFS3F1.FieldByName('FIELD_GEN').Value := pGenFS3F1;
        if pGenNameFS3F1 <> ''  then
        qCdsSetOldFS3F1.FieldByName('FIELD_GEN_NAME').Value := pGenNameFS3F1;
        if pDefaultFS3F1 <> '' then
        qCdsSetOldFS3F1.FieldByName('FIELD_DEFAULT').Value := pDefaultFS3F1;
        qCdsSetOldFS3F1.Post;
      end;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TMasterControl.fnOpFormFS3F1(pTableName: string;
  OpType: Integer): Boolean;
{FS3-F1-PU-FN-1}
begin
  SetFileId('FS3-F1-PU-FN-1');
  Result := False;
  try
    try
      cMDaoFS3F1 := TMasterDao.Create;
      //Se o Dataset n�o foi criado? Sair...
      //if NOT (Assigned(qDataSetOldFS3F1)) then
        //Exit;
      if NOT (Assigned(qDataSetNewFS3F1)) then
        Exit;
      //O nome da tabela n�o foi informado? Sair...
      if (pTableName = '') then
        Exit
      else //Se o nome da tabela foi informado...
        SetTableNameCFS3F1(pTableName);
      //O parametro OpType n�o se se refere-se aos tipos abaixo:
      //1:Insert; 2:Update; 3:Delete; 4:Cancel; 5:Save
      if NOT (OpType in [1,2,3,4,5]) then
        Exit;
      cMDaoFS3F1.SFD1SetTableName(qTableNameCFS3F1);
      cMDaoFS3F1.SFD1SetOperationType(OpType);
      if (OpType in [4,5]) then
      begin
        {if (cMDao.SFD1FillCdsScreening(SFC1dDataSet)) then
        begin
          case (cMDao.SFD1qOperationType) of
            4 : Result := cMDao.SFD1Cancel;
            5 : Result := cMDao.SFD1Save;
          end;
        end;}
      end;
    finally
      cMDaoFS3F1.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TMasterControl.fnSaveDataSetToOperations(pType: string): Boolean;
{FS3-F1-PU-FN-3}
begin
  SetFileId('FS3-F1-PR-FN-1');
  Result := False;
  try


    Result := True;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TMasterControl.fnSaveFS3F1 : Boolean;
{FS3-F1-PR-FN-1}
begin
  SetFileId('FS3-F1-PR-FN-1');
  Result := False;
  try
    if (qTableNameCFS3F1 = '') then
      Exit;
    if Assigned(cMDaoFS3F1) then
    begin
      with (cMDaoFS3F1) do
      begin
        cMDaoFS3F1.SFD1Save;
      end;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

procedure TMasterControl.SetDefaultFS3F1(const Value: string);
begin
    FpDefault := Value;
end;

procedure TMasterControl.SetFieldNameFS3F1(const Value: string);
begin
    FpFieldName := Value;
end;

procedure TMasterControl.SetFileId(const Value: string);
begin
    FFileID := Value;
end;

procedure TMasterControl.SetGenFS3F1(const Value: string);
begin
    FpGen := Value;
end;

procedure TMasterControl.SetGenNameFS3F1(const Value: string);
begin
    FpGenName := Value;
end;

procedure TMasterControl.SetIdFS3F1(const Value: Integer);
begin
    FpId := Value;
end;

procedure TMasterControl.SetTableNameCFS3F1(const Value: string);
begin
    FTableNameC := Value;
end;


procedure TMasterControl.SetTableNameFS3F1(const Value: string);
begin
    FpTableName := Value;
end;

procedure TMasterControl.SetValueDatFS3F1(const Value: TDate);
begin
    FpValueDat := Value;
end;

procedure TMasterControl.SetValueFloFS3F1(const Value: Double);
begin
    FpValueFlo := Value;
end;

procedure TMasterControl.SetValueIntFS3F1(const Value: Integer);
begin
    FpValueInt := Value;
end;

procedure TMasterControl.SetValueStrFS3F1(const Value: string);
begin
    FpValueStr := Value;
end;

procedure TMasterControl.SetValueTimFS3F1(const Value: TTime);
begin
    FpValueTim := Value;
end;

procedure TMasterControl.SetValueTmpFS3F1(const Value: TDateTime);
begin
    FpValueTmp := Value;
end;

end.