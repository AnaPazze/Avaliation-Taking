CREATE TABLE tabela_pessoa(
pessoa_id INT NOT NULL IDENTITY,
Nome Varchar(200) NOT NULL,
CPF Varchar(25) NOT NULL,
Idade Date,
Sexo Char(1),
PRIMARY KEY(pessoa_id)
);

SELECT * FROM tabela_pessoa

CREATE TABLE tabela_endereco(
endereco_id INT NOT NULL IDENTItY,
Tipo Varchar(10) NOT NULL,
Logradouro Varchar(250) NOT NULL,
Numero Varchar(10) NOT NULL,
Complemento Varchar(100),
Cep Numeric NOT NULL,
Cidade Varchar(250) NOT NULL,
Estado Char(2) NOT NULL,
pessoa_id INT,
PRIMARY KEY(endereco_id),
FOREIGN KEY(pessoa_id) REFERENCES tabela_pessoa(pessoa_id)
);

SELECT * FROM tabela_endereco

SELECT tabela_pessoa.pessoa_id, 
tabela_pessoa.Nome,
tabela_pessoa.CPF,
tabela_pessoa.Idade,
tabela_pessoa.Sexo,
tabela_endereco.Tipo,
tabela_endereco.Logradouro,
tabela_endereco.Numero,
tabela_endereco.Complemento,
tabela_endereco.Cep,
tabela_endereco.Cidade,
tabela_endereco.Estado
FROM
tabela_pessoa INNER JOIN tabela_endereco
ON tabela_pessoa.pessoa_id = tabela_endereco.pessoa_id;



