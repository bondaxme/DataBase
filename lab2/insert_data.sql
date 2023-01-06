INSERT INTO company (company_name, employees_amount, shopping_centers_amount) VALUE ('Rent Company', 40, 15);

INSERT INTO employee (first_name, last_name, phone_number, address, sex, passport_number) VALUES
    ('Rab', 'Le Noir', '322-469-3562', '83077 Stephen Place', 'M', 3906861183025),
    ('Allison', 'Starr', '665-746-2012', '1 Cascade Crossing', 'F', 4707427561050),
    ('Marten', 'Lowdwell', '520-644-8138', '63104 Ohio Terrace', 'M', 1420089691687),
    ('Aviva', 'Kensett', '216-850-4727', '665 Sycamore Plaza', 'F', 7061338479382),
    ('Fredelia', 'Matzen', '595-926-1460', '23695 Luster Lane', 'F', 6888180936852),
    ('Therese', 'Greetham', '957-350-1146', '696 Banding Crossing', 'F', 2256649432780),
    ('Dore', 'Mellonby', '348-510-9742', '48883 Esch Parkway', 'M', 5684351824045),
    ('Lian', 'Blabie', '754-998-2510', '5 Straubel Parkway', 'F', 9115649578243),
    ('Mirabella', 'Brotherheed', '153-225-8170', '58558 Tony Court', 'F', 6927581861442),
    ('Dorolice', 'Row', '988-350-1117', '5 Sundown Crossing', 'F', 2039355653743),
    ('Nils', 'Cloke', '411-718-3838', '4583 Pierstorff Pass', 'M', 1152743562617),
    ('Maximo', 'Crimin', '393-489-7831', '95 Meadow Vale Alley', 'M', 1511329861788),
    ('Godiva', 'Van de Vlies', '178-885-1232', '98741 Towne Trail', 'F', 2371489412068),
    ('Jolene', 'Gulvin', '188-527-4403', '4944 Lukken Junction', 'F', 6903105877735),
    ('Caria', 'Sute', '159-707-3802', '4375 Jay Point', 'F', 2534608810137);

INSERT INTO contract (company_id, employee_id, salary, position, start_date, end_date) VALUES
    (1, 1, 5000, 'Manager', '2022-01-01', '2022-12-31'),
    (1, 2, 4000, 'Assistant Manager', '2022-01-01', '2022-12-31'),
    (1, 3, 3000, 'Sales Representative', '2022-01-01', '2022-12-31'),
    (1, 4, 2500, 'Cashier', '2022-01-01', '2022-12-31'),
    (1, 5, 2000, 'Security Guard', '2022-01-01', '2022-12-31'),
    (1, 6, 3500, 'Cleaning Staff', '2022-01-01', '2022-12-31'),
    (1, 7, 4500, 'IT Technician', '2022-01-01', '2022-12-31'),
    (1, 8, 3500, 'Marketing Manager', '2022-01-01', '2022-12-31'),
    (1, 9, 4000, 'Human Resources Manager', '2022-01-01', '2022-12-31'),
    (1, 10, 3000, 'Receptionist', '2022-01-01', '2022-12-31'),
    (1, 11, 2500, 'Facility Manager', '2022-01-01', '2022-12-31'),
    (1, 12, 2000, 'Customer Service Representative', '2022-01-01', '2022-12-31'),
    (1, 13, 3500, 'Inventory Manager', '2022-01-01', '2022-12-31'),
    (1, 14, 4500, 'Accountant', '2022-01-01', '2022-12-31'),
    (1, 15, 3500, 'Legal Representative', '2022-01-01', '2022-12-31');


INSERT INTO shopping_center (company_id, `name`, address, manager_name, employees_amount, retail_outlet_amount) VALUES
    (1, 'Sunny Mall', '123 Main Street', 'John Smith', 100, 50),
    (1, 'Bright Plaza', '456 Market Road', 'Jane Doe', 150, 75),
    (1, 'Lively Market', '789 Center Boulevard', 'Tom Jones', 200, 100),
    (1, 'Happy Mall', '246 Park Avenue', 'Sara Johnson', 250, 125),
    (1, 'Vibrant Plaza', '369 Fifth Avenue', 'Mike Williams', 300, 150),
    (1, 'Cheerful Mall', '159 Sixth Street', 'Emily Davis', 350, 175),
    (1, 'Energetic Plaza', '753 Eighth Avenue', 'Chris Anderson', 400, 200),
    (1, 'Lively Market', '951 Ninth Road', 'Jessica Thompson', 450, 225),
    (1, 'Bright Mall', '147 Tenth Boulevard', 'Andrew Brown', 500, 250),
    (1, 'Sunny Plaza', '753 Eleventh Avenue', 'Sarah Smith', 550, 275),
    (1, 'Happy Mall', '369 Twelfth Street', 'Michael Johnson', 600, 300),
    (1, 'Vibrant Plaza', '159 Thirteenth Avenue', 'Emily Williams', 650, 325),
    (1, 'Cheerful Market', '951 Fourteenth Road', 'Christopher Davis', 700, 350),
    (1, 'Energetic Mall', '147 Fifteenth Boulevard', 'Jessica Anderson', 750, 375),
    (1, 'Lively Plaza', '753 Sixteenth Avenue', 'Andrew Thompson', 800, 400);

