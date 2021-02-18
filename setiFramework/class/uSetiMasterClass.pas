unit uSetiMasterClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Datasnap.DBClient,  MIDASLIB,  Vcl.ComCtrls, Datasnap.Provider, Data.FMTBcd,
  Data.SqlExpr, Vcl.ImgList, VCLTee.TeCanvas, VCLTee.TeePenDlg,

  uSetiConnects, uMess, uSetiConfig,

  udmMasterDataModule
  ;

  type
    TSetiMasterClass = class
    public
      function SetiFileOpen(FilePath:string) : Boolean;

  end;


implementation

{ TSetiMasterClass }

function TSetiMasterClass.SetiFileOpen(FilePath: string): Boolean;
begin
    Result := False;
    try
      if (FilePath <> '') then
      begin
        Result := (FileOpen(FilePath,fmOpenReadWrite) > 0);
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
