-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: vmaildb
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `IVR_CDR_DETAILS`
--

DROP TABLE IF EXISTS `IVR_CDR_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IVR_CDR_DETAILS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aparty` varchar(15) NOT NULL,
  `bparty` varchar(15) NOT NULL,
  `reason` varchar(20) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `last_node` varchar(50) DEFAULT NULL,
  `call_start` datetime DEFAULT NULL,
  `call_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59791153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VMAIL_BILLING_CDR`
--

DROP TABLE IF EXISTS `VMAIL_BILLING_CDR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMAIL_BILLING_CDR` (
  `transaction_id` varchar(40) NOT NULL,
  `subscriber_id` varchar(12) NOT NULL,
  `v_msisdn` varchar(12) NOT NULL,
  `interface_id` varchar(5) DEFAULT NULL,
  `action` varchar(15) DEFAULT NULL,
  `service_id` varchar(15) DEFAULT NULL,
  `product_id` varchar(15) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `is_charging` varchar(3) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `error_code` varchar(5) DEFAULT NULL,
  `charging_date` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VMAIL_MESSAGE_BACKUP`
--

DROP TABLE IF EXISTS `VMAIL_MESSAGE_BACKUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMAIL_MESSAGE_BACKUP` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `subscriber_id` varchar(12) NOT NULL,
  `v_msisdn` varchar(12) NOT NULL,
  `interface_id` varchar(5) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `listening_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `recording_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57536 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VMAIL_MESSAGE_DETAILS`
--

DROP TABLE IF EXISTS `VMAIL_MESSAGE_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMAIL_MESSAGE_DETAILS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriber_id` varchar(12) NOT NULL,
  `v_msisdn` varchar(12) NOT NULL,
  `interface_id` varchar(5) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `listening_date` datetime DEFAULT NULL,
  `recording_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=791554 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VMAIL_SUMMARY_REPORT`
--

DROP TABLE IF EXISTS `VMAIL_SUMMARY_REPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMAIL_SUMMARY_REPORT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REPORT_DATE` date DEFAULT NULL,
  `TOTAL_TRAFFIC` mediumtext,
  `VM_TRAFFIC` mediumtext,
  `IVR_TRAFFIC` mediumtext,
  `BILLING_SUCCESS` mediumtext,
  `BILLING_FAIL` mediumtext,
  `VMAIL_ACTIVE` mediumtext,
  `VMAIL_BACKUP` mediumtext,
  `LOW_BALANCE` mediumtext,
  `TOTAL_REVENUE` float DEFAULT NULL,
  `SUCCESS_REVENUE` float DEFAULT NULL,
  `FAIL_REVENUE` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=643 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VMAIL_SUMMARY_REPORT_DATE`
--

DROP TABLE IF EXISTS `VMAIL_SUMMARY_REPORT_DATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMAIL_SUMMARY_REPORT_DATE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REPORT_DATE` date DEFAULT NULL,
  `TAFFIC_DATE` date DEFAULT NULL,
  `DATE` mediumtext,
  `REVENUE` mediumtext,
  `TRAFFIC` mediumtext,
  `DURATION` mediumtext,
  `SERVER` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VMAIL_SUMMARY_REPORT_HOURLY`
--

DROP TABLE IF EXISTS `VMAIL_SUMMARY_REPORT_HOURLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VMAIL_SUMMARY_REPORT_HOURLY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REPORT_DATE` date DEFAULT NULL,
  `TAFFIC_DATE` date DEFAULT NULL,
  `HOUR` mediumtext,
  `REVENUE` mediumtext,
  `TRAFFIC` mediumtext,
  `DURATION` mediumtext,
  `SERVER` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13921 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VOICE_CDR_DETAILS`
--

DROP TABLE IF EXISTS `VOICE_CDR_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOICE_CDR_DETAILS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `src` varchar(20) NOT NULL,
  `dst` varchar(20) NOT NULL,
  `dcontext` varchar(50) DEFAULT NULL,
  `clid` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `dstchannel` varchar(20) DEFAULT NULL,
  `lastapp` varchar(20) DEFAULT NULL,
  `lastdata` varchar(50) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `disposition` varchar(20) DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `userfield` varchar(100) DEFAULT NULL,
  `dummy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name_date` (`start`),
  KEY `report_index_115` (`dst`,`start`,`lastdata`,`duration`)
) ENGINE=InnoDB AUTO_INCREMENT=61351017 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VOICE_CDR_DETAILS_209`
--

DROP TABLE IF EXISTS `VOICE_CDR_DETAILS_209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOICE_CDR_DETAILS_209` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `src` varchar(20) NOT NULL,
  `dst` varchar(20) NOT NULL,
  `dcontext` varchar(50) DEFAULT NULL,
  `clid` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `dstchannel` varchar(20) DEFAULT NULL,
  `lastapp` varchar(20) DEFAULT NULL,
  `lastdata` varchar(50) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `disposition` varchar(20) DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `userfield` varchar(100) DEFAULT NULL,
  `dummy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name_date` (`start`),
  KEY `report_index_209` (`dst`,`start`,`lastdata`,`duration`)
) ENGINE=InnoDB AUTO_INCREMENT=68362688 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VOICE_CDR_DETAILS_209_6Dec23`
--

