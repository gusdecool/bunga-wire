-- MySQL dump 10.13  Distrib 5.5.33, for osx10.6 (i386)
--
-- Host: localhost    Database: bunga_wire
-- ------------------------------------------------------
-- Server version	5.5.33

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
-- Table structure for table `field_article`
--

DROP TABLE IF EXISTS `field_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_article` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_article`
--

LOCK TABLES `field_article` WRITE;
/*!40000 ALTER TABLE `field_article` DISABLE KEYS */;
INSERT INTO `field_article` VALUES (1,'<p>Testing content</p>'),(1001,'<p>This page about us.</p>'),(1007,'<h2>Gallery</h2>');
/*!40000 ALTER TABLE `field_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email`
--

LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
INSERT INTO `field_email` VALUES (41,'marketing@bungamata.com'),(1006,'gusdecool@gmail.com');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_formemail`
--

DROP TABLE IF EXISTS `field_formemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_formemail` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_formemail`
--

LOCK TABLES `field_formemail` WRITE;
/*!40000 ALTER TABLE `field_formemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_formemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_formfirstname`
--

DROP TABLE IF EXISTS `field_formfirstname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_formfirstname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_formfirstname`
--

LOCK TABLES `field_formfirstname` WRITE;
/*!40000 ALTER TABLE `field_formfirstname` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_formfirstname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_formlastname`
--

DROP TABLE IF EXISTS `field_formlastname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_formlastname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_formlastname`
--

