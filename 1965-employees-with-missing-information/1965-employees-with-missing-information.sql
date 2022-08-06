# Write your MySQL query statement below

select employee_id
from employees emp where emp.employee_id not in 
(select employee_id from salaries)
union 
select employee_id
from salaries sal where sal.employee_id not in 
(select employee_id from employees)
order by employee_id
