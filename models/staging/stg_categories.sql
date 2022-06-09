SELECT
  cast(category_id AS int) AS codigo_categoria	
, category_name AS nome_categoria
, description AS descricao_categoria
FROM {{ source('northwind_erp','categories') }}