INSERT INTO retail_outlet (shopping_center_id, floor, area, air_conditioning, daily_rent_price, availability) VALUES
    (1, 1, 50, TRUE, 150, TRUE),
    (1, 2, 60, TRUE, 200, FALSE),
    (1, 3, 70, TRUE, 250, TRUE),
    (1, 4, 80, FALSE, 300, TRUE),
    (1, 5, 90, FALSE, 350, TRUE),
    (2, 1, 40, TRUE, 125, FALSE),
    (2, 2, 50, TRUE, 175, TRUE),
    (2, 3, 60, TRUE, 225, TRUE),
    (2, 4, 70, TRUE, 275, TRUE),
    (2, 5, 80, TRUE, 325, FALSE),
    (3, 1, 30, FALSE, 100, TRUE),
    (3, 2, 40, TRUE, 150, TRUE),
    (3, 3, 50, TRUE, 200, TRUE),
    (3, 4, 60, FALSE, 250, FALSE),
    (3, 5, 70, TRUE, 300, TRUE);

INSERT INTO client (first_name, last_name, address, phone_number, payment_card_number)
VALUES
    ('Gary', 'McGibbon', '642 Oriole Parkway', '247-135-0085', '4017952389224119'),
    ('Linell', 'Febry', '8 Mccormick Place', '799-183-2299', '5100145025492795'),
    ('Tye', 'Krout', '3 Amoth Point', '788-162-2457', '5148690470605973'),
    ('Rosaline', 'McDonell', '68664 Meadow Valley Hill', '450-760-6316', '5100170672804142'),
    ('Brian', 'Sprowle', '48265 Dovetail Circle', '720-832-3718', '4041376596902301'),
    ('Samuel', 'Truran', '37669 Maple Alley', '498-284-6245', '4228472861759'),
    ('Julita', 'Moxon', '58539 Harper Center', '574-461-1121', '5560748698944993'),
    ('Dolorita', 'Growcock', '088 Jana Park', '274-112-7010', '5594929546020455'),
    ('Alisa', 'Dekeyser', '912 Express Crossing', '909-930-0687', '4254398459130'),
    ('Bo', 'Triplow', '4 Sunbrook Parkway', '452-251-3238', '5253192530265436'),
    ('Janie', 'Bocock', '993 Lake View Park', '128-925-6595', '4041597957745'),
    ('Farrell', 'Duguid', '71977 Kensington Street', '736-947-0040', '5336768852310974'),
    ('Pauly', 'MacFayden', '10 Melby Lane', '200-978-1526', '5100173873442035'),
    ('Fifi', 'Crunkhurn', '32232 Sunnyside Way', '921-155-5594', '4017950797043'),
    ('Perrine', 'Tatlowe', '5 Holy Cross Way', '178-875-0410', '5231692712763055');

INSERT INTO treaty (client_id, retail_outlet_id, start_date, end_date) VALUES
    (1, 1, '2022-01-01', '2022-01-31'),
    (2, 2, '2022-02-01', '2022-02-28'),
    (3, 3, '2022-03-01', '2022-03-31'),
    (4, 4, '2022-04-01', '2022-04-30'),
    (5, 5, '2022-05-01', '2022-05-31'),
    (6, 6, '2022-06-01', '2022-06-30'),
    (7, 7, '2022-07-01', '2022-07-31'),
    (8, 8, '2022-08-01', '2022-08-31'),
    (9, 9, '2022-09-01', '2022-09-30'),
    (10, 10, '2022-10-01', '2022-10-31'),
    (11, 11, '2022-11-01', '2022-11-30'),
    (12, 12, '2022-12-01', '2022-12-31'),
    (13, 13, '2023-01-01', '2023-01-31'),
    (14, 14, '2023-02-01', '2023-02-28'),
    (15, 15, '2023-03-01', '2023-03-31');

INSERT INTO monthly_payments (client_id, amount_of_payment, month) VALUES
    (1, 300, 'January'),
    (2, 250, 'February'),
    (3, 200, 'March'),
    (4, 150, 'April'),
    (5, 100, 'May'),
    (6, 250, 'June'),
    (7, 300, 'July'),
    (8, 350, 'August'),
    (9, 400, 'September'),
    (10, 450, 'October'),
    (11, 500, 'November'),
    (12, 550, 'December'),
    (13, 600, 'January'),
    (14, 650, 'February'),
    (15, 700, 'March');