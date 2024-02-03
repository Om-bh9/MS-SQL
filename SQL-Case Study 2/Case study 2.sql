create database casestudy2;

use casestudy2;

create table location(
    location_id INT PRIMARY KEY,
    city varchar(50)
);

INSERT INTO location (location_id, city)
VALUES
    (122, 'New York'),
    (123, 'Dallas'),
    (124, 'Chicago'),
    (167, 'Boston');


create table department(
    department_id INT PRIMARY KEY,
    name varchar(50),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

INSERT INTO department (department_id, Name, location_id)
VALUES
    (10, 'Accounting', 122),
    (20, 'Sales', 124),
    (30, 'Research', 123),
    (40, 'Operations', 167);


create table job(
    job_id int PRIMARY KEY,
    designation varchar(50)
);

INSERT INTO job (job_id, designation)
VALUES
    (667, 'Clerk'),
    (668, 'Staff'),
    (669, 'Analyst'),
    (670, 'Sales Person'),
    (671, 'Manager'),
    (672, 'President');


create table employee(
    emp_id INT PRIMARY KEY,
    lastname varchar(50),
    firstname varchar(50),
    middlename varchar(50),
    job_id int,
    hiredate DATE,
    salary decimal(10,2),
    comm decimal(10,2),
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES job(job_id),
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

INSERT INTO employee (emp_id, lastname, firstname, middlename, job_id, hiredate, salary, comm, department_id)
VALUES
    (7369, 'Smith', 'John', 'Q', 667, '1984-12-17', 800.00, NULL, 20),
    (7499, 'Allen', 'Kevin', 'J', 670, '1985-02-20', 1600.00, 300.00, 30),
    (755, 'Doyle', 'Jean', 'K', 671, '1985-04-04', 2850.00, NULL, 30),
    (756, 'Dennis', 'Lynn', 'S', 671, '1985-05-15', 2750.00, NULL, 30),
    (757, 'Baker', 'Leslie', 'D', 671, '1985-06-10', 2200.00, NULL, 40),
    (7521, 'Wark', 'Cynthia', 'D', 670, '1985-02-22', 1250.00, 500.00, 30);


-- Simple Queries:

-- 1. List all the employee details. 

select * from employee;

-- 2. List all the department details. 

select * from department;

-- 3. List all job details. 

select * from job;

-- 4. List all the locations. 

select * from [location];

-- 5. List out the First Name, Last Name, Salary, Commission for allEmployees. 

select firstname, lastname, salary, comm from employee;

-- 6. List out the Employee ID, Last Name, Department ID for all employees and alias
-- Employee ID as "ID of the Employee", Last Name as "Name of theEmployee", Department ID as "Dep_id".

select emp_id as "ID of the Employee", lastname as "Name of the Employee", department_id as "Dept_id" from employee;

-- 7. List out the annual salary of the employees with their names only 

select firstname + ' ' + lastname as "Name", 12 * salary from employee;


--  WHERE Condition:

-- 1. List the details about "Smith". 

select * from employee where lastname = 'Smith';

-- 2. List out the employees who are working in department 20. 

select * from employee where department_id = 20;

-- 3. List out the employees who are earning salaries between 3000 and 4500. 

select * from employee where salary BETWEEN 3000 and 4500;

-- 4. List out the employees who are working in department 10 or 20. 

select * from employee where department_id = 10 or department_id = 20;

-- 5. Find out the employees who are not working in department 10 or 30. 

select * from employee where department_id != 10 and department_id != 30;

-- 6. List out the employees whose name starts with 'S'.

select * from employee where firstname LIKE 'S%' or lastname like 'S%';

-- 7. List out the employees whose name starts with 'S' and ends with'H'. 

select * from employee where (lastname like 'S%' and lastname like '%H') 
    or (firstname like 'S%' and firstname like '%H')

-- 8. List out the employees whose name length is 4 and start with 'S'. 

select * from employee where (len(lastname) = 4 and lastname like 'S%')
 or (len(firstname) = 4 and firstname like 'S%');

-- 9. List out employees who are working in department 10 and draw salaries more than 3500. 

select lastname, firstname, department_id, salary from employee where department_id = 10 and salary > 3500;

-- 10. List out the employees who are not receiving commission.

select lastname, firstname from employee where comm is NULL;



-- ORDER BY Clause:

-- 1. List out the Employee ID and Last Name in ascending order based on the Employee ID. 

select emp_id, lastname from employee order by emp_id ASC;

-- 2. List out the Employee ID and Name in descending order based on salary.

select emp_id, firstname, lastname, salary from employee order by salary desc;

-- 3. List out the employee details according to their Last Name in ascending-order.

select * from employee order by lastname desc;

-- 4. List out the employee details according to their Last Name in ascending order and then Department ID in descending order.

select * from employee ORDER by lastname asc, department_id desc;


-- GROUP BY and HAVING Clause:

-- 1. How many employees are in different departments in the organization?

select count(emp_id), department_id from employee GROUP BY department_id;

-- 2. List out the department wise maximum salary, minimumsalary andaverage salary of the employees. 

select d.name, MAX(e.salary) as 'Max salary', MIN(e.salary) as 'Min Salary', avg(e.salary) as 'Avg Salary' 
from employee e inner join department d on e.department_id = d.department_id
group by d.name;

-- 3. List out the job wise maximum salary, minimum salary and averagesalary of the employees. 

select j.designation, MAX(e.salary) as 'Max salary', MIN(e.salary) as 'Min Salary', avg(e.salary) as 'Avg Salary'
from employee e inner join job j on e.job_id = j.job_id
group by j.designation;

-- 4. List out the number of employees who joined each month in ascending order.

select hiredate, count(emp_id) as 'No of employees joined'
from employee
group by hiredate order by hiredate asc;

-- 5. List out the number of employees for each month and year in ascending order based on the year and month. 

select YEAR(hiredate) as Hire_year, MONTH(hiredate) as Hire_month, count(*) as Emp_count
from employee
group by YEAR(hiredate), MONTH(hiredate)
order by Hire_year ASC, Hire_month ASC;

-- 6. List out the Department ID having at least four employees. 

select department_id, count(emp_id) as emp_count
from employee
GROUP BY department_id 
having count(emp_id) > 3;

-- 7. How many employees joined in the month of January?

select MONTH(hiredate) as 'Month_number', count(emp_id) as 'EMP_Count' from employee group by MONTH(hiredate) having month(hiredate) = 1;

-- 8. How many employees joined in the month of January or September?

select month(hiredate) as 'Month_number', count(emp_id) as 'Emp_count' from employee group by MONTH(hiredate) having month(hiredate) = 1 or month(hiredate) = 9;

-- 9. How many employees joined in 1985?

select count(emp_id) as "Emp_Count" from employee where year(hiredate) = 1985;

-- 10. How many employees joined each month in 1985?

select month(hiredate) as 'Month Number', count(emp_id) as 'Emp Count' from employee where year(hiredate) = 1985 group by month(hiredate);

-- 11. How many employees joined in March 1985?

select month(hiredate) as 'Month Number', count(emp_id) as 'Emp Count' from employee where month(hiredate) = 3 and year(hiredate) = 1985 group by month(hiredate);

-- 12. Which is the Department ID having greater than or equal to 3 employees joining in April 1985?

select department_id from employee where year(hiredate) = 1985 and month(hiredate) = 4 group by department_id having count(emp_id) >= 3;




-- Joins:
-- 1. List out employees with their department names. 

select e.emp_id, e.lastname, e.firstname, e.hiredate, e.salary, d.name as 'Department Name'
from employee e 
inner join department d 
on e.department_id = d.department_id;

-- 2. Display employees with their designations. 

select e.firstname +' '+e.lastname as 'Employee Name', j.designation
from employee e
inner join job j 
on e.job_id = j.job_id;

-- 3. Display the employees with their department names and regional groups. 

select e.firstname +' '+e.lastname as 'Employee Name', d.name as 'Department Name', l.city as 'Regional Group'
from employee e
inner join department d on e.department_id = d.department_id
inner join [location] l on d.location_id = l.location_id;

-- 4. How many employees are working in different departments? Display with department names. 

select d.name as 'Department Name', count(e.emp_id) as 'Employee Count'
from employee e 
inner join department d on e.department_id = d.department_id
group by d.name;

-- 5. How many employees are working in the sales department?

select d.name as 'Department Name', count(e.emp_id) as 'Employee Count'
from employee e 
inner join department d on e.department_id = d.department_id
where d.name = 'Sales'
group by d.name;

-- 6. Which is the department having greater than or equal to 5 employees? Display the department 
-- names in ascending order. 

select d.name as 'Department Name', count(e.emp_id)
from employee e 
inner join department d 
on e.department_id = d.department_id
group by d.name
having count(e.emp_id) >= 5
order by d.name ASC;

-- 7. How many jobs are there in the organization? Display with designations. 

select j.designation, count(e.emp_id) as 'Employee Count'
from job j 
full join employee e 
on j.job_id = e.job_id
group by j.designation;

-- 8. How many employees are working in "New York"?

select count(e.emp_id)
from employee e 
inner join department d on e.department_id = d.department_id
inner join [location] l on d.location_id = l.location_id
where l.city = 'New York';

-- 9. Display the employee details with salary grades. Use conditional statement to create a grade column. 

SELECT 
    firstname + ' ' + lastname AS 'Employee Name',
    CASE
        WHEN salary < 1500 THEN 'Low Salary'
        WHEN salary BETWEEN 1500 AND 2500 THEN 'Medium Salary'
        WHEN salary > 2500 THEN 'High Salary'
    END AS 'Grade'
FROM employee;


-- 10. List out the number of employees grade wise. Use conditional statementtocreate a grade column. 

SELECT
    CASE
        WHEN salary < 1500 THEN 'Low Salary'
        WHEN salary BETWEEN 1500 AND 2500 THEN 'Medium Salary'
        WHEN salary > 2500 THEN 'High Salary'
    END AS 'Grade',
    COUNT(*) AS 'Number of Employees'
FROM employee
GROUP BY
    CASE
        WHEN salary < 1500 THEN 'Low Salary'
        WHEN salary BETWEEN 1500 AND 2500 THEN 'Medium Salary'
        WHEN salary > 2500 THEN 'High Salary'
    END;


-- 11.Display the employee salary grades and the number of employees between 2000 to 5000 range of salary.

SELECT
    CASE
        WHEN salary >= 2000 AND salary <= 5000 THEN '2000-5000'
        ELSE 'Other'
    END AS 'Salary Grade',
    COUNT(*) AS 'Number of Employees'
FROM employee
WHERE salary BETWEEN 2000 AND 5000
GROUP BY
    CASE
        WHEN salary >= 2000 AND salary <= 5000 THEN '2000-5000'
        ELSE 'Other'
    END;


-- 12. Display all employees in sales or operation departments.

select * from employee e 
inner join department d 
on e.department_id = d.department_id
where d.name = 'Sales' or d.name = 'Operations'

-- SET Operators:
-- 1. List out the distinct jobs in sales and accounting departments. 

SELECT designation
FROM job
WHERE job_id IN (
    SELECT DISTINCT job_id
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'Sales'
    )
)
UNION
SELECT designation
FROM job
WHERE job_id IN (
    SELECT DISTINCT job_id
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'Accounting'
    )
);


