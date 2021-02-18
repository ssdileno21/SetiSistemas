unit ufrmMasterSearchScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Datasnap.DBClient,  MIDASLIB,  Vcl.ComCtrls, Datasnap.Provider,
  Data.FMTBcd, Data.SqlExpr, Vcl.ImgList, VCLTee.TeCanvas, VCLTee.TeePenDlg,
  FileCtrl,

  uMess, uSetiConfig, uSetiConnects,

  udmMasterDataModule
  ;

type
  TfrmMasterSearchScreen = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgResult: TDBGrid;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    Panel17: TPanel;
    Panel20: TPanel;
    cbxSelectField: TComboBox;
    cbxSelectValueFixed: TComboBox;
    cbxFieldPeriod: TComboBox;
    cxNotInformation: TCheckBox;
    cxNullValues: TCheckBox;
    edtFieldValue: TEdit;
    cxEqualThanZeroValues: TCheckBox;
    cxNotNullValues: TCheckBox;
    cxGreaterThanZeroValues: TCheckBox;
    cxNotInformationDif: TCheckBox;
    cxNullDate: TCheckBox;
    Panel5: TPanel;
    Label1: TLabel;
    dtpStart: TDateTimePicker;
    Label2: TLabel;
    dtpEnd: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    cxPeriod: TCheckBox;
    Label5: TLabel;
    sbSearch: TButtonPen;
    ImageList1: TImageList;
    sbClearFilter: TButtonPen;
    sbExcel: TButtonPen;
    btnOk: TButtonPen;
    btnCancel: TButtonPen;
    dsSource: TDataSource;
    procedure cxPeriodClick(Sender: TObject);
    procedure cbxSelectFieldClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpStartExit(Sender: TObject);
    procedure dtpEndExit(Sender: TObject);
    procedure cbxSelectValueFixedChange(Sender: TObject);
    procedure edtFieldValueExit(Sender: TObject);
    procedure edtFieldValueKeyPress(Sender: TObject; var Key: Char);
    procedure sbSearchClick(Sender: TObject);
    procedure cxNullValuesClick(Sender: TObject);
    procedure cxNotNullValuesClick(Sender: TObject);
    procedure cxNotInformationClick(Sender: TObject);
    procedure cxNotInformationDifClick(Sender: TObject);
    procedure cxEqualThanZeroValuesClick(Sender: TObject);
    procedure cxGreaterThanZeroValuesClick(Sender: TObject);
    procedure cxNullDateClick(Sender: TObject);
    procedure sbClearFilterClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure dbgResultDblClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbExcelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FTitle: string;
    FType: Integer;
    FTableName: string;
    FKeyFieldName : string;
    FReturnType: Integer;
    FReturnFieldName: string;
    FCds: TClientDataSet;
    FQuery: string;
    FReturnFieldValue : Variant;
    FReturnDataSet : TDataSet;
    FConnects : TSetiConnects;

    FThereAreFieldsToWork : Boolean;

    FSelectedFieldType : string;
    FSelectedFieldSize : Integer;
    FSelectedFieldName : string;
    FSelectedFieldFixed : Boolean;

    FField : string;
    FFixedValues : Variant;
    FPeriod : Boolean;
    FFieldPeriod : string;
    FInitialDate : string;
    FFinalDate : string;
    FFieldValue : Variant;
    FNullValues : Boolean;
    FEqualThanZeroValues : Boolean;
    FNotInformedValues : Boolean; 
    FNotNullValues : Boolean;
    FGreaterThanZeroValues : Boolean;
    FNotInformedValuesDif : Boolean;
    FNullDates : Boolean;
    function GetFieldInfo(ReturnField:string= ''; Description:string = '';
      ForCaption:Boolean = True; ForName:Boolean = False) : Variant;
    function SettingTheFieldType(Index:Integer) : Boolean;
    function CheckCheck(VarCheckName:string) : Boolean;
    procedure CurrentDate;
    procedure FillsFieldsCombo(Value : string);
    procedure LoadFilters;
    procedure Search;
    procedure SelectFieldEnabledDisabled;
    procedure EditFieldValueDisabled;
    procedure CheckControl(Cx:TCheckBox);
    procedure DisableEnabledDateSelected(Index:Integer=0);
    procedure EnabledDisabled(Index:Integer=0);
    procedure PeriodClick;
  public
    function GetTitle: string;
    function GetType: Integer;
    function GetTableName: string;
    function GetKeyFieldName: string;
    function GetReturnType: Integer;
    function GetReturnFieldName: string;
    function GetCds: TClientDataSet;
    function GetQuery: string;
    function GetReturnFieldValue : Variant;
    function GetReturnDataSet : TDataSet;

    function GetThereAreFieldsToWork : Boolean;
    function GetSelectedFieldType : string;
    function GetSelectedFieldSize : Integer;
    function GetSelectedFieldName : string;
    function GetSelectedFieldFixed : Boolean;

    function GetField : string;
    function GetFixedValues : Variant;
    function GetPeriod : Boolean;
    function GetFieldPeriod : string;
    function GetInitialDate : string;
    function GetFinalDate : string;
    function GetFieldValue : Variant;
    function GetNullValues : Boolean;
    function GetEqualThanZeroValues : Boolean;
    function GetNotInformedValues : Boolean;
    function GetNotNullValues : Boolean;
    function GetGreaterThanZeroValues : Boolean;
    function GetNotInformedValuesDif : Boolean;
    function GetNullDates : Boolean;


    procedure SetTitle(Const Value: string);
    procedure SetType(Const Value: Integer);
    procedure SetTableName(Const Value: string);
    procedure SetKeyFieldName(Const Value: string);
    procedure SetReturnType(Const Value: Integer);
    procedure SetReturnFieldName(Const Value: string);
    procedure SetCds(Const Value: TClientDataSet);
    procedure SetQuery(Const Value: string);
    procedure SetReturnFieldValue(Const Value: Variant);
    procedure SetReturnDataSet(Const Value: TDataSet);

    procedure SetThereAreFieldsToWork(Const Value: Boolean);
    procedure SetSelectFieldType(Const Value: string);
    procedure SetSelectedFieldSize(Const Value: Integer);
    procedure SetSelectedFieldName(Const Value: string);
    procedure SetSelectedFieldFixed(Const Value: Boolean);

    procedure SetField(Const Value : string);
    procedure SetFixedValues(Const Value : Variant);
    procedure SetPeriod(Const Value : Boolean);
    procedure SetFieldPeriod(Const Value : string);
    procedure SetInitialDate(Const Value : string);
    procedure SetFinalDate(Const Value : string);
    procedure SetFieldValue(Const Value : Variant);
    procedure SetNullValues(Const Value : Boolean);
    procedure SetEqualThanZeroValues(Const Value : Boolean);
    procedure SetNotInformedValues(Const Value : Boolean);
    procedure SetNotNullValues(Const Value : Boolean);
    procedure SetGreaterThanZeroValues(Const Value : Boolean);
    procedure SetNotInformedValuesDif(Const Value : Boolean);
    procedure SetNullDates(Const Value : Boolean);

  published
    property qTitle: string read GetTitle write SetTitle;
    {qtype: 0: table 1: query}
    property qType: Integer read GetType write SetType;
    property qTableName: string read GetTableName write SetTableName;
    property qKeyFieldName: string read GetKeyFieldName write SetKeyFieldName;
    property qReturnType: Integer read GetReturnType write SetReturnType;
    property qReturnFieldName: string read GetReturnFieldName
      write SetReturnFieldName;
    property qCds: TClientDataSet read GetCds write SetCds;
    property qQuery: string read GetQuery write SetQuery;
    property qReturnFieldValue : Variant read GetReturnFieldValue
      write SetReturnFieldValue;
    property qReturnDataSet : TDataSet read GetReturnDataSet
      write SetReturnDataSet;

    property qThereAreFieldsToWork: Boolean read GetThereAreFieldsToWork
      write SetThereAreFieldsToWork;

    {qSelectFieldType: varying, text, long, timestamp}
    property qSelectFieldType : string read GetSelectedFieldType
      write SetSelectFieldType;
    property qSelectedFieldSize : Integer read GetSelectedFieldSize
      write SetSelectedFieldSize;
    property qSelectedFieldName : string read GetSelectedFieldName
      write SetSelectedFieldName;
    property qSelectedFieldFixed : Boolean read GetSelectedFieldFixed
      write SetSelectedFieldFixed;
    {field values...}
    property qField : string read GetField write SetField;
    property qFixedValues : Variant read GetFixedValues write SetFixedValues;
    property qPeriod : Boolean read GetPeriod write SetPeriod;
    property qFieldPeriod : string read GetFieldPeriod write SetFieldPeriod;
    property qInitialDate : string read GetInitialDate write SetInitialDate;
    property qFinalDate : string read GetFinalDate write SetFinalDate;
    property qFieldValue : Variant read GetFieldValue write SetFieldValue;
    property qNullValues : Boolean read GetNullValues write SetNullValues;
    property qEqualThanZeroValues : Boolean read GetEqualThanZeroValues write 
      SetEqualThanZeroValues;
    property qNotInformedValues : Boolean read GetNotInformedValues write
      SetNotInformedValues;     
    property qNotNullValues : Boolean read GetNotNullValues write
      SetNotNullValues;
    property qGreaterThanZeroValues : Boolean read GetGreaterThanZeroValues
    write SetGreaterThanZeroValues;
    property qNotInformedValuesDif : Boolean read GetNotInformedValuesDif write
      SetNotInformedValuesDif;
    property qNullDates : Boolean read GetNullDates write
      SetNullDates;
    property qConnects : TSetiConnects read FConnects write FConnects;
