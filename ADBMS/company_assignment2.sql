use company;

#Write a query to display all the countries.
SELECT country_name FROM countries;

#Write a query to display specific columns like email and phone number for all the employees.
SELECT email, phone_number FROM employees;

#Write a query to display the data of employee whose last name is “Fay”.
SELECT * FROM employees WHERE last_name='Fay';

#Write a query to find the hire date for employees whose last name is “Grant” or “Whalen”
SELECT hire_date FROM employees WHERE last_name="Grant" OR last_name="Whalen";

#Write a query to display name of the employee who is PRESIDENT.
SELECT concat(first_name," ",last_name) as employee_name FROM employees where job_id=(SELECT job_id FROM jobs WHERE job_title="President");
#JOIN
SELECT employees.first_name,jobs.job_id from employees inner join jobs on employees.job_id=jobs.job_id WHERE job_title="President";

#Write a query to get all the employees who work for department 9.
SELECT concat(first_name," ",last_name) as employee_name FROM employees WHERE department_id=9;


#Write a query to display the departments in the descending order
SELECT * FROM Dept order by department_id desc;

#Write a query to display all the employees whose last name starts with “K”
SELECT concat(first_name," ",last_name) as employee_name FROM employees WHERE last_name LIKE 'K%';

#Display name of the employees whose hire dates are between 1995 and 1997.
SELECT concat(first_name," ",last_name) as employee_name FROM employees WHERE year(hire_date) BETWEEN 1995 and 1997;

#Write a query to display jobs where the maximum salary is less than 5000.
SELECT job_title FROM jobs WHERE max_salary<=5000;

#Write a query to display email address in lower case.
SELECT lower(email) from employees;

#Write a query to display name of the employees who were hired in 1995.
SELECT concat(first_name," ",last_name) as employee_name FROM employees WHERE year(hire_date) = 1995;

#Write a query to insert an employee “Paul Newton” in department 11.
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES(127,'Paul','Newton','paul@.org','65033234','1995-05-01',19,7900.00,100,5);
select * from employees;

#Write a query to delete the shipping department.
set sql_safe_updates=0;
delete from Dept where department_name="Shipping";
select * from Dept;

#Select employees hired on Thursday
SELECT * FROM employees WHERE dayname(hire_date)="Thursday";
