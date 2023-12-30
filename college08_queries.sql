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

SET SQL_SAFE_UPDATES = 0;	/* Turning off the SQL SAFE mode so that we can update out data in database */


UPDATE student				/* Updating the Grade "A" to "O" (outstanding) */
SET grade="O"
WHERE grade="A";

UPDATE student				/* updating a single student marks */
SET marks = 82
WHERE rollno = 105;

UPDATE student				/* updating the grading system */
SET grade="B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student				/* updating marks of every student */
SET marks = marks + 1;



DELETE FROM student			/* deleting row from the table using condition */
WHERE marks < 33;

DELETE FROM student;		/* delete all rows from the table (effectively it deletes that table) */


TRUNCATE TABLE student;		/* Remove the data from table but keep the table (empty) */

DROP TABLE student;			/* Delete the student table  */

/* ALTER : modify objects/  add/drop rows  / modify data_types  */

ALTER TABLE student			/* ADD : adding a new row to table */
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student			/* MODIFY : modifying the data_type of the age column*/
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student			/* CHANGE : change the name and data_type of the existing column*/
CHANGE COLUMN age student_age INT;

ALTER TABLE student			/* CHANGE : change the name and data_type of the existing column (without COLUMN keyword ) works same */
CHANGE age student_age INT;

ALTER TABLE student			/* RENAME TO : Rename the table */
RENAME TO student_data;

ALTER TABLE student			/* DROP : deleting the existing column */
DROP COLUMN age;
