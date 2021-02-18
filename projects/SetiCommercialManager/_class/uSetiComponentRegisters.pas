unit uSetiComponentRegisters;

interface

uses Forms, Vcl.ComCtrls, Vcl.Dialogs, Vcl.Controls, System.SysUtils, StrUtils,
MIDASLIB, Classes, StdCtrls, Buttons, Types, Themes, windows, Vcl.Menus,
System.Math, Provider, DBClient, DB, ExtCtrls, Variants, uMess,
Graphics, Mask, DBCtrls, VclTee.TeePenDlg, uSetiComponentRegistersDAO,
uSetiConfig;


type TSetiComponentRegisters = class(TSetiComponentRegistersDAO)
    private
      FForm : TObject;
      FFormId : Integer;

      function GetForm : TObject;
      procedure SetForm(Const Value : TObject);

      function GetpFormId : Integer;
      procedure SetpFormId(Const Value : Integer);

    protected
      //
    public
      constructor Create(Sender : TObject);
      destructor Destroy;
      procedure FormRecording;
      procedure ComponnentRecording;
      procedure TruncAll;

    published
      property qForm : TObject read GetForm write SetForm;
      property qFormId : Integer read GetpFormId write SetpFormId;
end;

var
    cSCRDao : TSetiComponentRegistersDAO;



implementation

{ TSetiComponentRegisters }

constructor TSetiComponentRegisters.Create(Sender : TObject);
begin
    try
      SetForm(Sender);
      cSCRDao := TSetiComponentRegistersDAO.Create(qForm);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

destructor TSetiComponentRegisters.Destroy;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

procedure TSetiComponentRegisters.FormRecording;
begin
    try
        cSCRDao.RecordFormInfo(qForm);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

procedure TSetiComponentRegisters.ComponnentRecording;
var
  i : Integer;
  pType : string;
  pCaption : string;
  pSearchEnabled : string;

begin
    try
      SetpFormId(cSCRDao.GetFormId(TForm(qForm).Name));

      for i := 0 to TForm(qForm).ComponentCount -1 do
      begin
          pSearchEnabled := 'S';
          pType := '';

          if (TForm(qForm).Components[i].Tag = SFConfigTagNotSearchCompo) then
            pSearchEnabled := 'N';

          if  (TForm(qForm).Components[i] is TEdit) then begin
            pType := 'TEDIT';
            pCaption := '';
          end
          else
          if  (TForm(qForm).Components[i] is TDBEdit) then begin
            pType := 'TDBEDIT';
            pCaption := '';
          end
          else
          if  (TForm(qForm).Components[i] is TCheckBox) then begin
            pType := 'TCHECKBOX';
            pCaption := TCheckBox(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TDBCheckBox) then begin
            pType := 'TDBCHECKBOX';
            pCaption := TDBCheckBox(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TComboBox) then begin
            pType := 'TCOMBOBOX';
            pCaption := '';
          end
          else
          if  (TForm(qForm).Components[i] is TDBComboBox) then begin
            pType := 'TDBCOMBOBOX';
            pCaption := '';
          end
          else
          if  (TForm(qForm).Components[i] is TDBLookupComboBox) then begin
            pType := 'TDBLOOKUPCOMBOBOX';
            pCaption := '';
          end
          else
          if  (TForm(qForm).Components[i] is TRadioButton) then begin
            pType := 'TRADIOBUTTON';
            pCaption := TRadioButton(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TRadioGroup) then begin
            pType := 'TRADIOGROUP';
            pCaption := TRadioGroup(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TDBRadioGroup) then begin
            pType := 'TDBRADIOGROUP';
            pCaption := TDBRadioGroup(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TPanel) then begin
            pType := 'TPANEL';
            pCaption := TPanel(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TStatusBar) then begin
            pType := 'TSTATUSBAR';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TDBRadioGroup) then begin
            pType := 'TDBRADIOGROUP';
            pCaption := TDBRadioGroup(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TMENU) then begin
            pType := 'TMENU';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TMenuItem) then begin
            pType := 'TMENUITEM';
            pCaption := TMenuItem(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TButton) then begin
            pType := 'TBUTTON';
            pCaption := TButton(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TBitBtn) then begin
            pType := 'TBITBTN';
            pCaption := TBitBtn(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TSpeedButton) then begin
            pType := 'TSPEEDBUTTON';
            pCaption := TSpeedButton(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TLabel) then begin
            pType := 'TLABEL';
            pCaption := TLabel(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TMemo) then begin
            pType := 'TMEMO';
            pCaption := '';
          end
          else
          if  (TForm(qForm).Components[i] is TButtonPen) then begin
            pType := 'TBUTTONPEN';
            pCaption := TButtonPen(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TGroupBox) then begin
            pType := 'TGROUPBOX';
            pCaption := TGroupBox(TForm(qForm).Components[i]).Caption;
          end
          else
          if  (TForm(qForm).Components[i] is TImage) then begin
            pType := 'TIMAGE';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TImageList) then begin
            pType := 'TIMAGELIST';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] is TPageControl) then begin
            pType := 'TPAGECONTROL';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] iS TTabSheet) then begin
            pType := 'TTABSHEET';
            pCaption := TTabSheet(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] iS TGroupBox) then begin
            pType := 'TGROUPBOX';
            pCaption := TGroupBox(TForm(qForm).Components[i]).Caption;
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] iS TProgressBar) then begin
            pType := 'TPROGRESSBAR';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] iS TTreeView) then begin
            pType := 'TTREEVIEW';
            pCaption := '';
            pSearchEnabled := 'N';
          end
          else
          if  (TForm(qForm).Components[i] iS TSplitter) then begin
            pType := 'TSPLITTER';
            pCaption := '';
            pSearchEnabled := 'N';
          end;

        cSCRDao.RecordComponentFormInfo
          (
            TForm(qForm).Components[i].Name,
            pCaption,
            qFormId,
            TForm(qForm).Components[i].Tag,
            pType,
            pSearchEnabled
          );
      end;

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

function TSetiComponentRegisters.GetForm: TObject;
begin
    try
      Result := FForm;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

function TSetiComponentRegisters.GetpFormId: Integer;
begin
    try
        Result := FFormId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

procedure TSetiComponentRegisters.SetForm(const Value: TObject);
begin
    try
        FForm := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

procedure TSetiComponentRegisters.SetpFormId(const Value: Integer);
begin
    try
      FFormId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

procedure TSetiComponentRegisters.TruncAll;
begin
    try
        cSCRDao.Truncate;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

end.
