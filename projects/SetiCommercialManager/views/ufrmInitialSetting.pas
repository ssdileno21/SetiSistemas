unit ufrmInitialSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, uInitialSettingControl,
  uSetiConnects, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmInitialSetting = class(TForm)
    Panel1: TPanel;
    sbAvancar: TSpeedButton;
    sbVoltar: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Memo2: TMemo;
    rgTermoLicenca: TRadioGroup;
    Panel4: TPanel;
    Image1: TImage;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    sbVer1: TSpeedButton;
    sbVer2: TSpeedButton;
    sbVer3: TSpeedButton;
    sbVer4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sbVer5: TSpeedButton;
    Label5: TLabel;
    cbxAvancarComPend: TCheckBox;
    ts3: TTabSheet;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtNome: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Label6: TLabel;
    edtConfirmarSenha: TEdit;
    Label7: TLabel;
    edtEmail: TEdit;
    sbGravarUsuario: TSpeedButton;
    sbCancelar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure rgTermoLicencaClick(Sender: TObject);
    procedure sbAvancarClick(Sender: TObject);
    procedure cbxAvancarComPendClick(Sender: TObject);
    procedure sbVoltarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure edtLoginChange(Sender: TObject);
    procedure edtSenhaChange(Sender: TObject);
    procedure edtConfirmarSenhaChange(Sender: TObject);
    procedure edtEmailChange(Sender: TObject);
    procedure sbGravarUsuarioClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FPageActive : Integer;
    Fp2Conf1,Fp2Conf2,Fp3Conf3,Fp4Conf4,Fp5Conf5 : Boolean;
    Fp3Conf : Boolean;
    FControl : TInitialSettingControl;
    FFinal : Boolean;
    FEstruturaPastas : string;
    FArquivosBancoDeDados : string;
    FConexaoInternet : string;
    FConexaoServidor : string;
    FConexaoBancoDados : string;
    vConnectsTest : TSetiConnects;
    function PageVal1 : Boolean;
    function PageVal2 : Boolean;
    function PageVal3 : Boolean;
    function PageVal4 : Boolean;
    procedure VerificaInformacoesTecnicas;
    { Public declarations }
  published
    property cControl : TInitialSettingControl read FControl write FControl;
    property qEstruturaPastas : string read FEstruturaPastas
      write FEstruturaPastas;
    property qArquivosBancoDeDados : string read FArquivosBancoDeDados
      write FArquivosBancoDeDados;
    property qConexaoInternet : string read FConexaoInternet
      write FConexaoInternet;
    property qConexaoServidor : string read FConexaoServidor
      write FConexaoServidor;
    property qConexaoBancoDados : string read FConexaoBancoDados
      write FConexaoBancoDados;
  end;

var
  frmInitialSetting: TfrmInitialSetting;

implementation

{$R *.dfm}

uses uMess, uSetiUseful, uSetiConfig;

procedure TfrmInitialSetting.cbxAvancarComPendClick(Sender: TObject);
begin
    try
      if (cbxAvancarComPend.Checked) then
        sbAvancar.Enabled := True else
          sbAvancar.Enabled := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.edtConfirmarSenhaChange(Sender: TObject);
begin
    try
      if (edtConfirmarSenha.Text <> '') then
      begin
        edtEmail.Enabled := True;
        edtEmail.Color := clWindow
      end else
      begin
        edtEmail.Clear;
        edtEmail.Enabled := False;
        edtEmail.Color := clSilver;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.edtEmailChange(Sender: TObject);
begin
    try
      if (edtEmail.Text <> '') then
      begin
        sbGravarUsuario.Enabled := True;
      end else
      begin
        sbGravarUsuario.Enabled := False;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.edtLoginChange(Sender: TObject);
begin
    try
      if (edtLogin.Text <> '') then
      begin
        edtSenha.Enabled := True;
        edtSenha.Color := clWindow
      end else
      begin
        edtSenha.Clear;
        edtSenha.Enabled := False;
        edtSenha.Color := clSilver;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.edtNomeChange(Sender: TObject);
begin
    try
      if (edtNome.Text <> '') then
      begin
        edtLogin.Enabled := True;
        edtLogin.Color := clWindow;
      end else
      begin
        edtLogin.Clear;
        edtLogin.Enabled := False;
        edtLogin.Color := clSilver;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.edtSenhaChange(Sender: TObject);
