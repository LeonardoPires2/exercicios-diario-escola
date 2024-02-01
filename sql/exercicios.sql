-- 1) Escreva comandos SQL para inserir os dados abaixo conforme o diagrama
-- apresentado.
-- a) Pablo é Pai de Lucas
-- b) Brenda é Mãe de Lucas
INSERT INTO aluno (id, nome)
VALUES (1, 'Lucas');
INSERT INTO responsavel (id, nome)
VALUES (1, 'Pablo'),
    (2, 'Brenda');
INSERT INTO parentesco (id_aluno, id_responsavel, parentesco)
VALUES (1, 1, 'Pai'),
    (1, 2, 'Mãe');


-- Escreva uma consulta SQL para retornar dados únicos conforme tabela abaixo.
-- Caso o aluno tenha mais de dois responsáveis, traga apenas os dois primeiros
-- responsáveis encontrados na tabela.
SELECT
    aluno.nome AS aluno,
    responsavel1.nome AS responsavel,
    parentesco1.parentesco,
    responsavel2.nome AS responsavel2,
    parentesco2.parentesco
FROM aluno
INNER JOIN parentesco AS parentesco1 ON parentesco1.id_aluno = aluno.id
INNER JOIN responsavel AS responsavel1 ON responsavel1.id = parentesco1.id_responsavel
LEFT JOIN parentesco AS parentesco2 ON parentesco2.id_aluno = aluno.id
LEFT JOIN responsavel AS responsavel2 ON responsavel2.id = parentesco2.id_responsavel
ORDER BY aluno.nome ASC, responsavel1.nome ASC
LIMIT 2;


-- 1) Escreva uma consulta SQL para trazer todos os dados. Seja criativo.

SELECT
    aluno.nome,
    aluno.id,
    responsavel1.id,
    responsavel2.id,
    responsavel1.nome AS responsavel,
    parentesco1.parentesco,
    responsavel2.nome AS responsavel2,
    parentesco2.parentesco
FROM aluno
INNER JOIN parentesco AS parentesco1 ON parentesco1.id_aluno = aluno.id
INNER JOIN responsavel AS responsavel1 ON responsavel1.id = parentesco1.id_responsavel
LEFT JOIN parentesco AS parentesco2 ON parentesco2.id_aluno = aluno.id
LEFT JOIN responsavel AS responsavel2 ON responsavel2.id = parentesco2.id_responsavel
ORDER BY aluno.nome ASC, responsavel1.nome ASC
LIMIT 1