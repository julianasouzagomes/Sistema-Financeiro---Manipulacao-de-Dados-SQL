CREATE TABLE Cliente
(
    CPF BIGINT NOT NULL,
    Nome VARCHAR(80) NOT NULL,
    Telefone VARCHAR(20),
    Email VARCHAR(120),
    CONSTRAINT pk_cliente PRIMARY KEY (CPF)
);

CREATE TABLE Pagamento
(
    idPagamento SERIAL,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    CPF BIGINT NOT NULL,
    CONSTRAINT pk_pagamento PRIMARY KEY (idPagamento),
    CONSTRAINT fk_pagamento_cliente FOREIGN KEY (CPF)
        REFERENCES Cliente(CPF)
        ON DELETE CASCADE
);