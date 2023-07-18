{{ config (
    materialized="table"
)}}

with dbt_emp_sal as (
select * from {{ ref ('stg_employee') }}
),
dbt_emp_sal_dim as (
select * from {{ ref ('stg_sal_range') }}
)
select distinct  a.emp_name, a.total_sal , case when a.total_sal >=b.min_salary and a.total_sal <=b.max_salary then b.sal_bracket  else 'Undefined' end  as sal_range
from dbt_emp_sal a , dbt_emp_sal_dim b 
where 1=1