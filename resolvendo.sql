USE dbmysql;

SELECT cls.classe, avg(cpra.valor_total)
FROM tb_compra cpra
JOIN tb_cliente cli ON cli.cod_cliente = cpra.cod_cliente
JOIN tb_estado est ON est.cod_estado = cli.cod_estado
JOIN tb_produto prod ON prod.cod_produto = cpra.cod_produto
JOIN tb_classe_produto cls ON cls.cod_classe = prod.cod_classe
WHERE est.sigla = 'MG'
GROUP BY cls.classe
ORDER BY 1 DESC;

SELECT prod.produto AS sale, sum(cpra.qtd_produto) AS total
FROM tb_compra cpra
JOIN tb_cliente cli ON cli.cod_cliente = cpra.cod_cliente
JOIN tb_produto prod ON prod.cod_produto = cpra.cod_produto
WHERE cli.diabetico = True
GROUP BY sale
ORDER BY total DESC;

SELECT avg(idade)
FROM tb_cliente
WHERE hipertenso= True AND diabetico= False AND sexo= 'feminino';

SELECT * FROM tb_cliente HEAD;

SELECT est.regiao, sum(cpra.valor_total) AS total
FROM tb_compra cpra
JOIN tb_cliente cli ON cli.cod_cliente = cpra.cod_cliente
JOIN tb_estado est ON est.cod_estado = cli.cod_estado
GROUP BY est.regiao
ORDER BY total DESC;

SELECT cls.classe
FROM tb_compra cpra
JOIN tb_produto prod ON prod.cod_produto = cpra.cod_produto
JOIN tb_classe_produto cls ON cls.cod_classe = prod.cod_classe
JOIN tb_cliente cli ON cli.cod_cliente = cpra.cod_cliente
WHERE cli.hipertenso= True AND cli.diabetico= True
GROUP BY 1
ORDER BY 1 ASC;

SELECT prod.produto AS sale, sum(cpra.qtd_produto) AS total
FROM tb_compra cpra
JOIN tb_produto prod ON prod.cod_produto = cpra.cod_produto
JOIN tb_cliente cli ON cli.cod_cliente = cpra.cod_cliente
JOIN tb_estado est ON est.cod_estado = cli.cod_estado
WHERE est.regiao = 'Sudeste'
GROUP BY sale
ORDER BY total DESC;