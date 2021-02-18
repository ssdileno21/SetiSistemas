unit uEmpresasControl;

interface

uses SysUtils, Forms, Buttons, StdCtrls, Vcl.Graphics, Windows, Messages,
Variants, Classes, Controls, Dialogs, DBGrids, Data.DB,

uMess, uFormControlModel, uMasterDao

;

    type TEmpresasontrol = class
      private
          //FcModel : TEmpresasModel;
          //FcDao : TEmpresasDao;
          FFcm : TFormControlModel;
          FMDao : TMasterDao;
          function ParamSet(Form:TObject) : Boolean;
          function BackRecords(Form:TObject) : Boolean;
          function Save(pTableName:string) : Boolean;
          function Insert(pTableName:string) : Boolean;
          function Update(pTableName:string) : Boolean;
          function Delete(pTableName:string) : Boolean;
          function Cancel(pTableName:string) : Boolean;
//          function FillsCdsScreening(Form:TObject) : Boolean;
      public
          constructor Create(Form:TObject);
          function qOperationForm(pDataSet:TDataSet;pTableName:string;
          OpType:Integer) : Boolean;
      published
          //property cModel : TEmpresasModel read FcModel write FcModel;
          //property cDao : TEmpresasDao read FcDao write FcDao;
          property cFcm : TFormControlModel read FFcm write FFcm;
          property cMDao : TMasterDao read FMDao write FMDao;
    end;

implementation

{ TEmpresasontrol }

uses ufrmInitialSetting, ufrmGerCadEmpresa;


constructor TEmpresasontrol.Create(Form: TObject);
begin
    try
      cMDao := TMasterDao.Create;
{
        cModel := TEmpresasModel.Create;
        //cDao := TEmpresasDao.Create;
        cFcm := TFormControlModel.Create;
        cFcm.SetFormControlState(0);  }
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasontrol.ParamSet(Form: TObject) : Boolean;
begin
    try
{        Result := False;
        with (Form as TfrmGerCadEmpresa) do
        begin
            if (FFcm.qFormControlState in [1,2]) then
            begin
                if (RGR_TIPOPESSOA.ItemIndex = 0) then
                  cModel.SetTIPOPESSOA('F') else
                if (RGR_TIPOPESSOA.ItemIndex = 1) then
                  cModel.SetTIPOPESSOA('J');
                cModel.SetNumCpfCnpj(EDT_NUMCPFCNPJ.Text);
                cModel.SetNomeFantasia(EDT_NOMEFANTASIA.Text);
                cModel.SetRazaoSocial(EDT_RAZAOSOCIAL.Text);
                cModel.SetEmail(EDT_EMAIL.Text);
                cModel.SetNumTelefone(StrToIntDef(EDT_NUMTELEFONE.Text,-1));
                cModel.SetNumCelular(StrToIntDef(EDT_NUMCELULAR.Text,-1));
                cModel.SetSite(EDT_SITE.Text);
                cModel.SetLogradouroCep(StrToIntDef(EDT_LOGRADOUROCEP.Text,-1));
                cModel.SetLogradouro(EDT_LOGRADOURO.Text);
                cModel.SetLogradouroNum(StrToIntDef(EDT_LOGRADOURONUM.Text,-1));
                cModel.SetLogradouroComp(EDT_LOGRADOUROCOMP.Text);
                cModel.SetLogradouroBairro(EDT_LOGRADOUROBAIRRO.Text);
                cModel.SetLogradouroUf(EDT_LOGRADOUROUF.Text);
                cModel.SetLogradouroCidade(EDT_LOGRADOUROCIDADE.Text);
                Result := True;
            end;
        end;      }
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasontrol.qOperationForm(pDataSet:TDataSet;pTableName:string;
OpType:Integer): Boolean;
begin
  try
    if Assigned(pDataSet) then
    begin
      if Assigned(cMDao) then
      begin
        with (cMDao) do
        begin
          if (pTableName <> '') then
          begin
            if (OpType > 0) and (OpType <=4) then
            begin
              cMDao.SFD1SetOperationType(OpType);
              case SFD1qOperationType of
                1 : Result := SFD1Insert;
                2 : Result := SFD1Update;
                3 : Result := SFD1Delete;
                //4 :
              end;
            end;
          end;
        end;
      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

function TEmpresasontrol.BackRecords(Form: TObject): Boolean;
begin
    try
{        with (Form as TfrmGerCadEmpresa) do
        begin
            if (FFcm.qFormControlState in [2]) then
            begin
                with (cModel) do
                begin
                  if (qTipoPessoa = 'F') then
                    RGR_TIPOPESSOA.ItemIndex := 0 else
                  if (qTipoPessoa = 'J') then
                    RGR_TIPOPESSOA.ItemIndex := 1;
                  EDT_NUMCPFCNPJ.Text := qNumCpfCnpj;
                  EDT_NOMEFANTASIA.Text := qNomeFantasia;
                  EDT_RAZAOSOCIAL.Text := qRazaoSocial;
                  EDT_EMAIL.Text := qEmail;
                  EDT_NUMTELEFONE.Text := IntToStr(qNumTelefone);
                  EDT_NUMCELULAR.Text := IntToStr(qNumCelular);
                  EDT_SITE.Text := qSite;
                  EDT_LOGRADOUROCEP.Text := IntToStr(qLogradouroCep);
                  EDT_LOGRADOURO.Text := qLogradouro;
                  EDT_LOGRADOURONUM.Text := IntToStr(qLogradouroNum);
                  EDT_LOGRADOUROBAIRRO.Text := qLogradouroBairro;
                  EDT_LOGRADOUROUF.Text := qLogradouroUf;
                  EDT_LOGRADOUROCIDADE.Text := qLogradouroCidade;
                end;
            end;
        end;    }
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasontrol.Insert(pTableName:string): Boolean;
begin
  try
    if Assigned(cMDao) then
    begin
      with (cMDao) do
      begin
        if (pTableName <> '') then
        begin
          cMDao.SFD1SetOperationType(1);
        end;
      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

function TEmpresasontrol.Update(pTableName:string): Boolean;
begin
  try
    if Assigned(cMDao) then
    begin
      with (cMDao) do
      begin
        if (pTableName <> '') then
        begin
          cMDao.SFD1SetOperationType(1);
        end;
      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

function TEmpresasontrol.Delete(pTableName:string): Boolean;
begin
  try
    if Assigned(cMDao) then
    begin
      with (cMDao) do
      begin
        if (pTableName <> '') then
        begin
          cMDao.SFD1SetOperationType(1);
        end;
      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

{function TEmpresasontrol.FillsCdsScreening(pTableName:string): Boolean;
begin
  try
    if Assigned(cMDao) then
    begin
      with (cMDao) do
      begin
        if (pTableName <> '') then
        begin
          cMDao.SetOperationType(1);
        end;

      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;}

function TEmpresasontrol.Save(pTableName:string): Boolean;
begin
  try
    if Assigned(cMDao) then
    begin
      with (cMDao) do
      begin
        if (pTableName <> '') then
        begin
          cMDao.SFD1SetOperationType(1);
        end;
      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

function TEmpresasontrol.Cancel(pTableName:string): Boolean;
begin
  try
    if Assigned(cMDao) then
    begin
      with (cMDao) do
      begin
        if (pTableName <> '') then
        begin
          cMDao.SFD1SetOperationType(1);
        end;
      end;
    end;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

end.
