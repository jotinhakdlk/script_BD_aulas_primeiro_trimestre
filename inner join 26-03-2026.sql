use sucos_vendas;

select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores as TV
inner join notas_fiscais as NF
on tv.matricula = nf.matricula;

##Quantas notas fiscais cada vendedor emitiu?

select TV.matricula, TV.nome, count(*) as total_notas_fiscais
from tabela_de_vendedores as TV
inner join notas_fiscais as NF
on tv.matricula = nf.matricula
group by TV.matricula, TV.nome;

## Obtenha o faturamento anual da empresa, levando em consideração que o valor financeiro das vendas 
## é obtido pela multiplicação da quantidade pelo preço

select year(NF.data_venda) as ano, sum(INF.quantidade * INF_preco)
from notas_fiscais as NF
inner join itens_notas_fiscais as INF
on NF.numero = INF.numero;

select * from notas_fiscais;
select * from itens_notas_fiscais;

