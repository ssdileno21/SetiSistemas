unit ufrmCadFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmCadPadrao, Vcl.ImgList, Vcl.Menus, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, MIDASLIB;

type
  TfrmCadFornecedores = class(TfrmCadPadrao)
    dbeNome: TDBEdit;
    Label2: TLabel;
    TabSheet5: TTabSheet;
    Label13: TLabel;
    dbeCpfCnpj: TDBEdit;
    Label14: TLabel;
    dbeTelefone: TDBEdit;
    Label15: TLabel;
    dbeCelular: TDBEdit;
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
    dbcStatus: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure dbeCpfCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure dbeTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCelularKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCepKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

{$R *.dfm}

procedure TfrmCadFornecedores.dbeCelularKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFornecedores.dbeCepKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFornecedores.dbeCpfCnpjKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFornecedores.dbeNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFornecedores.dbeTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    Action := caFree;
    frmCadFornecedores := nil;
end;

procedure TfrmCadFornecedores.FormCreate(Sender: TObject);
begin
{
    LISTA DE PARAMETROS PARA O FRMFORMPADRAO

    ID    | PROCEDURE               | OBRIGATÓRIO
    -------------------------------------------------
    1     | SetCaptionForm          | S
    2     | SetQryForm              | S
    3     | SetGroupByForm          | N
    4     | SetOrderByForm          | S
    5     | SetTableForm            | S
    6     | SetGenForm              | S
    7     | SetKeyFieldForm         | S
    8     | SetListProviderForm     | S
    9     | SetListMenuForm         | S
    10    | SetListMenuCaptionForm  | S
    11    | SetListRequiredFields   | S

}
    SetCaptionForm('Cadastro de Fornecedores');
    SetQryForm('SELECT                   '+
              '   ID                    '+
              '   ,TIPOPESSOA           '+
              '   ,NOME                 '+
              '   ,EMAIL                '+
              '   ,NUMTELEFONE          '+
              '   ,NUMCELULAR           '+
              '   ,SITE                 '+
              '   ,LOGRADOUROCEP        '+
              '   ,LOGRADOURO           '+
              '   ,LOGRADOURONUM        '+
              '   ,LOGRADOUROCOMP       '+
              '   ,LOGRADOUROBAIRRO     '+
              '   ,LOGRADOUROUF         '+
              '   ,LOGRADOUROCIDADE     '+
              '   ,OBSERVACAO           '+
              '   ,DATCADASTRO          '+
              '   ,DATATUALIZACAO       '+
              '   ,STATUS               '+
              '   ,CPFCNPJ              '+
              '   ,DATULTMOVIMENTACAO   '+
              'FROM TBCADFORNECEDOR     '+
              ' WHERE 1 = 1             ');
    SetTableForm('TBCADFORNECEDOR');
    SetGenForm('GEN_ID_FORNECEDOR');
    SetKeyFieldForm('ID');
    SetListProviderForm('ID;NOME;STATUS;NUMTELEFONE;NUMCELULAR;EMAIL');
    SetListMenuForm('ID;NOME');
    SetListMenuCaptionForm('Por Codigo;Por Nome');
    SetOrderByForm('ORDER BY ID');
    SetListRequiredFields('dbeNome');
  inherited;
end;

procedure TfrmCadFornecedores.sbInsertClick(Sender: TObject);
begin
  inherited;
  dbrTipoCliente.ItemIndex := 0;
    dbcStatus.Checked := True;
end;

end.
