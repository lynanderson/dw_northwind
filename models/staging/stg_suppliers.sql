SELECT
  cast(supplier_id AS int) AS codigo_fornecedor
, company_name AS nome_fornecedor
, contact_name AS contato_fornecedor
, address AS endereco_fornecedor
, city AS cidade_fornecedor
, region AS estado_fornecedor
, postal_code AS codigo_postal_fornecedor
, country AS pais_fornecedor
, phone AS telefone_fornecedor
FROM {{ source('northwind_erp','suppliers') }}