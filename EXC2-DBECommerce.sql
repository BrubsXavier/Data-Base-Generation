-- Criando o banco de dados da atividade 02

Create DataBase db_ecommerce;

-- Selecionando o banco de dados que será usado

Use db_ecommerce;

-- Criando a tabela, o Id dos produtos se completando automaticamente

Create Table tb_produtos(
Id BigInt Auto_Increment,
Nome VarChar(170) Not Null,
Categoria VarChar(150),
Peso Decimal(8,2),
Preço Decimal(8,2),
Primary Key (Id)
);

--  Inserindo os oitos produtos pedidos no exercício. 
-- O e-commerce é tipo loja de departamento, sem foco em um departamento específico.

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Whisky", "Bebidas Alcoolicas", 1.5, 1000.0);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Action Figure", "Decoração", 0.6, 250.00);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Violão", "Instrumentos Musicais", 1.0, 800.0);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Caixa de som Ativa", "Eletroeletrônicos", 3.7, 400.0);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Notebook", "Eletroeletrônicos", 1.0, 4100.0);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Air Fryer", "Eletroeletrônicos", 2.4, 489.90);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Fone de ouvido", "Eletroeletrônicos", 0.2, 400.0);

Insert Into tb_produtos(Nome, Categoria, Peso, Preço)
Values ("Liquidificador Bivolt", "Eletroeletrônicos", 1.2, 750.0);

-- Utilizando o Select para exibir os produtos com preços maiores que 500.00 reais

Select * From tb_produtos Where Preço > 500.00;

-- Utilizando o Select para exibir os produtos menores que 500.00 reais

Select * From tb_produtos Where Preço < 500.00;

-- Atualizando o registro de um produto

UPDATE tb_produtos SET Preço = 800.0 WHERE id = 1;