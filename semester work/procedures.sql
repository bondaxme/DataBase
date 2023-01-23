use hospital;

drop procedure if exists update_rooms_availability;
delimiter //
create procedure update_rooms_availability()
begin
    update room
    set availability = 0
    where room_number in (select room_number
                          from patient_rooms
                          where patients_amount = )
end //
delimiter ;
call update_rooms_availability();

drop procedure if exists appointments_history;
delimiter //
create procedure appointments_history(IN room_num int)
begin
    select patient_name, start_date, end_date
        from patient
        join room_housing on patient.id = room_housing.patient_id
        join room r on r.id = room_housing.room_id
        where room_number = room_num and end_date > curdate() and start_date < curdate();
end //
delimiter ;
call appointments_history(23);
