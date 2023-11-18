with base_economy as (

    select 
        gdp_usd,
        location_key,
        gdp_per_capita_usd,
        human_capital_index 
    from {{ source('raw_covid19', 'economy') }}

)

select * from base_economy