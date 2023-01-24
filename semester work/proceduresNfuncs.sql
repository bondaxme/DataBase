use hospital;

drop procedure if exists check_room_patients;
delimiter $$
create procedure check_room_patients(IN room_num int)
begin
    select patient_name, start_date, end_date
    from patient
    join room_housing on patient.id = room_housing.patient_id
    join room r on r.id = room_housing.room_id
    where room_number = room_num and curdate() between start_date and end_date;
end $$
delimiter ;

call check_room_patients(23);

drop procedure if exists check_appointments;
delimiter $$
create procedure check_appointments(IN app_date date)
begin
    select service_name, appointment_date, doctor_name, patient_name
    from appointment
    join service s on appointment.service_id = s.id
    join doctor d on appointment.doctor_id = d.id
    join patient p on appointment.patient_id = p.id
    where (select date(appointment_date))= app_date;
end $$
delimiter ;

call check_appointments('2023-01-20');

drop procedure if exists discharge_patient;
delimiter $$
create procedure discharge_patient(IN p_id int)
begin
    update room_housing
        set end_date = curdate()
    where p_id = patient_id;

    update room
        set availability = true
    where id = (select room_id from room_housing where p_id = patient_id);
end $$
delimiter ;

call discharge_patient(1);

drop function if exists check_free_beds;
delimiter $$
create function check_free_beds(room_num int) returns int
    deterministic
begin
    declare beds_amount int;
    select capacity - patients_amount into beds_amount
    from (select room_number, capacity, count(*) as patients_amount
          from room_housing
          join room r on room_housing.room_id = r.id
          group by room_id, capacity) as room_temp
    where room_num = room_number;
    return beds_amount;
end $$
delimiter ;

select check_free_beds(22)