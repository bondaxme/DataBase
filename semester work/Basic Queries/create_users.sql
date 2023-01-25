use hospital;

drop role if exists administrator;
create role administrator;
grant all on hospital.* to administrator;

drop user if exists administrator@localhost;
create user administrator@localhost identified by 'administrator';
grant administrator to administrator@localhost;


drop role if exists doctor;
create role doctor;
grant select on hospital.* to doctor;
grant update on table hospital.medical_card to doctor;
grant update on table hospital.medication to doctor;
grant create, update, delete on table hospital.appointment to doctor;
grant create, update, delete on table hospital.medication_appointment to doctor;

drop user if exists doctor@localhost;
create user doctor@localhost identified by 'doctor';
grant doctor to doctor@localhost;


drop role if exists patient;
create role patient;

grant select on hospital.appointment to patient;
grant select on hospital.medical_card to patient;
grant select, insert, update on hospital.patient to patient;


DROP USER IF EXISTS test_patient@localhost;
CREATE USER test_patient@localhost IDENTIFIED BY 'patient';
GRANT patient TO test_patient@localhost;

