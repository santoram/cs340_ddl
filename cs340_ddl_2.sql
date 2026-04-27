/*
CS340 Group Project
Team Name: The Join Identity
Business: Sugar Select
Assigment Part 2 Create a DDL file that imports on the database server used to host the CS340 DB
- Must be well structured, commented and hand-authored [SQL files preferred, dump exports acceptable]
- Must match schema on the report
- Example data shown in the report must be included in the file using INSERT statements 
- Use CASCADE methods as described to handle any instance of the PK value changed as a foreign key in another table
*/


-- Insert test data into Customers table
INSERT INTO Customers (name, email, created_date)
VALUES
("Jordan Smith", "jsmith@stateu.edu", "2026-02-10"),
("Eleanor Rigby", "erigby@outlook.com", "2026-02-12"),
("Michael Scott", "mscott@dunder.com", "2026-02-15"),
("Brianna Lee", "blee@college.edu", "2026-02-18"),
("Arthur Morgan", "amorgan@outlaw.net", "2026-02-20"),
("Clara Oswald", "coswald@traveler.com", "2026-02-25"),
("Steven Rogers", "srogers@shield.gov", "2026-03-01"),
("Monica Geller", "mgeller@chef.net", "2026-03-03"),
("Peter Parker", "pparker@dailybugle.com", "2026-03-05"),
("Diana Prince", "dprince@museum.org", "2026-03-08"),
("Bruce Wayne", "bwayne@wayneent.com", "2026-03-10"),
("Leslie Knope", "lknope@pawnee.gov", "2026-03-12"),
("Ron Swanson", "rswanson@wood.com", "2026-03-14"),
("Liz Lemon", "llemon@nbc.com", "2026-03-16"),
("Tyrion Lannister", "tlannister@casterly.com", "2026-03-20"),
("Walter White", "wwhite@chem.edu", "2026-03-22"),
("Arya Stark", "astark@winterfell.net", "2026-03-25"),
("Tony Stark", "tstark@stark.com", "2026-03-28"),
("Pam Beesly", "pamb@dmpaper.com", "2026-04-01"),
("Jim Halpert", "jhalpert@dmpaper.com", "2026-04-02"),
("Nancy Drew", "ndrew@mysteries.com", "2026-04-05"),
("Katniss Everdeen", "keverdeen@district12.org", "2026-04-10"),
("Sherlock Holmes", "sholmes@bakerst.co.uk", "2026-04-15"),
("Matilda Wormwood", "mwormwood@library.com", "2026-04-20"),
("Harry Potter", "hpotter@hogwarts.ac.uk", "2026-04-25")
;

-- Insert test data into Employees table
INSERT INTO Employees (code, name, email)
VALUES
(1001, "Elena Vance", "elena.v@sugarselect.com"),
(1002, "Marcus Thorne", "marcus.t@sugarselect.com"),
(1003, "Sarah Jenkins", "sarah.j@sugarselect.com"),
(1004, "David Wu", "david.w@sugarselect.com"),
(1005, "Chloe Miller", "chloe.m@sugarselect.com"),
(1006, "Robert Frost", "robert.f@sugarselect.com"),
(1007, "Anita Desai", "anita.d@sugarselect.com"),
(1008, "Kevin Hartly", "kevin.h@sugarselect.com"),
(1009, "Lucia Rossi", "lucia.r@sugarselect.com"),
(1010, "Sam Rivera", "sam.r@sugarselect.com")
;

-- Insert test data into Products table
INSERT INTO Products (name, price, quantity_on_hand)
VALUES
("Signature Gummy Bears", 8.5, 150),
("Sour Neon Worms", 7.25, 200),
("Artisan Dark Chocolate Truffle", 4.5, 80),
("Sea Salt Caramel Truffle", 4.5, 95),
("Champagne Infused Truffle", 5.5, 60),
("Raspberry Ganache Square", 3.75, 120),
("Hand-Pulled Peppermint Stick", 5, 45),
("Bourbon Vanilla Toffee (Box)", 18, 30),
("Honeycomb Lavender Crunch", 12.5, 40),
("Rose Petal Turkish Delight", 15, 25),
("Espresso Bean Bark (Dark)", 10, 55),
("Chili Lime Mango Gummies", 9, 110),
("Old Fashioned Rock Candy", 4.25, 180),
("Gourmet Malted Milk Balls", 11, 70),
("Pistachio Praline", 6, 50),
("Violet Sugar Violets", 14, 20),
("Blue Raspberry Sour Belts", 6.5, 250),
("Peach Rings (Premium)", 8, 140),
("Gold Leaf Chocolate Bar", 25, 15),
("Candied Ginger Strips", 10.5, 65),
("Marzipan Fruit Shapes", 12, 35),
("Salted Licorice Twists", 7.5, 90),
("Black Forest Cherry Bark", 13, 40),
("Maple Sugar Leaves", 9.5, 55),
("Lemon Drop Hard Candy", 5, 300),
("Peppermint Patties (Handmade)", 3.5, 100),
("Macadamia Nut Cluster", 5.5, 85),
("Watermelon Slices (Gummy)", 7.5, 160),
("Earl Grey Infused Chocolate", 11.5, 45),
("Sugared Almonds (Gift Tin)", 22, 20),
("Red Velvet Cake Bites", 4, 75),
("Coconut Lime Bonbons", 4.25, 90),
("Passionfruit Hearts", 4.75, 60),
("Cinnamon Hot Rocks", 6, 130),
("Marshmallow Clouds", 8.5, 50)
;

-- Insert test data into Orders table
INSERT INTO Orders (created_date, customer_id, employee_id)
VALUES
(
    "2026-04-10", 
    (SELECT customer_id FROM Customers WHERE name = "Jordan Smith"),
    (SELECT employee_id FROM Employees WHERE code = 1003)
),
(
    "2026-04-11",
    (SELECT customer_id FROM Customers WHERE name = "Bruce Wayne"),
    (SELECT employee_id FROM Employees WHERE code = 1009)
),
(
    "2026-04-11",
    (SELECT customer_id FROM Customers WHERE name = "Brianna Lee"),
    (SELECT employee_id FROM Employees WHERE code = 1005)
),
(
    "2026-04-12",
    (SELECT customer_id FROM Customers WHERE name = "Tony Stark"),
    (SELECT employee_id FROM Employees WHERE code = 1001)
),
(
    "2026-04-12",
    (SELECT customer_id FROM Customers WHERE name = "Monica Geller"),
    (SELECT employee_id FROM Employees WHERE code = 1002)
),
(
    "2026-04-13",
    (SELECT customer_id FROM Customers WHERE name = "Ron Swanson"),
    (SELECT employee_id FROM Employees WHERE code = 1004)
),
(
    "2026-04-14",
    (SELECT customer_id FROM Customers WHERE name = "Tyrion Lannister"),
    (SELECT employee_id FROM Employees WHERE code = 1008)
)
;

-- Insert test data into Order_Items table


