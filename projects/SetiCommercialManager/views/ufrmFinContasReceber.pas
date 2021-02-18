unit ufrmFinContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmFinContasReceber = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Button6: TButton;
    Label19: TLabel;
    cbxOcorrencia: TComboBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    edtFormaPagto: TEdit;
    btnLocFormaPagto: TButton;
    Label7: TLabel;
    edtContaBancaria: TEdit;
    btnLocContaBancaria: TButton;
    Label5: TLabel;
    dtpUnicaDtaVencimento: TDateTimePicker;
    rgUnicaQuitado: TRadioGroup;
    Label8: TLabel;
    dtpUnicaDtaComp: TDateTimePicker;
    Label24: TLabel;
    Edit21: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    TabSheet2: TTabSheet;
    Label13: TLabel;
    cbxEntidade: TComboBox;
    lbSelEntidade: TLabel;
    edtEntidadeSelecionada: TEdit;
    btnLocEntidadeSelecionada: TButton;
    Label12: TLabel;
    dtpDtaCompetencia: TDateTimePicker;
    Label14: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure cbxOcorrenciaChange(Sender: TObject);
    procedure rgUnicaQuitadoClick(Sender: TObject);
    procedure cbxEntidadeChange(Sender: TObject);
  private
    { Private declarations }
    procedure Ocorrencia;
    procedure Recebimento;
    procedure PreencheComboOcorrencia;
  public
    { Public declarations }
  end;

var
  frmFinContasReceber: TfrmFinContasReceber;

implementation

{$R *.dfm}

uses uMess;

{ TfrmStandardReg1 }

procedure TfrmFinContasReceber.cbxEntidadeChange(Sender: TObject);
begin
  inherited;
    try
      if (cbxEntidade.Text <> '') then
      begin
        lbSelEntidade.Caption := cbxEntidade.Text;
        btnLocEntidadeSelecionada.Enabled := True;
        edtEntidadeSelecionada.Enabled := True;
        edtEntidadeSelecionada.Color := clWindow;
      end else
      begin
        btnLocEntidadeSelecionada.Enabled := False;
        edtEntidadeSelecionada.Enabled := False;;
        edtEntidadeSelecionada.Clear;
        edtEntidadeSelecionada.Color := clBtnFace;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasReceber.cbxOcorrenciaChange(Sender: TObject);
begin
  inherited;
    try
      Ocorrencia;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasReceber.FormCreate(Sender: TObject);
begin
  inherited;
    try
      PageControl1.ActivePageIndex := 0;
      PreencheComboOcorrencia;
      dtpUnicaDtaVencimento.DateTime := Now;
      dtpUnicaDtaComp.DateTime := Now;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasReceber.Ocorrencia;
var
    vUnica, vParcelada : Boolean;
begin
    try
      vUnica := (cbxOcorrencia.ItemIndex in [0]);
      vParcelada := (cbxOcorrencia.ItemIndex in [1]);

      edtFormaPagto.Enabled := vUnica;
      edtFormaPagto.Color := clWindow;
      btnLocFormaPagto.Enabled := vUnica;
      edtContaBancaria.Enabled := vUnica;
      edtContaBancaria.Color := clWindow;
      btnLocContaBancaria.Enabled := vUnica;
      dtpUnicaDtaVencimento.Enabled := vUnica;
      dtpUnicaDtaVencimento.Color := clWindow;
      rgUnicaQuitado.Enabled := vUnica;
      rgUnicaQuitado.ItemIndex := 1;
      dtpUnicaDtaComp.Enabled := vUnica;
      dtpUnicaDtaComp.Color := clWindow;

      dtpUnicaDtaVencimento.DateTime := Now;
      dtpUnicaDtaComp.DateTime := Now;

      if (vParcelada) then
      begin
          edtFormaPagto.Color := clBtnFace;
          edtFormaPagto.Clear;
          edtContaBancaria.Color := clBtnFace;
          edtContaBancaria.Clear;
          dtpUnicaDtaVencimento.Color := clBtnFace;
          rgUnicaQuitado.ItemIndex := -1;
          dtpUnicaDtaComp.Color := clBtnFace;
      end;
      Recebimento;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasReceber.Recebimento;
begin
    try
        dtpUnicaDtaComp.Color := clWindow;
        dtpUnicaDtaComp.Enabled := (rgUnicaQuitado.ItemIndex in [0]);
        if ((rgUnicaQuitado.ItemIndex in [1]) or
            (rgUnicaQuitado.ItemIndex = -1)) then
        begin
          dtpUnicaDtaComp.Color := clBtnFace;
          dtpUnicaDtaComp.DateTime := Now;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasReceber.rgUnicaQuitadoClick(Sender: TObject);
begin
  inherited;
    try
      Recebimento;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasReceber.PreencheComboOcorrencia;
begin
    try
      cbxOcorrencia.Clear;
      cbxOcorrencia.Items.Add('Única');
      cbxOcorrencia.Items.Add('Parcelada/Recorrente');
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
