{
  FORM PADRÃO PARA CADASTRO
}

{
    LISTA DE PARAMETROS PARA O FRMFORMPADRAO

    ID    | PROCEDURE               | OBRIG | OBS
    -------------------------------------------------
    1     | SetCaptionForm          | S     |
    2     | SetQryForm              | S     |
    3     | SetGroupByForm          | N     |
    4     | SetOrderByForm          | S     |
    5     | SetTableForm            | S     |
    6     | SetGenForm              | S     |
    7     | SetKeyFieldForm         | S     |
    8     | SetListProviderForm     | S     |
    9     | SetListMenuForm         | S     |
    10    | SetListMenuCaptionForm  | S     |
    11    | SetListRequiredFields   | S     |
    12    | SetListDateFieldForm    | N     | N COM DATA = ERRO
}

unit ufrmCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Data.DB, IBDatabase, DBXCommon,
  Midas, Datasnap.DBClient, uLocate, Vcl.Menus, Vcl.ImgList, Data.FMTBcd,
  Data.SqlExpr, Datasnap.Provider, uSetiConnects, MIDASLIB;

type
  TfrmCadPadrao = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    dsPadrao: TDataSource;
    sbInsert: TSpeedButton;
    sbUpdate: TSpeedButton;
    sbDel: TSpeedButton;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    Panel5: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    Image1: TImage;
    pmSearch: TPopupMenu;
    sbAbrir: TButton;
    ImageList1: TImageList;
    lbSelection: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    FCaptionForm : string;
    FQryForm : string;
    FGroupByForm : string;
    FOrderByForm : string;
    FTableForm : string;
    FGenForm : string;
    FKeyFieldForm : string;
    FListProviderForm : string;
    FListMenuForm: string;
    FListMenuCaptionForm: string;
    FListRequiredFields : string;
    FListDateFieldForm : string;
    FListMarriedCompForm : string;
    FWhereAndForm : string;
    FConnects : TSetiConnects;
    FCdsMarriedCompForm : TClientDataSet;
    FWarning : Boolean;
    FStatus : string;
    FLocate : TLocate;
    FCdsProvider : TClientDataSet;
    FCdsMenu : TClientDataSet;
    FCdsCheck : TClientDataSet;
    FqConfirma: Boolean;
    FNoModoInicialToSave: Boolean;
    FExibirMensUpdate: Boolean;
    FExibirMensInsert: Boolean;
    FValidateToSave: Boolean;
    FVerifButtonClick: Boolean;
    FInfLabelCompName: string;
    function GetStatus : string;
    function FieldValidate : Boolean;
    function pDateVal : Boolean;
    procedure ProviderForm;
    procedure CreateItens;
    procedure SearchClick(Sender:TObject);
    procedure pCompControl;
    procedure pCreate;
    procedure pMarriedCompConfig;
    procedure SetValidateToSave(const Value: Boolean);
    procedure SetVerifButtonClick(const Value: Boolean);
    procedure DisplayLbInfor(Action:Integer=0);

    property qConnects : TSetiConnects read FConnects write FConnects;
  public
    { Public declarations }
    procedure pInsert;
    procedure pEdit;
    procedure pDelete;
    procedure pSave;
    function GetCaptionForm : string;
    function GetQryForm : string;
    function GetGroupByForm : string;
    function GetOrderByForm : string;
    function GetTableForm : string;
    function GetGenForm : string;
    function GetKeyFieldForm : string;
    function GetListProviderForm : string;
    function GetListMenuForm: string;
    function GetListMenuCaptionForm: string;
    function GetListRequiredFields: string;
    function GetListDateFieldsForm : string;
    function GetListMarriedCompForm : string;
    function GetWhereAndForm : string;
    function GetWarning : Boolean;
    procedure GetFillDescById(IdField:TDBEdit;
                              DescField:TEdit;
                              TableName:string;
                              FieldIdName:string;
                              FieldDescName:string);
    procedure SetCaptionForm(Const Value : string);
    procedure SetQryForm(Const Value : string);
    procedure SetGroupByForm(Const Value : string);
    procedure SetOrderByForm(Const Value : string);
    procedure SetTableForm(Const Value : string);
    procedure SetGenForm(Const Value : string);
    procedure SetKeyFieldForm(Const Value : string);
    procedure SetListProviderForm(Const Value : string);
    procedure SetListMenuForm(Const Value : string);
    procedure SetListMenuCaptionForm(Const Value : string);
    procedure SetListRequiredFields(Const Value : string);
    procedure SetListDateFieldForm(Const Value : string);
    procedure SetWhereAndForm(Const Value : string);
    procedure SetListMarriedCompForm(Const Value : string);
    procedure SetWarning(Const Value : Boolean);
    procedure pGBChange(Sender: TObject);
    procedure pGBClick(Sender: TObject);
    procedure SetqConfirma(const Value: Boolean);
    procedure SetNoModoInicialToSave(const Value: Boolean);
    procedure SetStatus(Const Value : string);
    procedure SetExibirMensInsert(const Value: Boolean);
    procedure SetExibirMensUpdate(const Value: Boolean);
    procedure AbrirUltimoId(Id:Integer);
    procedure NumberValidate(Sender: TObject; var Key: Char);
    procedure SetInfLabelCompName(const Value: string);

    property qCaptionForm : string read GetCaptionForm write SetCaptionForm;
    property qQryForm : string read GetQryForm write SetQryForm;
    property qGroupByForm: string read GetGroupByForm write SetGroupByForm;
    property qOrderByForm: string read GetOrderByForm write SetOrderByForm;
    property qTableForm : string read GetTableForm write SetQryForm;
    property qGenForm : string read GetGenForm write SetGenForm;
    property qKeyFieldForm : string read GetKeyFieldForm write SetKeyFieldForm;
    property qListProviderForm : string read GetListProviderForm write
      SetListProviderForm;
    property qListMenuForm : string read GetListMenuForm write SetListMenuForm;
    property qListMenuCaptionForm : string read GetListMenuCaptionForm write
    SetListMenuCaptionForm;
    property qListRequiredFields : string read GetListRequiredFields write
    SetListRequiredFields;
    property qListDateFieldForm : string read GetListDateFieldsForm write
    SetListDateFieldForm;
    property qListGBForm : string read GetListMarriedCompForm write
      SetListMarriedCompForm;
    property qWhereAndForm : string read GetWhereAndForm write SetWhereAndForm;
    property qCdsMarriedCompForm : TClientDataSet read FCdsMarriedCompForm write
      FCdsMarriedCompForm;
    property qWarning : Boolean read GetWarning write SetWarning;
    property qStatus : string read GetStatus write SetStatus;
    property cLocate : TLocate read FLocate write FLocate;
    property qCdsProvider: TClientDataSet read FCdsProvider write FCdsProvider;
    property qCdsMenu: TClientDataSet read FCdsMenu write FCdsMenu;
    property qCdsCheck : TClientDataSet read FCdsCheck write FCdsCheck;
    property qConfirma : Boolean read FqConfirma write SetqConfirma;
    property NoModoInicialToSave : Boolean read FNoModoInicialToSave write
      SetNoModoInicialToSave;
    property ExibirMensInsert : Boolean read FExibirMensInsert write
      SetExibirMensInsert;
    property ExibirMensUpdate : Boolean read FExibirMensUpdate write
      SetExibirMensUpdate;
    property ValidateToSave : Boolean read FValidateToSave write
      SetValidateToSave;
    property VerifButtonClick : Boolean read FVerifButtonClick write
      SetVerifButtonClick;
    property qInfLabelCompName : string read FInfLabelCompName
    write SetInfLabelCompName;
  end;

