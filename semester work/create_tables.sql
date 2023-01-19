drop database hospital;
create database if not exists hospital;
use hospital;

create table patient
(
    id int auto_increment,
    room_id int not null,
    medication_id int not null,
    patient_name varchar(100) not null,
    date_of_birth date not null,
    sex char not null,
    address varchar(70) not null,
    phone_number varchar(13) not null,
    primary key (id)
);

create table doctor
(
    id int auto_increment,
    doctor_name varchar(100) not null,
    speciality varchar(50) not null,
    years_of_experience int not null,
    phone_number varchar (13) not null,
    primary key (id)
);

create table room
(
    id int auto_increment,
    equipment_id int not null,
    room_number int not null,
    type varchar(50) not null,
    capacity int not null,
    availability bool,
    primary key (id)
);

create table equipment
(
    id int auto_increment,
    equipment_name varchar(50) not null,
    model varchar(50) not null,
    manufacturer varchar(50) not null,
    price decimal(9,2) not null,
    purchase_date date not null,
    warranty_expiration date not null,
    primary key (id)
);

create table medical_card
(
    id int auto_increment,
    patient_id int not null,
    height decimal(5,2) not null,
    weight decimal(5,2) not null,
    blood_type varchar(20) not null,
    allergies varchar(255) not null,
    medical_history varchar(255) not null,
    availability_of_insurance bool not null,
    primary key (id)
);

create table medication
(
    id int auto_increment,
    medication_name varchar(70) not null,
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
    petient_id int not null,
    appointment_date date not null,
    primary key (id)
);

create table service
(
    id int not null,
    service_name varchar(50) not null,
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
    payment_method varchar(40) not null,
    primary key (id)
);
