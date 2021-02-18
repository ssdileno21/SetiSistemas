unit ufrmControleVendaManual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, uLocate, Vcl.Menus;

type
  TfrmControleVendaManual = class(TForm)
    Panel4: TPanel;
    sbInsert: TSpeedButton;
    sbUpdate: TSpeedButton;
    sbDel: TSpeedButton;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    sbPrint: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    sbFormaPagto: TSpeedButton;
    edtFormaPagto: TEdit;
    dbeFormaPagto: TDBEdit;
    Label3: TLabel;
    dbeTotalPagar: TDBEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    dbeCodigo: TDBEdit;
    dbeCliente: TDBEdit;
    edtCliente: TEdit;
    DBEdit2: TDBEdit;
    Edit4: TEdit;
    sbCliente: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel12: TPanel;
    lbLogradouro: TLabel;
    dbLogradouro: TDBText;
    lbLogradouroNum: TLabel;
    dbLogradouroNum: TDBText;
    lbLogradouroComp: TLabel;
    dbLogradouroComp: TDBText;
    lbLogradouroBairro: TLabel;
    dbLogradouroBairro: TDBText;
    lbLogradouroCidade: TLabel;
    dbLogradouroCidade: TDBText;
    lbLogradouroUf: TLabel;
    dbLogradouroUf: TDBText;
    lbLogradouroCep: TLabel;
    dbLogradouroCep: TDBText;
    Label11: TLabel;
    dbRegiao: TDBText;
    Label12: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    DBText2: TDBText;
    Panel13: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    sbClear: TSpeedButton;
    sbSearch: TButton;
    PopupMenu1: TPopupMenu;
    sbSearch1: TMenuItem;
    sbSearch2: TMenuItem;
    sbSearch3: TMenuItem;
    sbSearch4: TMenuItem;
    sbSearch0: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure sbSearch0Click(Sender: TObject);
    procedure sbSearch1Click(Sender: TObject);
    procedure sbSearch2Click(Sender: TObject);
  private
    FRegExists: Boolean;
    FidStatus: Integer;
    FLocate : TLocate;
    { Private declarations }
    procedure ButtonsControl;
    procedure ComponentsControl(pClear:Boolean=False);
    procedure SetRegExists(const Value: Boolean);
    procedure SetidStatus(const Value: Integer);
    procedure PesquisaVenda(pTag:Integer;pCaption:string);
    property cLocate : TLocate read FLocate write FLocate;
  public
    { Public declarations }
    property qidStatus : Integer read FidStatus write SetidStatus;
    property qRegExists : Boolean read FRegExists write SetRegExists;

  end;

var
  frmControleVendaManual: TfrmControleVendaManual;

implementation

{$R *.dfm}

{ TfrmControleVendaManual }

procedure TfrmControleVendaManual.ButtonsControl;
begin
    try
        {0 : INICIAL; 1 : SEARCH; 2 : INSERT; 3 : UPDATE}

        sbSearch.Enabled := (qidStatus in [0,1]);
        sbInsert.Enabled := (qidStatus in [0,1]);
        sbUpdate.Enabled := (qidStatus in [1]) and qRegExists;
        sbDel.Enabled    := (qidStatus in [1]) and qRegExists;
        sbSave.Enabled   := (qidStatus in [2,3]);
        sbCancel.Enabled := (qidStatus in [1,2,3]);
        sbPrint.Enabled  := (qidStatus in [1]) and qRegExists;
        sbClear.Enabled  := (qidStatus in [1,2,3]);
    finally

    end;
end;

procedure TfrmControleVendaManual.ComponentsControl(pClear:Boolean);
var
    i : Integer;
