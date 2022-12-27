drop database db_labs;
create database if not exists db_labs;
use db_labs;


create table Company
(
    Company_ID INT NOT NULL AUTO_INCREMENT,
    Company_Name VARCHAR(30),
    Manager VARCHAR(50),
    Number_Of_Employees INT,
    Date_Of_Establishment DATE,
    PRIMARY KEY (Company_ID)
);

create table Worker
(
    Worker_ID INT NOT NULL AUTO_INCREMENT,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Gender CHAR,
    Email VARCHAR(40),
    Experience INT,
    Phone VARCHAR(12),
    Passport_Number VARCHAR(13),
    PRIMARY KEY (Worker_ID)
);

create table Contract
(
    Contract_ID INT NOT NULL AUTO_INCREMENT,
    Date_Of_Conclusion DATE,
    Contract_Duration INT,
    Salary DOUBLE,
    Additional_Conditions TEXT NULL,
    PRIMARY KEY (Contract_ID)
);

create table Shopping_Center
(
    Shopping_Center_ID INT NOT NULL AUTO_INCREMENT,
    `name` varchar(30),
    Address varchar(50),
    Manager varchar(50),
    Number_Of_Employees INT,
    Number_Of_Sale_Places INT,
    PRIMARY KEY (Shopping_Center_ID)
);

create table Sale_Place
(
    Sale_Place_ID INT NOT NULL AUTO_INCREMENT,
    Floor INT,
    Area DOUBLE,
    Air_Conditioning BOOL,
    isRented BOOL,
    Rent_Price INT,
    PRIMARY KEY (Sale_Place_ID)
);

create table Client
(
    Client_ID INT NOT NULL AUTO_INCREMENT,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Address varchar(50),
    Phone varchar(12),
    Payment_Details varchar(16),
    PRIMARY KEY (Client_ID)
);

create table Treaty
(
    Treaty_ID INT NOT NULL AUTO_INCREMENT,
    Shopping_Center_ID INT,
    Sale_Place_ID INT,
    Start_Date DATE,
    End_Date DATE,
    PRIMARY KEY (Treaty_ID)
);