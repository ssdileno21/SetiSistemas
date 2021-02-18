unit jb;

interface

uses
  Winsock, Forms, dbctrls, Dialogs, System.SysUtils, Windows, dbgrids, DB,
  Graphics, Classes, ComObj, ADODB, Variants, ComCtrls, DateUtils,Excel2000,
  Math,Grids, Types, Registry, Controls, StrUtils,IdBaseComponent, IdComponent,
  IdIPWatch, ShellAPI, DBClient, IniFiles, MIDASLIB, Messages, StdCtrls,
  Buttons, XMLIntf, XMLDoc, WordXP, System.UITypes, Vcl.Menus, Winapi.Imm,
  Vcl.ActnList, Winapi.MultiMon, System.HelpIntfs, Winapi.DwmApi, Vcl.Themes,
  Vcl.ExtCtrls, Datasnap.Provider, Data.SqlExpr, System.Character, IdHTTP,
  WinInet;

  function jildichberjocht : Boolean;
  function falidearretbedriuwmerk(const skerm : TForm) : Boolean;



implementation

  function jildichberjocht : Boolean;
  begin
    try

    finally

    end;
  end;
  function falidearretbedriuwmerk(const skerm : TForm) : Boolean;
  var
    akkountant : Integer;
  begin
    Result := False;
    try
      if Assigned(skerm) then
      begin

      end;
    finally

    end;
  end;

end.
