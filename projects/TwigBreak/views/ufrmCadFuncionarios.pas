unit ufrmCadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmCadPadrao, Vcl.ImgList, Vcl.Menus, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmCadFuncionarios = class(TfrmCadPadrao)
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
    TabSheet3: TTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    dbcbxVendedor: TDBCheckBox;
    dbcbxTecnico: TDBCheckBox;
    dbeAniversario: TDBEdit;
    dbeDatAdminissao: TDBEdit;
    dbeDatDesligamento: TDBEdit;
    dbcStatus: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure dbeCepKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCelularKeyPress(Sender: TObject; var Key: Char);
    procedure sbInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFuncionarios: TfrmCadFuncionarios;

implementation

{$R *.dfm}

procedure TfrmCadFuncionarios.dbeCelularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFuncionarios.dbeCepKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFuncionarios.dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFuncionarios.dbeNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFuncionarios.dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFuncionarios.FormCreate(Sender: TObject);
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
    SetCaptionForm('Cadastro de funcionários');
    SetQryForm('SELECT                  '+
              '   ID                   '+
              '   ,NOME                '+
              '   ,CODIGOINTERNO       '+
              '   ,EMAIL               '+
              '   ,CPFCNPJ             '+
              '   ,NUMTELEFONE         '+
              '   ,NUMCELULAR          '+
              '   ,DATANIVERSARIO      '+
              '   ,DATCADASTRO         '+
              '   ,DATULTMOVIMENTACAO  '+
              '   ,OBSERVACAO          '+
              '   ,LOGRADOUROCEP       '+
              '   ,LOGRADOURO          '+
              '   ,LOGRADOURONUM       '+
              '   ,LOGRADOUROCOMP      '+
              '   ,LOGRADOUROBAIRRO    '+
              '   ,LOGRADOUROUF        '+
              '   ,LOGRADOUROCIDADE    '+
              '   ,DATADMISSAO         '+
              '   ,DATDESLIGAMENTO     '+
              '   ,VENDEDOR            '+
              '   ,TECNICO             '+
              '   ,STATUS              '+
              'FROM TBCADFUNCIONARIOS  '+
              ' WHERE 1 = 1             ');
    SetTableForm('TBCADFUNCIONARIOS');
    SetGenForm('GEN_ID_FUNCIONARIO');
    SetKeyFieldForm('ID');
    SetListProviderForm('ID;NOME;CODIGOINTERNO;DATCADASTRO');
    SetListMenuForm('ID;NOME');
    SetListMenuCaptionForm('Por Codigo;Por Nome');
    SetOrderByForm('ORDER BY ID');
    SetListRequiredFields('dbeNome');
    SetListDateFieldForm('dbeAniversario;dbeDatAdminissao;dbeDatDesligamento');
  inherited;
end;

procedure TfrmCadFuncionarios.sbInsertClick(Sender: TObject);
begin
  inherited;
  dbcbxVendedor.Checked := True;
    dbcStatus.Checked := True;
end;

end.
