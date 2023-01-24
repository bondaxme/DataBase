use hospital;

drop trigger if exists full_rooms;
delimiter $$
create trigger full_rooms before insert on room_housing for each row
begin
    if room_id in (select id
                   from room
                   where availability = 0) then
        signal sqlstate '45000'
            set message_text = 'The room has the maximum number of patients. Choose other room';
    end if;
end $$
delimiter ;

insert into room_housing(id, patient_id, room_id, start_date, end_date) value (25,20,2,'2023-01-01','2023-01-30');

drop trigger if exists update_room_availability;
delimiter $$
create trigger update_room_availability before insert on room_housing for each row
begin
    if NEW.room_id in (select room_id, capacity, count(*) as patients_amount
              from room_housing
              join room r on room_housing.room_id = r.id
              group by room_id, capacity
              having patients_amount = capacity) then
        set
    end if;
end $$
delimiter ;


# drop trigger if exists already_inhabited;
# delimiter //
# create trigger trigger_on_insert before insert on room_housing for each row
# begin
#     if room_id in (select id
#                    from room
#                    where availability = 0) then
#         signal sqlstate '45000'
#             set message_text = 'The room has the maximum number of patients. Choose other room';
#     end if;
# end //
# delimiter ;

# insert into room_housing(id, patient_id, room_id, start_date, end_date) values (25, 1, 2, 2023-01-01, 2023-01-02);