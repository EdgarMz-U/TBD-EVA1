PARA EMPLOYEE

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/human_res/employee.csv'
INTO TABLE employee
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_employee, name_prefix, first_name, middle_initial, last_name, gender, date_of_birth, weight_kg, ssn);

select * from employee;

PARA CITY

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/human_res/city.csv'
INTO TABLE city
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_city, city, county, state, zip, region, id_employee);

select * from city;

PARA CONTACT:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/human_res/contact.csv'
INTO TABLE contact
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(contact_id, email, phone, id_employee);

select * from city;

PARA PARENT:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/human_res/parent.csv'
INTO TABLE parent
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_parent, name_father, last_name_father, name_mother, last_name_mother, id_employee);

select * from parent;

PARA JOB:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/human_res/job.csv'
INTO TABLE job
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_job, date_join, salary, last_por_hike, id_employee);

select * from job;

PARA SECUTIRY:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/human_res/security.csv'
INTO TABLE security
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_security,username, password, id_employee);

select * from security;

