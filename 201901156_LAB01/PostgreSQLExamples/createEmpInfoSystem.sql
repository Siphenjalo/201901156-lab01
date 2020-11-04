
/* Run following command :
     \i '<path>\\createEmpInfoSystem.sql' 	 
   can be executed from the postgreSQL shell. Separate folder names with \\
   Example:
   \i 'C:\\CSC311\\createEmpInfoSystem.sql'   
*/

-- Role: employeeinformationsystem
-- DROP ROLE employeeinformationsystem;
CREATE ROLE employeeinformationsystem LOGIN
  ENCRYPTED PASSWORD 'employeeinformationsystem'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL '2039-03-28 00:00:00';
  
  
/* drop database if it already exists */
--DROP DATABASE employeeinformationsystem;

/* Create a database */
CREATE DATABASE employeeinformationsystem;


/* connect to database hospital */   
\c employeeinformationsystem;


-- Schema: employeeinformationsystem
-- DROP SCHEMA employeeinformationsystem;

-- Schema: employeeinformationsystem

-- DROP SCHEMA employeeinformationsystem;

ALTER SCHEMA public RENAME TO employeeinformationsystem;



COMMIT;

/* disconnect from created database */
\c postgres

