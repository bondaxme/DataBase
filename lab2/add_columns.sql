use db_labs;

alter table Worker add column Company_ID INT;

alter table Contract add column Worker_ID INT;

alter table Shopping_Center add column Company_ID INT;

alter table Sale_Place add column Shopping_Center_ID INT;

alter table Treaty add column Client_ID INT;
alter table Treaty add column Company_ID INT;