LOCK TABLES `field_formlastname` WRITE;
/*!40000 ALTER TABLE `field_formlastname` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_formlastname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_formmessage`
--

DROP TABLE IF EXISTS `field_formmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_formmessage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_formmessage`
--

LOCK TABLES `field_formmessage` WRITE;
/*!40000 ALTER TABLE `field_formmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_formmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_formphone`
--

DROP TABLE IF EXISTS `field_formphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_formphone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_formphone`
--

LOCK TABLES `field_formphone` WRITE;
/*!40000 ALTER TABLE `field_formphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_formphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_formsubject`
--

DROP TABLE IF EXISTS `field_formsubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_formsubject` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_formsubject`
--

LOCK TABLES `field_formsubject` WRITE;
/*!40000 ALTER TABLE `field_formsubject` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_formsubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_imagearticle`
--

DROP TABLE IF EXISTS `field_imagearticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_imagearticle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_imagearticle`
--

LOCK TABLES `field_imagearticle` WRITE;
/*!40000 ALTER TABLE `field_imagearticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_imagearticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_imagegallery`
--

DROP TABLE IF EXISTS `field_imagegallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_imagegallery` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_imagegallery`
--

LOCK TABLES `field_imagegallery` WRITE;
/*!40000 ALTER TABLE `field_imagegallery` DISABLE KEYS */;
INSERT INTO `field_imagegallery` VALUES (1007,'hotel-twin-room.jpg',1,'','2014-01-25 15:35:16','2014-01-25 15:35:16'),(1007,'dummy.jpg',2,'','2014-01-25 15:35:17','2014-01-25 15:35:17'),(1007,'hotel-deluxe-room.jpg',0,'','2014-01-25 15:35:16','2014-01-25 15:35:16'),(1007,'ipad.jpg',3,'','2014-01-25 15:35:17','2014-01-25 15:35:17');
/*!40000 ALTER TABLE `field_imagegallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_imageslide`
--

DROP TABLE IF EXISTS `field_imageslide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_imageslide` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_imageslide`
--

LOCK TABLES `field_imageslide` WRITE;
/*!40000 ALTER TABLE `field_imageslide` DISABLE KEYS */;
INSERT INTO `field_imageslide` VALUES (1,'dummy-4.jpg',3,'','2014-02-10 07:33:04','2014-02-10 07:33:04',''),(1,'dummy-3.jpg',2,'','2014-02-10 07:33:02','2014-02-10 07:33:02',''),(1,'dummy-2.jpg',1,'','2014-02-10 07:33:03','2014-02-10 07:33:03',''),(1,'dummy-1.jpg',0,'','2014-02-10 07:33:03','2014-02-10 07:33:03','');
/*!40000 ALTER TABLE `field_imageslide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_metadescription`
--

DROP TABLE IF EXISTS `field_metadescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_metadescription` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_metadescription`
--

LOCK TABLES `field_metadescription` WRITE;
/*!40000 ALTER TABLE `field_metadescription` DISABLE KEYS */;
INSERT INTO `field_metadescription` VALUES (1,'Testing meta description');
/*!40000 ALTER TABLE `field_metadescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_metakeyword`
--

DROP TABLE IF EXISTS `field_metakeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_metakeyword` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_metakeyword`
--

LOCK TABLES `field_metakeyword` WRITE;
/*!40000 ALTER TABLE `field_metakeyword` DISABLE KEYS */;
INSERT INTO `field_metakeyword` VALUES (1,'testing keyword');
/*!40000 ALTER TABLE `field_metakeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_pass`
--

LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
INSERT INTO `field_pass` VALUES (41,'VZAeQPAoaOfswXWaqSKBFW9LK08FXAy','$2y$11$T21XtkT4aLYDWkMtKZVc7u'),(40,'','');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_permissions`
--

LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
INSERT INTO `field_permissions` VALUES (38,32,1),(38,34,2),(38,35,3),(37,36,0),(38,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(38,54,6);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_process`
--

LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
INSERT INTO `field_process` VALUES (6,17),(3,12),(8,12),(9,14),(10,7),(11,47),(16,48),(300,104),(21,50),(29,66),(23,10),(304,138),(31,136),(22,76),(30,68),(303,129),(2,87),(302,121),(301,109),(28,76);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_redirect`
--

DROP TABLE IF EXISTS `field_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_redirect` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_redirect`
--

LOCK TABLES `field_redirect` WRITE;
/*!40000 ALTER TABLE `field_redirect` DISABLE KEYS */;
INSERT INTO `field_redirect` VALUES (1010,'http://gusdecool.com');
/*!40000 ALTER TABLE `field_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_roles`
--

LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
INSERT INTO `field_roles` VALUES (40,37,0),(41,37,0),(41,38,1);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_sitemap_ignore`
--

DROP TABLE IF EXISTS `field_sitemap_ignore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_sitemap_ignore` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_sitemap_ignore`
--

LOCK TABLES `field_sitemap_ignore` WRITE;
/*!40000 ALTER TABLE `field_sitemap_ignore` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_sitemap_ignore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_title`
--

LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
INSERT INTO `field_title` VALUES (14,'Edit Template'),(15,'Add Template'),(12,'Templates'),(11,'Templates'),(19,'Field groups'),(20,'Edit Fieldgroup'),(16,'Fields'),(17,'Fields'),(18,'Edit Field'),(22,'Setup'),(3,'Pages'),(6,'Add Page'),(8,'Page List'),(9,'Save Sort'),(10,'Edit Page'),(21,'Modules'),(29,'Users'),(30,'Roles'),(2,'Admin'),(7,'Trash'),(27,'404 Page Not Found'),(302,'Insert Link'),(23,'Login'),(304,'Profile'),(301,'Empty Trash'),(300,'Search'),(303,'Insert Image'),(28,'Access'),(31,'Permissions'),(32,'Edit pages'),(34,'Delete pages'),(35,'Move pages (change parent)'),(36,'View pages'),(50,'Sort child pages'),(51,'Change templates on pages'),(52,'Administer users (role must also have template edit access)'),(53,'User can update profile/password'),(54,'Lock or unlock a page'),(1,'Home'),(1001,'About'),(1006,'Contact us'),(1007,'Gallery'),(1009,'Configuration'),(1010,'Redirect');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (2,'admin'),(3,'user'),(4,'role'),(5,'permission'),(1,'home'),(97,'common'),(98,'formContactUs'),(99,'contact'),(100,'gallery'),(101,'config'),(102,'redirect');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups_fields`
--

LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
INSERT INTO `fieldgroups_fields` VALUES (2,2,1,NULL),(2,1,0,NULL),(3,3,0,NULL),(3,4,2,NULL),(4,5,0,NULL),(5,1,0,NULL),(3,92,1,NULL),(98,102,8,''),(97,79,2,''),(97,78,1,''),(1,78,1,''),(1,79,2,''),(98,101,7,''),(98,100,6,''),(98,99,5,''),(98,98,4,''),(98,97,3,''),(98,79,2,''),(98,78,1,''),(98,1,0,''),(99,92,3,''),(99,79,2,''),(99,78,1,''),(99,1,0,''),(97,1,0,''),(100,79,2,''),(100,78,1,''),(100,1,0,''),(100,76,3,''),(100,103,4,NULL),(1,76,3,''),(1,1,0,''),(97,76,3,''),(97,105,4,NULL),(99,105,4,NULL),(1,105,4,''),(1,44,5,NULL),(101,79,0,''),(101,78,1,''),(101,1,2,''),(102,106,3,''),(102,79,2,''),(102,78,1,''),(102,1,0,'');
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'FieldtypePageTitle','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"tags\":\"BungaWire\"}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(97,'FieldtypeText','formFirstName',0,'First Name','{\"size\":0,\"maxlength\":2048,\"tags\":\"BungaWire-Form\"}'),(98,'FieldtypeText','formLastName',0,'Last Name','{\"size\":0,\"maxlength\":2048,\"tags\":\"BungaWire-Form\"}'),(99,'FieldtypeText','formPhone',0,'Phone Number','{\"size\":0,\"maxlength\":2048,\"tags\":\"BungaWire-Form\"}'),(100,'FieldtypeEmail','formEmail',0,'Email Address','{\"size\":0,\"maxlength\":512,\"tags\":\"-BungaWire-Form\"}'),(101,'FieldtypeText','formSubject',0,'Subject','{\"size\":0,\"maxlength\":2048,\"tags\":\"BungaWire-Form\"}'),(102,'FieldtypeTextarea','formMessage',0,'Message','{\"inputfieldClass\":\"InputfieldTextarea\",\"rows\":5,\"tags\":\"BungaWire-Form\"}'),(44,'FieldtypeImage','imageSlide',0,'Image Slide','{\"extensions\":\"gif jpg jpeg png\",\"entityEncode\":1,\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":3,\"description\":\"Content of image slides, you can upload more than one image.\",\"useTags\":1,\"tags\":\"BungaWire\",\"collapsed\":5}'),(79,'FieldtypeTextarea','metaDescription',4,'Meta Description','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"description\":\"Short description of this page, used for Search Engine. Recommended not more than 160 characters.\",\"stripTags\":1,\"tags\":\"BungaWire\"}'),(76,'FieldtypeTextarea','article',0,'Article','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":20,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre\",\"plugins\":\"inlinepopups,safari,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre\",\"tags\":\"-BungaWire\",\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":0,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":\"pwimage,pwlink,sourcedialog\",\"removePlugins\":\"image,magicline\"}'),(78,'FieldtypeText','metaKeyword',4,'Meta Keyword','{\"description\":\"Use this determine meta keyword for Search Engine. Each keyword separated by comma (,).\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"stripTags\":1,\"tags\":\"BungaWire\"}'),(103,'FieldtypeImage','imageGallery',0,'Image Gallery','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":5,\"descriptionRows\":1,\"adminThumbs\":1,\"tags\":\"-BungaWire\",\"fileSchema\":2}'),(104,'FieldtypeCheckbox','sitemap_ignore',0,'Hide page from XML sitemap','{\"description\":\"Hide this page and its children from the XML sitemap\",\"tags\":\"-BungaWire\"}'),(105,'FieldtypeImage','imageArticle',0,'Image Article','{\"description\":\"Image for article\",\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":5,\"descriptionRows\":1,\"tags\":\"-BungaWire\",\"fileSchema\":2}'),(106,'FieldtypeURL','redirect',0,'Redirect URL','{\"noRelative\":0,\"addRoot\":0,\"required\":1,\"size\":0,\"maxlength\":1024}');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'FieldtypeTextarea',0,''),(2,'FieldtypeNumber',0,''),(3,'FieldtypeText',0,''),(4,'FieldtypePage',0,''),(30,'InputfieldForm',0,''),(6,'FieldtypeFile',0,''),(7,'ProcessPageEdit',1,''),(10,'ProcessLogin',0,''),(147,'TextformatterPstripper',1,''),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}'),(121,'ProcessPageEditLink',1,''),(14,'ProcessPageSort',0,''),(15,'InputfieldPageListSelect',0,''),(117,'JqueryUI',1,''),(17,'ProcessPageAdd',0,''),(125,'SessionLoginThrottle',3,''),(122,'InputfieldPassword',0,''),(25,'InputfieldAsmSelect',0,''),(116,'JqueryCore',1,''),(27,'FieldtypeModule',0,''),(28,'FieldtypeDatetime',0,''),(29,'FieldtypeEmail',0,''),(108,'InputfieldURL',0,''),(32,'InputfieldSubmit',0,''),(33,'InputfieldWrapper',0,''),(34,'InputfieldText',0,''),(35,'InputfieldTextarea',0,''),(36,'InputfieldSelect',0,''),(37,'InputfieldCheckbox',0,''),(38,'InputfieldCheckboxes',0,''),(39,'InputfieldRadios',0,''),(40,'InputfieldHidden',0,''),(41,'InputfieldName',0,''),(43,'InputfieldSelectMultiple',0,''),(45,'JqueryWireTabs',0,''),(46,'ProcessPage',0,''),(47,'ProcessTemplate',0,''),(48,'ProcessField',0,''),(50,'ProcessModule',0,''),(114,'PagePermissions',3,''),(97,'FieldtypeCheckbox',1,''),(115,'PageRender',3,'{\"clearCache\":1}'),(55,'InputfieldFile',0,''),(56,'InputfieldImage',0,''),(57,'FieldtypeImage',0,''),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}'),(61,'TextformatterEntities',0,''),(145,'TextformatterMarkdownExtra',1,''),(146,'TextformatterSmartypants',1,''),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}'),(67,'MarkupAdminDataTable',0,''),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}'),(76,'ProcessList',0,''),(78,'InputfieldFieldset',0,''),(79,'InputfieldMarkup',0,''),(80,'InputfieldEmail',0,''),(89,'FieldtypeFloat',1,''),(83,'ProcessPageView',0,''),(84,'FieldtypeInteger',0,''),(85,'InputfieldInteger',0,''),(86,'InputfieldPageName',0,''),(87,'ProcessHome',0,''),(90,'InputfieldFloat',0,''),(92,'InputfieldTinyMCE',0,''),(94,'InputfieldDatetime',0,''),(98,'MarkupPagerNav',0,''),(129,'ProcessPageEditImageSelect',1,''),(102,'JqueryFancybox',1,''),(103,'JqueryTableSorter',1,''),(104,'ProcessPageSearch',1,'{\"searchFields\":\"title body\",\"displayField\":\"title path\"}'),(105,'FieldtypeFieldsetOpen',1,''),(106,'FieldtypeFieldsetClose',1,''),(107,'FieldtypeFieldsetTabOpen',1,''),(109,'ProcessPageTrash',1,''),(111,'FieldtypePageTitle',1,''),(112,'InputfieldPageTitle',0,''),(113,'MarkupPageArray',3,''),(131,'InputfieldButton',0,''),(133,'FieldtypePassword',1,''),(134,'ProcessPageType',1,'{\"showFields\":[]}'),(135,'FieldtypeURL',1,''),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}'),(137,'InputfieldPageListSelectMultiple',0,''),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\"]}'),(139,'SystemUpdater',1,'{\"systemVersion\":3}'),(148,'ProcessForgotPassword',1,''),(150,'FormTemplateProcessor',0,''),(151,'TemplateTwigReplace',3,'{\"fuel\":\"page, pages, config, session, user, input, templates\",\"cacheEnable\":\"\",\"cacheDir\":\"twig\\/\",\"cacheAutoReload\":1,\"autoEscape\":false}'),(152,'MarkupSitemapXML',3,''),(153,'MarkupCache',3,''),(154,'MarkupSimpleNavigation',0,''),(155,'InputfieldCKEditor',0,'');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1,'home',9,'2014-02-19 19:52:09',41,'0000-00-00 00:00:00',2,0),(2,1,2,'manager',1035,'2014-01-22 15:33:09',40,'0000-00-00 00:00:00',2,5),(3,2,2,'page',21,'2011-03-29 13:37:06',41,'0000-00-00 00:00:00',2,0),(6,3,2,'add',21,'2011-03-29 13:37:06',41,'0000-00-00 00:00:00',2,0),(7,1,2,'trash',1039,'2011-08-14 14:04:52',41,'2010-02-06 21:29:39',2,6),(8,3,2,'list',21,'2011-03-29 13:37:06',41,'0000-00-00 00:00:00',2,1),(9,3,2,'sort',23,'2011-03-29 13:37:06',41,'0000-00-00 00:00:00',2,2),(10,3,2,'edit',21,'2011-03-29 13:37:06',41,'0000-00-00 00:00:00',2,3),(11,22,2,'template',21,'2011-03-29 13:37:06',41,'2010-02-01 03:04:54',2,0),(16,22,2,'field',21,'2011-03-29 13:37:06',41,'2010-02-01 04:44:07',2,2),(21,2,2,'module',21,'2011-03-29 13:37:06',41,'2010-02-02 02:02:24',2,2),(22,2,2,'setup',21,'2011-03-29 13:37:06',41,'2010-02-09 04:16:59',2,1),(23,2,2,'login',1035,'2011-05-03 15:38:10',41,'2010-02-17 01:59:39',2,4),(27,1,1,'http404',1035,'2014-01-22 18:06:03',41,'2010-06-02 22:53:03',3,4),(28,2,2,'access',13,'2011-05-03 15:38:10',41,'2011-03-19 11:14:20',2,3),(29,28,2,'users',29,'2011-04-04 16:39:08',41,'2011-03-19 11:15:29',2,0),(30,28,2,'roles',29,'2011-04-04 16:38:39',41,'2011-03-19 11:15:45',2,1),(31,28,2,'permissions',29,'2011-04-04 16:53:52',41,'2011-03-19 11:16:00',2,2),(32,31,5,'page-edit',25,'2011-09-06 07:34:24',41,'2011-03-19 11:17:03',2,2),(34,31,5,'page-delete',25,'2011-09-06 07:34:33',41,'2011-03-19 11:17:23',2,3),(35,31,5,'page-move',25,'2011-09-06 07:34:48',41,'2011-03-19 11:17:41',2,4),(36,31,5,'page-view',25,'2011-09-06 07:34:14',41,'2011-03-19 11:17:57',2,0),(37,30,4,'guest',25,'2011-04-04 17:37:19',41,'2011-03-19 11:18:41',2,0),(38,30,4,'superuser',25,'2011-08-17 06:34:39',41,'2011-03-19 11:18:55',2,1),(41,29,3,'admin',1,'2014-01-22 15:33:09',40,'2011-03-19 11:41:26',2,0),(40,29,3,'guest',25,'2011-08-17 06:26:09',41,'2011-03-20 09:31:59',2,1),(50,31,5,'page-sort',25,'2011-09-06 07:34:58',41,'2011-03-26 14:04:50',41,5),(51,31,5,'page-template',25,'2011-09-06 07:35:09',41,'2011-03-26 14:25:31',41,6),(52,31,5,'user-admin',25,'2011-09-06 07:35:42',41,'2011-03-29 16:06:47',41,10),(53,31,5,'profile-edit',1,'2011-08-16 14:32:48',41,'2011-04-25 16:02:22',41,13),(54,31,5,'page-lock',1,'2011-08-15 09:48:12',41,'2011-08-15 09:45:48',41,8),(300,3,2,'search',21,'2011-03-29 13:37:06',41,'2010-08-03 21:23:59',2,5),(301,3,2,'trash',23,'2011-03-29 13:37:06',41,'2010-09-27 21:39:30',2,5),(302,3,2,'link',17,'2011-03-29 13:37:06',41,'2010-09-30 21:03:56',2,6),(303,3,2,'image',17,'2011-03-29 13:37:06',41,'2010-10-12 19:56:48',2,7),(304,2,2,'profile',1025,'2011-05-03 15:38:10',41,'2011-04-25 15:57:18',41,5),(1001,1,43,'about',1,'2014-01-22 19:24:08',41,'2010-10-25 14:39:33',2,0),(1006,1,45,'contact-us',1,'2014-01-22 20:05:33',41,'2014-01-22 19:28:30',41,1),(1007,1,46,'gallery',1,'2014-01-25 20:35:31',41,'2014-01-25 20:34:22',41,2),(1010,1,48,'redirect',1,'2014-02-19 19:53:04',41,'2014-02-19 19:52:42',41,7),(1009,1,47,'configuration',1025,'2014-02-10 12:43:23',41,'2014-02-10 12:42:58',41,6);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_access`
--

LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
INSERT INTO `pages_access` VALUES (37,2,'2011-09-06 04:10:09'),(38,2,'2011-09-06 04:10:09'),(32,2,'2011-09-06 04:10:09'),(34,2,'2011-09-06 04:10:09'),(35,2,'2011-09-06 04:10:09'),(36,2,'2011-09-06 04:10:09'),(50,2,'2011-09-06 04:10:09'),(51,2,'2011-09-06 04:10:09'),(52,2,'2011-09-06 04:10:09'),(53,2,'2011-09-06 04:10:09'),(54,2,'2011-09-06 04:10:09'),(1006,1,'2014-01-22 19:28:30'),(1001,1,'2014-01-22 19:24:08'),(1007,1,'2014-01-25 20:34:22'),(1009,1,'2014-02-10 12:42:58'),(1010,1,'2014-02-19 19:52:42');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_parents`
--

LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
INSERT INTO `pages_parents` VALUES (2,1),(3,1),(3,2),(7,1),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_sortfields`
--

LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process_forgot_password`
--

DROP TABLE IF EXISTS `process_forgot_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process_forgot_password` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `token` char(32) NOT NULL,
  `ts` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `ts` (`ts`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process_forgot_password`
--

LOCK TABLES `process_forgot_password` WRITE;
/*!40000 ALTER TABLE `process_forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `process_forgot_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_login_throttle`
--

LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"tags\":\"BungaWire\",\"roles\":[37]}'),(44,'formContactUs',98,0,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"label\":\"Form Contact Us\",\"tags\":\"-BungaWire-Form\"}'),(43,'common',97,0,0,'{\"urlSegments\":1,\"slashUrls\":1,\"tags\":\"-BungaWire\"}'),(45,'contact',99,0,0,'{\"slashUrls\":1,\"tags\":\"BungaWire\"}'),(46,'gallery',100,0,0,'{\"slashUrls\":1,\"tags\":\"-BungaWire\"}'),(47,'config',101,0,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"tags\":\"-BungaWire\"}'),(48,'redirect',102,0,0,'{\"slashUrls\":1,\"label\":\"Redirect\"}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-20  3:54:54
