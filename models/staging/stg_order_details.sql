SELECT
  cast(order_id AS int) AS codigo_pedido
, cast(product_id AS int) AS codigo_produto
, cast(unit_price AS numeric) AS valor_unitario
, cast(quantity as numeric) AS quantidade_do_pedido
, cast(discount AS numeric) AS desconto
FROM {{ source('northwind_erp','order_details') }}