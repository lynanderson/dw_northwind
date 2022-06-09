{{ config(materialized='table') }}

SELECT
  orders.codigo_pedido
, orders.data_emissao
, orders.data_embarque
, orders.data_entrega
, order_details.codigo_produto
, products.descricao_produto
, order_details.quantidade_do_pedido
, order_details.valor_unitario
, order_details.desconto
, products.quantidade_unitaria			
, products.estoque_atual	
, products.status_protudo
, orders.carga
, products.codigo_fornecedor
, products.nome_fornecedor
, products.contato_fornecedor
, products.endereco_fornecedor
, products.cidade_fornecedor
, products.estado_fornecedor
, products.codigo_postal_fornecedor
, products.pais_fornecedor
, products.telefone_fornecedor
, products.codigo_categoria
, products.nome_categoria	
, products.descricao_categoria
, orders.codigo_cliente
, costumers.nome_cliente				
, costumers.contato_cliente			
, costumers.endereco_cliente				
, costumers.cidade_cliente				
, costumers.estado_cliente	
, costumers.codigo_postal_cliente			
, costumers.pais_cliente				
, costumers.telefone_cliente	
, orders.codigo_funcionario
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
, orders.codigo_transportadora
, shippers.nome_transportadora
, shippers.telefone_transportadora
, orders.destinatario
, orders.local_entrega
, orders.cidade_entrega
, orders.estado_entrega
, orders.codigo_postal_entrega
, orders.pais_entrega
FROM {{ ref('stg_orders') }} orders
    LEFT JOIN {{ ref('stg_order_details') }} order_details
        ON order_details.codigo_pedido = orders.codigo_pedido
    LEFT JOIN {{ ref('dim_products') }} products
        ON products.codigo_produto = order_details.codigo_produto
    LEFT JOIN {{ ref('dim_costumers') }} costumers
        ON costumers.codigo_cliente = orders.codigo_cliente
    LEFT JOIN {{ ref('dim_employees') }} employees
        ON employees.codigo_funcionario = orders.codigo_funcionario
    LEFT JOIN {{ ref('dim_shippers') }} shippers
        ON shippers.codigo_transportadora = orders.codigo_transportadora