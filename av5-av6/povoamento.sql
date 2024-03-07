ALTER SESSION
SET
    NLS_DATE_FORMAT = 'YYYY-MM-DD';

-- Obra
INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora, lista_autores, lista_subgeneros, lista_copias)
VALUES
    ('9783161484100', 'Dom Casmurro', 'Livro', 'Classico', 1899, 400, 'Companhia de Letras', tp_autores(tp_autor('Machado de Assis')), tp_subgeneros(tp_subgenero('Romance')), tp_copias(tp_copia(2, 'Disponível'), tp_copia(5, 'Indisponível'), tp_copia(10, 'Disponível')));

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora, lista_autores, lista_subgeneros, lista_copias)
VALUES
    ('1233161485610', 'Percy Jackson e o Ladrão de Raios', 'Livro', 'Fantasia', 2004, 180, 'Penguin Random House', tp_autores(tp_autor('Rick Riordan')), tp_subgeneros(tp_subgenero('Infanto-juvenil')), tp_copias(tp_copia(4, 'Disponível'), tp_copia(2, 'Indisponível'), tp_copia(1, 'Disponível')));

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora, lista_autores, lista_subgeneros, lista_copias)
VALUES
    ('2435161484111', 'Capricho', 'Revista', 'Infanto-juvenil', 2013, 40, 'Capricho', tp_autores(tp_autor('Bianca Capricho'), tp_autor('Camila Capricho')), tp_subgeneros(tp_subgenero('Romance')), tp_copias(tp_copia(4, 'Disponível'), tp_copia(2, 'Indisponível'), tp_copia(1, 'Disponível')));

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora, lista_autores, lista_subgeneros, lista_copias)
VALUES
    ('2452261118100', 'SuperInteressante', 'Revista', 'Curiosidades', 2011, 70, 'Abril', tp_autores(tp_autor('Pessoa Cientista')), tp_subgeneros(tp_subgenero('Ciência')), tp_copias(tp_copia(4, 'Disponível'), tp_copia(2, 'Indisponível'), tp_copia(1, 'Disponível')));

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora, lista_autores, lista_subgeneros, lista_copias)
VALUES
    ('8471118484671', 'Homem-Aranha #1', 'Comic', 'Infanto-juvenil', 1967, 40, 'Marvel', tp_autores(tp_autor('Stan Lee')), tp_subgeneros(tp_subgenero('Aventura')), tp_copias(tp_copia(4, 'Disponível'), tp_copia(2, 'Indisponível'), tp_copia(1, 'Disponível')));

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora, lista_autores, lista_subgeneros, lista_copias)
VALUES
    ('3452261118311', 'Artifícios das Trevas', 'Livro', 'Fantasia', 2016, 70, 'Galera', tp_autores(tp_autor('Cassandra Clare')), tp_subgeneros(tp_subgenero('Romance'), tp_subgenero('Jovem Adulto')), tp_copias(tp_copia(4, 'Disponível'), tp_copia(2, 'Indisponível'), tp_copia(1, 'Disponível')));
    
-- Moradia
INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('01234567', 'Avenida Central', 'Bela Vista', 'Metropolis', 'SP');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('54321098', 'Rua dos Girassóis', 'Jardim das Flores', 'Cidade do Sol', 'SP');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('45678901', 'Rua das Palmeiras', 'Centro Histórico', 'Vila Velha', 'ES');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('98765432', 'Avenida das Águias', 'Lagoa Azul', 'Praia Grande', 'RJ');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('34567890', 'Travessa das Orquídeas', 'Jardim Primavera', 'Porto Alegre', 'RS');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('21098765', 'Rua das Acácias', 'Vila Aurora', 'Salvador', 'BA');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('87654321', 'Avenida dos Flamboyants', 'Jardim Botânico', 'Brasília', 'DF');

INSERT INTO
    tb_moradia (cep, rua, bairro, cidade, estado)
VALUES
    ('78901234', 'Rua das Violetas', 'Floresta Encantada', 'Manaus', 'AM');

-- Dados bancários
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00000876224123688', '01001', '29717221');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00001234561234567', '02002', '12345678');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00002468012468012', '03003', '98765432');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00003698723698723', '04004', '13579246');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00004000014000014', '05005', '86420973');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00005432165432165', '06006', '74125896');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00006876546876546', '07007', '36985214');
INSERT INTO
    tb_dados_bancarios (conta, codigo_do_banco, agencia)
VALUES
    ('00007293817293817', '08008', '25814736');

-- Cartões
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('1234598765432456', '123', '12/2025');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('6543210987654321', '456', '06/2023');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('9876543210987654', '789', '09/2024');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('2345987654324567', '234', '03/2022');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('7654321098765432', '567', '08/2026');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('3210987654321098', '890', '05/2023');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('5432109876543210', '123', '11/2025');
INSERT INTO
    tb_cartao (numero_do_cartao, cvv, validade) 
