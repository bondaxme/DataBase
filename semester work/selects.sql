SELECT name, specialization FROM doctors
    WHERE doctor_id IN (SELECT doctor_id FROM patient_doctor);

SELECT name, contact FROM nurses
    WHERE nurse_id IN (
        SELECT nurse_id FROM doctor_nurse
        WHERE doctor_id IN (
            SELECT doctor_id FROM doctors
            WHERE specialization = 'Pediatrics'
        )
    );

SELECT room_number, type FROM rooms
    WHERE room_id NOT IN (SELECT room_id FROM patient_room);

SELECT equipment.name, equipment.type FROM equipment
    INNER JOIN room_equipment ON equipment.equipment_id = room_equipment.equipment_id
    INNER JOIN rooms ON room_equipment.room_id = rooms.room_id
    WHERE rooms.room_number = 101;

SELECT name, type FROM equipment
    WHERE equipment_id NOT IN (SELECT equipment_id FROM room_equipment);