USE college;

CREATE TABLE temp1(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    PRIMARY KEY(id, name) /* combination of id and name is primary key so id and name can be duplicates but not simultaneously */
);

INSERT INTO temp1 VALUES(101, "Balaji", 21, "Tiruchirappalli");

SELECT * FROM temp1;