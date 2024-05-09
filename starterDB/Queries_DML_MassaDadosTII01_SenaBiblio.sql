/*Inserindo 03 editoras*/
ALTER TABLE editoras
DROP COLUMN isbn;

INSERT INTO editoras (nome, celular, email, responsavel)
VALUES ('Atlas','11988776655','contato@atlas.com.br','Frederico Silva');
INSERT INTO editoras (nome, celular, email, responsavel)
VALUES ('Érica','11988776644','contato@erica.com.br','Martha Rocha');
INSERT INTO editoras (nome, celular, email, responsavel)
VALUES ('Person','21988776633','contato@person.com.br','Ricardo Maia');

SELECT * FROM editoras

/*Inserindo Autores*/
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Roberto', 'Portugues');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Ana', 'Brasileira');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Flavia', 'Inglesa');  
insert INTO Autores (nome, nacionalidade)  
VALUES ('Antonio', 'Russo');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Everton', 'Angolano');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Rita', 'Francesa');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Selena', 'Brasileira');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Jurandi', 'Brasileiro');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Enrique', 'Brasileiro');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Antonia', 'Portuguesa');  
INSERT INTO Autores (nome, nacionalidade)  
VALUES ('Nani', 'Portuguesa'); 

SELECT * FROM autores

/*Inserindo Livros*/

INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('1','Dom Quixote','3','Romance','1033','Espanhol','1605','5ª','1234567890');  

INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('2','Um conto de duas cidades','2','Romance','850','Portugues','1995','2ª','1234567890'); 

INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('3','O Senhor dos Anéis','4','Fantasia','975','Ingles','2000','3ª','1234567777'); 

INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('3','O Pequeno Principe ','1','Romance','350','Alemão','1982','2ª','1234567888'); 

INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('2','Harry Potter e a Pedra Filosofal','3','Fantasia','760','Inglês','2012','1ª','1234567999'); 
 
INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('1','E não sobrou Nenhum','3','Suspense','320','Francês','2020','2ª','1234567000'); 
  
INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('2','O Sonho da Câmara Vermelha','2','Drama','1320','Polonês','1995','2ª','1234567111'); 
  
INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('2','Ela, A Feiticeira','2','Fantasia','832','Inglês','1994','4ª','1234567222'); 
  
INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('1','O leão, a Feiticeira e o Guarda Roupa','5','Suspense','1134','Argentino','1974','4ª','1234567333'); 
  
INSERT INTO Livros (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, isbn)  
VALUES ('3','O Código da Vinci','4','Drama','1438','Ingles','1974','4ª','1234567444'); 

SELECT * FROM livros

/*Inserindo Usuários*/

ALTER TABLE `usuarios` 
CHANGE COLUMN `email` `email` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci' AFTER `cpf`; 
  

INSERT INTO usuarios ( 
	nome, cpf, email, genero, nomeLogradouro, tipoLogradouro, 
	numero, cidade, cep, estado, bairro, 
	senha 
)  

VALUES( 

		'Alice',  

		'20292504225',  

		'alice.isabel.dacunha@freitasprior.com.br', 

		'F',  

		'Armínio de Souza Nunes', 

		'Rua',  

		'153',  

		'Caxias do Sul',  

		'95059832', 

		'RS',  

		'São Cristóvão',  

		'11111111111' 

); 

  

INSERT INTO usuarios ( 

		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro, 

		numero, cidade, cep, estado, bairro, 

		senha 

)  

VALUES( 

		'Samuel', 

		'19396615528',  

		'samuel_ricardo_farias@atiara.com.br', 

		'M',  

		'João Paulo I',  

		'Rua', 

		'391',  

		'Boa Vista',  

		'69305180',  

		'RR', 

		'São Francisco',  

		'22222222222' 

); 

  

INSERT INTO usuarios ( 

		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro, 

		numero, cidade, cep, estado, bairro, 

		senha 

)  

VALUES( 

		'Laura',  

		'70759296073',  

		'laura_rayssa_daluz@ornatopresentes.com.br', 

		'F',  

		'Soldado-Polícia Militar Jacinto José de Santana da Silva', 

		'Rua',  

		'663',  

		'Boa Vista',  

		'69313572', 

		'RR',  

		'Caranã',  

		'33333333333' 

); 

	 

	 

INSERT INTO usuarios ( 

		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro, 

		numero, cidade, cep, estado, bairro, 

		senha 

)  

VALUES( 

		'Paulo',  

		'35157051808',  

		'paulo_alves@valeguinchos.com.br', 

		'M',  

		'Lucerna',  

		'Rua',  

		'654', 

		'Parnamirim',  

		'59141310',  

		'RN',  

		'Rosa dos Ventos', 

		'44444444444' 

); 

	 

	 

INSERT INTO usuarios ( 

		nome, cpf, email, genero, nomeLogradouro, tipoLogradouro, 

		numero, cidade, cep, estado, bairro, senha 

)  

VALUES( 

		'Lorena',  

		'98749543709',  

		'lorena_moura@technew.ind.br', 

		'F',  

		'Pelotas',  

		'Avenida', 

		'847',  

		'Serra',  

		'29166063',  

		'ES', 

		'Barcelona', 

		'55555555555' 

); 

  

