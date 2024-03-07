-- Create or replace types
CREATE OR REPLACE TYPE tp_moradia AS OBJECT (
    cep VARCHAR2(8),
    rua VARCHAR2(255),
    bairro VARCHAR2(255),
    cidade VARCHAR2(255),
    estado VARCHAR2(2),

    CONSTRUCTOR FUNCTION tp_moradia(SELF IN OUT NOCOPY tp_moradia, Cep VARCHAR2, Rua VARCHAR2, Bairro VARCHAR2, Cidade VARCHAR2, Estado VARCHAR2) RETURN SELF AS RESULT,

    MAP MEMBER FUNCTION exibir_endereco_completo RETURN VARCHAR2,
    MEMBER PROCEDURE exibir_cep (SELF tp_moradia)
);
/

CREATE OR REPLACE TYPE tp_dados_bancarios AS OBJECT (
    conta VARCHAR2(20),
    codigo_do_banco VARCHAR2(5),
    agencia VARCHAR2(10)
);
/


CREATE OR REPLACE TYPE tp_autor AS OBJECT (
    autor VARCHAR2(255)
);
/

CREATE OR REPLACE TYPE tp_subgenero AS OBJECT (
    subgenero VARCHAR2(255)
);
/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    telefone VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_copia AS OBJECT (
    numero_da_copia NUMBER
);
/

ALTER TYPE tp_copia ADD ATTRIBUTE status_de_disponibilidade VARCHAR2(20) CASCADE;
/

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(5) OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_autores AS VARRAY(5) OF tp_autor;
/

CREATE OR REPLACE TYPE tp_subgeneros AS VARRAY(5) OF tp_subgenero;
/

CREATE OR REPLACE TYPE tp_copias AS VARRAY(50) OF tp_copia;
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    cpf VARCHAR2(14),
    nome VARCHAR2(50),
    email VARCHAR2(100),
    sexo CHAR(1),
    data_de_nascimento DATE,
    endereco REF tp_moradia,
    numero NUMBER,
    telefone tp_telefones,

    CONSTRUCTOR FUNCTION tp_pessoa(Cpf VARCHAR2, Nome VARCHAR2, Email VARCHAR2, Sexo CHAR, Data_de_nascimento DATE, Cep VARCHAR2, Numero NUMBER, Telefone tp_telefones) RETURN SELF AS RESULT,
    MEMBER FUNCTION exibir_nome RETURN VARCHAR2,
    FINAL MEMBER PROCEDURE exibir_detalhes_pessoa (SELF tp_pessoa)
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    ctps VARCHAR2(20),
    conta REF tp_dados_bancarios,
    salario DECIMAL(10,2),
    cpf_supervisor REF tp_funcionario,

    OVERRIDING MEMBER FUNCTION exibir_nome RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE tp_cartao AS OBJECT (
    numero_do_cartao VARCHAR2(16),
    cvv VARCHAR2(3),
    validade VARCHAR2(7)
);
/

CREATE TYPE tp_nt_cartoes AS TABLE OF tp_cartao;
/

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (
    numero_de_livro_emprestado NUMBER,
    lista_cartoes tp_nt_cartoes
);
/

CREATE OR REPLACE TYPE tp_obra AS OBJECT (
    isbn VARCHAR2(13),
    nome VARCHAR2(255),
    tipo VARCHAR2(50),
    genero VARCHAR2(50),
    ano_de_publicacao NUMBER,
    numero_de_paginas NUMBER,
    editora VARCHAR2(100),
    lista_autores tp_autores,
    lista_subgeneros tp_subgeneros,
    lista_copias tp_copias,

    ORDER MEMBER FUNCTION comparaNumeroPaginas (X tp_obra) RETURN INTEGER
);
/

CREATE OR REPLACE TYPE tp_livro_emprestado AS OBJECT (
    cliente REF tp_cliente,
    livro_emprestado NUMBER
);
/

CREATE OR REPLACE TYPE tp_empresta AS OBJECT (
    obra REF tp_obra,
    data_de_emprestimo TIMESTAMP,
    valor_multa NUMBER,
    cliente REF tp_cliente,
    vendedor REF tp_funcionario,
    multador REF tp_funcionario
);
/

