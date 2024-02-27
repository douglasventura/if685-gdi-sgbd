-- Create or replace types
CREATE OR REPLACE TYPE tp_moradia AS OBJECT (
    cep VARCHAR2(8),
    rua VARCHAR2(255),
    bairro VARCHAR2(255),
    cidade VARCHAR2(255),
    estado VARCHAR2(2),

    CONSTRUCTOR FUNCTION tp_moradia(SELF IN OUT NOCOPY tp_moradia, Cep VARCHAR2, Rua VARCHAR2, Bairro VARCHAR2, Cidade VARCHAR2, Estado VARCHAR2) RETURN SELF AS RESULT,

    MEMBER PROCEDURE exibir_cep (SELF tp_moradia),
    FINAL MEMBER PROCEDURE exibir_endereco_completo (SELF tp_moradia)
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_dados_bancarios AS OBJECT (
    conta VARCHAR2(20),
    codigo_do_banco VARCHAR2(5),
    agencia VARCHAR2(10)
);
/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    cpf VARCHAR2(14),
    telefone VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(5) OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    cpf VARCHAR2(14),
    nome VARCHAR2(50),
    email VARCHAR2(100),
    sexo CHAR(1),
    data_de_nascimento DATE,
    cep VARCHAR2(8),
    numero NUMBER,
    telefone tp_telefones,

    MAP MEMBER FUNCTION descrever_sexo RETURN VARCHAR2
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    cpf_func VARCHAR2(14),
    ctps VARCHAR2(20),
    conta REF tp_dados_bancarios,
    salario DECIMAL(10,2),
    cpf_supervisor REF tp_funcionario
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
    cpf_cliente VARCHAR2(14),
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

    ORDER MEMBER FUNCTION comparaNumeroPaginas (X tp_obra) RETURN INTEGER
);
/

