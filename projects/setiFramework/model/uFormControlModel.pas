unit uFormControlModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TFormControlModel = class
      private
        FState : Integer;
      public
        function GetFormControlState : Integer;
        procedure SetFormControlState(Const Value : Integer);
      published
        property qFormControlState : Integer read GetFormControlState write
          SetFormControlState;
      {
        0 : INITIAL
        1 : INSERT;
        2 : UPDATE;
        3 : DELETE;
      }
    end;

implementation

{ TFormControlModel }

function TFormControlModel.GetFormControlState: Integer;
begin
    try
        Result := FState;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TFormControlModel.SetFormControlState(const Value: Integer);
begin
    try
        FState := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
