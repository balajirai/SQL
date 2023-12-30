CREATE DATABASE college; 
USE college;
CREATE TABLE student( 
	student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(student_id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE course( 
	student_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
(student_id, course)
VALUES
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "computer-science");

SELECT * FROM student;
SELECT * FROM course;

/* Delete the table */
DROP TABLE student;
DROP TABLE course;


/* INNER JOIN : for common elements (here some sudent_id is common in student and couser table) */
SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id;

/* INNER JOIN : for common elements (here some sudent_id is common in student and couser table) Using alias "AS" */
SELECT *
FROM student AS A
INNER JOIN course AS B
ON A.student_id = B.student_id;

/* LEFT JOIN : All data from TABLE A and matching data from TABLE B */
SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id;

/* LEFT JOIN (exclusive) : Only those data from TABLE A which are not matching with TABLE B */
SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL;

/* RIHGT JOIN : Mathcing data from TABLE A and all data from TABLE B */
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id;

/* RIHGT JOIN (exclusive) : Only those data from TABLE B which are not matching with TABLE A */
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;


/* FULL JOIN or FULL OUTER JOIN are availabe in oracle or prostgres but not in MySQL  */
/* In MySQL we take    ((LEFT JOIN) UNOIN (RIGHT JOIN))     */
SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id;

/* Exlusive Full Join : ((exlusive LEFT JOIN) UNION (exclusive RIGHT JOIN)) */
SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;

/* self JOIN : connects tables with itself */
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

SELECT * FROM employee;

/* self JOIN : connects tables with itself */
SELECT a.name AS manager_name, b.name
FROM employee AS A
JOIN employee AS B
ON A.id = B.manager_id;