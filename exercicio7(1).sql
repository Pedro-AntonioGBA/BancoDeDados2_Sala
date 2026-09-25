begin;
set transaction isolation level Read committed;
-- vi: Na primeira pesquise com o read committed a transação A não conseguiu ver a transação B
select * from farmacia;
-- viii: Quando a transação B confirma a consulta, a transação A consegue ver o resultado anda da transação A ar o commit
commit;
-- x: Ele apenas confirma o nivel de isolamento
select * from farmacia
rollback



begin;
update farmacia set nome_farmacia = 'teste4' where id_farmacia = 1;
commit;
rollback
select * from farmacia
