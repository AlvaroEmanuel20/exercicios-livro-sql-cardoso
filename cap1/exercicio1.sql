# Exercício 1.1
CREATE TABLE produto (
	codProduto INT AUTO_INCREMENT NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY(codProduto)
);

CREATE TABLE cliente (
	codCliente INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    credito INT DEFAULT(0),
    tipo ENUM("ativo", "inativo") DEFAULT("ativo"),
    cpf VARCHAR(11) NOT NULL,
    PRIMARY KEY(codCliente)
);

CREATE TABLE fatura (
	numFatura INT AUTO_INCREMENT NOT NULL,
    codCliente INT,
    PRIMARY KEY(numFatura),
    FOREIGN KEY(codCliente) REFERENCES cliente(codCliente)
);

CREATE TABLE itensFatura (
	numFatura INT,
    codProduto INT,
    quantidade INT NOT NULL,
    valor FLOAT(5, 2) NOT NULL,
    PRIMARY KEY(numFatura, codProduto),
    FOREIGN KEY(numFatura) REFERENCES fatura(numFatura),
    FOREIGN KEY(codProduto) REFERENCES produto(codProduto)
);

# Exercício 1.2
ALTER TABLE cliente
ADD historico ENUM("BOM", "RUIM", "NORMAL") DEFAULT("NORMAL");

ALTER TABLE cliente
MODIFY COLUMN nome VARCHAR(30) NOT NULL; 

ALTER TABLE cliente
DROP COLUMN credito;

# Exercício 1.3
ALTER TABLE fatura RENAME pedidos;

ALTER TABLE pedidos 
ADD dataPed DATE NOT NULL;