DROP TABLE IF EXISTS `VOICE_CDR_DETAILS_209_6Dec23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOICE_CDR_DETAILS_209_6Dec23` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `src` varchar(20) NOT NULL,
  `dst` varchar(20) NOT NULL,
  `dcontext` varchar(50) DEFAULT NULL,
  `clid` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `dstchannel` varchar(20) DEFAULT NULL,
  `lastapp` varchar(20) DEFAULT NULL,
  `lastdata` varchar(50) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `disposition` varchar(20) DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `userfield` varchar(100) DEFAULT NULL,
  `dummy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name_date` (`start`),
  KEY `report_index_209` (`dst`,`start`,`lastdata`,`duration`)
) ENGINE=InnoDB AUTO_INCREMENT=41459032 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VOICE_CDR_DETAILS_6Dec23`
--

DROP TABLE IF EXISTS `VOICE_CDR_DETAILS_6Dec23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOICE_CDR_DETAILS_6Dec23` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `src` varchar(20) NOT NULL,
  `dst` varchar(20) NOT NULL,
  `dcontext` varchar(50) DEFAULT NULL,
  `clid` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `dstchannel` varchar(20) DEFAULT NULL,
  `lastapp` varchar(20) DEFAULT NULL,
  `lastdata` varchar(50) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `disposition` varchar(20) DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `userfield` varchar(100) DEFAULT NULL,
  `dummy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_name_date` (`start`),
  KEY `report_index_115` (`dst`,`start`,`lastdata`,`duration`)
) ENGINE=InnoDB AUTO_INCREMENT=110974060 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VOICE_CDR_DETAILS_READ`
--

DROP TABLE IF EXISTS `VOICE_CDR_DETAILS_READ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOICE_CDR_DETAILS_READ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `src` varchar(20) NOT NULL,
  `dst` varchar(20) NOT NULL,
  `dcontext` varchar(50) DEFAULT NULL,
  `clid` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `dstchannel` varchar(20) DEFAULT NULL,
  `lastapp` varchar(20) DEFAULT NULL,
  `lastdata` varchar(20) DEFAULT NULL,
  `dummyData1` varchar(50) DEFAULT NULL,
  `dummyData2` varchar(20) DEFAULT NULL,
  `dummyData3` varchar(20) DEFAULT NULL,
  `dummyData4` varchar(20) DEFAULT NULL,
  `dummyData5` varchar(20) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `disposition` varchar(20) DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `userfield` varchar(100) DEFAULT NULL,
  `dummy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7143316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VOICE_CDR_DETAILS_READ_209`
--

DROP TABLE IF EXISTS `VOICE_CDR_DETAILS_READ_209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VOICE_CDR_DETAILS_READ_209` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `src` varchar(20) NOT NULL,
  `dst` varchar(20) NOT NULL,
  `dcontext` varchar(50) DEFAULT NULL,
  `clid` varchar(50) NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `dstchannel` varchar(20) DEFAULT NULL,
  `lastapp` varchar(20) DEFAULT NULL,
  `lastdata` varchar(20) DEFAULT NULL,
  `dummyData1` varchar(50) DEFAULT NULL,
  `dummyData2` varchar(20) DEFAULT NULL,
  `dummyData3` varchar(20) DEFAULT NULL,
  `dummyData4` varchar(20) DEFAULT NULL,
  `dummyData5` varchar(20) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `billsec` int(11) DEFAULT NULL,
  `disposition` varchar(20) DEFAULT NULL,
  `amaflags` varchar(20) DEFAULT NULL,
  `userfield` varchar(100) DEFAULT NULL,
  `dummy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7405456 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 10:15:14
