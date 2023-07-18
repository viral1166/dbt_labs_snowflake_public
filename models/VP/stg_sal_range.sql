with emp_sal_range as 
(
select MIN_SALARY, MAX_SALARY, SAL_BRACKET from {{ source('VP', 'EMPLOYEES_SAL_RANGE') }} 
)

select * from emp_sal_range