-- models/example/clients/clients.sql

{{ config(
    alias = 'clients',
    database = 'postgres',
    schema = 'clients',
    materialized = 'table',
    tags = ["refined", "clients", "clients"]) }}

select
    client_id,
    subscription_id,
    "status",
    data_assinatura as start_at,
    data_cancelamento as cancel_at

from {{ ref('raw_data', 'clientes') }} 





