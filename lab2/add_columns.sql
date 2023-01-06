use db_labs;

alter table retail_outlet add column shopping_center_id INT;

alter table contract add column company_id INT;
alter table contract add column employee_id INT;

alter table treaty add column client_id INT;
alter table treaty add column retail_outlet_id INT;

alter table monthly_payments add column client_id INT;

alter table shopping_center add column company_id INT;