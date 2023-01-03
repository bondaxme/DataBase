use db_labs;

alter table retail_outlet
add constraint retail_outlet_fk
foreign key(shopping_center_id) references shopping_center(id)
on delete cascade;

alter table treaty
add constraint treaty_client_fk
foreign key(client_id) references client(id)
on delete cascade;

alter table treaty
add constraint treaty_retail_fk
foreign key(retail_outlet_id) references retail_outlet(id)
on delete cascade;

alter table monthly_payments
add constraint monthly_payments_fk
foreign key (client_id) references client(id)
on delete cascade;