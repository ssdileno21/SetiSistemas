unit ufrmPattern;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uMess, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ImgList;

type
  TfrmPattern = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPattern: TfrmPattern;
  //cSFCR : TSetiComponentRegisters;

implementation

{$R *.dfm}

uses ufrmMain;

procedure TfrmPattern.FormShow(Sender: TObject);
begin
    try
      {cSFCR := TSetiComponentRegisters.Create(Self);
      cSFCR.FormRecording;
      cSFCR.ComponnentRecording;}
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
