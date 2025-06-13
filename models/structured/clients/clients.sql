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
    data_assinatura,
    data_cancelamento


from {{ source('raw_data', 'clientes') }}
