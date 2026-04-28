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
    customer_id INT NOT NULL AUTO_INCREMENT,
    name varchar(145) NOT NULL,
    email varchar(255) NOT NULL,
    created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (customer_id),
    ON DELETE RESTRICT
);

-- Create Orders table
CREATE OR REPLACE TABLE Orders (
    order_id INT NOT NULL AUTO_INCREMENT,
    created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    customer_id INT NOT NULL,
    employee_id INT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees (employee_id),
    ON DELETE RESTRICT
);

-- Create Employees table
CREATE OR REPLACE TABLE Employees (
    employee_id INT NOT NULL AUTO_INCREMENT,
    code SMALLINT UNSIGNED NOT NULL UNIQUE,
    name varchar(145) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    PRIMARY KEY (employee_id),
    ON DELETE RESTRICT
);

-- Create Products table
CREATE OR REPLACE TABLE Products (
    product_id INT NOT NULL AUTO_INCREMENT,
    name varchar(145) NOT NULL,
    price decimal(6,2) NOT NULL,
    quantity_on_hand SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (product_id),
    ON DELETE RESTRICT
);

-- Create Order_Items table
CREATE OR REPLACE TABLE Order_Items (
    order_items_id INT NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity TINYINT NOT NULL,
    sale_price decimal(6,2) NOT NULL,
    PRIMARY KEY (order_items_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    ON DELETE RESTRICT
);

-- turn on commits and foreign key checks
SET FOREIGN_KEY_CHECKS=1;
COMMIT;