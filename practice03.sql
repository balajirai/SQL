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


SELECT * FROM student;

ALTER TABLE student						/* changing name to full_name (renaming the column) */
CHANGE name full_name VARCHAR(50);

DELETE FROM student						/* deleting students whose marks < 80  (row deletion) */
WHERE marks < 80;

ALTER TABLE student						/* deleting the grade column (coulum deletion) */
DROP COLUMN grade;