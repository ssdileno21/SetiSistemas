unit ufrmToLocate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Datasnap.DBClient, uMess, MIDASLIB, uSetiConfig, Vcl.ImgList,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.DBCtrls;

type THackDBGrid = class(TDBGrid);

type
  TfrmToLocate = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgLocate: TDBGrid;
    dsLocate: TDataSource;
    ClientDataSet1: TClientDataSet;
    sbLocate: TButtonPen;
    sbClear: TButtonPen;
    sbSel: TButtonPen;
    sbCancel: TButtonPen;
    ImageList1: TImageList;
    sbExcel: TSpeedButton;
    Panel4: TPanel;
    edtText: TEdit;
    lbFieldCaption: TLabel;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTextKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbClearClick(Sender: TObject);
    procedure dbgLocateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbLocateClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbSelectClick(Sender: TObject);
    procedure dbgLocateDblClick(Sender: TObject);
    procedure ButtonPen1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbExcelClick(Sender: TObject);
    procedure dbgLocateTitleClick(Column: TColumn);
    procedure dbgLocateDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FType : Integer;
    FCdsLoc : TClientDataSet;
    FDsHelp : TDataSource;
    FTable : string;
    FFieldSearch : string;
    FWhereAnd : string;
    FOrderBy : string;
    FGroupBy : string;
    FFieldKey : string;
    FFieldReturn : string;
    FReturn : Variant;
    FTitle : string;
    FSqlQuery : string;
    FWhere : string;
    FParameters : string;
    FCommand : string;
    FFieldCaption : string;
    FIdConnect : Integer;
    FCdsArray : TClientDataSet;

    function GetSqlQuery : string;
    function GetWhere : string;
    function GetParameters : string;
    function GetCommand : string;
    function GetFieldCaption : string;
    function GetIdConnect : Integer;
    function GetCdsArray : TClientDataSet;

    procedure SetSqlQuery (Const Value : string);
    procedure SetWhere (Const Value : string);
    procedure SetParameters (Const Value : string);
    procedure SetCommand (Const Value : string);
    procedure SetFieldCaption (Const Value : string);
    procedure SetIdConnect (Const Value : Integer);
    procedure SetCdsArray (Const Value : TClientDataSet);
    procedure ProviderFlags;

    property qSqlQuery : string read GetSqlQuery write SetSqlQuery;
    property qWhere: string read GetWhere write SetWhere;
    property qParameters : string read GetParameters write SetParameters;
    property qCommand : string read GetCommand write SetCommand;
    property qFieldCapiton : string read GetFieldCaption write SetFieldCaption;
    property qIdConnect : Integer read GetIdConnect write SetIdConnect;
    property qCdsArray : TClientDataSet read GetCdsArray write SetCdsArray;


    //procedure Locate(pType:Integer);
    procedure Locate(pLocateType:Integer);
    procedure Select;

    function GetType : Integer;
    function GetTable : string;
    function GetFieldSearch : string;
    function GetWhereAnd : string;
    function GetOrderBy : string;
    function GetGroupBy : string;
    function GetFieldKey : string;
    function GetFieldReturn : string;
    function GetTitle : string;

    procedure SetType (Const Value : Integer);
    procedure SetTable (Const Value : string);
    procedure SetFieldSearch (Const Value : string);
    procedure SetWhereAnd (Const Value : string);
    procedure SetOrderBy (Const Value : string);
    procedure SetGroupBy (Const Value : string);
    procedure SetFieldKey (Const Value : string);
    procedure SetFieldReturn (Const Value : string);
    procedure SetTitle (Const Value : string);

  public
    { Public declarations }
    procedure SetSearch(pType : Integer; pTable,pField,pFieldKey,pFieldReturn,
    pTitle, pCommand, pWhereAnd, pOrderBy, pGroupBy, pFieldCaption: string;
    pIdConnect: Integer; pCdsArray : TClientDataSet);
  published
    property qType : Integer read FType write SetType;
    property qCdsLoc: TClientDataSet read FCdsLoc write FCdsLoc;
    property qTable: string read GetTable write SetTable;
    property qFieldSearch: string read GetFieldSearch write SetFieldSearch;
    property qWhereAnd: string read GetWhereAnd write SetWhereAnd;
    property qOrderBy: string read GetOrderBy write SetOrderBy;
    property qGroupBy: string read GetGroupBy write SetGroupBy;
    property qFieldKey: string read GetFieldKey write SetFieldKey;
    property qFieldReturn: string read GetFieldReturn write SetFieldReturn;
    property qTitle: string read GetTitle write SetTitle;
    property qDsHelp: TDataSource read FDsHelp write FDsHelp;
  end;

