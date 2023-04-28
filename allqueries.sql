/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.1.54-community : Database - employee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`employee` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `employee`;

/*Table structure for table `employee1` */

DROP TABLE IF EXISTS `employee1`;

CREATE TABLE `employee1` (
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

/*Data for the table `employee1` */

insert  into `employee1`(`emp_id`,`emp_name`,`emp_age`,`emp_phonenumber`,`emp_email`,`emp_city`,`emp_state`,`emp_country`,`emp_company`,`emp_department`,`emp_address`,`emp_domain`,`emp_experiance`,`emp_salary`) values 
(1,'harshita',27,123457906,'harshita@gmail.com','banglore','karnataka','india','infosys','developer','whitefield','java',1,70000),
(2,'ashwin',30,654789123,'ashwin@gqt.com','coimbatore','tamilnadu','india','tcs','qa','hopes','testing',4,110000),
(3,'bhavana',32,987456123,'bahavan@gmail.com','chennai','tamilnadu','india','infosys','management','mg road','project management',6,155000),
(5,'ruksar',26,868686066,'ruksar@tcs.in','chennai','tamilnadu','india','tcs','developer','global villlage','java',1,65000),
(4,'sai',29,989898663,'sai@gqt.in','banglore','karnataka','india','gqt','training','judicial layout','python',3,80000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
