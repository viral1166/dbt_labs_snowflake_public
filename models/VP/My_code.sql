{{ config (
    materialized="table"
)}}

with dbt_emp_sal as (
select * from {{ ref ('stg_employee') }}
)
 
select * from dbt_emp_sal where total_sal>=100000