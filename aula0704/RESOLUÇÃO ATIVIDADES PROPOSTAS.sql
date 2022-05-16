use padariaead;
-- --1) Quais pratos utilizam ovo? (Comentário)
select DISTINCT prato.Nome
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'ovo';

-- 2) Quais pratos utilizam “farinha”?
select DISTINCT prato.Nome
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'farinha';

-- 3) Quais pratos utilizam “ovo”, “farinha” e “leite”? (juntos na mesma receita!)
select DISTINCT prato.Nome
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome in ('ovo', 'farinha', 'leite');

-- 4) Qual o preço do prato mais caro?
select min(Preco) from prato;

-- 5) Qual o preço do prato mais caro que utiliza “leite”? (Exiba apenas o preço do prato)
select max(Preco)
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'leite';

-- 6) Qual o preço do prato mais barato que utiliza “farinha” e “leite”? (juntos na mesma receita!)
select min(Preco)
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'leite' and ingredientes.Nome = 'farinha';

-- 7) Qual o preço médio dos pratos?
select avg(Preco) from prato;

-- 8) Qual o preço médio dos pratos que utilizam “coco” em suas receitas?
select avg(Preco)
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'coco';

-- 9) Quais ingredientes são utilizados para fazer “quindim”?
select ingredientes.Nome from prato 
inner join receita on receita.idPrato = prato.idPrato 
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes 
where prato.Nome = 'Quindim';

-- 10) Qual o ingrediente que tem menor quantidade em estoque? (Precisaria comprar mais).
select Nome from ingrediente
where QtdeEstoque = (select min(QtdeEstoque) from ingrediente);

-- 11) Relativo à questão anterior, e o que tem mais? (Não precisaria comprar porque tem bastante no estoque)
select Nome from ingrediente
where QtdeEstoque = (select max(QtdeEstoque) from ingrediente);

-- 12) Exiba a quantidade em estoque dos ingredientes utilizados para fazer "quindim"
use padariaead;
-- --1) Quais pratos utilizam ovo? (Comentário)
select DISTINCT prato.Nome
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'ovo';

-- 2) Quais pratos utilizam “farinha”?
select DISTINCT prato.Nome
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'farinha';

-- 3) Quais pratos utilizam “ovo”, “farinha” e “leite”? (juntos na mesma receita!)
select DISTINCT prato.Nome
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome in ('ovo', 'farinha', 'leite');

-- 4) Qual o preço do prato mais caro?
select min(Preco) from prato;

-- 5) Qual o preço do prato mais caro que utiliza “leite”? (Exiba apenas o preço do prato)
select max(Preco)
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'leite';

-- 6) Qual o preço do prato mais barato que utiliza “farinha” e “leite”? (juntos na mesma receita!)
select min(Preco)
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'leite' and ingredientes.Nome = 'farinha';

-- 7) Qual o preço médio dos pratos?
select avg(Preco) from prato;

-- 8) Qual o preço médio dos pratos que utilizam “coco” em suas receitas?
select avg(Preco)
from prato
inner join receita on receita.idPrato = prato.idPrato
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes
where ingredientes.Nome = 'coco';

-- 9) Quais ingredientes são utilizados para fazer “quindim”?
select ingredientes.Nome from prato 
inner join receita on receita.idPrato = prato.idPrato 
inner join ingredientes on ingredientes.idIngredientes = receita.idIngredientes 
where prato.Nome = 'Quindim';

-- 10) Qual o ingrediente que tem menor quantidade em estoque? (Precisaria comprar mais).
select Nome from ingrediente
where QtdeEstoque = (select min(QtdeEstoque) from ingrediente);

-- 11) Relativo à questão anterior, e o que tem mais? (Não precisaria comprar porque tem bastante no estoque)
select Nome from ingrediente
where QtdeEstoque = (select max(QtdeEstoque) from ingrediente);

-- 12) Exiba a quantidade em estoque dos ingredientes utilizados para fazer "quindim"
select Nome, QtdeEstoque from ingredientes
inner join receita on ingredientes.idIngredientes = receita.idIngredientes and receita.idPrato = (select idPrato from prato where nome = 'Quindim')

-- 13) Exiba a quantidade em estoque dos ingredientes utilizados pelo cozinheiro “Joao” para fazer seus pratos.

-- 14) Exiba a soma dos resultados da questão anterior.

-- 15) Qual/Quais cozinheiro/s fazem “coxinha”, “risoles” e “quibe”?

-- 16) Qual/Quais cozinheiro/s utilizam “leite” em suas receitas?

-- 17) Qual/Quais cozinheiro/s utilizam “leite”, “farinha e “açucar” em suas receitas?

-- 18) Quais cozinheiros fazem (ou são responsáveis por fazer) “Bolo”, “Pão”, “Rosca” e “Pão de queijo”?

-- 20) O que seria necessário fazer se houvesse a necessidade de saber a quantidade dos ingredientes que determinado prato utiliza para ser construído?

-- 21) O que seria necessário fazer se houvesse a necessidade de calcular ou verificar qual prato dá maior lucro ao estabelecimento?

-- 22) Existe algum registro (de qualquer tabela da modelagem) que não está sendo utilizado? Como você os identificaria?

-- 23) Existe alguma melhoria que possa ser feita na modelagem ou na tabela “INGREDIENTES”, por exemplo? Qual(is) seria(m)?

