/* DML - Massa de Dados */
USE starterdb;

/* Inserts - Massa Dados */
INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES
	('Huguinho','1990-02-01','13999887766','22233344455','Avenida','Ana Costa','488','ap 44','Santos','11111222','SP');

INSERT INTO clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES
	('Zezinho','1995-04-04','13999887766','22233344455','Rua','Margaridas','488','ap 154','Santos','SP','1111122');	

INSERT INTO clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, complemento, cidade, cep,
	estado
) VALUES
	('Luizinho','1995-06-06','13999287766','33333344455','Avenida','9 de Julho','41','casa 2','Cubatão','SP','1111122');
	
INSERT INTO clientes  
VALUES (4,'Patinhas','1955-07-07','13999287766','99933344455','Rodovia','BR 116','km 23','não existe','Miracatu','1111122','SP');

SELECT * FROM clientes

SELECT * FROM Clientes

/*Atualizar dados*/ 
UPDATE clientes
SET cep='22222888'
WHERE idCliente=2

DELETE FROM clientes
WHERE idcliente=4


/*Restrições - Testes */
/*DEFAULT
  CHECK*/
  
  
INSERT INTO Clientes (
	nome, dataNascimento, celular, cpf,
	tipoLogradouro, nomeLogradouro,
	numero, cidade, cep,
	estado
) VALUES
	('Teste2','1990-02-01','13999887766','22233344455','Avenida','Ana Costa','488','Santos','11111222','SP');

INSERT INTO tiposconta (nomeTipoConta) VALUES ('Corrente');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Salário');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Poupança');
INSERT INTO tiposconta (nomeTipoConta) VALUES ('Especial');

SELECT * FROM tiposconta
SELECT nomeTipoConta,idTipoConta FROM tiposconta
SELECT nome, telefone from Clientes

INSERT INTO contas (numeroConta, saldo, limite, statusConta, idTipoConta)
VALUES ('77778888',1000,0,'1',1);
INSERT INTO contas (numeroConta, saldo, limite, statusConta, idTipoConta)
VALUES ('77779999',10000,500.75,'1',1);
INSERT INTO contas (numeroConta, saldo, limite, idTipoConta)
VALUES ('72729999',976.88,1500,4);
INSERT INTO contas (numeroConta, saldo, idTipoConta)
VALUES ('11116655',276.88,1);
INSERT INTO contas (numeroConta, saldo, idTipoConta)
VALUES ('10',3276.88,1);

/* where =, >, >=, <=, like, and, or */
DELETE FROM clientes
WHERE cidade='Santos' 


SELECT * FROM contas;
SELECT * FROM clientes 

/*01 cliente possui uma conta*/
INSERT INTO clientescontas (idCliente, idConta)
VALUES (1,1);
SELECT * FROM clientescontas

/*02 clientes possuem a mesma conta*/
INSERT INTO clientescontas (idCliente, idConta)
VALUES (2,6);
INSERT INTO clientescontas (idCliente, idConta)
VALUES (3,6);
SELECT * FROM clientescontas

/*01 cliente possui duas contas */
INSERT INTO clientescontas (idCliente, idConta)
VALUES (4,3);
INSERT INTO clientescontas (idCliente, idConta)
VALUES (4,4);
SELECT * FROM clientescontas

/*Falha por duplicar a chave primária composta*/
INSERT INTO clientescontas (idcliente,idconta)
VALUES (3,6);

/*Busca com filtros*/

SELECT * FROM Clientes

SELECT nome, cidade FROM Clientes

SELECT nome, cidade FROM Clientes
WHERE cidade='Santos'

SELECT nome, cep FROM clientes
WHERE nome LIKE 'L%O'

SELECT nome AS 'nome do cliente', cidade FROM clientes
WHERE cidade <> 'Santos' 

DELETE FROM contas 
WHERE idConta=6

SELECT * FROM clientesContas

SELECT NOW() AS 'Data Atual'



