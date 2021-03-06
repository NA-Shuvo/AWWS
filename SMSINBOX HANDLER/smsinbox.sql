/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.7.25 : Database - smsgwOTP
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smsgwOTP` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `smsgwOTP`;

/*Table structure for table `smsinbox` */

DROP TABLE IF EXISTS `smsinbox`;

CREATE TABLE `smsinbox` (
  `srcMN` varchar(20) NOT NULL,
  `dstMN` varchar(20) NOT NULL,
  `msg` varchar(280) NOT NULL,
  `rcvTime` datetime NOT NULL,
  `msgID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msgStatus` enum('QUE','PROCESSING','SENT','FAILED') NOT NULL DEFAULT 'QUE',
  `retryCount` int(10) unsigned NOT NULL DEFAULT '0',
  `refID` varchar(50) DEFAULT NULL,
  `channel` int(11) NOT NULL DEFAULT '0' COMMENT '0 for HTTP and 1 for SMPP',
  `srcAccount` varchar(10) DEFAULT '1',
  PRIMARY KEY (`msgID`),
  KEY `msgStatus` (`msgStatus`),
  KEY `rcvDate` (`rcvTime`)
) ENGINE=InnoDB AUTO_INCREMENT=950 DEFAULT CHARSET=latin1;

/*Data for the table `smsinbox` */

insert  into `smsinbox`(`srcMN`,`dstMN`,`msg`,`rcvTime`,`msgID`,`msgStatus`,`retryCount`,`refID`,`channel`,`srcAccount`) values ('0166129270','20000','stop+all','2020-02-25 18:44:08',897,'QUE',0,'1494510137',0,'1'),('0163099902','20000','stop+all','2020-02-25 18:44:59',898,'QUE',0,'1494420171',0,'1'),('01126685638','20000','stop+all','2020-02-25 18:50:27',899,'QUE',0,'1494439549',0,'1'),('0185720868','20000','stop+all','2020-02-25 18:50:36',900,'QUE',0,'1494533052',0,'1'),('01151833956','20000','stop+all','2020-02-25 18:50:37',901,'QUE',0,'1494531846',0,'1'),('0103679434','20000','stop+all','2020-02-25 18:54:32',902,'QUE',0,'1494448443',0,'1'),('0127758158','20000','stop+all','2020-02-25 18:54:36',903,'QUE',0,'1494448015',0,'1'),('0169013239','20000','stop+all','2020-02-25 18:56:18',904,'QUE',0,'1494547690',0,'1'),('0124535171','20000','stop+all+','2020-02-25 18:58:09',905,'QUE',0,'1494449102',0,'1'),('0109861642','20000','stop+all','2020-02-25 18:59:22',906,'QUE',0,'1494552560',0,'1'),('0165835654','20000','stop+all','2020-02-25 19:04:39',907,'QUE',0,'1494469057',0,'1'),('0166105193','20000','stop+all','2020-02-25 19:14:24',908,'QUE',0,'1494600353',0,'1'),('0167255320','20000','stop+all','2020-02-25 19:14:26',909,'QUE',0,'1494496390',0,'1'),('0109313564','20000','stop+all','2020-02-25 19:15:37',910,'QUE',0,'1494604299',0,'1'),('0132076851','20000','stop+all','2020-02-25 19:19:17',911,'QUE',0,'1494713030',0,'1'),('0166105193','20000','stop+all','2020-02-25 19:19:29',912,'QUE',0,'1494706170',0,'1'),('01151172818','20000','stop+all','2020-02-25 19:19:35',913,'QUE',0,'1494608106',0,'1'),('0182265185','20000','stop+all','2020-02-25 19:19:38',914,'QUE',0,'1494710939',0,'1'),('01151172818','20000','stop+all','2020-02-25 19:22:11',915,'QUE',0,'1494709605',0,'1'),('0168446056','20000','stop+all','2020-02-25 19:24:44',916,'QUE',0,'1494621173',0,'1'),('0169035790','20000','stop+all','2020-02-25 19:25:26',917,'QUE',0,'1494629834',0,'1'),('0143301460','20000','stop+all','2020-02-25 19:29:27',918,'QUE',0,'1494728371',0,'1'),('0165255045','20000','stop+all','2020-02-25 19:29:33',919,'QUE',0,'1494641632',0,'1'),('0168136408','20000','stop+all','2020-02-25 19:30:07',920,'QUE',0,'1494641418',0,'1'),('01116871835','20000','stop+all','2020-02-25 19:30:28',921,'QUE',0,'1494740560',0,'1'),('0165812096','20000','stop+all','2020-02-27 19:04:55',922,'QUE',0,'1512634947',0,'1'),('0194073632','20000','stop+all','2020-02-27 19:09:51',923,'QUE',0,'1512644302',0,'1'),('01133750430','20000','stop+all','2020-02-27 19:10:17',924,'QUE',0,'1512649678',0,'1'),('0164953171','20000','stop+all','2020-02-27 19:10:17',925,'QUE',0,'1512646433',0,'1'),('0162788045','20000','STOP+BD','2020-02-27 19:12:48',926,'QUE',0,'1512779898',0,'1'),('0162590785','20000','stop+all','2020-02-27 19:13:58',927,'QUE',0,'1512733136',0,'1'),('01151777205','20000','stop+all','2020-02-27 19:14:04',928,'QUE',0,'1512745915',0,'1'),('0175299528','20000','stop+all','2020-02-27 19:16:57',929,'QUE',0,'1512670269',0,'1'),('0163516201','20000','stop+all','2020-02-27 19:18:17',930,'QUE',0,'1512679502',0,'1'),('0146104375','20000','stop+all','2020-02-27 19:18:22',931,'QUE',0,'1512764608',0,'1'),('0146104375','20000','stop+all','2020-02-27 19:18:56',932,'QUE',0,'1512678226',0,'1'),('0146104375','20000','stop+all','2020-02-27 19:19:44',933,'QUE',0,'1512764879',0,'1'),('0168225223','20000','stop+all','2020-02-27 19:19:47',934,'QUE',0,'1512771280',0,'1'),('0146104375','20000','stop+all','2020-02-27 19:19:52',935,'QUE',0,'1512763644',0,'1'),('0169884417','20000','stop+all','2020-02-27 19:19:55',936,'QUE',0,'1512767036',0,'1'),('0169035790','20000','stop+all','2020-02-27 19:20:46',937,'QUE',0,'1512684824',0,'1'),('0149900318','20000','stop+all','2020-02-27 19:25:14',938,'QUE',0,'1512784973',0,'1'),('0164467634','20000','stop+all','2020-02-27 19:29:57',939,'QUE',0,'1512805072',0,'1'),('0149103342','20000','stop+all','2020-02-27 19:33:55',940,'QUE',0,'1512901843',0,'1'),('0149103342','20000','stop+all','2020-02-27 19:34:11',941,'QUE',0,'1512901843',0,'1'),('0149103342','20000','stop+all','2020-02-27 19:34:36',942,'QUE',0,'1512901843',0,'1'),('0149103342','20000','stop+all','2020-02-27 19:34:58',943,'QUE',0,'1512901843',0,'1'),('0168485066','20000','stop+all++','2020-02-27 19:35:51',944,'QUE',0,'1512905792',0,'1'),('0162210675','20000','stop+all','2020-02-27 19:38:04',945,'QUE',0,'1512822500',0,'1'),('01136345332','20000','stop+all','2020-02-27 19:43:17',946,'QUE',0,'1512922551',0,'1'),('01151802369','20000','stop+all','2020-02-27 19:44:51',947,'QUE',0,'1512844059',0,'1'),('0168687888','20000','stop+all','2020-02-27 19:54:58',948,'QUE',0,'1512873326',0,'1'),('0102816481','20000','stop+all','2020-02-27 20:10:20',949,'QUE',0,'1513008252',0,'1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
