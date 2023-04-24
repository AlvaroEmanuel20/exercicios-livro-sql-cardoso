# 1.a
SELECT nome, sobrenome
FROM funcionarios
WHERE cargo = "programador";

# 1.b
SELECT nome, sobrenome
FROM funcionarios
WHERE tempoServico < 3;

# 1.c
SELECT nome, sobrenome
FROM funcionarios
WHERE nome LIKE "J%";

# 1.d
SELECT nome, sobrenome
FROM funcionarios
WHERE tempoServico > 5;

# 1.e
SELECT nome, sobrenome
FROM funcionarios
WHERE salario BETWEEN 70000 AND 90000;

# 1.f
SELECT nome, sobrenome, idade
FROM funcionarios
WHERE sobrenome LIKE "A%" OR sobrenome LIKE "S%"
AND idade < 30;

# 1.g
SELECT nome, sobrenome, cargo
FROM funcionarios
WHERE cargo <> "programador";

# 1.h
SELECT nome, sobrenome, idade
FROM funcionarios
ORDER BY idade DESC
LIMIT 4;