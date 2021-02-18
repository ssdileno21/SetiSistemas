unit ufrmFinContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmFinContasPagar = class(TfrmStandardReg)
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    cbxTipoLancamento: TComboBox;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    dtpUnicaDtaVencimento: TDateTimePicker;
    rgUnicaQuitado: TRadioGroup;
    Label8: TLabel;
    dtpUnicaDtaPagto: TDateTimePicker;
    Label24: TLabel;
    Edit21: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label11: TLabel;
    Label13: TLabel;
    cbxEntidade: TComboBox;
    lbSelEntidade: TLabel;
    edtEntidadeSelecionada: TEdit;
    btnLocEntidadeSelecionada: TButton;
    Label12: TLabel;
    dtpDtaCompetencia: TDateTimePicker;
    Label14: TLabel;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    dtpFixaDtaProxVencimento: TDateTimePicker;
    Button6: TButton;
    Label19: TLabel;
    cbxOcorrencia: TComboBox;
    Label16: TLabel;
    cbxFixaGerarPagto: TComboBox;
    cbxFixaFrequencia: TComboBox;
    Label17: TLabel;
    dtpFixaDtaTermino: TDateTimePicker;
    Label20: TLabel;
    edtQuantas: TEdit;
    Label21: TLabel;
    Label6: TLabel;
    edtFormaPagto: TEdit;
    btnLocFormaPagto: TButton;
    edtContaBancaria: TEdit;
    Label7: TLabel;
    btnLocContaBancaria: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cbxEntidadeChange(Sender: TObject);
    procedure cbxTipoLancamentoChange(Sender: TObject);
    procedure cbxOcorrenciaChange(Sender: TObject);
    procedure cbxFixaFrequenciaChange(Sender: TObject);
    procedure rgUnicaQuitadoClick(Sender: TObject);
  private
    { Private declarations }
    procedure TipoLancamento;
    procedure Ocorrencia;
    procedure Frequencia;
    procedure PagtoQuitado;
    procedure PreencheComboOcorrencia(Index: Integer);
  public
    { Public declarations }
  end;

var
  frmFinContasPagar: TfrmFinContasPagar;

implementation

{$R *.dfm}

uses uMess;

procedure TfrmFinContasPagar.cbxEntidadeChange(Sender: TObject);
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

procedure TfrmFinContasPagar.cbxFixaFrequenciaChange(Sender: TObject);
begin
  inherited;
    try
        Frequencia;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.cbxOcorrenciaChange(Sender: TObject);
begin
  inherited;
    try
        Ocorrencia;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.cbxTipoLancamentoChange(Sender: TObject);
begin
  inherited;
    try
        TipoLancamento;
        cbxOcorrencia.ItemIndex := 0;
        Ocorrencia;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
    try
      PageControl1.ActivePageIndex := 0;
      dtpUnicaDtaVencimento.DateTime := now;
      dtpUnicaDtaPagto.DateTime := Now;
      dtpFixaDtaProxVencimento.DateTime := Now;
      dtpFixaDtaTermino.DateTime := Now;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.Frequencia;
var
   vParaSempre, vAteData, vAlgumasVezes : Boolean;
begin
    try
        vParaSempre := (cbxFixaFrequencia.ItemIndex in [0]);
        vAteData := (cbxFixaFrequencia.ItemIndex in [1]);
        vAlgumasVezes := (cbxFixaFrequencia.ItemIndex in [2]);
        dtpFixaDtaTermino.Enabled := (vAteData);
        dtpFixaDtaTermino.Color := clWindow;
        dtpFixaDtaTermino.DateTime := Now;
        edtQuantas.Enabled := (vAlgumasVezes);
        edtQuantas.Color := clWindow;
        if (vParaSempre or vAteData) then
        begin
            edtQuantas.Color := clBtnFace;
            edtQuantas.Clear;
        end;
        if (vParaSempre or vAlgumasVezes) then
        begin
            dtpFixaDtaTermino.Color := clBtnFace;
            dtpFixaDtaTermino.DateTime := Now;
        end;

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.Ocorrencia;
var
    vUnica, vParcelada, vFixa : Boolean;