CREATE OR REPLACE TYPE tp_copia AS OBJECT (
    isbn VARCHAR2(13),
    numero_da_copia NUMBER,
    status_de_disponibilidade VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE tp_autor AS OBJECT (
    isbn VARCHAR2(13)
);
/

ALTER TYPE tp_autor ADD ATTRIBUTE nome_autor VARCHAR2(255) CASCADE;
/

CREATE OR REPLACE TYPE tp_subgenero AS OBJECT (
    isbn VARCHAR2(13),
    tipo_subgenero VARCHAR2(255)
);
/

CREATE OR REPLACE TYPE tp_livro_emprestado AS OBJECT (
    cpf_cliente VARCHAR2(14),
    livro_emprestado NUMBER
);
/

CREATE OR REPLACE TYPE tp_empresta AS OBJECT (
    isbn VARCHAR2(13),
    numero_da_copia NUMBER,
    data_de_emprestimo DATE,
    valor_multa NUMBER,
    cpf_cliente VARCHAR2(14),
    cpf_func VARCHAR2(14),
    cpf_func_multa VARCHAR2(14)
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

CREATE OR REPLACE TYPE BODY tp_dados_bancarios AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_cartao AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_pessoa AS
   MAP MEMBER FUNCTION descrever_sexo RETURN VARCHAR2 IS
    BEGIN
        IF SELF.sexo = 'F' THEN
            RETURN 'Mulher';
        ELSE
        RETURN 'Homem';
        END IF;
    END;
END;
/

CREATE OR REPLACE TYPE BODY tp_funcionario AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_cliente AS
    -- Member procedures and functions here
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

CREATE OR REPLACE TYPE BODY tp_copia AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_autor AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_subgenero AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_livro_emprestado AS
    -- Member procedures and functions here
END;
/

CREATE OR REPLACE TYPE BODY tp_empresta AS
    -- Member procedures and functions here
END;
/

-- Create tables
CREATE TABLE tb_moradia OF tp_moradia (
    CONSTRAINT moradia_pk PRIMARY KEY (cep)
);
/

CREATE TABLE tb_dados_bancarios OF tp_dados_bancarios (
    CONSTRAINT dados_bancarios_pk PRIMARY KEY (conta)
);
/

CREATE TABLE tb_cartao OF tp_cartao (
    CONSTRAINT cartao_pk PRIMARY KEY (numero_do_cartao)
);
/

CREATE TABLE tb_pessoa OF tp_pessoa (
    CONSTRAINT pessoa_pk PRIMARY KEY (cpf),
    CONSTRAINT pessoa_cep_fk FOREIGN KEY (cep) REFERENCES tb_moradia (cep)
);
/

CREATE TABLE tb_funcionario OF tp_funcionario (
    CONSTRAINT funcionario_pk PRIMARY KEY (cpf_func),
    CONSTRAINT funcionario_cpf_fk FOREIGN KEY (cpf_func) REFERENCES tb_pessoa (cpf),
    conta SCOPE IS tb_dados_bancarios,
    cpf_supervisor WITH ROWID REFERENCES tb_funcionario
);
/

CREATE TABLE tb_cliente OF tp_cliente (
    CONSTRAINT cliente_pk PRIMARY KEY (cpf_cliente),
    CONSTRAINT cliente_cpf_fk FOREIGN KEY (cpf_cliente) REFERENCES tb_pessoa (cpf)
) NESTED TABLE lista_cartoes STORE AS nt_cartoes;
/

CREATE TABLE tb_obra OF tp_obra (
    CONSTRAINT obra_pk PRIMARY KEY (isbn)
);
/

CREATE TABLE tb_copia OF tp_copia (
    CONSTRAINT copia_pk PRIMARY KEY (isbn, numero_da_copia),
    CONSTRAINT copia_isbn_fk FOREIGN KEY (isbn) REFERENCES tb_obra (isbn)
);
/

CREATE TABLE tb_autor OF tp_autor (
    CONSTRAINT autor_pk PRIMARY KEY (isbn, nome_autor),
    CONSTRAINT autor_isbn_fk FOREIGN KEY (isbn) REFERENCES tb_obra (isbn)
);
/

CREATE TABLE tb_subgenero OF tp_subgenero (
    CONSTRAINT subgenero_pk PRIMARY KEY (isbn, tipo_subgenero),
    CONSTRAINT subgenero_isbn_fk FOREIGN KEY (isbn) REFERENCES tb_obra (isbn)
);
/

CREATE TABLE tb_telefone OF tp_telefone (
    CONSTRAINT telefone_pk PRIMARY KEY (cpf, telefone),
    CONSTRAINT telefone_cpf_fk FOREIGN KEY (cpf) REFERENCES tb_pessoa (cpf)
);
/

CREATE TABLE tb_livro_emprestado OF tp_livro_emprestado (
    CONSTRAINT livro_emprestado_pk PRIMARY KEY (cpf_cliente, livro_emprestado),
    CONSTRAINT livro_emprestado_cpf_fk FOREIGN KEY (cpf_cliente) REFERENCES tb_cliente (cpf_cliente)
);
/

CREATE TABLE tb_empresta OF tp_empresta (
    CONSTRAINT empresta_pk PRIMARY KEY (cpf_cliente, cpf_func, isbn, numero_da_copia),
    CONSTRAINT empresta_isbn_fk FOREIGN KEY (isbn, numero_da_copia) REFERENCES tb_copia (isbn, numero_da_copia),
    CONSTRAINT empresta_cpf_cliente_fk FOREIGN KEY (cpf_cliente) REFERENCES tb_cliente (cpf_cliente),
    CONSTRAINT empresta_cpf_func_fk FOREIGN KEY (cpf_func) REFERENCES tb_funcionario (cpf_func),
    CONSTRAINT empresta_cpf_func_multa_fk FOREIGN KEY (cpf_func_multa) REFERENCES tb_funcionario (cpf_func)
);
/
