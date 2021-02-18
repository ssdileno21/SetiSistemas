unit ufrmGerCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, uEmpresasControl, Data.DB,
  Datasnap.DBClient, Vcl.Menus, uSetiGbRegions, uRegions;

type
  TfrmGerCadEmpresa = class(TfrmStandardReg)
    Edit18: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    EDT_NUMCPFCNPJ: TEdit;
    Label3: TLabel;
    EDT_RAZAOSOCIAL: TEdit;
    Label1: TLabel;
    EDT_NOMEFANTASIA: TEdit;
    Label2: TLabel;
    RGR_TIPOPESSOA: TRadioGroup;
    TabSheet2: TTabSheet;
    EDT_LOGRADOURO: TEdit;
    EDT_LOGRADOUROBAIRRO: TEdit;
    EDT_LOGRADOUROCOMP: TEdit;
    EDT_LOGRADOURONUM: TEdit;
    Label13: TLabel;
    EDT_LOGRADOUROCEP: TEdit;
    Label12: TLabel;
    EDT_SITE: TEdit;
    Label11: TLabel;
    EDT_NUMCELULAR: TEdit;
    Label10: TLabel;
    EDT_NUMTELEFONE: TEdit;
    Label9: TLabel;
    EDT_EMAIL: TEdit;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    opLogo: TOpenDialog;
    ClientDataSet1: TClientDataSet;
    ButtonPen3: TButtonPen;
    ButtonPen4: TButtonPen;
    ButtonPen5: TButtonPen;
    gbRegiao: TGroupBox;
    Label18: TLabel;
    EDT_LOGRADOUROUF: TEdit;
    sbBuscaUf: TButtonPen;
    Label17: TLabel;
    EDT_LOGRADOUROCIDADE: TEdit;
    sbBuscaCidade: TButtonPen;
    ButtonPen1: TButtonPen;
    procedure bpNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bpSaveClick(Sender: TObject);
    procedure bpSearchClick(Sender: TObject);
    procedure sbBuscaUfClick(Sender: TObject);
    procedure sbBuscaCidadeClick(Sender: TObject);
    procedure ButtonPen1Click(Sender: TObject);
  private
    { Private declarations }
    FControl : TEmpresasontrol;
    //FRegions : TRegions;
    //function Search : Boolean;
    //function SetFields : Boolean;
  public
    { Public declarations }
  end;

var
  frmGerCadEmpresa: TfrmGerCadEmpresa;

implementation

{$R *.dfm}

uses uMess, uLocate, uSetiUseful;//, uMasterSearchScreen;

procedure TfrmGerCadEmpresa.bpNewClick(Sender: TObject);
begin
  inherited;
    try
        if Assigned(FControl) then
        begin
//            FControl.Insert(Self);
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure TfrmGerCadEmpresa.bpSaveClick(Sender: TObject);
begin
    try
        if Assigned(FControl) then
        begin
//            if FControl.Save(Self) then
              inherited;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure TfrmGerCadEmpresa.bpSearchClick(Sender: TObject);
begin
  fnSearchParamFS8F1('TBGERCADEMPRESA', 'NUMCPFCNPJ',Caption);
  inherited;
end;

procedure TfrmGerCadEmpresa.ButtonPen1Click(Sender: TObject);
begin
  inherited;
  try
    cRegionsFS8F1 := TRegions.Create;
    cRegionsFS8F1.ClearRegions(EDT_LOGRADOUROUF,EDT_LOGRADOUROCIDADE);
  finally
    cRegionsFS8F1.Free;
  end;
end;

procedure TfrmGerCadEmpresa.sbBuscaCidadeClick(Sender: TObject);
begin
  inherited;
  try
    cRegionsFS8F1 := TRegions.Create;
    cRegionsFS8F1.SearchRegions(1,EDT_LOGRADOUROUF,EDT_LOGRADOUROCIDADE)
  finally
    cRegionsFS8F1.Free;
  end;

end;

procedure TfrmGerCadEmpresa.sbBuscaUfClick(Sender: TObject);
begin
  inherited;
  try
    cRegionsFS8F1 := TRegions.Create;
    cRegionsFS8F1.SearchRegions(0,EDT_LOGRADOUROUF,EDT_LOGRADOUROCIDADE)
  finally
    cRegionsFS8F1.Free;
  end;
end;

procedure TfrmGerCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
    try
      FControl := TEmpresasontrol.Create(Self);
      cRegionsFS8F1 := TRegions.Create;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

end.
