## O volume_de_compra (itens_notas_fiscais) é
## o campo que representa a quantidade o produto comprado.
## A partir da comparação do volume de compras e da quantidade é
## possível dizer se as vendas do mês foram válidas ou inválidas

use sucos_vendas;

select TP.sabor, NF.data_venda, INF.quantidade
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
on TP.codigo_do_produto = INF.codigo_do_produto
inner join notas_fiscais as NF
on NF.numero = INF.numero;

select TP.sabor, date_format(NF.data_venda, "%Y - %m") as data_venda, INF.quantidade
from tabela_de_produtos as TP
inner join itens_notas_fiscais as INF
on TP.codigo_do_produto = INF.codigo_do_produto
inner join notas_fiscais as NF
on NF.numero = INF.numero;