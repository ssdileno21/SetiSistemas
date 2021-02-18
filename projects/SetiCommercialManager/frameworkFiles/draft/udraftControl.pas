unit udraftControl;
interface

uses udraftDao, udraftModel, uMess, SysUtils, Forms, Buttons, StdCtrls,
Vcl.Graphics,Windows,Messages,Variants,Classes,Controls,Dialogs, DBGrids,
uFormControlModel;

    type Tdraftontrol = class
      private
          FcModel : TdraftModel;
          FcDao : TdraftDao;
          FFcm : TFormControlModel;
          //procedure ParamSet(Form:TObject;State:Integer);
      public
          constructor Create(Form:TObject);
          property cModel : TdraftModel read FcModel write FcModel;
          property cDao : TdraftDao read FcDao write FcDao;
          property cFcm : TFormControlModel read FFcm write FFcm;
    end;

implementation

{ Tdraftontrol }

constructor Tdraftontrol.Create(Form: TObject);
begin
    try

        cModel := TdraftModel.Create;
        cDao := TdraftDao.Create;
        cFcm := TFormControlModel.Create;
        cFcm.SetFormControlState(0);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

{procedure Tdraftontrol.ParamSet(Form: TObject;State:Integer);
var
    pStatus : string;
begin
   // 0 : INITIAL; 1 : INSERT; 2 : UPDATE; 3 : DELETE;
    try
        with (Form as TForm) do
        begin
            if (FFcm.qFormControlState in [1,2]) then
            begin
                //Set values for model class

            end;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;}

end.
