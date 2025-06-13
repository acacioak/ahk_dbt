-- models/example/clients/clients.sql

{{ config(
    alias = 'receita',
    database = 'postgres',
    schema = 'revenues',
    materialized = 'table',
    tags = ["structured", "revenues", "revenues"]) }}

select
    pagamento_id,
    pedido_id,
    "valor" as amount,
    metodo_pagamento,
    data_pagamento


from {{ source('raw_data', 'pagamentos') }} 
