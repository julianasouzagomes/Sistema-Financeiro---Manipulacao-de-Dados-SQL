SELECT * FROM Cliente ORDER BY Nome;

SELECT * FROM Pagamento 
WHERE valor > 100
ORDER BY valor DESC;

SELECT c.Nome, p.valor, p.data_pagamento
FROM Cliente c
INNER JOIN Pagamento p ON c.CPF = p.CPF
ORDER BY p.data_pagamento;

SELECT * FROM Cliente
WHERE Nome LIKE 'A%';

SELECT c.Nome, SUM(p.valor) AS total_gasto
FROM Cliente c
INNER JOIN Pagamento p ON c.CPF = p.CPF
GROUP BY c.Nome;

SELECT * FROM Pagamento
ORDER BY data_pagamento
LIMIT 2;
