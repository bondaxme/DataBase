use hospital;

create role if not exists owner;
grant all on hospital.* to owner;
create user if not exists owner@localhost identified by 'admin';
grant owner to owner@localhost;

DROP ROLE IF EXISTS doctor;
CREATE ROLE doctor;
GRANT SELECT, UPDATE ON TABLE
hospital.appointment TO doctor;
GRANT SELECT, UPDATE ON TABLE
hospital.medication_appointment TO doctor;
GRANT SELECT, UPDATE (availability) ON TABLE
hospital.medication TO doctor;
GRANT SELECT, UPDATE, DELETE ON TABLE football_association.matches
TO doctor;
DROP USER IF EXISTS test_doctor@localhost;
CREATE USER test_doctor@localhost IDENTIFIED BY 'doctor';
GRANT doctor TO test_doctor@localhost;

DROP ROLE IF EXISTS patient;
CREATE ROLE patient;
GRANT SELECT ON TABLE
hospital.appointment TO patient;
GRANT SELECT ON TABLE
hospital.medical_card TO patient;
GRANT SELECT ON TABLE
hospital.patient TO patient;

DROP USER IF EXISTS test_patient@localhost;
CREATE USER test_patient@localhost IDENTIFIED BY 'patient';
GRANT patient TO test_patient@localhost;

