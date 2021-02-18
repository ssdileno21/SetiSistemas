unit uQrpControleVendaManualFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, QRCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr, grimgctrl, uFSDialogs, qrpctrls,

  uSetiConnects, qrFramelines, Vcl.Imaging.pngimage,
  Datasnap.DBClient, uSetiUseful, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Data.Bind.Components, Bde.DBTables;

type
  TqrpControleVendaManualFicha = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    sqlEmpresa: TSQLQuery;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRHRule1: TQRHRule;
    QRHRule2: TQRHRule;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    sqlCliente: TSQLQuery;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRHRule3: TQRHRule;
    QRHRule4: TQRHRule;
    QRHRule6: TQRHRule;
    QRHRule7: TQRHRule;
    QRHRule8: TQRHRule;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRHRule9: TQRHRule;
    sqlProdutos: TSQLQuery;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRHRule5: TQRHRule;
    QRHRule10: TQRHRule;
    QRHRule11: TQRHRule;
    QRHRule12: TQRHRule;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    qrdbDescEspe: TQRDBText;
    QRPShape1: TQRPShape;
    QRPShape2: TQRPShape;
    QRHRule13: TQRHRule;
    QRHRule37: TQRHRule;
    QRHRule38: TQRHRule;
    QRHRule39: TQRHRule;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRHRule40: TQRHRule;
    QRHRule41: TQRHRule;
    QRHRule42: TQRHRule;
    QRHRule43: TQRHRule;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRHRule44: TQRHRule;
    QRHRule45: TQRHRule;
    QRHRule46: TQRHRule;
    QRHRule47: TQRHRule;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRPShape5: TQRPShape;
    QRHRule15: TQRHRule;
    QRHRule16: TQRHRule;
    QRHRule17: TQRHRule;
    QRHRule18: TQRHRule;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRPShape6: TQRPShape;
    QRHRule19: TQRHRule;
    QRHRule48: TQRHRule;
    QRHRule49: TQRHRule;
    QRHRule50: TQRHRule;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape13: TQRShape;
    QRDBText30: TQRDBText;
    QRHRule32: TQRHRule;
    QRHRule52: TQRHRule;
    QRHRule53: TQRHRule;
    QRHRule54: TQRHRule;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRPShape3: TQRPShape;
    QRPShape9: TQRPShape;
    QRHRule26: TQRHRule;
    QRHRule27: TQRHRule;
    QRHRule28: TQRHRule;
    QRHRule29: TQRHRule;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRPShape10: TQRPShape;
    QRHRule30: TQRHRule;
    QRHRule35: TQRHRule;
    QRHRule36: TQRHRule;
    QRHRule55: TQRHRule;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRPShape11: TQRPShape;
    QRHRule56: TQRHRule;
    QRHRule57: TQRHRule;
    QRHRule58: TQRHRule;
    QRHRule59: TQRHRule;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRHRule60: TQRHRule;
    QRHRule61: TQRHRule;
    QRHRule62: TQRHRule;
    QRHRule63: TQRHRule;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRPShape13: TQRPShape;
    QRHRule64: TQRHRule;
    QRHRule65: TQRHRule;
    QRHRule66: TQRHRule;
    QRHRule67: TQRHRule;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRPShape14: TQRPShape;
    QRHRule68: TQRHRule;
    QRHRule69: TQRHRule;
    QRHRule70: TQRHRule;
    QRHRule71: TQRHRule;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRHRule72: TQRHRule;
    QRHRule77: TQRHRule;
    QRHRule78: TQRHRule;
    QRHRule79: TQRHRule;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRHRule80: TQRHRule;
    QRHRule81: TQRHRule;
    QRHRule82: TQRHRule;
    QRHRule83: TQRHRule;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRPShape18: TQRPShape;
    QRPShape4: TQRPShape;
    QRPShape8: TQRPShape;
    QRPShape12: TQRPShape;
    QRPShape16: TQRPShape;
    QRPShape7: TQRPShape;
    QRPShape15: TQRPShape;
    QRHRule31: TQRHRule;
    QRHRule33: TQRHRule;
    QRHRule34: TQRHRule;
    QRHRule51: TQRHRule;
    QRDBText29: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel79: TQRLabel;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRPShape17: TQRPShape;
    QRPGrid2: TQRPGrid;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel97: TQRLabel;
    QRShape12: TQRShape;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    SqlAux: TSQLQuery;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel102: TQRLabel;
    QRDBText137: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRHRule14: TQRHRule;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FqConn: TSQLConnection;
    FqConnect: TSetiConnects;
    FqClienteId: Integer;
    FqPedidoId: Integer;
    FCdsProdAux: TClientDataSet;
    FSetiUserFulDB: TSetiUserFulDB;
    FConnAux: TSQLConnection;
    FConnectAux: TSetiConnects;
    { Private declarations }
    procedure AbrirEmpresa;
    procedure AbrirCliente;
    procedure AbrirProdutos;
    procedure SetqConn(const Value: TSQLConnection);
    procedure SetqConnect(const Value: TSetiConnects);
    procedure AlteraCor;
    property qConn : TSQLConnection read FqConn write SetqConn;
    property qConnect : TSetiConnects read FqConnect write SetqConnect;
    property qConnAux : TSQLConnection read FConnAux write FConnAux;
    property qConnectAux : TSetiConnects read FConnectAux write FConnectAux;

    property qCdsProdAux: TClientDataSet read FCdsProdAux write FCdsProdAux;
    property cSetiUserFulDB : TSetiUserFulDB read FSetiUserFulDB
    write FSetiUserFulDB;
  public
    { Public declarations }
    procedure AbrirRelatorio;
    procedure SetqPedidoId(const Value: Integer);
    procedure SetqClienteId(const Value: Integer);
    property qClienteId : Integer read FqClienteId write SetqClienteId;
    property qPedidoId : Integer read FqPedidoId write SetqPedidoId;
  end;

