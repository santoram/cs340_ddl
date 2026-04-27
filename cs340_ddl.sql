/*
CS340 Group Project
Team Name: The Join Identity
Business: Sugar Select
Assigment Part 1: Create a DDL file that imports on the database server used to host the CS340 DB
- Must be well structured, commented and hand-authored [SQL files preferred, dump exports acceptable]
- Must match schema on the report
- Example data shown in the report must be included in the file using INSERT statements 
- Use CASCADE methods as described to handle any instance of the PK value changed as a foreign key in another table
*/


-- disable commits and foreign key checks
SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT = 0;

-- Create Customers table
CREATE OR REPLACE TABLE Customers (
    customer_id int AUTO_INCREMENT,
    name varchar(145),
    email varchar(255),
    created_date datetime,
    PRIMARY KEY (customer_id)
);

-- Create Orders table
CREATE OR REPLACE TABLE Orders (
    order_id int AUTO_INCREMENT,
    created_date datetime,
    customer_id int,
    employee_id int,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees (employee_id)
);

-- Create Employees table
CREATE OR REPLACE TABLE Employees (
    employee_id int AUTO_INCREMENT,
    code smallint,
    name varchar(145),
    email varchar(255),
    PRIMARY KEY (employee_id)
);

-- Create Products table
CREATE OR REPLACE TABLE Products (
    product_id int AUTO_INCREMENT,
    name varchar(145),
    price decimal(6,2),
    quantity_on_hand smallint,
    PRIMARY KEY (product_id)
);

-- Create Order_Items table
CREATE OR REPLACE TABLE Order_Items (
    order_items_id int AUTO_INCREMENT,
    order_id int,
    product_id int,
    quantity tinyint,
    sale_price decimal(6,2),
    PRIMARY KEY (order_items_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- turn on commits and foreign key checks
SET FOREIGN_KEY_CHECKS=1;
COMMIT;