{{ config(materialized='table') }}

SELECT
  row_number() over (order by shippers.codigo_transportadora) AS shippers_sk
, shippers.codigo_transportadora
, shippers.nome_transportadora
, shippers.telefone_transportadora
FROM {{ ref('stg_shippers') }} shippers