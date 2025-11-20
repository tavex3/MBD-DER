CREATE TABLE cliente (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    LimiteCredito DECIMAL(10,2),
    Status ENUM('ativo','inativo') DEFAULT 'inativo'
);

CREATE TABLE pedido (
    Numero INT PRIMARY KEY,
    DataElaboracao VARCHAR(10),
    CodigoCliente INT,
    FOREIGN KEY (CodigoCliente) REFERENCES cliente(Codigo)
);

CREATE TABLE produto (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255),
    Preco DECIMAL(10,2),
    CodCat INT,
    FOREIGN KEY (CodCat) REFERENCES categoria(Codigo)
);

CREATE TABLE pedido_produto (
    NumeroPedido INT,
    CodigoProduto INT,
    QtdItemProd INT,
    PRIMARY KEY (NumeroPedido, CodigoProduto),
    FOREIGN KEY (NumeroPedido) REFERENCES pedido(Numero),
    FOREIGN KEY (CodigoProduto) REFERENCES produto(Codigo)
);

UPDATE cliente
SET LimiteCredito = 2500.00
WHERE Codigo = 1;

UPDATE produto
SET Estoque = Estoque - 2
WHERE Codigo = 10;

DELETE FROM pedido_produto
WHERE NumeroPedido = 102 AND CodigoProduto = 10;

DELETE FROM cliente
WHERE Codigo = 3;