end;

var
  frmMasterSearchScreen: TfrmMasterSearchScreen;

implementation

{$R *.dfm}

uses uSetiUseful;


{ TfrmMasterSearchScreen }

procedure TfrmMasterSearchScreen.cxPeriodClick(Sender: TObject);
begin
    try
      if NOT (dmMasterDataModule.SetiCds.IsEmpty) then
      begin
        {if (qSelectedFieldFixed = False) then
        begin}
          if (cxPeriod.Checked) then
          begin
            EnabledDisabled(3);
            dmMasterDataModule.SetiCds.Filtered := False;
            dmMasterDataModule.SetiCds.Filter :=
              'FIELDTYPE_ LIKE UPPER(''%TIMESTAMP%'')';
            dmMasterDataModule.SetiCds.Filtered := True;
            if NOT (dmMasterDataModule.SetiCds.IsEmpty) then
            begin
              dmMasterDataModule.SetiCds.First;
              cbxFieldPeriod.Items.Add('');
              while NOT dmMasterDataModule.SetiCds.Eof do
              begin
                cbxFieldPeriod.Items.Add(
                dmMasterDataModule.SetiCds.FieldByName('FIELDCAPTION_').
                  AsString);
                dmMasterDataModule.SetiCds.Next;
              end;
              dmMasterDataModule.SetiCds.Filtered := False;
            end;
          end else
          begin
            EnabledDisabled(4);
          end;
        //end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.dbgResultDblClick(Sender: TObject);
begin
    btnOkClick(Self);
end;

procedure TfrmMasterSearchScreen.DisableEnabledDateSelected(Index:Integer);
var
  i : Integer;
begin
    try
      if (Index = 1) then
      begin
          for I := 0 to ComponentCount -1 do
          begin
            with (TCheckBox(Components[i])) do
            begin
              if (Name = 'cxNullDate') then
              begin
                Enabled := True;
                Checked := False;
              end else
              begin
                Enabled := False;
                Checked := False;
              end;
            end;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxEqualThanZeroValuesClick(Sender: TObject);
begin
    try
        CheckControl(cxEqualThanZeroValues);
        EditFieldValueDisabled;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxGreaterThanZeroValuesClick(Sender: TObject);
begin
    try
        CheckControl(cxGreaterThanZeroValues);
        EditFieldValueDisabled;          
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxNotInformationClick(Sender: TObject);
begin     
    try
        CheckControl(cxNotInformation);
        EditFieldValueDisabled;          
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxNotInformationDifClick(Sender: TObject);
begin
    try
        CheckControl(cxNotInformationDif);
        EditFieldValueDisabled;          
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxNotNullValuesClick(Sender: TObject);
begin    
    try
        CheckControl(cxNotNullValues);
        EditFieldValueDisabled;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxNullDateClick(Sender: TObject);
