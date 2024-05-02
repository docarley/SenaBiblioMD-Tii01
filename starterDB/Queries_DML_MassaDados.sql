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

