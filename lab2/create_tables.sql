drop database db_labs;
create database if not exists db_labs;
use db_labs;

create table company
(
  id INT AUTO_INCREMENT,
  company_name VARCHAR(55),
  employees_amount INT,
  shopping_centers_amount INT,
  PRIMARY KEY (id)
);

create table employee
(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(12),
    address VARCHAR(50),
    sex CHAR,
    passport_number varchar(13),
    PRIMARY KEY (id)
);

create table contract
(
  id INT AUTO_INCREMENT,
  salary DECIMAL,
  position varchar(50),
  start_date DATE,
  end_date DATE,
  PRIMARY KEY (id)
);

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
    payment_card_number VARCHAR(16),
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
    month varchar(15),
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
