use db_labs;

create table test
(
    id INT AUTO_INCREMENT,
    PRIMARY KEY(id)
);
drop table test;

update client
set first_name = 'Bob'
where id = 7;

insert into client (first_name, last_name) value ('to_Delete', 'to_Delete');
delete from client where first_name = 'to_Delete';

alter table treaty drop constraint treaty_client_fk;
alter table treaty rename ClientToRent;
alter table ClientToRent alter start_date set default '2023-01-01';
alter table ClientToRent drop column client_id;