VALUES 
    ('8901234598765432', '456', '02/2024');

-- Funcionario
INSERT INTO tb_funcionario VALUES (
    tp_funcionario(
        '987.654.321-00',
        'João Silva',
        'joao@example.com',
        'M',
        DATE '1999-01-15',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '01234567'),
    	1,
    	tp_telefones(tp_telefone('5555555555'), tp_telefone('6666666666')),
        '98765432102',
        (SELECT REF(x) FROM tb_dados_bancarios x WHERE x.conta = '00001234561234567'),
        5200.80,
        NULL
    )
);

INSERT INTO tb_funcionario VALUES (
    tp_funcionario(
        '321.098.765-67',
        'Maria Silva',
        'maria@example.com',
        'F',
        DATE '1995-05-15',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '54321098'),
    	10,
    	tp_telefones(tp_telefone('5559555555'), tp_telefone('1666666666')),
        '98765432132',
        (SELECT REF(x) FROM tb_dados_bancarios x WHERE x.conta = '00002468012468012'),
        4200.80,
        (SELECT REF(x) FROM tb_funcionario x WHERE x.cpf = '987.654.321-00')
    )
);

INSERT INTO tb_funcionario VALUES (
    tp_funcionario(
        '123.456.789-09',
        'Ana Clarisse',
        'anac@example.com',
        'F',
        DATE '2000-05-20',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '45678901'),
    	24,
    	tp_telefones(tp_telefone('5529555555'), tp_telefone('1666666696')),
        '12345678901',
        (SELECT REF(x) FROM tb_dados_bancarios x WHERE x.conta = '00000876224123688'),
        1290.80,
        (SELECT REF(x) FROM tb_funcionario x WHERE x.cpf = '987.654.321-00')
    )
);

INSERT INTO tb_funcionario VALUES (
    tp_funcionario(
        '234.567.890-12',
        'Mário Sena',
        'mario@example.com',
        'M',
        DATE '2002-12-20',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '45678901'),
    	30,
    	tp_telefones(tp_telefone('5529555955'), tp_telefone('1696666696')),
        '45678901203',
        (SELECT REF(x) FROM tb_dados_bancarios x WHERE x.conta = '00004000014000014'),
        1984.80,
        NULL
    )
);

-- Cliente
INSERT INTO tb_cliente VALUES (
    tp_cliente(
        '111.222.333-44',
        'Mário Silva',
        'marios@example.com',
        'M',
        DATE '2002-12-20',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '45678901'),
    	45,
    	tp_telefones(tp_telefone('5529555905'), tp_telefone('1696660696')),
        2,
        tp_nt_cartoes(tp_cartao('1234598765432456', '123', '12/2025'))
    )
);

INSERT INTO tb_cliente VALUES (
    tp_cliente(
        '222.333.444-55',
        'Isabela Flores',
        'isabela@example.com',
        'F',
        DATE '1980-12-02',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '54321098'),
    	12,
    	tp_telefones(tp_telefone('5529551905'), tp_telefone('1696160696')),
        3,
        tp_nt_cartoes(tp_cartao('6543210987654321', '456', '06/2023'))
    )
);

INSERT INTO tb_cliente VALUES (
    tp_cliente(
        '999.888.777-66',
        'Gabriel Flores',
        'gabriel@example.com',
        'M',
        DATE '1988-11-01',
        (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '54321098'),
    	2,
    	tp_telefones(tp_telefone('5529551915'), tp_telefone('1696160616')),
        10,
        tp_nt_cartoes(tp_cartao('2345987654324567', '234', '03/2022'))
    )
);

-- Livro Emprestado
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado((SELECT REF(x) FROM tb_cliente x WHERE x.cpf = '999.888.777-66'), 4)
);

INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado((SELECT REF(x) FROM tb_cliente x WHERE x.cpf = '222.333.444-55'), 8)
);

INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado((SELECT REF(x) FROM tb_cliente x WHERE x.cpf = '111.222.333-44'), 2)
);

-- Empresta

INSERT INTO tb_empresta VALUES (
    tp_empresta(
        (SELECT REF(x)
         FROM tb_obra x, TABLE(x.lista_copias) c
         WHERE x.isbn = '9783161484100' AND c.status_de_disponibilidade = 'Disponível' AND c.numero_da_copia = 2),
        CURRENT_TIMESTAMP,
        0,
        (SELECT REF(x) FROM tb_cliente x WHERE x.cpf = '111.222.333-44'),
        (SELECT REF(x) FROM tb_funcionario x WHERE x.cpf = '123.456.789-09'),
        NULL
    )
);
