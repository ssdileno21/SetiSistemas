unit ufrmCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, uSetiConnects, uMess,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, MIDASLIB;

type
  TfrmCadEmpresa = class(TForm)
    sqlEmpresa: TSQLQuery;
    dtsEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    lbCodUnico: TLabel;
    lbNomFantasia: TLabel;
    lbRazaoSocial: TLabel;
    lbNumCnpj: TLabel;
    lbCep: TLabel;
    lbNum: TLabel;
    lbBairro: TLabel;
    lbUf: TLabel;
    lbTelefone1: TLabel;
    lbTelefone2: TLabel;
    lbEmail: TLabel;
    lbCidade: TLabel;
    lbComplemento: TLabel;
    lbLogradouro: TLabel;
    lbInscricaoEs: TLabel;
    lbInscricaoMunicipal: TLabel;
    lbIE: TLabel;
    Label1: TLabel;
    dbeCodUnico: TDBEdit;
    dbeNomeFantasia: TDBEdit;
    dbeRazaoSocial: TDBEdit;
    dbeCnpj: TDBEdit;
    dbeCep: TDBEdit;
    dbeNumero: TDBEdit;
    dbeBairro: TDBEdit;
    dbeUF: TDBEdit;
    dbeTel1: TDBEdit;
    dbeTel2: TDBEdit;
    dbeEmail: TDBEdit;
    dbeCidade: TDBEdit;
    dbeComplemento: TDBEdit;
    dbeLogradouro: TDBEdit;
    dbeInscricaoEstadual: TDBEdit;
    dbeInscricaoMunicipal: TDBEdit;
    dbeIEST: TDBEdit;
    dbeFax: TDBEdit;
    sbNew: TSpeedButton;
    sbEdit: TSpeedButton;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure sbNewClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbCloseClick(Sender: TObject);
  private
    { Private declarations }
    FConnects : TSetiConnects;
    procedure Open;
    procedure New;
    procedure Edit;
    procedure Save;
    procedure Cancel;
  public
    { Public declarations }
    property qConnects : TSetiConnects read FConnects write FConnects;
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;

implementation

{$R *.dfm}

{ TfrmCadEmpresa }

procedure TfrmCadEmpresa.Cancel;
begin
    try
      cdsEmpresa.Cancel;
      sbSave.Enabled := False;
      sbCancel.Enabled := False;
      sbNew.Enabled := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.Edit;
begin
    try
      cdsEmpresa.Edit;
      sbSave.Enabled := True;
      sbCancel.Enabled := True;
      sbNew.Enabled := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    frmCadEmpresa := nil;
end;

procedure TfrmCadEmpresa.FormShow(Sender: TObject);
begin
    Open;
    sbSave.Enabled := False;
    sbCancel.Enabled := False;
end;

procedure TfrmCadEmpresa.New;
begin
    try
      sbSave.Enabled := True;
      sbCancel.Enabled := True;
      sbNew.Enabled := False;
      cdsEmpresa.Append;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.Open;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlEmpresa.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      cdsEmpresa.Open;
      if NOT (cdsEmpresa.IsEmpty) then
      begin
        sbNew.Enabled := False;
        sbEdit.Enabled  := True;
      end
      else
      begin
        sbNew.Enabled := True;
        sbEdit.Enabled  := False;
      end;
      sbSave.Enabled := False;
      sbCancel.Enabled := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.Save;
begin
    try
      if (dbeCodUnico.Text = '') then
      begin
        SetiMens(2,'� obrigat�rio informar o c�digo da empresa.');
        Exit;
      end;

      cdsEmpresa.Post;
      cdsEmpresa.ApplyUpdates(0);
      sbSave.Enabled := False;
      sbCancel.Enabled := False;
      SetiMens(1,'Opera��o realizada com sucesso.')
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.sbCancelClick(Sender: TObject);
begin
  Cancel;
end;

procedure TfrmCadEmpresa.sbCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmCadEmpresa.sbEditClick(Sender: TObject);
begin
  Edit;
end;

procedure TfrmCadEmpresa.sbNewClick(Sender: TObject);
begin
    New;
end;

procedure TfrmCadEmpresa.sbSaveClick(Sender: TObject);
begin
  Save;
end;

end.