begin
    try
      if (edtSenha.Text <> '') then
      begin
        edtConfirmarSenha.Enabled := True;
        edtConfirmarSenha.Color := clWindow
      end else
      begin
        edtConfirmarSenha.Clear;
        edtConfirmarSenha.Enabled := False;
        edtConfirmarSenha.Color := clSilver;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    try
      sbCancelarClick(Self);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.FormCreate(Sender: TObject);
begin
    try
      PageControl1.ActivePageIndex := 0;
      FPageActive := 1;
      cControl := TInitialSettingControl.Create(Self);
      FFinal := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.PageControl1Change(Sender: TObject);
begin
    try
        if (FPageActive = 1) then
        begin
            if (PageControl1.ActivePage <> ts1) then
              PageControl1.ActivePage := ts1;
        end else
        if (FPageActive = 2) then
        begin
            if (PageControl1.ActivePage <> ts2) then
              PageControl1.ActivePage := ts2;
            FPageActive := 2;
        end else
        if (FPageActive = 3) then
        begin
            if (PageControl1.ActivePage <> ts3) then
              PageControl1.ActivePage := ts3;
            FPageActive := 3;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmInitialSetting.PageVal1: Boolean;
begin
    try
      Result := False;
      if (rgTermoLicenca.ItemIndex = 1) then
          Result := True;
   except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmInitialSetting.PageVal2: Boolean;
begin
    try
      Result := False;
      if (((Fp2Conf1) and (Fp2Conf2) and (Fp3Conf3) and
          (Fp4Conf4) and (Fp5Conf5)) or (cbxAvancarComPend.Checked)) then
        Result := True;
   except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmInitialSetting.PageVal3: Boolean;
begin
    try
      Result := False;
      if (Fp3Conf) then
        Result := True;
   except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmInitialSetting.PageVal4: Boolean;
begin
    try
      Result := False;
   except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.rgTermoLicencaClick(Sender: TObject);
begin
    try
      if (PageVal1) then
        sbAvancar.Enabled := True
      else
        sbAvancar.Enabled := False;
     except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.sbAvancarClick(Sender: TObject);
var
  val1,val2,val3,val4 : Boolean;
begin
    try
        val1 := PageVal1;
        val2 := PageVal2;
        val3 := PageVal3;
        val4 := PageVal4;
        sbAvancar.Enabled := False;
        if (PageControl1.ActivePage = ts1) then
        begin
          PageControl1.ActivePage := ts2;
          FPageActive := 2;
          VerificaInformacoesTecnicas;
          sbVoltar.Enabled := True;
          {if (val2) then
            sbAvancar.Enabled := true;}
        end else
        if (PageControl1.ActivePage = ts2) then
        begin
          PageControl1.ActivePage := ts3;
          FPageActive := 3;
          if (val3) then
            sbAvancar.Enabled := true;
        end else
        if (PageControl1.ActivePage = ts3) and (FFinal) then
          ModalResult := mrOk;

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.sbGravarUsuarioClick(Sender: TObject);
begin
    try
        if Assigned(cControl) then
          if (cControl.InserirUsuario(Self)) then
          begin
              edtNome.Enabled := False;
              edtLogin.Enabled := False;
              edtSenha.Enabled := False;
              edtConfirmarSenha.Enabled := False;
              edtEmail.Enabled := False;
              sbVoltar.Enabled := False;
              sbGravarUsuario.Enabled := False;
              sbAvancar.Enabled := True;
              sbAvancar.Caption := 'Concluir';
              sbCancelar.Enabled := False;
              FFinal := True;
          end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.sbVoltarClick(Sender: TObject);
begin
    try
        if (PageControl1.ActivePage = ts2) then
        begin
          sbVoltar.Enabled := False;
          rgTermoLicenca.ItemIndex := 0;
          PageControl1.ActivePage := ts1;
        end else
        if (PageControl1.ActivePage = ts3) then
        begin
          cbxAvancarComPend.Checked := False;
          VerificaInformacoesTecnicas;
          PageControl1.ActivePage := ts2;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.sbCancelarClick(Sender: TObject);
begin
    try
      ModalResult := mrCancel;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmInitialSetting.VerificaInformacoesTecnicas;
