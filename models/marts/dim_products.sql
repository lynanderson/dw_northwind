{{ config(materialized='table') }}

SELECT
  row_number() over (order by products.codigo_produto) AS produto_sk
, products.codigo_produto
, products.descricao_produto
, products.codigo_fornecedor
, suppliers.nome_fornecedor
, suppliers.contato_fornecedor
, suppliers.endereco_fornecedor
, suppliers.cidade_fornecedor
, suppliers.estado_fornecedor
, suppliers.codigo_postal_fornecedor
, suppliers.pais_fornecedor
, suppliers.telefone_fornecedor
, products.quantidade_unitaria	
, products.valor_unitario		
, products.estoque_atual	
, products.quantidade_em_pedido
, products.status_protudo
, categories.codigo_categoria
, categories.nome_categoria	
, categories.descricao_categoria
FROM {{ ref('stg_products') }} products
    LEFT JOIN {{ ref('stg_categories') }} categories
        ON categories.codigo_categoria = products.codigo_categoria
    LEFT JOIN {{ ref('stg_suppliers') }} suppliers
        ON suppliers.codigo_fornecedor = products.codigo_fornecedor
