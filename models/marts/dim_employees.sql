{{ config(materialized='table') }}

SELECT
  row_number() over (order by employees.codigo_funcionario) AS employees_sk
,  employees.codigo_funcionario
, employees.nome_funcionario		
, employees.sobrenome_funcionario
, employees.data_nascimento_funcionario
, employees.data_contratacao_funcionario
, employees.endereco_funcionario
, employees.cidade_funcionario
, employees.estado_funcionario
, employees.codigo_postal_funcionario
, employees.pais_funcionario
, employees.telefone_funcionario
FROM {{ ref('stg_employees') }} employees