begin
    try
        if (cxNullDate.Checked) then
        begin
          dtpStart.Enabled := False;
          dtpEnd.Enabled := False;
          CurrentDate;
        end else
        begin
          dtpStart.Enabled := True;
          dtpEnd.Enabled := True;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cxNullValuesClick(Sender: TObject);
begin
    try
        CheckControl(cxNullValues);
        EditFieldValueDisabled;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmMasterSearchScreen.btnOkClick(Sender: TObject);
var
  dgbKeyFieldValue : string;
begin
    try
      if (Assigned(dbgResult.DataSource.DataSet)) then
      begin
        if NOT (dbgResult.DataSource.DataSet.IsEmpty) then
        begin
          dgbKeyFieldValue :=
            dbgResult.DataSource.DataSet.FieldByName(qKeyFieldName).AsString;
          dbgResult.DataSource.DataSet.Locate(qKeyFieldName,dgbKeyFieldValue,
          []);
          if (qReturnType = 0) then
          begin
            SetReturnDataSet(dbgResult.DataSource.DataSet);
            ModalResult := mrOk;
          end else
          if (qReturnType = 1) then
          begin
            SetReturnFieldValue(
              dbgResult.DataSource.DataSet.FieldByName(qReturnFieldName).Value);
            ModalResult := mrOk;
          end;
        end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cbxSelectFieldClick(Sender: TObject);
var
  List : TStrings;
  I: Integer;
begin
    try
        SelectFieldEnabledDisabled;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.cbxSelectValueFixedChange(Sender: TObject);
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.CheckCheck(VarCheckName: string): Boolean;
begin
  try
    Result := False;
    if (VarCheckName = 'qPeriod') then
      Result := qPeriod;
    if (VarCheckName = 'qNullDates') then
      Result := qNullDates;
    if (VarCheckName = 'qNullValues') then
      Result := qNullValues;
    if (VarCheckName = 'qNotNullValues') then
      Result := qNotNullValues;
    if (VarCheckName = 'qNotInformedValues') then
      Result := qNotInformedValues;
    if (VarCheckName = 'qNotInformedValuesDif') then
      Result := qNotInformedValues;
    if (VarCheckName = 'qGreaterThanZeroValues') then
      Result := qGreaterThanZeroValues;
    if (VarCheckName = 'qEqualThanZeroValues') then
      Result := qEqualThanZeroValues;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

procedure TfrmMasterSearchScreen.CheckControl(Cx:TCheckBox);
var
  i : Integer;
  pName : string;
begin
    try
      pName := Cx.Name;
      for I := 0 to ComponentCount -1 do
      begin
        if (Components[i] is TCheckBox) then
        begin
          with (TCheckBox(Components[i])) do
          begin
            if (Name <> 'cxPeriod') and
                (Name <> 'cxNullDate') and
                  (Name <> pName) then
            begin
              Checked := False;
            end;
          end;
        end;

      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.CurrentDate;
begin
    try
      dtpStart.DateTime := Now;
      dtpEnd.DateTime := Now;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.dtpEndExit(Sender: TObject);
begin
    try
      if dtpEnd.DateTime < dtpStart.DateTime then
      dtpEnd.DateTime := dtpStart.DateTime;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.dtpStartExit(Sender: TObject);
begin
    try
      if dtpStart.DateTime > dtpEnd.DateTime then
      dtpStart.DateTime := dtpEnd.DateTime;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


procedure TfrmMasterSearchScreen.EditFieldValueDisabled;
begin
    try
      if (cxNullValues.Checked) or
          (cxNotNullValues.Checked) or
            (cxNotInformation.Checked) or
              (cxNotInformationDif.Checked) or
                (cxEqualThanZeroValues.Checked) or
                  (cxGreaterThanZeroValues.Checked) then
      begin
          edtFieldValue.Clear;
          edtFieldValue.Enabled := False;
          edtFieldValue.Color := clSilver;
      end else
      begin
          if (NOT qSelectedFieldFixed) and
              (qSelectFieldType <> SConfigFireDATE) and
                (qSelectFieldType <> SConfigFireTIME) and
                 (qSelectFieldType <> SConfigFireTIMESTAMP) then
          begin
            edtFieldValue.Clear;
            edtFieldValue.Enabled := True;
            edtFieldValue.Color := clWindow;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;;
end;

procedure TfrmMasterSearchScreen.edtFieldValueExit(Sender: TObject);
begin
    try
        if (cbxSelectField.Text = '') then
        begin
          edtFieldValue.Clear;
          edtFieldValue.SetFocus;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;;
end;


procedure TfrmMasterSearchScreen.edtFieldValueKeyPress(Sender: TObject;
  var Key: Char);
