unit uRepVendaManual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB, uFSUF, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, ShellAPI, uFSDialogs,

  uSetiUseful;

type
  TRepVendaManual = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    edtCodRegiao: TEdit;
    edtRegiaoDesc: TEdit;
    sbRegiao: TSpeedButton;
    GroupBox2: TGroupBox;
    sbRotas: TSpeedButton;
    edtCodRota: TEdit;
    edtRotaDesc: TEdit;
    GroupBox3: TGroupBox;
    sbSetor: TSpeedButton;
    edtCodSetor: TEdit;
    edtSetorDesc: TEdit;
    GroupBox4: TGroupBox;
    edtDtIni: TEdit;
    sbGetDtIni: TSpeedButton;
    Label1: TLabel;
    edtDtFim: TEdit;
    sbGetDtFim: TSpeedButton;
    sbGerarRelatorio: TSpeedButton;
    sbClear: TSpeedButton;
    Label2: TLabel;
    sbDtIni: TSpeedButton;
    sbDtFim: TSpeedButton;
    procedure sbRegiaoClick(Sender: TObject);
    procedure edtCodRegiaoChange(Sender: TObject);
    procedure edtCodRegiaoKeyPress(Sender: TObject; var Key: Char);
    procedure sbRotasClick(Sender: TObject);
    procedure edtCodRotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodSetorKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodRotaChange(Sender: TObject);
    procedure edtCodSetorChange(Sender: TObject);
    procedure sbSetorClick(Sender: TObject);
    procedure sbGerarRelatorioClick(Sender: TObject);
    procedure sbGetDtIniClick(Sender: TObject);
    procedure sbGetDtFimClick(Sender: TObject);
    procedure sbDtIniClick(Sender: TObject);
    procedure sbDtFimClick(Sender: TObject);
    procedure sbClearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FqidStatus: Integer;
    FcSetiUserFulSearching: TSetiUserFulSearching;
    FSetiUserFulDB : TSetiUserFulDB;
    { Private declarations }
    procedure SetqidStatus(const Value: Integer);
    procedure Clear;
    procedure GerarRelatorio;

    property qidStatus : Integer read FqidStatus write SetqidStatus;
    property cSetiUserFulSearching : TSetiUserFulSearching
    read FcSetiUserFulSearching write FcSetiUserFulSearching;
    property cSetiUserFulDB : TSetiUserFulDB read FSetiUserFulDB
    write FSetiUserFulDB;
  public
    { Public declarations }
  end;

var
  RepVendaManual: TRepVendaManual;

implementation

{$R *.dfm}

uses uQrpControleVendaManual;

{ TRepVendaManual }

procedure TRepVendaManual.edtCodSetorChange(Sender: TObject);
begin
    try
      if NOT Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := TSetiUserFulDB.Create;
      if (edtCodSetor.Text <> '') then
      begin
        cSetiUserFulDB.SetiUsefulDBFillDescById2(
          edtCodSetor,
          edtSetorDesc,
          'TBCADSETORES',
          'ID',
          'DESCRICAO');
      end;
    finally
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;
    end;
end;

