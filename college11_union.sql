CREATE DATABASE college; 
USE college;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

/* UNION : To find union of two same or different tables (No Duplicates will be selected) */
SELECT name FROM employee
UNION
SELECT name FROM employee;

/* UNION ALL : To find union of two same or different tables (Duplicates will be selected) */
SELECT name FROM employee
UNION ALL
SELECT name FROM employee;