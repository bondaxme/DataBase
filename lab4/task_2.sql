use db_labs;

create or replace view employees_detailed_info as
select e.id, c.company_name, concat(e.first_name, ' ', e.last_name) as fullname, con.position, con.start_date, con.end_date
from contract as con
join company c on con.company_id = c.id
join employee e on con.employee_id = e.id;

select * from employees_detailed_info;

create or replace view employees_salaries as
select edi.id, edi.fullname, edi.position, con.salary
from employees_detailed_info as edi
join contract con on edi.id = con.id
order by con.salary desc;

select * from employees_salaries;

alter view employees_detailed_info as
select e.id, c.company_name, concat(e.first_name, ' ', e.last_name) as fullname, con.position, datediff(con.end_date, con.start_date) as contract_duration
from contract as con
join company c on con.company_id = c.id
join employee e on con.employee_id = e.id;

select * from employees_detailed_info;

show create view employees_detailed_info;

select * from information_schema.TABLES
where TABLE_TYPE = 'VIEW' and TABLE_SCHEMA = 'db_labs';



