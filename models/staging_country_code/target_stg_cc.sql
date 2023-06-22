with final as (

    select * from {{ref('country_code')}}
)

select * from final