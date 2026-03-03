select cidade, idade from tabela_de_clientes
where cidade = ('Rio de janeiro' or 'São Paulo');

select distinct *
from tabela_de_produtos where sabor = 'laranja';

select distinct bairro, cidade, estado
from tabela_de_clientes where cidade = 'Rio de Janeiro';

#USO DA CONDIÇÃO LIMIT

select * from tabela_de_produtos limit 2, 4;

#OBTENHA AS 10 PRIMEIRAS VENDAS DO DIA 01/01/2027

select * from notas_fiscais
where data_venda = '2017-01-01' limit 5, 10;