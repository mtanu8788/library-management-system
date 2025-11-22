CREATE TABLE Employees(
    emp_id INT,
    name TEXT,
    dept_id INT,
    salary INT
);

CREATE TABLE Departments(
    dept_id INT,
    dept_name TEXT,
    location TEXT
);

CREATE TABLE Projects(
    project_id INT,
    emp_id INT,
    project_name TEXT
);

INSERT INTO Employees (emp_id, name, dept_id, salary) VALUES
(1, 'Amit', 101, 55000),
(2, 'Neha', 102, 60000),
(3, 'Rahul', 101, 45000),
(4, 'Priya', 103, 75000),
(5, 'Vikas', 104, 50000),
(6, 'Sneha', 102, 65000),
(7, 'Rohit', 101, 52000),
(8, 'Kiran', 103, 80000),
(9, 'Deepak', 104, 48000),
(10, 'Anjali', 102, 90000);
INSERT INTO Departments (dept_id, dept_name, location) VALUES
(101, 'IT', 'Pune'),
(102, 'HR', 'Mumbai'),
(103, 'Finance', 'Delhi'),
(104, 'Marketing', 'Bangalore');

INSERT INTO Projects (project_id, emp_id, project_name) VALUES
(201, 1, 'Online Banking System'),
(202, 3, 'E-Commerce Portal'),
(203, 4, 'Payroll Automation'),
(204, 2, 'Employee Tracking System'),
(205, 6, 'Inventory Management'),
(206, 8, 'Cyber Security Project'),
(207, 5, 'Hospital Management System'),
(208, 10, 'AI Chatbot'),
(209, 1, 'Data Migration'),
(210, 4, 'Accounting Dashboard');

SELECT name,salary FROM Employees
WHERE salary>(SELECT AVG(salary) FROM Employees);


SELECT name FROM Employees
WHERE dept_id IN (SELECT dept_id FROM Departments WHERE location='Pune');

SELECT name FROM Employees
WHERE emp_id NOT IN (SELECT emp_id FROM Projects);

SELECT  name FROM Employees
WHERE salary=(SELECT MAX(salary) FROM Employees);
SELECT name, salary FROM Employees
WHERE salary = (SELECT MAX(salary) FROM Employees WHERE salary <
               (SELECT MAX(salary) FROM Employees));
SELECT dept_id FROM Employees
GROUP BY dept_id 
HAVING COUNT(*) > (SELECT COUNT(*) FROM Employees WHERE dept_id=1);

SELECT name FROM Employees
WHERE salary > ANY (SELECT salary FROM Employees WHERE dept_id='3' );

SELECT dept_id FROM Employees
WHERE salary> ALL (SELECT dept_id FROM Employees WHERE dept_id='4');

SELECT name FROM Employees
WHERE emp_id IN (SELECT emp_id FROM Projects);
SELECT name FROM EmployeeS
WHERE emp_id NOT IN(SELECT emp_id FROM Projects);
SELECT name FROM Employees e
WHERE EXISTS (SELECT * FROM Projects p WHERE p.emp_id = e.emp_id);
SELECT dept_name FROM Departments d
WHERE EXISTS (SELECT * FROM Employees e WHERE e.dept_id = d.dept_id);
SELECT name FROM Employees e
WHERE NOT EXISTS (SELECT * FROM Departments d WHERE d.dept_id=e.dept_id);
SELECT name, salary FROM Employees e
WHERE salary > (SELECT AVG(salary) FROM Employees WHERE dept_id=e.dept_id);
SELECT name, dept_id FROM Employees E1
WHERE salary = (SELECT MAX(salary) FROM Employees E2 WHERE E1.dept_id = E2.dept_id);
SELECT name FROM Employees e
WHERE salary > (SELECT MIN(salary) FROM Employees WHERE dept_id=e.dept_id);
SELECT name,
       (SELECT dept_name FROM Departments d WHERE d.dept_id=e.dept_id) AS dept_name
FROM Employees e;
SELECT name,
       (SELECT COUNT(*) FROM Projects p WHERE p.emp_id=e.emp_id) AS project_count
FROM Employees e;
SELECT name, salary,
       salary - (SELECT AVG(salary) FROM Employees) AS difference
FROM Employees;
SELECT dept_id, AVG(salary) FROM
     (SELECT * FROM Employees WHERE salary > 50000) AS temp
GROUP BY dept_id;
SELECT * FROM
    (SELECT name, salary FROM Employees ORDER BY salary DESC LIMIT 5);
SELECT dept_id FROM Employees
GROUP BY dept_id
HAVING COUNT(*) = (SELECT MAX(cnt) FROM
                   (SELECT COUNT(*) AS cnt FROM Employees GROUP BY dept_id) AS temp);
SELECT name FROM Employees
WHERE salary = (SELECT MIN(salary) FROM Employees);
SELECT e.name, p.project_name
FROM Employees e
JOIN Projects p ON e.emp_id = p.emp_id;
SELECT e.name, p.project_name
FROM Employees e
JOIN Projects p ON e.emp_id = p.emp_id;
SELECT name FROM Employees e
WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name='HR')
AND EXISTS (SELECT * FROM Projects p WHERE p.emp_id=e.emp_id);
SELECT location FROM Departments
WHERE dept_id = (SELECT dept_id FROM Employees ORDER BY salary DESC LIMIT 1);
SELECT COUNT(*) FROM Employees
WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name='IT');
SELECT name FROM Employees e1
WHERE EXISTS (SELECT * FROM Employees e2 WHERE e1.salary = e2.salary AND e1.emp_id <> e2.emp_id);
SELECT name FROM Employees e
WHERE salary < (SELECT AVG(salary) FROM Employees WHERE dept_id=e.dept_id);
SELECT name FROM Employees
WHERE emp_id IN (SELECT emp_id FROM Projects GROUP BY emp_id HAVING COUNT(*) > 1);
