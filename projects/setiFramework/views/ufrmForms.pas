unit ufrmForms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, Data.Win.ADODB, uSetiConnects,
  uMess, Vcl.StdCtrls, Vcl.Mask, Data.DBXFirebird, Data.FMTBcd,
  Data.SqlExpr, uSetiFormControl;

type
  TfrmForms = class(TForm)
    dsForms: TDataSource;
    adoForms: TADOQuery;
    adoFormsID: TIntegerField;
    adoFormsFORMNAME: TStringField;
    adoFormsFORMCAPTION: TStringField;
    adoFormsFORMTAG: TIntegerField;
    adoFormsSTATUS: TStringField;
    adoFormsCREATEDATE: TDateTimeField;
    Panel5: TPanel;
    dbgForms: TDBGrid;
    Panel6: TPanel;
    Panel4: TPanel;
    adoComponents: TADOQuery;
    dsComponents: TDataSource;
    adoComponentsID: TAutoIncField;
    adoComponentsCOMPONENTNAME: TStringField;
    adoComponentsCOMPONENTFORMID: TIntegerField;
    adoComponentsCOMPONENTCAPTION: TStringField;
    adoComponentsCOMPONENTTAG: TIntegerField;
    adoComponentsCOMPONENTTYPE: TStringField;
    adoComponentsCOMPONENTSTATUS: TStringField;
    adoComponentsCOMPONENTCREATEDATE: TDateTimeField;
    adoComponentsCOMPONENTSEARCHENABLE: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sbClear: TSpeedButton;
    edtId: TEdit;
    edtName: TEdit;
    edtCaption: TEdit;
    edtTag: TEdit;
    cbxStatus: TCheckBox;
    sbCancel: TSpeedButton;
    sbSave: TSpeedButton;
    sbDelete: TSpeedButton;
    sbEdit: TSpeedButton;
    sbNew: TSpeedButton;
    sbSearch: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure dbgFormsCellClick(Column: TColumn);
    procedure sbSearchClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbNewClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbClearClick(Sender: TObject);
  private
    { Private declarations }
    FcControl: TSetiFormControl;
  public
    { Public declarations }
  published
    property cControl : TSetiFormControl read FcControl write FcControl;
  end;

var
  frmForms: TfrmForms;


implementation

{$R *.dfm}

uses uSetiUseful, uSetiConfig;

procedure TfrmForms.dbgFormsCellClick(Column: TColumn);
begin
    try
        cControl.DbGridSetValue(Self);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmForms.FormCreate(Sender: TObject);
begin
    cControl := TSetiFormControl.Create(Self);
end;

procedure TfrmForms.sbCancelClick(Sender: TObject);
begin
    cControl.Cancel(Self);
end;

procedure TfrmForms.sbClearClick(Sender: TObject);
begin
    cControl.Clear(Self);
end;

procedure TfrmForms.sbDeleteClick(Sender: TObject);
begin
    cControl.Delete(Self);
end;

procedure TfrmForms.sbEditClick(Sender: TObject);
begin
    cControl.Edit(Self);
end;

procedure TfrmForms.sbNewClick(Sender: TObject);
VAR TESTE : Integer;
begin
    TESTE := Null;
    cControl.New(Self);
end;

procedure TfrmForms.sbSaveClick(Sender: TObject);
begin
    cControl.Save(Self);
end;

procedure TfrmForms.sbSearchClick(Sender: TObject);
begin
    cControl.Search(Self);
end;

end.

