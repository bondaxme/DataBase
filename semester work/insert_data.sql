INSERT INTO patients (name, age, gender, contact) VALUES
    ('John Smith', 30, 'M', 'johnsmith@email.com'),
    ('Jane Doe', 25, 'F', 'janedoe@email.com'),
    ('Bob Johnson', 40, 'M', 'bobjohnson@email.com');

INSERT INTO doctors (name, specialization, contact) VALUES
    ('Dr. Alice Smith', 'Cardiology', 'alicesmith@email.com'),
    ('Dr. Bob Johnson', 'Surgery', 'bobjohnson@email.com'),
    ('Dr. Jane Doe', 'Internal Medicine', 'janedoe@email.com');

INSERT INTO nurses (name, specialization, contact) VALUES
    ('Nurse Alice Smith', 'Cardiology', 'alicesmith@email.com'),
    ('Nurse Bob Johnson', 'Surgery', 'bobjohnson@email.com'),
    ('Nurse Jane Doe', 'Internal Medicine', 'janedoe@email.com');

INSERT INTO departments (name, location) VALUES
    ('Cardiology', 'Building A'),
    ('Surgery', 'Building B'),
    ('Internal Medicine', 'Building C');

INSERT INTO rooms (room_number, type, capacity) VALUES
    (101, 'Private', 1),
    (102, 'Semi-private', 2),
    (103, 'Private', 1);

INSERT INTO equipment (name, type) VALUES
    ('Heart monitor', 'Medical'),
    ('Surgical table', 'Medical'),
    ('IV stand', 'Medical');

INSERT INTO patient_doctor (patient_id, doctor_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO doctor_nurse (doctor_id, nurse_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO patient_room (patient_id, room_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO room_equipment (room_id, equipment_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);