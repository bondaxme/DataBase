use db_labs;

alter table shopping_center
add constraint shopping_center_fk
FOREIGN KEY (Company_ID) references company(Company_ID)
on delete cascade;

alter table sale_place
add constraint sale_place_fk
FOREIGN KEY (Shopping_Center_ID) references shopping_center(Shopping_Center_ID)
on delete cascade;

alter table worker
add constraint worker_fk
FOREIGN KEY (Company_ID) references company(Company_ID)
on delete cascade;

alter table contract
add constraint contract_fk
FOREIGN KEY (Worker_ID) references worker(Worker_ID)
on delete cascade;

alter table treaty
add constraint treaty_client_fk
FOREIGN KEY (Client_ID) references client(Client_ID)
on delete cascade;

alter table treaty
add constraint treaty_company_fk
FOREIGN KEY (Company_ID) references company(Company_ID)
on delete cascade;
