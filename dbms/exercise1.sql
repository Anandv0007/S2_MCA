create database exercise1;
use exercise1;
create table jobs(job_id varchar(20),job_title varchar(20),min_salary varchar(20),max_salary varchar(20));
ALTER TABLE jobs
ADD PRIMARY KEY (job_id);

alter table jobs
	modify job_title varchar(255);

CREATE TABLE regions (
	region_id varchar(20),
    region_name varchar(255),
    PRIMARY KEY (region_id)
    );

CREATE TABLE countries (
	country_id varchar(255),
    country_name varchar(255),
    region_id varchar(255),
    PRIMARY KEY (country_id)
    );
ALTER TABLE countries
ADD FOREIGN KEY(region_id) references regions(region_id);

CREATE TABLE locations (
		location_id varchar(255),
        street_address varchar(255),
        postal_code varchar(255),
        city varchar(255),
        state_province varchar(255),
        country_id varchar(255),
        PRIMARY KEY (location_id),
        FOREIGN KEY (country_id) REFERENCES countries(country_id)
        );
ALTER TABLE countries
	ADD FOREIGN KEY (region_id) REFERENCES regions(region_id);

CREATE TABLE employees (
	employee_id varchar(20),
    first_name varchar(20),
    last_name varchar(20),
    email varchar(20),
    phone_number varchar(20),
    hire_date varchar(20),
    job_id varchar(20),
    salary varchar(20),
    manager_id varchar(20),
    department_id varchar(255),
    PRIMARY KEY(employee_id),
    FOREIGN KEY(job_id) REFERENCES jobs(job_id),
    FOREIGN KEY(manager_id) REFERENCES employees(employee_id)
    );
    desc employees;
ALTER TABLE employees modify hire_date date;

CREATE TABLE dependents(
	dependent_id varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    relationship varchar(255),
    employee_id varchar(255),
    primary key (dependent_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
    );
    
CREATE TABLE departments (
	department_id varchar(255),
    department_name varchar(255),
    location_id varchar(255),
    PRIMARY KEY(department_id)
    );
    
ALTER TABLE employees
ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);


ALTER TABLE departments
RENAME TO dept;


INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES
(2,'Americas'); 
INSERT INTO regions(region_id,region_name)
VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East and
Africa');

INSERT INTO countries(country_id,country_name,region_id) VALUES
('AR','Argentina',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('AU','Australia',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('BE','Belgium',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES
('BR','Brazil',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CA','Canada',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('CH','Switzerland',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES
('CN','China',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('DE','Germany',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('DK','Denmark',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES
('EG','Egypt',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('FR','France',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('HK','HongKong',3);
INSERT INTO countries(country_id,country_name,region_id) VALUES
('IL','Israel',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IN','India',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('IT','Italy',1);
INSERT INTO countries(country_id,country_name,region_id) VALUES
('JP','Japan',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('KW','Kuwait',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('MX','Mexico',2);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('NG','Nigeria',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('NL','Netherlands',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('SG','Singapore',3);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('UK','United Kingdom',1);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('US','United States of America',2);
INSERT INTO countries(country_id,country_name,region_id) VALUES
('ZM','Zambia',4);
INSERT INTO countries(country_id,country_name,region_id)
VALUES ('ZW','Zimbabwe',4);
 
 
 
 
INSERT INTO 
locations(location_id,street_address,postal_code,city,state_province,
country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,
country_id) VALUES (1500,'2011 Interiors Blvd','99236','South San
Francisco','California','US');
INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,
country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,country_id)
 VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
 INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,country_id) 
VALUES (2500,'Magdalen Centre, The Oxford Science Park','OX9
9ZB','Oxford','Oxford','UK');
INSERT INTO
locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
 
 


INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(1,'Public Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (2,'Accounting Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (3,'Administration Assistant',3000.00,6000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (4,'President',20000.00,40000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (5,'Administration Vice President',15000.00,30000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (6,'Accountant',4200.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(7,'Finance Manager',8200.00,16000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(8,'Human Resources Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (9,'Programmer',4000.00,10000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (10,'Marketing Manager',9000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (11,'Marketing Representative',4000.00,9000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(12,'Public Relations Representative',4500.00,10500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (13,'Purchasing Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (14,'Purchasing Manager',8000.00,15000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(15,'Sales Manager',10000.00,20000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(16,'Sales Representative',6000.00,12000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary)
VALUES (17,'Shipping Clerk',2500.00,5500.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(18,'Stock Clerk',2000.00,5000.00);
INSERT INTO jobs(job_id,job_title,min_salary,max_salary) VALUES
(19,'Stock Manager',5500.00,8500.00);

desc jobs;
  select *from jobs;
  
  
use exercise1;
select *from jobs;


INSERT INTO
departments(department_id,department_name,location_id) VALUES
(1,'Administration',1700);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(2,'Marketing',1800);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(3,'Purchasing',1700);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(4,'Human Resources',2400);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(5,'Shipping',1500);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(6,'IT',1400);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(7,'Public Relations',2700);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(8,'Sales',2500);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(9,'Executive',1700);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(10,'Finance',1700);
INSERT INTO
departments(department_id,department_name,location_id) VALUES
(11,'Accounting',1700);

desc departments;
select * from employees;

INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17',4,24000.00,NULL,9);
#update employees set department_id=9 where employee_id=100;
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21',5,17000.00,100,9);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (102,'Lex','De
Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13',5,17000.00,100,9);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','
1990-01-03',9,9000.00,102,6);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21',9,6000.00,103,6);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25',9,4800.00,103,6);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(106,'Valli','Pataballa','valli.pataballa@sqltutorial.org','590.423.4560','1998-02-05',9,4800.00,103,6);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07',9,4200.00,103,6);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17',7,12000.00,101,10);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16',6,9000.00,108,10);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28',6,8200.00,108,10);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30',6,7700.00,108,10);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (112,'Jose
Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07',6,7800.00,108,10);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07',6,6900.00,108,10);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07',14,11000.00,100,3);
INSERT INTO
employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18',13,3100.00,114,3);

desc employees;

alter table employees
	modify email varchar(255);

   create table dependents(dependent_id varchar(255),first_name varchar(255),last_name varchar(255),relationship varchar(255),employee_id varchar(255)
   );
   


desc dependents;
select *from dependents




    
    
        
    
    
    
    
    
