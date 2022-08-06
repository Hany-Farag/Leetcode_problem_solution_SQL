# Write your MySQL query statement below

select  ac.sell_date,count( distinct ac.product ) as num_sold,
group_concat(distinct act.product order by ac.product) as products
from Activities ac,activities act
where ac.sell_date=act.sell_date
group by ac.sell_date 
order by ac.sell_date