begin
    try
      for i := 0 to ComponentCount -1 do
      begin
        if Components[i].Tag <> 99 then
        begin
            //READONLY
            if (Components[i] is TDBEdit) and (pClear = false) then
              TDBEDIT(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TEdit) and (pClear = false) then
              TEdit(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TMaskEdit) and (pClear = false) then
              TMaskEdit(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBRadioGroup) and (pClear = false) then
              TDBRadioGroup(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBMemo) and (pClear = false) then
              TDBMemo(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBComboBox) and (pClear = false) then
              TDBComboBox(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBLookupComboBox) and (pClear = false) then
              TDBLookupComboBox(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBCheckBox) and (pClear = false) then
              TDBCheckBox(Components[i]).ReadOnly := (qidStatus in [0,1]);
            //CLEAR/CHECK
            if (qidStatus in [0,2]) or (pClear) then
            begin
              if (Components[i] is TDBEdit) then
                TDBEDIT(Components[i]).Clear;
              if (Components[i] is TEdit) then
                TEdit(Components[i]).Clear;
              if (Components[i] is TMaskEdit) then
                TMaskEdit(Components[i]).Clear;
              if (Components[i] is TDBMemo) then
                TDBMemo(Components[i]).Lines.Clear;
              if (Components[i] is TDBComboBox) then
                TDBComboBox(Components[i]).Clear;
              if (Components[i] is TDBLookupComboBox) then
                TDBLookupComboBox(Components[i]).KeyValue := 0;
              if (Components[i] is TDBCheckBox) then
                TDBCheckBox(Components[i]).Checked := False;
              if (Components[i] is TCheckBox) then
                TCheckBox(Components[i]).Checked := False;
            end;
            if (qidStatus in [0]) or (pClear) then
            begin
              if (Components[i] is TDBText) then
                TDBText(Components[i]).Visible := False;
            end else
            begin
              if (Components[i] is TDBText) then
                TDBText(Components[i]).Visible := True;
            end;
        end;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.FormShow(Sender: TObject);
begin
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.PesquisaVenda(pTag:Integer;pCaption:string);
var
  i                     : Integer;
  vNameField            : string;
  vInitialSearchCommand : string;
  vSearchCommand        : string;
  vSearchParam          : string;
  vCommandProc          : string;
  vNumParameters        : Integer;
  vNumP                 : Integer;
  vTableName            : string;
  vReturnType           : Integer;
  vSetSearchType        : Integer;
  vSearchType           : Integer;
  vKeyFieldName         : string;
  vWhereComplement      : string;
  vOrderBy              : string;
  vGroupBy              : string;
  vFormCaption          : string;
  vReturnFieldName      : string;
  vProviderFields       : string;
begin
//------------------ P A R A M E T R O S  E D I T A V E I S ------------------//

// INFORME O TIPO DE RETORNO : 1 - FIELDVALUE; 2 - DATASET; 3 - DATASETPROVIDER
      vReturnType := 1;

// INFORME O TYPE DA PESQUISA : 0 - MODO ANTIGO(DTM); 1 - MODO NOVO(CLASS)
      vSetSearchType := 1;

// INFORME A QUANTIDADE DE PARAMETROS DA PROCEDURE
      vNumParameters := 10;

// INFORME SE A CONSULTA SERA 0 - POR COMANDO;  1 - POR TABELA
      vSearchType := 0;

// INFORME O PRIMEIRO CAMPO CHAVE DA TABELA
      vKeyFieldName := 'VENDA_CODIGO';

// CLAUSULA WHERE COM A INFORMAÇÃO 'WHERE' + AS CONDIÇÕES
      vWhereComplement := '';

// ORDER BY COM A INFORMAÇÃO 'ORDER BY' + OS CAMPOS
      vOrderBy := 'ORDER BY VENDA_CODIGO, CLIENTE_CODIGO';

// GROUP BY COM A INFORMAÇÃO 'GROUP BY' + OS CAMPOS
      vGroupBy := '';

// CAPTION DO FORM
      vFormCaption := Self.Caption;

// NOME DO FIELD DE RETORNO : OBS - SOMENTE FIELDS INTEGER
      vReturnFieldName := 'VENDA_CODIGO';

// INFORME A LISTA DE FIELDS QUE ENTRARAM NO PROVIDER, SEPARE POR (;)
      vProviderFields := '';//'ID;NOME;CODIGOINTERNO;DATCADASTRO'


