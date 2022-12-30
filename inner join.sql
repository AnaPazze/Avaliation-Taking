USE BDTaking;
GO

SELECT * FROM [Tabela(Pessoa)] 
INNER JOIN [Tabela(Endereço)]
ON [Tabela(Pessoa)].Pessoa_id = [Tabela(Endereço)].Pessoa_id

