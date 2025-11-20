CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50)
);
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    emp_id INT,
    project_name VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);
INSERT INTO Employees VALUES
(101, 'Rahul', 'IT');
INSERT INTO Employees VALUES
(102, 'Sneha', 'HR');
INSERT INTO Employees VALUES
(103, 'Vikas', 'Finance');
INSERT INTO Employees VALUES
(104, 'Riya', 'Marketing');

INSERT INTO Projects VALUES
(501, 101, 'Website Redesign', 'Completed'),
(502, 101, 'Security Audit', 'Ongoing'),
(503, 103, 'Budget Planning', 'Completed'),
(504, 110, 'Data Migration', 'Pending'); 
SELECT e.emp_id, e.emp_name, p.project_name, p.status
FROM Employees e
INNER JOIN Projects p
ON e.emp_id = p.emp_id;
SELECT e.emp_id, e.emp_name, p.project_name, p.status
FROM Employees e
LEFT JOIN Projects p
ON e.emp_id = p.emp_id;
SELECT e.emp_id, e.emp_name, p.project_name, p.status
FROM Employees e
RIGHT JOIN Projects p
ON e.emp_id = p.emp_id;
SELECT e.emp_id, e.emp_name, p.project_name, p.status
FROM Employees e
LEFT JOIN Projects p
ON e.emp_id = p.emp_id

UNION

SELECT e.emp_id, e.emp_name, p.project_name, p.status
FROM Employees e
RIGHT JOIN Projects p
ON e.emp_id = p.emp_id;
SELECT 
    e.emp_id,
    e.emp_name,
    p.project_id,
    p.project_name,
    p.status
FROM Employees e
CROSS JOIN Projects p;

