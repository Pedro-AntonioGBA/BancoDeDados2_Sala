begin;
set transaction isolation level read committed;
-- vi: Na primeira pesquisa com o read committed a transação A não conseguiu ver a transação B
select * from farmacia;
-- viii: Quando a transação B confirma a consulta a transação A consegue ver as novas linhas antes do commit
commit;
-- x: Apenas confirma a transação

begin;
INSERT INTO farmacia (CNPJ_farmacia, nome_farmacia, tel_farmacia) 
VALUES ('67890123000106', 'Drogaria Econômica', '11932109876');
commit;

----------------Como Resolver:--------------------
--Transação A:

begin;
set transaction isolation level serializable;
select * from farmacia;
commit;