var
  qrpControleVendaManualFicha: TqrpControleVendaManualFicha;

implementation

{$R *.dfm}

procedure TqrpControleVendaManualFicha.AbrirCliente;
begin
    try
      sqlCliente.SQLConnection := qConn;;
      sqlCliente.Close;
      sqlCliente.SQL.Clear;
      sqlCliente.SQL.Add('  SELECT                                          '+
                         '        FIRST 1                                   '+
                         '        C.*                                       '+
                         '        ,(SELECT first 1 *                        '+
                         '        FROM SP_GETDATEFORMAT                     '+
                         '        (current_date)) AS DTA                    '+
                         '        ,RO.descricao AS ROTA                     '+
                         '        ,RE.descricao AS REGIAO                   '+
                         '        ,SE.descricao AS SETOR                    '+
                         'FROM TBCADCLIENTES C                              '+
                         'LEFT JOIN tbcadrotas RO ON C.id_rota = RO.id      '+
                         'LEFT JOIN tbcadregioes RE ON C.id_regiao = RE.id  '+
                         'LEFT JOIN tbcadsetores SE ON C.id_setor = SE.id   '+
                         '  WHERE C.ID = '+IntToStr(qClienteId)
                         );
      sqlCliente.Open;
    finally

    end;
end;

procedure TqrpControleVendaManualFicha.AbrirEmpresa;
begin
    try
      sqlEmpresa.SQLConnection := qConn;;
      sqlEmpresa.Close;
      sqlEmpresa.SQL.Clear;
      sqlEmpresa.SQL.Add('  SELECT                        '+
                         '        FIRST 1                 '+
                         '        *                       '+
                         '  FROM TBCADEMPRESA E           ');
      sqlEmpresa.Open;
    finally

    end;
end;

procedure TqrpControleVendaManualFicha.AbrirProdutos;
begin
    try

      qConnAux := TSQLConnection.Create(Nil);
      qConnectAux := TSetiConnects.Create;
      qConnAux := qConnectAux.ConnectsFIREBIRD;


      sqlProdutos.SQLConnection := qConnAux;
      sqlProdutos.Close;
      sqlProdutos.SQL.Clear;
      sqlProdutos.SQL.Add(
        'SELECT * FROM SP_REL_VENDAMANUAL_FICHA(:PARAMETRO)');
      sqlProdutos.Params.ParamByName('PARAMETRO').Value := qPedidoId;
      sqlProdutos.Open;
    finally

    end;
end;

procedure TqrpControleVendaManualFicha.AbrirRelatorio;
begin
    try
    if (qPedidoId = -1) then
    begin
      SetiMens('Venda não selecionada.',2);
      Exit;
    end;
    if (qClienteId = -1) then
    begin
      SetiMens('Cliente não selecionado.',2);
      Exit;
    end;

    qConn := TSQLConnection.Create(Nil);
    qConnect := TSetiConnects.Create;
    qConn := qConnect.ConnectsFIREBIRD;
    AbrirEmpresa;
    AbrirCliente;
    AbrirProdutos;
    QuickRep1.Preview;
    finally

    end;
end;

procedure TqrpControleVendaManualFicha.AlteraCor;
var
  i : Integer;
begin
    try
        for i := 0 to ComponentCount -1 do
        begin
            if (Components[i] is TQRLabel) then
              (Components[i] as TQRLabel).Color := clWindow;
            if (Components[i] is TQRDBText) then
              (Components[i] as TQRDBText).Color := clWindow;
        end;
    finally

    end;
end;

procedure TqrpControleVendaManualFicha.FormCreate(Sender: TObject);
begin
    AlteraCor;
end;

procedure TqrpControleVendaManualFicha.FormShow(Sender: TObject);
var
  vParamValue : Integer;
begin
    try
      cSetiUserFulDB := TSetiUserFulDB.Create;
      vParamValue := cSetiUserFulDB.GetParameterValue(1,'PFRM1',2);
      if (vParamValue = 3) then
      begin
        qrdbDescEspe.DataSet := SqlAux;
        qrdbDescEspe.DataField := '';
      end else
      begin
        qrdbDescEspe.DataSet := sqlCliente;
        qrdbDescEspe.DataField := 'VLRDESCESPECIAL';
      end;
    finally
      cSetiUserFulDB := nil;
    end;
end;

procedure TqrpControleVendaManualFicha.SetqClienteId(const Value: Integer);
begin
  FqClienteId := Value;
end;

procedure TqrpControleVendaManualFicha.SetqConn(const Value: TSQLConnection);
begin
  FqConn := Value;
end;

procedure TqrpControleVendaManualFicha.SetqConnect(const Value: TSetiConnects);
begin
  FqConnect := Value;
end;

procedure TqrpControleVendaManualFicha.SetqPedidoId(const Value: Integer);
begin
  FqPedidoId := Value;
end;

end.
