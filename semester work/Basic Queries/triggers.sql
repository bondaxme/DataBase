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


# drop trigger if exists update_room_availability;
# delimiter $$
# create trigger update_room_availability before insert on room_housing for each row
# begin
#     if NEW.room_id in (select room_temp.room_id
#                        from (select room_id, capacity, count(*) as patients_amount
#                              from room_housing
#                              join room r on room_housing.room_id = r.id
#                              where curdate() between start_date and end_date
#                              group by room_id, capacity
#                              having patients_amount = capacity-1) as room_temp) then
#         update room
#             set availability = 0
#         where NEW.room_id = room.id;
#     end if;
# end $$
# delimiter ;

drop trigger if exists update_room_availability;
delimiter $$
create trigger update_room_availability before insert on room_housing for each row
begin
    if NEW.room_id in (select room_id
                       from room_housing
                       join room r on room_housing.room_id = r.id
                       where (select check_free_beds(room_number)) = 1) then
        update room
            set availability = 0
        where NEW.room_id = room.id;
    end if;
end $$
delimiter ;

drop trigger if exists medical_history_update;
delimiter $$
create trigger medical_history_update before update on medical_card for each row
begin
    set @history = concat(old.medical_history, '%');
    if not new.medical_history like @history then
        signal sqlstate '45000'
        set message_text = 'Old diseases must remain';
    end if;
end $$
delimiter ;