var
  frmCadPadrao: TfrmCadPadrao;
  TD : TDBXTransaction;

implementation

{$R *.dfm}

uses udmMasterDataModule, uMess, uSetiConfig, udmGen, uSetiUseful;

procedure TfrmCadPadrao.AbrirUltimoId(Id: Integer);
begin
    try
      try
         with (dmMasterDataModule) do
          begin
              UseComponentsDmSeti(1);
              with (SetiSqlQuery) do
               begin
                SQL.Add(qQryForm);
                SQL.Add(' AND '+qKeyFieldForm+' = '+IntToStr(ID));
                dsPadrao.DataSet := SetiCds;
                dsPadrao.DataSet.Open;
               end
          end;
    finally

    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadPadrao.CreateItens;
var
  i, i2 : Integer;
  vNameArray : string;
  vList, vList2 : TStringList;
  item : TMenuItem;
begin
    qCdsMenu := TClientDataSet.Create(Self);
    qCdsMenu.Close;
    qCdsMenu.FieldDefs.Clear;
    qCdsMenu.FieldDefs.add('ID',ftInteger);
    qCdsMenu.FieldDefs.add('DESCRIPTION',ftString,50);
    qCdsMenu.CreateDataSet;
    vList := TStringList.Create;
    ExtractStrings([';'],[],PChar(qListMenuForm),vList);
    //TABLE
    for i := 0 to vList.Count -1 do
    begin
      vNameArray := vList[i];
      qCdsMenu.Append;
      qCdsMenu.FieldByName('ID').Value := i;
      qCdsMenu.FieldByName('DESCRIPTION').Value := vNameArray;
      qCdsMenu.Post;
    end;
    vList2 := TStringList.Create;
    ExtractStrings([';'],[],PChar(qListMenuCaptionForm),vList2);
    //CAPTION MENU
    for i2 := 0 to vList2.Count -1 do
    begin
      vNameArray := vList2[i2];
      item := TMenuItem.Create(pmSearch);
      item.Tag := i2;
      item.OnClick := SearchClick;
      item.Caption := vNameArray;
      pmSearch.Items.Add(item);
    end;
end;

procedure TfrmCadPadrao.DisplayLbInfor(Action:Integer=0);
var
  i : Integer;
  vVal : Boolean;
begin
    {ACTION

      0 : EXIBIR;
      1 : OCULTAR;
    }
    vVal := False;
    try
      if (Action = 0) then
      begin
        for i := 0 to ComponentCount -1 do
        begin
            if Components[i] is TDBEdit then
            begin
              if UpperCase(((Components[i] as TDBEdit).Name)) =
                UpperCase(qInfLabelCompName) then
              begin
                if ((Components[i] as TDBEdit).Text <> '') then
                begin
                  lbSelection.Caption := ((Components[i] as TDBEdit).Text);
                  vVal := True;
                end;
              end;
            end;
        end;
      end;
    finally
        lbSelection.Visible := vVal;
    end;
end;

procedure TfrmCadPadrao.pCreate;
begin
    try
      try
         with (dmMasterDataModule) do
          begin
              UseComponentsDmSeti(1);
              with (SetiSqlQuery) do
               begin
                SQL.Add(qQryForm);
                dsPadrao.DataSet := SetiCds;
               end
          end;
    finally

    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmCadPadrao.pDateVal: Boolean;
var
  i,i2 : Integer;
  vNameArray : string;
  vList : TStringList;
  vNameComp : string;
  vval : Boolean;
  vDateLen : Integer;
  vDatePart1, vDatePart2 : string;
  vDateValue : string;
  vMens : string;
begin
    Result := True;
    vval := True;
    vMens := 'Formato da data inválido';
    vList := TStringList.Create;
    ExtractStrings([';'],[],PChar(qListDateFieldForm),vList);
    for i := 0 to vList.Count -1 do
    begin
      if vval = False then
        Break;
      vNameArray := UpperCase(vList[i]);
      for i2 := 0 to ComponentCount -1 do
      begin
        vNameComp := UpperCase(Components[i2].Name);
        if vNameComp = vNameArray then
        begin
          if Components[i2] is TDBEdit then
          begin
            if (TDBEDIT(Components[i2]).Text <> '') then
            begin
              vDateValue := TDBEDIT(Components[i2]).Text;
              vDateLen := Length(vDateValue);
              if (vDateLen <> 10) then
              begin
                vval := False;
                Break;
                Result := False;
              end;
              vDatePart1 := Copy(vDateValue,3,1);
              vDatePart2 := Copy(vDateValue,6,1);
              if (vDatePart1 <> '/') or (vDatePart2 <> '/') then
              begin
                vval := False;
                Break;
                Result := False;
              end;
            end;
          end;
        end;
      end;
    end;
    if (vval = False) then
    begin
      Result := False;
      SetiMens(2,vMens);
    end;
