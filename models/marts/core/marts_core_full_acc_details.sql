with customer as (
    select * from {{ref('stg_bank_cust')}}
),

account as (
    select * from {{ref('stg_bank_acc')}}
),

final as (
    -- select a.acc_id,a.cust_name from customer a inner join account b on a.acc_id=b.acc_id
    select c.acc_id,c.cust_name from customer c full outer join account a on c.acc_id= a.acc_id
    
)

select * from final