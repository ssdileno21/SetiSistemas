unit ufrmGetDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmGetDate = class(TForm)
    MonthCalendar1: TMonthCalendar;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
  private
    FqType: Integer;
    FqResult: string;
    procedure SetqResult(const Value: string);
    procedure SelectDate;
    { Private declarations }
  public
    { Public declarations }
    procedure SetqType(const Value: Integer);
    property qType : Integer read FqType write SetqType;
    property qResult : string read FqResult write SetqResult;
  end;

var
  frmGetDate: TfrmGetDate;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmGetDate.FormCreate(Sender: TObject);
begin
    MonthCalendar1.Date := Now;
end;

procedure TfrmGetDate.MonthCalendar1DblClick(Sender: TObject);
begin
    SelectDate;
end;

procedure TfrmGetDate.SelectDate;
begin
    { 0 : Date; 1 : Datetime; 2 : Time; 3 : Dia; 4; Mês; 5: Ano}
    //Apenas 0 : date, futuramente vou melhorar essa tela....
    { 0 : For frontend; 1 : For backend}
    try
      MonthCalendar1.Hide;
      if (qType = 0) then
        SetqResult(DateToStr(MonthCalendar1.Date)) else
      if (qType = 1) then
        SetqResult(QuotedStr(StringReplace(
          DateToStr(MonthCalendar1.Date),'/','.',[rfReplaceAll])));
      ModalResult := mrOk;
    finally

    end;
end;

procedure TfrmGetDate.SetqResult(const Value: string);
begin
    FqResult := Value;
end;

procedure TfrmGetDate.SetqType(const Value: Integer);
begin
    FqType := Value;
end;

procedure TfrmGetDate.SpeedButton1Click(Sender: TObject);
begin
    SelectDate;
end;

end.
