# cs340_ddl
Data Definition Queries for CS340 Project

Contains a DDL.SQL file used to host your CS340 project database. 
 - Must be able to import and/or create tables as your Schema describes, using PHPMyAdmin or the MySQL command line client
 - Well-structured, commented, and hand-authored SQL files are preferred.
 - MySQL dump exports are also acceptable with team authored comments at the top of the file.
    - An example of this file is bsg_db.sql Download bsg_db.sqlgenerated using the mysqldump tool as described in Activity 5 - Backing up and Restoring your Database
- SQL matches the schema of the report
- All example data shown in the report needs to be included the .SQL file using INSERT statements
- Tables should have a primary key and foreign keys defined and reference the appropriate fields
- Uses CASCADE methods - MySQL Cascade to handle any instance of the PK value changed as a foreign key in another table
- Disables commits and foreign key checks at the beginning of your file, then revert at the end to minimize import errors
  - For example:
    - SET FOREIGN_KEY_CHECKS=0;
    - SET AUTOCOMMIT = 0;
    - ... [your SQL goes here]
    - SET FOREIGN_KEY_CHECKS=1;
    - COMMIT;
- Uses DROP TABLE IF EXISTS prior to any create table statements or uses the CREATE OR REPLACE TABLE statement to minimize import errors.
