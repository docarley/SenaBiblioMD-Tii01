SELECT nome FROM clientes
WHERE idCliente IN 
(SELECT idcliente FROM clientescontas)


SELECT * FROM contas
SELECT * FROM clientescontas
SELECT * FROM clientes
WHERE DATANascimento BETWEEN '1992-01-01' and '1997-01-01'

 