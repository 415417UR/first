DROP PROCEDURE student;
DELIMITER $$
CREATE
    /*[DEFINER = { user | CURRENT_USER }]*/
    PROCEDURE `student`.`student`()
	BEGIN
	DROP TABLE IF EXISTS sample1;
	CREATE TABLE sample1(emp_id INT(11),
  emp_name VARCHAR(60) ,emp_age INT(11), 
  emp_phonenumber INT(11), 
  emp_email VARCHAR(60), 
  emp_city VARCHAR(60), 
  emp_state VARCHAR(60), 
  emp_country VARCHAR(60), 
  emp_company VARCHAR(60), 
  emp_department VARCHAR(60), 
 emp_address VARCHAR(60), 
  emp_domain VARCHAR(60), 
  emp_experiance INT(11), 
  emp_salary INT(11)); 

	END$$

DELIMITER ;

CALL student;