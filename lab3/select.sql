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

select daily_rent_price, id
from retail_outlet
where air_conditioning = 1;