// NUMERE AS TAGS DOS BOTOES NO CASE ABAIXO, COM SEUS RESPECTIVOS NAMES
      case pTag of
        0   : vNameField := 'ID';
        1   : vNameField := 'ID_CLIENTE';
        2   : vNameField := 'NOME_CLIENTE';
        3   : vNameField := 'ID_FUNCIONARIO';
        4   : vNameField := 'NOME_FUNCIONARIO';
        5   : vNameField := 'ID_ROTAS';
        6   : vNameField := 'ROTA';
        7   : vNameField := 'DATCADASTRO';
        8   : vNameField := 'FORMAPAGTO';
        9   : vNameField := 'DATPAGTO';
      end;

//INFORME O SELECT DA PROCEDURE SEM O PARENTESES DOS PARAMETROS
      vCommandProc := ' SELECT * FROM SP_LISTA_VENDAS_MANUAIS ';

//INFORME O NOME DA TABELA PRINCIPAL
      vTableName := 'TBVENDAMANUAL';

//------------------ P A R A M E T R O S  N Ã O  E D I T A V E I S -----------//

      vNumP := vNumParameters -1;

      vSearchParam := ':'+vNameField;

      vInitialSearchCommand := vCommandProc;

      vInitialSearchCommand := vInitialSearchCommand + '(';

      vSearchCommand := vInitialSearchCommand;

      for i := 0 to vNumP do
      begin
          if (i < vNumP) then
          begin
             vInitialSearchCommand := vInitialSearchCommand + 'NULL,';
            if (pTag = i) then
              vSearchCommand := vSearchCommand + vSearchParam+','
            else
              vSearchCommand := vSearchCommand + 'NULL,';
          end else
          begin
             vInitialSearchCommand := vInitialSearchCommand + 'NULL) ';
             if (pTag = i) then
               vSearchCommand := vSearchCommand +vSearchParam+') '
             else
               vSearchCommand := vSearchCommand + 'NULL) ';
          end;
      end;

      {
        ReturnType        : 1 = Field; 2 : DataSet;
        Type              : 1 = Por comando sql; 2 : Por tabela;
        ComSql            : Comando sql;
        TableName         : Nome da tabela;
        Field             : Field que sera pesquisado;
        KeyField          : Campo chave da tabela;
        WhereComplement   : Complemento da cláusula where, add 'and';
        OrderBy           : Linha do OrderBy, incluir a informação 'Order By ';
        GroupBy           : Linha do GroupBy, incluir a informação 'Group By ';
        SearchLabel       : Caption para o campo pesquisado;
        FormTitleSearch   : Título para tela de pesquisa;
        GetFieldReturn    : Nome para o field de retorno;
        ListFieldProvider : Lista para o provider;
      }
      cLocate := TLocate.Create;
      cLocate.SetSearchType(vSetSearchType);
      cLocate.SearchSetParams(vReturnType,
                              vSearchType,
                              vInitialSearchCommand,
                              vTableName,
                              vNameField,
                              vKeyFieldName,
                              vWhereComplement,
                              vOrderBy,
                              vGroupBy,
                              pCaption,
                              vFormCaption,
                              vReturnFieldName,
                              vProviderFields,
                              pTag,
                              vSearchCommand
                              );
    ShowMessage(cLocate.qReturn);
    SetidStatus(1);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.sbCancelClick(Sender: TObject);
begin
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.sbDelClick(Sender: TObject);
begin
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.sbInsertClick(Sender: TObject);
begin
    SetidStatus(2);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.sbPrintClick(Sender: TObject);
begin
    SetidStatus(1);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.sbSaveClick(Sender: TObject);
begin
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.sbSearch0Click(Sender: TObject);
begin
    PesquisaVenda(sbSearch0.Tag,sbSearch0.Caption);
end;

procedure TfrmControleVendaManual.sbSearch1Click(Sender: TObject);
begin
    PesquisaVenda(sbSearch1.Tag,sbSearch1.Caption);
end;

procedure TfrmControleVendaManual.sbSearch2Click(Sender: TObject);
begin
    PesquisaVenda(sbSearch2.Tag,sbSearch2.Caption);
end;

procedure TfrmControleVendaManual.sbUpdateClick(Sender: TObject);
begin
    SetidStatus(3);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.SetidStatus(const Value: Integer);
begin
    FidStatus := Value;
end;

procedure TfrmControleVendaManual.SetRegExists(const Value: Boolean);
begin
    FRegExists := Value;
end;

end.