end;

procedure TfrmCadPadrao.pDelete;
var
  vRec : Integer;
  vExc : Boolean;
begin
    try
      if NOT qConfirma then
      begin
        if MessageDlg('Confirmar exclusão do registro?',mtConfirmation,
          [mbYes,mbNo],0) = mrYes then
            vExc := True else vExc := False;
      end else
        vExc := True;
      if vExc then
      begin
          dmMasterDataModule.SetiCds.Delete;
          dmMasterDataModule.SetiCds.ApplyUpdates(0);
          dmMasterDataModule.SetiCds.Refresh;
          SetiMens(1,'Registro excluído com sucesso.');
          vRec := dmMasterDataModule.SetiCds.RecordCount;
          if vRec > 0 then
            SetStatus('ABERTO') else
          SetStatus('INICIAL');
          pCompControl;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.pEdit;
begin
    try
      dmMasterDataModule.SetiCds.Edit;
      SetStatus('UPDATE');
      pCompControl;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

function TfrmCadPadrao.FieldValidate: Boolean;
var
  i,i2 : Integer;
  vList : TStringList;
  vNameArray : string;
  vNameComp : string;
  vMens : string;
  vval : Boolean;
begin
    Result := False;
    vval := True;
    vMens := 'Informação obrigatória não informada.';
    try
      if qListProviderForm <> '' then
      begin
        vList := TStringList.Create;
        ExtractStrings([';'],[],PChar(qListRequiredFields),vList);
        for i := 0 to vList.Count -1 do
        begin
          if vval = False then
            Break;
          vNameArray := UpperCase(vList[i]);
          for i2 := 0 to ComponentCount -1 do
          begin
            vNameComp := UpperCase(Components[i2].Name);
            if vNameComp = vNameArray then
            begin
              if Components[i2] is TDBEdit then
              begin
                if (TDBEDIT(Components[i2]).Text = '') then
                begin
                  SetiMens(2,vMens);
                  //TDBEDIT(Components[i2]).SetFocus;
                  vval := False;
                  Break;
                  Result := False;
                end;
              end else
              if Components[i2] is TMaskEdit then
              begin
                if (TMaskEdit(Components[i2]).Text = '') then
                begin
                  SetiMens(2,vMens);
                  //TMaskEdit(Components[i2]).SetFocus;
                  vval := False;
                  Break;
                  Result := False;
                end;
              end else
              if Components[i2] is TDBMemo then
              begin
                if (TDBMemo(Components[i2]).Text = '') then
                begin
                  SetiMens(2,vMens);
                  //TDBMemo(Components[i2]).SetFocus;
                  vval := False;
                  Break;
                  Result := False;
                end;
              end else
              if Components[i2] is TDBComboBox then
              begin
                if (TDBComboBox(Components[i2]).Text = '') then
                begin
                  SetiMens(2,vMens);
                  //TDBComboBox(Components[i2]).SetFocus;
                  vval := False;
                  Break;
                  Result := False;
                end;
              end else
              if Components[i2] is TDBLookupComboBox then
              begin
                if (TDBLookupComboBox(Components[i2]).Text = '') then
                begin
                  SetiMens(2,vMens);
                  //TDBLookupComboBox(Components[i2]).SetFocus;
                  vval := False;
                  Break;
                  Result := False;
                end;
              end;
            end;
          end;
        end;
      end;
      if vval then
        Result := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dmMasterDataModule.Free;
    Action := caFree;
    frmCadPadrao := nil;
end;

procedure TfrmCadPadrao.FormCreate(Sender: TObject);
var
  vval : Integer;
begin
    try
        SetWarning(False);
        vval := 0;
        if qCaptionForm = '' then vval := 1;
        if qQryForm = '' then vval := 1;
        if qTableForm = '' then vval := 1;
        if qGenForm = '' then vval := 1;
        if qKeyFieldForm = '' then vval := 1;
        if qListProviderForm = '' then vval := 1;
        if qOrderByForm = '' then vval := 1;
        if vval > 0 then
        begin
          SetWarning(True);
          ShowMessage('Parametros da tela estão incompletos');
          Exit;
        end else
        begin
          CreateItens;
          Self.Caption := qCaptionForm;
          dmMasterDataModule := TdmMasterDataModule.Create(Nil);
          pCreate;
          dmMasterDataModule.fnTableInforDM(qTableForm);
          pMarriedCompConfig;
          //pGBConfigure;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.FormShow(Sender: TObject);
begin
    if qWarning = False then
    begin
      SetStatus('INICIAL');
      pCompControl;
    end else
    Close;
end;

function TfrmCadPadrao.GetCaptionForm: string;
begin
    Result := FCaptionForm;
end;

procedure TfrmCadPadrao.GetFillDescById(IdField:TDBEdit; DescField: TEdit;
  TableName, FieldIdName, FieldDescName: string);
var
    vQry : TSQLQuery;
begin
    if IdField.Text <> '' then
    begin
      try
        qConnects := TSetiConnects.Create;
        vQry := TSQLQuery.Create(Nil);
        vQry.SQLConnection :=
          qConnects.ConnectsFIREBIRD(False);
        vQry.SQL.Add('SELECT FIRST 1 '+FieldDescName+' ');
        vQry.SQL.Add('FROM '+TableName +' ');
        vQry.SQL.Add('WHERE '+FieldIdName+ ' = :ID ');
        vQry.Params.ParamByName('ID').Value := StrToInt(IdField.Text);
        vQry.Open;
        if NOT (vQry.IsEmpty) then
        begin
            DescField.Text := vQry.FieldByName(FieldDescName).Value;
        end else
        begin
          IdField.Clear;
          DescField.Clear;
        end;
      finally
        vQry.Free;
        qConnects.Free;
      end;
    end else
    begin
      IdField.Clear;
      DescField.Clear;
    end;
