USE senabiblio;

CREATE TABLE Usuarios (
idUsuario INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
senha CHAR(8) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(30) NOT NULL,
genero CHAR(1) DEFAULT 'N',
tipoLogradouro VARCHAR(10) NOT NULL,
nomeLogradouro VARCHAR(30) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
cep CHAR(8) NOT NULL,
cidade VARCHAR(30) NOT NULL,
estado CHAR(2) NOT NULL,
bairro VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idUsuario),
CONSTRAINT CK_TipoLogradouro CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela'),
CONSTRAINT CK_genero CHECK (genero='F' OR genero='M' OR genero='N')
);

SELECT * FROM usuarios

senabiblioCREATE TABLE Alunos (
idUsuario INT NOT NULL,
matricula VARCHAR(10) NOT NULL,
nivelPontualidade TINYINT(1),
CONSTRAINT fk_Aluno_Usuario FOREIGN KEY (idUsuario)
REFERENCES Usuarios(idUsuario)
);

SELECT * FROM alunos

CREATE TABLE Professores (
idUsuario INT NOT NULL,
areaAtuaçao VARCHAR(10) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
CONSTRAINT FK_Professores_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario)
);

SELECT * FROM professores

CREATE TABLE Recepcionistas (
idusuario INT NOT NULL,
CTPS VARCHAR(30),
CONSTRAINT FK_Recepcionistas_Usuarios FOREIGN KEY (idusuario)
REFERENCES Usuarios(idUsuario)
);
 
SELECT * FROM recepcionistas

CREATE TABLE ContatosTelefonicos(
idContatoTelefonico INT AUTO_INCREMENT NOT NULL,
idUsuario INT NOT NULL,
DDI VARCHAR(5) NOT NULL,
DDD CHAR(2) NOT NULL,
numero VARCHAR(9) NOT NULL,
CONSTRAINT PRIMARY KEY (idContatoTelefonico),
CONSTRAINT fk_ContatosTelefonicos_Usuarios FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario));

SELECT * FROM contatostelefonicos

CREATE TABLE Emprestimos (
idEmprestimo INT AUTO_INCREMENT NOT NULL,
idUsuario INT NOT NULL,
idRecepcionista INT NOT NULL,
dataEmprestimo DATETIME NOT null,
dataDevolucao DATETIME NOT NULL,
dataDevolucaoEfetiva DATETIME,
multa DECIMAL (6,2), 
CONSTRAINT PRIMARY KEY (idEmprestimo),
CONSTRAINT FK_Emprestimos_Recepcionistas FOREIGN KEY (idRecepcionista) REFERENCES Recepcionistas (idUsuario),
CONSTRAINT FK_Emprestimos_Usuarios FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario));

SELECT * FROM emprestimos

CREATE TABLE Autores (
idAutor INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
nacionalidade VARCHAR(30),
CONSTRAINT PRIMARY KEY (idAutor)
);

SELECT * FROM autores

CREATE TABLE Editoras (
idEditora INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(30) NOT NULL,
celular VARCHAR(14) NOT NULL,
email VARCHAR(50) NOT NULL,
responsavel VARCHAR(50) NOT NULL,
isbn CHAR(10),
CONSTRAINT PRIMARY KEY(idEditora)
);

SELECT * FROM editoras

CREATE TABLE Livros (
idLivro INT auto_increment NOT NULL,
idEditora INT NOT NULL,
nome VARCHAR(100) NOT NULL,
tomo VARCHAR(10) NOT NULL,
genero VARCHAR(15) NOT NULL,
qtdPaginas INT,
idioma VARCHAR(20) NOT NULL,
ano INT,
edicao INT,
ISBN CHAR(13),
CONSTRAINT PRIMARY KEY (idLivro),
CONSTRAINT FK_Livros_Editoras FOREIGN KEY(idEditora) REFERENCES Editoras(idEditora)
);

SELECT * FROM livros

CREATE TABLE LivrosAutores (
idLivro INT NOT NULL,
idAutor INT NOT NULL,
CONSTRAINT PRIMARY KEY (idlivro,idautor),
CONSTRAINT FK_LivrosAutores_Livros FOREIGN KEY (idLivro) REFERENCES Livros(idLivro), 
CONSTRAINT FK_LivroAutores_Autores FOREIGN KEY (idAutor) REFERENCES Autores(idAutor)
);

SELECT * FROM livrosautores

CREATE TABLE EmprestimosLivros (
idEmprestimo INT NOT NULL,
idLivro INT NOT NULL,
CONSTRAINT PRIMARY KEY(idEmprestimo, idLivro),
CONSTRAINT fk_EmprestimoLivros_Emprestimos FOREIGN KEY (idEmprestimo) REFERENCES Emprestimos (idEmprestimo),
CONSTRAINT fk_EmprestimosLivros_Livros FOREIGN KEY (idLivro) REFERENCES Livros (idLivro)
);

SELECT * FROM EmprestimosLivros

SHOW TABLES;

USE starterdb

SELECT nome,cpf,cidade FROM clientes 
WHERE cidade='Santos' /*primeiro filtro */
ORDER BY nome DESC /*depois ordenação */









