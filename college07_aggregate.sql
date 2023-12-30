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
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT MAX(marks) FROM student;			/* MAX : maximum of the column*/
SELECT MIN(marks) FROM student;			/* MIN : minimum of the column*/
SELECT AVG(marks) FROM student;			/* AVG : average of the column*/
SELECT COUNT(rollno) FROM student;		/* COUNT : count the number of row in the given column*/