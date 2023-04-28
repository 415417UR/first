/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.1.54-community : Database - student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `student`;

/*Table structure for table `sample1` */

DROP TABLE IF EXISTS `sample1`;

CREATE TABLE `sample1` (
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(60) DEFAULT NULL,
  `emp_age` int(11) DEFAULT NULL,
  `emp_phonenumber` int(11) DEFAULT NULL,
  `emp_email` varchar(60) DEFAULT NULL,
  `emp_city` varchar(60) DEFAULT NULL,
  `emp_state` varchar(60) DEFAULT NULL,
  `emp_country` varchar(60) DEFAULT NULL,
  `emp_company` varchar(60) DEFAULT NULL,
  `emp_department` varchar(60) DEFAULT NULL,
  `emp_address` varchar(60) DEFAULT NULL,
  `emp_domain` varchar(60) DEFAULT NULL,
  `emp_experiance` int(11) DEFAULT NULL,
  `emp_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sample1` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stud_name` varchar(120) DEFAULT NULL,
  `stud_id` bigint(20) DEFAULT NULL,
  `stud_age` int(11) DEFAULT NULL,
  `college` varchar(120) DEFAULT NULL,
  `fathername` varchar(120) DEFAULT NULL,
  `mothername` varchar(120) DEFAULT NULL,
  `marks1` int(11) DEFAULT NULL,
  `marks2` int(11) DEFAULT NULL,
  `marks3` int(11) DEFAULT NULL,
  `TOTAL_MARKS` int(11) DEFAULT NULL,
  `ph_no` bigint(20) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  KEY `std_data1` (`stud_id`,`stud_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`stud_name`,`stud_id`,`stud_age`,`college`,`fathername`,`mothername`,`marks1`,`marks2`,`marks3`,`TOTAL_MARKS`,`ph_no`,`email`) values 
('bhaskar',5,23,'zph','bf','bm',27,28,NULL,NULL,7894561230,'bhaskar123@gmail.com'),
('roshan',7,23,'bms','anjanappa','sarojamma',23,30,NULL,NULL,7289463214,'rohan@gqt.com');

/*Table structure for table `student2` */

DROP TABLE IF EXISTS `student2`;

CREATE TABLE `student2` (
  `s_id` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `age` bigint(20) DEFAULT NULL,
  `school` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student2` */

/*Table structure for table `vishnu` */

DROP TABLE IF EXISTS `vishnu`;

CREATE TABLE `vishnu` (
  `s_id` int(11) DEFAULT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `age` bigint(20) DEFAULT NULL,
  `school` varchar(60) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vishnu` */

/* Procedure structure for procedure `student` */

/*!50003 DROP PROCEDURE IF EXISTS  `student` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `student`()
BEGIN
	DROP TABLE if exists sample1;
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

	END */$$
DELIMITER ;

/*Table structure for table `std_data1` */

DROP TABLE IF EXISTS `std_data1`;

/*!50001 DROP VIEW IF EXISTS `std_data1` */;
/*!50001 DROP TABLE IF EXISTS `std_data1` */;

/*!50001 CREATE TABLE  `std_data1`(
 `stud_name` varchar(120) ,
 `stud_id` bigint(20) ,
 `stud_age` int(11) ,
 `college` varchar(120) ,
 `fathername` varchar(120) ,
 `mothername` varchar(120) ,
 `marks1` int(11) ,
 `marks2` int(11) ,
 `marks3` int(11) ,
 `TOTAL_MARKS` int(11) ,
 `ph_no` bigint(20) ,
 `email` varchar(120) 
)*/;

/*View structure for view std_data1 */

/*!50001 DROP TABLE IF EXISTS `std_data1` */;
/*!50001 DROP VIEW IF EXISTS `std_data1` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `std_data1` AS (select `student`.`stud_name` AS `stud_name`,`student`.`stud_id` AS `stud_id`,`student`.`stud_age` AS `stud_age`,`student`.`college` AS `college`,`student`.`fathername` AS `fathername`,`student`.`mothername` AS `mothername`,`student`.`marks1` AS `marks1`,`student`.`marks2` AS `marks2`,`student`.`marks3` AS `marks3`,`student`.`TOTAL_MARKS` AS `TOTAL_MARKS`,`student`.`ph_no` AS `ph_no`,`student`.`email` AS `email` from `student`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
