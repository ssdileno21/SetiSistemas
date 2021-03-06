unit uPedidoVendaControl;

interface

uses uPedidoVendaDao, uPedidoVendaModel, uMess, SysUtils, Forms, Buttons,
StdCtrls, Vcl.Graphics,Windows,Messages,Variants,Classes,Controls,Dialogs,
DBGrids;

    type TPedidoVendaControl = class
      private
          FcModel : TPedidoVendaModel;
          FcDao : TPedidoVendaDao;
          procedure Control(State:Integer;Form:TObject);
          procedure ParamSet(Form:TObject;State:Integer);
          procedure BackRecords(Form:TObject);

      public
          constructor Create(Form:TObject);
          procedure Search(Form:TObject);
          procedure New(Form:TObject);
          procedure Edit(Form:TObject);
          procedure Delete(Form:TObject);
          procedure Save(Form:TObject);
          procedure Cancel(Form:TObject);
          procedure Clear(Form:TObject);
          procedure DbGridSetValue(Form:TObject);

      published
          property cModel : TPedidoVendaModel read FcModel write FcModel;
          property cDao : TPedidoVendaDao read FcDao write FcDao;

    end;

implementation

{ TPedidoVendaControl }

constructor TPedidoVendaControl.Create(Form: TObject);
begin
    try
{        with (Form as TfrmForms) do
        begin
          cModel := TSetiFormModel.Create;
          cDAL := TSetiFormDAL.Create;
          Control(1,Form);
        end;    }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.DbGridSetValue(Form: TObject);
begin
    try
{        with (Form as TfrmForms) do
        begin
            edtId.Text := IntToStr(dbgForms.DataSource.DataSet.
                            FieldByName('ID').AsInteger);
            edtName.Text := dbgForms.DataSource.DataSet.
                            FieldByName('FORMNAME').AsString;
            edtCaption.Text :=  dbgForms.DataSource.DataSet.
                            FieldByName('FORMCAPTION').AsString;
            edtTag.Text :=  IntToStr(dbgForms.DataSource.DataSet.
                            FieldByName('FORMTAG').AsInteger);
            cbxStatus.Checked := (dbgForms.DataSource.DataSet.
                            FieldByName('FORMSTATUS').AsString = 'S');
        end; }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.ParamSet(Form: TObject;State:Integer);
var
    pStatus : string;
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{        with (Form as TfrmForms) do
        begin
            if (cbxStatus.Checked) then
              pStatus := 'S'
            else pStatus := 'N';
            cModel.SetState(State);
            if State in [2,3,4] then
            begin
                cModel.SetId(StrToIntDef(edtId.Text,-1));
                cModel.SetName(edtName.Text);
                cModel.SetCaption(edtCaption.Text);
                cModel.SetTag(edtTag.Text);
                cModel.SetStatus(pStatus);
            end;
            if State in [6] then
            begin
                cModel.SetNewId(StrToIntDef(edtId.Text,-1));
                cModel.SetName(edtName.Text);
                cModel.SetNewCaption(edtCaption.Text);
                cModel.SetNewTag(edtTag.Text);
                cModel.SetNewStatus(pStatus);
            end;
        end;        }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Search(Form: TObject);
begin
  try
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
{      with (Form as TfrmForms) do
      begin
          ParamSet(Form,2);
          if (cDAL.FormList(cModel,dbgForms)) then
          begin
            Control(2,Form);
            DbGridSetValue(Form);
          end;
      end;     }
  except on e : exception do
    SetiMens(0,e.Message,'Error');
  end;
end;

procedure TPedidoVendaControl.BackRecords(Form:TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{      with (Form as TfrmForms) do
      begin
          edtId.Text := IntToStr(cModel.qId);
          edtName.Text := cModel.qName;
          edtCaption.Text := cModel.qCaption;
          edtTag.Text := cModel.qTag;
          cbxStatus.Checked := (cModel.qStatus = 'S');
      end;                  }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Cancel(Form: TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{      if (cModel.qState in [3,4]) then
      begin
        BackRecords(Form);
      end;
      Control(1,Form);       }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Save(Form: TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{      ParamSet(Form,6);
      Control(1,Form);        }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Delete(Form: TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
 {     Control(2,Form);}
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.New(Form: TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{      ParamSet(Form,3);
      Control(3,Form);       }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Edit(Form: TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{      ParamSet(Form,4);
      Control(4,Form);       }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Clear(Form: TObject);
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
    try
{      Control(5,Form);              }
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoVendaControl.Control(State: Integer; Form: TObject);
var
    i : Integer;
begin
    {STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    6: SAVE; 7:CANCEL}
  try
{    with (Form as TfrmForms) do
    begin
      for i  := 0 to ComponentCount -1 do
      begin
        if (Components[i] is TSpeedButton) then
        begin
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBSEARCH')) then
              (TSpeedButton(Components[i]).Enabled := (State in [1,2]));
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBNEW')) then
              (TSpeedButton(Components[i]).Enabled := (State in [1,2]));
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBEDIT')) then
              (TSpeedButton(Components[i]).Enabled := (State in [2]));
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBDELETE')) then
              (TSpeedButton(Components[i]).Enabled := (State in [2]));
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBSAVE')) then
              (TSpeedButton(Components[i]).Enabled := (State in [3,4,5]));
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBCANCEL')) then
              (TSpeedButton(Components[i]).Enabled := (State in [2,3,4,5]));
          if (UpperCase(TSpeedButton(Components[i]).Name) =
            UpperCase('SBCLEAR')) then
              (TSpeedButton(Components[i]).Enabled := (State in [1,3,4,5]));
        end;

        if (Components[i] is TEdit) then
        begin
            if (State in [1,3,4]) then
            begin
              TEdit(Components[i]).Color := clWindow;
              TEdit(Components[i]).Enabled := True;
            end;
            if (State in [1,3,5]) then
              TEdit(Components[i]).Clear;
            if (State in [2]) then
            begin
              TEdit(Components[i]).Color := clInfoBk;
              TEdit(Components[i]).Enabled := False;
            end;
        end;

        if (Components[i] is TCheckBox) then
        begin
          if (State in [1,3,5]) then
            TCheckBox(Components[i]).Checked := True;
          if (State in [1,2,3,4,5]) then
            TCheckBox(Components[i]).Enabled := True;
        end;

        if (Components[i] is TDBGrid) then
        begin
          if (State in [1,3,4]) then
          begin
            TDBGrid(Components[i]).Enabled := False;
            TDBGrid(Components[i]).Color := clSilver;
            if (State <> 4)  then
              TDBGrid(Components[i]).DataSource := cDAL.qDtsHelp;
          end;
          if (State in [2]) then
          begin
            TDBGrid(Components[i]).Enabled := True;
            TDBGrid(Components[i]).Color := clWindow;
          end;
        end;

      end;
    end;        }
  except on e : exception do
    SetiMens(0,e.Message,'Error');
  end;
end;

end.
