unit uFSUF;

interface

uses
  Winsock, Forms, dbctrls, Dialogs, System.SysUtils, Windows, dbgrids, DB,
  Graphics, Classes, ComObj, Variants, ComCtrls, DateUtils,Excel2000,
  Math,Grids, Types, Registry, Controls, StrUtils,IdBaseComponent, IdComponent,
  IdIPWatch, ShellAPI, DBClient, IniFiles, MIDASLIB, Messages, StdCtrls,
  Buttons, XMLIntf, XMLDoc, WordXP, System.UITypes, Vcl.Menus, Winapi.Imm,
  Vcl.ActnList, Winapi.MultiMon, System.HelpIntfs, Winapi.DwmApi, Vcl.Themes,
  Vcl.ExtCtrls, Datasnap.Provider, Data.SqlExpr, System.Character, IdHTTP,
  WinInet, JPeg,

  uFSDialogs;

  type Tshix = class private FIndhaw: string;

  public function ukuh(isit:string) : string; function bulapadi(shixo:string) :
  string;  procedure SetIndhaw(const Value: string); property Indhaw : string 
  read FIndhaw write SetIndhaw; end; procedure ufAlterNavi(pNav:TObject);
  function ngasildaln : string; function ngasildaln_ : string; function
  ngasildaln__ : string; function ngasildaln___ : string; function
  ngasildaln____ : string; function iqinumfane : Boolean; function iqinumfane_ :
  Boolean; function iqinumfane__(cych,gorf:string): Boolean; function
  iqinumfane___ : Boolean; function ngasild9686521 : Integer; function
  SetiUseFulSetiValidatePeriod(pIniDate,pFinDate:TDateTime) : Boolean;
  function ngasild9156521 : Integer; function SetiUsefulFormatDateToFirebirdSt(
  pDate:string) : string; function ngasild9879121 : Integer; function 
  ngasild9854211 : Integer; function ngasild3211416: Integer;
  function ngasild0165141 : Integer; function ngasild11119020(hj:Integer) :
  Boolean;
  function ngasild5765461 : Integer; var
  cshix : Tshix;

  type
    TDBNewNavigator = class(TDBNavigator);


  function ValidatedFields(pds:TDataSet): Boolean;
  function GetDataBase : string;
  function IsEmptyOrNull(const Value: Variant): Boolean;
  function OnlyNumber(Text: string): boolean;
  function SetiUserfulRetornaQtdCarct(pValor:String;pTexto:string) : Integer;
  function GetFirstDayOfMonthStr(pDate:TDateTime) : String;  
  function GetLasttDayOfMonthStr(pDate:TDateTime) : String;  
  function SetiUsefulCriptografa(Senha: String): String; 
  
  procedure gridorders(pGrid:TDBGrid; pColumnSel: TColumn);   
  procedure SetiExpDataSet(pType: Integer=2; pDataSet:TDataSet=Nil;
  pDateHour:Boolean=False; pFileOpen:Boolean=True; pFilePath:Boolean=True;
  pFilePath_:string='');  
  procedure SetiUsefulOrdenaGrid(gGrid:TDBGrid; ColunaSelecionada: TColumn);

  const
    ccon = 22; ccof = 990; nbFiCa = 'Inicio'; nbPrCa = 'Anterior'; nbNeCa = 
    'Próximo'; nbLaCa = 'Último'; nbInCa = 'Novo'; nbDeCa = 'Apagar'; nbEdCa = 
    'Alterar'; nbPoCa = 'Gravar'; nbCaCa = 'Cancelar'; nbReCa = 'Atualizar';
    SConfigExcType = '.xlsx'; SConfigDirWay = 'C:\'; SConfigExcHearderColor = 
    clSkyBlue; SConfigExcHeaderFontColor = clBlack; SConfigExcLinesColor1 = 
    clSilver; SConfigExcLinesColor2 = clWindow; SConfigExcLinesFontColor = 
    clBlack; SConfigDocLandscape = True;   

implementation

uses uFSC;

