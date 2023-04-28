-- to fetch all the information student database tabale
SELECT *FROM student;

-- to print studentid, studentname & all the marks from the student table
SELECT stud_name, stud_id, school, marks1, marks2, marks3 FROM student;

-- to fetch the details of all the students who is having the age as 22
SELECT *FROM student
WHERE stud_age=22;

-- to fetch all the details of the student who is studying in zph school and has age equal to 22
SELECT *FROM student
WHERE school='zph' AND stud_age=22;

-- to fetch id, name, age, school & phone number of all the students who either study in are we OR has age to be 23
SELECT *FROM student
WHERE school='zph' OR stud_age=23;

-- to fetch the details of students in ascending order of their names
SELECT *FROM student ORDER BY stud_name ASC;
SELECT *FROM student ORDER BY stud_name DESC;

-- to fetch the all details of the students whose marks1>21, marks>22, marks>23
SELECT *FROM student
WHERE marks1>21 AND marks2>22 AND marks3>23;

-- to fetch the all details of the students who has scored 25 in atleast one of the marks
SELECT *FROM student
WHERE marks1=25 OR marks2=25 OR marks3=25;

-- TO FIND THE TOTAL NUMBER OF STUDENTS IN DATABASE table
SELECT COUNT(stud_id) AS stud_count FROM student;

-- to find the details of all the students who does not study in zph & pes school
SELECT *FROM student
WHERE  school IN('zph','pes');

-- to change the name of the column school to college
ALTER TABLE student
CHANGE COLUMN school college VARCHAR(60);

-- to change the size of all columns have in variablecharacter as datatype to 120
ALTER TABLE student
MODIFY stud_name VARCHAR(120),
MODIFY college VARCHAR(120),
MODIFY fathername VARCHAR(120),
MODIFY mothername VARCHAR(120),
MODIFY email VARCHAR(120);

DESCRIBE student;

-- to find the details of students whose age>21 and does not belong to pes college
SELECT *FROM student
WHERE stud_age>21 AND college !='pes';

-- to insert ID6 name is rohan,age 23,college bms, father name anjanappa, mother name sarojamma, marks1=23,marks2=24,marks3=24,phone number,email.
INSERT INTO student
VALUES('rohan', 7, 23, 'bms', 'anjanappa', 'sarojamma', 23, 24, 24,7289463214, 'rohan@gqt.com');

-- drop marks3
ALTER TABLE student
DROP COLUMN marks3;

-- name of the student is vishnu delete from student where stud_name is vishnu;
DELETE FROM student
WHERE stud_name='vishnu';
SELECT *FROM student;

-- to update the name of the student rohan to roshan
UPDATE student SET stud_name='roshan'
WHERE stud_name='rohan';

-- to find the count of aoll the students in each of the colleges
SELECT college, COUNT(stud_name) AS stud_count
FROM student
GROUP BY college;

-- to find the count of students in each of the colleges whose age>21
FROM student AS s1
GROUP BY college
HAVING s1.stud_age>21;

-- to find average marks of scored by student in each of the marks
SELECT AVG(marks1) AS m1_avg,AVG(marks2) AS m2_avg FROM student

-- to find the minimu & maximum marks scored by the students in marks2 & marks1
SELECT MAX(marks1) AS m1_max,MAX(marks2) AS m2_max,MIN(marks1)AS m1_min FROM student;

-- to fetch all the information from the student table where the name of a student starts with R
SELECT *FROM student
WHERE stud_name LIKE'r%';
SELECT *FROM student
WHERE stud_name='charan';


SELECT *FROM student 
WHERE student AS s1 GROUP BY college
HAVING s1.stud_age>21;

-- write query to fetch deatils of all the students who does study in pes
INSERT
SELECT *FROM student1
WHERE college='zph';

-- wirte query to find avg marks scored by the students in marks1
SELECT AVG(marks1) AS max_marks1 FROM student1;

-- wirte query to find avg marks scored by the students in marks2
SELECT AVG(marks2) AS max_marks FROM student1;

-- write a query to update name of the student pavan to charan
UPDATE student1 SET stud_name ='charan'
WHERE stud_name='pavan';

-- write a query to fetch all the details from student table where the name starts and ends with n
SELECT *FROM student1
WHERE stud_name LIKE '%n';

-- write a query to fetch all the details from student table where the father_name starts and ends with s
SELECT *FROM student1
WHERE father_name LIKE 's%';

-- write a query to find drop the column email
ALTER TABLE student1
DROP COLUMN email;

-- write a column to change the name of column father_name to f_name
ALTER TABLE student1
ADD COLUMN f_name VARCHAR(120)