unit ufrmSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmSplash = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure TrimAppMemorySize;
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

uses uSetiConfig;

{ TfrmSplash }

procedure TfrmSplash.FormShow(Sender: TObject);
begin
  TrimAppMemorySize;
end;

procedure TfrmSplash.TrimAppMemorySize;
var
  MainHandle : THandle;
  vCount : Integer;
  i : Integer;
begin
    try
      vCount := SConfigTagClearCount;
      MainHandle := OpenProcess(PROCESS_ALL_ACCESS,False,GetCurrentProcessId);
      SetProcessWorkingSetSize(MainHandle,$FFFFFFFF, $FFFFFFFF);
      CloseHandle(MainHandle);
      Application.ProcessMessages;
    finally
    end;
end;

end.
