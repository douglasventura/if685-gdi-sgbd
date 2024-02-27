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
INSERT INTO
    tb_funcionario (cpf_func, ctps, conta, salario, cpf_supervisor)
VALUES
    ('987.654.321-00', '98765432102', '00001234561234567', 4200.80, NULL);
INSERT INTO
    tb_funcionario (cpf_func, ctps, conta, salario, cpf_supervisor)
VALUES
    ('321.098.765-67', '34567890108', '00007293817293817', 1320.00, NULL);
INSERT INTO
    tb_funcionario (cpf_func, ctps, conta, salario, cpf_supervisor)
VALUES
    ('123.456.789-09', '12345678901', '00000876224123688', 1000.00, '987.654.321-00');
INSERT INTO
    tb_funcionario (cpf_func, ctps, conta, salario, cpf_supervisor)
VALUES
    ('234.567.890-12', '45678901203', '00002468012468012', 1400.22, '987.654.321-00');
INSERT INTO
    tb_funcionario (cpf_func, ctps, conta, salario, cpf_supervisor)
VALUES
    ('345.678.901-23', '89012345604', '00003698723698723', 1984.32, '987.654.321-00');
INSERT INTO
    tb_funcionario (cpf_func, ctps, conta, salario, cpf_supervisor)
VALUES
    ('876.543.210-34', '23456789005', '00004000014000014', 2200.99, '321.098.765-67');
-- Funcionario
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('987.654.321-00', '98765432102', REF(tp_dados_bancarios('00001234561234567', '05005', '86420973')), 4200.80, NULL)
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('321.098.765-67', '34567890108', REF(tp_dados_bancarios('00007293817293817', '08008', '25814736')), 1320.00, NULL)
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('123.456.789-09', '12345678901', REF(tp_dados_bancarios('00000876224123688', '06006', '74125896')), 1000.00, (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf_func = '987.654.321-00'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('234.567.890-12', '45678901203', REF(tp_dados_bancarios('00002468012468012', '07007', '36985214')), 1400.22, (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf_func = '987.654.321-00'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('345.678.901-23', '89012345604', REF(tp_dados_bancarios('00003698723698723', '07007', '36985214')), 1984.32, (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf_func = '987.654.321-00'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('876.543.210-34', '23456789005', REF(tp_dados_bancarios('00004000014000014', '05005', '86420973')), 2200.99, (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf_func = '321.098.765-67'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('987.654.321-45', '59876543206', REF(tp_dados_bancarios('00005432165432165', '06006', '74125896')), 3290.00, (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf_func = '321.098.765-67'))
);
INSERT INTO tb_funcionario VALUES (
    tp_funcionario('567.890.123-56', '01234567807', REF(tp_dados_bancarios('00006876546876546', '07007', '36985214')), 2209.00, (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf_func = '321.098.765-67'))
);

-- Cliente
INSERT INTO tb_cliente VALUES (
    tp_cliente('111.222.333-44', 45, tp_nt_cartoes(tp_cartao('1234598765432456', '123', '12/2025')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('444.555.666-77', 89, tp_nt_cartoes(tp_cartao('6543210987654321', '456', '06/2023')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('222.333.444-55', 23, tp_nt_cartoes(tp_cartao('9876543210987654', '789', '09/2024')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('999.888.777-66', 45, tp_nt_cartoes(tp_cartao('2345987654324567', '234', '03/2022')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('777.888.999-00', 67, tp_nt_cartoes(tp_cartao('3210987654321098', '567', '08/2026')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('666.777.888-99', 89, tp_nt_cartoes(tp_cartao('5432109876543210', '123', '11/2025')))
);
INSERT INTO tb_cliente VALUES (
    tp_cliente('333.444.555-66', 23, tp_nt_cartoes(tp_cartao('8901234598765432', '456', '02/2024')))
);

-- Telefone
INSERT INTO tb_telefone VALUES (
    tp_telefone('123.456.789-09', '1122334455')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('123.456.789-09', '8812332455')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('987.654.321-00', '5544332211')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('234.567.890-12', '9988776655')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('345.678.901-23', '6677889900')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('876.543.210-34', '1122334455')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('876.543.210-34', '9922531455')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('987.654.321-45', '9988776655')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('567.890.123-56', '6677889900')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('321.098.765-67', '5544332211')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('111.222.333-44', '1122334455')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('444.555.666-77', '6677889900')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('222.333.444-55', '5544332211')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('999.888.777-66', '9988776655')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('777.888.999-00', '6677889900')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('666.777.888-99', '1122334455')
);
INSERT INTO tb_telefone VALUES (
    tp_telefone('333.444.555-66', '9988776655')
);

-- Obra
INSERT INTO tb_obra VALUES (
    tp_obra('9783161484100', 'Nome Obra 1', 'Tipo Obra 1', 'Genero Obra 1', 2022, 300, 'Editora Obra 1')
);
INSERT INTO tb_obra VALUES (
    tp_obra('2435161484111', 'Nome Obra 2', 'Tipo Obra 2', 'Genero Obra 2', 2023, 400, 'Editora Obra 2')
);
INSERT INTO tb_obra VALUES (
    tp_obra('3452261118311', 'Nome Obra 3', 'Tipo Obra 3', 'Genero Obra 3', 2024, 500, 'Editora Obra 3')
);

-- Copia
INSERT INTO tb_copia VALUES (
    tp_copia('9783161484100', 1, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('9783161484100', 2, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('9783161484100', 3, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('2435161484111', 1, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('2435161484111', 2, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('3452261118311', 1, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('3452261118311', 2, 'Disponível')
);
INSERT INTO tb_copia VALUES (
    tp_copia('3452261118311', 3, 'Disponível')
);

-- Autor
INSERT INTO tb_autor VALUES (
    tp_autor('9783161484100', 'Nome Autor 1')
);
INSERT INTO tb_autor VALUES (
    tp_autor('2435161484111', 'Nome Autor 2')
);
INSERT INTO tb_autor VALUES (
    tp_autor('3452261118311', 'Nome Autor 3')
);

-- Subgenero
INSERT INTO tb_subgenero VALUES (
    tp_subgenero('9783161484100', 'Subgenero 1')
);
INSERT INTO tb_subgenero VALUES (
    tp_subgenero('2435161484111', 'Subgenero 2')
);
INSERT INTO tb_subgenero VALUES (
    tp_subgenero('3452261118311', 'Subgenero 3')
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
