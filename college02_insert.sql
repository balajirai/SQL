CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(101, "Karan"),
(102, "Arjun"),
(103, "Ram");

INSERT INTO student VALUES(104, "Shyam");

SHOW DATABASES;
SHOW TABLES;