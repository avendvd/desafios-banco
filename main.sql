CREATE TABLE clientes(
    ID_clientes INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(100),
    Endereco VARCHAR(100)
    );

CREATE TABLE pedidos(
    ID_pedido INT AUTO_INCREMENT PRIMARY KEY,
    clienteid INT,
    FOREIGN KEY (clienteid) REFERENCES clientes (ID_clientes),
    datadopedido DATE
    );

CREATE TABLE pizzas(
    ID_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100),
    preco_pizza DECIMAL(10, 2)
    );
CREATE TABLE ingredientes(
    id_ingrediente int auto_increment primary key,
    nome_ingrediente VARCHAR(100)
);
INSERT INTO ingredientes (nome_ingrediente) values ('Queijo'),
    ('Frango'),
    ('Presunto'),
    ('Manjericão'),
    ('Azeitonas'),
    ('Cebola'),
    ('Pimentão'),
    ('Bacon'),
    ('Champignon'),
    ('Tomate'),
    ('Pepperoni');

CREATE TABLE pizza_ingredientes(
    pizzaid INT,
    ingredienteid1 INT,
    ingredienteid2 INT,
    FOREIGN KEY (pizzaid) REFERENCES pizzas (ID_pizza),
    FOREIGN KEY (ingredienteid1) REFERENCES ingredientes (id_ingrediente),
    FOREIGN KEY (ingredienteid2) REFERENCES ingredientes (id_ingrediente)
    );

insert into clientes (Nome, Endereco, Telefone) VALUES ('Deyvid Oliveira','Rua Raposo Tavares, 308','81985461063');
INSERT INTO clientes (Nome, Endereco, Telefone) VALUES ('Eva Silva', 'Toto, 27', '81986426153');
INSERT INTO clientes (Nome, Endereco, Telefone) VALUES ('Isadora Francisca', 'Boa Viagem, 27', '81988878731');
INSERT INTO clientes (Nome, Endereco, Telefone) VALUES ('Eduardo Bezerra', 'Pina, 327', '81985766606');
INSERT INTO clientes (Nome, Endereco, Telefone) VALUES ('Stella Carvalho', 'Cabuga, 45', '81983554213');
INSERT INTO clientes (Nome, Endereco, Telefone) VALUES ('Rafael Andrade', 'Boa viagem, 12', '81996805603');


insert into pizzas (nome_pizza,preco_pizza) values ('Pizza de Cebola com Azeitonas',29.90),
('Pizza de Frango com Queijo', 39.90),
('Pizza de Presunto com Tomate', 49.90),
('Pizza de Calabresa', 59.90),
('Pizza de Frango com Catupiry', 30.90),
('Pizza Quatro Queijos ', 36.90);

insert into pizza_ingredientes (pizzaid,ingredienteid1,ingredienteid2) values (1, 6, 9),(2, 10, 4),(3, 1, 8),(1, 1, 10),(2, 2, 6),(3, 1, 8),(4, 11, 5);

insert into pedidos (clienteid,datadopedido) values (1,'2024-04-21');
insert into pedidos (clienteid,datadopedido) values (2,'2024-04-22');
insert into pedidos (clienteid,datadopedido) values (3,'2024-04-23');
insert into pedidos (clienteid,datadopedido) values (3,'2024-04-24');
insert into pedidos (clienteid,datadopedido) values (3,'2024-04-25');
insert into pedidos (clienteid,datadopedido) values (4,'2024-04-26');
insert into pedidos (clienteid,datadopedido) values (5,'2024-04-26');

select * from pizzas;

select * from pizzas where preco_pizza < 30;

select * from pedidos;

select * from pedidos where datadopedido > '2024-04-25';

select * from pedidos where clienteid = '2';

select * from pizzas where nome_pizza = 'Pizza de Calabresa';

select * from clientes where telefone = '81985461063';

select * from ingredientes where id_ingrediente = 3;

select * from pizzas where preco_pizza > 50;

-- Retornar todos os clientes que fizeram pedidos na data '2023-04-26'

select c.Nome, c.Endereco, c.Telefone from clientes c inner join pedidos p on c.ID_clientes = p.clienteid where p.datadopedido = '2023-04-26';