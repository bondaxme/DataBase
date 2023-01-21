use hospital;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/patient.csv' INTO TABLE patient
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/doctor.csv' INTO TABLE doctor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/room.csv' INTO TABLE room
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/service.csv' INTO TABLE service
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/medication.csv' INTO TABLE medication
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/medical_card.csv' INTO TABLE medical_card
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/appointment.csv' INTO TABLE appointment
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:/KPI/DataBase/semester work/csv_files/room_housing.csv' INTO TABLE room_housing
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



