unit uRegions;

interface

uses System.SysUtils,Vcl.StdCtrls,Vcl.Graphics, uLocate, Data.DB;

type
    TRegions = class
      private
        FLocate : TLocate;
      protected
        property cLocate :  TLocate read FLocate write FLocate;
      public
        Constructor Create;
        Destructor Destroy;
        function CheckState(pStateEdit,pCountyEdit:TObject) : Boolean;
        function SearchRegions(pType:Integer=-1;pEdtAcron:TObject=Nil;
        pedtCounties:TObject=Nil) : Boolean;
        procedure ClearRegions(pEdtAcron:TObject=Nil;pedtCounties:TObject=Nil);
      published

    end;


implementation

{ TRegions }

uses uMess, udmComponentsDao, udmMasterDataModule;

function TRegions.CheckState(pStateEdit,pCountyEdit:TObject): Boolean;
var
  val : Boolean;
begin
    try
      val := False;
      with (pStateEdit as TEdit) do
      begin
        if (TEdit(pStateEdit)).Text <> '' then
          val := True;
      end;
      with (pCountyEdit as TEdit) do
      begin
        if (val) then
        begin
          (TEdit(pCountyEdit)).Enabled := True;
          (TEdit(pCountyEdit)).Color := clWindow;
        end else
        begin
          (TEdit(pCountyEdit)).Enabled := False;
          (TEdit(pCountyEdit)).Color := clSilver;
          (TEdit(pCountyEdit)).Clear;
        end;
      end;
    except on e : exception do
      SetiMens(0,e.Message);
    end;
end;

procedure TRegions.ClearRegions(pEdtAcron, pedtCounties: TObject);
begin
    try
      TEdit(pEdtAcron).Clear;
      TEdit(pedtCounties).Clear;
    except on e : exception do
      SetiMens(0,e.Message);
    end;
end;

constructor TRegions.Create;
begin
    try

    except on e : exception do
      SetiMens(0,e.Message);
    end;
end;

destructor TRegions.Destroy;
begin
    try

    except on e : exception do
      SetiMens(0,e.Message);
    end;
end;

function TRegions.SearchRegions(pType: Integer; pEdtAcron : TObject;
  pedtCounties: TObject): Boolean;
var
  vAcronValue : string;
  vCountiesValue : string;
  vAcronValueResult : string;
  vCountiesValueResult : string;

  vQry : string;
  vQryGroupBy : string;
  vQryOrderBy : string;

  vDataSet : TDataSet;
begin
    try
      try
        vDataSet := TDataSet.Create(Nil);
        cLocate := TLocate.Create;
        vQry := '';
        vQryGroupBy := '';
        vQryOrderBy := '';
        if (pType >= 0) then
        begin
          vAcronValue := UpperCase(TEdit(pEdtAcron).Text);
          vCountiesValue := UpperCase(TEdit(pedtCounties).Text);
          if (pType = 0) then  //POR UF
          begin
            vQryOrderBy := 'ORDER BY DESCRICAO                        ';
            if (vCountiesValue <> '') then
            begin
              vQry := 'SELECT U.*,M.NOME FROM TBUF U                      '+
                      'INNER JOIN TBMUNICIPIOS M ON U.UF = M.UF           '+
                      'WHERE UPPER(M.NOME) LIKE ''%'+vCountiesValue+'%''  ';
              vQryGroupBy := 'GROUP BY                                    '+
                             '        U.ID,                               '+
                             '        U.UF,                               '+
                             '        U.DESCRICAO,                        '+
                             '        U.REGIAO,                           '+
                             '        M.NOME                              ';
              {pType;pCds;pTable;pField;pKey;pFieldReturn;pTitle;
               pComm;pGroupBy;pOrder;pIdConnect:Integer}
              vDataSet := cLocate.GetSearchDataSet( 1,
                                                    NIL,
                                                    'TBUF',
                                                    'DESCRICAO',
                                                    'ID',
                                                    'Consulta - UF',
                                                    vQry,
                                                    vQryGroupBy,
                                                    vQryOrderBy,
                                                    1);
              if Assigned(vDataSet) then
              begin
                if NOT (vDataSet.IsEmpty) then
                begin
                  TEdit(pEdtAcron).Text :=
                    vDataSet.FieldByName('UF').AsString;
                  TEdit(pedtCounties).Text :=
                    vDataSet.FieldByName('NOME').AsString;
                end;
              end;
            end else
            if (vCountiesValue = '') then
            begin
              TEdit(pEdtAcron).Text := cLocate.GetSearch( 0,
                                                          NIL,
                                                          'TBUF',
                                                          'DESCRICAO',
                                                          'ID',
                                                          'UF',
                                                          'Consulta - UF',
                                                          '',
                                                          '',
                                                          vQryOrderBy,
                                                          1);
            end;
          end else
          if (pType = 1) then  //POR CIDADE
          begin
            vQryOrderBy := 'ORDER BY NOME';
            if (vAcronValue <> '') then
            begin
              vQry := 'SELECT M.* FROM TBMUNICIPIOS M                   '+
                      'INNER JOIN TBUF U ON M.UF = U.UF                 '+
                      'WHERE UPPER(U.UF) LIKE ''%'+vAcronValue+'%''     ';
              vQryGroupBy := 'GROUP BY M.CODIGO,M.NOME,M.UF             ';
              {pType;pCds;pTable;pField;pKey;pFieldReturn;pTitle;
               pComm;pGroupBy;pOrder;pIdConnect:Integer}
              vDataSet := cLocate.GetSearchDataSet( 1,
                                                    NIL,
                                                    'TBMUNICIPIOS',
                                                    'NOME',
                                                    'CODIGO',
                                                    'Consulta - Municípios',
                                                    vQry,
                                                    vQryGroupBy,
                                                    vQryOrderBy,
                                                    1);
            end else
            if (vAcronValue = '') then
            begin
              vDataSet := cLocate.GetSearchDataSet( 0,
                                                    NIL,
                                                    'TBMUNICIPIOS',
                                                    'NOME',
                                                    'CODIGO',
                                                    'Consulta - Municípios',
                                                    '',
                                                    '',
                                                    vQryOrderBy,
                                                    1);
            end;
            if Assigned(vDataSet) then
            begin
              if NOT (vDataSet.IsEmpty) then
              begin
                TEdit(pEdtAcron).Text :=
                  vDataSet.FieldByName('UF').AsString;
                TEdit(pedtCounties).Text :=
                  vDataSet.FieldByName('NOME').AsString;
              end;
            end;
          end;
        end;
      finally
        vDataSet.Free;
        cLocate.Free;
      end;
    except on e : exception do
      SetiMens(0,e.Message);
    end;
end;

end.
