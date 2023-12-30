CREATE DATABASE college; 
USE college;

CREATE TABLE dept( 
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "english"),
(102, "IT");

UPDATE dept
SET id=103
WHERE id=102;

UPDATE dept
SET id=111
WHERE id=101;

SELECT * FROM dept;

CREATE TABLE teacher( 
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE		/* for auto updation and deletion in teacher table when changes made in dept table*/
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

