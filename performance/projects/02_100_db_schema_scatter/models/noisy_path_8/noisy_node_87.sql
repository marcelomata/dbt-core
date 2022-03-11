
    {{
    config(
        enabled=var('add_noise', True),
        database=('bigdb1' if target.type in ('snowflake', 'bigquery') else target.get('database')),
        schema='bigschema0',
        materialized='table'
    )
    }}
    
    select 1 as id
    