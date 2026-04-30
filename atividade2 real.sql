use sucos_vendas;

select * from tabela_de_produtos;
select * from itens_notas_fiscais;
select * from notas_fiscais;

select * from tabela_de_produtos where tamanho > 1;

select x.sabor, x.Ano, x.Litros, (x.Litros / 1081029064064) * 100 as Participação
from(
select tp.sabor,
date_format(nf.data_venda, "%Y") as Ano,
sum(case
	when tp.embalagem != "PET"
    then tp.tamanho * 1000 * inf.quantidade 
    else tp.tamanho * inf.quantidade
    end) as Litros
from tabela_de_produtos as tp
inner join itens_notas_fiscais as inf
on tp.codigo_do_produto = inf.codigo_do_produto
inner join notas_fiscais as nf
on nf.numero = inf.numero
where date_format(nf.data_venda, "%Y") = 2016
group by date_format(nf.data_venda, "%Y"), sabor) x
order by Participação DESC;