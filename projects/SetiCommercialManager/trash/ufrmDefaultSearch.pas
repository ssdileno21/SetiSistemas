unit ufrmDefaultSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.ImgList, Vcl.StdCtrls, VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.Buttons,
  Data.DB, DBClient;

type

  TDefaultSearch = (TPString, TPNumber, TPData);

  TfrmDefaultSearch = class(TForm)
    dsSearch: TDataSource;
    Panel2: TPanel;
    dbgSearch: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    sbSearch: TSpeedButton;
    edtValue: TEdit;
    pnSearch: TPanel;
    procedure sbSearchClick(Sender: TObject);
    procedure edtValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgSearchDblClick(Sender: TObject);
    procedure dbgSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FSearchField : string;
    FDataSet : TDataSet;
    FDataSource : TDataSource;
    FDataSetClient : TDataSet;
  public
    { Public declarations }
    SearchType : TDefaultSearch;
    function GetDataSetClient: TDataSet;
    procedure SetDataSetClient(Const Value : TDataSet);    
    function GetSearchField : string;
    procedure SetSearchField(Const Value : string);
  published
    property qSearchField : string read GetSearchField write SetSearchField;
    property qDataSet : TDataSet read FDataSet write FDataSet;
    property qDataSource : TDataSource read FDataSource write FDataSource;
    //property qDataSetClient : TDataSet read GetDataSetClient write SetDataSetClient;
    property qDataSetClient : TDataSet read FDataSetClient write FDataSetClient;
  end;

var
  frmDefaultSearch: TfrmDefaultSearch;
  SearchType : TDefaultSearch;

implementation

{$R *.dfm}

uses uMess;

{ TfrmDefaultSearch }

procedure TfrmDefaultSearch.dbgSearchDblClick(Sender: TObject);
begin
 {   try
        Close;
        if (dsSearch.DataSet.IsEmpty) then
          ModalResult := mrCancel
        else
          ModalResult := mrOk;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;      }
end;

procedure TfrmDefaultSearch.dbgSearchKeyPress(Sender: TObject; var Key: Char);
begin
  {  try
        if (Key = #13) then
        begin
          Close;
          if (dsSearch.DataSet.IsEmpty) then
            ModalResult := mrCancel
          else
            ModalResult := mrOk;
        end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;   }
end;

procedure TfrmDefaultSearch.edtValueKeyPress(Sender: TObject; var Key: Char);
begin
{    try
        if (Key = #13) then
          sbSearchClick(Self);

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;   }
end;

procedure TfrmDefaultSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    try
      qDataSet.Free;
      qDataSource.Free;
      ModalResult := mrCancel;
      Self := Nil;
      Action := caFree;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmDefaultSearch.FormCreate(Sender: TObject);
begin
    try
      qDataSet := TDataSet.Create(Self);
      qDataSource := TDataSource.Create(Self);
      qDataSetClient := TDataSet.Create(Self);
    
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmDefaultSearch.FormShow(Sender: TObject);
begin
{    try
        with TClientDataSet(dsSearch.DataSet) do
        begin
              TClientDataSet(dsSearch.DataSet).Filtered := False;
              TClientDataSet(dsSearch.DataSet).Close;
              //dsSearch.DataSet.Filtered := False;
              //dsSearch.DataSet.Close;
        end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;         }
end;

function TfrmDefaultSearch.GetDataSetClient: TDataSet;
begin
    try
      Result := FDataSetClient;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;    
end;

function TfrmDefaultSearch.GetSearchField: string;
begin
{    try
      Result := FSearchField;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;    }
end;

procedure TfrmDefaultSearch.sbSearchClick(Sender: TObject);
begin
      qDataSet.Open;
      //dbgSearch.DataSource := qDataSource;
{    try
      with TClientDataSet(dsSearch.DataSet) do
      begin
          if (edtValue.Text <> '') then
          begin
              Filtered := False;
              case SearchType of
                TPString: Filter := UpperCase(qSearchField + ' LIKE ' +
                                    QuotedStr('%'+edtValue.Text+'%'));
                TPNumber: Filter := qSearchField + ' = '+ edtValue.Text;
                TPData: Filter := qSearchField + ' = ' + edtValue.Text;
              end;
              Filtered := True;
              Open;

              if (IsEmpty) then
                SetiMens(0,Mess9,'INFOR');
              dbgSearch.SetFocus;
          end else
          begin
            Open;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;             }
end;

procedure TfrmDefaultSearch.SetDataSetClient(const Value: TDataSet);
begin
    try
      FDataSetClient := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;           
end;

procedure TfrmDefaultSearch.SetSearchField(const Value: string);
begin
 {   try
      FSearchField := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;           }
end;

end.