begin
  inherited;
    try
      vUnica := ((cbxTipoLancamento.ItemIndex in [0]) and
                  (cbxOcorrencia.ItemIndex in [0]));
      vParcelada := (cbxTipoLancamento.ItemIndex in [0]) and
                      (cbxOcorrencia.ItemIndex in [1]);
      vFixa := (cbxTipoLancamento.ItemIndex in [1]);


      dtpUnicaDtaVencimento.Enabled := vUnica;
      dtpUnicaDtaVencimento.Color := clWindow;
      dtpUnicaDtaVencimento.DateTime := Now;
      rgUnicaQuitado.Enabled := vUnica;

      edtFormaPagto.Enabled := (vUnica or vFixa);
      btnLocFormaPagto.Enabled := (vUnica or vFixa);
      edtFormaPagto.Color := clWindow;
      edtContaBancaria.Enabled := (vUnica or vFixa);
      btnLocContaBancaria.Enabled := (vUnica or vFixa);
      edtContaBancaria.Color := clWindow;

      dtpUnicaDtaPagto.DateTime := Now;
      dtpFixaDtaProxVencimento.Enabled := (vFixa);
      dtpFixaDtaProxVencimento.Color := clWindow;
      dtpFixaDtaProxVencimento.DateTime := Now;
      cbxFixaGerarPagto.Enabled := (vFixa);
      cbxFixaGerarPagto.ItemIndex := -1;
      cbxFixaFrequencia.Enabled := (vFixa);
      cbxFixaFrequencia.ItemIndex := -1;
      dtpFixaDtaTermino.Enabled := False;
      dtpFixaDtaTermino.Color := clBtnFace;
      edtQuantas.Enabled := False;
      edtQuantas.Color := clBtnFace;
      edtQuantas.Clear;

      if (vUnica or vParcelada) then
      begin
        dtpUnicaDtaVencimento.Color := clBtnFace;
        dtpFixaDtaProxVencimento.Color := clBtnFace;
        dtpFixaDtaTermino.Color := clBtnFace;
        if (vUnica) then
          rgUnicaQuitado.ItemIndex := 1;
        if (vParcelada) then
        begin
          edtFormaPagto.Color := clBtnFace;
          edtContaBancaria.Color := clBtnFace;
          rgUnicaQuitado.ItemIndex := -1;
          PagtoQuitado;
        end
      end else
      if (vFixa) then
      begin
          rgUnicaQuitado.ItemIndex := -1;
          PagtoQuitado;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.PagtoQuitado;
begin
    try
        dtpUnicaDtaPagto.Color := clWindow;
        dtpUnicaDtaPagto.Enabled := (rgUnicaQuitado.ItemIndex in [0]);
        if ((rgUnicaQuitado.ItemIndex in [1]) or
            (rgUnicaQuitado.ItemIndex = -1)) then
        begin
          dtpUnicaDtaPagto.Color := clBtnFace;
          dtpUnicaDtaPagto.DateTime := Now;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.PreencheComboOcorrencia(Index: Integer);
begin
    try
        //Parcelada
        if (Index = 0) then
        begin
            cbxOcorrencia.Clear;
            cbxOcorrencia.Items.Add('Única');
            cbxOcorrencia.Items.Add('Parcelada/Recorrente');
        end else
        if (Index = 1) then
        begin
            cbxOcorrencia.Clear;
            cbxOcorrencia.Items.Add('Diariamente');
            cbxOcorrencia.Items.Add('Semanalmente');
            cbxOcorrencia.Items.Add('Quinzenalmente');
            cbxOcorrencia.Items.Add('Mensalmente');
            cbxOcorrencia.Items.Add('Bimestralmente');
            cbxOcorrencia.Items.Add('Trimestralmente');
            cbxOcorrencia.Items.Add('Semestralmente');
            cbxOcorrencia.Items.Add('Anualmente');
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.rgUnicaQuitadoClick(Sender: TObject);
begin
  inherited;
    try
      PagtoQuitado;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmFinContasPagar.TipoLancamento;
begin
    try
      cbxOcorrencia.Enabled := (cbxTipoLancamento.ItemIndex in [0,1]);
      PreencheComboOcorrencia(cbxTipoLancamento.ItemIndex);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
