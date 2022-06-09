SELECT
  customer_id AS codigo_cliente			
, company_name AS nome_cliente				
, contact_name AS contato_cliente			
, address AS endereco_cliente				
, city AS cidade_cliente				
, region AS estado_cliente	
, postal_code AS codigo_postal_cliente			
, country AS pais_cliente				
, phone AS telefone_cliente		
FROM {{ source('northwind_erp','customers') }}