function ValidatedFields(pds:TDataSet): Boolean;
var
  i :Integer;
  Fields :TStrings;
  count : Integer;
  countflast : Integer;
  countEmp : Integer;

begin
    Result := False;
  try
    Fields := TStringList.Create;
    count := 0;
    countflast := 0;
    countEmp := 0;
    countflast := pds.FieldCount;
    Fields.Insert(0, 'Preencha os campos obrigatórios:');
    for i := 0 to pds.Fields.Count-1 do
    begin
      count := count + 1;
      if (pds.Fields[i].Tag=1) then
        if (pds.Fields[i].AsString = EmptyStr) then
        begin
          if count = 1 then
            Fields.Add('* ' + pds.Fields[i].DisplayName)
          else
            Fields.Add('* ' + pds.Fields[i].DisplayName+';');
          countEmp := countEmp + 1;
        end;
    end;
  finally
    if countEmp > 0 then
    begin
      ShowMessage(Fields.Text);
    end else
    Result := True;
    Fields.Free;
  end;
end;

function GetDataBase: string;
var
    vPath : string;
    vIniFile : TIniFile;
begin
    Result := '';
    try
        vPath := ExtractFilePath(Application.ExeName);
        vPath := vPath + 'conn.ini';
        vIniFile := TIniFile.Create(vPath);
        Result := vIniFile.ReadString('PARAMETROS','PATHCONN','Erro ao ler '+
              'arquivo de conexão');
        vIniFile := nil;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function IsEmptyOrNull(const Value: Variant): Boolean;
begin
  Result := VarIsClear(Value) or
              VarIsEmpty(Value) or
                VarIsNull(Value) or
                  (VarCompareValue(Value, Unassigned) = vrEqual);
  if (not Result) and VarIsStr(Value) then
    Result := Value = '';
end;

function OnlyNumber(Text: string): boolean;
var
  i: integer;
begin
  Result := False;
    for i := 1 to length(text) do
    if text[i] in ['0'..'9'] then
    begin
      result:= True;
    end else
    begin
      Result := False;
      Exit;
    end;
end;

function SetiUserfulRetornaQtdCarct(pValor:String;pTexto:string) : Integer;
var
  i, t : Integer;
  vValor, vTexto : string;
begin
  Result := 0;
  if (Length(pValor) > 1) or (Length(pValor) = 0) then
    Exit else
  begin
      vValor := UpperCase(pValor);
      t := Length(pTexto);
      if t = 0 then
        Exit else
      begin
        vTexto := UpperCase(pTexto);
        i := 1;
        while i <= t do
        begin
            Result := Result + Pos(vValor,vTexto[i]);
          i := i + 1;
        end;
      end;
  end;
end;

function GetFirstDayOfMonthStr(pDate:TDateTime) : String;
var
  vAge, vMonth : Word;
  vDt : TDateTime;
begin
    Result := '';
    try
        if (NOT(IsEmptyOrNull(pDate))) then
        begin
            vAge := StrToInt(FormatDateTime('YYYY',pDate));
            vMonth := StrToInt(FormatDateTime('MM',pDate));
            vDt := StartOfAMonth(vAge,vMonth);
            Result := (DateToStr(vDt));
        end;

    finally

    end;
end;

function GetLasttDayOfMonthStr(pDate:TDateTime) : String;
var
  vAge, vMonth : Word;
  vDt : TDateTime;
begin
    Result := '';
    try
        if (NOT(IsEmptyOrNull(pDate))) then
        begin
            vAge := StrToInt(FormatDateTime('YYYY',pDate));
            vMonth := StrToInt(FormatDateTime('MM',pDate));
            vDt := EndOfAMonth(vAge,vMonth);
            Result := (DateToStr(vDt));
        end;
    finally

    end;
end;

function SetiUsefulCriptografa(Senha: String): String;
  var i: Integer;
      s: String[255];
      c: array [0..255] of Byte absolute s;