-- 2. List out all the jobs in sales and accounting departments. 


SELECT designation
FROM job
WHERE job_id IN (
    SELECT job_id
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'Sales'
    )
)
UNION ALL
SELECT designation
FROM job
WHERE job_id IN (
    SELECT job_id
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'Accounting'
    )
);


-- 3. List out the common jobs in research and accounting departments in ascending order.

SELECT designation
FROM job
WHERE job_id IN (
    SELECT job_id
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'Research'
    )
)
INTERSECT
SELECT designation
FROM job
WHERE job_id IN (
    SELECT job_id
    FROM employee
    WHERE department_id = (
        SELECT department_id
        FROM department
        WHERE name = 'Accounting'
    )
)
ORDER BY designation ASC;


-- Subqueries:
-- 1. Display the employees list who got the maximum salary

select * from employee
where salary = (select MAX(salary) from employee);

-- 2. Display the employees who are working in the sales department. 

select * from employee where department_id = (select department_id from department where name = 'Sales')

-- 3. Display the employees who are working as 'Clerk'. 

select * from employee where job_id = (select job_id from job where designation = 'Clerk')

-- 4. Display the list of employees who are living in "New York". 

select * from employee e 
where department_id = (select department_id from department where location_id = (select location_id from [location] where city = 'New York'))

