use hospital;

drop procedure if exists appointments_history;
delimiter //
create procedure appointments_history(IN room_num int)
begin
    select patient_name, start_date, end_date
    from patient
    join room_housing on patient.id = room_housing.patient_id
    join room r on r.id = room_housing.room_id
    where room_number = room_num and curdate() between start_date and end_date;
end //
delimiter ;
call appointments_history(23);