end;

function TfrmCadPadrao.GetGenForm: string;
begin
    Result := FGenForm;
end;

function TfrmCadPadrao.GetGroupByForm: string;
begin
    Result := FGroupByForm;
end;

function TfrmCadPadrao.GetKeyFieldForm: string;
begin
    Result := FKeyFieldForm;
end;

function TfrmCadPadrao.GetListDateFieldsForm: string;
begin
    Result := FListDateFieldForm;
end;

function TfrmCadPadrao.GetListMarriedCompForm: string;
begin
    Result := FListMarriedCompForm;
end;

function TfrmCadPadrao.GetListMenuCaptionForm: string;
begin
    Result := FListMenuCaptionForm;
end;

function TfrmCadPadrao.GetListMenuForm: string;
begin
    Result := FListMenuForm;
end;

function TfrmCadPadrao.GetListProviderForm: string;
begin
    Result := FListProviderForm;
end;

function TfrmCadPadrao.GetListRequiredFields: string;
begin
    Result := FListRequiredFields;
end;

function TfrmCadPadrao.GetOrderByForm: string;
begin
    Result := FOrderByForm;
end;

function TfrmCadPadrao.GetQryForm: string;
begin
    Result := FQryForm;
end;

function TfrmCadPadrao.GetStatus: string;
begin
    Result := FStatus;
end;

function TfrmCadPadrao.GetTableForm: string;
begin
    Result := FTableForm;
end;

function TfrmCadPadrao.GetWarning: Boolean;
begin
    Result := FWarning;
end;

function TfrmCadPadrao.GetWhereAndForm: string;
begin
  Result := FWhereAndForm;
end;

