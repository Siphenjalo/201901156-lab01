
/* Run following command :
     \i '<path>\\SampleScript2.sql' 	 
   can be executed from the postgreSQL shell. Separate folder names with \\
   Example:
   \i 'C:\\CSC311\\SampleScript2.sql'   
*/

-- Role: tisebenti
-- DROP ROLE tisebenti;
CREATE ROLE tisebenti LOGIN
  ENCRYPTED PASSWORD 'tisebenti'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL '2039-03-28 00:00:00';
  
  
/* drop database if it already exists */
--DROP DATABASE tisebenti;

/* Create a database */
CREATE DATABASE tisebenti;


/* connect to database hospital */   
\c tisebenti;


-- Schema: tisebenti
-- DROP SCHEMA tisebenti;

-- Schema: tisebenti

-- DROP SCHEMA tisebenti;

ALTER SCHEMA public RENAME TO tisebenti;


  
/* create table: EMPLOYEE 
codebook:
id - Employee Identity number (integer) 
firstname  - Employee firstname  (string)
lastname  - Employee lastname  (string) 
Key : {id}
*/

/* drop table if it already exists */
--DROP TABLE tisebenti.worker;

CREATE TABLE tisebenti.worker
(
  id integer NOT NULL,
  firstname character varying(255),
  lastname character varying(255),
  CONSTRAINT worker_pkey PRIMARY KEY (id)
);

/* insert records into tables */
BEGIN;

/* insert into EMPLOYEE table  */
	
INSERT INTO tisebenti.worker VALUES (101, 'Musa','Dlamini' );
INSERT INTO tisebenti.worker VALUES (202, 'Sizwe','Langa' );
INSERT INTO tisebenti.worker VALUES (303, 'Sean','Abra' );
INSERT INTO tisebenti.worker VALUES (115, 'Zweli','Gwebu' );
INSERT INTO tisebenti.worker VALUES (220, 'Brown','Angela' );
INSERT INTO tisebenti.worker VALUES (555, 'Masuku','Zodwa' );



COMMIT;

/* disconnect from created database */
\c postgres

