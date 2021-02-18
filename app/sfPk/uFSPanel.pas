unit uFSPanel;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  Winapi.Windows, Winapi.Messages, System.Variants,
  Vcl.Graphics, Vcl.Forms, Vcl.Dialogs;

type TSFPanel = class(TPanel) private Fhom : TImage; protected public
  constructor Create(AOwner:TComponent); override; destructor Destroy;Virtual;
  property hom : TImage read Fhom write Fhom; published end;

procedure Register;

implementation

uses uFSDialogs, uFSUF;


procedure Register; begin RegisterComponents('SetiFramework', [TSFPanel]); end;

{ TSFPanel }

constructor TSFPanel.Create(AOwner: TComponent);var sizePn : string; begin
try inherited Create(AOwner); sizePn := ExtractFilePath(Application.ExeName);
with Self do begin Left := 0;Top := 376;Width := 664;Height := 31; if Tag <> 99 
then Align := alBottom; if Tag = 99 then Visible := False; Color := clWindow;
ParentBackground := False;TabOrder := 0; Caption := ' ';Name := 'fsPnLg';
Visible := True;BevelOuter := bvNone; end; sizePn := ngasildaln; 
if (iqinumfane___) then begin if (iqinumfane) and (iqinumfane_) then begin 
hom := TImage.Create(Self); end; end else begin hom := TImage.Create(Self);
end; if ngasild11119020(Length(MessSFTel)) then begin SetiMens(MessAlert1);
Abort end; with hom do begin Parent := Self;AlignWithMargins := True;
Left := 575;Top := 4; Width := 105;Height := 31;Align := alRight; 
Picture.LoadFromFile(sizePn); AlignWithMargins := True;Stretch := True;
Visible := True; end; except on e : exception do begin if Assigned(hom) then
hom := nil; SetiMensConfigError; end; end; end; destructor TSFPanel.Destroy;
begin if Assigned(hom) then hom := nil; end;

end.
