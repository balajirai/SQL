CREATE DATABASE college; 
USE college;
CREATE TABLE student( 
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20) 
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 92, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;


/* sub-queries or nested-queries (inside WHERE, FROM, SELECT) */
/* selecting the students having marks greater than class average */
SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

/* select students having even roll no */
SELECT rollno, name
FROM student
WHERE rollno%2=0;

/* Nested way */
SELECT name, rollno
FROM student
WHERE rollno IN (
	SELECT rollno
	FROM student
	WHERE rollno%2=0);
    

/*  inside FROM (aliasing is necessary inside FROM nesting) */
/* Maximum marks of student from delhi */
SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city="Delhi") AS temp;

/* simply we could write (without nesting)*/
SELECT MAX(marks)
FROM student
WHERE city="Delhi";