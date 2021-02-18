{
    **************** UNIT DO PROJETO ****************
    ESTA UNIT DEVERÁ SER MODIFICADA PARA SE ADAPTAR A
    CADA PROJETO.
}
unit uProjects;

interface

uses Forms, Vcl.ComCtrls, Vcl.Dialogs, Vcl.Controls, System.SysUtils;

type TProject = class
  private
    FProjeto : string;
    FLicenca : Boolean;
  public
    constructor Create;virtual;
    destructor destroy;override;
    function GetProjeto : string;
    procedure SetProjeto(Const Value : string);
    function GetLicenca : Boolean;
    procedure SetLicenca(Const Value : Boolean);
    procedure NovoTabShet(FormPai:TForm=nil;PgC:TPageControl=nil;Tv:TTreeView=nil);
    procedure DestruirTabSheet(FormPai:TForm=nil;PgC:TPageControl=nil;Tv:TTreeView=nil);
    function FormsCaption: String;
  published
    property Projeto : string read GetProjeto write SetProjeto;
    property Licenciado : Boolean read GetLicenca write SetLicenca;
end;

Const
{ 1º PASSO: CONST DO PROJETO:
  ALTERAR O VALOR DO cProject PARA O NOME DO PROJETO NOVO;
}
    //Const Padrão = 'SetiFramework';

      cProject = 'SetiFramework';

{ 2º PASSO: IMPLEMENTAR OS NOVOS FORMS DO PROJETO,
  ALT + F11
}


implementation

{ Project }

uses ufrmCadPadrao;

constructor TProject.Create;
Var
  Exe:string;
begin
    Exe := StringReplace(ExtractFileName(Application.ExeName),'.exe','',[rfReplaceAll, rfIgnoreCase]);
    SetProjeto(Exe);
end;

destructor TProject.destroy;
begin

  inherited;
end;

procedure TProject.DestruirTabSheet(FormPai: TForm; PgC: TPageControl;
  Tv: TTreeView);
var
    Tab: TTabSheet;
    iTab: Integer;
    Form: TForm;
begin
      try
          with FormPai do begin
              Tab := PgC.ActivePage;
              iTab := PgC.ActivePageIndex;
              if iTab <> 0 then begin
                  if Assigned(Tab) then begin
                      Tab.Parent := Nil;
                      Tab.PageControl := Nil;
                      FreeAndNil(Tab);
                      PgC.ActivePageIndex := iTab - 1;
                  end;
              end;
          end;
      except
        MessageDlg('Erro ao fechar página.',mtError,[mbOK],0);
      end;
end;

function TProject.FormsCaption: String;
begin
{    Result := '';
    if (Projeto = 'SetiFramework') then begin
      if (Index = 0) then begin
          frmCadPadrao := TfrmCadPadrao.Create(nil);
          Result := frmCadPadrao.Caption;
          frmCadPadrao.Free;
      end;
    end;
    if (Projeto = cProject) then begin
      if (Index = 1) then begin
          //Result := frmCadCadernos;
      end;
    end;  }
end;

function TProject.GetLicenca: Boolean;
begin
    Result := FLicenca;
end;

function TProject.GetProjeto: string;
begin
    Result := FProjeto;
end;

procedure TProject.NovoTabShet(FormPai: TForm; PgC: TPageControl; Tv:TTreeView);
var
    ipag      : TTabSheet;
    i         : Integer;
    ExisteAba : Boolean;
    iForm     : TForm;
    cForm     : String;
begin
    if (FormPai <> nil) and (Licenciado) then begin
        if (Tv <> nil) then begin
            if (Pgc <> nil) then begin
                ExisteAba := False;
                try
                    cForm := FormsCaption(Tv.Selected.StateIndex);
                    for I := 0 to PgC.PageCount -1 do begin
                        if (Pgc.Pages[i].Caption = cForm) then begin
                            ipag := PgC.Pages[i];
                            ExisteAba := True;
                            Break;
                        end;
                    end;
                    if ExisteAba then begin
                        PgC.ActivePage := ipag;
                    end else begin
                        ipag := TTabSheet.Create(PgC);
                        if (Projeto = 'SetiFramework') then begin
                            if Tv.Selected.StateIndex = -1 then
                                iForm := nil else
                            if Tv.Selected.StateIndex = 11 then
                                iForm := TfrmCadPadrao.Create(ipag);
                        end;
                        {if (Projeto = 'CadernoFinanceiro') then begin
                            if Tv.Selected.StateIndex = -1 then
                                iForm := nil else
                            if Tv.Selected.StateIndex = 0 then
                                iForm := TfrmCadCadernos.Create(ipag);
                        end;}
                        if iForm <> nil then begin
                            ipag.PageControl := PgC;
                            iForm.Parent := ipag;
                            iForm.Align := alClient;
                            iForm.Visible := True;
                            ipag.Caption := iForm.Caption;
                            iForm.BorderStyle := bsNone;
                            PgC.ActivePage := ipag;
                        end;
                    end;
                except
                  MessageDlg('Erro ao criar página.',mtError,[mbOK],0);
                end;
            end;
        end;
    end;
end;

procedure TProject.SetLicenca(const Value: Boolean);
begin
    FLicenca := Value;
end;

procedure TProject.SetProjeto(const Value: string);
begin
    FProjeto := Value;
end;

end.
