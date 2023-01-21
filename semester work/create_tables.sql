drop database hospital;
create database if not exists hospital;
use hospital;

drop table if exists patient;
drop table if exists doctor;
drop table if exists room;
drop table if exists room_housing;
drop table if exists medical_card;
drop table if exists medication_appointment;
drop table if exists medication;
drop table if exists appointment;
drop table if exists service;
drop table if exists payment;


create table patient
(
    id int auto_increment,
    patient_name varchar(255) not null,
    date_of_birth date not null,
    sex char not null,
    address varchar(255) not null,
    phone_number varchar(13) not null,
    primary key (id)
);

create table doctor
(
    id int auto_increment,
    doctor_name varchar(255) not null,
    speciality varchar(255) not null,
    years_of_experience int not null,
    phone_number varchar (13) not null,
    primary key (id)
);

create table room
(
    id int auto_increment,
    room_number int not null,
    type varchar(255) not null,
    capacity int not null,
    availability bool,
    primary key (id),
    check ( type in ('VIP', 'Standard') )
);

create table room_housing
(
    id int auto_increment,
    patient_id int not null,
    room_id int not null,
    start_date date not null,
    end_date date not null,
    primary key (id)
);

create table medical_card
(
    id int auto_increment,
    patient_id int unique not null,
    height int not null,
    weight decimal(5,2) not null,
    blood_type varchar(255) not null,
    allergies varchar(255) not null,
    medical_history varchar(255) not null,
    availability_of_insurance bool not null,
    primary key (id)
);

# create table visit
# (
#     id int auto_increment,
#     doctor_id int not null,
#     patient_id int not null,
#     visit_date date not null,
#     primary key (id)
# );

create table medication_appointment
(
    id int auto_increment,
    appointment_id int not null,
    medication_id int not null,
    primary key (id)
);

create table medication
(
    id int auto_increment,
    medication_name varchar(255) unique not null,
    dosage_in_mg int not null,
    availability bool not null,
    price decimal(7,2) not null,
    primary key (id)
);

create table appointment
(
    id int auto_increment,
    service_id int not null,
    doctor_id int not null,
    patient_id int not null,
    appointment_date datetime not null,
    primary key (id)
);

create table service
(
    id int not null,
    service_name varchar(255) unique not null,
    duration_minutes int not null,
    price decimal(8, 2) not null,
    primary key (id)
);

create table payment
(
    id int auto_increment,
    appointment_id int not null,
    payment_date date not null,
    amount decimal(8, 2) not null,
    payment_method varchar(255) not null,
    primary key (id)
);
