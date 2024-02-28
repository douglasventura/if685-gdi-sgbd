ALTER SESSION
SET
    NLS_DATE_FORMAT = 'YYYY-MM-DD';

-- Obra
INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('9783161484100', 'Dom Casmurro', 'Livro', 'Classico', 1899, 400, 'Companhia de Letras');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('1233161485610', 'Percy Jackson e o Ladrão de Raios', 'Livro', 'Fantasia', 2004, 180, 'Penguin Random House');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('2435161484111', 'Capricho', 'Revista', 'Infanto-juvenil', 2013, 40, 'Capricho');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('2452261118100', 'SuperInteressante', 'Revista', 'Curiosidades', 2011, 70, 'Abril');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('8471118484671', 'Homem-Aranha #1', 'Comic', 'Infanto-juvenil', 1967, 40, 'Marvel');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('3452261118311', 'Artifícios das Trevas', 'Livro', 'Fantasia', 2016, 70, 'Galera');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('983515482112', 'Guerra e Paz', 'Livro', 'Clássico', 1848, 600, 'CIA das Letras');

INSERT INTO
    tb_obra (isbn, nome, tipo, genero, ano_de_publicacao, numero_de_paginas, editora)
VALUES
    ('7452261118900', 'Naruto', 'Manga', 'Infanto-juvenil', 2009, 70, 'Abril');

-- Copia
INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('9783161484100', 1, 'Disponível');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('9783161484100', 2, 'Indisponivel');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('2435161484111', 1, 'Indisponível');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('7452261118900', 1, 'Disponível');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('7452261118900', 2, 'Disponível');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('3452261118311', 3, 'Disponível');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('983515482112', 1, 'Indisponível');

INSERT INTO
    tb_copia (isbn, numero_da_copia, status_de_disponibilidade)
VALUES
    ('7452261118900', 4, 'Indisponível');

-- Autor
INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('9783161484100', 'Machado de Assis');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('1233161485610', 'Rick Riordan');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('2435161484111', 'Camilla Capricho');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('2435161484111', 'Beatriz Capricho');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('8471118484671', 'Stan Lee');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('3452261118311', 'Cassandra Clare');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('983515482112', 'Leo Tolstoy');

INSERT INTO
    tb_autor (isbn, nome_autor)
VALUES
    ('7452261118900', 'Masashi Kishimoto');

-- Subgenero
INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('9783161484100', 'Romance');

INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('1233161485610', 'Infanto-juvenil');

INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('1233161485610', 'Mitologia Grega');

INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('8471118484671', 'Fantasia');

INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('3452261118311', 'Romance');

INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('983515482112', 'Romance');

INSERT INTO
    tb_subgenero (isbn, tipo_subgenero)
VALUES
    ('7452261118900', 'Infanto-juvenil');

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

