USE college;

CREATE TABLE temp2(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO temp2(id) VALUES(101);	/* we're not providing salary details so it will take the default value*/

SELECT * FROM temp2;