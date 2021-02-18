{Veja se eu entendi direito.
Você deixa a opção do DBGrid dgMultiSelect = True e a pessoa pode selecionar vários registros com o Ctrl+Clique.
Feito isso você quer passar para variável aux o RecNo + o Nr_matribula de todos os registros selecionados.
Se for isso, ficaria assim:}

Var
  bmPosicao : TBookmark;
  aux : String;
begin
  aux := '';
  bmPosicao := dsListaFila.DataSet.GetBookmark;
  dsListaFila.DataSet.DisableControls;
  dsListaFila.DataSet.First;
  while not dsListaFila.DataSet.Eof do
  begin
    if grdListaFila.SelectedRows.CurrentRowSelected then
    begin
      aux := aux + IntToStr(dsListaFila.DataSet.RecNo) + ' - ' +
             dsListaFila.DataSet.FieldByName('Nr_Matricula').AsString + #13;
    end;
    dsListaFila.DataSet.Next;
  end;
  try
    dsListaFila.DataSet.GotoBookmark(bmPosicao);
  except
    dsListaFila.DataSet.First;
  end;
  dsListaFila.DataSet.EnableControls;
end;

{FILTROS CLIENTDATASET:
	http://www.devmedia.com.br/trabalhando-a-propriedade-filter-do-clientdataset-parte-1/13571
}