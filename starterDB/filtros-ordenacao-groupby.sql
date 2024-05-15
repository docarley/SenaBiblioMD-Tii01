/*Filtros, Ordenação e Agrupamento - DML*/ 
USE starterdb
SHOW TABLES 

/*get All - traz todos os clientes*/
SELECT * FROM clientes  

/*get All - traz todos os clientes mas colunas específicas */
SELECT nome, dataNascimento, cpf FROM clientes

/*filtrando linhas e colunas*/
SELECT nome,datanascimento FROM clientes
WHERE nome LIKE 'H%' or nome LIKE 'Z%' 

/*filtrando linhas*/
SELECT * FROM clientes
WHERE nome LIKE 'H%' or nome LIKE 'Z%' 

/*filtrando colunas e linhas*/
SELECT numeroConta, saldo FROM contas
WHERE saldo>=1000 AND saldo<=5000
/* <=,>=,<,>,=,<> */

/*Filtrando com colunas diferentes*/
SELECT nome,cpf, celular FROM clientes
WHERE tipoLogradouro='Avenida' AND cidade='Santos'

/*Filtrando com between */
SELECT numeroConta, saldo, limite FROM contas
WHERE saldo BETWEEN 976.88 AND 3000

/*Ordenando em ordem alfabética A-Z*/
SELECT nome, cpf, celular FROM clientes
ORDER BY nome ASC /*A-Z*/

SELECT nome, cpf, celular FROM clientes
ORDER BY nome DESC /*Z-A*/ 

SELECT nome, datanascimento FROM clientes
ORDER BY dataNascimento, nome 

SELECT nome, datanascimento FROM clientes
ORDER BY idCliente DESC

/*Ordenando e Filtrando*/
/*Trazer nome, cpf, cidade de todos os clientes que moram em Santos, 
em ordem alfabética do nome*/
SELECT nome, cpf, cidade FROM clientes
WHERE cidade='Santos'
ORDER BY nome

/*Trazer nome, cpf, cidade de todos os clientes que não moram em Santos, 
em ordem alfabética por nome*/
SELECT nome, cpf, cidade FROM clientes
WHERE cidade<>'Santos'
ORDER BY nome

/*select distinct*/
SELECT distinct cidade FROM clientes

SELECT DISTINCT idTipoConta FROM contas;
SELECT * FROM tiposconta

/*Funções de Agregação*/
/*Média Aritmética*/ /* AVG() */
/*Contar*/
SELECT COUNT(idcliente) AS 'Total de Clientes' FROM clientes
/*Somar*/
SELECT SUM(saldo) AS 'Total de Dinheiro no Banco' FROM contas
/*Conta com menos dinheiro*/
SELECT MIN(saldo) AS 'Menor saldo no Banco' FROM contas
/*Conta com mais dinheiro*/
SELECT MAX(saldo) AS 'Maior saldo no Banco' FROM contas

/*Funções de Agregação com GROUP BY*/
SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
GROUP BY cidade

SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
GROUP BY cidade
ORDER BY cidade desc

SELECT cidade,COUNT(idcliente) AS 'Clientes por Cidade' FROM clientes
WHERE cidade<>'Santos'
GROUP BY cidade
ORDER BY cidade DESC  