procedure TfrmCadPadrao.NumberValidate(Sender: TObject; var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmCadPadrao.PageControl1Change(Sender: TObject);
begin
    if PageControl1.ActivePageIndex <> 0 then
    begin
      if dsPadrao.DataSet.State in [dsInsert,dsEdit,dsBrowse] then
        DisplayLbInfor;
    end else
    DisplayLbInfor(1);
end;

procedure TfrmCadPadrao.pSave;
var
  i : Integer;
  vNameField : string;
  vValCheck, vValUnCheck : string;
begin
  try
      try
        if NOT (FieldValidate) then
        begin
          SetValidateToSave(False);
          Exit;
        end else
        begin
          SetValidateToSave(True);
        end;
        if NOT (pDateVal) then
          Exit;
        if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
        begin
          if (qStatus = 'INSERT') then
          begin
            for i := 0 to ComponentCount -1 do
            begin
              if (Components[i] is TDBCheckBox) then
              begin
                vNameField := UpperCase(TDBCheckBox(Components[i]).DataField);
                vValCheck := UpperCase(TDBCheckBox(Components[i]).
                  ValueChecked);
                vValUnCheck := UpperCase(TDBCheckBox(Components[i]).
                  ValueUnchecked);
                if TDBCheckBox(Components[i]).Checked then
                begin
                  dmMasterDataModule.SetiCds.FieldByName(vNameField).Value :=
                    vValCheck;
                end else
                begin
                  dmMasterDataModule.SetiCds.FieldByName(vNameField).Value :=
                    vValUnCheck;
                end;
              end;
            end;
          end;
          dmMasterDataModule.SetiCds.Post;
          dmMasterDataModule.SetiCds.ApplyUpdates(0);
          if (qStatus = 'INSERT') then
          begin
            if ExibirMensInsert then
              SetiMens(1,'Registro inserido com sucesso.');
          end else
          if (qStatus = 'UPDATE') then
          begin
            if ExibirMensUpdate then
              SetiMens(1,'Registro atualizado com sucesso.');
          end;
          if NOT NoModoInicialToSave then
            dmMasterDataModule.SetiCds.Close;
        end;
          if NOT NoModoInicialToSave then
            SetStatus('INICIAL') else
          SetStatus('ABERTO');
        pCompControl;
      finally

      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadPadrao.pCompControl;
var
  iStatus : Integer;
  reg : Boolean;
  i : Integer;
begin
    iStatus := 0;
    try
      if (dmMasterDataModule.SetiCds.IsEmpty) then
        reg := False else reg := True;
      if (qStatus = 'INICIAL') then iStatus := 1 else
      if (qStatus = 'ABERTO') then iStatus := 2 else
      if (qStatus = 'INSERT') then iStatus := 3 else
      if (qStatus = 'UPDATE') then iStatus := 4;
      if (iStatus in [2]) and (reg = False) then iStatus := 0;

      if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
      begin
        SetExibirMensInsert(True);
        SetExibirMensUpdate(True);
      end;

      for I := 0 to ComponentCount -1 do
      begin
        if Components[i].Tag <> 99 then
        begin
          if Components[i] is TSpeedButton then
          begin
            if ((Components[i] as TSpeedButton).Name <> 'sbInsert') and
                ((Components[i] as TSpeedButton).Name <> 'sbUpdate') and
                  ((Components[i] as TSpeedButton).Name <> 'sbDel') and
                    ((Components[i] as TSpeedButton).Name <> 'sbSave') and
                     ((Components[i] as TSpeedButton).Name <> 'sbCancel') then
            begin
              (Components[i] as TSpeedButton).Enabled := iStatus in [3,4];
            end;
          end;
          if iStatus = 0 then
          begin
            if Components[i] is TDBEdit then
              TDBEDIT(Components[i]).ReadOnly := True else
            if Components[i] is TMaskEdit then
              TMaskEdit(Components[i]).ReadOnly := True else
            if Components[i] is TDBRadioGroup then
              TDBRadioGroup(Components[i]).ReadOnly := True else
            if Components[i] is TDBMemo then
              TDBMemo(Components[i]).ReadOnly := True else
            if Components[i] is TDBComboBox then
              TDBComboBox(Components[i]).ReadOnly := True else
            if Components[i] is TDBLookupComboBox then
              TDBLookupComboBox(Components[i]).ReadOnly := True else
            if Components[i] is TDBCheckBox then
              TDBCheckBox(Components[i]).ReadOnly := True;
            if Components[i] is TMaskEdit then
            begin
              TMaskEdit(Components[i]).Clear;
              TMaskEdit(Components[i]).ReadOnly := True;
            end;
            if Components[i] is TGroupBox then
              TGroupBox(Components[i]).Enabled := False;
            if Components[i] is TEdit then
            begin
              if TEdit(Components[i]).Color = clInfoBk then
              begin
                TEdit(Components[i]).Clear;
                TEdit(Components[i]).Enabled := False;
              end;
            end;
          end else
          if iStatus = 1 then
          begin
            if Components[i] is TDBEdit then
              TDBEDIT(Components[i]).ReadOnly := True else
            if Components[i] is TMaskEdit then
              TMaskEdit(Components[i]).ReadOnly := True else
            if Components[i] is TDBRadioGroup then
              TDBRadioGroup(Components[i]).ReadOnly := True else
            if Components[i] is TDBMemo then
              TDBMemo(Components[i]).ReadOnly := True else
            if Components[i] is TDBComboBox then
              TDBComboBox(Components[i]).ReadOnly := True else
            if Components[i] is TDBLookupComboBox then
              TDBLookupComboBox(Components[i]).ReadOnly := True else
            if Components[i] is TDBCheckBox then
              TDBCheckBox(Components[i]).ReadOnly := True;
            if Components[i] is TMaskEdit then
            begin
              TMaskEdit(Components[i]).Clear;
              TMaskEdit(Components[i]).ReadOnly := True;
            end;
            if Components[i] is TGroupBox then
              TGroupBox(Components[i]).Enabled := False;
            if Components[i] is TEdit then
            begin
              if TEdit(Components[i]).Color = clInfoBk then
              begin
                TEdit(Components[i]).Clear;
                TEdit(Components[i]).Enabled := False;
              end;
            end;
          end else
          if iStatus = 2 then
          begin
            if Components[i] is TDBEdit then
              TDBEDIT(Components[i]).ReadOnly := True else
            if Components[i] is TMaskEdit then
              TMaskEdit(Components[i]).ReadOnly := True else
            if Components[i] is TDBRadioGroup then
              TDBRadioGroup(Components[i]).ReadOnly := True else
            if Components[i] is TDBMemo then
              TDBMemo(Components[i]).ReadOnly := True else
            if Components[i] is TDBComboBox then
              TDBComboBox(Components[i]).ReadOnly := True else
            if Components[i] is TDBLookupComboBox then
              TDBLookupComboBox(Components[i]).ReadOnly := True else
            if Components[i] is TDBCheckBox then
              TDBCheckBox(Components[i]).ReadOnly := True;
            if Components[i] is TMaskEdit then
            begin
              TMaskEdit(Components[i]).ReadOnly := True;
            end;
            if Components[i] is TGroupBox then
              TGroupBox(Components[i]).Enabled := False;
            if Components[i] is TEdit then
            begin
              if TEdit(Components[i]).Color = clInfoBk then
              begin
                TEdit(Components[i]).Enabled := False;
              end;
            end;
          end else
          if iStatus = 3 then
          begin
            if Components[i] is TDBEdit then
              TDBEDIT(Components[i]).ReadOnly := False else
            if Components[i] is TMaskEdit then
              TMaskEdit(Components[i]).ReadOnly := False else
            if Components[i] is TDBRadioGroup then
              TDBRadioGroup(Components[i]).ReadOnly := False else
            if Components[i] is TDBMemo then
              TDBMemo(Components[i]).ReadOnly := False else
            if Components[i] is TDBComboBox then
              TDBComboBox(Components[i]).ReadOnly := False else
            if Components[i] is TDBLookupComboBox then
              TDBLookupComboBox(Components[i]).ReadOnly := False else
            if Components[i] is TDBCheckBox then
              TDBCheckBox(Components[i]).ReadOnly := False;
            if Components[i] is TMaskEdit then
            begin
              TMaskEdit(Components[i]).ReadOnly := False;
            end;
            if Components[i] is TGroupBox then
              TGroupBox(Components[i]).Enabled := True;
            if Components[i] is TEdit then
            begin
              if TEdit(Components[i]).Color = clInfoBk then
              begin
                TEdit(Components[i]).Clear;
                TEdit(Components[i]).Enabled := False;
              end;
            end;
          end else
          if iStatus = 4 then
          begin
            if Components[i] is TDBEdit then
              TDBEDIT(Components[i]).ReadOnly := False else
            if Components[i] is TMaskEdit then
              TMaskEdit(Components[i]).ReadOnly := False else
            if Components[i] is TDBRadioGroup then
              TDBRadioGroup(Components[i]).ReadOnly := False else
            if Components[i] is TDBMemo then
              TDBMemo(Components[i]).ReadOnly := False else
            if Components[i] is TDBComboBox then
              TDBComboBox(Components[i]).ReadOnly := False else
            if Components[i] is TDBLookupComboBox then
              TDBLookupComboBox(Components[i]).ReadOnly := False else
            if Components[i] is TDBCheckBox then
              TDBCheckBox(Components[i]).ReadOnly := False;
            if Components[i] is TMaskEdit then
            begin
              TMaskEdit(Components[i]).ReadOnly := False;
            end;
            if Components[i] is TEdit then
            begin
              if TEdit(Components[i]).Color = clInfoBk then
              begin
                TEdit(Components[i]).Enabled := False;
              end;
            end;
            if Components[i] is TGroupBox then
              TGroupBox(Components[i]).Enabled := True;
          end;
        end;
      end;

      if (iStatus in [0]) then  //INICIAL - SEM REGISTRO
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := True;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := False;
        sbCancel.Enabled := True;
        PageControl1.ActivePageIndex := 0;
        DBNavigator1.Enabled := False;
      end else
      if (iStatus in [1]) then  //INICIAL
      begin
        sbAbrir.Enabled := True;
        sbInsert.Enabled := True;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := False;
        sbCancel.Enabled := False;
        PageControl1.ActivePageIndex := 0;
        DBNavigator1.Enabled := False;
      end else
      if (iStatus in [2]) then //ABERTO
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := True;
        sbUpdate.Enabled := True;
        sbDel.Enabled := True;
        sbSave.Enabled := False;
        sbCancel.Enabled := True;
        DBNavigator1.Enabled := True;
      end else
      if (iStatus in [3]) then //INSERT
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := False;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := True;
        sbCancel.Enabled := True;
        DBNavigator1.Enabled := False;
        PageControl1.ActivePageIndex := 0;
        //dbeNome.SetFocus;
      end else
      if (iStatus in [4]) then //UPDATE
      begin
        sbAbrir.Enabled := False;
        sbInsert.Enabled := False;
        sbUpdate.Enabled := False;
        sbDel.Enabled := False;
        sbSave.Enabled := True;
        sbCancel.Enabled := True;
        DBNavigator1.Enabled := False;
        //PageControl1.ActivePageIndex := 0;
        //dbeNome.SetFocus;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.pMarriedCompConfig;
var
    vList1, vList2 : TStringList;
    i,i2 : Integer;
    vNameArray : string;
    vNameDbeEdit : string;
    vNameTEdit : string;
    vNameTable : string;
    vNameKeyField : string;
    vNameDescField : string;
    vNameButton : string;
    vcont, vid : Integer;
begin
    try
      {CDS ONDE SERÃO ARMAZENADAS AS INFORMAÇÕES SOBRE OS COMBOX GB}
      qCdsMarriedCompForm := TClientDataSet.Create(Self);
      qCdsMarriedCompForm.Close;
      qCdsMarriedCompForm.FieldDefs.Clear;
      qCdsMarriedCompForm.FieldDefs.add('ID',ftInteger);
      qCdsMarriedCompForm.FieldDefs.add('TDBEDIT',ftString,50);
      qCdsMarriedCompForm.FieldDefs.add('TEDIT',ftString,50);
      qCdsMarriedCompForm.FieldDefs.add('TSPEEDBUTTON',ftString,50);
      qCdsMarriedCompForm.FieldDefs.add('TABLENAME',ftString,50);
      qCdsMarriedCompForm.FieldDefs.add('FIELDKEYNAME',ftString,50);
      qCdsMarriedCompForm.FieldDefs.add('FIELDDESCNAME',ftString,50);
      qCdsMarriedCompForm.FieldDefs.add('BUTTONNAME',ftString,50);
      qCdsMarriedCompForm.CreateDataSet;

      {VARIAVEL QUE RECEBE A LISTA DE COMBOBOX BG}
      if (qListGBForm <> '') then
      begin
        {1ª LISTA - SEPARA AS INFORMAÇÕES PARA O GB POR ';'}
        vList1 := TStringList.Create;
        ExtractStrings([';'],[],PChar(qListGBForm),vList1);
        for i := 0 to vList1.Count -1 do
        begin
          {VARIAVEL QUE ARMAZENA LISTAS DE INFORMAÇÕES GB}
          vNameArray := UpperCase(vList1[i]);
          {2ª LISTA - SEPARA AS INFORMAÇÕES SOBRE TABELA, KEY E DESC - GB}
          try
            vcont := 0;
            vList2 := TStringList.Create;
            ExtractStrings([','],[],PChar(vNameArray),vList2);
            for i2 := 0 to vList2.Count -1 do
            begin
              if (vcont = 0) then
                vid := StrToInt(vList2[i2]) else
              if (vcont = 1) then
                vNameDbeEdit := UpperCase(vList2[i2]) else
              if (vcont = 2) then
                vNameTEdit := UpperCase(vList2[i2]) else
              if (vcont = 3) then
                vNameButton := UpperCase(vList2[i2]);
              if (vcont = 4) then
                vNameTable := UpperCase(vList2[i2]) else
              if (vcont = 5) then
                vNameKeyField := UpperCase(vList2[i2]) else
              if (vcont = 6) then
                vNameDescField := UpperCase(vList2[i2]);
              vcont := vcont + 1;
            end;
            if (vNameDbeEdit <> '') and
                  (vNameTEdit <> '') and
                    (vNameButton <> '') and
                      (vNameTable <> '') and
                        (vNameKeyField <> '') and
                          (vNameDescField <> '') then
            begin
              qCdsMarriedCompForm.Append;
              qCdsMarriedCompForm.FieldByName('ID').Value := IntToStr(vid);
              qCdsMarriedCompForm.FieldByName('TDBEDIT').Value := vNameDbeEdit;
              qCdsMarriedCompForm.FieldByName('TEDIT').Value := vNameTEdit;
              qCdsMarriedCompForm.FieldByName('TSPEEDBUTTON').Value :=
                vNameButton;
              qCdsMarriedCompForm.FieldByName('TABLENAME').Value :=
                vNameTable;
              qCdsMarriedCompForm.FieldByName('FIELDKEYNAME').Value :=
                vNameKeyField;
              qCdsMarriedCompForm.FieldByName('FIELDDESCNAME').Value :=
                vNameDescField;
              qCdsMarriedCompForm.FieldByName('BUTTONNAME').Value :=
                vNameButton;
              qCdsMarriedCompForm.Post;
            end;
          finally
            vList2.Free;
          end;
          for i2 := ComponentCount - 1 downto 0 do
          begin
            qCdsMarriedCompForm.Close;
            qCdsMarriedCompForm.Open;
            if NOT (qCdsMarriedCompForm.IsEmpty) then
            begin
              //TDBEDIT
              if (Components[i2] is TDBEdit) then
              begin
                try
                  qCdsMarriedCompForm.Filtered := False;
                  qCdsMarriedCompForm.Filter := 'TDBEDIT = '+QuotedStr(
                                                  UpperCase(TDBEdit(
                                                      Components[i2]).Name));
                  qCdsMarriedCompForm.Filtered := True;
                  if NOT qCdsMarriedCompForm.IsEmpty then
                    (Components[i2] as TDBEdit).OnChange := pGBChange;
                finally
                  qCdsMarriedCompForm.Filtered := False;
                end;
              end;
              if (Components[i2] is TSpeedButton) then
              begin
                try
                  qCdsMarriedCompForm.Filtered := False;
                  qCdsMarriedCompForm.Filter := 'TSPEEDBUTTON = '+QuotedStr(
                                                  UpperCase(
                                                    TSpeedButton(
                                                      Components[i2]).Name));
                  qCdsMarriedCompForm.Filtered := True;
                  if NOT qCdsMarriedCompForm.IsEmpty then
                    (Components[i2] as TSpeedButton).OnClick := pGBClick;
                finally
                  qCdsMarriedCompForm.Filtered := False;
                end;
              end;
            end;
          end;
        end;
      end;
      finally
        vList1.Free;
      end;
end;

procedure TfrmCadPadrao.pInsert;
begin
    try
      SetStatus('INSERT');
      dsPadrao.DataSet := dmMasterDataModule.SetiCds;
      dmMasterDataModule.SetiCds.Close;
      dmMasterDataModule.SetiCds.Open;
      pCompControl;
      dmMasterDataModule.SetiCds.Append;
      dmGen := TdmGen.Create(Nil);
      dmMasterDataModule.SetiCds.FieldByName('ID').Value :=
        dmGen.ProximoId(qGenForm);
      dmGen.Free;
      //pCompControl;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.SearchClick(Sender: TObject);
var
  vNameFieldMenu : string;
  vCaptionFieldMenu : string;
begin
    qCdsMenu.Close;
    qCdsMenu.Open;
    if NOT (qCdsMenu.IsEmpty) then
    begin
      qCdsMenu.Filtered := False;
      qCdsMenu.Filter := 'ID = '+IntToStr((Sender as TMenuItem).Tag);
      qCdsMenu.Filtered := True;
      vNameFieldMenu := qCdsMenu.FieldByName('DESCRIPTION').AsString;
      ProviderForm;
      vCaptionFieldMenu := (Sender as TMenuItem).Caption;
      cLocate := TLocate.Create;
      { 1 -   pType           : Integer;
        2 -   pCds            : TClientDataSet;
        3 -   pTable          : string;
        4 -   pField          : String;
        5 -   pKey            : String;
        6 -   pTitle          : String;
        7 -   pComm           : string;
        8 -   pCdsArray       : TClientDataSet;
        9 -   pGroupBy        : string;
        10 -  pOrder          : string;
        11 -  pFieldCaption   : string;
        12 -  pIdConnect      : Integer}
       cLocate.SetSearchType(0);
          dsPadrao.DataSet :=
            cLocate.GetSearchDataSetProvider(
                                    1,
                                    dmMasterDataModule.SetiCds,
                                    qTableForm,
                                    vNameFieldMenu,
                                    qKeyFieldForm,
                                    qCaptionForm,
                                    qQryForm,
                                    qCdsProvider,
                                    qWhereAndForm,
                                    qGroupByForm,
                                    qOrderByForm,
                                    vCaptionFieldMenu
                                    );




      if Assigned(dsPadrao.DataSet) then
      begin
        DBNavigator1.DataSource := dsPadrao;
        SetStatus('ABERTO');
      end;
      pCompControl;

    end;
end;

procedure SearchFillFields(dbeId : TDBEdit; edtId : TEdit);
begin

end;

procedure TfrmCadPadrao.ProviderForm;
var
  i : Integer;
  vNameArray : string;
  vList : TStringList;
begin
    qCdsProvider := TClientDataSet.Create(Self);
    qCdsProvider.Close;
    qCdsProvider.FieldDefs.Clear;
    qCdsProvider.FieldDefs.add('DESCRIPTION',ftString,50);
    qCdsProvider.CreateDataSet;
    vList := TStringList.Create;
    ExtractStrings([';'],[],PChar(qListProviderForm),vList);
    for i := 0 to vList.Count -1 do
    begin
      vNameArray := vList[i];
      qCdsProvider.Append;
      qCdsProvider.FieldByName('DESCRIPTION').AsString := vNameArray;
      qCdsProvider.Post;
    end;
end;

procedure TfrmCadPadrao.SetCaptionForm(const Value: string);
begin
    FCaptionForm := Value;
end;

procedure TfrmCadPadrao.SetExibirMensInsert(const Value: Boolean);
begin
    FExibirMensInsert := Value;
end;

procedure TfrmCadPadrao.SetExibirMensUpdate(const Value: Boolean);
begin
    FExibirMensUpdate := Value;
end;

procedure TfrmCadPadrao.pGBChange(Sender: TObject);
var
    vNameTable : string;
    vNameKeyField : string;
    vNameDescField : string;
    vValue : Integer;
    vNameTEdit : string;
    i : Integer;
    vQry : TSQLQuery;
    vSqlConn: TSQLConnection;
begin
      qCdsMarriedCompForm.Close;
      qCdsMarriedCompForm.Open;
      if NOT (qCdsMarriedCompForm.IsEmpty) then
      begin
        try
          if (Sender as TDBEdit).Text <> '' then
            vValue := StrToInt((Sender as TDBEdit).Text) else
          vValue := -1;
          if (vValue = -1) then
            Exit;
          qCdsMarriedCompForm.Filtered := False;
          qCdsMarriedCompForm.Filter := 'TDBEDIT = '
            +QuotedStr(UpperCase((Sender as TDBEdit).Name));
          qCdsMarriedCompForm.Filtered := True;
          if NOT (qCdsMarriedCompForm.IsEmpty) then
          begin
            vNameTable :=
              qCdsMarriedCompForm.FieldByName('TABLENAME').Value;
            vNameKeyField :=
              qCdsMarriedCompForm.FieldByName('FIELDKEYNAME').Value;
            vNameDescField :=
              qCdsMarriedCompForm.FieldByName('FIELDDESCNAME').Value;
            vNameTEdit :=
              qCdsMarriedCompForm.FieldByName('TEDIT').Value;
            for i := 0 to ComponentCount -1 do
            begin
              if (Components[i] is TEdit) then
              begin
                if (UpperCase(TDBEdit(Components[i]).Name) = vNameTEdit) then
                begin
                  if vValue <> -1 then
                  begin
                    try
                      vQry := TSQLQuery.Create(Nil);
                      //vSqlConn := TSQLConnection.Create(Nil);
                      qConnects := TSetiConnects.Create;
                      vQry.SQLConnection :=
                        qConnects.ConnectsFIREBIRD(False);
                      vQry.SQL.Add('SELECT FIRST 1 '+vNameDescField +' ');
                      vQry.SQL.Add('FROM '+vNameTable +' ');
                      vQry.SQL.Add('WHERE '+vNameKeyField+ ' = :ID ');
                      vQry.Params.ParamByName('ID').Value := vValue;
                      vQry.Open;
                      if NOT (vQry.IsEmpty) then
                      begin
                        (Components[i] as TEdit).Text :=
                          vQry.FieldByName(vNameDescField).Value;
                      end;
                    finally
                      vQry.Free;
                      //vSqlConn.Free;
                      qConnects.Free;
                    end;
                  end else
                    TEdit(Components[i]).Clear;
                end;
              end;
            end;
          end;
        finally
          qCdsMarriedCompForm.Filtered := False;
        end;
      end;
end;

procedure TfrmCadPadrao.pGBClick(Sender: TObject);
var
    vNameTable : string;
    vNameKeyField : string;
    vNameDescField : string;
    vNameTDbedit : string;
    i : Integer;
begin
    SetVerifButtonClick(True);
    qCdsMarriedCompForm.Close;
    qCdsMarriedCompForm.Open;
    if NOT (qCdsMarriedCompForm.IsEmpty) then
    begin
      try
        qCdsMarriedCompForm.Filtered := False;
        qCdsMarriedCompForm.Filter := 'BUTTONNAME = '
          +QuotedStr(UpperCase((Sender as TSpeedButton).Name));
        qCdsMarriedCompForm.Filtered := True;
        vNameTable :=
          qCdsMarriedCompForm.FieldByName('TABLENAME').AsString;
        vNameKeyField :=
          qCdsMarriedCompForm.FieldByName('FIELDKEYNAME').AsString;
        vNameDescField :=
          qCdsMarriedCompForm.FieldByName('FIELDDESCNAME').AsString;
        vNameTDbedit :=
          qCdsMarriedCompForm.FieldByName('TDBEDIT').AsString;
        cLocate := TLocate.Create;
        for i := 0 to ComponentCount -1 do
        begin
          if (Components[i] is TDBEdit) then
          begin
            if (UpperCase(TDBEdit(Components[i]).Name) = vNameTDbedit) then
            begin
              TDBEdit(Components[i]).Text :=
                cLocate.GetSearch(0,
                                  NIL,
                                  vNameTable,
                                  vNameKeyField,
                                  vNameKeyField,
                                  vNameKeyField,
                                  '',
                                  '',
                                  qWhereAndForm,
                                  '',
                                  'ORDER BY '+vNameKeyField
                                  );
            end;
          end;
        end;
      finally
        qCdsMarriedCompForm.Filtered := False;
      end;
    end;
    SetVerifButtonClick(False);
end;

procedure TfrmCadPadrao.SetGenForm(const Value: string);
begin
    FGenForm := Value;
end;

procedure TfrmCadPadrao.SetGroupByForm(const Value: string);
begin
    FGroupByForm := Value;
end;

procedure TfrmCadPadrao.SetInfLabelCompName(const Value: string);
begin
  FInfLabelCompName := Value;
end;

procedure TfrmCadPadrao.SetKeyFieldForm(const Value: string);
begin
    FKeyFieldForm := Value;
end;

procedure TfrmCadPadrao.SetListDateFieldForm(const Value: string);
begin
    FListDateFieldForm := Value;
end;

procedure TfrmCadPadrao.SetListMarriedCompForm(const Value: string);
begin
    FListMarriedCompForm := Value;
end;

procedure TfrmCadPadrao.SetListMenuCaptionForm(const Value: string);
begin
  FListMenuCaptionForm := Value;
end;

procedure TfrmCadPadrao.SetListMenuForm(const Value: string);
begin
    FListMenuForm := Value;
end;

procedure TfrmCadPadrao.SetListProviderForm(const Value: string);
begin
    FListProviderForm := Value;
end;

procedure TfrmCadPadrao.SetListRequiredFields(const Value: string);
begin
    FListRequiredFields := Value;
end;

procedure TfrmCadPadrao.SetNoModoInicialToSave(const Value: Boolean);
begin
  FNoModoInicialToSave := Value;
end;

procedure TfrmCadPadrao.SetOrderByForm(const Value: string);
begin
    FOrderByForm := Value;
end;

procedure TfrmCadPadrao.SetqConfirma(const Value: Boolean);
begin
  FqConfirma := Value;
end;

procedure TfrmCadPadrao.SetQryForm(const Value: string);
begin
    FQryForm := Value;
end;

procedure TfrmCadPadrao.SetStatus(const Value: string);
begin
    FStatus := Value;
end;

procedure TfrmCadPadrao.SetTableForm(const Value: string);
begin
    FTableForm := Value;
end;

procedure TfrmCadPadrao.SetValidateToSave(const Value: Boolean);
begin
    FValidateToSave := Value;
end;

procedure TfrmCadPadrao.SetVerifButtonClick(const Value: Boolean);
begin
    FVerifButtonClick := Value;
end;

procedure TfrmCadPadrao.SetWarning(const Value: Boolean);
begin
    FWarning := Value;
end;

procedure TfrmCadPadrao.SetWhereAndForm(const Value: string);
begin
    FWhereAndForm := Value;
end;

procedure TfrmCadPadrao.sbCancelClick(Sender: TObject);
begin
    try
      dmMasterDataModule.SetiCds.Cancel;
      dmMasterDataModule.SetiCds.Close;
      SetStatus('INICIAL');
      pCompControl;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.sbDelClick(Sender: TObject);
begin
    try
      pDelete;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.sbInsertClick(Sender: TObject);
begin
    try
      pInsert;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmCadPadrao.sbSaveClick(Sender: TObject);
begin
    pSave;
end;

procedure TfrmCadPadrao.sbUpdateClick(Sender: TObject);
begin
    try
      pEdit;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

end.
