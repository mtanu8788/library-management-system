

CREATE TABLE Students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    marks INTEGER DEFAULT 0,
    city TEXT
);
INSERT INTO Students (id, name, email, marks, city)
VALUES (1, 'Amit', 'amit@mail.com', 85, 'Pune');
INSERT INTO Students (id, name, email, marks, city)
VALUES (2, 'Neha', NULL, 90, 'Mumbai');

INSERT INTO Students (id, name, city)
VALUES (3, 'Rohit', 'Nashik');

INSERT INTO Students (id, name, marks, city)
VALUES (4, 'Sneha', 75, NULL);

INSERT INTO Students (id, name, marks)
VALUES (5, 'Priya', 88);

INSERT INTO Students (id, name, email, marks, city)
VALUES (6, 'Tushar', 'tushar@mail.com', 68, 'Pune');
INSERT INTO Students (id, name)
VALUES (7, 'Raj');
INSERT INTO Students (id, name)
VALUES (7, 'Raj');
INSERT INTO Students (id, name, email, city)
VALUES (8, 'Simran', NULL, NULL);
INSERT INTO Students (id, name, marks)
VALUES (9, 'Kiran', 45);
INSERT INTO Students (id, name, email, marks, city)
VALUES (10, 'Meera', 'meera@xyz.com', 95, 'Delhi');
UPDATE Students
SET marks = 92
WHERE id = 1;
UPDATE Students
SET email = 'notprovided@mail.com'
WHERE email IS NULL;
UPDATE Students
SET city = 'Unknown'
WHERE city IS NULL;
UPDATE Students
SET marks = marks + 5;
UPDATE Students
SET name = 'Sneha Patil'
WHERE id = 4;
UPDATE Students
SET city = 'Mumbai'
WHERE id = 6;
UPDATE Students
SET marks = marks - 2
WHERE marks < 50;
UPDATE Students
SET marks = marks - 2
WHERE marks < 50;
UPDATE Students
SET email = NULL
WHERE id = 9;
DELETE FROM Students
WHERE id = 7;
DELETE FROM Students
WHERE city = 'Pune';
DELETE FROM Students
WHERE marks < 40;
DELETE FROM Students
WHERE email IS NULL;
SELECT * FROM Students;
SELECT * FROM Students
WHERE city IS NULL;
SELECT * FROM Students
WHERE marks BETWEEN 70 AND 90;
SELECT COUNT(*)
FROM Students
WHERE email IS NULL;

















