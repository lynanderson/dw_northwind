SELECT
  employee_id AS codigo_funcionario
, first_name AS nome_funcionario		
, last_name AS sobrenome_funcionario
, cast(birth_date AS date) AS data_nascimento_funcionario
, cast(hire_date AS date) AS data_contratacao_funcionario
, address AS endereco_funcionario
, city AS cidade_funcionario
, region AS estado_funcionario
, postal_code AS codigo_postal_funcionario
, country AS pais_funcionario
, home_phone AS telefone_funcionario
FROM {{ source('northwind_erp','employees') }}