begin
    try
       s := Senha;
       for i := 1 to Ord(s[0]) do
         c[i] := (356 * (Length(Senha) * i)) Xor c[i];
       Result := s;
    except on e : exception do
      SetiMens(e.Message,0);
    end;
end;

procedure gridorders(pGrid:TDBGrid; pColumnSel: TColumn);
var
    i:Integer;
    indice: string;
    existe: boolean;
    clientdataset_idx: tclientdataset;
    Cor:TColor;
begin
    try
      Cor := pGrid.Columns[0].Title.Font.Color;
      for i := 0 to pGrid.Columns.Count-1 do
        pGrid.Columns[i].Title.Font.Color := Cor;
      pColumnSel.Title.Font.Color := clRed;
      clientdataset_idx := TClientDataset(
        pColumnSel.Grid.DataSource.DataSet);
      if clientdataset_idx.IndexFieldNames =
          pColumnSel.FieldName then begin
        indice := AnsiUpperCase(pColumnSel.FieldName+'_INV');
        try
          clientdataset_idx.IndexDefs.Find(indice);
          existe := true;
          except
            existe := false;
          end;
        if not existe then
          with clientdataset_idx.IndexDefs.AddIndexDef do begin
            Name := indice;
            Fields := pColumnSel.FieldName;
            Options := [ixDescending];
          end;
        clientdataset_idx.IndexName := indice;
      end else
      clientdataset_idx.IndexFieldNames := pColumnSel.FieldName;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure SetiExpDataSet(pType: Integer;pDataSet:TDataSet;pDateHour:Boolean;
pFileOpen:Boolean; pFilePath:Boolean; pFilePath_:string);
var
  i: integer;
  sl: TStringList;
  st: string;
  ExcApp: OleVariant;
  l: integer;
  WordApp,WordDoc,WordTable,WordRange: Variant;
  Row,Column: integer;
  xml: TXMLDocument;
  reg, campo: IXMLNode;
  SaveDialog : TSaveDialog;
  pFileName : string;
  pCompName : string;
  pDate,pHora : string;

  pTitle : string;
  pVal : Boolean;

  bResult   : Boolean;
	SavePlace : TBookmark;
	eline   : Integer;
	Excel	 : Variant;
	iSheet	: Integer;
	CorFundo  : TColor;
  TotalRegistros : Integer;

  wideChars   : array[0..50] of WideChar;

