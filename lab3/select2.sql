use db_labs;

select name, employees_amount - (select min(employees_amount)
                                 from shopping_center) as diff_from_min
from shopping_center;

select empl_contr.first_name, empl_contr.last_name, empl_contr.salary - (select avg(salary)
                                                                         from contract) as salary_deviation
from (select employee.first_name, employee.last_name, contract.salary
      from employee, contract
      where employee.id = contract.employee_id) as empl_contr;

select id, name, address
from shopping_center
where exists(
    select shopping_center_id
    from retail_outlet
    where shopping_center.id = retail_outlet.shopping_center_id
          );

select id, name, address
from shopping_center
where id in (select shopping_center_id from retail_outlet);

select start_date, end_date, daily_rent_price
from treaty, retail_outlet
limit 31;

select first_name, last_name, payment_card_number, month, amount_of_payment
from client, monthly_payments
where client.id = monthly_payments.client_id;

select first_name, last_name, payment_card_number, month, amount_of_payment
from client, monthly_payments
where client.id = monthly_payments.client_id and amount_of_payment < 300;

select first_name, last_name, salary, position
from employee
join contract on employee.id = contract.employee_id;

select first_name, last_name, retail_outlet_id
from client
left join treaty on client.id = client_id

select first_name, last_name, retail_outlet_id
from client
right join treaty on client.id = client_id;

select first_name, last_name, address
from client
union select first_name, last_name, address
from employee;