var
    GlyphVal, GlyphInVal, GlyphAlert, GlyphDisable : string;
    val, val1 : Boolean;
    Check1,Check2,Check3,Check4,Check5 : Boolean;
begin
    try
        try
          vConnectsTest := TSetiConnects.Create;
          val := False;
          val1 := False;
          GlyphVal := ExtractFilePath(Application.ExeName) + 'Green.bmp';
          GlyphInVal := ExtractFilePath(Application.ExeName) + 'Red.bmp';
          GlyphAlert := ExtractFilePath(Application.ExeName) + 'Yellow.bmp';
          GlyphDisable := ExtractFilePath(Application.ExeName) + 'Gray.bmp';
          Check1 := False;
          Check2 := False;
          Check3 := False;
          Check4 := False;
          Check5 := False;
          //Estrutura de arquivos e pastas...
          if (SConfigCorrectFolderStructures) then
          begin
            sbVer1.Glyph.LoadFromFile(GlyphVal);
            Check1 := True;
          end else
          begin
            sbVer1.Glyph.LoadFromFile(GlyphInVal);
            Check1 := False;
          end;
          //Arquivo de banco de dados...
          if (SConfigDatabaseFileExists(True)) then
            val := True;
          if SConfigDatabaseFileExists(False) then
            val1 := True;
          if (val) and (val1) then
          begin
            sbVer2.Glyph.LoadFromFile(GlyphVal);
            Check2 := True;
          end else
          if NOT (val) and NOT (val1) then
          begin
            sbVer2.Glyph.LoadFromFile(GlyphInVal);
            Check2 := False;
          end else
            Check2 := False;
          //Conexão com o banco de dados.
          if Assigned(vConnectsTest) then
          begin
            if (vConnectsTest.Connected) then
            begin
                sbVer3.Glyph.LoadFromFile(GlyphVal);
                Check3 := True;
            end else
            begin
              sbVer3.Glyph.LoadFromFile(GlyphInVal);
              Check3 := False;
            end;
          end;
          //Conexão com a internet.
          if (SConfigInternetConnection) then
          begin
            sbVer4.Glyph.LoadFromFile(GlyphVal);
            Check4 := True;
          end else
          begin
            sbVer4.Glyph.LoadFromFile(GlyphInVal);
            Check4 := False;
          end;
          //Conexão com o servidor.
          if NOT (SConfigServerConnection) then
          begin
            Check5 := False;
            sbVer5.Glyph.LoadFromFile(GlyphAlert);
          end else
          if (SConfigCheckServer) then
          begin
            sbVer5.Glyph.LoadFromFile(GlyphVal);
            Check5 := True;
          end
          else
          begin
            sbVer5.Glyph.LoadFromFile(GlyphInVal);
            Check5 := False;
          end;
          {
            1: Estrutura de arquivos e pastas.
            2: Arquivo de banco de dados.
            3: Conexão com o banco de dados.
            4: Conexão com a internet.
            5: Conexão com o servidor.
          }
          if  (Check1) and
                (Check2) and
                  (Check3) and
                    (Check4) and
                      (Check5) then
          begin
            sbAvancar.Enabled := True;
            cbxAvancarComPend.Checked := False;
            cbxAvancarComPend.Enabled := False;
          end else
          if  (NOT Check1) or
                (NOT Check2) or
                  (NOT Check3) then
          begin
            sbAvancar.Enabled := False;
            cbxAvancarComPend.Checked := False;
            cbxAvancarComPend.Enabled := False;
          end else
          if  (
                ( //PROBLEMA NA CONEXÃO COM SERVIDOR
                  (
                    (Check1) and
                      (Check2) and
                        (Check3) and
                          (Check4)
                  ) and (NOT Check5)
                )
                or
                ( //PROBLEMA NA CONEXÃO COM INTERNET E SERVIDOR
                  (
                    (Check1) and
                      (Check2) and
                        (Check3) and
                          (NOT Check4)
                  ) or (NOT Check5)
                )
                or
                ( //PROBLEMA NA CONEXÃO COM A INTERNET
                  (
                    (Check1) and
                      (Check2) and
                        (Check3) and
                          (NOT Check4)
                  ) or (Check5)
                )
              ) then
              begin
                sbAvancar.Enabled := False;
                cbxAvancarComPend.Enabled := True;
              end;
        finally
            vConnectsTest.Free;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
