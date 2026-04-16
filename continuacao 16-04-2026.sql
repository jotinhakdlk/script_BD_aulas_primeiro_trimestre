use sucos_vendas;

## O volume_de_compra (itens_notas_fiscais) é
## o campo que representa a quantidade o produto comprado.
## A partir da comparação do volume de compras e da quantidade é
## possível dizer se as vendas do mês foram válidas ou inválidas

select * from tabela_de_clientes;
select * from itens_notas_fiscais;

select nf.cpf, nf.data_venda, inf.quantidade
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero;

#manipular a data (ano e mês)
select nf.cpf, date_format(data_venda, "%Y-%m") as data_venda, inf.quantidade
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero;

#soma para obter a quantidade total
select tc.nome, 
sum(tc.volume_de_compra) as volume_compra, nf.cpf, date_format(data_venda, "%Y-%m") as data_venda, 
sum(inf.quantidade) as quantidade
from notas_fiscais as nf
inner join itens_notas_fiscais as inf
on nf.numero = inf.numero
inner join tabela_de_clientes as tc
on tc.cpf = nf.cpf
group by nf.cpf, data_venda;

select tc.cpf, tc.nome, tc.volume_de_compra as qntd_limite
from tabela_de_clientes as tc;

#obter o volume de compra da tabela
select * from tabela_de_clientes;

select tc.cpf, tc.nome, tc.volume_de_compra as qntd_limite
from tabela_de_clientes as tc;