begin
  try
      if (qSelectFieldType = 'LONG') then
      begin
        if (NOT (Key in ['0'..'9'])) and (Key <> #0)  then
          Key := #0;
      end else
      begin
        edtFieldValue.MaxLength := qSelectedFieldSize;
      end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

procedure TfrmMasterSearchScreen.EnabledDisabled(Index: Integer);
begin
{
  INDEX:
    0 : INICIAL;
    1 : FIXO;
    2 : POR FIELD SELECIONADO = TIMESTAMP
    3 : cxPeriodo.checked
    4 : not cxPeriodo.checked
    5 : POR FIELD SELECIONADO = VARCHAR
    6 : POR FIELD SELECIONADO = INT
    7 : POR FIELD TIMESTAMP = FIXO
}

  try
      if (Index in [0]) then
      begin
        cbxSelectField.ItemIndex := 0;
        dsSource.DataSet := nil;
      end;
      if (Index in [1,3]) then
      begin
        cbxFieldPeriod.Enabled := True;
        cbxFieldPeriod.Clear;
        cbxFieldPeriod.Color  := clWindow;
        dtpStart.Enabled      := True;
        dtpEnd.Enabled        := True;
        CurrentDate;
        cxNullDate.Enabled    := True;
        cxNullDate.Checked    := False;
        if (Index <> 1) then
          Exit;
      end;
      if (Index in [4]) then
      begin
        cbxFieldPeriod.Enabled := False;
        cbxFieldPeriod.Clear;
        cbxFieldPeriod.Color  := clSilver;
        dtpStart.Enabled      := False;
        dtpEnd.Enabled        := False;
        CurrentDate;
        cxNullDate.Enabled    := False;
        cxNullDate.Checked    := False;
        Exit;
      end;
      if (Index <> 7) then
        cbxSelectValueFixed.Items.Clear;
      cbxSelectValueFixed.Enabled       := False;
      cbxSelectValueFixed.Color         := clSilver;

      cxPeriod.Checked                  := False;
      cxPeriod.Enabled                  := (Index in [0,1,5,6]);
      cbxFieldPeriod.Items.Clear;
      cbxFieldPeriod.Enabled            := False;
      cbxFieldPeriod.Color              := clSilver;
      cxNullDate.Enabled                := False;
      cxNullDate.Checked                := False;
      dtpStart.DateTime                 := Now;
      dtpEnd.DateTime                   := Now;
      CurrentDate;

      cxNullValues.Checked              := False;
      cxNotNullValues.Checked           := False;
      cxNotInformation.Checked          := False;
      cxNotInformationDif.Checked       := False;
      cxEqualThanZeroValues.Checked     := False;
      cxGreaterThanZeroValues.Checked   := False;

      cxNullValues.Enabled              := False;
      cxNotNullValues.Enabled           := False;
      cxNotInformation.Enabled          := False;
      cxNotInformationDif.Enabled       := False;
      cxEqualThanZeroValues.Enabled     := False;
      cxGreaterThanZeroValues.Enabled   := False;

      edtFieldValue.Enabled := False;
      edtFieldValue.Color := clSilver;
      edtFieldValue.Clear;

      //INDEX 1 = FIXO
      cbxSelectValueFixed.Enabled := (Index in [1,7]);
      if Index in [1,7] then cbxSelectValueFixed.Color := clWindow;

      //INDEX 2 = SELECIONANDO UM CAMPO TIMESTAMP
      cxPeriod.Checked    := (Index in [2]);
      dtpStart.Enabled    := (Index in [2]);
      dtpEnd.Enabled      := (Index in [2]);
      cxNullDate.Enabled  := (Index in [2]);
      //INDEX 5 = SELECIONANDO UM CAMPO VARCHAR
      edtFieldValue.Enabled                       := (Index in [5,6]);
      if Index in [5,6] then edtFieldValue.Color  := clWindow;
      if Index in [2] then
      begin
        cbxFieldPeriod.Enabled := False;
        cbxFieldPeriod.Clear;
        cbxFieldPeriod.Color  := clSilver;
      end;
      cxNullValues.Enabled                        := (Index in [5,6]);
      cxNotNullValues.Enabled                     := (Index in [5,6]);
      cxNotInformation.Enabled                    := (Index in [5]);
      cxNotInformationDif.Enabled                 := (Index in [5]);
      //INDEX 6= SELECIONANDO UM CAMPO INTEIRO
      cxEqualThanZeroValues.Enabled := (Index in [6]);
      cxGreaterThanZeroValues.Enabled := (Index in [6]);
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

procedure TfrmMasterSearchScreen.SelectFieldEnabledDisabled;
var
  List : TStrings;
  I: Integer;
  pType : string;
  pSelField: string;
begin
  pType := '';
  try
    try
      if Assigned(dmMasterDataModule) then
      begin
        with (dmMasterDataModule) do
        begin
          pSelField := cbxSelectField.Text;
          if (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireTIMESTAMP) then
            pType := 'DATE' else
          if (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireCHAR) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireVARCHAR) then
            pType := 'STRING' else
          if (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireSMALLINT) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireINTEGER) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireBIGINT) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireSMALLINT) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireFLOAT) or
             (GetFieldInfo('FIELDTYPE_',pSelField) =
                SConfigFireDOUBLEPRECISION) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireNUMERIC) or
             (GetFieldInfo('FIELDTYPE_',pSelField) = SConfigFireDECIMAL) then
            pType := 'NUMBER';
          //SETANDO INFORMA��ES DO TIPO DO FIELD SELECINADO
          SetSelectFieldType(GetFieldInfo('FIELDTYPE_',pSelField));
          //SETANDO INFORMA��ES DO TAMANHO DO FILTRO SELECIONADO
          SetSelectedFieldSize(GetFieldInfo('FIELDLENGTH_',pSelField));
          //SETANDO INFORMA��ES OO NOME DO FIELD SELECIONADO
          SetSelectedFieldName(GetFieldInfo('FIELDNAME_',pSelField));
          //FILTRANDO O CDS DE CONSULTA, DE ACORDO COM O CAMPO SELECIONADO
          SetiCds.Filtered := False;
          SetiCds.Filter := 'FIELDCAPTION_ = '+QuotedStr(cbxSelectField.Text);
          SetiCds.Filtered := True;
          //SE O CAMPO SELECIONADO FOR UM VALOR FIXO
          if (SetiCds.FieldByName('FIELDFIXEDVALUE_').AsString <> '') then
          begin
            //SETA VARIAVEL FIELD FIXO PARA TRUE
            SetSelectedFieldFixed(True);
            //DISPARA COMANDO PARA CONTROLE DOS CAMPOS
            EnabledDisabled(1);
            //PREENCHENDO O COMBOBOX COM OS VALORES FIXOS
            List := TStringList.Create;
            ExtractStrings([';'],[],
            PChar(SetiCds.FieldByName('FIELDFIXEDVALUE_').AsString),List);
            cbxSelectValueFixed.Items.Add('');
            for i := 0 to List.Count -1 do
              cbxSelectValueFixed.Items.Add(Trim(List[I]));
            //SE O CAMPO SELECIONADO FOR FIXO E TIMESTAMP
            if (pType = 'DATE') then
            //DISPARA COMANDO PARA CONTROLE DOS CAMPOS
              EnabledDisabled(7);

          end else
          //SE O CAMPO SELECIONADO N�O FOR VALOR FIXO
          begin
            //SETA VARIAVEL FIELD FIXO PARA FALSE
            SetSelectedFieldFixed(False);
            //SE O TIPO DO CAMPO SELECIONADO FOR TIMESTAMP
            if (pType = 'DATE') then
              EnabledDisabled(2)
            else
            if (pType = 'STRING') then
            begin
              EnabledDisabled(5);
            end else
            if (pType = 'NUMBER') then
            begin
              EnabledDisabled(6);
            end;
          end;
          SetiCds.Filtered := False;
        end;
      end;
      if (cbxSelectField.Text = '') then
      begin
        EnabledDisabled(0);
      end;
    finally
      dmMasterDataModule.SetiCds.Filtered := False;
    end;
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

