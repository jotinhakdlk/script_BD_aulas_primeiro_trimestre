select embalagem, MAX(preco_de_lista) as preco_total
from tabela_de_produtos group by embalagem;

select embalagem, count(10) as contador from tabela_de_produtos group by embalagem;

## Quantos itens de venda existem para o produto '1101035'

select * from itens_notas_fiscais;

select max(quantidade) from itens_notas_fiscais where codigo_do_produto = 1101035;

select count(3) from itens_notas_fiscais where codigo_do_produto = 1101035 and quantidade = 99;