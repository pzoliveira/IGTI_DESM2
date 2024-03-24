USE dbmysql;

SELECT * from tb_cliente WHERE cod_cliente=3;

UPDATE tb_cliente SET hipertenso=true WHERE cod_cliente=3;

SELECT * FROM stg_compras;

INSERT INTO tb_compra (cod_cliente, cod_produto, qtd_produto, valor_unitario, valor_total)
(
	SELECT
		stg.cod_cliente codcli,
        stg.cod_produto codprod,
        stg.qtd_produto qtdprod,
        stg.valor_unitario vlru,
        stg.valor_total_compra vlrt
	FROM stg_compras stg
);

select * from tb_compra;