-- Criando o banco de dados da atividade 01

Create DataBase db_rhempresa;

-- Selecionando o banco de dados que será usado
Use db_rhempresa;

-- Criando a tabela, deixando o cpf como chave primária 

Create Table tb_funcionários(
CPF VarChar(14),
Nome VarChar(170) Not Null,
Cargo VarChar(150),
Data_Admissão Date,
Salário Decimal(8,2),
Primary Key (CPF)
);

--  Inserindo os cinco funcionários pedidos no exercício

Insert Into tb_funcionários(CPF, Nome, Cargo, Data_Admissão, Salário)
Values ("000.000.000-00", "Alan de Jesus", "Segurança", "2020-10-20", 2500.00);

Insert Into tb_funcionários(CPF, Nome, Cargo, Data_Admissão, Salário)
Values ("111.111.111-11", "William Borges", "Secretário", "2021-09-15", 1950.00);

Insert Into tb_funcionários(CPF, Nome, Cargo, Data_Admissão, Salário)
Values ("222.222.222-22", "Camila Nobre", "Desenvolvedora", "2020-01-08", 6000.00);

Insert Into tb_funcionários(CPF, Nome, Cargo, Data_Admissão, Salário)
Values ("333.333.333-33", "Tchatiwa Edvania", "Estágiária", "2022-03-08", 1300.00);

Insert Into tb_funcionários(CPF, Nome, Cargo, Data_Admissão, Salário)
Values ("444.444.444-44", "Gustavo Gentil", "Gerente", "2020-01-08", 8000.00);

-- Utilizando o Select para exibir os sálarios maiores que 2000 reais

Select * From tb_funcionários Where Salário > 2000.00;

-- Utilizando o Select para exibir os sálarios menores que 2000 reais

Select * From tb_funcionários Where Salário < 2000.00;

-- Atualizando o registro de um funcionário

UPDATE tb_funcionários SET Cargo = "Chefe de segurança", Salário = 5464.00 WHERE id = 1;