begin
  try
    if Assigned(pDataSet) then
      pDataSet.DisableControls;
    if (pType in [0,1,2,3,4]) then
    begin
      if (pFilePath) then
      begin
        if (pType = 0) then
          pTitle := 'Salvar em HTML' else
        if (pType = 1) then
          pTitle := 'Salvar em TXT' else
        if (pType = 2) then
        begin
          if (SConfigExcType = '.xls') then
            pTitle := 'Salvar em XLS' else
          if (SConfigExcType = '.xlsx') then
            pTitle := 'Salvar em XLSX';
        end else
        if (pType = 3) then
          pTitle := 'Salvar em DOC' else
        if (pType = 4) then
          pTitle := 'Salvar em XML';
        SaveDialog := TSaveDialog.Create(Application);
        pFileName := '';
        pDate :=  FormatDateTime('dd-mm-yyyy',Now);
        pHora :=  FormatDateTime('hh-nn-ss-',Now);
        pCompName := '_'+pDate +'_'+ pHora;
        with (SaveDialog) do
        begin
          InitialDir := SConfigDirWay;
          if (pType = 0) then
          begin
            DefaultExt := '*.html';
            Filter := 'html|*.html';
          end else
          if (pType = 1) then
          begin
            DefaultExt := '*.txt';
            Filter := 'Text file|*.txt';
          end else
          if (pType = 2) then
          begin
            DefaultExt := '*'+SConfigExcType;
            Filter := 'Microsoft Excel|*'+SConfigExcType;
          end else
          if (pType = 3) then
          begin
            DefaultExt := '*.doc';
            Filter := 'Word file|*.doc';
          end else
          if (pType = 4) then
          begin
            DefaultExt := '*.xml';
            Filter := 'xml|*.xml';
          end;
          if (Execute) then
            pFileName := Trim(FileName);
        end;
      end;
      if (pFilePath = False) then
      begin
        pFileName := Trim(pFilePath_);
      end;

      if (Trim(pFileName) = '') then
      begin
        SetiMens(Mess18);
        Exit;
      end;
      pVal := True;
      if (pType = 0) then
      begin
        if ((Copy(pFileName,length(pFileName) -4,5)) <> '.html') then
        begin
          pVal := False;
        end;
      end else
      if (pType = 1) then
      begin
        if ((Copy(pFileName,length(pFileName) -3,4)) <> '.txt') then
          pVal := False;
      end else
      if (pType = 2) then
      begin
        if SConfigExcType = '.xls' then
        begin
          if ((Copy(pFileName,length(pFileName) -3,4)) <> '.xls') then
          begin
            pVal := False;
          end;
        end;
        if SConfigExcType = '.xlsx' then
        begin
          if ((Copy(pFileName,length(pFileName) -4,5)) <> '.xlsx') then
          begin
            pVal := False;
          end;
        end;
      end else
      if (pType = 3) then
      begin
        if ((Copy(pFileName,length(pFileName) -3,4)) <> '.doc') then
        begin
          pVal := False;
        end;
      end;
      if (pType = 4) then
      begin
        if ((Copy(pFileName,length(pFileName) -3,4)) <> '.xml') then
        begin
          pVal := False;
        end;
      end;
      if (pVal = False) then
      begin
        SetiMens(Mess19);
        Exit;
      end;
      if (pDateHour) then
      begin
        if (pType = 0) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-5))
            +pCompName+'.html');
        end;
        if (pType = 1) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
            +pCompName+'.txt');
        end;
        if (pType = 2) and (SConfigExcType = '.xls') then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
              +pCompName+'.xls');
        end;
        if (pType = 2) and (SConfigExcType = '.xlsx') then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-5))
              +pCompName+'.xlsx');
        end;
        if (pType = 3) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
            +pCompName+'.doc');
        end;
        if (pType = 4) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
            +pCompName+'.xml');
        end;
      end;

      if (FileExists(pFileName)) then
      begin
        if (FileOpen(pFileName,fmOpenReadWrite) > 0) then
          pFileName := pFileName + pCompName;
      end;


    end;
    if (pType = 1) then
    begin
      pDataSet.First;
      sl := TStringList.Create;
      try
        st := '';
        for i := 0 to pDataSet.Fields.Count - 1 do
          st := st + pDataSet.Fields[i].DisplayLabel + ';';
        sl.Add(st);
        pDataSet.First;
        while not pDataSet.Eof do
        begin
          st := '';
          for i := 0 to pDataSet.Fields.Count - 1 do
            st := st + pDataSet.Fields[i].DisplayText + ';';
          sl.Add(st);
          pDataSet.Next;
        end;
        sl.SaveToFile(pFileName);
      finally
          if (pFileOpen) then
          begin
            ShellExecute(0,'open',pChar(pFileName),Nil,'',SW_SHOWNORMAL);
          end;
          sl.free;
      end;
    end else
    if (pType = 2) then
    begin
      try
        if Assigned(pDataSet) then
        begin
          pDataSet.DisableControls;
          if NOT (pDataSet.IsEmpty) then
          begin
            TotalRegistros := pDataSet.RecordCount;
            Excel:= CreateOleObject('Excel.Application');
            Excel.Visible:= False;
            Excel.WorkBooks.Add;
            if  (TotalRegistros > 65000) then
            begin
               if  ((TotalRegistros Mod 65000) = 0) then
                 iSheet := TotalRegistros DIV 5
               else
                 iSheet := (TotalRegistros DIV 65000) + 1;
               if  (iSheet > 3) then
               for i:= 4 to iSheet do
                 Excel.WorkBooks[1].Sheets.Add(null, Excel.WorkBooks[1].
                  Sheets[i-1]);
            end;
            SavePlace:= pDataSet.GetBookmark;
            pDataSet.First;
            iSheet := 1;
            if not (pDataSet.Eof) then
            begin
              eline:= 1;
              for i:=0 to (pDataSet.FieldCount -1) do
              begin
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                  := pDataSet.Fields[i].DisplayLabel;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].
                  ColumnWidth := pDataSet.Fields[i].DisplayWidth;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                  FontStyle := 'Negrito';
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.
                  Color := (ColorToRgb(SConfigExcHearderColor));
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.Color
                  := (ColorToRgb(SConfigExcHeaderFontColor));
              end;
          end;
          while not pDataSet.Eof do
          begin
            Inc(eline);
            if (eline > 65000) then
            begin
              Inc(iSheet);
              eline := 1;
              for i:=0 to (pDataSet.FieldCount -1) do
              begin
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                  := pDataSet.Fields[i].DisplayLabel;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].
                  ColumnWidth := pDataSet.Fields[i].DisplayWidth;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                  FontStyle := 'Negrito';
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.
                  Color := (ColorToRgb(SConfigExcHearderColor));
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                  Color := (ColorToRgb(SConfigExcHeaderFontColor));
              end;
              Inc(eline);
            end;
            if (eline mod 2) = 0 then
              CorFundo := SConfigExcLinesColor1
            else
              CorFundo := SConfigExcLinesColor2;
            for i:=0 to (pDataSet.FieldCount-1) do
            begin
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                := pDataSet.Fields[i].AsString;
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.
                Color := (ColorToRgb(CorFundo));
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                Color := (ColorToRgb(SConfigExcLinesFontColor));
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Borders.
                Color := (ColorToRgb(clGray));
            end;
            pDataSet.Next;
          end;
          for i:= 1 to iSheet do
            Excel.WorkBooks[1].WorkSheets[i].Range['B1','AQ1000'].Columns.
              AutoFit;
          pDataSet.GotoBookmark(SavePlace);
          Excel.WorkBooks[1].SaveAs(pFileName);
          if (pFileOpen) then
          begin
            Excel.Visible := True;
          end else
          begin
            Excel.Quit;
          end;
          bResult:= True;
          pDataSet.EnableControls;
        end;
      end;
      except
		    bResult:= False;
    		Excel.Quit;
	  end;
    end else
    if (pType = 3) then
    begin
      WordApp := CreateOleobject('Word.basic');
      WordApp.Appshow;
      WordDoc := CreateOleobject('Word.Document');
      WordRange := WordDoc.Range;
      WordTable := WordDoc.tables.Add(
        WordDoc.Range,1,pDataSet.FieldCount);
      for Column:=0 to pDataSet.FieldCount-1 do
        WordTable.cell(1,Column+1).range.text:=
          pDataSet.Fields.Fields[Column].FieldName;
      Row := 2;
      pDataSet.First;
      while not pDataSet.Eof do
      begin
         WordTable.Rows.Add;
         for Column:=0 to pDataSet.FieldCount-1 do
           WordTable.cell(Row,Column+1).range.text :=
             pDataSet.Fields.Fields[Column].DisplayText;
         pDataSet.next;
         Row := Row+1;
      end;
      if (SConfigDocLandscape) then
      begin
        WordDoc.PageSetup.Orientation := wdOrientLandscape;
      end;
      WordDoc.SaveAs(pFileName);
      WordDoc := unAssigned;
      if (pFileOpen) then
      begin
        ShellExecute(0,'open',pChar(pFileName),Nil,'',SW_SHOWNORMAL);
      end;
    end else
    if (pType = 4) then
    begin
      xml := TXMLDocument.Create(nil);
      try
        xml.Active := True;
        pDataSet.First;
        xml.DocumentElement :=
          xml.CreateElement('DataSet','');
        pDataSet.First;
        while not pDataSet.Eof do
        begin
          reg := xml.DocumentElement.AddChild('row');
          for i := 0 to pDataSet.Fields.Count - 1 do
          begin
            campo := reg.AddChild(
              pDataSet.Fields[i].DisplayLabel);
            campo.Text := pDataSet.Fields[i].DisplayText;
          end;
          pDataSet.Next;
        end;
        xml.SaveToFile(pFileName);
      finally
        if Assigned(pDataSet) then
          pDataSet.EnableControls;
        if (pFileOpen) then
        begin
          ShellExecute(0,'open',pChar(pFileName),Nil,'',SW_SHOWNORMAL);
        end;
        xml.free;
      end;
    end;
    except on e : exception do
      SetiMens(e.Message,0);
    end;
