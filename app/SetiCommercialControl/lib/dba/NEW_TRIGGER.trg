CREATE OR ALTER trigger tbvendamanual_ins_itens for tbvendamanual
active before insert position 0
AS
begin
    insert tbvendamanual_itens
        SELECT   FIRST 16
            GEN_ID(GEN_ID_VENDAMANUAL_ITENS,1)
            ,NEW.id
            ,P.id
            ,NULL
            ,NULL
            ,NULL
            ,NULL
            ,NULL
            ,NULL
            ,NULL
    FROM tbcadprodutos P
    WHERE P.status = 'S'
    ORDER BY P.id
end
