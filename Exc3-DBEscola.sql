-- Criando o banco de dados da atividade 03

Create DataBase db_escola;

-- Selecionando o banco de dados que será usado

Use db_escola;

-- Criando a tabela, o Id se completando automaticamente

Create Table tb_alunes(
Id BigInt Auto_Increment,
Nome VarChar(170) Not Null,
Série VarChar(150),
Período VarChar(50),
Nota Decimal(4,2),
Primary Key (Id)
);

--  Inserindo os oitos alunos pedidos no exercício

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Alan de Jesus", "Segundo ano", "Integral", 8.73);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("William Borges", "Primeiro ano", "Vespertino", 5.41);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Camila Nobre", "Terceiro ano", "Integral", 9.14);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Tchatiwa Edvania", "Nono ano", "Matutino", 7.50);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Arthur Spadim", "Terceiro ano", "Integral", 7.32);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Gustavo Gentil", "Primeiro ano", "Matutino", 5.36);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Ayana Hoffer", "Segundo ano", "Vespertino", 9.98);

Insert Into tb_alunes(Nome, Série, Período, Nota)
Values ("Mirta Ballesteros", "Segundo ano", "Matutino", 10.00);

-- Utilizando o Select para exibir as notas maiores que 7.00

Select * From tb_alunes Where Nota > 7.00;

-- Utilizando o Select para exibir as notas menores que 7.00

Select * From tb_alunes Where Nota < 7.00;

-- Atualizando o registro de um alune

UPDATE tb_alunes SET Período = "Vespertino" WHERE id = 8;