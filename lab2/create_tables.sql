drop database db_labs;
create database if not exists db_labs;
use db_labs;

create table retail_outlet
(
    id INT AUTO_INCREMENT,
    floor INT,
    area DOUBLE,
    air_conditioning BOOL,
    daily_rent_price DECIMAL,
    availability BOOL,
    PRIMARY KEY (id)
);

create table client
(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address VARCHAR(50),
    phone_number VARCHAR(12),
    payment_details VARCHAR(16),
    PRIMARY KEY (id)
);

create table treaty
(
    id INT AUTO_INCREMENT,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (id)
);

create table monthly_payments
(
    id INT AUTO_INCREMENT,
    amount_of_payment DECIMAL,
    payment_month varchar(15),
    PRIMARY KEY (id)
);

create table shopping_center
(
    id INT AUTO_INCREMENT,
    `name` varchar(30),
    address varchar(50),
    manager_name varchar(50),
    employees_amount INT,
    retail_outlet_amount INT,
    PRIMARY KEY (id)
);


# create table Employee
# (
#     Employee_ID INT NOT NULL AUTO_INCREMENT,
#     First_Name VARCHAR(20),
#     Last_Name VARCHAR(20),
#     Gender CHAR,
#     Email VARCHAR(40),
#     Experience_In_Month INT,
#     Phone VARCHAR(12),
#     Passport_Number VARCHAR(13),
#     PRIMARY KEY (Employee_ID)
# );
#
# create table Contract
# (
#     Contract_ID INT NOT NULL AUTO_INCREMENT,
#     Date_Of_Conclusion DATE,
#     Duration_In_Months INT,
#     Salary DOUBLE,
#     Additional_Conditions TEXT NULL,
#     PRIMARY KEY (Contract_ID)
# );
#