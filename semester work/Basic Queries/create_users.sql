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
grant insert, update, delete on table hospital.medical_card to doctor;
grant insert, update, delete on table hospital.appointment to doctor;
grant insert, update, delete on table hospital.medication_appointment to doctor;

drop user if exists doctor@localhost;
create user doctor@localhost identified by 'doctor';
grant doctor to doctor@localhost;


drop role if exists patient;
create role patient;
grant select on hospital.appointment to patient;
grant select on hospital.medical_card to patient;
grant select on hospital.doctor to patient;
grant select on hospital.room to patient;
grant select on hospital.service to patient;
grant select on hospital.medication to patient;

drop user if exists patient@localhost;
create user patient@localhost identified by 'patient';
grant patient to patient@localhost;

