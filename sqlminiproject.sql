create database company_management;
use company_management;
create table department(dept_id	INT PRIMARY KEY,dept_name VARCHAR(50) UNIQUE,location VARCHAR(50) DEFAULT 'hyd');
create table employees(emp_id INT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
age	INT CHECK(age >= 18),
salary DECIMAL(10,2),
city VARCHAR(50)default 'hyd',
joining_date DATE );
INSERT INTO department VALUES
(1, 'IT','hyd'),
(2, 'HR','chennai'),
(3, 'Finance','pune'),
(4, 'Marketing','mumbai'),
(5, 'Operations','kerala');
INSERT INTO employees
(emp_id, emp_name, email, age, salary, city,joining_date)
VALUES
(101, 'Anitha', 'anitha101@gmail.com', 22, 55000.00, 'Hyderabad', '2024-01-15'),
(102, 'Karthik', 'karthik102@gmail.com', 24, 45000.00, 'Bangalore','2023-06-10'),
(103, 'Rahul', 'rahul103@gmail.com', 27, 60000.00, 'Chennai','2022-08-20'),
(104, 'Priya', 'priya104@gmail.com', 25, 50000.00, 'Mumbai','2024-03-05'),
(105, 'Suresh', 'suresh105@gmail.com', 29, 48000.00, 'Pune','2021-11-12'),
(106, 'Divya', 'divya106@gmail.com', 23, 70000.00, 'Hyderabad','2023-02-18'),
(107, 'Arjun', 'arjun107@gmail.com', 26, 42000.00, 'Chennai','2022-05-25'),
(108, 'Sneha', 'sneha108@gmail.com', 28, 65000.00, 'Bangalore','2021-09-30'),
(109, 'Vijay', 'vijay109@gmail.com', 30, 53000.00, 'Delhi','2020-12-01'),
(110, 'Pooja', 'pooja110@gmail.com', 24, 47000.00, 'Mumbai','2024-04-08'),
(111, 'Ravi', 'ravi111@gmail.com', 31, 75000.00, 'Pune','2019-07-14'),
(112, 'Neha', 'neha112@gmail.com', 22, 44000.00, 'Hyderabad','2024-02-20'),
(113, 'Ajay', 'ajay113@gmail.com', 27, 68000.00, 'Delhi','2022-10-11'),
(114, 'Meena', 'meena114@gmail.com', 25, 52000.00, 'Chennai','2023-08-16'),
(115, 'Varun', 'varun115@gmail.com', 28, 49000.00, 'Bangalore','2021-06-05'),
(116, 'Lakshmi', 'lakshmi116@gmail.com', 26, NULL, 'Hyderabad','2022-03-22'),
(117, 'Manoj', 'manoj117@gmail.com', 23, 43000.00, 'Pune','2024-01-10'),
(118, 'Kavya', 'kavya118@gmail.com', 29, 71000.00, 'hyd','2020-11-18'),
(119, 'Rakesh', 'rakesh119@gmail.com', 32, 56000.00, 'Mumbai','2018-09-27'),
(120, 'Deepika', 'deepika120@gmail.com', NULL, 51000.00, 'Delhi','2023-12-04');
select* from employees;
SELECT emp_name, salary FROM employees;
SELECT *FROM employees WHERE city = 'Hyderabad';
select*from employees where salary>50000;
SELECT *FROM employees WHERE city = 'Hyderabad' AND salary > 50000;
SELECT*FROM employees where city <> 'bangalore';
select*from employees where emp_name LIKE'A%';
select*from employees where emp_name LIKE'%a';
select*from employees  WHERE city IN('Hyderabad','Bangalore','Chennai');
select*from employees  WHERE salary between 40000 AND 70000 ;
SELECT *FROM employees ORDER BY salary ASC;
SELECT *FROM employees ORDER BY salary desc;
SELECT *FROM employees ORDER BY salary ,city;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT SUM(salary) AS total_salary FROM employees;
SELECT AVG(salary) AS average_salary FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;
SELECT MIN(salary) AS lowest_salary FROM employees;
SELECT dept_id, COUNT(*) AS employee_count FROM employees GROUP BY dept_id;
SHOW DATABASES;
USE company_management;
CREATE INDEX empindex ON employees(emp_name);
SELECT city, SUM(salary) AS total_salary FROM employees GROUP BY city; 
SELECT city, COUNT(*) AS employee_count FROM employees GROUP BY city HAVING COUNT(*) > 2; 
SHOW INDEXES FROM employees; 
CREATE USER 'hr_user'@'localhost' IDENTIFIED BY 'hr123';
SHOW GRANTS FOR 'hr_user'@'localhost'; 
CREATE USER 'viewer_user'@'localhost' IDENTIFIED BY 'viewer123';
GRANT SELECT ON companydb.* TO 'viewer_user'@'localhost';
SHOW GRANTS FOR 'viewer_user'@'localhost'; 
SELECT city, SUM(salary) AS total_salary FROM employees GROUP BY city ORDER BY total_salary DESC LIMIT 1; 
