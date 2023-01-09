use db_labs;

select count(air_conditioning)
from retail_outlet
where air_conditioning = 1;

select sum(salary) as total_salary
from contract;

select upper(first_name), lower(last_name)
from client;

select first_name, last_name, datediff(end_date, curdate())
from contract, employee
where contract.employee_id = employee.id;

select month, sum(amount_of_payment)
from monthly_payments
group by month;

select month, sum(amount_of_payment)
from monthly_payments
group by month
having sum(amount_of_payment) > 500;

select *
from shopping_center
having employees_amount < 150;

select row_number() over (order by salary DESC), e.first_name, e.last_name, salary
from contract
join employee e on contract.employee_id = e.id;

select name, address, employees_amount, retail_outlet_amount
from shopping_center
order by employees_amount DESC, retail_outlet_amount DESC