procedure TfrmMasterSearchScreen.FillsFieldsCombo(Value: string);
begin
    try
        if NOT (dmMasterDataModule.SetiCds.IsEmpty) then
        begin

        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{    ModalResult := mrCancel;
    Action := caFree;
    frmMasterSearchScreen := nil;     }
end;

procedure TfrmMasterSearchScreen.FormCreate(Sender: TObject);
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    try
      if (Key = VK_F5) then
        sbSearchClick(Self);
      if (Key = VK_F11) then
        sbClearFilterClick(Self);
      if (Key = VK_F2) then
        sbExcelClick(Self);
      if (Key = VK_ESCAPE) then
        btnCancelClick(Self);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.FormKeyPress(Sender: TObject; var Key: Char);
begin
    try
      if (Key = #13) then
        btnOkClick(Self);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.FormShow(Sender: TObject);
begin
    Caption := 'Pesquisa - '+qTitle;
    LoadFilters;
    SelectFieldEnabledDisabled;
end;

function TfrmMasterSearchScreen.GetCds: TClientDataSet;
begin
    try
        Result := FCds;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetField: string;
begin
    try
        Result := FField;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetFieldInfo(ReturnField:string;
Description:string; ForCaption:Boolean; ForName:Boolean): Variant;
begin
    try
      if (ReturnField <> '') then
      begin
          if Assigned(dmMasterDataModule) then
          begin
            with (dmMasterDataModule) do
            begin
              try

                if ForCaption then
                begin
                  SetiCds.Filtered := False;
                  SetiCds.Filter := 'FIELDCAPTION_ = '+ QuotedStr(Description);
                  SetiCds.Filtered := True;
                end;
                if ForName then
                begin
                  SetiCds.Filtered := False;
                  SetiCds.Filter := 'FIELDNAME_ = ' + QuotedStr(Description);
                  SetiCds.Filtered := True;
                end;

                if NOT (SetiCds.IsEmpty) then
                begin
                  if SetiCds.RecordCount = 1 then
                    Result := Trim(SetiCds.FieldByName(ReturnField).AsString);
                end;
              finally
                SetiCds.Filtered := False;
              end;
            end;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetFieldPeriod: string;
begin
    try
        Result := FFieldPeriod;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetFieldValue: Variant;
begin
    try
        Result := FFieldValue;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetFinalDate: string;
begin
    try
        Result := FFinalDate;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetFixedValues: Variant;
begin
    try
        Result := FFixedValues;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetGreaterThanZeroValues: Boolean;
begin
    try
        Result := FGreaterThanZeroValues;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetInitialDate: string;
begin
    try
        Result := FInitialDate;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetKeyFieldName: string;
begin
  try
      Result := FKeyFieldName;
  except on e : exception do
      SetiMens(0,e.Message);
  end;
end;

function TfrmMasterSearchScreen.GetNotInformedValues: Boolean;
begin
    try
        Result := FNotInformedValues;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetNotInformedValuesDif: Boolean;
begin
    try
        Result := FNotInformedValuesDif;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetNotNullValues: Boolean;
begin
    try
        Result := FNotNullValues;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetNullDates: Boolean;
begin
    try
        Result := FNullDates;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetNullValues: Boolean;
begin
    try
        Result := FNullValues;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetPeriod: Boolean;
begin
    try
        Result := FPeriod;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetQuery: string;
begin
    try
        Result := FQuery;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetEqualThanZeroValues: Boolean;
begin
    try
        Result := FEqualThanZeroValues;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetReturnDataSet: TDataSet;
begin
    try
        Result := FReturnDataSet;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetReturnFieldValue: Variant;
begin
     try
        Result := FReturnFieldValue;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetReturnFieldName: string;
begin
    try
        Result := FReturnFieldName;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetReturnType: Integer;
begin
    try
        Result := FReturnType;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetSelectedFieldFixed: Boolean;
begin
    try
        Result := FSelectedFieldFixed;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetSelectedFieldName: string;
begin
    try
        Result := FSelectedFieldName;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetSelectedFieldSize: Integer;
begin
    try
        Result := FSelectedFieldSize;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetSelectedFieldType: string;
begin
    try
        Result := FSelectedFieldType;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetTableName: string;
begin
    try
        Result := FTableName;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetThereAreFieldsToWork: Boolean;
begin
    try
        Result := FThereAreFieldsToWork;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetTitle: string;
begin
    try
        Result := FTitle;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.GetType: Integer;
begin
    try
        Result := FType;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.LoadFilters;
begin
    try
        try
            if (qType = 0 ) then // for table
            begin
                if (qTableName <> '') then
                begin
                    dmMasterDataModule := TdmMasterDataModule.Create(Nil);
                    with (dmMasterDataModule) do
                    begin
                      UseComponentsDmSeti(1);
                      with (SetiSqlQuery) do
                       begin
                        SQL.Add('SELECT                          ');
                        SQL.Add('        FIELDNAME_,             ');
                        SQL.Add('        FIELDTYPE_,             ');
                        SQL.Add('        FIELDSUBTYPE_,          ');
                        SQL.Add('        FIELDLENGTH_,           ');
                        SQL.Add('        FIELDSEGMENTLENGTH_,    ');
                        SQL.Add('        FIELDPRECISION_,        ');
                        SQL.Add('        FIELDSCALE_,            ');
                        SQL.Add('        FIELDDEFAULTVALUE_,     ');
                        SQL.Add('        FIELDREQUIREDFLAG_,     ');
                        SQL.Add('        FIELDDESCRIPTION_,      ');
                        SQL.Add('        FIELDCAPTION_,          ');
                        SQL.Add('        FIELDFIXEDVALUE_        ');
                        SQL.Add('FROM SP_FIELDSFORSEARCH        ');
                        SQL.Add('(:TABLENAME)                   ');
                        Params.ParamByName('TABLENAME').Value := qTableName;
                        SetiCds.Open;
                        if not (SetiCds.IsEmpty) then
                        begin
                            //Fills field 'Campo';
                            cbxSelectField.Clear;
                            cbxSelectField.Items.Add('');
                            SetiCds.First;
                            while not SetiCds.Eof do
                            begin
                                cbxSelectField.Items.Add(
                                  SetiCds.FieldByName('FIELDCAPTION_').Value);
                                SetiCds.Next;
                            end;
                            SetThereAreFieldsToWork(
                              cbxSelectField.Items.Count > 0);
                            EnabledDisabled(0);
                        end;
                      end;
                    end;
                end;
            end;
        finally
          dmMasterDataModule.SetiSqlQuery.Close;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.PeriodClick;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.Search;
var
  pFieldName, pFieldType, pFieldValue : string;
  pSQL :string; pVal : Boolean;
  i, i0, cont : Integer;
  pDisplayLabel : string;
  pDisplayWidth : Integer;
  pDisplayType: string;
  pColumnName : string;
begin
  pSQL := '';
  pFieldName := '';
  pFieldType := '';
  pFieldValue := '';
  pVal := false;
  try
    //TO FIREBIRD...
    if (SConfigTypeDB = 'TSQL') then
    begin
      if Assigned(dmMasterDataModule) then
      begin
        with (dmMasterDataModule) do
        begin
          //USE THE SETISQLHELP COMPONENT
          UseComponentsDmSeti(5);
          //SE O TIPO FOR CONSULTA POR TABELA
          if (qType = 0) then
          begin
            pVal := True;
            SetiSqlHelp.SQL.Clear;
            SetiSqlHelp.Close;
            SetiCdsHelp.Close;
            SetiSqlHelp.SQL.Add('SELECT ');
            SetiCds.First;
            cont := 0;
            while NOT (SetiCds.Eof) do
            begin
              pColumnName := '';
              pColumnName := SetiCds.FieldByName('FIELDNAME_').AsString;
              if (cont = 0) then
                SetiSqlHelp.SQL.Add(pColumnName) else
              if (Cont > 0) then
                SetiSqlHelp.SQL.Add(','+pColumnName);
              cont := cont + 1;
              SetiCds.Next;
            end;

            //SetiSqlHelp.SQL.Add('SELECT * FROM '+qTableName+' WHERE 1 = 1 ');
            SetiSqlHelp.SQL.Add(' FROM '+qTableName+' WHERE 1 = 1 ');
            //###################### CAMPOS FIXOS ##########################//
            if (qSelectedFieldFixed) then
            begin
              //----------- CAMPOS N�MERICOS OU DE TEXTO --------------------//
              SetiSqlHelp.SQL.Add(' AND '+qSelectedFieldName+ ' = :PFIXO');
              //----------- CAMPOS DE DATAS --------------------------------//
              if (qPeriod) and (SettingTheFieldType(2) = False) then
              begin
                if (qNullDates) then
                  SetiSqlHelp.SQL.Add(' AND '+ qFieldPeriod+ ' IS NULL') else
                if (qNullDates = False) then
                  SetiSqlHelp.SQL.Add(' AND '+qFieldPeriod+
                    ' >= :PFIXODTINI AND '+qFieldPeriod+ ' <= :PFIXODTFIM');
              end;
            end;
            //#################### CAMPOS N�O FIXO #########################//
            if (qSelectedFieldFixed = False) then
            begin
              //----- CAMPOS DE DATA EXTRA: TEM PER�ODO SELECIONADO --------//
              if (qPeriod) and (SettingTheFieldType(2) = False) then
              begin
                if (qNullDates) then
                  SetiSqlHelp.SQL.Add(' AND ' + qFieldPeriod+ ' IS NULL') else
                if (qNullDates = False) then
                  SetiSqlHelp.SQL.Add(' AND '+qFieldPeriod+
                    ' >= :PEXTRADTINI '+ qFieldPeriod+ ' <= :PEXTRADTFIM');
              end else
              //---------- CAMPOS DE DATAS ---------------------------------//
              if (SettingTheFieldType(2)) then
              begin
                if (qNullDates) then
                  SetiSqlHelp.SQL.Add(' AND '+ qSelectedFieldName +
                    ' IS NULL') else
                if (qNullDates = False) then
                  SetiSqlHelp.SQL.Add(' AND '+qSelectedFieldName +
                    ' >= :PDTINI AND '+qSelectedFieldName+ ' <= :PDTFIM');
              end;
              //- OS CAMPOS DE TEXTO OU N�MERICOS SER�O NULO OU NOT NULO ? -//
              if ((SettingTheFieldType(0)) or (SettingTheFieldType(1))) then
              begin
                if (qNullValues) then
                  SetiSqlHelp.SQL.Add(' AND ' + qSelectedFieldName+ ' IS NULL');
                if (qNotNullValues) then
                  SetiSqlHelp.SQL.Add(' AND ' +
                    qSelectedFieldName+ ' IS NOT NULL');
              end;
              //---------- CAMPOS DE TEXTO = OU <> N�O INFORMADO ? ---------//
              if (SettingTheFieldType(0)) then
              begin
                if (qNotInformedValues) then
                  SetiSqlHelp.SQL.Add(' AND ' +
                    qSelectedFieldName+' = ''N�O INFORMADO''');
                if (qNotInformedValuesDif) then
                  SetiSqlHelp.SQL.Add(' AND ' +
                    qSelectedFieldName+' <> ''N�O INFORMADO''');
              end;
              //----------- CAMPOS NUMERICOS > = 0 (ZERO) ------------------//
              if (SettingTheFieldType(1)) then
              begin
                if (qEqualThanZeroValues) then
                  SetiSqlHelp.SQL.Add(' AND '+qSelectedFieldName+ ' = 0');
                if (qGreaterThanZeroValues) then
                  SetiSqlHelp.SQL.Add(' AND '+qSelectedFieldName+ ' > 0');
              end;
              if ((SettingTheFieldType(2) = False) and
                    (qNullValues = False) and
                      (qNotNullValues = False) and
                        (qNotInformedValues = False) and
                          (qNotInformedValuesDif = False) and
                            (qGreaterThanZeroValues = False) and
                              (qEqualThanZeroValues = False)) then
              begin
                if (SettingTheFieldType(0)) then
                  SetiSqlHelp.SQL.Add(' AND UPPER(' +
                    qSelectedFieldName+') LIKE UPPER(:PTEXT)');
                if (SettingTheFieldType(1)) then
                  SetiSqlHelp.SQL.Add(' AND ' +
                    qSelectedFieldName+' = :PINT');
              end;
            end;
            //#################### PASSAGEM DE PARAMETROS ####################//
            if (qSelectedFieldFixed) then
            begin
              if (SettingTheFieldType(0)) then
              begin
                SetiSqlHelp.Params.ParamByName('PFIXO').DataType := ftString;
                SetiSqlHelp.Params.ParamByName('PFIXO').Value := qFixedValues;
              end;
              if (SettingTheFieldType(1)) then
              begin
                SetiSqlHelp.Params.ParamByName('PFIXO').DataType := ftFloat;
                SetiSqlHelp.Params.ParamByName('PFIXO').Value := qFixedValues;
              end;
              if (qPeriod) and (SettingTheFieldType(2) = False) then
              begin
                SetiSqlHelp.Params.ParamByName('PFIXODTINI').DataType :=
                  ftString;
                SetiSqlHelp.Params.ParamByName('PFIXODTINI').Value :=
                  qInitialDate;
                SetiSqlHelp.Params.ParamByName('PFIXODTFIM').DataType :=
                  ftString;
                SetiSqlHelp.Params.ParamByName('PFIXODTFIM').Value :=
                  qFinalDate;
              end;
            end;
            if (qSelectedFieldFixed = False) then
            begin
              //----- CAMPOS DE DATA EXTRA: TEM PER�ODO SELECIONADO --------//
              if (qPeriod) and (SettingTheFieldType(2) = False) then
              begin
                if (qNullDates = False) then
                begin
                  SetiSqlHelp.Params.ParamByName('PEXTRADTINI').DataType :=
                    ftString;
                  SetiSqlHelp.Params.ParamByName('PEXTRADTINI').Value :=
                    qInitialDate;
                  SetiSqlHelp.Params.ParamByName('PEXTRADTFIM').DataType :=
                    ftString;
                  SetiSqlHelp.Params.ParamByName('PEXTRADTFIM').Value :=
                    qFinalDate;
                end;
              end;
              //---------- CAMPOS DE DATAS ---------------------------------//
              if (SettingTheFieldType(2)) then
              begin
                if (qNullDates = False) then
                begin
                  SetiSqlHelp.Params.ParamByName('PDTINI').DataType :=
                    ftString;
                  SetiSqlHelp.Params.ParamByName('PDTINI').Value :=
                    qInitialDate;
                  SetiSqlHelp.Params.ParamByName('PDTFIM').DataType :=
                    ftString;
                  SetiSqlHelp.Params.ParamByName('PDTFIM').Value :=
                    qFinalDate;
                end;
              end;
              if ((SettingTheFieldType(2) = False) and
                    (qNullValues = False) and
                      (qNotNullValues = False) and
                        (qNotInformedValues = False) and
                          (qNotInformedValuesDif = False) and
                            (qGreaterThanZeroValues = False) and
                              (qEqualThanZeroValues = False)) then
              begin
                if (SettingTheFieldType(0)) then
                begin
                  SetiSqlHelp.Params.ParamByName('PTEXT').DataType :=
                    ftString;
                  SetiSqlHelp.Params.ParamByName('PTEXT').Value :=
                    '%'+UpperCase(qFieldValue)+'%';
                end;
                if (SettingTheFieldType(1)) then
                begin
                  SetiSqlHelp.Params.ParamByName('PINT').DataType := ftFloat;
                  SetiSqlHelp.Params.ParamByName('PINT').Value := qFieldValue;
                end;
              end;
            end;
            SetiCdsHelp.Open;
            if SetiCdsHelp.IsEmpty then
            begin
              SetiMens(1,Mess9);
              dsSource.DataSet := nil;
              btnOk.Enabled := False;
              Exit;
            end else
            begin
                for I := 0 to SetiCdsHelp.Fields.Count -1 do
                begin
                  pDisplayLabel := '';
                  pDisplayType := '';
                  pFieldName := SetiCdsHelp.Fields[i].FieldName;
                  pDisplayLabel :=
                    GetFieldInfo('FIELDCAPTION_',pFieldName,False,True);
                  pDisplayType :=
                    GetFieldInfo('FIELDTYPE_',pFieldName,False,True);
                  if (pDisplayType = 'VARYING') then
                    pDisplayWidth := SConfigForTextField else
                  if (pDisplayType = 'TEXT') then
                    pDisplayWidth := SConfigForSmallText else
                  if (pDisplayType = 'LONG') or
                      (pDisplayType = 'INT64') or
                        (pDisplayType = 'FLOAT') or
                          (pDisplayType = 'DOUBLE') then
                      pDisplayWidth := SConfigForNumberField else
                  if (pDisplayType = 'DATE') or
                       (pDisplayType = 'TIME') or
                         (pDisplayType = 'TIMESTAMP') then
                    pDisplayWidth := SConfigForDateField;
                  SetiCdsHelp.Fields[i].DisplayLabel := pDisplayLabel;
                  SetiCdsHelp.Fields[i].DisplayWidth := pDisplayWidth;
                end;
              dsSource.DataSet := SetiCdsHelp;
              btnOk.Enabled := True;
            end;
         end; // FIM if (qType = 0) then
        end; //FIM with (dmMasterModuleDate) do
      end; //FIM if Assigned(dmMasterModuleDate) then
    end; //FIM if (SConfigTypeDB = 'TSQL') then
  except on e : exception do
    SetiMens(0,e.Message);
  end;
end;

procedure TfrmMasterSearchScreen.SetCds(const Value: TClientDataSet);
begin
    try
      FCds := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetField(const Value: string);
begin
    try
      FField := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetFieldPeriod(const Value: string);
begin
    try
      FFieldPeriod := GetFieldInfo('FIELDNAME_',Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetFieldValue(const Value: Variant);
begin
    try
      FFieldValue := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetFinalDate(const Value: string);
begin
    try
      FFinalDate := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetFixedValues(const Value: Variant);
begin
    try
      FFixedValues := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetGreaterThanZeroValues(const Value: Boolean);
begin
    try
      FGreaterThanZeroValues := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetInitialDate(const Value: string);
begin
    try
      FInitialDate := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


procedure TfrmMasterSearchScreen.SetKeyFieldName(const Value: string);
begin
    try
      FKeyFieldName := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetNotInformedValues(const Value: Boolean);
begin
    try
      FNotInformedValues := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetNotInformedValuesDif(const Value: Boolean);
begin
    try
      FNotInformedValuesDif := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetNotNullValues(const Value: Boolean);
begin
    try
      FNotNullValues := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetNullDates(const Value: Boolean);
begin
    try
      FNullDates := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetNullValues(const Value: Boolean);
begin
    try
      FNullValues := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetPeriod(const Value: Boolean);
begin
    try
      FPeriod := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetQuery(const Value: string);
begin
    try
      FQuery := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetEqualThanZeroValues(const Value: Boolean);
begin
    try
      FEqualThanZeroValues := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetReturnDataSet(const Value: TDataSet);
begin
    try
      FReturnDataSet := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetReturnFieldValue(const Value: Variant);
begin
    try
      FReturnFieldValue := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetReturnFieldName(const Value: string);
begin
    try
      FReturnFieldName := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetReturnType(const Value: Integer);
begin
    try
      FReturnType := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetSelectedFieldFixed(const Value: Boolean);
begin
    try
        FSelectedFieldFixed := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetSelectedFieldName(const Value: string);
begin
    try
        FSelectedFieldName := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetSelectedFieldSize(const Value: Integer);
begin
    try
        FSelectedFieldSize := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetSelectFieldType(const Value: string);
begin
    try
        FSelectedFieldType := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetTableName(const Value: string);
begin
    try
      FTableName := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetThereAreFieldsToWork(const Value: Boolean);
begin
    try
      FThereAreFieldsToWork := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmMasterSearchScreen.SettingTheFieldType(Index: Integer): Boolean;
begin
    {
      Index:
        0 : STR;
        1 : NUM;
        2 : DTA;
    }
    try
      Result := False;
      if (Index = 0) then
      begin
        if (qSelectFieldType = SConfigFireVARCHAR) or
            (qSelectFieldType = SConfigFireCHAR) then
          Result := True;
      end;
      if (Index = 1) then
      begin
        if (qSelectFieldType = SConfigFireSMALLINT) or
           (qSelectFieldType = SConfigFireINTEGER) or
           (qSelectFieldType = SConfigFireBIGINT) or
           (qSelectFieldType = SConfigFireSMALLINT) or
           (qSelectFieldType = SConfigFireFLOAT) or
           (qSelectFieldType = SConfigFireDOUBLEPRECISION) or
           (qSelectFieldType = SConfigFireNUMERIC) or
           (qSelectFieldType = SConfigFireDECIMAL) then
              Result := True;
      end;
      if (Index = 2) then
      begin
        if (qSelectFieldType = SConfigFireDATE) or
            (qSelectFieldType = SConfigFireTIME) or
             (qSelectFieldType = SConfigFireTIMESTAMP) then
              Result := True;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetTitle(const Value: string);
begin
    try
      FTitle := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.SetType(const Value: Integer);
begin
    try
      FType := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.sbClearFilterClick(Sender: TObject);
begin
    try
      EnabledDisabled(0);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.sbExcelClick(Sender: TObject);
var
  way : string;
  count : Integer;
begin
    try
      if (Assigned(dbgResult.DataSource.DataSet)) then
        if NOT (dbgResult.DataSource.DataSet.IsEmpty) then
          SetiExpDataSet(2,dbgResult.DataSource.DataSet,true);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMasterSearchScreen.sbSearchClick(Sender: TObject);
var
  pDtIni, pDtFim : string;
begin
    try
      pDtIni := '';
      pDtFim := '';

      dtpStartExit(Self);
      dtpEndExit(Self);
      SetField(cbxSelectField.Text);

      SetFixedValues(cbxSelectValueFixed.Text);

      SetPeriod(cxPeriod.Checked);
      SetFieldPeriod(cbxFieldPeriod.Text);
      if cxPeriod.Checked then
      begin
          pDtIni := FormatDateTime('DD.MM.YYYY 00:00',dtpStart.DateTime);
          pDtFim := FormatDateTime('DD.MM.YYYY 23:59',dtpEnd.DateTime);
          SetInitialDate(pDtIni);
          SetFinalDate(pDtFim);
      end;
      SetNullValues(cxNullValues.Checked);
      SetEqualThanZeroValues(cxEqualThanZeroValues.Checked);
      SetNotInformedValues(cxNotInformation.Checked);
      SetNullDates(cxNullDate.Checked);
      SetNotNullValues(cxNotNullValues.Checked);
      SetGreaterThanZeroValues(cxGreaterThanZeroValues.Checked);
      SetNotInformedValuesDif(cxNotInformationDif.Checked);
      
      SetFieldValue(edtFieldValue.Text);
      if (qField = '') and (NOT qPeriod = True) then
      begin
        if (SetiMensQuestions(0,'Consulta sem nenhum filtro selecionado, ' +
          'deseja continuar?') = false ) then
            Exit;
      end else
      begin
        if (qSelectedFieldFixed ) and (qFixedValues = '') then
        begin
          SetiMens(2,'Favor selecionar um valor fixo.');
          cbxSelectValueFixed.SetFocus;
          Exit;
        end else
        if (qPeriod) and (qSelectFieldType <> SConfigFireTIMESTAMP) and
          (qFieldPeriod = '') then
        begin
          SetiMens(2,'Favor selecionar um campo referente ao per�odo.');
          cbxFieldPeriod.SetFocus;
          Exit;
        end;
        if (qSelectedFieldFixed = False) and
            ((SettingTheFieldType(2) = False) and
              (qNullValues = False) and
                (qNotNullValues = False) and
                  (qNotInformedValues = False) and
                    (qNotInformedValuesDif = False) and
                      (qGreaterThanZeroValues = False) and
                        (qEqualThanZeroValues = False)) then

        begin
          if (qField <> '') and (edtFieldValue.Text = '') then
          begin
            SetiMens(2,'Favor informar um valor para o campo.');
            edtFieldValue.SetFocus;
            Exit;
          end;
        end;
      end;
       Search;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
