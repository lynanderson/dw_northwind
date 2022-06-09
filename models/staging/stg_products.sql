SELECT
  cast(product_id AS int) AS codigo_produto
, product_name AS descricao_produto
, cast(supplier_id AS int) AS codigo_fornecedor
, cast(category_id AS int) AS codigo_categoria		
, quantity_per_unit AS quantidade_unitaria	
, cast(unit_price AS numeric) AS valor_unitario		
, cast(units_in_stock AS numeric) AS estoque_atual	
, cast(units_on_order AS numeric) AS quantidade_em_pedido
, CASE WHEN discontinued = 1 THEN 'Inativo'
      ELSE 'Ativo'
  END AS status_protudo
FROM {{ source('northwind_erp','products') }}