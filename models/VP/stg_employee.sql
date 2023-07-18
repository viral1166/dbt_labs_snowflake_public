with employee_sal as 
(
select emp_name, sum(salary) as total_sal from PC_DBT_DB.PUBLIC.EMPLOYEES_SAMPLE group by 1
)

select * from employee_sal