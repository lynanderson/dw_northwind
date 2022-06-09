{{ config(materialized='table') }}

SELECT
  row_number() over (order by costumers.codigo_cliente) AS costumers_sk
, costumers.codigo_cliente			
, costumers.nome_cliente				
, costumers.contato_cliente			
, costumers.endereco_cliente				
, costumers.cidade_cliente				
, costumers.estado_cliente	
, costumers.codigo_postal_cliente			
, costumers.pais_cliente				
, costumers.telefone_cliente		
FROM {{ ref('stg_costumers') }} costumers