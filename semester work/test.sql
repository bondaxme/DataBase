use hospital;

insert into room_housing(id, patient_id, room_id, start_date, end_date) value (25,19,3,'2023-01-25','2023-01-30');

update medical_card
set medical_history = 'Asthma'
where patient_id = 3;

call discharge_patient(19);
call check_appointments('2023-01-20');
call check_room_patients(21);
select check_free_beds(23);
select get_appointment_info(3);