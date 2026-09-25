begin;
set transaction isolation level Repeatable Read;
-- vi: Na primeira pesquisa com o Repeatable Read a transação A não conseguiu ver a transação B
select * from farmacia;
commit;
-- viii: Mesmo quando a transação B confirma a consulta a transação A NÃO consegue ver o resultado antes do commit da transação B
select * from farmacia
-- x: Agora a transção A consegue ver a transação B
rollback
