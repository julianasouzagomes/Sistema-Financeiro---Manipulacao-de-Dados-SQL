UPDATE Cliente 
SET Telefone = '11990001111'
WHERE CPF = 11111111111;

UPDATE Pagamento 
SET valor = 200.00
WHERE idPagamento = 2;

UPDATE Cliente 
SET Email = 'cliente_atualizado@gmail.com'
WHERE CPF = 33333333333;


DELETE FROM Pagamento 
WHERE idPagamento = 4;

DELETE FROM Cliente 
WHERE CPF = 22222222222;
