unit ufrmTestePesquisa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask,
  uSetiConnects, Provider, DBClient, Vcl.Menus, uLocate;

type
  TfrmTestePesquisa2 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBID: TDBEdit;
    DBNAME: TDBEdit;
    DBCAPTION: TDBEdit;
    DBTAG: TDBEdit;
    CBSTATUS: TDBCheckBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    PorCodigo: TMenuItem;
    porNome: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure porNomeClick(Sender: TObject);
  private
    { Private declarations }
    FDsp : TDataSetProvider;
    FCds : TClientDataSet;
    FDts  : TDataSource;
    FSql : TSQLQuery;
    FDtsHelp : TDataSource;
  public
    { Public declarations }
  published
      property qDsp : TDataSetProvider read FDsp write FDsp;
      property qCds : TClientDataSet read FCds write FCds;
      property qDts  : TDataSource read FDts write FDts;
      property qSql  : TSQLQuery read FSql write FSql;
      property qDtsHelp  : TDataSource read FDtsHelp write FDtsHelp;

  end;

var
  frmTestePesquisa2: TfrmTestePesquisa2;
  cConn : TSetiConnects;
  cLocate : TLocate;

implementation

{$R *.dfm}

uses uMess;

procedure TfrmTestePesquisa2.FormCreate(Sender: TObject);
begin
    try
      cConn := TSetiConnects.Create;
      qSql := TSQLQuery.Create(NIL);
      qSql.SQLConnection := cConn.ConnectsFIREBIRD(True);
    //qSql.SQL.Add('SELECT ID, FORMNAME, FORMCAPTION, FORMTAG, FORMSTATUS FROM SP_LISTA_FORMS ');
      //qSql.SQL.Add('(null,null,null,null,''S'')');
      qSql.SQL.Add('SELECT * FROM TBFORMS ');

      qDsp := TDataSetProvider.Create(NIL);
      qDsp.Options := [poAllowCommandText];
      qDtsHelp := TDataSource.Create(NIL);
      qDsp.DataSet := qSql;

      qCds := TClientDataSet.Create(NIL);
      qCds.SetProvider(qDsp);

      qDts := TDataSource.Create(NIL);
      qDts.DataSet := qCds;


      DBID.DataSource := qDts;
      DBNAME.DataSource := qDts;
      DBCAPTION.DataSource := qDts;
      DBTAG.DataSource := qDts;
      CBSTATUS.DataSource := qDts;
      DBNavigator1.DataSource:= qDts;
      //qSql.Open;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure TfrmTestePesquisa2.porNomeClick(Sender: TObject);
begin
    try
      cLocate := TLocate.Create;
        qDts.DataSet := cLocate.GetSearchDataSet(
                                1,
                                qCds,
                                'TBFORMS',
                                'FORMNAME',
                                'ID',
                                'Consulta de cliente por nome do form',
                                'SELECT * FROM TBFORMS');

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
