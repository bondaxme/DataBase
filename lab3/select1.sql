use db_labs;

select *
from employee;

select *
from contract
where salary > 3500;

select *
from contract
where start_date = '2022-01-01' or salary >= 4000;

select *
from contract
where start_date = '2022-01-01' and salary >= 4000;

select *
from contract
where not start_date = '2022-01-01';

select *
from contract
where not(start_date = '2022-01-01' and (salary >= 4000 or salary < 3000));

select id, daily_rent_price / area as cost_per_meter
from retail_outlet
where daily_rent_price / area > 3.5;

select id, amount_of_payment, month
from monthly_payments
where month in ('January', 'February', 'March', 'April');

select *
from contract
where start_date between DATE('2022-02-01') and DATE('2023-01-02');

select *
from employee
where employee.last_name like '%e';

select *
from retail_outlet
where daily_rent_price is null;