use sucos_vendas;

select * from tabela_de_produtos
where sabor = 'manga' and not (tamanho = '470 ml');

select * from tabela_de_produtos
where sabor in ('manga', 'laranja');

select * from tabela_de_clientes
where cidade in ('Rio de Janeiro', 'São Paulo')
and idade >= 20;