-- Funcionario
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('987.654.321-00', 'Mariana Costa', 'mariana.costa@email.com', 'F', '1987-04-03', '01234567', 12, tp_telefones(tp_telefone('987.654.321-00', '81999991234'),tp_telefone('987.654.321-00', '83978871243')), '98765432102',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00001234561234567'), 
        4200.80, NULL)
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('321.098.765-67', 'Roberto Viga', 'rv@email.com', 'M', '1989-06-12', '54321098', 34, tp_telefones(tp_telefone('321.098.765-67', '81999991234'),tp_telefone('321.098.765-67', '83978871243')), '34567890108',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00007293817293817'), 
        1320.00, NULL)
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('123.456.789-09', 'Maria Silva', 'ms@email.com', 'F', '1990-08-23', '45678901', 56, tp_telefones(tp_telefone('123.456.789-09', '81999991234'),tp_telefone('123.456.789-09', '83978871243')), '12345678901',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00000876224123688'), 
        1000.00, 
        (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '987.654.321-00'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('234.567.890-12', 'João Santos', 'js@email.com', 'M', '1992-10-15', '98765432', 78, tp_telefones(tp_telefone('234.567.890-12', '81999991234'),tp_telefone('234.567.890-12', '83978871243')), '45678901203',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00002468012468012'), 
        1400.22, 
        (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '987.654.321-00'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('345.678.901-23', 'Ana Oliveira', 'ao@example.com', 'F', '1995-12-28', '34567890', 90, tp_telefones(tp_telefone('345.678.901-23', '81999991234'),tp_telefone('345.678.901-23', '83978871243')), '89012345604',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00003698723698723'), 
        1984.32, 
        (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '987.654.321-00'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('876.543.210-34', 'Carlos Pereira', 'cp@eemail.com', 'M', '1998-02-01', '21098765', 43, tp_telefones(tp_telefone('876.543.210-34', '81999991234'),tp_telefone('876.543.210-34', '83978871243')), '23456789005',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00004000014000014'), 
        2200.99, 
        (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.098.765-67'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('987.654.321-45', 'Paulo Souza', 'ps@email.com', 'M', '1999-04-15', '78901234', 67, tp_telefones(tp_telefone('987.654.321-45', '81999991234'),tp_telefone('987.654.321-45', '83978871243')), '59876543206',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00005432165432165'), 
        3290.00, 
        (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.098.765-67'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('567.890.123-56', 'Lucas Santos', 'ls@email.com', 'M', '2000-06-28', '87654321', 12, tp_telefones(tp_telefone('567.890.123-56', '81999991234'),tp_telefone('567.890.123-56', '83978871243')), '01234567807',
        (SELECT REF(db) FROM tb_dados_bancarios db WHERE db.conta = '00006876546876546'), 
        2209.00, 
        (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.098.765-67'))
);

-- Cliente
INSERT INTO tb_cliente VALUES (
    tp_cliente('111.222.333-44', 'Maria Oliveira', 'mo@email.com', 'F', '1990-08-23', '01234567', 56, tp_telefones(tp_telefone('111.222.333-44', '81999991234'),tp_telefone('111.222.333-44', '83978871243')),
    45, tp_nt_cartoes(tp_cartao('1234598765432456', '123', '12/2025')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('444.555.666-77', 'Roberto Santos', 'rs@email.com', 'M', '1992-10-15', '54321098', 34, tp_telefones(tp_telefone('444.555.666-77', '81999991234'),tp_telefone('444.555.666-77', '83978871243')),
    89, tp_nt_cartoes(tp_cartao('6543210987654321', '456', '06/2023')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('222.333.444-55', 'Fernanda Oliveira', 'fernanda@email.com', 'F', '1990-03-25', '34567890', 45, tp_telefones(tp_telefone('222.333.444-55', '81999991234'),tp_telefone('222.333.444-55', '83978871243')),
    23, tp_nt_cartoes(tp_cartao('9876543210987654', '789', '09/2024')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('999.888.777-66', 'Camila Rocha', 'camila.rocha@email.com', 'F', '1997-04-30', '21098765', 45, tp_telefones(tp_telefone('999.888.777-66', '81999991234'),tp_telefone('999.888.777-66', '83978871243')),
    45, tp_nt_cartoes(tp_cartao('2345987654324567', '234', '03/2022')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('777.888.999-00', 'Eduardo Santos', 'eduardo.santos@email.com', 'M', '1986-11-08', '87654321', 67, tp_telefones(tp_telefone('777.888.999-00', '81999991234'),tp_telefone('777.888.999-00', '83978871243')),
    67, tp_nt_cartoes(tp_cartao('3210987654321098', '567', '08/2026')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('666.777.888-99', 'Larissa Lima', 'larissa.lima@email.com', 'F', '1991-05-14', '78901234', 89, tp_telefones(tp_telefone('666.777.888-99', '81999991234'),tp_telefone('666.777.888-99', '83978871243')),
    89, tp_nt_cartoes(tp_cartao('5432109876543210', '123', '11/2025')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('333.444.555-66', 'Gustavo Costa', 'gustavo.costa@email.com', 'M', '1989-08-27', '21098765', 23, tp_telefones(tp_telefone('333.444.555-66', '81999991234'),tp_telefone('333.444.555-66', '83978871243')),
    23, tp_nt_cartoes(tp_cartao('8901234598765432', '456', '02/2024')))
);

-- Livro Emprestado
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('111.222.333-44', 4)
);
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('444.555.666-77', 8)
);
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('222.333.444-55', 2)
);
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('999.888.777-66', 4)
);
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('777.888.999-00', 6)
);
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('666.777.888-99', 8)
);
INSERT INTO tb_livro_emprestado VALUES (
    tp_livro_emprestado('333.444.555-66', 2)
);

-- Empresta
INSERT INTO tb_empresta VALUES (
    tp_empresta('9783161484100', 1, '2023-12-18', 0, '111.222.333-44', '123.456.789-09', NULL)
);
INSERT INTO tb_empresta VALUES (
    tp_empresta('2435161484111', 1, '2023-12-21', 0, '222.333.444-55', '876.543.210-34', NULL)
);
INSERT INTO tb_empresta VALUES (
    tp_empresta('3452261118311', 3, '2023-12-24', 0, '666.777.888-99', '321.098.765-67', NULL)
);