procedure TRepVendaManual.edtCodSetorKeyPress(Sender: TObject; var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TRepVendaManual.FormShow(Sender: TObject);
begin
  Clear;
end;

procedure TRepVendaManual.GerarRelatorio;
begin
    try
        QrpControleVendaManual := TQrpControleVendaManual.Create(Nil);
        QrpControleVendaManual.SetRegiaoId(StrToIntDef(edtCodRegiao.Text,-1));
        QrpControleVendaManual.SetRotaId(StrToIntDef(edtCodRota.Text,-1));
        QrpControleVendaManual.SetSetorId(StrToIntDef(edtCodSetor.Text,-1));
        QrpControleVendaManual.SetRotaDesc(edtRotaDesc.Text);
        QrpControleVendaManual.SetSetorDesc(edtSetorDesc.Text);
        QrpControleVendaManual.SetDataIni(
          SetiUsefulFormatDateToFirebirdSt(edtDtIni.Text));
        QrpControleVendaManual.SetDataFim(
          SetiUsefulFormatDateToFirebirdSt(edtDtFim.Text));
        try
          if not Assigned(cSetiUserFulDB) then
            cSetiUserFulDB := TSetiUserFulDB.Create;
          QrpControleVendaManual.SetTotalGeral
          (
            cSetiUserFulDB.GetVlrTTVMPorRegiao
            (
                StrToIntDef(edtCodRegiao.Text,-1),
                SetiUsefulFormatDateToFirebirdSt(edtDtIni.Text),
                SetiUsefulFormatDateToFirebirdSt(edtDtFim.Text),
                StrToIntDef(edtCodRota.Text,-1),
                StrToIntDef(edtCodSetor.Text,-1)
            )
          );
        finally
          if Assigned(cSetiUserFulDB) then
            cSetiUserFulDB := Nil;
        end;
        QrpControleVendaManual.AbrirRelatorio;
        QrpControleVendaManual.Release;
    finally
      QrpControleVendaManual := Nil;
    end;
end;

procedure TRepVendaManual.Clear;
var
  i : Integer;
begin
    try

      for I := 0 to ComponentCount -1 do
      begin
        if Components[i].Tag <> 99 then
        begin
          if Components[i] is TEdit then
          begin
              TEdit(Components[i]).Clear;
          end;
        end;
      end;
      edtDtIni.Text := GetFirstDayOfMonthStr(Now);
      edtDtFim.Text := GetLasttDayOfMonthStr(Now);

    finally

    end;
end;

procedure TRepVendaManual.edtCodRegiaoChange(Sender: TObject);
begin
    try
      if NOT Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := TSetiUserFulDB.Create;
      if (edtCodRegiao.Text <> '') then
      begin
        cSetiUserFulDB.SetiUsefulDBFillDescById2(
              edtCodRegiao,
              edtRegiaoDesc,
              'TBCADREGIOES',
              'ID',
              'DESCRICAO');
      end;
    finally
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;
    end;
end;

procedure TRepVendaManual.edtCodRegiaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TRepVendaManual.edtCodRotaChange(Sender: TObject);
begin
    try
      if NOT Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := TSetiUserFulDB.Create;
      if (edtCodRota.Text <> '') then
      begin
        cSetiUserFulDB.SetiUsefulDBFillDescById2(
          edtCodRota,
          edtRotaDesc,
          'TBCADROTAS',
          'ID',
          'DESCRICAO');
      end;
    finally
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;
    end;
end;

procedure TRepVendaManual.edtCodRotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TRepVendaManual.sbRegiaoClick(Sender: TObject);
begin
    try
      if NOT Assigned(cSetiUserFulSearching) then
      begin
        cSetiUserFulSearching := TSetiUserFulSearching.Create;
        edtCodRegiao.Text := cSetiUserFulSearching.GetSearchingFieldValue(8);
      end;
    finally
      cSetiUserFulSearching := Nil;
    end;
end;

procedure TRepVendaManual.SetqidStatus(const Value: Integer);
begin
    FqidStatus := Value;
end;

procedure TRepVendaManual.sbDtFimClick(Sender: TObject);
begin
    edtDtFim.Clear;
end;

procedure TRepVendaManual.sbDtIniClick(Sender: TObject);
begin
    edtDtIni.Clear;
end;

procedure TRepVendaManual.sbGetDtIniClick(Sender: TObject);
begin
    try
      if NOT(Assigned(cSetiUserFulDB)) then
        cSetiUserFulDB := TSetiUserFulDB.Create;
      edtDtIni.Text := cSetiUserFulDB.GetDateSel;
    finally
       if Assigned(cSetiUserFulDB) then
          cSetiUserFulDB := Nil;
    end;
end;

procedure TRepVendaManual.sbGetDtFimClick(Sender: TObject);
begin
    try
      if NOT(Assigned(cSetiUserFulDB)) then
        cSetiUserFulDB := TSetiUserFulDB.Create;
      edtDtFim.Text := cSetiUserFulDB.GetDateSel;
    finally
        if Assigned(cSetiUserFulDB) then
          cSetiUserFulDB := Nil;
    end;
end;

procedure TRepVendaManual.sbGerarRelatorioClick(Sender: TObject);
begin
    try
        if (edtDtIni.Text = '') or (edtDtFim.Text = '') then
        begin
          SetiMens(Mess27,2);
          Exit;
        end;
        if NOT SetiUseFulSetiValidatePeriod
        (
            StrToDate(edtDtIni.Text),
            StrToDate(edtDtFim.Text)
        ) then
        begin
          SetiMens(Mess28,2);
          Exit;
        end;
        GerarRelatorio;
    finally

    end;
end;

procedure TRepVendaManual.sbClearClick(Sender: TObject);
begin
    try
      Clear;
    finally

    end;
end;

procedure TRepVendaManual.sbRotasClick(Sender: TObject);
begin
    try
      if NOT Assigned(cSetiUserFulSearching) then
      begin
        cSetiUserFulSearching := TSetiUserFulSearching.Create;
        edtCodRota.Text := cSetiUserFulSearching.GetSearchingFieldValue(9);
      end;
    finally
      cSetiUserFulSearching := Nil;
    end;
end;

procedure TRepVendaManual.sbSetorClick(Sender: TObject);
begin
    try
      if NOT Assigned(cSetiUserFulSearching) then
      begin
        cSetiUserFulSearching := TSetiUserFulSearching.Create;
        edtCodSetor.Text := cSetiUserFulSearching.GetSearchingFieldValue(10);
      end;
    finally
      cSetiUserFulSearching := Nil;
    end;
end;

end.