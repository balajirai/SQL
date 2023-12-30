USE college;

CREATE TABLE temp3(
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT CHECK (age >= 18 OR city="Delhi")
);

INSERT INTO temp3 VALUES(101, "Delhi", 10);
INSERT INTO temp3 VALUES(102, "Trichy", 50);

SELECT * FROM temp3; 