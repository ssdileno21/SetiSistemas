unit uUtilFramework;

interface

uses Forms, Vcl.ComCtrls, Vcl.Dialogs, Vcl.Controls, System.SysUtils, IniFiles,
  System.Classes, System.Variants, Winapi.Windows, Winapi.Messages,Vcl.Graphics,
  Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Data.SqlExpr, Data.DBXFirebird, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Vcl.ImgList, {uProjects,} uUtilSeti, Vcl.Themes, MIDASLIB;

  function StylesInsSel(NovoStyle:string='';Restaurar:Boolean=False) : string;

implementation

uses ufrmPadrao, ufrmCadPadrao, ufrmSplash, ufrmLogin, {ufrmPesquisa,}
  ufrmPermissoes, ufrmConfInicial, ufrmEstilos, ufrmPrincipal;

function StylesInsSel(NovoStyle:string;Restaurar:Boolean): string;
var
    DataIni : TIniFile;
    CamArqIni : String;
    wideChars   : array[0..200] of WideChar;
    teste : WideChar;
begin
    Result := '';
    CamArqIni := ExtractFilePath(Application.ExeName)+'style.ini';
    try
        if (NovoStyle <> '') then begin
          DeleteFile(StringToWideChar(CamArqIni, wideChars, 201));
          DataIni := TIniFile.Create(CamArqIni);
          if Restaurar then begin
              DataIni.WriteString('typesSel','sel','Windows');
              TStyleManager.TrySetStyle('Windows');
          end else
            DataIni.WriteString('typesSel','sel',NovoStyle);
        end else begin
            if NOT FileExists(CamArqIni) then begin //Existe arquivo style.ini?
                DataIni := TIniFile.Create(CamArqIni); //Cria o arquivo style.ini;
                DataIni.WriteString('typesSel','sel','Windows');
            end;
            ArqIni(cntArqIniInicializar,CamArqIni,'','');
            Result := ArqIni(cntArqIniLer,'typesSel','sel','');
            if Result <> 'Windows' then
            TStyleManager.TrySetStyle(Result);
            ArqIni(cntArqIniFinalizar,'','','');
        end;
    finally
      DataIni.Free;
    end;
end;

end.
