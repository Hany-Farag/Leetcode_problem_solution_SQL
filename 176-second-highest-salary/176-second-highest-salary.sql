# Write your MySQL query statement below

select if(count(*)<2,null,(select distinct salary from employee order by salary desc limit 1 offset 1)) as SecondHighestSalary  from employee