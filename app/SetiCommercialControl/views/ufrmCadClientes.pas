unit ufrmCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmCadPadrao, Vcl.ImgList, Vcl.Menus, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider, MIDASLIB, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TfrmCadClientes = class(TfrmCadPadrao)
    dbeNome: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbeCodInterno: TDBEdit;
    TabSheet5: TTabSheet;
    Label13: TLabel;
    dbeCpfCnpj: TDBEdit;
    Label14: TLabel;
    dbeTelefone: TDBEdit;
    Label15: TLabel;
    dbeCelular: TDBEdit;
    Label17: TLabel;
    Label4: TLabel;
    dbeEmail: TDBEdit;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    dbeCep: TDBEdit;
    Label7: TLabel;
    dbeLogradouro: TDBEdit;
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
    Label5: TLabel;
    dbeObservacao: TDBMemo;
    dbrTipoCliente: TDBRadioGroup;
    dbeAniversario: TDBEdit;
    dbcStatus: TDBCheckBox;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    Label20: TLabel;
    dbeRegiao: TDBEdit;
    Label21: TLabel;
    dbeSetor: TDBEdit;
    sbRegiao: TSpeedButton;
    sbSetor: TSpeedButton;
    edtRegiao: TEdit;
    edtSetor: TEdit;
    Label22: TLabel;
    dbeRota: TDBEdit;
    edtRota: TEdit;
    SpeedButton1: TSpeedButton;
    sbRota: TSpeedButton;
    TabSheet3: TTabSheet;
    Label23: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label24: TLabel;
    DBEdit6: TDBEdit;
    Label25: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure dbeNumKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCelularKeyPress(Sender: TObject; var Key: Char);
    procedure sbRegiaoClick(Sender: TObject);
    procedure dbeRegiaoChange(Sender: TObject);
    procedure dbeSetorChange(Sender: TObject);
    procedure sbSetorClick(Sender: TObject);
    procedure dbeSetorKeyPress(Sender: TObject; var Key: Char);
    procedure dbeRegiaoKeyPress(Sender: TObject; var Key: Char);
    procedure sbRotaClick(Sender: TObject);
    procedure dbeRotaChange(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure dbeCepChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

{$R *.dfm}

uses ufrmCadRegioes, ufrmCadSetores, ufrmCadRotas, uMess, uSetiConfig,
  uSetiUseful;

procedure TfrmCadClientes.dbeCelularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    NumberValidate(Sender,Key);
end;

procedure TfrmCadClientes.dbeCepChange(Sender: TObject);
var
  vList : TStringList;
  vLogradouro, vBairro, vCidade, vUF : string;
begin
  inherited;
 { try
    if (dbeCep.Text <> '') then
    begin
     vList := TStringList.Create;
     vList.Text := RetornaEndViaCep(dbeCep.Text);
     if (vList.Text <> '') then
     begin
        vLogradouro :=
          vList.Values['TIPO_LOGRADOURO']+' '+vList.Values['LOGRADOURO'];
        vLogradouro := SetiUsefulRetiraAcentos(vLogradouro);
        vLogradouro := StringReplace(vLogradouro,'+',StringOfChar(' ', 1),[rfReplaceAll]);

        vBairro := vList.Values['BAIRRO'];
        vBairro := SetiUsefulRetiraAcentos(vBairro);
        vBairro := StringReplace(vBairro,'+',' ',[rfReplaceAll]);
        dbeBairro.Text := vBairro;

        vCidade := vList.Values['CIDADE'];
        vCidade := SetiUsefulRetiraAcentos(vCidade);
        vCidade := StringReplace(vCidade,'+',' ',[rfReplaceAll]);

        vCidade := vList.Values['CIDADE'];
        vCidade := SetiUsefulRetiraAcentos(vCidade);
        vCidade := StringReplace(vCidade,'+',' ',[rfReplaceAll]);

        vUF := vList.Values['UF'];
        vUF := SetiUsefulRetiraAcentos(vCidade);
        vUF := StringReplace(vCidade,'+',' ',[rfReplaceAll]);

        dbeLogradouro.Text := vLogradouro;
        dbeBairro.Text := vBairro;
        dbeCidade.Text := vCidade;
        dbeUf.Text := vUF;
     end;
    end;
  finally
    if Assigned(vList) then
      vList := Nil;
  end;   }
end;

procedure TfrmCadClientes.dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    NumberValidate(Sender,Key);
end;

procedure TfrmCadClientes.dbeNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    NumberValidate(Sender,Key);
end;

procedure TfrmCadClientes.dbeRegiaoChange(Sender: TObject);
begin
  inherited;
    GetFillDescById(dbeRegiao,
                    edtRegiao,
                    'TBCADREGIOES',
                    'ID',
                    'DESCRICAO');
end;

procedure TfrmCadClientes.dbeRegiaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    NumberValidate(Sender,Key);
end;

procedure TfrmCadClientes.dbeRotaChange(Sender: TObject);
begin
  inherited;
    GetFillDescById(dbeRota,
                    edtRota,
                    'TBCADROTAS',
                    'ID',
                    'DESCRICAO');
end;

procedure TfrmCadClientes.dbeSetorChange(Sender: TObject);
begin
  inherited;
    GetFillDescById(dbeSetor,
                    edtSetor,
                    'TBCADSETORES',
                    'ID',
                    'DESCRICAO');
end;

procedure TfrmCadClientes.dbeSetorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    NumberValidate(Sender,Key);
end;

procedure TfrmCadClientes.dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    NumberValidate(Sender,Key);
end;

procedure TfrmCadClientes.FormCreate(Sender: TObject);
begin
{
    LISTA DE PARAMETROS PARA O FRMFORMPADRAO

    ID    | PROCEDURE               | OBRIG | OBS
    -------------------------------------------------
    1     | SetCaptionForm          | S     |
    2     | SetQryForm              | S     |
    3     | SetGroupByForm          | N     |
    4     | SetOrderByForm          | S     |
    5     | SetTableForm            | S     |
    6     | SetGenForm              | S     |
    7     | SetKeyFieldForm         | S     |
    8     | SetListProviderForm     | S     |
    9     | SetListMenuForm         | S     |
    10    | SetListMenuCaptionForm  | S     |
    11    | SetListRequiredFields   | S     |
    12    | SetListDateFieldForm    | N     | N COM DATA = ERRO
}
    SetCaptionForm('Cadastro de clientes');
    SetQryForm('SELECT                   '+
              '   ID                    '+
              '   ,NOME                 '+
              '   ,NOMEFANTASIA         '+
              '   ,CODIGOINTERNO        '+
              '   ,EMAIL                '+
              '   ,TIPOPESSOA           '+
              '   ,CPFCNPJ              '+
              '   ,NUMTELEFONE          '+
              '   ,NUMCELULAR           '+
              '   ,DATANIVERSARIO       '+
              '   ,DATCADASTRO          '+
              '   ,DATULTMOVIMENTACAO   '+
              '   ,OBSERVACAO           '+
              '   ,LOGRADOUROCEP        '+
              '   ,LOGRADOURO           '+
              '   ,LOGRADOURONUM        '+
              '   ,LOGRADOUROCOMP       '+
              '   ,LOGRADOUROBAIRRO     '+
              '   ,LOGRADOUROUF         '+
              '   ,LOGRADOUROCIDADE     '+
              '   ,STATUS               '+
              '   ,ID_REGIAO            '+
              '   ,ID_SETOR             '+
              '   ,ID_ROTA              '+
              '   ,COMPRADORRESP        '+
              '   ,VLRDESCESPECIAL      '+
              '   ,INSESTADUAL          '+
              'FROM TBCADCLIENTES       '+
              ' WHERE 1 = 1             ');
    SetTableForm('TBCADCLIENTES');
    SetGenForm('GEN_ID_CLIENTE');
    SetKeyFieldForm('ID');
    SetListProviderForm('ID;NOME;CODIGOINTERNO;DATCADASTRO');
    SetListMenuForm('ID;NOME');
    SetListMenuCaptionForm('Por Codigo;Por Nome');
    SetOrderByForm('ORDER BY ID');
    SetListRequiredFields('dbeNome;dbeCpfCnpj');
    SetListDateFieldForm('dbeAniversario');
    SetInfLabelCompName(DBEdit2.Name);
  inherited;
end;

procedure TfrmCadClientes.sbDelClick(Sender: TObject);
begin
  if (dbeCodigo.Text <> '') and
      (dbeNome.Text = 'CONSUMIDOR FINAL') and
        (sConfigDeleteConsumidorFinal = False) then
  begin
    if StrToInt(dbeCodigo.Text) = 1 then
    begin
        SetiMens(2,'A exclusão deste registro não é permitida.');
        Exit;
    end;
  end else
    inherited;
end;

procedure TfrmCadClientes.sbInsertClick(Sender: TObject);
begin
  inherited;
  dbrTipoCliente.ItemIndex := 0;
    dbcStatus.Checked := True;
end;

procedure TfrmCadClientes.sbRegiaoClick(Sender: TObject);
begin
  inherited;
    frmCadRegioes := TfrmCadRegioes.Create(Nil);
    if frmCadRegioes.ShowModal = mrOk then
      dbeRegiao.Text := IntToStr(frmCadRegioes.qIdSelecionado);
end;

procedure TfrmCadClientes.sbRotaClick(Sender: TObject);
begin
  inherited;
    frmCadRotas := TfrmCadRotas.Create(Nil);
    if frmCadRotas.ShowModal = mrOk then
      dbeRota.Text := IntToStr(frmCadRotas.qIdSelecionado);
end;

procedure TfrmCadClientes.sbSetorClick(Sender: TObject);
begin
  inherited;
    frmCadSetores := TfrmCadSetores.Create(Nil);
    if frmCadSetores.ShowModal = mrOk then
      dbeSetor.Text := IntToStr(frmCadSetores.qIdSelecionado);
end;

procedure TfrmCadClientes.sbUpdateClick(Sender: TObject);
begin
  if (dbeCodigo.Text <> '') and
        (dbeNome.Text = 'CONSUMIDOR FINAL') and
          (sConfigUpdateConsumidorFinal = False) then
  begin
    if StrToInt(dbeCodigo.Text) = 1 then
    begin
        SetiMens(2,'A alteração deste registro não é permitida.');
        Exit;
    end;
  end else
  inherited;
end;

end.
