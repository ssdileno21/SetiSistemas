{Veja se eu entendi direito.
Voc� deixa a op��o do DBGrid dgMultiSelect = True e a pessoa pode selecionar v�rios registros com o Ctrl+Clique.
Feito isso voc� quer passar para vari�vel aux o RecNo + o Nr_matribula de todos os registros selecionados.
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