-- 5. Find out the number of employees working in the sales department. 

select COUNT(emp_id) as 'Emp Count' from employee
where department_id = (select department_id from department where name = 'Sales')

-- 6. Update the salaries of employees who are working as clerks on the basis of 10%. 

UPDATE employee
SET salary = salary * 1.1
WHERE job_id = (
    SELECT job_id
    FROM job
    WHERE designation = 'Clerk'
);

-- 7. Delete the employees who are working in the accounting department. 

DELETE FROM employee
WHERE department_id = (
    SELECT department_id
    FROM department
    WHERE name = 'Accounting'
);

-- 8. Display the second highest salary drawing employee details. 

SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM employee
    )
);

-- 9. Display the nth highest salary drawing employee details. 

WITH RankedSalaries AS (
    SELECT
        emp_id,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS SalaryRank
    FROM
        employee
)
SELECT
    emp_id,
    salary
FROM
    RankedSalaries
WHERE
    SalaryRank = 2;

-- 10. List out the employees who earn more than every employee in department 30.

SELECT *
FROM employee
WHERE salary > ALL (
    SELECT salary
    FROM employee
    WHERE department_id = 30
);

-- 11. List out the employees who earn more than the lowest salary in department. Find out whose department has no employees
SELECT *
FROM employee e1
WHERE salary > (
    SELECT MIN(salary)
    FROM employee e2
    WHERE e1.department_id = e2.department_id
);

SELECT d.department_id, d.name AS department_name
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
WHERE e.department_id IS NULL;


-- 12. Find out which department has no employees. 

SELECT d.department_id, d.name AS department_name
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
WHERE e.department_id IS NULL;

-- 13. Find out the employees who earn greater than the average salary for their department.

SELECT *
FROM employee e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employee e2
    WHERE e1.department_id = e2.department_id
);