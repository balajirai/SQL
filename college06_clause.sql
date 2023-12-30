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

SELECT name, marks FROM student; 								/* for selecting specific columns */
SELECT DISTINCT city FROM student;								/* for selecting non-repeating entry */
SELECT * FROM student;											/* for selecting all */

SELECT * FROM student WHERE marks > 80 AND city="Delhi";	 	/* conditional selection (clause)  */
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;			/* BETWEEN operator */
SELECT * FROM student WHERE city IN ("Delhi","Mumbai");			/* IN operator*/
SELECT * FROM student WHERE city NOT IN ("Delhi","Mumbai"); 	/* NOT IN operator*/

SELECT * FROM student LIMIT 3;  								/* limited to 3 rows */

SELECT * FROM student ORDER BY city ASC;						/* ORDER BY : for ascending/descending order*/
SELECT * FROM student ORDER BY marks DESC LIMIT 3;				/* selecting top 3 students */

SELECT city FROM student GROUP BY city;							/* GROUP BY : group the rows having same values in the "group by/selected" column  */
SELECT city, COUNT(rollno) FROM student GROUP BY city;		    /* count students from each city */

SELECT city, COUNT(rollno)										/* Group city having any student's marks > 90 . Then count all students from that city without any condition*/
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city, COUNT(rollno)										/* Group city having any student's marks > 90 . Then count all students from that city having marks > 90*/
FROM student
WHERE marks > 90
GROUP BY city
HAVING MAX(marks) > 90;

SELECT city, COUNT(rollno)										/* Group city having any student's marks > 90 . Then count all students from that city having marks > 90 and arrange in asesecnding order of city*/
FROM student
WHERE marks > 90
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city ASC;

SELECT city
FROM student
WHERE grade="A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city DESC;