var
  frmToLocate: TfrmToLocate;

implementation

{$R *.dfm}

uses udmMasterDataModule, uSetiUseful;


{ TfrmToLocate }

procedure TfrmToLocate.ButtonPen1Click(Sender: TObject);
begin
    try
      Select;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.dbgLocateDblClick(Sender: TObject);
begin
    try
      Select;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.dbgLocateDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not (gdSelected in State) then
  begin
    if Odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color:= clWhite
    else
      (Sender as TDBGrid).Canvas.Brush.Color:= $00F1F2F3; // leve cinza

    // Aplicando prto para a cor da fonte
    (Sender as TDBGrid).Canvas.Font.Color:= clBlack;

    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.TextOut(Rect.Left + 2, Rect.Top,
    Column.Field.DisplayText);
  end;
end;

procedure TfrmToLocate.dbgLocateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    try
      if (Key = VK_RETURN) then
        Select;
      if (Key in [VK_ESCAPE]) then
        edtText.SetFocus;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.dbgLocateTitleClick(Column: TColumn);
begin
  SetiUsefulOrdenaGrid(dbgLocate,Column);
end;

procedure TfrmToLocate.edtTextKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    try
        if (Key in [VK_UP,VK_DOWN]) then
          dbgLocate.SetFocus;
        if (Key = VK_RETURN) and (edtText.Text <> '') then
        begin
          Locate(1);
          if Assigned(dmMasterDataModule) then
            if NOT (dmMasterDataModule.SetiCds.IsEmpty) then
              dbgLocate.SetFocus;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.FormCreate(Sender: TObject);
begin
    try
        qCdsLoc := TClientDataSet.Create(Self);
        qDsHelp := TDataSource.Create(Self);
        dmMasterDataModule := TdmMasterDataModule.Create(Nil);
        dmMasterDataModule.UseComponentsDmSeti(1);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    try
      if (Key = VK_F5) then
        sbLocateClick(Self);
      if (Key = VK_F11) then
        sbClearClick(Self);
      if (Key = VK_ESCAPE) then
        sbCancelClick(Self);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.FormKeyPress(Sender: TObject; var Key: Char);
