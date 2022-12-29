use db_labs;

alter table shopping_center
add constraint shopping_center_fk
FOREIGN KEY (Company_ID) references company(Company_ID)
on delete cascade;

alter table sale_place
add constraint sale_place_fk
FOREIGN KEY (Shopping_Center_ID) references shopping_center(Shopping_Center_ID)
on delete cascade;

alter table employee
add constraint employee_fk
FOREIGN KEY (Company_ID) references company(Company_ID)
on delete cascade;

alter table contract
add constraint contract_fk
FOREIGN KEY (Employee_ID) references Employee(Employee_ID)
on delete cascade;

alter table treaty
add constraint treaty_client_fk
FOREIGN KEY (Client_ID) references client(Client_ID)
on delete cascade;

alter table treaty
add constraint treaty_company_fk
FOREIGN KEY (Company_ID) references company(Company_ID)
on delete cascade;

alter table treaty
add constraint treaty_shopping_center_fk
FOREIGN KEY (Shopping_Center_ID) references shopping_center(Shopping_Center_ID)
on delete cascade;

alter table treaty
add constraint treaty_sale_place_fk
FOREIGN KEY (Sale_Place_ID) references sale_place(Sale_Place_ID)
on delete cascade;

