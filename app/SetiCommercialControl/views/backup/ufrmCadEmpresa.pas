unit ufrmCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, Vcl.ImgList, Vcl.Menus,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.Buttons, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  uSetiConnects, uMess;

type
  TfrmCadEmpresa = class(TfrmCadPadrao)
    sqlEmpresa: TSQLQuery;
    dtsEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FConnects : TSetiConnects;
    procedure Open;
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


    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.Edit;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
    Open;
end;

procedure TfrmCadEmpresa.Open;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlEmpresa.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlEmpresa.Open;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadEmpresa.Save;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
