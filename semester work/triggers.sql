use hospital;

drop trigger if exists full_rooms;
delimiter $$
create trigger full_rooms before insert on room_housing for each row
begin
    if NEW.room_id in (select id
                   from room
                   where availability = 0) then
        signal sqlstate '45000'
            set message_text = 'The room has the maximum number of patients. Choose other room.';
    end if;
end $$
delimiter ;

insert into room_housing(id, patient_id, room_id, start_date, end_date) value (25,20,2,'2023-01-01','2023-01-30');

drop trigger if exists update_room_availability;
delimiter $$
create trigger update_room_availability before insert on room_housing for each row
begin
    if NEW.room_id in (select room_temp.room_id
                       from (select room_id, capacity, count(*) as patients_amount
                             from room_housing
                             join room r on room_housing.room_id = r.id
                             group by room_id, capacity
                             having patients_amount = capacity-1) as room_temp) then
        update room
            set availability = 0
        where NEW.room_id = room.id;
    end if;
end $$
delimiter ;

insert into room_housing(id, patient_id, room_id, start_date, end_date) value (26,20,6,'2023-01-24','2023-01-30');