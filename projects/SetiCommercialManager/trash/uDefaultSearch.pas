unit uDefaultSearch;

interface

uses uMess, SysUtils, Data.DB, MIDASLIB, Datasnap.Provider, Vcl.Controls;

    type TDefaultSearchGet = class(TProvider)
      private
        FDataSet : TDataSet;
      public
        constructor Create;
        destructor Destroy;Virtual;
        function GetDataSet : TDataSet;
        procedure SetDataSet(Const Value : TDataSet);
        function SearchGet(Ds : TDataSet;FieldReturn:string;
          FieldCaption : string; FieldType : string) : TDataSet;

      published
        property qDataSet : TDataSet read GetDataSet write SetDataSet;

    end;

implementation

{ TDefaultSearch }

uses ufrmDefaultSearch;

constructor TDefaultSearchGet.Create;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

destructor TDefaultSearchGet.Destroy;
begin
    try
      if Assigned(frmDefaultSearch) then
          frmDefaultSearch := Nil;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TDefaultSearchGet.GetDataSet: TDataSet;
begin
    try
        Result := FDataSet;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TDefaultSearchGet.SearchGet(Ds : TDataSet; FieldReturn, FieldCaption,
  FieldType: string): TDataSet;
var
    vType : Integer;
begin
    try
        try
          if (FieldType = 'STRING') then
            vType := 0;
          if (FieldType = 'INTEGER') then
            vType := 1;
          if (FieldType = 'DOUBLE') then
            vType := 2;
          if (FieldType = 'DATETIME') then
            vType := 3;
          frmDefaultSearch := TfrmDefaultSearch.Create(Self);
          //frmDefaultSearch.SetDataSetClient(Ds);
          frmDefaultSearch.qDataSetClient := Ds;
          frmDefaultSearch.ShowModal;
          if frmDefaultSearch.ModalResult = mrOk then
          begin
          
          end else
          begin
            
          end;
        finally

        end;
    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;

{        if (FieldType = 'STRING') then
          vType := 0;
        if (FieldType = 'INTEGER') then
          vType := 1;
        if (FieldType = 'DOUBLE') then
          vType := 2;
        if (FieldType = 'DATETIME') then
          vType := 3;
        try
            frmDefaultSearch := TfrmDefaultSearch.Create(Self);
            try
                with frmDefaultSearch do
                begin
                    dsSearch.DataSet := Ds;
                    dsSearch.DataSet.Open;
                    case vType of
                      0 : SearchType := TPString;
                      1 : SearchType := TPNumber;
                      2 : SearchType := TPData;
                    end;
                    qSearchField := FieldReturn;
                    pnSearch.Caption := 'Pesquisar por : '+FieldCaption;
                    frmDefaultSearch.ShowModal;
                    if (frmDefaultSearch.ModalResult = mrOk) then
                    begin
                        Result := dsSearch.DataSet;
                    end;
                end;
            finally
                frmDefaultSearch.Free;
              //FreeAndNil(frmDefaultSearch);
           end;
        except on e : exception do
            SetiMens(0,e.Message,'Error');
        end;             }
end;

procedure TDefaultSearchGet.SetDataSet(const Value: TDataSet);
begin
    try
        FDataSet := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

end.
