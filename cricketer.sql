-- write a query to update the columns which contains variable characters to a rise of 100 with a constarints to avoid from being nullable
ALTER TABLE cricketer
MODIFY COLUMN cont_id INT UNIQUE;
DESCRIBE cricketer;

-- write a query to modify the column specified below cric_name cric_age cric_country cric_matches cric_runs cric_century cric_wickets
ALTER TABLE cricketer
CHANGE COLUMN NAME cric_name VARCHAR(60),
CHANGE COLUMN age cric_age BIGINT,
CHANGE COLUMN country cric_country VARCHAR(60),
CHANGE COLUMN matches cric_matches BIGINT,
CHANGE COLUMN runs cric_runs BIGINT,
CHANGE COLUMN wickets cric_wickets BIGINT;

-- write a query to make the following columns as mandatory columns cont_id cric_name cric_age cric_country designation jersey_no
ALTER TABLE cricketer
MODIFY COLUMN cont_id INT NOT NULL,
MODIFY COLUMN cric_name VARCHAR(60) NOT NULL,
MODIFY COLUMN cric_age BIGINT NOT NULL,
MODIFY COLUMN cric_country VARCHAR(60),
MODIFY COLUMN designation VARCHAR(60),
MODIFY COLUMN jersey_no BIGINT;


-- write a query to fetch the details of the cricketers who play for westindies
SELECT *FROM cricketer
WHERE cric_country='westindies';
-- write a query to print the details of the cricketers who has played more than 200 matches as a batsman or senior batsman with over 40+ average
SELECT*FROM cricketer
WHERE cric_matches>200 IN(designation='batsman' OR 'senior batsman')AND average>40;
-- write a query to find total no of players representing each country
SELECT *FROM cricketer
WHERE cric_name=cric_country;

-- write a query to find total no of runs scored by players from each country
-- represent the details of the cricketer who has scored highest no of runs

SELECT runs=

DESCRIBE cricketer;