INSERT INTO recepcionistas (idUsuario,ctps)  

VALUES('1','3894793184'); 

  

INSERT INTO recepcionistas (idUsuario,ctps)  

VALUES('2','2396409101'); 

  

INSERT INTO recepcionistas (idUsuario,ctps)  

VALUES('3','9827510485'); 

  

INSERT INTO recepcionistas (idUsuario,ctps)  

VALUES('4','6154847379'); 

  

INSERT INTO recepcionistas (idUsuario,ctps)  

VALUES('5','947556817'); 

SELECT * FROM recepcionistas

/*Inserindo Professores */

INSERT INTO Usuarios ( 

idUsuario, nome, senha, cpf, email, genero, tipoLogradouro, nomeLogradouro, estado, numero, complemento, cidade, cep, bairro) 

  

VALUES ( 11, 'Nickolas', '12345678','68043518009' ,'nick@gmail.com', 'M', 'Avenida', 'SANTO ANTONIO', 'SP', '210', '24', 'Praia Grande', '60170001', 'Aldeota'); 

  

INSERT INTO Usuarios ( 

idUsuario, nome, senha, cpf, email, genero, tipoLogradouro, nomeLogradouro, estado, numero, complemento, cidade, cep, bairro) 

  

VALUES ( 12, 'Melissa', '54315432','31220382000' ,'mel@gmail.com', 'F', 'Praça', 'RIO BRANCO', 'RJ', '120', '40', 'Rio de Janeiro', '20040002', 'Centro'); 

  

INSERT INTO Usuarios ( 

idUsuario, nome, senha, cpf, email,  genero, tipoLogradouro, nomeLogradouro, estado, numero, complemento, cidade, cep, bairro) 

  

VALUES ( 13, 'Jorge', 'jl984312','42244688089' ,'jorge@gmail.com', 'M', 'Rodovia', 'CRISTIANO OLSEN', 'SP', '180', '10', 'ARAÇATUBA', '16015244', 'Jardim Sumaré'); 

  

INSERT INTO Usuarios ( 

idUsuario, nome, senha, cpf, email, genero, tipoLogradouro, nomeLogradouro, estado, numero, complemento, cidade, cep, bairro) 

  

VALUES ( 14, 'Giovanna', '45645215','72018835009' ,'gigi@gmail.com', 'F', 'Avenida', 'CARLOS AUGUSTO CORNEL', 'PR', '355', '2', 'Curitiba', '80520560', 'Bom Retiro'); 

  

INSERT INTO Usuarios ( 

idUsuario, nome, senha, cpf, email, genero, tipoLogradouro, nomeLogradouro, estado, numero, complemento, cidade, cep, bairro) 

  

VALUES ( 15, 'Felipe', 'F3L1P341','16643055059' ,'felipe@gmail.com', 'M', 'Rua', 'DA IMPRENSA', 'MS', '119', '10', 'Campo Grande', '79002290', 'Monte Castelo'); 

SELECT * FROM usuarios
  
 

/*Inserindo 10 Contatos Telefonicos */
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
values (1, '+55', '13', '999877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
values (2, '+55', '21', '988877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
values (3, '+55', '51', '977877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
values (4, '+55', '92', '966877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
values (5, '+55', '66', '955877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
VALUES (11, '+55', '74', '944877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
VALUES (12, '+55', '87', '933877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
VALUES (13, '+55', '62', '922877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
VALUES (14, '+55', '11', '991877621'); 
insert into contatosTelefonicos (idUsuario, ddi, ddd, numero) 
VALUES (15, '+55', '11', '992877621'); 

SELECT * FROM contatosTelefonicos

/*Inserindo Alunos*/

INSERT INTO Usuarios (nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero, cidade,estado,cep,bairro)  
VALUES('Pedro','33224455','00000000001','contato@Pedro.com.br','masculino','Avenida','Engenheiro Manuel ferramenta junior','453','santos','SP','11086400','Areia Banca'); 
  
INSERT INTO Usuarios (nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero, cidade,estado,cep,bairro)  
VALUES ('Lucas','39224456','00000000002','contato@Lucas.com.br','masculino','Avenida','Brasil','1002','Santos','SP','01430000','Jardim América'); 
  
INSERT INTO Usuarios (nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero, cidade,estado,cep,bairro)  
VALUES ('Vinicio','37224457','00000000003','contato@Vinicio.com.br','masculino','Avenida','Francisco Glicério','675','Santos','SP','11065401','Gonzaga'); 
  
INSERT INTO Usuarios (nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero, complemento,cidade,estado,cep,bairro)  
VALUES ('Dell','35224458','00000000004','contato@Dell.com.br','masculino','Rua','Alameda Ari Barroso','54','ap 65','Sao Vicente','SP','11320400','Ilha Porchat'); 
usuariosusuarios  
INSERT INTO Usuarios (nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero, complemento,cidade,estado,cep,bairro) 
VALUES ('Chico','31224459','00000000005','contato@Chico.com.br','masculino','Rua','Alameda Adriano Neiva da Mota e Silva','89','ap 101','Santos','SP','11065690','José Menino'); 

SELECT * FROM usuarios

/*Comments*/