-- Create or replace type bodies
CREATE OR REPLACE TYPE BODY tp_moradia AS
    CONSTRUCTOR FUNCTION tp_moradia(SELF IN OUT NOCOPY tp_moradia, Cep VARCHAR2, Rua VARCHAR2, Bairro VARCHAR2, Cidade VARCHAR2, Estado VARCHAR2) RETURN SELF AS RESULT IS BEGIN
        SELF.cep := cep;
        SELF.rua := rua;
        SELF.bairro := bairro;
        SELF.cidade := cidade;
        SELF.estado := estado;
        RETURN;
    END;

    MAP MEMBER FUNCTION exibir_endereco_completo RETURN VARCHAR2 IS
    BEGIN
        RETURN 'Rua: ' || SELF.tp_moradia.rua || ', Bairro: ' || SELF.tp_moradia.bairro || ', Cidade: ' || SELF.tp_moradia.cidade || ', Estado: ' || SELF.tp_moradia.estado;
    END;

    MEMBER PROCEDURE exibir_cep (SELF tp_moradia) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('CEP: ' || SELF.tp_moradia.cep);
    END;

    FINAL MEMBER PROCEDURE exibir_endereco_completo (SELF tp_moradia) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Rua: ' || SELF.tp_moradia.rua);  
        DBMS_OUTPUT.PUT_LINE('Bairro: ' || SELF.tp_moradia.bairro);
        DBMS_OUTPUT.PUT_LINE('Cidade: ' || SELF.tp_moradia.cidade);
        DBMS_OUTPUT.PUT_LINE('Estado: ' || SELF.enderecotp_moradia.estado);
    END;
END;
/

CREATE OR REPLACE TYPE BODY tp_pessoa AS
    CONSTRUCTOR FUNCTION tp_pessoa(Cpf VARCHAR2, Nome VARCHAR2, Email VARCHAR2, Sexo CHAR, Data_de_nascimento DATE, Cep VARCHAR2, Numero NUMBER, Telefone tp_telefones) RETURN SELF AS RESULT IS BEGIN        SELF.cpf := cpf;
        SELF.nome := nome;
        SELF.email := email;
        SELF.sexo := sexo;
        SELF.data_de_nascimento := data_de_nascimento;
        SELF.cep := cep;
        SELF.numero := numero;
        SELF.telefone := telefone;
        RETURN;
    END;

    MEMBER FUNCTION exibir_nome RETURN VARCHAR2 IS
    BEGIN
        RETURN SELF.nome;
    END;

    FINAL MEMBER PROCEDURE exibir_detalhes_pessoa (SELF tp_pessoa) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('CPF: ' || SELF.tp_pessoa.cpf);
        DBMS_OUTPUT.PUT_LINE('Nome: ' || SELF.tp_pessoa.nome);
        DBMS_OUTPUT.PUT_LINE('Email: ' || SELF.tp_pessoa.email);
        DBMS_OUTPUT.PUT_LINE('Sexo: ' || SELF.tp_pessoa.sexo);
        DBMS_OUTPUT.PUT_LINE('Data de nascimento: ' || SELF.tp_pessoa.data_de_nascimento);
        DBMS_OUTPUT.PUT_LINE('CEP: ' || SELF.tp_pessoa.cep);
        DBMS_OUTPUT.PUT_LINE('Número: ' || SELF.tp_pessoa.numero);
        DBMS_OUTPUT.PUT_LINE('Telefones: ' || SELF.tp_pessoa.telefone);
    END;
END;
/

CREATE OR REPLACE TYPE BODY tp_funcionario AS
    OVERRIDING MEMBER FUNCTION exibir_nome RETURN VARCHAR2 IS
    BEGIN
        RETURN 'Nome do Funcionário: ';
    END exibir_nome;
END;
/

CREATE OR REPLACE TYPE BODY tp_obra AS
    -- Member procedures and functions here
    ORDER MEMBER FUNCTION comparaNumeroPaginas (X tp_obra)
    RETURN INTEGER IS
    BEGIN
    RETURN SELF.numero_de_paginas - X.numero_de_paginas;
    END;
END;
/

-- Create tables
CREATE TABLE tb_moradia OF tp_moradia (
    cep PRIMARY KEY
);
/

CREATE TABLE tb_dados_bancarios OF tp_dados_bancarios (
    conta PRIMARY KEY
);
/

CREATE TABLE tb_cartao OF tp_cartao (
    numero_do_cartao PRIMARY KEY
);
/

CREATE TABLE tb_funcionario OF tp_funcionario (
    cpf PRIMARY KEY,
    conta SCOPE IS tb_dados_bancarios,
    cpf_supervisor WITH ROWID REFERENCES tb_funcionario
);
/

CREATE TABLE tb_cliente OF tp_cliente (
    cpf PRIMARY KEY
) NESTED TABLE lista_cartoes STORE AS nt_cartoes;
/

CREATE TABLE tb_obra OF tp_obra (
    isbn PRIMARY KEY
);
/

CREATE TABLE tb_livro_emprestado OF tp_livro_emprestado (
    cliente WITH ROWID REFERENCES tb_cliente
);
/

CREATE TABLE tb_empresta OF tp_empresta (
    obra WITH ROWID REFERENCES tb_obra,
    cliente WITH ROWID REFERENCES tb_cliente,
    vendedor WITH ROWID REFERENCES tb_funcionario,
    multador WITH ROWID REFERENCES tb_funcionario
);
/
