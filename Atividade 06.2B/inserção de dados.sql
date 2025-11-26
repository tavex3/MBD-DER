-- Tabela categoria
INSERT INTO categoria (Codigo, Nome) VALUES
(1, 'Eletrônicos'),
(2, 'Roupas'),
(3, 'Livros');

-- Tabela cliente
INSERT INTO cliente (Codigo, Nome, Endereco, Telefone, LimiteCredito, Status) VALUES
(1, 'Gustavo Luiz', 'Rua Central, 100', '11999999999', 1500.00, 'ativo'),
(2, 'William Mattiuzzo', 'Av Paulista, 500', '11988888888', 3000.00, 'ativo'),
(3, 'Mattias Mattiuzzo', 'Rua das Flores, 22', '11977777777', 2000.00, 'inativo');

-- Tabela pedido
INSERT INTO pedido (Numero, DataElaboracao, CodigoCliente) VALUES
(101, '2025-01-10', 1),
(102, '2025-01-11', 2),
(103, '2025-01-12', 1);

-- Tabela produto
INSERT INTO produto (Codigo, Nome, Preco, CodCat) VALUES
(10, 'Notebook Gamer', 5500.00, 1),
(11, 'Camiseta Azul', 50.00, 2),
(12, 'Livro de SQL', 89.90, 3);

-- Tabela pedido_produto
INSERT INTO pedido_produto (NumeroPedido, CodigoProduto, QtdItemProd) VALUES
(101, 10, 1),
(101, 11, 2),
(102, 12, 1),
(103, 11, 3),
(103, 10, 1);