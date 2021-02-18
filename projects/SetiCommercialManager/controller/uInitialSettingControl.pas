unit uInitialSettingControl;

interface

uses uInitialSettingDao, uInitialSettingModel, uMess, SysUtils, Forms, Buttons,
StdCtrls, Vcl.Graphics,Windows,Messages,Variants,Classes,Controls,Dialogs,
DBGrids;

    type TInitialSettingControl = class
      private
          FcModel : TInitialSettingModel;
          FcDao : TInitialSettingDao;
          function SetParametros(Form:TObject) : Boolean;

      public
          function ExisteConexao : Boolean;
          constructor Create(Form:TObject);
          function InserirUsuario(Form:TObject) : Boolean;
          function ValidationIniFile(InforSave : Boolean = False) : Boolean;
      published
          property cModel : TInitialSettingModel read FcModel write FcModel;
          property cDao : TInitialSettingDao read FcDao write FcDao;

    end;

implementation

{ TInitialSettingControl }

uses ufrmInitialSetting, uSetiConfig, uSetiConnects, uSetiUseful;

constructor TInitialSettingControl.Create(Form: TObject);
begin
    try
        if (Form <> Nil) then
        begin
            cModel := TInitialSettingModel.Create;
            cDao := TInitialSettingDao.Create;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingControl.ExisteConexao: Boolean;
begin
    try
      Result := False;
      if Assigned(cDao) then
      begin
        Result := cDao.ExisteConexao;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingControl.InserirUsuario(Form:TObject) : Boolean;
begin
    try
      Result := False;
      if Assigned(cDao) then
      begin
          if Assigned(cModel) then
          begin
            if (SetParametros(Form)) then
            begin
                if (cDao.Insert(cModel)) then
                begin
                  ValidationIniFile(True);
                  Result := True;
                end;
            end;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingControl.ValidationIniFile(InforSave : Boolean):
Boolean;
var
    pPath : string;
    pValue : string;
    pExist : Boolean;
begin
    try
      try
        Result := False;
        pPath := GetCurrentDir+'\'+SConfigInitialFileName;
        pExist := FileExists(pPath);

        if InforSave then
        begin
            if (pExist) then
            begin
                SetiUsefulArqIni(cntArqIniInicializar,pPath,'','');
                SetiUsefulArqIni
                  (
                    cntArqIniGravar,
                    SConfigInitialTagValue,
                    SConfigInitialParam1Name,
                    SConfigInitialParam1Value
                  );
            end else
            begin
              SetiArqIniCreate(
                cntArqIniCriar,
                  GetCurrentDir,
                    SConfigInitialFileName,
                      SConfigInitialTagValue,
                        SConfigInitialParam1Name,
                          SConfigInitialParam1Value);
            end;
            Result := True;
        end else
        begin
            if (pExist) then
            begin
                SetiUsefulArqIni(cntArqIniInicializar,pPath,'','');
                pValue := SetiUsefulArqIni(
                            cntArqIniLer,
                              SConfigInitialTagValue,
                                SConfigInitialParam1Name,'');
                if (pValue = SConfigInitialParam1Value) then
                begin
                    Result := True;
                end;
            end else
            begin
              SetiArqIniCreate(
                cntArqIniCriar,
                  GetCurrentDir,
                    SConfigInitialFileName,
                      SConfigInitialTagValue,
                        SConfigInitialParam1Name,
                          '');
            end;
        end;
      finally
          SetiUsefulArqIni(cntArqIniFinalizar,'','','');
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingControl.SetParametros(Form:TObject) : Boolean;
begin
    try
        Result := False;
        with (Form as TfrmInitialSetting) do
        begin
          if Assigned(cModel) then
          begin
              cModel.SetNome(edtNome.Text);
              cModel.SetLogin(edtLogin.Text);
              cModel.SetSenha(edtSenha.Text);
              cModel.SetSenhaC(edtConfirmarSenha.Text);
              cModel.SetEmail(edtEmail.Text);
              if (cModel.qNome <> '') and
                    (cModel.qLogin <> '') and
                        (cModel.qSenha <> '') and
                            (cModel.qSenhaC <> '') and
                                (cModel.qEmail <> '') then
              begin
                Result := True;
              end;
          end;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

end.
