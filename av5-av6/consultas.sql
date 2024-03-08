-- histórico com número total de livros já emprestados à um cliente
SELECT x.livro_emprestado
FROM tb_livro_emprestado x
WHERE DEREF(x.cliente).cpf = '999.888.777-66';

-- lista de todos os clientes que já pegaram mais de 3 livros emprestados
SELECT DEREF(x.cliente).cpf AS CPF
FROM tb_livro_emprestado x
WHERE x.livro_emprestado > 3;

-- lista de todos os autores de um livro (consulta varray)
SELECT *
FROM TABLE (
    SELECT o.lista_autores
    FROM tb_obra o
    WHERE o.isbn = '2435161484111'
);

-- lista de todos os cartões de um cliente (consulta nested table)
SELECT *
FROM TABLE (
    SELECT c.lista_cartoes
    FROM tb_cliente c
    WHERE c.cpf = '999.888.777-66'
);

-- exibe funcionarios que residem em um endereço
SELECT f.cpf, f.nome
FROM tb_funcionario f
WHERE endereco = (SELECT REF(x) FROM tb_moradia x WHERE x.cep = '45678901');

-- exibe endereço completo
DECLARE
  res tp_moradia;
BEGIN
  SELECT VALUE(M)
  INTO res
  FROM tb_moradia M
  WHERE M.cep = '54321098';

  DBMS_OUTPUT.PUT_LINE(res.exibir_endereco_completo());
END;

-- exibir cep de um funcionário
DECLARE
	res tp_moradia;
BEGIN
	SELECT DEREF(f.endereco)
	INTO res
	FROM tb_funcionario f
	WHERE f.cpf = '234.567.890-12';

	res.exibir_cep();
END;

-- exibir nome de um cliente
DECLARE
  res tp_cliente;
BEGIN
  SELECT VALUE(C)
  INTO res
  FROM tb_cliente C, TABLE(C.telefone) T
  WHERE T.telefone = '5529551905';

  DBMS_OUTPUT.PUT_LINE(res.exibir_nome());
END;

-- exibir detalhes de um funcionário
DECLARE
  res tp_funcionario;
BEGIN
  SELECT VALUE(F)
  INTO res
  FROM tb_funcionario F
  WHERE F.cpf = '987.654.321-00';

  res.exibir_nome();
  res.exibir_detalhes_pessoa();
END;

-- compara número de páginas entre obras
DECLARE
  obra1 tp_obra;
  obra2 tp_obra;
BEGIN
  SELECT VALUE(O1)
  INTO obra1
  FROM tb_obra O1
  WHERE O1.isbn = '2435161484111';

  SELECT VALUE(O2)
  INTO obra2
  FROM tb_obra O2
  WHERE O2.isbn = '2435161484112';

  DBMS_OUTPUT.PUT_LINE(obra1.comparaNumeroPaginas(obra2));
END;


