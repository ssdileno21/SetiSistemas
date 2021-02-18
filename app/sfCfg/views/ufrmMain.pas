unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    sbFirebirdStart: TSpeedButton;
    sbFirebirdInstall: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    SpeedButton7: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function Painel : Boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udmMain;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    try
      dmMain := TdmMain.Create(Nil);
    finally

    end;
end;

function TfrmMain.Painel: Boolean;
begin
    try
      if Assigned(dmMain)  then
      begin

      end;
    finally

    end;
end;

end.
