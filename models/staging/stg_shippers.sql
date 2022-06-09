SELECT
  shipper_id AS codigo_transportadora
, company_name AS nome_transportadora
, phone AS telefone_transportadora
FROM {{ source('northwind_erp','shippers') }}