end;

procedure SetiUsefulOrdenaGrid(gGrid:TDBGrid; ColunaSelecionada: TColumn);
var
    i:Integer;
    indice: string;
    existe: boolean;
    clientdataset_idx: tclientdataset;
    Cor:TColor;
begin
    try
      Cor := gGrid.Columns[0].Title.Font.Color;
      for i := 0 to gGrid.Columns.Count-1 do
        gGrid.Columns[i].Title.Font.Color := Cor;
      ColunaSelecionada.Title.Font.Color := clRed;
      clientdataset_idx := TClientDataset(
        ColunaSelecionada.Grid.DataSource.DataSet);
      if clientdataset_idx.IndexFieldNames =
          ColunaSelecionada.FieldName then begin
        indice := AnsiUpperCase(ColunaSelecionada.FieldName+'_INV');
        try
          clientdataset_idx.IndexDefs.Find(indice);
          existe := true;
          except
            existe := false;
          end;
        if not existe then
          with clientdataset_idx.IndexDefs.AddIndexDef do begin
            Name := indice;
            Fields := ColunaSelecionada.FieldName;
            Options := [ixDescending];
          end;
        clientdataset_idx.IndexName := indice;
      end else
      clientdataset_idx.IndexFieldNames := ColunaSelecionada.FieldName;
    except on e : exception do
      SetiMens(e.Message,0);
    end;
