use hospital;

load data infile 'D:/KPI/DataBase/semester work/csv_files/patient.csv' into table patient
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/payment.csv' into table payment
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/doctor.csv' into table doctor
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/room.csv' into table room
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/service.csv' into table service
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/medication.csv' into table medication
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/medical_card.csv' into table medical_card
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/appointment.csv' into table appointment
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/room_housing.csv' into table room_housing
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'D:/KPI/DataBase/semester work/csv_files/medication_appointment.csv' into table medication_appointment
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

update medical_card
set allergies = null
where allergies = 'none';

update medical_card
set medical_history = null
where medical_history = 'none';

