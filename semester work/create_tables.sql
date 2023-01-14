drop database hospital;
create database if not exists hospital;
use hospital;

create table patient
(
    id int auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    address varchar(70) not null,
    phone_number varchar(13) not null
);

create table doctor
(
    id int auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    specialization varchar(70) not null,
    sex char not null
);

create table room
(
    id int auto_increment,
    room_number int not null,
    room_type
);

create table department
(
    id int auto_increment,
    name varchar(50) not null
);

create table nurse
(
    id int auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone_number varchar(13) not null
)

