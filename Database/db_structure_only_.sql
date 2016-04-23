/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.0.67-community-nt : Database - fraud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fraud` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fraud`;

/*Table structure for table `apps` */

DROP TABLE IF EXISTS `apps`;

CREATE TABLE `apps` (
  `id_ct` int(3) NOT NULL,
  `appname_ct` varchar(100) default NULL,
  `provider_ct` varchar(100) default NULL,
  `company_ct` varchar(500) default NULL,
  `des_ct` varchar(1000) default NULL,
  `pic_ct` longblob,
  `app_ct` varchar(100) default NULL,
  `status_ct` varchar(10) default 'Pending',
  `down_ct` int(3) default '0',
  PRIMARY KEY  (`id_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `provider` */

DROP TABLE IF EXISTS `provider`;

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) default NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cname` varchar(500) default NULL,
  `about` varchar(500) default NULL,
  `pwd` varchar(50) NOT NULL,
  `profilepic` longblob,
  `status` varchar(50) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rank_tab` */

DROP TABLE IF EXISTS `rank_tab`;

CREATE TABLE `rank_tab` (
  `rank_ct` varchar(10) default NULL,
  `app_ct` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ranking_tab` */

DROP TABLE IF EXISTS `ranking_tab`;

CREATE TABLE `ranking_tab` (
  `appid_ct` varchar(10) NOT NULL,
  `date_ct` varchar(50) NOT NULL,
  `rank_ct` int(5) default NULL,
  PRIMARY KEY  (`appid_ct`,`date_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rating_tab` */

DROP TABLE IF EXISTS `rating_tab`;

CREATE TABLE `rating_tab` (
  `appid_ct` varchar(30) NOT NULL,
  `date_ct` varchar(150) NOT NULL,
  `count_ct` int(5) default NULL,
  PRIMARY KEY  (`appid_ct`,`date_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) default NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `profilepic` longblob,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_tab` */

DROP TABLE IF EXISTS `result_tab`;

CREATE TABLE `result_tab` (
  `appid_ct` varchar(10) default NULL,
  `ranking_ct` varchar(100) default NULL,
  `rating_ct` varchar(100) default NULL,
  `review_ct` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `review_tab` */

DROP TABLE IF EXISTS `review_tab`;

CREATE TABLE `review_tab` (
  `appid_ct` varchar(30) default NULL,
  `date_ct` varchar(150) default NULL,
  `review_ct` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `userrating_tab` */

DROP TABLE IF EXISTS `userrating_tab`;

CREATE TABLE `userrating_tab` (
  `appid_ct` varchar(100) default NULL,
  `rating_ct` int(3) default NULL,
  `name_ct` varchar(100) default NULL,
  `email_ct` varchar(100) default NULL,
  `date_ct` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `userreview_tab` */

DROP TABLE IF EXISTS `userreview_tab`;

CREATE TABLE `userreview_tab` (
  `appid_ct` varchar(100) default NULL,
  `review_ct` varchar(500) default NULL,
  `name_ct` varchar(100) default NULL,
  `email_ct` varchar(100) default NULL,
  `date_ct` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
