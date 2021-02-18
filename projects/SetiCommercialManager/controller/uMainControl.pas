unit uMainControl;

interface

uses uMess, SysUtils, Forms, Buttons, StdCtrls, Vcl.Graphics,Windows,Messages,
Variants,Classes,Controls,Dialogs,DBGrids, uMainModel, uMainDao;

    type TMainControl = class
      private
          FcModel : TMainModel;
          FcDao : TMainDao;
      public
          constructor Create(Form:TObject);
          procedure SetarUsuarioLogado(Form:TObject);
          function GetUsuarioLogadoNome : string;
          function GetUsuarioLogadoId : Integer;
          function GetUsuarioLogadoLogin : string;
      published
          property cModel : TMainModel read FcModel write FcModel;
          property cDao : TMainDao read FcDao write FcDao;

    end;

implementation

{ TMainControl }

uses ufrmMain;

constructor TMainControl.Create(Form: TObject);
begin
    try
        if (Form <> Nil) then
        begin
            cModel := TMainModel.Create;
            cDao := TMainDao.Create;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TMainControl.GetUsuarioLogadoId: Integer;
begin
    try
      Result := -1;
      if Assigned(cModel) then
      begin
        Result := cModel.qLogadoId;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TMainControl.GetUsuarioLogadoLogin: string;
begin
    try
      Result := '';
      if Assigned(cModel) then
      begin
        Result := cModel.qLogadoLogin;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TMainControl.GetUsuarioLogadoNome: string;
begin
    try
      Result := '';
      if Assigned(cModel) then
      begin
        Result := cModel.qLogadoNome;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TMainControl.SetarUsuarioLogado(Form: TObject);
begin
    try
      if Assigned(cModel) then
      begin
        with (Form as TfrmMain) do
        begin
          cModel.SetLogadoLogin(qUsuLogin);
          if Assigned(cDao) then
          begin
            cDao.SetInformacaoesUsuarioLogado(cModel);
          end;
        end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
