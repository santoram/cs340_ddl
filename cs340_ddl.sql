/*
CS340 Group Project
Team Name: The Join Identity
Business: Sugar Select
Assigment: Create a DDL file that imports on the database server used to host the CS340 DB
- Must be well structured, commented and hand-authored [SQL files preferred, dump exports acceptable]
- Must match schema on the report
- Example data shown in the report must be included in the file using INSERT statements 
- Use CASCADE methods as described to handle any instance of the PK value changed as a foreign key in another table
*/


-- disable commits and foreign key checks
SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT = 0;



-- turn on commits and foreign key checks
SET FOREIGN_KEY_CHECKS=1;
COMMIT;