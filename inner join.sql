USE BDTaking;
GO

SELECT * FROM [Tabela(Pessoa)] 
INNER JOIN [Tabela(Endere�o)]
ON [Tabela(Pessoa)].Pessoa_id = [Tabela(Endere�o)].Pessoa_id