begin
    try
      if (Key = #13) then
        sbSelectClick(Self);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.FormShow(Sender: TObject);
var
  vWhere : string;
begin
    try
        vWhere := ' AND '+qFieldKey+ ' IS NOT NULL ';
        if (qWhereAnd <> '') then
          vWhere := vWhere + ' '+ qWhereAnd;

        lbFieldCaption.Caption := qFieldCapiton;
        if (qType = 0) then
          SetSqlQuery('SELECT * FROM '+qTable + ' WHERE 1 = 1 ');
        if (qType = 1) then
          SetSqlQuery(qCommand);
        SetWhere(vWhere);
        SetParameters( ' AND UPPER('+qFieldSearch+') LIKE :P' );

        Locate(0);
        frmToLocate.Caption := qTitle;
        edtText.SetFocus;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.Locate(pLocateType: Integer);
var
  psql : string;
  i : Integer;
begin
    try
      if (pLocateType = 0) then
        dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      with (dmMasterDataModule) do
      begin
          if (pLocateType = 0) then
          begin
            if (qIdConnect = 0) then
              UseComponentsDmSeti(1) else
            if (qIdConnect = 1) then
              UseComponentsDmSeti(1,True);
          end;
          with (SetiSqlQuery) do
          begin
            psql := '';
            psql := qSqlQuery+#13+qWhere+#13;
            if (pLocateType = 1) then
              psql := psql + qParameters+#13;
            SQL.Clear;
            SQL.Add(psql+#13);
            SQL.Add(qGroupBy+#13);
            SQL.Add(qOrderBy+#13);
          end;
          with (SetiCds) do
          begin
            Close;
            FetchParams;
            if (pLocateType = 1) then
              if (edtText.Text <> '') then
              begin
                Params.ParamByName('P').Value :=
                  '%' + AnsiUpperCase(edtText.Text) + '%';
              end;
            Open;
            First;
            if NOT (IsEmpty) then
            begin
                dbgLocate.DataSource := dsLocate;
                dsLocate.DataSet := SetiCds;
                frmToLocate.Caption := qTitle;
                if (qCdsArray <> nil) then
                  ProviderFlags else
                begin
                  with (dsLocate.DataSet) do
                  begin
                    dsLocate.DataSet.First;
                    for i := 0 to dsLocate.DataSet.FieldCount - 1 do
                      Fields.Fields[i].DisplayWidth := 25;
                  end;
                end;
            end
            else
            begin
                if (pLocateType <> 0) then
                  MessageDlg('Nenhum registro encontrado.',mtInformation,
                    [mbOK],0);
                dbgLocate.DataSource := qDsHelp;
            end;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.ProviderFlags;
var
  i, i2 : Integer;
  vTab : string;
  vteste : Variant;
  vCont : Integer;
  vNameField : string;
  vNameArray : string;
  vval : Boolean;
begin
  vTab := qTable;
  with (dmMasterDataModule) do
  begin
    for I := 0 to Pred(SetiCds.FieldCount) do
    begin
      //RETORNAR CAPTION
      SetiCds.Fields[i].DisplayLabel :=
        fnTableInforFS8F1(vTab,SetiCds.Fields[i].FieldName,3);
      if (SetiCds.Fields[i].DataType = ftSingle) then //FLOAT
        TFloatField(SetiCds.Fields[i]).DisplayFormat := '#,##0.00';
      if (SetiCds.Fields[i].DataType = ftFMTBcd) then //NUMERIC(15,2)
        TFloatField(SetiCds.Fields[i]).currency := True;

      vCont := 0;
      vval := False;
      qCdsArray.Close;
      qCdsArray.Open;
      if qCdsArray.IsEmpty then
        Exit;

      qCdsArray.First;
      while NOT (qCdsArray.Eof) do
      begin
        vNameField := '';
        vNameArray := qCdsArray.FieldByName('DESCRIPTION').AsString;
        vNameField := SetiCds.Fields[i].FieldName;
         if (vNameField = vNameArray) then
          begin
            vval := True;
            SetiCds.Fields[i].Visible := True;
            if SetiCds.Fields[i].DataType = ftString then
              SetiCds.Fields[i].DisplayWidth := 20
            else
            begin
              SetiCds.Fields[i].DisplayWidth := 10;
            end;
            if SetiCds.Fields[i].FieldName = 'NOME' then
              SetiCds.Fields[i].DisplayWidth := 40;
          end;
          vCont := vCont +1;
          if (vCont = qCdsArray.RecordCount)  then
          begin
            if (vval = False) then
              SetiCds.Fields[i].Visible := False;
          end;
          qCdsArray.Next;
      end;
    end;
  end;
end;

function TfrmToLocate.GetCdsArray: TClientDataSet;
begin
    Result := FCdsArray;
end;

function TfrmToLocate.GetCommand: string;
begin
    try
        Result := FCommand;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetFieldCaption: string;
begin
    Result := FFieldCaption;
end;

function TfrmToLocate.GetFieldKey: string;
begin
    try
        Result := FFieldKey;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetFieldReturn: string;
begin
    try
        Result := FFieldReturn;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetFieldSearch: string;
begin
    try
        Result := FFieldSearch;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetGroupBy: string;
begin
    try
        Result := FGroupBy;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetIdConnect: Integer;
begin
    try
        Result := FIdConnect;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetOrderBy: string;
begin
    try
        Result := FOrderBy;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetParameters: string;
begin
    try
        Result := FParameters;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetSqlQuery: string;
begin
    try
        Result := FSqlQuery;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetTable: string;
begin
    try
        Result := FTable;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetTitle: string;
begin
    try
        Result := FTitle;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetType: Integer;
begin
    try
        Result := FType;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetWhere: string;
begin
    try
        Result := FWhere;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmToLocate.GetWhereAnd: string;
begin
    Result := FWhereAnd;
end;

procedure TfrmToLocate.sbCancelClick(Sender: TObject);
begin
    try
      ModalResult := mrCancel;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.sbClearClick(Sender: TObject);
begin
    try
        Locate(0);
        edtText.Clear;
        edtText.SetFocus;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.sbExcelClick(Sender: TObject);
var
  v : Boolean;
begin
    v := True;
    if dsLocate.DataSet.RecordCount > 100 then
    begin
      if NOT SetiMensQuestions(0,'Alta quantidade de registros,   '+
                             'este procedimento pode demorar, '+
                             'deseja realmente gerar a planilha?') then
        v := False;
    end;
    if v then
      SetiExpDataSet(2,dsLocate.DataSet);
end;

procedure TfrmToLocate.Select;
begin
    try
      if Assigned(dmMasterDataModule) then
      begin
        if NOT (dmMasterDataModule.SetiCds.IsEmpty) then
        begin
          ModalResult := mrOk;
        end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetCdsArray(const Value: TClientDataSet);
begin
    FCdsArray := Value;
end;

procedure TfrmToLocate.SetCommand(const Value: string);
begin
    try
        FCommand := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetFieldCaption(const Value: string);
begin
    FFieldCaption := Value;
end;

procedure TfrmToLocate.SetFieldKey(const Value: string);
begin
    try
        FFieldKey := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetFieldReturn(const Value: string);
begin
    try
        FFieldReturn := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetFieldSearch(const Value: string);
begin
    try
        FFieldSearch := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetGroupBy(const Value: string);
begin
    try
        FGroupBy := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetIdConnect(const Value: Integer);
begin
    try
        FIdConnect := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetOrderBy(const Value: string);
begin
    try
        FOrderBy := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetParameters(const Value: string);
begin
    try
        FParameters := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetSearch(pType : Integer; pTable, pField, pFieldKey,
pFieldReturn, pTitle, pCommand, pWhereAnd, pOrderBy, pGroupBy, pFieldCaption:
string; pIdConnect:Integer; pCdsArray: TClientDataSet);
begin
    try
        SetType(pType);
        SetTable(pTable);
        SetFieldSearch(pField);
        SetFieldKey(pFieldKey);
        SetFieldReturn(pFieldReturn);
        SetTitle(pTitle);
        SetCommand(pCommand);
        SetWhereAnd(pWhereAnd);
        SetGroupBy(pGroupBy);
        SetOrderBy(pOrderBy);
        SetFieldCaption(pFieldCaption);
        SetIdConnect(pIdConnect);
        SetCdsArray(pCdsArray);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetSqlQuery(const Value: string);
begin
    try
        FSqlQuery := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetTable(const Value: string);
begin
    try
        FTable := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetTitle(const Value: string);
begin
    try
        FTitle := SConfigfrmToLocateName + Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetType(const Value: Integer);
begin
    try
        FType := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetWhere(const Value: string);
begin
    try
        FWhere := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.SetWhereAnd(const Value: string);
begin
  FWhereAnd := Value;
end;

procedure TfrmToLocate.sbLocateClick(Sender: TObject);
begin
    try
      if (edtText.Text <> '') then
        Locate(1);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmToLocate.sbSelectClick(Sender: TObject);
begin
    try
      Select;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
