use hospital;

explain
select *
from room_housing
where start_date = '2022-12-30';

create index test
on service(price);
explain
select *
from room_housing
where start_date = '2022-12-30';

insert into room_housing(id, patient_id, room_id, start_date, end_date) value (25,19,3,'2023-01-25','2023-01-30');

update medical_card
set medical_history = 'Asthma'
where patient_id = 3;

call discharge_patient(19);
call check_appointments('2023-01-20');
call check_room_patients(13);
select check_free_beds(21);
select get_appointment_info(3);