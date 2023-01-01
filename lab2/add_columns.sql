use db_labs;

alter table Employee add column Company_ID INT;

alter table Contract add column Employee_ID INT;
-- alter table Contract add column Company_ID INT;

alter table Shopping_Center add column Company_ID INT;

alter table Sale_Place add column Shopping_Center_ID INT;

alter table Treaty add column Client_ID INT;
alter table Treaty add column Company_ID INT;
alter table Treaty add column Shopping_Center_ID INT;
alter table Treaty add column Sale_Place_ID INT;
