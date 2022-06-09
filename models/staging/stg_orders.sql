SELECT
  cast(order_id AS int) AS codigo_pedido
, customer_id AS codigo_cliente
, cast(employee_id AS int) AS codigo_funcionario
, cast(order_date AS date) AS data_emissao
, cast(shipped_date AS date) AS data_embarque
, cast(required_date AS date) AS data_entrega
, cast(freight AS numeric) AS carga
, cast(ship_via AS int) AS codigo_transportadora
, ship_name AS destinatario
, ship_address AS local_entrega
, ship_city AS cidade_entrega
, ship_region AS estado_entrega
, ship_postal_code AS codigo_postal_entrega
, ship_country AS pais_entrega
FROM {{ source('northwind_erp','orders') }}