end;

function ngasildaln : string; begin Result := ''; try if Assigned(cshix) then
cshix := Nil; cshix := Tshix.Create; Result := cshix.bulapadi(Umedowfkiso);
finally end; end; procedure ufAlterNavi(pNav:TObject); var vB : TNavigateBtn;
begin try if (Assigned(pNav)) then begin if (pNav is TDBNavigator) then begin
for vB := Low(TNavigateBtn) to High(TNavigateBtn) do with TDBNewNavigator(
TDBNavigator(pNav)).Buttons[vB] do begin Case Index of nbFirst : Caption := 
nbFiCa; nbPrior : Caption := nbPrCa; nbNext : Caption := nbNeCa; nbLast : 
Caption := nbLaCa; nbInsert : Caption := nbInCa; nbDelete : Caption := nbDeCa;
nbEdit : Caption := nbEdCa; nbPost : Caption := nbPoCa; nbCancel : Caption := 
nbCaCa; nbRefresh: Caption := nbReCa; end; Layout := blGlyphTop; Hint := 
Caption; ShowHint := True; end; end; end; except on e : exception do 
SetiMens(e.Message,0); end; end; function ngasildaln_ : string; begin Result 
:= ''; try if Assigned(cshix) then cshix := Nil; cshix := Tshix.Create; 
Result := cshix.bulapadi(Umedowfkiso_); finally end; end; function ngasildaln__ 
: string; begin Result := ''; try if Assigned(cshix) then cshix := Nil; 
cshix := Tshix.Create; Result := cshix.bulapadi(Umedowfkiso__); finally end; 
end;function SetiUseFulSetiValidatePeriod(pIniDate,pFinDate:TDateTime) : 
Boolean; begin Result := True; if pIniDate > pFinDate then Result := False; end;
function SetiUsefulFormatDateToFirebirdSt(pDate:string) : string; begin Result
:= ''; try if (NOT(IsEmptyOrNull(pDate))) then begin Result := 
StringReplace(pDate,'/','.',[rfReplaceAll]); end; finally end; end; function 
ngasildaln___ : string; begin Result := ''; try if Assigned(cshix) then cshix 
:= Nil; cshix := Tshix.Create; Result := cshix.bulapadi(Umedowfkiso___); 
finally end; end; function ngasildaln____ : string; begin Result := ''; try if 
Assigned(cshix) then cshix := Nil; cshix := Tshix.Create; Result := 
cshix.bulapadi(Umedowfkiso____); finally end; end; function 
iqinumfane__(cych,gorf:string): Boolean; var c, g : TDateTime; EB : Integer;
begin Result := False; c := StrToDateTime(cych); g := StrToDateTime(gorf);
EB := DaysBetween(g,c) ; Result := (EB=0); end; function iqinumfane___ :
Boolean; var enwca : string; begin Result := False; enwca :=
ExtractFileName(Application.ExeName); Result := (enwca = ngasildaln____);
end; function iqinumfane : Boolean; var _iqinumfane : string; __iqinumfane :
string; begin Result := False; if ngasildaln = '' then Exit; _iqinumfane :=
formatDateTime('dd/mm/yyyy hh:nn:ss.zzz',
FileDateToDateTime(FileAge(ngasildaln))); __iqinumfane :=
FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',StrToDateTime(ngasildaln__)); Result :=
(iqinumfane__(_iqinumfane,__iqinumfane)); end; function iqinumfane_ : Boolean;
var _iqinumfane_ :string; begin Result := False; _iqinumfane_ :=
ExtractFileName(ngasildaln); Result := (_iqinumfane_ = ngasildaln___); end;
function ngasild9686521 : Integer; begin Result := -1; try if Assigned(cshix)
then cshix := Nil; cshix := Tshix.Create; Result := StrToInt(cshix.bulapadi(
Umedowfkiso_ell)); finally end; end; function ngasild9156521 : Integer;
begin Result := -1; try if Assigned(cshix) then cshix := Nil; cshix :=
Tshix.Create; Result := StrToInt(cshix.bulapadi(Umedowfkiso_xjh)); finally end;
end; function ngasild9879121 : Integer; begin Result := -1; try if
Assigned(cshix) then cshix := Nil; cshix := Tshix.Create; Result :=
StrToInt(cshix.bulapadi(Umedowfkiso_alk)); finally end; end; function
ngasild9854211 : Integer; begin Result := -1; try if Assigned(cshix) then cshix
:= Nil; cshix := Tshix.Create; Result :=
StrToInt(cshix.bulapadi(Umedowfkiso_ihs)); finally end; end; function
ngasild3211416: Integer; begin Result := -1; try if Assigned(cshix) then cshix
:= Nil; cshix := Tshix.Create; Result := StrToInt(cshix.bulapadi(
Umedowfkiso_iuyb)); finally end; end; function ngasild0165141 : Integer; begin 
Result := -1; try if Assigned(cshix) then cshix := Nil; cshix := Tshix.Create; 
Result := StrToInt(cshix.bulapadi(Umedowfkiso_pihn)); finally end; end;
function ngasild11119020(hj:Integer) : Boolean; begin Result := false; Result
:= ((hj*ccon)=ccof); end; function ngasild5765461 : Integer; begin Result := -1;
try if Assigned(cshix) then cshix := Nil; cshix := Tshix.Create; Result :=
StrToInt(cshix.bulapadi(Umedowfkiso_erbg)); finally end; end;

{ Tshix }

function Tshix.bulapadi(shixo: string): string; begin Result := ''; try Result
:= ukuh(shixo); finally end; end; procedure Tshix.SetIndhaw(const Value:
string); begin FIndhaw := Value; end; function Tshix.ukuh(isit: string): string;
var vi0: Integer; vs1: string[255]; vc2 : array [0..255] of Byte absolute vs1;
begin Result := ''; try vs1 := isit; for vi0 := 1 to Ord(vs1[0]) do vc2[vi0] :=
( 356 * (Length(isit) * vi0 ) ) Xor vc2[vi0]; Result := vs1; finally end; end;


end.

