-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: kooba
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exp_actions`
--

DROP TABLE IF EXISTS `exp_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_actions`
--

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;
INSERT INTO `exp_actions` VALUES (1,'Channel','submit_entry',0),(2,'Channel','smiley_pop',0),(3,'Channel','combo_loader',0),(4,'Channel','live_preview',1),(5,'Comment','insert_new_comment',0),(6,'Comment_mcp','delete_comment_notification',0),(7,'Comment','comment_subscribe',0),(8,'Comment','edit_comment',0),(9,'Consent','grantConsent',0),(10,'Consent','submitConsent',0),(11,'Consent','withdrawConsent',0),(12,'Member','registration_form',0),(13,'Member','register_member',0),(14,'Member','activate_member',0),(15,'Member','member_login',0),(16,'Member','member_logout',0),(17,'Member','send_reset_token',0),(18,'Member','process_reset_password',0),(19,'Member','send_member_email',0),(20,'Member','update_un_pw',0),(21,'Member','do_member_search',0),(22,'Member','member_delete',0),(23,'Member','send_username',0),(24,'Member','update_profile',0),(25,'Member','upload_avatar',0),(26,'Member','recaptcha_check',1),(27,'Member','validate',0),(28,'Rte','pages_autocomplete',0),(29,'File','addonIcon',1),(30,'Relationship','entryList',0),(31,'Search','do_search',1),(32,'Pro','setCookie',0),(33,'Pro','qrCode',0),(34,'Pro','validateMfa',0),(35,'Pro','invokeMfa',0),(36,'Pro','enableMfa',0),(37,'Pro','disableMfa',0),(38,'Pro','resetMfa',0);
/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_captcha`
--

DROP TABLE IF EXISTS `exp_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `word` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_captcha`
--

LOCK TABLES `exp_captcha` WRITE;
/*!40000 ALTER TABLE `exp_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_categories`
--

DROP TABLE IF EXISTS `exp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_url_title` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `parent_id` (`parent_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_categories`
--

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;
INSERT INTO `exp_categories` VALUES (1,1,1,0,'Featured ','featured','','',1);
/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_field_data`
--

DROP TABLE IF EXISTS `exp_category_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_field_data`
--

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;
INSERT INTO `exp_category_field_data` VALUES (1,1,1);
/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_fields`
--

DROP TABLE IF EXISTS `exp_category_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field_label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field_type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `field_list_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT 128,
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT 8,
  `field_default_fmt` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `field_required` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  `field_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_field_data` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_fields`
--

LOCK TABLES `exp_category_fields` WRITE;
/*!40000 ALTER TABLE `exp_category_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_groups`
--

DROP TABLE IF EXISTS `exp_category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `group_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `field_html_formatting` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `can_edit_categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `can_delete_categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_groups`
--

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;
INSERT INTO `exp_category_groups` VALUES (1,1,'Featured ','a',0,'all','','');
/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_posts`
--

DROP TABLE IF EXISTS `exp_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_posts`
--

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;
INSERT INTO `exp_category_posts` VALUES (6,1);
/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data`
--

DROP TABLE IF EXISTS `exp_channel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `channel_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data`
--

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;
INSERT INTO `exp_channel_data` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,1,1);
/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data_field_2`
--

DROP TABLE IF EXISTS `exp_channel_data_field_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data_field_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `field_id_2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_ft_2` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data_field_2`
--

LOCK TABLES `exp_channel_data_field_2` WRITE;
/*!40000 ALTER TABLE `exp_channel_data_field_2` DISABLE KEYS */;
INSERT INTO `exp_channel_data_field_2` VALUES (1,1,' 1678976040','xhtml'),(2,2,' 1679753700','xhtml'),(3,3,' 1680441360','xhtml'),(4,4,' 1681305360','xhtml'),(5,5,' 1680355020  1680441420','xhtml'),(6,6,NULL,'xhtml');
/*!40000 ALTER TABLE `exp_channel_data_field_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data_field_3`
--

DROP TABLE IF EXISTS `exp_channel_data_field_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data_field_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `field_id_3` int(10) DEFAULT 0,
  `field_dt_3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_ft_3` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data_field_3`
--

LOCK TABLES `exp_channel_data_field_3` WRITE;
/*!40000 ALTER TABLE `exp_channel_data_field_3` DISABLE KEYS */;
INSERT INTO `exp_channel_data_field_3` VALUES (1,0,1678976040,'','xhtml'),(2,0,1679753700,'','xhtml'),(3,0,1680441360,'','xhtml'),(4,0,1681305360,'','xhtml'),(5,0,1680355020,'','xhtml'),(6,0,1680441420,'','xhtml');
/*!40000 ALTER TABLE `exp_channel_data_field_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data_field_4`
--

DROP TABLE IF EXISTS `exp_channel_data_field_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data_field_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `field_id_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_ft_4` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data_field_4`
--

LOCK TABLES `exp_channel_data_field_4` WRITE;
/*!40000 ALTER TABLE `exp_channel_data_field_4` DISABLE KEYS */;
INSERT INTO `exp_channel_data_field_4` VALUES (1,1,'','none'),(2,2,'','none'),(3,3,'','none'),(4,4,'','none'),(5,5,'true','none'),(6,6,'','none');
/*!40000 ALTER TABLE `exp_channel_data_field_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data_field_5`
--

DROP TABLE IF EXISTS `exp_channel_data_field_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data_field_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `field_id_5` int(10) DEFAULT 0,
  `field_dt_5` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_ft_5` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data_field_5`
--

LOCK TABLES `exp_channel_data_field_5` WRITE;
/*!40000 ALTER TABLE `exp_channel_data_field_5` DISABLE KEYS */;
INSERT INTO `exp_channel_data_field_5` VALUES (1,1,1677420840,'','xhtml'),(2,2,1677420900,'','xhtml'),(3,3,1677420960,'','xhtml'),(4,4,1677421020,'','xhtml'),(5,5,1677421020,'','xhtml'),(6,6,1680426000,'','xhtml');
/*!40000 ALTER TABLE `exp_channel_data_field_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data_field_6`
--

DROP TABLE IF EXISTS `exp_channel_data_field_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data_field_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `field_id_6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_ft_6` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data_field_6`
--

LOCK TABLES `exp_channel_data_field_6` WRITE;
/*!40000 ALTER TABLE `exp_channel_data_field_6` DISABLE KEYS */;
INSERT INTO `exp_channel_data_field_6` VALUES (1,1,'{file:5:url}','none'),(2,2,'{file:6:url}','none'),(3,3,'{file:2:url}','none'),(4,4,'{file:3:url}','none'),(5,5,'{file:4:url}','none'),(6,6,'{file:1:url}','none');
/*!40000 ALTER TABLE `exp_channel_data_field_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data_field_7`
--

DROP TABLE IF EXISTS `exp_channel_data_field_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_data_field_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `field_id_7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_ft_7` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data_field_7`
--

LOCK TABLES `exp_channel_data_field_7` WRITE;
/*!40000 ALTER TABLE `exp_channel_data_field_7` DISABLE KEYS */;
INSERT INTO `exp_channel_data_field_7` VALUES (1,6,'1','none');
/*!40000 ALTER TABLE `exp_channel_data_field_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_entries_autosave`
--

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versioning_enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT 0,
  `view_count_two` int(10) unsigned NOT NULL DEFAULT 0,
  `view_count_three` int(10) unsigned NOT NULL DEFAULT 0,
  `view_count_four` int(10) unsigned NOT NULL DEFAULT 0,
  `allow_comments` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `sticky` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT 0,
  `comment_expiration_date` int(10) NOT NULL DEFAULT 0,
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT 0,
  `entry_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`(191)),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_entry_hidden_fields`
--

DROP TABLE IF EXISTS `exp_channel_entry_hidden_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_entry_hidden_fields` (
  `entry_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entry_hidden_fields`
--

LOCK TABLES `exp_channel_entry_hidden_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_entry_hidden_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_entry_hidden_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_field_groups_fields`
--

DROP TABLE IF EXISTS `exp_channel_field_groups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_field_groups_fields` (
  `field_id` int(6) unsigned NOT NULL,
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`field_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_field_groups_fields`
--

LOCK TABLES `exp_channel_field_groups_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_field_groups_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_field_groups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_fields`
--

DROP TABLE IF EXISTS `exp_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT 1,
  `field_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `field_list_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_pre_populate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT 8,
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `field_search` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `field_is_conditional` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'any',
  `field_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_field_data` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `enable_frontedit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`field_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_fields`
--

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channel_fields` VALUES (2,0,'date_of_show','Dates of the shows','','fluid_field','','n',NULL,NULL,8,NULL,'n','ltr','n','n','n','xhtml','y',2,'any','YToxOntzOjIwOiJmaWVsZF9jaGFubmVsX2ZpZWxkcyI7YToxOntpOjA7czoxOiIzIjt9fQ==','n','y'),(3,0,'date_show','Date show','','date','','n',NULL,NULL,8,NULL,'n','ltr','n','n','n','xhtml','y',3,'any','YTowOnt9','n','y'),(4,0,'sold_out','Sold out','','checkboxes','','n',NULL,NULL,8,NULL,'n','ltr','n','n','n','none','y',3,'any','YToxOntzOjE3OiJ2YWx1ZV9sYWJlbF9wYWlycyI7YToxOntpOjE7czo5OiJTb3VsZCBvdXQiO319','n','y'),(5,0,'date_on_sale','Date on Sale','','date','','n',NULL,NULL,8,NULL,'y','ltr','n','n','n','xhtml','y',4,'any','YTowOnt9','n','y'),(6,0,'photo','Photo','','file','','n',NULL,NULL,8,NULL,'y','ltr','n','n','n','none','y',5,'image','YTo1OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6NToiaW1hZ2UiO3M6MTk6ImFsbG93ZWRfZGlyZWN0b3JpZXMiO3M6MzoiYWxsIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czo5OiJmaWVsZF9mbXQiO3M6NDoibm9uZSI7fQ==','n','y'),(7,0,'featured','Featured','','checkboxes','','n',NULL,NULL,8,NULL,'n','ltr','n','n','n','none','y',6,'any','YToxOntzOjE3OiJ2YWx1ZV9sYWJlbF9wYWlycyI7YToxOntpOjE7czo4OiJGZWF0dXJlZCI7fX0=','n','y');
/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_form_settings`
--

DROP TABLE IF EXISTS `exp_channel_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 0,
  `channel_id` int(6) unsigned NOT NULL DEFAULT 0,
  `default_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `allow_guest_posts` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_form_settings`
--

LOCK TABLES `exp_channel_form_settings` WRITE;
/*!40000 ALTER TABLE `exp_channel_form_settings` DISABLE KEYS */;
INSERT INTO `exp_channel_form_settings` VALUES (1,1,1,'','n',1);
/*!40000 ALTER TABLE `exp_channel_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_member_roles`
--

DROP TABLE IF EXISTS `exp_channel_member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_member_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_member_roles`
--

LOCK TABLES `exp_channel_member_roles` WRITE;
/*!40000 ALTER TABLE `exp_channel_member_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_titles`
--

DROP TABLE IF EXISTS `exp_channel_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT 0,
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(4) unsigned NOT NULL,
  `versioning_enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT 0,
  `view_count_two` int(10) unsigned NOT NULL DEFAULT 0,
  `view_count_three` int(10) unsigned NOT NULL DEFAULT 0,
  `view_count_four` int(10) unsigned NOT NULL DEFAULT 0,
  `allow_comments` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `sticky` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT 0,
  `comment_expiration_date` int(10) NOT NULL DEFAULT 0,
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`(191)),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`),
  KEY `sticky_date_id_idx` (`sticky`,`entry_date`,`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_titles`
--

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;
INSERT INTO `exp_channel_titles` VALUES (1,1,1,1,NULL,'::1','Paul Heaton and Jacqui Abbott','http-localhost-expressionengine-admin.php','open',1,'n',0,0,0,0,'y','n',1677420840,'2023','02','26',0,0,1677438308,NULL,0),(2,1,1,1,NULL,'::1','James Taylor & his All-Star Band','james-taylor-his-all-star-band','open',1,'n',0,0,0,0,'y','n',1677420900,'2023','02','26',0,0,1677420953,NULL,0),(3,1,1,1,NULL,'::1','Simply Red','simply-red','open',1,'n',0,0,0,0,'y','n',1677420900,'2023','02','26',0,0,1677420987,NULL,0),(4,1,1,1,NULL,'::1','ABBA Orchestral','abba-orchestral','open',1,'n',0,0,0,0,'y','n',1677420960,'2023','02','26',0,0,1677421031,NULL,0),(5,1,1,1,NULL,'::1','Stormzy','stormzy','open',1,'n',0,0,0,0,'y','n',1677421020,'2023','02','26',0,0,1677421078,NULL,0),(6,1,1,1,NULL,'::1','The War on Drugs','the-war-on-drugs','open',1,'n',0,0,0,0,'y','n',1677421080,'2023','02','26',0,0,1677445311,NULL,0);
/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels`
--

DROP TABLE IF EXISTS `exp_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `channel_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_lang` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT 0,
  `total_records` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_comments` mediumint(8) NOT NULL DEFAULT 0,
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT 0,
  `cat_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deft_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deft_comments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `channel_notify` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sticky_enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `enable_entry_cloning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `comment_url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_system_enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT 5000,
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT 0,
  `comment_require_email` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `comment_notify` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT 0,
  `search_results_url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rss_url` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_versioning` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT 10,
  `default_entry_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_field_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Title',
  `title_field_instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_title_prefix` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_preview` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `max_entries` int(10) unsigned NOT NULL DEFAULT 0,
  `conditional_sync_required` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`(191)),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels`
--

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;
INSERT INTO `exp_channels` VALUES (1,1,'events','Events','http://localhost/kooba/index.php','','en',6,6,0,1677421080,0,'1','open',2,'','y','y',NULL,'all','y','n','n','','n','y','','y','n','n',5000,0,'y','xhtml','safe','n','y','n','n','',0,'','','n',10,'','Title','','','','y',0,'y');
/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels_channel_field_groups`
--

DROP TABLE IF EXISTS `exp_channels_channel_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channels_channel_field_groups` (
  `channel_id` int(4) unsigned NOT NULL,
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`channel_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels_channel_field_groups`
--

LOCK TABLES `exp_channels_channel_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_channels_channel_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channels_channel_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels_channel_fields`
--

DROP TABLE IF EXISTS `exp_channels_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channels_channel_fields` (
  `channel_id` int(4) unsigned NOT NULL,
  `field_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`channel_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels_channel_fields`
--

LOCK TABLES `exp_channels_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channels_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channels_channel_fields` VALUES (1,2),(1,4),(1,5),(1,6),(1,7);
/*!40000 ALTER TABLE `exp_channels_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels_statuses`
--

DROP TABLE IF EXISTS `exp_channels_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_channels_statuses` (
  `channel_id` int(4) unsigned NOT NULL,
  `status_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`channel_id`,`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels_statuses`
--

LOCK TABLES `exp_channels_statuses` WRITE;
/*!40000 ALTER TABLE `exp_channels_statuses` DISABLE KEYS */;
INSERT INTO `exp_channels_statuses` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `exp_channels_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comment_subscriptions`
--

DROP TABLE IF EXISTS `exp_comment_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_comment_subscriptions` (
  `subscription_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) DEFAULT 0,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_sent` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `hash` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `entry_id_member_id` (`entry_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comment_subscriptions`
--

LOCK TABLES `exp_comment_subscriptions` WRITE;
/*!40000 ALTER TABLE `exp_comment_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comment_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comments`
--

DROP TABLE IF EXISTS `exp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT 1,
  `entry_id` int(10) unsigned DEFAULT 0,
  `channel_id` int(4) unsigned DEFAULT 1,
  `author_id` int(10) unsigned DEFAULT 0,
  `status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_date` int(10) DEFAULT NULL,
  `edit_date` int(10) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `entry_id_channel_id_author_id_status_site_id` (`entry_id`,`channel_id`,`author_id`,`status`,`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comments`
--

LOCK TABLES `exp_comments` WRITE;
/*!40000 ALTER TABLE `exp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_config`
--

DROP TABLE IF EXISTS `exp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_config` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT 0,
  `key` varchar(64) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  PRIMARY KEY (`config_id`),
  KEY `site_key` (`site_id`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_config`
--

LOCK TABLES `exp_config` WRITE;
/*!40000 ALTER TABLE `exp_config` DISABLE KEYS */;
INSERT INTO `exp_config` VALUES (1,1,'is_site_on','y'),(2,1,'base_url','http://localhost/kooba/'),(3,1,'base_path','C:/xampp/htdocs/kooba/'),(4,1,'site_index','index.php'),(5,1,'site_url','{base_url}'),(6,1,'cp_url','{base_url}admin.php'),(7,1,'theme_folder_url','{base_url}themes/'),(8,1,'theme_folder_path','{base_path}themes\\'),(9,1,'webmaster_email','vinhas.thiago@gmail.com'),(10,1,'webmaster_name',''),(11,1,'channel_nomenclature','channel'),(12,1,'max_caches','150'),(13,1,'captcha_url','{base_url}images/captchas/'),(14,1,'captcha_path','{base_path}images\\captchas\\'),(15,1,'captcha_font','y'),(16,1,'captcha_rand','y'),(17,1,'captcha_require_members','n'),(18,1,'require_captcha','n'),(19,1,'enable_sql_caching','n'),(20,1,'force_query_string','n'),(21,1,'show_profiler','n'),(22,1,'include_seconds','n'),(23,1,'cookie_domain',''),(24,1,'cookie_path','/'),(25,1,'cookie_httponly','y'),(26,1,'website_session_type','c'),(27,1,'cp_session_type','c'),(28,1,'allow_username_change','y'),(29,1,'allow_multi_logins','y'),(30,1,'password_lockout','y'),(31,1,'password_lockout_interval','1'),(32,1,'require_ip_for_login','y'),(33,1,'require_ip_for_posting','y'),(34,1,'password_security_policy','basic'),(35,1,'allow_dictionary_pw','y'),(36,1,'name_of_dictionary_file','dictionary.txt'),(37,1,'xss_clean_uploads','y'),(38,1,'redirect_method','refresh'),(39,1,'deft_lang','english'),(40,1,'xml_lang','en'),(41,1,'send_headers','y'),(42,1,'gzip_output','n'),(43,1,'default_site_timezone','Europe/Dublin'),(44,1,'date_format','%j/%n/%Y'),(45,1,'time_format','24'),(46,1,'mail_protocol','mail'),(47,1,'email_newline','\\n'),(48,1,'smtp_server',''),(49,1,'smtp_username',''),(50,1,'smtp_password',''),(51,1,'email_smtp_crypto','ssl'),(52,1,'email_debug','n'),(53,1,'email_charset','utf-8'),(54,1,'email_batchmode','n'),(55,1,'email_batch_size',''),(56,1,'mail_format','plain'),(57,1,'word_wrap','y'),(58,1,'email_console_timelock','5'),(59,1,'log_email_console_msgs','y'),(60,1,'log_search_terms','y'),(61,1,'deny_duplicate_data','y'),(62,1,'redirect_submitted_links','n'),(63,1,'enable_censoring','n'),(64,1,'censored_words',''),(65,1,'censor_replacement',''),(66,1,'banned_ips',''),(67,1,'banned_emails',''),(68,1,'banned_usernames',''),(69,1,'banned_screen_names',''),(70,1,'ban_action','restrict'),(71,1,'ban_message','This site is currently unavailable'),(72,1,'ban_destination','http://www.yahoo.com/'),(73,1,'enable_emoticons','y'),(74,1,'emoticon_url','{base_url}images/smileys/'),(75,1,'recount_batch_total','1000'),(76,1,'new_version_check','y'),(77,1,'enable_throttling','n'),(78,1,'banish_masked_ips','y'),(79,1,'max_page_loads','10'),(80,1,'time_interval','8'),(81,1,'lockout_time','30'),(82,1,'banishment_type','message'),(83,1,'banishment_url',''),(84,1,'banishment_message','You have exceeded the allowed page load frequency.'),(85,1,'enable_search_log','y'),(86,1,'max_logged_searches','500'),(87,1,'un_min_len','4'),(88,1,'pw_min_len','5'),(89,1,'allow_member_registration','n'),(90,1,'allow_member_localization','y'),(91,1,'req_mbr_activation','email'),(92,1,'new_member_notification','n'),(93,1,'mbr_notification_emails',''),(94,1,'require_terms_of_service','y'),(95,1,'default_primary_role','5'),(96,1,'profile_trigger','member1677419336'),(97,1,'member_theme','default'),(98,1,'avatar_url','{base_url}images/avatars/'),(99,1,'avatar_path','{base_path}images\\avatars\\'),(100,1,'avatar_max_width','100'),(101,1,'avatar_max_height','100'),(102,1,'avatar_max_kb','50'),(103,1,'enable_photos','n'),(104,1,'photo_url','{base_url}images/member_photos/'),(105,1,'photo_path','\\'),(106,1,'photo_max_width','100'),(107,1,'photo_max_height','100'),(108,1,'photo_max_kb','50'),(109,1,'allow_signatures','y'),(110,1,'sig_maxlength','500'),(111,1,'sig_allow_img_hotlink','n'),(112,1,'sig_allow_img_upload','n'),(113,1,'sig_img_url','{base_url}images/signature_attachments/'),(114,1,'sig_img_path','{base_path}images\\signature_attachments\\'),(115,1,'sig_img_max_width','480'),(116,1,'sig_img_max_height','80'),(117,1,'sig_img_max_kb','30'),(118,1,'prv_msg_enabled','y'),(119,1,'prv_msg_allow_attachments','y'),(120,1,'prv_msg_upload_path','{base_path}images\\pm_attachments\\'),(121,1,'prv_msg_max_attachments','3'),(122,1,'prv_msg_attach_maxsize','250'),(123,1,'prv_msg_attach_total','100'),(124,1,'prv_msg_html_format','safe'),(125,1,'prv_msg_auto_links','y'),(126,1,'prv_msg_max_chars','6000'),(127,1,'memberlist_order_by','member_id'),(128,1,'memberlist_sort_order','desc'),(129,1,'memberlist_row_limit','20'),(130,1,'site_404',''),(131,1,'save_tmpl_revisions','n'),(132,1,'max_tmpl_revisions','5'),(133,1,'strict_urls','y'),(134,1,'enable_template_routes','y'),(135,1,'image_resize_protocol','gd2'),(136,1,'image_library_path',''),(137,1,'word_separator','dash'),(138,1,'use_category_name','n'),(139,1,'reserved_category_word','category'),(140,1,'auto_convert_high_ascii','n'),(141,1,'new_posts_clear_caches','y'),(142,1,'auto_assign_cat_parents','y'),(143,0,'cache_driver','file'),(144,0,'cookie_prefix',''),(145,0,'debug','1'),(146,0,'file_manager_compatibility_mode','n'),(147,0,'is_system_on','y'),(148,0,'cli_enabled','y'),(149,0,'legacy_member_data','n'),(150,0,'legacy_channel_data','n'),(151,0,'legacy_category_field_data','n'),(152,0,'enable_dock','y'),(153,0,'enable_frontedit','y'),(154,0,'automatic_frontedit_links','y'),(155,0,'enable_mfa','y'),(156,0,'autosave_interval_seconds','10'),(157,1,'site_license_key',''),(158,0,'multiple_sites_enabled','n'),(159,1,'show_ee_news','y');
/*!40000 ALTER TABLE `exp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_consent_audit_log`
--

DROP TABLE IF EXISTS `exp_consent_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_consent_audit_log` (
  `consent_audit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `consent_request_id` int(10) unsigned NOT NULL,
  `consent_request_version_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`consent_audit_id`),
  KEY `consent_request_id` (`consent_request_id`),
  KEY `consent_request_version_id` (`consent_request_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_consent_audit_log`
--

LOCK TABLES `exp_consent_audit_log` WRITE;
/*!40000 ALTER TABLE `exp_consent_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_consent_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_consent_request_version_cookies`
--

DROP TABLE IF EXISTS `exp_consent_request_version_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_consent_request_version_cookies` (
  `consent_request_version_id` int(10) unsigned NOT NULL,
  `cookie_id` int(10) unsigned NOT NULL,
  KEY `consent_request_version_cookies` (`consent_request_version_id`,`cookie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_consent_request_version_cookies`
--

LOCK TABLES `exp_consent_request_version_cookies` WRITE;
/*!40000 ALTER TABLE `exp_consent_request_version_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_consent_request_version_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_consent_request_versions`
--

DROP TABLE IF EXISTS `exp_consent_request_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_consent_request_versions` (
  `consent_request_version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `consent_request_id` int(10) unsigned NOT NULL,
  `request` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_date` int(10) NOT NULL DEFAULT 0,
  `author_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`consent_request_version_id`),
  KEY `consent_request_id` (`consent_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_consent_request_versions`
--

LOCK TABLES `exp_consent_request_versions` WRITE;
/*!40000 ALTER TABLE `exp_consent_request_versions` DISABLE KEYS */;
INSERT INTO `exp_consent_request_versions` VALUES (1,1,'These cookies help us personalize content and functionality for you, including remembering changes you have made to parts of the website that you can customize, or selections for services made on previous visits. If you do not allow these cookies, some portions of our website may be less friendly and easy to use, forcing you to enter content or set your preferences on each visit.','none',1677419336,0),(2,2,'These cookies allow us measure how visitors use our website, which pages are popular, and what our traffic sources are. This helps us improve how our website works and make it easier for all visitors to find what they are looking for. The information is aggregated and anonymous, and cannot be used to identify you. If you do not allow these cookies, we will be unable to use your visits to our website to help make improvements.','none',1677419336,0),(3,3,'These cookies are usually placed by third-party advertising networks, which may use information about your website visits to develop a profile of your interests. This information may be shared with other advertisers and/or websites to deliver more relevant advertising to you across multiple websites. If you do not allow these cookies, visits to this website will not be shared with advertising partners and will not contribute to targeted advertising on other websites.','none',1677419336,0);
/*!40000 ALTER TABLE `exp_consent_request_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_consent_requests`
--

DROP TABLE IF EXISTS `exp_consent_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_consent_requests` (
  `consent_request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `consent_request_version_id` int(10) unsigned DEFAULT NULL,
  `user_created` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consent_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `double_opt_in` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `retention_period` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`consent_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_consent_requests`
--

LOCK TABLES `exp_consent_requests` WRITE;
/*!40000 ALTER TABLE `exp_consent_requests` DISABLE KEYS */;
INSERT INTO `exp_consent_requests` VALUES (1,1,'n','Functionality Cookies','ee:cookies_functionality','n',NULL),(2,2,'n','Performance Cookies','ee:cookies_performance','n',NULL),(3,3,'n','Targeting Cookies','ee:cookies_targeting','n',NULL);
/*!40000 ALTER TABLE `exp_consent_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_consents`
--

DROP TABLE IF EXISTS `exp_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_consents` (
  `consent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `consent_request_id` int(10) unsigned NOT NULL,
  `consent_request_version_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `request_copy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consent_given` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `consent_given_via` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_date` int(10) DEFAULT NULL,
  `response_date` int(10) DEFAULT NULL,
  PRIMARY KEY (`consent_id`),
  KEY `consent_request_version_id` (`consent_request_version_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_consents`
--

LOCK TABLES `exp_consents` WRITE;
/*!40000 ALTER TABLE `exp_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_content_types`
--

DROP TABLE IF EXISTS `exp_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_content_types`
--

LOCK TABLES `exp_content_types` WRITE;
/*!40000 ALTER TABLE `exp_content_types` DISABLE KEYS */;
INSERT INTO `exp_content_types` VALUES (2,'channel'),(1,'grid');
/*!40000 ALTER TABLE `exp_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cookie_settings`
--

DROP TABLE IF EXISTS `exp_cookie_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_cookie_settings` (
  `cookie_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cookie_provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_lifetime` int(10) unsigned DEFAULT NULL,
  `cookie_enforced_lifetime` int(10) unsigned DEFAULT NULL,
  `cookie_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cookie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cookie_settings`
--

LOCK TABLES `exp_cookie_settings` WRITE;
/*!40000 ALTER TABLE `exp_cookie_settings` DISABLE KEYS */;
INSERT INTO `exp_cookie_settings` VALUES (1,'ee','csrf_token',7200,NULL,'CSRF Token','A security cookie used to identify the user and prevent Cross Site Request Forgery attacks.'),(2,'ee','flash',0,NULL,'Flash data','User feedback messages, encrypted for security.'),(3,'ee','remember',1209600,NULL,'Remember Me','Determines whether a user is automatically logged in upon visiting the site.'),(4,'ee','sessionid',3600,NULL,'Session ID','Session id, used to associate a logged in user with their data.'),(5,'ee','visitor_consents',NULL,NULL,'Visitor Consents','Saves responses to Consent requests for non-logged in visitors'),(6,'ee','last_activity',NULL,NULL,'Last Activity','Records the time of the last page load. Used in in calculating active sessions.'),(7,'ee','last_visit',NULL,NULL,'Last Visit','Date of the user’s last visit, based on the last_activity cookie. Can be shown as a statistic for members and used by forum and comments to show unread topics for both members and guests.'),(8,'ee','anon',NULL,NULL,'Anonymize','Determines whether the user’s username is displayed in the list of currently logged in members.'),(9,'ee','tracker',0,NULL,'Tracker','Contains the last 5 pages viewed, encrypted for security. Typically used for form or error message returns.'),(10,'cp','viewtype',31104000,NULL,'Filemanager View Type','Determines View Type to be used in Filemanager (table or thumbs view)'),(11,'cp','cp_last_site_id',NULL,NULL,'CP Last Site ID','MSM cookie indicating the last site accessed in the Control Panel.'),(12,'cp','ee_cp_viewmode',NULL,NULL,'CP View Mode','Determines view mode for the Control Panel.'),(13,'cp','secondary_sidebar',NULL,NULL,'Secondary Sidebar State','Determines whether secondary navigation sidebar in the Control Panel should be collapsed for each corresponding section.'),(14,'cp','collapsed_nav',NULL,NULL,'Collapsed Navigation','Determines whether navigation sidebar in the Control Panel should be collapsed.'),(15,'comment','my_email',NULL,NULL,'My email','Email address specified when posting a comment.'),(16,'comment','my_location',NULL,NULL,'My location','Location specified when posting a comment.'),(17,'comment','my_name',NULL,NULL,'My name','Name specified when posting a comment.'),(18,'comment','my_url',NULL,NULL,'My URL','URL specified when posting a comment.'),(19,'comment','notify_me',NULL,NULL,'Notify me','If set to ‘yes’, notifications will be sent to the saved email address when new comments are made.'),(20,'comment','save_info',NULL,NULL,'Save info','If set to ‘yes’, allows additional cookies (my_email, my_location, my_name, my_url) to store guest user information for use when filling out comment forms. This cookie is only set if you submit a comment.'),(21,'pro','frontedit',31104000,NULL,'Front-end editing','Determines whether ExpressioEngine front-end editing features should be enabled.');
/*!40000 ALTER TABLE `exp_cookie_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_log`
--

DROP TABLE IF EXISTS `exp_cp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_log`
--

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;
INSERT INTO `exp_cp_log` VALUES (1,1,1,'admin','::1',1677419343,'Logged in'),(2,1,1,'admin','::1',1677419644,'Logged in'),(3,1,1,'admin','::1',1677420102,'The following field was removed and its data was deleted: <b>Qtd Shows</b>'),(4,1,1,'admin','::1',1677420366,'Channel Created&nbsp;&nbsp;Events'),(5,1,1,'admin','::1',1677420784,'Logged in'),(6,1,1,'admin','::1',1677435475,'Logged in'),(7,1,1,'admin','::1',1677435481,'Logged in'),(8,1,1,'admin','::1',1677435485,'Logged in'),(9,1,1,'admin','::1',1677435797,'Logged out'),(10,1,1,'admin','::1',1677435814,'Logged in');
/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_dashboard_layout_widgets`
--

DROP TABLE IF EXISTS `exp_dashboard_layout_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_dashboard_layout_widgets` (
  `layout_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  KEY `layouts_widgets` (`layout_id`,`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_dashboard_layout_widgets`
--

LOCK TABLES `exp_dashboard_layout_widgets` WRITE;
/*!40000 ALTER TABLE `exp_dashboard_layout_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_dashboard_layout_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_dashboard_layouts`
--

DROP TABLE IF EXISTS `exp_dashboard_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_dashboard_layouts` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`layout_id`),
  KEY `member_id` (`member_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_dashboard_layouts`
--

LOCK TABLES `exp_dashboard_layouts` WRITE;
/*!40000 ALTER TABLE `exp_dashboard_layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_dashboard_layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_dashboard_widgets`
--

DROP TABLE IF EXISTS `exp_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_dashboard_widgets` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_source` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_dashboard_widgets`
--

LOCK TABLES `exp_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `exp_dashboard_widgets` DISABLE KEYS */;
INSERT INTO `exp_dashboard_widgets` VALUES (1,NULL,NULL,'php','pro','comments'),(2,NULL,NULL,'php','pro','eecms_news'),(3,NULL,NULL,'php','pro','members'),(4,NULL,NULL,'php','pro','recent_entries'),(5,NULL,NULL,'php','pro','recent_templates'),(6,NULL,NULL,'html','pro','support');
/*!40000 ALTER TABLE `exp_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_developer_log`
--

DROP TABLE IF EXISTS `exp_developer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deprecated_since` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_instead` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT 0,
  `template_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_group` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snippets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_developer_log`
--

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_dock_prolets`
--

DROP TABLE IF EXISTS `exp_dock_prolets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_dock_prolets` (
  `dock_id` int(10) unsigned NOT NULL,
  `prolet_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_dock_prolets`
--

LOCK TABLES `exp_dock_prolets` WRITE;
/*!40000 ALTER TABLE `exp_dock_prolets` DISABLE KEYS */;
INSERT INTO `exp_dock_prolets` VALUES (1,1);
/*!40000 ALTER TABLE `exp_dock_prolets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_docks`
--

DROP TABLE IF EXISTS `exp_docks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_docks` (
  `dock_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`dock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_docks`
--

LOCK TABLES `exp_docks` WRITE;
/*!40000 ALTER TABLE `exp_docks` DISABLE KEYS */;
INSERT INTO `exp_docks` VALUES (1,0);
/*!40000 ALTER TABLE `exp_docks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache`
--

DROP TABLE IF EXISTS `exp_email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT 0,
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_array` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `plaintext_alt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mailtype` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_fmt` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wordwrap` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `attachments` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache`
--

LOCK TABLES `exp_email_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_mg`
--

DROP TABLE IF EXISTS `exp_email_cache_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`cache_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_mg`
--

LOCK TABLES `exp_email_cache_mg` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_ml`
--

DROP TABLE IF EXISTS `exp_email_cache_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_ml`
--

LOCK TABLES `exp_email_cache_ml` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_ml` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_console_cache`
--

DROP TABLE IF EXISTS `exp_email_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT 0,
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `recipient` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_console_cache`
--

LOCK TABLES `exp_email_console_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_manager_views`
--

DROP TABLE IF EXISTS `exp_entry_manager_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_entry_manager_views` (
  `view_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(6) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `columns` text NOT NULL,
  PRIMARY KEY (`view_id`),
  KEY `channel_id_member_id` (`channel_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_manager_views`
--

LOCK TABLES `exp_entry_manager_views` WRITE;
/*!40000 ALTER TABLE `exp_entry_manager_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_manager_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_versioning`
--

DROP TABLE IF EXISTS `exp_entry_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_versioning`
--

LOCK TABLES `exp_entry_versioning` WRITE;
/*!40000 ALTER TABLE `exp_entry_versioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_versioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_extensions`
--

DROP TABLE IF EXISTS `exp_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hook` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(2) NOT NULL DEFAULT 10,
  `version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_extensions`
--

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;
INSERT INTO `exp_extensions` VALUES (1,'Comment_ext','addCommentMenu','cp_custom_menu','a:0:{}',10,'2.3.3','y');
/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_condition_sets`
--

DROP TABLE IF EXISTS `exp_field_condition_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_field_condition_sets` (
  `condition_set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`condition_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_condition_sets`
--

LOCK TABLES `exp_field_condition_sets` WRITE;
/*!40000 ALTER TABLE `exp_field_condition_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_field_condition_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_condition_sets_channel_fields`
--

DROP TABLE IF EXISTS `exp_field_condition_sets_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_field_condition_sets_channel_fields` (
  `condition_set_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`condition_set_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_condition_sets_channel_fields`
--

LOCK TABLES `exp_field_condition_sets_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_field_condition_sets_channel_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_field_condition_sets_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_conditions`
--

DROP TABLE IF EXISTS `exp_field_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_field_conditions` (
  `condition_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `condition_set_id` int(10) unsigned NOT NULL,
  `condition_field_id` int(10) unsigned NOT NULL,
  `evaluation_rule` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`condition_id`),
  KEY `condition_set_id` (`condition_set_id`),
  KEY `condition_field_id` (`condition_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_conditions`
--

LOCK TABLES `exp_field_conditions` WRITE;
/*!40000 ALTER TABLE `exp_field_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_field_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_groups`
--

DROP TABLE IF EXISTS `exp_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT 1,
  `group_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_groups`
--

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fieldtypes`
--

DROP TABLE IF EXISTS `exp_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_global_settings` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fieldtypes`
--

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_fieldtypes` VALUES (1,'select','1.0.0','YTowOnt9','n'),(2,'text','1.0.0','YTowOnt9','n'),(3,'number','1.0.0','YTowOnt9','n'),(4,'textarea','1.0.0','YTowOnt9','n'),(5,'date','1.0.0','YTowOnt9','n'),(6,'duration','1.0.0','YTowOnt9','n'),(7,'email_address','1.0.0','YTowOnt9','n'),(8,'file','1.1.0','YTowOnt9','n'),(9,'fluid_field','1.0.0','YTowOnt9','n'),(10,'grid','1.0.0','YTowOnt9','n'),(11,'file_grid','1.0.0','YTowOnt9','n'),(12,'multi_select','1.0.0','YTowOnt9','n'),(13,'checkboxes','1.0.0','YTowOnt9','n'),(14,'radio','1.0.0','YTowOnt9','n'),(15,'relationship','1.0.0','YTowOnt9','n'),(16,'rte','2.1.0','YTowOnt9','n'),(17,'slider','1.0.0','YTowOnt9','n'),(18,'range_slider','1.0.0','YTowOnt9','n'),(19,'toggle','1.0.0','YTowOnt9','n'),(20,'url','1.0.0','YTowOnt9','n'),(21,'colorpicker','1.0.0','YTowOnt9','n'),(22,'selectable_buttons','1.0.0','YTowOnt9','n'),(23,'notes','1.0.0','YTowOnt9','n');
/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_categories`
--

DROP TABLE IF EXISTS `exp_file_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned DEFAULT 0,
  `is_cover` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`file_id`,`cat_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_categories`
--

LOCK TABLES `exp_file_categories` WRITE;
/*!40000 ALTER TABLE `exp_file_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_data`
--

DROP TABLE IF EXISTS `exp_file_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_file_data` (
  `file_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_data`
--

LOCK TABLES `exp_file_data` WRITE;
/*!40000 ALTER TABLE `exp_file_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_dimensions`
--

DROP TABLE IF EXISTS `exp_file_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `resize_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `width` int(10) DEFAULT 0,
  `height` int(10) DEFAULT 0,
  `quality` tinyint(1) unsigned DEFAULT 90,
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_dimensions`
--

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_manager_views`
--

DROP TABLE IF EXISTS `exp_file_manager_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_file_manager_views` (
  `view_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `viewtype` varchar(10) NOT NULL DEFAULT 'list',
  `upload_id` int(6) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `columns` text NOT NULL,
  PRIMARY KEY (`view_id`),
  KEY `viewtype_upload_id_member_id` (`viewtype`,`upload_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_manager_views`
--

LOCK TABLES `exp_file_manager_views` WRITE;
/*!40000 ALTER TABLE `exp_file_manager_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_manager_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_usage`
--

DROP TABLE IF EXISTS `exp_file_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_file_usage` (
  `file_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cat_id` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `file_id` (`file_id`),
  KEY `entry_id` (`entry_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_usage`
--

LOCK TABLES `exp_file_usage` WRITE;
/*!40000 ALTER TABLE `exp_file_usage` DISABLE KEYS */;
INSERT INTO `exp_file_usage` VALUES (6,2,0),(2,3,0),(3,4,0),(4,5,0),(1,6,0);
/*!40000 ALTER TABLE `exp_file_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_watermarks`
--

DROP TABLE IF EXISTS `exp_file_watermarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wm_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `wm_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wm_test_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wm_use_font` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `wm_font` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'top',
  `wm_hor_alignment` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wm_use_drop_shadow` char(1) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_watermarks`
--

LOCK TABLES `exp_file_watermarks` WRITE;
/*!40000 ALTER TABLE `exp_file_watermarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_watermarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_files`
--

DROP TABLE IF EXISTS `exp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` enum('File','Directory') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'File',
  `site_id` int(4) unsigned DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT 0,
  `directory_id` int(10) unsigned DEFAULT 0,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(10) DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT 0,
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT 0,
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total_records` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`file_id`),
  KEY `model_type` (`model_type`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `directory_id` (`directory_id`),
  KEY `file_type` (`file_type`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_files`
--

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;
INSERT INTO `exp_files` VALUES (1,'File',1,'TWOD_300x300.jpg',4,0,'image/jpeg','img','TWOD_300x300.jpg',32195,NULL,NULL,NULL,1,1677420864,1,1677420864,'400 400',1),(2,'File',1,'Simply-Red-2020-300x300.jpg',4,0,'image/jpeg','img','Simply-Red-2020-300x300.jpg',17377,NULL,NULL,NULL,1,1677420864,1,1677420864,'400 400',1),(3,'File',1,'abba-orchestral-2021-300x300.jpg',4,0,'image/jpeg','img','abba-orchestral-2021-300x300.jpg',25139,NULL,NULL,NULL,1,1677420864,1,1677420864,'400 400',1),(4,'File',1,'stormzy-2020-300x300.jpg',4,0,'image/jpeg','img','stormzy-2020-300x300.jpg',8387,NULL,NULL,NULL,1,1677420864,1,1677420864,'400 400',1),(5,'File',1,'paul-heaton-300x300.png',4,0,'image/png','img','paul-heaton-300x300.png',58798,NULL,NULL,NULL,1,1677420864,1,1677420864,'400 400',0),(6,'File',1,'JT_300x300.jpg',4,0,'image/jpeg','img','JT_300x300.jpg',19784,NULL,NULL,NULL,1,1677420865,1,1677420865,'400 400',1);
/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fluid_field_data`
--

DROP TABLE IF EXISTS `exp_fluid_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_fluid_field_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fluid_field_id` int(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned NOT NULL,
  `field_id` int(11) unsigned NOT NULL,
  `field_data_id` int(11) unsigned NOT NULL,
  `order` int(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fluid_field_id_entry_id` (`fluid_field_id`,`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fluid_field_data`
--

LOCK TABLES `exp_fluid_field_data` WRITE;
/*!40000 ALTER TABLE `exp_fluid_field_data` DISABLE KEYS */;
INSERT INTO `exp_fluid_field_data` VALUES (1,2,1,3,1,1),(2,2,2,3,2,1),(3,2,3,3,3,1),(4,2,4,3,4,1),(5,2,5,3,5,1),(6,2,5,3,6,2);
/*!40000 ALTER TABLE `exp_fluid_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_global_variables`
--

DROP TABLE IF EXISTS `exp_global_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `variable_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variable_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edit_date` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_global_variables`
--

LOCK TABLES `exp_global_variables` WRITE;
/*!40000 ALTER TABLE `exp_global_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_global_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_grid_columns`
--

DROP TABLE IF EXISTS `exp_grid_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_required` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_search` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_grid_columns`
--

LOCK TABLES `exp_grid_columns` WRITE;
/*!40000 ALTER TABLE `exp_grid_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_grid_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_html_buttons`
--

DROP TABLE IF EXISTS `exp_html_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `member_id` int(10) NOT NULL DEFAULT 0,
  `tag_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_open` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_close` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accesskey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `classname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_html_buttons`
--

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;
INSERT INTO `exp_html_buttons` VALUES (1,1,0,'html_btn_bold','<strong>','</strong>','b',1,'1','html-bold'),(2,1,0,'html_btn_italic','<em>','</em>','i',2,'1','html-italic'),(3,1,0,'html_btn_blockquote','<blockquote>','</blockquote>','q',3,'1','html-quote'),(4,1,0,'html_btn_anchor','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','k',4,'1','html-link'),(5,1,0,'html_btn_picture','<img src=\"[![Link:!:http://]!]\" alt=\"\" height=\"\" width=\"\">','','',5,'1','html-upload');
/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_layout_publish`
--

DROP TABLE IF EXISTS `exp_layout_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `channel_id` int(4) unsigned NOT NULL DEFAULT 0,
  `layout_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_layout` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish`
--

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_layout_publish_member_roles`
--

DROP TABLE IF EXISTS `exp_layout_publish_member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_layout_publish_member_roles` (
  `layout_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`layout_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish_member_roles`
--

LOCK TABLES `exp_layout_publish_member_roles` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish_member_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_layout_publish_member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_bulletin_board`
--

DROP TABLE IF EXISTS `exp_member_bulletin_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT 0,
  `bulletin_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_bulletin_board`
--

LOCK TABLES `exp_member_bulletin_board` WRITE;
/*!40000 ALTER TABLE `exp_member_bulletin_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_bulletin_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_data`
--

DROP TABLE IF EXISTS `exp_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_data`
--

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;
INSERT INTO `exp_member_data` VALUES (1);
/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_fields`
--

DROP TABLE IF EXISTS `exp_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_field_label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_field_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_field_type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `m_field_list_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT 8,
  `m_field_maxl` smallint(3) DEFAULT NULL,
  `m_field_width` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_field_search` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `m_field_required` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `m_field_public` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `m_field_fmt` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `m_field_show_fmt` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `m_field_exclude_from_anon` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `m_field_order` int(3) unsigned DEFAULT NULL,
  `m_field_text_direction` char(3) COLLATE utf8mb4_unicode_ci DEFAULT 'ltr',
  `m_field_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_legacy_field_data` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`m_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_fields`
--

LOCK TABLES `exp_member_fields` WRITE;
/*!40000 ALTER TABLE `exp_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_news_views`
--

DROP TABLE IF EXISTS `exp_member_news_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_member_news_views` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`news_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_news_views`
--

LOCK TABLES `exp_member_news_views` WRITE;
/*!40000 ALTER TABLE `exp_member_news_views` DISABLE KEYS */;
INSERT INTO `exp_member_news_views` VALUES (1,'7.2.10',1);
/*!40000 ALTER TABLE `exp_member_news_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_search`
--

DROP TABLE IF EXISTS `exp_member_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_search`
--

LOCK TABLES `exp_member_search` WRITE;
/*!40000 ALTER TABLE `exp_member_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members`
--

DROP TABLE IF EXISTS `exp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL DEFAULT 0,
  `pending_role_id` int(10) NOT NULL DEFAULT 0,
  `username` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unique_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crypt_key` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backup_mfa_code` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_filename` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_messages` int(4) unsigned NOT NULL DEFAULT 0,
  `accept_messages` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT 0,
  `last_bulletin_date` int(10) NOT NULL DEFAULT 0,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_visit` int(10) unsigned NOT NULL DEFAULT 0,
  `last_activity` int(10) unsigned NOT NULL DEFAULT 0,
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT 0,
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT 0,
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_email_date` int(10) unsigned NOT NULL DEFAULT 0,
  `in_authorlist` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `display_signatures` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `include_seconds` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_theme` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_theme` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracker` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_size` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '28',
  `notepad` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notepad_size` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '18',
  `bookmarklets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_links` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_tabs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_sidebar` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT 0,
  `cp_homepage` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_homepage_channel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_homepage_custom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dismissed_banner` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `enable_mfa` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`member_id`),
  KEY `role_id` (`role_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members`
--

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;
INSERT INTO `exp_members` VALUES (1,1,0,'admin','admin','$2y$10$nu/MDovcObns1Xf4o53F/eXWUIiMxogi5xC6oDodXbi7MLHx3FvH6','','cab59dcb87203c475caca8779b5c0520efefac86','3409febea7736b9386b38e97831ddf7ee1d69d76',NULL,NULL,'vinhas.thiago@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'::1',1677419336,1677426031,1677445395,6,0,0,0,1677421080,0,0,0,'n','y','y','y','y','y','y','y','english','Europe/Berlin',NULL,NULL,NULL,NULL,NULL,NULL,'28',NULL,'18',NULL,'',NULL,'n',0,NULL,NULL,NULL,'n','n');
/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members_role_groups`
--

DROP TABLE IF EXISTS `exp_members_role_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_members_role_groups` (
  `member_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members_role_groups`
--

LOCK TABLES `exp_members_role_groups` WRITE;
/*!40000 ALTER TABLE `exp_members_role_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_members_role_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members_roles`
--

DROP TABLE IF EXISTS `exp_members_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_members_roles` (
  `member_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members_roles`
--

LOCK TABLES `exp_members_roles` WRITE;
/*!40000 ALTER TABLE `exp_members_roles` DISABLE KEYS */;
INSERT INTO `exp_members_roles` VALUES (1,1);
/*!40000 ALTER TABLE `exp_members_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_menu_items`
--

DROP TABLE IF EXISTS `exp_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_menu_items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL DEFAULT 0,
  `set_id` int(10) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`item_id`),
  KEY `set_id` (`set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_menu_items`
--

LOCK TABLES `exp_menu_items` WRITE;
/*!40000 ALTER TABLE `exp_menu_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_menu_sets`
--

DROP TABLE IF EXISTS `exp_menu_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_menu_sets` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_menu_sets`
--

LOCK TABLES `exp_menu_sets` WRITE;
/*!40000 ALTER TABLE `exp_menu_sets` DISABLE KEYS */;
INSERT INTO `exp_menu_sets` VALUES (1,'Default');
/*!40000 ALTER TABLE `exp_menu_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_attachments`
--

DROP TABLE IF EXISTS `exp_message_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT 0,
  `message_id` int(10) unsigned NOT NULL DEFAULT 0,
  `attachment_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachment_location` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT 0,
  `attachment_size` int(10) unsigned NOT NULL DEFAULT 0,
  `is_temp` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_attachments`
--

LOCK TABLES `exp_message_attachments` WRITE;
/*!40000 ALTER TABLE `exp_message_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_copies`
--

DROP TABLE IF EXISTS `exp_message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sender_id` int(10) unsigned NOT NULL DEFAULT 0,
  `recipient_id` int(10) unsigned NOT NULL DEFAULT 0,
  `message_received` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `message_read` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT 0,
  `attachment_downloaded` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT 1,
  `message_authcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_deleted` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `message_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_copies`
--

LOCK TABLES `exp_message_copies` WRITE;
/*!40000 ALTER TABLE `exp_message_copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_data`
--

DROP TABLE IF EXISTS `exp_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT 0,
  `message_date` int(10) unsigned NOT NULL DEFAULT 0,
  `message_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_tracking` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `message_attachments` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_cc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_hide_cc` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT 0,
  `message_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_data`
--

LOCK TABLES `exp_message_data` WRITE;
/*!40000 ALTER TABLE `exp_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_folders`
--

DROP TABLE IF EXISTS `exp_message_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT 0,
  `folder1_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder4_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder5_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder6_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder7_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder8_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder9_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder10_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_folders`
--

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_listed`
--

DROP TABLE IF EXISTS `exp_message_listed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT 0,
  `listed_member` int(10) unsigned NOT NULL DEFAULT 0,
  `listed_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `listed_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_listed`
--

LOCK TABLES `exp_message_listed` WRITE;
/*!40000 ALTER TABLE `exp_message_listed` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_listed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_migrations`
--

DROP TABLE IF EXISTS `exp_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_migrations` (
  `migration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migration_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migration_group` int(10) unsigned DEFAULT NULL,
  `migration_run_date` datetime NOT NULL,
  PRIMARY KEY (`migration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_migrations`
--

LOCK TABLES `exp_migrations` WRITE;
/*!40000 ALTER TABLE `exp_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_module_member_roles`
--

DROP TABLE IF EXISTS `exp_module_member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_module_member_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_module_member_roles`
--

LOCK TABLES `exp_module_member_roles` WRITE;
/*!40000 ALTER TABLE `exp_module_member_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_module_member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_modules`
--

DROP TABLE IF EXISTS `exp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_version` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_cp_backend` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_modules`
--

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;
INSERT INTO `exp_modules` VALUES (1,'Channel','2.1.1','n','n'),(2,'Comment','2.3.3','y','n'),(3,'Consent','1.0.0','n','n'),(4,'Member','2.3.0','n','n'),(5,'Stats','2.2.0','n','n'),(6,'Rte','2.1.0','y','n'),(7,'File','1.1.0','n','n'),(8,'Filepicker','1.0','y','n'),(9,'Relationship','1.0.0','n','n'),(10,'Search','2.3.0','n','n'),(11,'Pro','2.0.0','n','n');
/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_online_users`
--

DROP TABLE IF EXISTS `exp_online_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `member_id` int(10) NOT NULL DEFAULT 0,
  `in_forum` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `anon` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_online_users`
--

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_password_lockout`
--

DROP TABLE IF EXISTS `exp_password_lockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_password_lockout`
--

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_permissions`
--

DROP TABLE IF EXISTS `exp_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_permissions` (
  `permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `site_id` int(5) unsigned NOT NULL,
  `permission` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `role_id_site_id` (`role_id`,`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_permissions`
--

LOCK TABLES `exp_permissions` WRITE;
/*!40000 ALTER TABLE `exp_permissions` DISABLE KEYS */;
INSERT INTO `exp_permissions` VALUES (1,1,1,'can_view_offline_system'),(2,1,1,'can_access_cp'),(3,1,1,'can_access_dock'),(4,1,1,'can_access_footer_report_bug'),(5,1,1,'can_access_footer_new_ticket'),(6,1,1,'can_access_footer_user_guide'),(7,1,1,'can_view_homepage_news'),(8,1,1,'can_upload_new_files'),(9,1,1,'can_edit_files'),(10,1,1,'can_delete_files'),(11,1,1,'can_upload_new_toolsets'),(12,1,1,'can_edit_toolsets'),(13,1,1,'can_delete_toolsets'),(14,1,1,'can_create_upload_directories'),(15,1,1,'can_edit_upload_directories'),(16,1,1,'can_delete_upload_directories'),(17,1,1,'can_access_files'),(18,1,1,'can_access_design'),(19,1,1,'can_access_addons'),(20,1,1,'can_access_members'),(21,1,1,'can_access_sys_prefs'),(22,1,1,'can_access_comm'),(23,1,1,'can_access_utilities'),(24,1,1,'can_access_data'),(25,1,1,'can_access_logs'),(26,1,1,'can_admin_channels'),(27,1,1,'can_create_channels'),(28,1,1,'can_edit_channels'),(29,1,1,'can_delete_channels'),(30,1,1,'can_create_channel_fields'),(31,1,1,'can_edit_channel_fields'),(32,1,1,'can_delete_channel_fields'),(33,1,1,'can_create_statuses'),(34,1,1,'can_delete_statuses'),(35,1,1,'can_edit_statuses'),(36,1,1,'can_create_categories'),(37,1,1,'can_create_roles'),(38,1,1,'can_delete_roles'),(39,1,1,'can_edit_roles'),(40,1,1,'can_admin_design'),(41,1,1,'can_create_members'),(42,1,1,'can_edit_members'),(43,1,1,'can_delete_members'),(44,1,1,'can_admin_roles'),(45,1,1,'can_admin_mbr_templates'),(46,1,1,'can_ban_users'),(47,1,1,'can_admin_addons'),(48,1,1,'can_create_templates'),(49,1,1,'can_edit_templates'),(50,1,1,'can_delete_templates'),(51,1,1,'can_create_template_groups'),(52,1,1,'can_edit_template_groups'),(53,1,1,'can_delete_template_groups'),(54,1,1,'can_create_template_partials'),(55,1,1,'can_edit_template_partials'),(56,1,1,'can_delete_template_partials'),(57,1,1,'can_create_template_variables'),(58,1,1,'can_delete_template_variables'),(59,1,1,'can_edit_template_variables'),(60,1,1,'can_edit_categories'),(61,1,1,'can_delete_categories'),(62,1,1,'can_view_other_entries'),(63,1,1,'can_edit_other_entries'),(64,1,1,'can_assign_post_authors'),(65,1,1,'can_delete_self_entries'),(66,1,1,'can_delete_all_entries'),(67,1,1,'can_view_other_comments'),(68,1,1,'can_edit_own_comments'),(69,1,1,'can_delete_own_comments'),(70,1,1,'can_edit_all_comments'),(71,1,1,'can_delete_all_comments'),(72,1,1,'can_moderate_comments'),(73,1,1,'can_send_cached_email'),(74,1,1,'can_email_roles'),(75,1,1,'can_email_from_profile'),(76,1,1,'can_view_profiles'),(77,1,1,'can_edit_html_buttons'),(78,1,1,'can_post_comments'),(79,1,1,'can_delete_self'),(80,1,1,'can_send_private_messages'),(81,1,1,'can_attach_in_private_messages'),(82,1,1,'can_send_bulletins'),(83,1,1,'can_search'),(84,1,1,'can_create_entries'),(85,1,1,'can_edit_self_entries'),(86,1,1,'can_access_security_settings'),(87,1,1,'can_access_translate'),(88,1,1,'can_access_import'),(89,1,1,'can_access_sql_manager'),(90,1,1,'can_moderate_spam'),(91,1,1,'can_manage_consents'),(92,3,1,'can_view_online_system'),(93,4,1,'can_view_online_system'),(94,5,1,'can_view_online_system'),(95,5,1,'can_email_from_profile'),(96,5,1,'can_view_profiles'),(97,5,1,'can_edit_html_buttons'),(98,5,1,'can_delete_self'),(99,5,1,'can_send_private_messages'),(100,5,1,'can_attach_in_private_messages');
/*!40000 ALTER TABLE `exp_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_plugins`
--

DROP TABLE IF EXISTS `exp_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_plugins` (
  `plugin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_package` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_version` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_typography_related` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`plugin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_plugins`
--

LOCK TABLES `exp_plugins` WRITE;
/*!40000 ALTER TABLE `exp_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_prolets`
--

DROP TABLE IF EXISTS `exp_prolets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_prolets` (
  `prolet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`prolet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_prolets`
--

LOCK TABLES `exp_prolets` WRITE;
/*!40000 ALTER TABLE `exp_prolets` DISABLE KEYS */;
INSERT INTO `exp_prolets` VALUES (1,'pro','Entries_pro');
/*!40000 ALTER TABLE `exp_prolets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_relationships`
--

DROP TABLE IF EXISTS `exp_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `child_id` int(10) unsigned NOT NULL DEFAULT 0,
  `field_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fluid_field_data_id` int(10) unsigned NOT NULL DEFAULT 0,
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT 0,
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT 0,
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT 0,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `fluid_field_data_id` (`fluid_field_data_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_relationships`
--

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_remember_me`
--

DROP TABLE IF EXISTS `exp_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT 0,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT 0,
  `site_id` int(4) DEFAULT 1,
  `expiration` int(10) DEFAULT 0,
  `last_refresh` int(10) DEFAULT 0,
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_remember_me`
--

LOCK TABLES `exp_remember_me` WRITE;
/*!40000 ALTER TABLE `exp_remember_me` DISABLE KEYS */;
INSERT INTO `exp_remember_me` VALUES ('64ea59dd2698677c3c54ec2a1ae0c6b38ef16cce',1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36',0,1,1678630384,1677420784),('f0d463cc20cece1835b0b2eb89a9c5f4a61b2579',1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36',0,1,1678645414,1677435814);
/*!40000 ALTER TABLE `exp_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_reset_password`
--

DROP TABLE IF EXISTS `exp_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_reset_password`
--

LOCK TABLES `exp_reset_password` WRITE;
/*!40000 ALTER TABLE `exp_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_revision_tracker`
--

DROP TABLE IF EXISTS `exp_revision_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_field` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_revision_tracker`
--

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_revision_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_role_groups`
--

DROP TABLE IF EXISTS `exp_role_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_role_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_role_groups`
--

LOCK TABLES `exp_role_groups` WRITE;
/*!40000 ALTER TABLE `exp_role_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_role_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_role_settings`
--

DROP TABLE IF EXISTS `exp_role_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_role_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `menu_set_id` int(5) unsigned NOT NULL DEFAULT 1,
  `mbr_delete_notify_emails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude_from_moderation` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT 20,
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT 60,
  `include_in_authorlist` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `cp_homepage` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp_homepage_channel` int(10) unsigned NOT NULL DEFAULT 0,
  `cp_homepage_custom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `require_mfa` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `role_id_site_id` (`role_id`,`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_role_settings`
--

LOCK TABLES `exp_role_settings` WRITE;
/*!40000 ALTER TABLE `exp_role_settings` DISABLE KEYS */;
INSERT INTO `exp_role_settings` VALUES (1,1,1,1,NULL,'y',0,20,60,'y','y',NULL,0,NULL,'n'),(2,2,1,1,NULL,'n',60,20,60,'n','n',NULL,0,NULL,'n'),(3,3,1,1,NULL,'n',10,20,60,'n','y',NULL,0,NULL,'n'),(4,4,1,1,NULL,'n',10,20,60,'n','y',NULL,0,NULL,'n'),(5,5,1,1,NULL,'n',10,20,60,'n','y',NULL,0,NULL,'n');
/*!40000 ALTER TABLE `exp_role_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_roles`
--

DROP TABLE IF EXISTS `exp_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_members` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `is_locked` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_roles`
--

LOCK TABLES `exp_roles` WRITE;
/*!40000 ALTER TABLE `exp_roles` DISABLE KEYS */;
INSERT INTO `exp_roles` VALUES (1,'Super Admin','super_admin',NULL,0,'y'),(2,'Banned','banned',NULL,0,'n'),(3,'Guests','guests',NULL,0,'n'),(4,'Pending','pending',NULL,0,'n'),(5,'Members','members',NULL,0,'n');
/*!40000 ALTER TABLE `exp_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_roles_role_groups`
--

DROP TABLE IF EXISTS `exp_roles_role_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_roles_role_groups` (
  `role_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`group_id`),
  KEY `group_id_idx` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_roles_role_groups`
--

LOCK TABLES `exp_roles_role_groups` WRITE;
/*!40000 ALTER TABLE `exp_roles_role_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_roles_role_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_toolsets`
--

DROP TABLE IF EXISTS `exp_rte_toolsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `toolset_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toolset_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`toolset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_toolsets`
--

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;
INSERT INTO `exp_rte_toolsets` VALUES (1,'CKEditor Basic','ckeditor','YTo1OntzOjQ6InR5cGUiO3M6ODoiY2tlZGl0b3IiO3M6NzoidG9vbGJhciI7YTo2OntpOjA7czo0OiJib2xkIjtpOjE7czo2OiJpdGFsaWMiO2k6MjtzOjk6InVuZGVybGluZSI7aTozO3M6MTI6Im51bWJlcmVkTGlzdCI7aTo0O3M6MTI6ImJ1bGxldGVkTGlzdCI7aTo1O3M6NDoibGluayI7fXM6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMDoidXBsb2FkX2RpciI7czozOiJhbGwiO3M6MTA6Im1lZGlhRW1iZWQiO2E6MTp7czoxNDoicHJldmlld3NJbkRhdGEiO2I6MTt9fQ=='),(2,'CKEditor Full','ckeditor','YTo1OntzOjQ6InR5cGUiO3M6ODoiY2tlZGl0b3IiO3M6NzoidG9vbGJhciI7YTozMTp7aTowO3M6NDoiYm9sZCI7aToxO3M6NjoiaXRhbGljIjtpOjI7czoxMzoic3RyaWtldGhyb3VnaCI7aTozO3M6OToidW5kZXJsaW5lIjtpOjQ7czo5OiJzdWJzY3JpcHQiO2k6NTtzOjExOiJzdXBlcnNjcmlwdCI7aTo2O3M6MTA6ImJsb2NrcXVvdGUiO2k6NztzOjQ6ImNvZGUiO2k6ODtzOjk6ImNvZGVCbG9jayI7aTo5O3M6NzoiaGVhZGluZyI7aToxMDtzOjEyOiJyZW1vdmVGb3JtYXQiO2k6MTE7czo0OiJ1bmRvIjtpOjEyO3M6NDoicmVkbyI7aToxMztzOjEyOiJudW1iZXJlZExpc3QiO2k6MTQ7czoxMjoiYnVsbGV0ZWRMaXN0IjtpOjE1O3M6Nzoib3V0ZGVudCI7aToxNjtzOjY6ImluZGVudCI7aToxNztzOjQ6ImxpbmsiO2k6MTg7czoxMToiZmlsZW1hbmFnZXIiO2k6MTk7czoxMToiaW5zZXJ0VGFibGUiO2k6MjA7czoxMDoibWVkaWFFbWJlZCI7aToyMTtzOjk6Imh0bWxFbWJlZCI7aToyMjtzOjE0OiJhbGlnbm1lbnQ6bGVmdCI7aToyMztzOjE1OiJhbGlnbm1lbnQ6cmlnaHQiO2k6MjQ7czoxNjoiYWxpZ25tZW50OmNlbnRlciI7aToyNTtzOjE3OiJhbGlnbm1lbnQ6anVzdGlmeSI7aToyNjtzOjE0OiJob3Jpem9udGFsTGluZSI7aToyNztzOjE3OiJzcGVjaWFsQ2hhcmFjdGVycyI7aToyODtzOjg6InJlYWRNb3JlIjtpOjI5O3M6OToiZm9udENvbG9yIjtpOjMwO3M6MTk6ImZvbnRCYWNrZ3JvdW5kQ29sb3IiO31zOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTA6InVwbG9hZF9kaXIiO3M6MzoiYWxsIjtzOjEwOiJtZWRpYUVtYmVkIjthOjE6e3M6MTQ6InByZXZpZXdzSW5EYXRhIjtiOjE7fX0='),(3,'Redactor Basic','redactor','YTo0OntzOjQ6InR5cGUiO3M6ODoicmVkYWN0b3IiO3M6NzoidG9vbGJhciI7YToyOntzOjc6ImJ1dHRvbnMiO2E6Njp7aTowO3M6NDoiYm9sZCI7aToxO3M6NjoiaXRhbGljIjtpOjI7czo5OiJ1bmRlcmxpbmUiO2k6MztzOjI6Im9sIjtpOjQ7czoyOiJ1bCI7aTo1O3M6NDoibGluayI7fXM6NzoicGx1Z2lucyI7YTowOnt9fXM6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMDoidXBsb2FkX2RpciI7czozOiJhbGwiO30='),(4,'Redactor Full','redactor','YTo0OntzOjQ6InR5cGUiO3M6ODoicmVkYWN0b3IiO3M6NzoidG9vbGJhciI7YToyOntzOjc6ImJ1dHRvbnMiO2E6MTY6e2k6MDtzOjQ6Imh0bWwiO2k6MTtzOjY6ImZvcm1hdCI7aToyO3M6NDoiYm9sZCI7aTozO3M6NjoiaXRhbGljIjtpOjQ7czo3OiJkZWxldGVkIjtpOjU7czo5OiJ1bmRlcmxpbmUiO2k6NjtzOjQ6InJlZG8iO2k6NztzOjQ6InVuZG8iO2k6ODtzOjI6Im9sIjtpOjk7czoyOiJ1bCI7aToxMDtzOjY6ImluZGVudCI7aToxMTtzOjc6Im91dGRlbnQiO2k6MTI7czozOiJzdXAiO2k6MTM7czozOiJzdWIiO2k6MTQ7czo0OiJsaW5rIjtpOjE1O3M6NDoibGluZSI7fXM6NzoicGx1Z2lucyI7YToxNTp7aTowO3M6OToiYWxpZ25tZW50IjtpOjE7czoxNjoicnRlX2RlZmluZWRsaW5rcyI7aToyO3M6MTE6ImZpbGVicm93c2VyIjtpOjM7czo1OiJwYWdlcyI7aTo0O3M6MTE6ImlubGluZXN0eWxlIjtpOjU7czo5OiJmb250Y29sb3IiO2k6NjtzOjc6ImxpbWl0ZXIiO2k6NztzOjc6ImNvdW50ZXIiO2k6ODtzOjEwOiJwcm9wZXJ0aWVzIjtpOjk7czoxMjoic3BlY2lhbGNoYXJzIjtpOjEwO3M6NToidGFibGUiO2k6MTE7czo1OiJ2aWRlbyI7aToxMjtzOjY6IndpZGdldCI7aToxMztzOjg6InJlYWRtb3JlIjtpOjE0O3M6MTA6ImZ1bGxzY3JlZW4iO319czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjEwOiJ1cGxvYWRfZGlyIjtzOjM6ImFsbCI7fQ==');
/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search`
--

DROP TABLE IF EXISTS `exp_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_search` (
  `search_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT 1,
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_page` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_result_page` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search`
--

LOCK TABLES `exp_search` WRITE;
/*!40000 ALTER TABLE `exp_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search_log`
--

DROP TABLE IF EXISTS `exp_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_terms` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search_log`
--

LOCK TABLES `exp_search_log` WRITE;
/*!40000 ALTER TABLE `exp_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_security_hashes`
--

DROP TABLE IF EXISTS `exp_security_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_security_hashes`
--

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;
INSERT INTO `exp_security_hashes` VALUES (7,1677435814,'4fd60691d69970335e4cbb8f75c151d7d8e0b9a2','2d6a420aa73632fd9c3eb6eab1ffe0a7bb42311c');
/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sessions`
--

DROP TABLE IF EXISTS `exp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT 0,
  `admin_sess` tinyint(1) NOT NULL DEFAULT 0,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_state` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fingerprint` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT 0,
  `auth_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `last_activity` int(10) unsigned NOT NULL DEFAULT 0,
  `can_debug` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `mfa_flag` enum('skip','show','required') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'skip',
  `pro_banner_seen` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sessions`
--

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;
INSERT INTO `exp_sessions` VALUES ('4fd60691d69970335e4cbb8f75c151d7d8e0b9a2',1,1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36',NULL,'f31c3bf0b30c87bae170c8af58b91af9',1677443284,0,1677445580,'0','skip','n');
/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sites`
--

DROP TABLE IF EXISTS `exp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `site_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `site_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `site_bootstrap_checksums` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_pages` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sites`
--

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;
INSERT INTO `exp_sites` VALUES (1,'3_Arena','default_site',NULL,'','YToxOntzOjMxOiJDOlx4YW1wcFxodGRvY3Nca29vYmEvaW5kZXgucGhwIjtzOjMyOiI0MDYyZGI1YzJmMzVkNjQyYzI4MjdlYTBmOGVjZWNiYyI7fQ==','');
/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_snippets`
--

DROP TABLE IF EXISTS `exp_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snippet_contents` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_date` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_snippets`
--

LOCK TABLES `exp_snippets` WRITE;
/*!40000 ALTER TABLE `exp_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_specialty_templates`
--

DROP TABLE IF EXISTS `exp_specialty_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `enable_template` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `template_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_type` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_subtype` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_date` int(10) NOT NULL DEFAULT 0,
  `last_author_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_specialty_templates`
--

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;
INSERT INTO `exp_specialty_templates` VALUES (1,1,'y','offline_template','','system',NULL,'<!doctype html>\n<html dir=\"ltr\">\n    <head>\n        <title>System Offline</title>\n        <meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"  name=\"viewport\">\n\n        <style type=\"text/css\">\n:root, body {\n    --ee-panel-bg: #fff;\n    --ee-panel-border: #dfe0ef;\n    --ee-text-normal: #0d0d19;\n    --ee-main-bg: #f7f7fb;\n    --ee-link: #5D63F1;\n    --ee-link-hover: #171feb;\n}\n\n*, :after, :before {\n    box-sizing: inherit;\n}\n\nhtml {\n    box-sizing: border-box;\n    font-size: 15px;\n    height: 100%;\n    line-height: 1.15;\n}\n\nbody {\n    font-family: -apple-system, BlinkMacSystemFont, segoe ui, helvetica neue, helvetica, Cantarell, Ubuntu, roboto, noto, arial, sans-serif;\n    height: 100%;\n    font-size: 1rem;\n    line-height: 1.6;\n    color: var(--ee-text-normal);\n    background: var(--ee-main-bg);\n    -webkit-font-smoothing: antialiased;\n    margin: 0;\n}\n\n.panel {\n    margin-bottom: 20px;\n    background-color: var(--ee-panel-bg);\n    border: 1px solid var(--ee-panel-border);\n    border-radius: 6px;\n}\n.redirect {\n	max-width: 700px;\n	min-width: 350px;\n    position: absolute;\n    top: 50%;\n    left: 50%;\n    transform: translate(-50%,-50%);\n}\n\n.panel-heading {\n    padding: 20px 25px;\n    position: relative;\n}\n\n.panel-body {\n    padding: 20px 25px;\n}\n\n.panel-body:after, .panel-body:before {\n    content: \" \";\n    display: table;\n}\n\n.redirect p {\n    margin-bottom: 20px;\n}\np {\n    line-height: 1.6;\n}\na, blockquote, code, h1, h2, h3, h4, h5, h6, ol, p, pre, ul {\n    color: inherit;\n    margin: 0;\n    padding: 0;\n    font-weight: inherit;\n}\n\na {\n    color: var(--ee-link);\n    text-decoration: none;\n    -webkit-transition: color .15s ease-in-out;\n    -moz-transition: color .15s ease-in-out;\n    -o-transition: color .15s ease-in-out;\n}\n\na:hover {\n    color: var(--ee-link-hover);\n}\n\nh3 {\n    font-size: 1.35em;\n    font-weight: 500;\n}\n\nol, ul {\n    padding-left: 0;\n}\n\nol li, ul li {\n    list-style-position: inside;\n}\n\n.panel-footer {\n    padding: 20px 25px;\n    position: relative;\n}\n\n\n        </style>\n    </head>\n    <body>\n        <section class=\"flex-wrap\">\n            <section class=\"wrap\">\n                <div class=\"panel redirect\">\n                    <div class=\"panel-heading\">\n                        <h3>System Offline</h3>\n                    </div>\n					<div class=\"panel-body\">\n					This site is currently offline\n                    </div>\n                </div>\n            </section>\n        </section>\n    </body>\n</html>',NULL,1677419336,0),(2,1,'y','message_template','','system',NULL,'<!doctype html>\n<html dir=\"ltr\">\n    <head>\n        <title>{title}</title>\n        <meta http-equiv=\"content-type\" content=\"text/html; charset={charset}\">\n        <meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"  name=\"viewport\">\n        <meta name=\"referrer\" content=\"no-referrer\">\n        {meta_refresh}\n        <style type=\"text/css\">\n:root, body {\n    --ee-panel-bg: #fff;\n    --ee-panel-border: #dfe0ef;\n    --ee-text-normal: #0d0d19;\n    --ee-main-bg: #f7f7fb;\n    --ee-link: #5D63F1;\n    --ee-link-hover: #171feb;\n}\n\n*, :after, :before {\n    box-sizing: inherit;\n}\n\nhtml {\n    box-sizing: border-box;\n    font-size: 15px;\n    height: 100%;\n    line-height: 1.15;\n}\n\nbody {\n    font-family: -apple-system, BlinkMacSystemFont, segoe ui, helvetica neue, helvetica, Cantarell, Ubuntu, roboto, noto, arial, sans-serif;\n    height: 100%;\n    font-size: 1rem;\n    line-height: 1.6;\n    color: var(--ee-text-normal);\n    background: var(--ee-main-bg);\n    -webkit-font-smoothing: antialiased;\n    margin: 0;\n}\n\n.panel {\n    margin-bottom: 20px;\n    background-color: var(--ee-panel-bg);\n    border: 1px solid var(--ee-panel-border);\n    border-radius: 6px;\n}\n.redirect {\n	max-width: 700px;\n	min-width: 350px;\n    position: absolute;\n    top: 50%;\n    left: 50%;\n    transform: translate(-50%,-50%);\n}\n\n.panel-heading {\n    padding: 20px 25px;\n    position: relative;\n}\n\n.panel-body {\n    padding: 20px 25px;\n}\n\n.panel-body:after, .panel-body:before {\n    content: \" \";\n    display: table;\n}\n\n.redirect p {\n    margin-bottom: 20px;\n}\np {\n    line-height: 1.6;\n}\na, blockquote, code, h1, h2, h3, h4, h5, h6, ol, p, pre, ul {\n    color: inherit;\n    margin: 0;\n    padding: 0;\n    font-weight: inherit;\n}\n\na {\n    color: var(--ee-link);\n    text-decoration: none;\n    -webkit-transition: color .15s ease-in-out;\n    -moz-transition: color .15s ease-in-out;\n    -o-transition: color .15s ease-in-out;\n}\n\na:hover {\n    color: var(--ee-link-hover);\n}\n\nh3 {\n    font-size: 1.35em;\n    font-weight: 500;\n}\n\nol, ul {\n    padding-left: 0;\n}\n\nol li, ul li {\n    list-style-position: inside;\n}\n\n.panel-footer {\n    padding: 20px 25px;\n    position: relative;\n}\n\n\n        </style>\n    </head>\n    <body>\n        <section class=\"flex-wrap\">\n            <section class=\"wrap\">\n                <div class=\"panel redirect\">\n                    <div class=\"panel-heading\">\n                        <h3>{heading}</h3>\n                    </div>\n                    <div class=\"panel-body\">\n                        {content}\n\n\n                    </div>\n                    <div class=\"panel-footer\">\n                        {link}\n                    </div>\n                </div>\n            </section>\n        </section>\n    </body>\n</html>',NULL,1677419336,0),(3,1,'y','post_install_message_template','','system',NULL,'<!doctype html>\n<html>\n	<head>\n		<title>Welcome to ExpressionEngine!</title>\n		<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" lang=\"en-us\" dir=\"ltr\">\n		<meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"  name=\"viewport\">\n		<link href=\"{theme_folder_url}cp/css/common.min.css\" rel=\"stylesheet\">\n			</head>\n	<body class=\"installer-page\">\n		<section class=\"flex-wrap\">\n			<section class=\"wrap\">\n				<div class=\"login__logo\">\n  <svg width=\"281px\" height=\"36px\" viewBox=\"0 0 281 36\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">\n  <title>ExpressionEngine</title>\n  <defs>\n      <polygon id=\"path-1\" points=\"0.3862 0.1747 18.6557 0.1747 18.6557 21.5 0.3862 21.5\"></polygon>\n      <polygon id=\"path-3\" points=\"0.3926 0.17455 13.9915 0.17455 13.9915 15.43755 0.3926 15.43755\"></polygon>\n      <polygon id=\"path-5\" points=\"0 0.06905 25.8202 0.06905 25.8202 31.6178513 0 31.6178513\"></polygon>\n      <polygon id=\"path-7\" points=\"0.10635 0.204 25.9268587 0.204 25.9268587 31.7517 0.10635 31.7517\"></polygon>\n  </defs>\n  <g id=\"logo\" stroke=\"none\" stroke-width=\"1\" fill=\"none\" fill-rule=\"evenodd\">\n      <g id=\"expressionengine\">\n          <path d=\"M92.88015,27.0665 L89.28865,20.955 L94.66665,14.6405 L94.77265,13.9 L91.11315,13.9 L87.86765,17.95 C87.76015,18.0845 87.57265,18.353 87.30415,19.2645 C87.33065,18.353 87.14315,18.0845 87.08965,17.9775 L84.80915,13.9 L80.59815,13.9 L84.62115,20.8475 L78.21065,28.3045 L82.42165,28.3045 L86.04315,23.905 C86.23065,23.664 86.52565,23.154 86.66065,22.5915 C86.66065,23.154 86.79465,23.6905 86.92865,23.905 L89.42265,28.3045 L92.70265,28.3045 L92.88015,27.0665 Z\" id=\"Fill-1\"></path>\n          <path d=\"M80.2395,11.9686 L70.9585,11.9686 L70.288,16.6091 L78.7645,16.6091 L77.4495,19.6141 L69.751,19.6141 C69.805,19.8011 69.805,20.0156 69.778,20.1231 L69.027,25.3011 L78.3345,25.3011 L77.9055,28.3046 L65.003,28.3046 L67.7925,8.9651 L80.6685,8.9651 L80.2395,11.9686 Z\" id=\"Fill-3\"></path>\n          <path d=\"M102.3328,16.20735 C101.5283,16.20735 100.5628,16.34085 99.3558,17.11935 L98.1493,25.46185 C98.8998,25.83735 99.9723,25.99835 100.8848,25.99835 C103.0573,25.99835 104.2378,24.60235 104.7478,20.98085 C104.8548,20.28385 104.9083,19.69385 104.9083,19.18485 C104.9083,17.03835 104.0508,16.20735 102.3328,16.20735 M108.3418,20.98085 C107.6718,25.70235 105.5783,28.73385 100.5093,28.73385 C99.5708,28.73385 98.4978,28.54635 97.5313,28.08985 C97.6128,28.38435 97.6933,28.73385 97.6393,29.02935 L96.8073,34.79585 L93.2133,34.79585 L96.2178,13.89985 L98.7928,13.89985 L99.0878,15.08085 C100.3213,14.00685 101.7703,13.47035 103.1113,13.47035 C106.9473,13.47035 108.5023,15.69685 108.5023,19.05035 C108.5023,19.66735 108.4483,20.31135 108.3418,20.98085\" id=\"Fill-5\"></path>\n          <path d=\"M119.33865,16.69 C118.74815,16.609 118.13215,16.555 117.48715,16.555 C116.46815,16.555 115.39515,16.716 114.45615,17.28 L112.87415,28.3045 L109.27965,28.3045 L111.34515,13.8995 L114.29515,13.8995 L114.51115,15.0535 C115.71715,13.8995 116.92465,13.4705 118.21215,13.4705 C118.72265,13.4705 119.25865,13.5515 119.79515,13.659 L119.33865,16.69 Z\" id=\"Fill-7\"></path>\n          <path d=\"M127.43385,16.31455 C125.39585,16.31455 124.40285,17.09155 123.81285,19.61405 L129.71435,19.61405 C129.76785,19.29205 129.79435,18.99655 129.79435,18.72855 C129.79435,17.14555 129.01685,16.31455 127.43385,16.31455 M133.03985,22.13505 L123.35635,22.13505 C123.30235,22.56405 123.27685,22.93955 123.27685,23.28855 C123.27685,25.05905 124.08085,25.89105 126.06585,25.89105 C127.91685,25.89105 128.96335,25.08605 129.74035,23.90505 L132.44985,25.00505 C131.18885,27.41855 128.82885,28.73355 125.66385,28.73355 C121.58635,28.73355 119.73535,26.56055 119.73535,22.93955 C119.73535,22.34955 119.78885,21.73305 119.86985,21.08855 C120.64685,15.80405 122.95485,13.47055 127.86285,13.47055 C132.31635,13.47055 133.33585,16.60905 133.33585,19.29205 C133.33585,20.09655 133.17435,21.16955 133.03985,22.13505\" id=\"Fill-9\"></path>\n          <path d=\"M144.11795,17.70905 C143.60895,16.79705 142.66995,16.28705 141.19395,16.28705 C140.04145,16.28705 138.64595,16.52905 138.64595,17.97755 C138.64595,18.48755 138.88745,18.91655 139.53145,19.02405 L142.64245,19.58655 C144.60095,19.93605 146.20995,21.03455 146.20995,23.12755 C146.20995,27.23155 142.80295,28.73355 139.23545,28.73355 C136.71445,28.73355 134.73045,27.87555 133.76445,25.62255 L136.76845,24.52255 C137.33245,25.54155 138.24395,25.99805 139.61245,25.99805 C140.95345,25.99805 142.61595,25.59505 142.61595,23.93255 C142.61595,23.34255 142.34795,22.91355 141.56945,22.77855 L138.21645,22.16255 C136.66095,21.86655 135.13145,20.68655 135.13145,18.46005 C135.13145,14.65055 138.27045,13.47055 141.59695,13.47055 C144.57445,13.47055 146.20995,14.67805 146.93445,16.39455 L144.11795,17.70905 Z\" id=\"Fill-11\"></path>\n          <path d=\"M157.28835,17.70905 C156.77935,16.79705 155.84135,16.28705 154.36435,16.28705 C153.21235,16.28705 151.81785,16.52905 151.81785,17.97755 C151.81785,18.48755 152.05935,18.91655 152.70335,19.02405 L155.81435,19.58655 C157.77285,19.93605 159.38185,21.03455 159.38185,23.12755 C159.38185,27.23155 155.97385,28.73355 152.40635,28.73355 C149.88635,28.73355 147.90085,27.87555 146.93585,25.62255 L149.93885,24.52255 C150.50285,25.54155 151.41585,25.99805 152.78285,25.99805 C154.12535,25.99805 155.78685,25.59505 155.78685,23.93255 C155.78685,23.34255 155.51985,22.91355 154.74135,22.77855 L151.38835,22.16255 C149.83185,21.86655 148.30235,20.68655 148.30235,18.46005 C148.30235,14.65055 151.44085,13.47055 154.76885,13.47055 C157.74485,13.47055 159.38185,14.67805 160.10535,16.39455 L157.28835,17.70905 Z\" id=\"Fill-13\"></path>\n          <path d=\"M168.0188,11.0294 C167.9908,11.2714 167.9908,11.2714 167.7768,11.2714 L164.2888,11.2714 C164.0743,11.2714 164.0743,11.2714 164.1018,11.0294 L164.5858,7.7039 C164.6108,7.4359 164.6108,7.4084 164.8253,7.4084 L168.3133,7.4084 C168.5278,7.4084 168.5278,7.4359 168.5003,7.7039 L168.0188,11.0294 Z M167.2953,28.5464 L165.4688,28.5464 C163.3783,28.5464 162.3583,27.6334 162.3583,25.7564 C162.3583,25.4619 162.3853,25.1659 162.4378,24.8169 L163.5128,17.3874 C163.5378,17.1729 163.6728,16.8509 163.8873,16.6089 L161.2853,16.6089 L161.6618,13.8999 L167.5898,13.8999 L166.0328,24.8169 C166.0083,24.9514 166.0083,25.0864 166.0083,25.1934 C166.0083,25.5154 166.1398,25.6229 166.5443,25.6229 L167.6968,25.6229 L167.2953,28.5464 Z\" id=\"Fill-15\"></path>\n          <path d=\"M176.8977,16.31455 C174.6972,16.31455 173.6242,17.44105 173.0882,21.08855 C172.9807,21.81305 172.9262,22.45705 172.9262,22.99305 C172.9262,25.16605 173.7837,25.89105 175.5282,25.89105 C177.7007,25.89105 178.8562,24.76305 179.3922,21.08855 C179.4997,20.39105 179.5522,19.77455 179.5522,19.23855 C179.5522,17.03805 178.6662,16.31455 176.8977,16.31455 M182.9852,21.08855 C182.2617,26.07805 180.0887,28.73355 175.1262,28.73355 C170.8872,28.73355 169.3582,26.13155 169.3582,22.85955 C169.3582,22.29555 169.4132,21.67955 169.4927,21.08855 C170.2167,16.01905 172.3647,13.47055 177.3267,13.47055 C181.5377,13.47055 183.1197,15.93905 183.1197,19.26455 C183.1197,19.85455 183.0672,20.44455 182.9852,21.08855\" id=\"Fill-17\"></path>\n          <path d=\"M197.21265,19.23835 L195.89815,28.30435 L192.33015,28.30435 L193.64515,19.23835 C193.70015,18.91635 193.72465,18.59485 193.72465,18.29935 C193.72465,17.06535 193.24365,16.26085 191.90115,16.26085 C190.80115,16.26085 189.51415,16.87685 188.46865,17.52085 L186.91165,28.30435 L183.34415,28.30435 L185.41015,13.89985 L188.36115,13.89985 L188.60315,15.21435 C190.26465,13.89985 191.60665,13.47035 193.10865,13.47035 C196.11265,13.47035 197.32015,15.37535 197.32015,17.92385 C197.32015,18.35285 197.26715,18.78185 197.21265,19.23835\" id=\"Fill-19\"></path>\n          <path d=\"M214.45925,11.9686 L205.17825,11.9686 L204.51025,16.6091 L212.98475,16.6091 L211.67025,19.6141 L203.97075,19.6141 C204.02625,19.8011 204.02625,20.0156 203.99875,20.1231 L203.24775,25.3011 L212.55525,25.3011 L212.12675,28.3046 L199.22325,28.3046 L202.01525,8.9651 L214.89075,8.9651 L214.45925,11.9686 Z\" id=\"Fill-21\"></path>\n          <path d=\"M227.8411,19.23835 L226.5266,28.30435 L222.9586,28.30435 L224.2736,19.23835 C224.3261,18.91635 224.3531,18.59485 224.3531,18.29935 C224.3531,17.06535 223.8696,16.26085 222.5301,16.26085 C221.4296,16.26085 220.1426,16.87685 219.0946,17.52085 L217.5401,28.30435 L213.9726,28.30435 L216.0386,13.89985 L218.9871,13.89985 L219.2291,15.21435 C220.8931,13.89985 222.2331,13.47035 223.7371,13.47035 C226.7411,13.47035 227.9486,15.37535 227.9486,17.92385 C227.9486,18.35285 227.8936,18.78185 227.8411,19.23835\" id=\"Fill-23\"></path>\n          <g id=\"Group-27\" transform=\"translate(227.500000, 13.296000)\">\n              <mask id=\"mask-2\" fill=\"white\">\n                  <use xlink:href=\"#path-1\"></use>\n              </mask>\n              <g id=\"Clip-26\"></g>\n              <path d=\"M9.7742,2.9912 C7.7607,2.9912 6.6082,4.1452 6.6082,6.1297 C6.6082,7.4702 7.4667,8.0342 9.0232,8.0342 C11.0342,8.0342 12.1612,6.9617 12.1612,4.9772 C12.1612,3.6622 11.3832,2.9912 9.7742,2.9912 L9.7742,2.9912 Z M10.1207,15.0622 L5.0787,14.1227 C4.2757,14.9812 3.9262,15.5447 3.9262,16.7522 C3.9262,18.1197 4.8917,18.7372 7.4667,18.7372 C9.1557,18.7372 11.4907,18.4687 11.4907,16.2957 C11.4907,15.6262 11.1412,15.2507 10.1207,15.0622 L10.1207,15.0622 Z M18.3312,3.3132 L16.5872,3.3132 C16.3457,3.3132 15.7542,3.2867 15.3002,3.0722 C15.5672,3.7157 15.6742,4.4392 15.6742,5.0307 C15.6742,9.2142 12.3482,10.8237 8.6187,10.8237 C7.7882,10.8237 6.9852,10.7437 6.2862,10.5827 C6.1792,10.5552 6.0717,10.5292 5.9372,10.5292 C5.5352,10.5292 5.2932,10.7437 5.2932,11.1452 C5.2932,11.4137 5.4282,11.6017 6.0167,11.7092 L11.1962,12.6747 C14.0652,13.2112 15.0577,14.4447 15.0577,16.0277 C15.0577,20.6682 10.7122,21.5002 7.0647,21.5002 C4.1682,21.5002 0.3862,20.7217 0.3862,17.1002 C0.3862,15.2232 1.3767,13.6142 2.9857,12.6482 C2.6637,12.2457 2.5042,11.7902 2.5042,11.3597 C2.5042,10.3947 3.2007,9.6437 4.0062,9.2142 C3.4972,8.5707 3.0682,7.5517 3.0682,6.3717 C3.0682,2.1602 6.3387,0.1747 10.1757,0.1747 C11.5177,0.1747 12.9372,0.4167 13.9852,1.0862 L16.0537,0.6212 L18.6557,0.6212 L18.3312,3.3132 Z\" id=\"Fill-25\" mask=\"url(#mask-2)\"></path>\n          </g>\n          <path d=\"M251.54175,11.0294 C251.51675,11.2714 251.51675,11.2714 251.30225,11.2714 L247.81475,11.2714 C247.59975,11.2714 247.59975,11.2714 247.62725,11.0294 L248.10925,7.7039 C248.13625,7.4359 248.13625,7.4084 248.35075,7.4084 L251.83875,7.4084 C252.05275,7.4084 252.05275,7.4359 252.02575,7.7039 L251.54175,11.0294 Z M250.81825,28.5464 L248.99425,28.5464 C246.90175,28.5464 245.88375,27.6334 245.88375,25.7564 C245.88375,25.4619 245.91075,25.1659 245.96375,24.8169 L247.03575,17.3874 C247.06375,17.1729 247.19825,16.8509 247.41275,16.6089 L244.81075,16.6089 L245.18475,13.8999 L251.11275,13.8999 L249.55825,24.8169 C249.53125,24.9514 249.53125,25.0864 249.53125,25.1934 C249.53125,25.5154 249.66575,25.6229 250.06725,25.6229 L251.21975,25.6229 L250.81825,28.5464 Z\" id=\"Fill-28\"></path>\n          <path d=\"M266.32595,19.23835 L265.01095,28.30435 L261.44345,28.30435 L262.75845,19.23835 C262.81345,18.91635 262.83795,18.59485 262.83795,18.29935 C262.83795,17.06535 262.35695,16.26085 261.01445,16.26085 C259.91445,16.26085 258.62695,16.87685 257.58195,17.52085 L256.02445,28.30435 L252.45745,28.30435 L254.52345,13.89985 L257.47445,13.89985 L257.71645,15.21435 C259.37795,13.89985 260.71995,13.47035 262.22195,13.47035 C265.22595,13.47035 266.43345,15.37535 266.43345,17.92385 C266.43345,18.35285 266.38045,18.78185 266.32595,19.23835\" id=\"Fill-30\"></path>\n          <g id=\"Group-34\" transform=\"translate(267.000000, 13.296000)\">\n              <mask id=\"mask-4\" fill=\"white\">\n                  <use xlink:href=\"#path-3\"></use>\n              </mask>\n              <g id=\"Clip-33\"></g>\n              <path d=\"M8.0916,3.01855 C6.0531,3.01855 5.0606,3.79555 4.4691,6.31805 L10.3716,6.31805 C10.4241,5.99605 10.4516,5.70055 10.4516,5.43255 C10.4516,3.84955 9.6731,3.01855 8.0916,3.01855 M13.6971,8.83905 L4.0126,8.83905 C3.9596,9.26805 3.9326,9.64355 3.9326,9.99255 C3.9326,11.76305 4.7381,12.59505 6.7216,12.59505 C8.5731,12.59505 9.6211,11.79005 10.3961,10.60905 L13.1056,11.70905 C11.8461,14.12255 9.4861,15.43755 6.3201,15.43755 C2.2436,15.43755 0.3926,13.26455 0.3926,9.64355 C0.3926,9.05355 0.4446,8.43705 0.5271,7.79255 C1.3031,2.50805 3.6106,0.17455 8.5201,0.17455 C12.9736,0.17455 13.9916,3.31305 13.9916,5.99605 C13.9916,6.80055 13.8316,7.87355 13.6971,8.83905\" id=\"Fill-32\" mask=\"url(#mask-4)\"></path>\n          </g>\n          <path d=\"M20.60205,17.64605 C21.11355,14.75605 22.01655,12.45255 23.28405,10.79305 C24.18105,9.60555 25.17405,9.00405 26.23755,9.00405 C26.80055,9.00405 27.27705,9.22055 27.65305,9.64955 C28.01805,10.06905 28.20405,10.64605 28.20405,11.36305 C28.20405,13.02405 27.45705,14.53555 25.98455,15.86155 C24.91705,16.81355 23.20305,17.51055 20.89205,17.93305 L20.53855,17.99805 L20.60205,17.64605 Z M30.67305,21.68355 C29.37505,22.92855 28.23905,23.80705 27.31805,24.24655 C26.34905,24.70655 25.34805,24.93855 24.34355,24.93855 C23.11755,24.93855 22.12155,24.54805 21.38655,23.77655 C20.65105,23.00705 20.27805,21.90355 20.27805,20.49455 L20.37305,19.08355 L20.56855,19.05005 C24.00755,18.47005 26.60155,17.80655 28.27555,17.07555 C29.93155,16.35405 31.14005,15.49505 31.86855,14.52405 C32.59155,13.56105 32.95655,12.59155 32.95655,11.65055 C32.95655,10.50805 32.52355,9.59355 31.63105,8.84705 C30.73555,8.10155 29.44355,7.72455 27.79455,7.72455 C25.50305,7.72455 23.33455,8.25905 21.34955,9.31405 C19.36805,10.36805 17.78305,11.82905 16.64005,13.65605 C15.50005,15.48105 14.92155,17.41555 14.92155,19.40105 C14.92155,21.61755 15.60505,23.39505 16.95205,24.68005 C18.30455,25.96905 20.19355,26.62005 22.56705,26.62005 C24.25255,26.62005 25.84755,26.28155 27.30805,25.61355 C28.70455,24.97455 30.14905,23.86705 31.60805,22.37255 C31.33005,22.16805 30.87005,21.82855 30.67305,21.68355 L30.67305,21.68355 Z\" id=\"Fill-35\"></path>\n          <g id=\"Group-39\" transform=\"translate(0.000000, 2.796000)\">\n              <mask id=\"mask-6\" fill=\"white\">\n                  <use xlink:href=\"#path-5\"></use>\n              </mask>\n              <g id=\"Clip-38\"></g>\n              <path d=\"M7.2737,19.35005 C5.3202,11.70605 9.9462,3.71505 17.8897,0.06905 C17.6907,0.14055 17.5042,0.22255 17.3077,0.29605 C17.5087,0.20005 17.6882,0.11955 17.8272,0.07205 L2.9432,3.91255 L6.9112,6.26005 C1.7147,10.66105 -0.9663,16.11555 0.3187,21.14505 C2.3302,29.02005 13.3457,33.12605 25.8202,31.10805 C17.1117,31.75655 9.2257,26.99355 7.2737,19.35005\" id=\"Fill-37\" mask=\"url(#mask-6)\"></path>\n          </g>\n          <g id=\"Group-42\" transform=\"translate(23.500000, 0.296000)\">\n              <mask id=\"mask-8\" fill=\"white\">\n                  <use xlink:href=\"#path-7\"></use>\n              </mask>\n              <g id=\"Clip-41\"></g>\n              <path d=\"M18.65285,12.4697 C20.60635,20.1147 15.98135,28.1052 8.03735,31.7517 C8.23585,31.6797 8.42235,31.5977 8.61885,31.5232 C8.41785,31.6212 8.23835,31.7002 8.09935,31.7482 L22.98335,27.9087 L19.01585,25.5612 C24.21185,21.1597 26.89285,15.7042 25.60835,10.6747 C23.59635,2.8027 12.58085,-1.3053 0.10635,0.7142 C8.81435,0.0637 16.70135,4.8267 18.65285,12.4697\" id=\"Fill-40\" mask=\"url(#mask-8)\"></path>\n          </g>\n      </g>\n    </g>\n  </svg>\n</div>\n				<div class=\"panel warn\">\n  <div class=\"panel-heading\" style=\"text-align: center;\">\n    <h3>ExpressionEngine has been installed!</h3>\n  </div>\n  <div class=\"panel-body\">\n    <div class=\"updater-msg\">\n  		<p style=\"margin-bottom: 20px;\">If you see this message, then everything went well.</p>\n\n  		<div class=\"alert alert--attention\">\n            <div class=\"alert__icon\">\n              <i class=\"fal fa-info-circle fa-fw\"></i>\n            </div>\n            <div class=\"alert__content\">\n    			<p>If you are site owner, please login into your Control Panel and create your first template.</p>\n    		</div>\n  		</div>\n  		<div class=\"alert alert--attention\">\n            <div class=\"alert__icon\">\n              <i class=\"fal fa-info-circle fa-fw\"></i>\n            </div>\n            <div class=\"alert__content\">\n    			<p>If this is your first time using ExpressionEngine CMS, make sure to <a href=\"https://docs.expressionengine.com/latest/getting-started/the-big-picture.html\">check out the documentation</a> to get started.</p>\n    		</div>\n  		</div>\n  	</div>\n  </div>\n  <div class=\"panel-footer\">\n\n  </div>\n</div>\n			</div>\n			<section class=\"bar\">\n				<p style=\"float: left;\"><a href=\"https://expressionengine.com/\" rel=\"external\"><b>ExpressionEngine</b></a></p>\n				<p style=\"float: right;\">&copy;2023 <a href=\"https://packettide.com/\" rel=\"external\">Packet Tide</a>, LLC</p>\n			</section>\n		</section>\n\n	</body>\n</html>',NULL,1677419336,0),(4,1,'y','mfa_template','','system',NULL,'<!doctype html>\n        <html dir=\"ltr\">\n            <head>\n                <title>{title}</title>\n                <meta http-equiv=\"content-type\" content=\"text/html; charset={charset}\">\n                <meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\"  name=\"viewport\">\n                <meta name=\"referrer\" content=\"no-referrer\">\n                {meta_refresh}\n                <style type=\"text/css\">\n        :root, body {\n            --ee-panel-bg: #fff;\n            --ee-panel-border: #dfe0ef;\n            --ee-text-normal: #0d0d19;\n            --ee-text-secondary: #8f90b0;\n            --ee-main-bg: #f7f7fb;\n            --ee-link: #5D63F1;\n            --ee-link-hover: #171feb;\n            --ee-bg-blank: #fff;\n            --ee-code-border: #dfe0ef;\n\n            --ee-input-color: #0d0d19;\n            --ee-input-bg: #fff;\n            --ee-input-placeholder: #adaec5;\n            --ee-input-border: #cbcbda;\n            --ee-input-border-accent: #ecedf5;\n            --ee-input-focus-border: #5D63F1;\n            --ee-input-focus-shadow: 0 3px 6px -3px rgba(174,151,255,0.14),0 5px 10px -3px rgba(97,114,242,0.05);\n            --ee-button-primary-color: #fff;\n            --ee-button-primary-bg: #5D63F1;\n            --ee-button-primary-border: #5D63F1;\n\n            --ee-bg-0: #f7f7fb;\n            --ee-border: #dfe0ef;\n            --ee-error: #FA5252;\n            --ee-error-light: #fee7e7;\n            --ee-warning: #FFB40B;\n            --ee-warning-light: #fff6e1;\n        }\n\n        @font-face{font-family:Roboto;font-style:normal;font-weight:400;src:url({url_themes}webfonts/roboto-v20-latin-regular.eot);src:local(\"Roboto\"),local(\"Roboto-Regular\"),url({url_themes}webfonts/roboto-v20-latin-regular.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/roboto-v20-latin-regular.woff2) format(\"woff2\"),url({url_themes}webfonts/roboto-v20-latin-regular.woff) format(\"woff\"),url({url_themes}webfonts/roboto-v20-latin-regular.ttf) format(\"truetype\"),url({url_themes}webfonts/roboto-v20-latin-regular.svg#Roboto) format(\"svg\")}@font-face{font-family:Roboto;font-style:italic;font-weight:400;src:url({url_themes}webfonts/roboto-v20-latin-italic.eot);src:local(\"Roboto Italic\"),local(\"Roboto-Italic\"),url({url_themes}webfonts/roboto-v20-latin-italic.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/roboto-v20-latin-italic.woff2) format(\"woff2\"),url({url_themes}webfonts/roboto-v20-latin-italic.woff) format(\"woff\"),url({url_themes}webfonts/roboto-v20-latin-italic.ttf) format(\"truetype\"),url({url_themes}webfonts/roboto-v20-latin-italic.svg#Roboto) format(\"svg\")}@font-face{font-family:Roboto;font-style:normal;font-weight:500;src:url({url_themes}webfonts/roboto-v20-latin-500.eot);src:local(\"Roboto Medium\"),local(\"Roboto-Medium\"),url({url_themes}webfonts/roboto-v20-latin-500.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/roboto-v20-latin-500.woff2) format(\"woff2\"),url({url_themes}webfonts/roboto-v20-latin-500.woff) format(\"woff\"),url({url_themes}webfonts/roboto-v20-latin-500.ttf) format(\"truetype\"),url({url_themes}webfonts/roboto-v20-latin-500.svg#Roboto) format(\"svg\")}@font-face{font-family:Roboto;font-style:italic;font-weight:500;src:url({url_themes}webfonts/roboto-v20-latin-500italic.eot);src:local(\"Roboto Medium Italic\"),local(\"Roboto-MediumItalic\"),url({url_themes}webfonts/roboto-v20-latin-500italic.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/roboto-v20-latin-500italic.woff2) format(\"woff2\"),url({url_themes}webfonts/roboto-v20-latin-500italic.woff) format(\"woff\"),url({url_themes}webfonts/roboto-v20-latin-500italic.ttf) format(\"truetype\"),url({url_themes}webfonts/roboto-v20-latin-500italic.svg#Roboto) format(\"svg\")}@font-face{font-family:Roboto;font-style:normal;font-weight:700;src:url({url_themes}webfonts/roboto-v20-latin-700.eot);src:local(\"Roboto Bold\"),local(\"Roboto-Bold\"),url({url_themes}webfonts/roboto-v20-latin-700.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/roboto-v20-latin-700.woff2) format(\"woff2\"),url({url_themes}webfonts/roboto-v20-latin-700.woff) format(\"woff\"),url({url_themes}webfonts/roboto-v20-latin-700.ttf) format(\"truetype\"),url({url_themes}webfonts/roboto-v20-latin-700.svg#Roboto) format(\"svg\")}@font-face{font-family:Roboto;font-style:italic;font-weight:700;src:url({url_themes}webfonts/roboto-v20-latin-700italic.eot);src:local(\"Roboto Bold Italic\"),local(\"Roboto-BoldItalic\"),url({url_themes}webfonts/roboto-v20-latin-700italic.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/roboto-v20-latin-700italic.woff2) format(\"woff2\"),url({url_themes}webfonts/roboto-v20-latin-700italic.woff) format(\"woff\"),url({url_themes}webfonts/roboto-v20-latin-700italic.ttf) format(\"truetype\"),url({url_themes}webfonts/roboto-v20-latin-700italic.svg#Roboto) format(\"svg\")}\n        @font-face{font-family:\'Font Awesome 5 Free\';font-style:normal;font-weight:900;font-display:auto;src:url({url_themes}webfonts/fa-solid-900.eot);src:url({url_themes}webfonts/fa-solid-900.eot?#iefix) format(\"embedded-opentype\"),url({url_themes}webfonts/fa-solid-900.woff2) format(\"woff2\"),url({url_themes}webfonts/fa-solid-900.woff) format(\"woff\"),url({url_themes}webfonts/fa-solid-900.ttf) format(\"truetype\"),url({url_themes}webfonts/fa-solid-900.svg#fontawesome) format(\"svg\")}\n\n        *, :after, :before {\n            box-sizing: inherit;\n        }\n\n        html {\n            box-sizing: border-box;\n            font-size: 15px;\n            height: 100%;\n            line-height: 1.15;\n        }\n\n        body {\n            font-family: -apple-system, BlinkMacSystemFont, segoe ui, helvetica neue, helvetica, Cantarell, Ubuntu, roboto, noto, arial, sans-serif;\n            height: 100%;\n            font-size: 1rem;\n            line-height: 1.6;\n            color: var(--ee-text-normal);\n            background: var(--ee-main-bg);\n            -webkit-font-smoothing: antialiased;\n            margin: 0;\n        }\n\n        .panel {\n            margin-bottom: 20px;\n            background-color: var(--ee-panel-bg);\n            border: 1px solid var(--ee-panel-border);\n            border-radius: 6px;\n        }\n        .redirect {\n            max-width: 700px;\n            min-width: 350px;\n            position: absolute;\n            left: 50%;\n            top: 0;\n            transform: translate(-50%);\n            height: 100vh;\n            overflow-y: auto;\n            background: transparent;\n            border: none;\n            border-radius: 0;\n            display: flex;\n        }\n\n        .redirect-inner {\n          background-color: var(--ee-panel-bg);\n          border: 1px solid var(--ee-panel-border);\n          border-radius: 6px;\n          height: auto;\n          margin-top: auto;\n          margin-bottom: auto;\n        }\n\n        .redirect-inner .qr-code-wrap {\n            text-align: center;\n        }\n\n        .panel-heading {\n            padding: 20px 25px;\n            position: relative;\n        }\n\n        .panel-body {\n            padding: 20px 25px;\n        }\n\n        .panel-body:after, .panel-body:before {\n            content: \" \";\n            display: table;\n        }\n\n        .redirect p {\n            margin-bottom: 20px;\n        }\n        p {\n            line-height: 1.6;\n        }\n        a, blockquote, code, h1, h2, h3, h4, h5, h6, ol, p, pre, ul {\n            color: inherit;\n            margin: 0;\n            padding: 0;\n            font-weight: inherit;\n        }\n\n        code {\n            font-size: inherit;\n            margin: 0 2px;\n            padding: 3px 6px;\n            border-radius: 5px;\n            border: 1px solid var(--ee-code-border);\n            background-color: var(--ee-bg-blank);\n            font-size: .96em;\n            white-space: normal;\n        }\n\n        a {\n            color: var(--ee-link);\n            text-decoration: none;\n            -webkit-transition: color .15s ease-in-out;\n            -moz-transition: color .15s ease-in-out;\n            -o-transition: color .15s ease-in-out;\n        }\n\n        a:hover {\n            color: var(--ee-link-hover);\n        }\n\n        h3 {\n            font-size: 1.35em;\n            font-weight: 500;\n        }\n\n        ol, ul {\n            padding-left: 0;\n        }\n\n        ol li, ul li {\n            list-style-position: inside;\n        }\n\n        .panel-footer {\n            padding: 20px 25px;\n            position: relative;\n        }\n\n        fieldset {\n            margin: 0;\n            padding: 0;\n            margin-bottom: 20px;\n            border: 0;\n        }\n\n        fieldset.last {\n            margin-bottom: 0;\n        }\n\n        .field-instruct {\n            margin-bottom: 5px;\n        }\n\n        .field-instruct label {\n            display: block;\n            color: var(--ee-text-normal);\n            margin-bottom: 5px;\n            font-weight: 500;\n        }\n\n        .field-instruct :last-child {\n            margin-bottom: 0;\n        }\n\n        .field-instruct em {\n            color: var(--ee-text-secondary);\n            display: block;\n            font-size: .8rem;\n            font-style: normal;\n            margin-bottom: 10px;\n        }\n\n        .field-instruct label+em {\n            margin-top: -5px;\n        }\n\n        button, input, optgroup, select, textarea {\n            font-family: inherit;\n            font-size: 100%;\n            line-height: 1.15;\n            margin: 0;\n        }\n\n        input[type=text], input[type=password] {\n            display: block;\n            width: 100%;\n            padding: 8px 15px;\n            font-size: 1rem;\n            line-height: 1.6;\n            color: var(--ee-input-color);\n            background-color: var(--ee-input-bg);\n            background-image: none;\n            transition: border-color .2s ease,box-shadow .2s ease;\n            -webkit-appearance: none;\n            border: 1px solid var(--ee-input-border);\n            border-radius: 5px;\n        }\n\n        input[type=text]:focus, input[type=password]:focus {\n            border-color: var(--ee-input-focus-border);\n        }\n\n        input:focus {\n            outline: 0;\n        }\n\n        .button {\n            -webkit-appearance: none;\n            display: inline-block;\n            font-weight: 500;\n            text-align: center;\n            vertical-align: middle;\n            touch-action: manipulation;\n            background-image: none;\n            cursor: pointer;\n            border: 1px solid transparent;\n            white-space: nowrap;\n            -webkit-transition: background-color .15s ease-in-out;\n            -moz-transition: background-color .15s ease-in-out;\n            -o-transition: background-color .15s ease-in-out;\n            -webkit-user-select: none;\n            -moz-user-select: none;\n            -ms-user-select: none;\n            user-select: none;\n            padding: 8px 20px!important;\n            font-size: 1rem;\n            line-height: 1.6;\n            border-radius: 5px;\n        }\n\n        .button--wide {\n            display: block;\n            width: 100%;\n        }\n\n        .button--large {\n            padding: 10px 25px!important;\n            font-size: 1.2rem;\n            line-height: 1.7;\n            border-radius: 6px;\n        }\n\n        .button--primary {\n            color: var(--ee-button-primary-color);\n            background-color: var(--ee-button-primary-bg);\n            border-color: var(--ee-button-primary-border);\n        }\n\n        .button.disabled {\n            cursor: not-allowed;\n            opacity: .55;\n            box-shadow: none;\n        }\n\n        .app-notice {\n            border: 1px solid var(--ee-border);\n            overflow: hidden;\n            background-color: var(--ee-bg-0);\n            border-radius: 5px;\n            display: flex;\n            margin-bottom: 20px;\n        }\n\n        .app-notice---error {\n            border-color: var(--ee-error);\n            background-color: var(--ee-error-light);\n        }\n\n        .app-notice---error .app-notice__tag {\n            color: var(--ee-error);\n        }\n\n        .app-notice---important {\n            border-color: var(--ee-warning);\n            background-color: var(--ee-warning-light);\n        }\n\n        .app-notice---important .app-notice__tag {\n            color: var(--ee-warning);\n        }\n\n        .app-notice__tag {\n            padding: 15px 20px;\n            display: flex;\n            align-items: center;\n            justify-content: center;\n            font-size: 16px;\n        }\n\n        .app-notice__icon {\n            position: relative;\n        }\n\n        .app-notice__icon::before {\n            font-family: \'Font Awesome 5 Free\';\n            font-weight: 900;\n            content: \"\\\\f06a\";\n            position: relative;\n            z-index: 2;\n        }\n\n        .app-notice---error .app-notice__icon::after {\n            background: var(--ee-error-light);\n        }\n\n        .app-notice__tag+.app-notice__content {\n            padding-left: 0;\n        }\n\n        .app-notice__content {\n            flex: 1 1;\n            padding: 15px 20px;\n        }\n\n        .app-notice__content p {\n            margin: 0;\n            color: var(--ee-text-primary);\n            opacity: .6;\n        }\n\n                </style>\n            </head>\n            <body>\n                <section class=\"flex-wrap\">\n                    <section class=\"wrap\">\n                        <div class=\"panel redirect\">\n                            <div class=\"redirect-inner\">\n                                <div class=\"panel-heading\">\n                                    <h3>{heading}</h3>\n                                </div>\n                                <div class=\"panel-body\">\n                                    {content}\n                                </div>\n                                <div class=\"panel-footer\">\n                                    {link}\n                                </div>\n                            </div>\n                        </div>\n                    </section>\n                </section>\n            </body>\n        </html>',NULL,1677419336,0),(5,1,'y','admin_notify_reg','Notification of new member registration','email','members','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}',NULL,1677419336,0),(6,1,'y','admin_notify_entry','A new channel entry has been posted','email','content','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n',NULL,1677419336,0),(7,1,'y','admin_notify_comment','You have just received a comment','email','comments','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}',NULL,1677419336,0),(8,1,'y','mbr_activation_instructions','Enclosed is your activation code','email','members','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}',NULL,1677419336,0),(9,1,'y','forgot_password_instructions','Login information','email','members','To reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}',NULL,1677419336,0),(10,1,'y','password_changed_notification','Password changed','email','members','Your password was just changed.\n\nIf you didn\'t make this change yourself, please contact an administrator right away.\n\n{site_name}\n{site_url}',NULL,1677419336,0),(11,1,'y','forgot_username_instructions','Username information','email','members','Your username is: {username}\n\nIf you didn\'t request your username yourself, please contact an administrator right away.\n\n{site_name}\n{site_url}',NULL,1677419336,0),(12,1,'y','email_changed_notification','Email address changed','email','members','Your email address has been changed, and this email address is no longer associated with your account.\n\nIf you didn\'t make this change yourself, please contact an administrator right away.\n\n{site_name}\n{site_url}',NULL,1677419336,0),(13,1,'y','validated_member_notify','Your membership account has been activated','email','members','Your membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}',NULL,1677419336,0),(14,1,'y','decline_member_validation','Your membership account has been declined','email','members','We\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}',NULL,1677419336,0),(15,1,'y','comment_notification','Someone just responded to your comment','email','comments','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}',NULL,1677419336,0),(16,1,'y','comments_opened_notification','New comments have been added','email','comments','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}',NULL,1677419336,0),(17,1,'y','private_message_notification','Someone has sent you a Private Message','email','private_messages','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}',NULL,1677419336,0),(18,1,'y','pm_inbox_full','Your private message mailbox is full','email','private_messages','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}',NULL,1677419336,0);
/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_stats`
--

DROP TABLE IF EXISTS `exp_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `total_members` mediumint(7) NOT NULL DEFAULT 0,
  `recent_member_id` int(10) NOT NULL DEFAULT 0,
  `recent_member` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT 0,
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT 0,
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT 0,
  `total_comments` mediumint(8) NOT NULL DEFAULT 0,
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT 0,
  `most_visitors` mediumint(7) NOT NULL DEFAULT 0,
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT 0,
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_stats`
--

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;
INSERT INTO `exp_stats` VALUES (1,1,1,1,'admin',6,0,0,0,1677421080,0,0,0,0,0,1678026158);
/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_statuses`
--

DROP TABLE IF EXISTS `exp_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '000000',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_statuses`
--

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;
INSERT INTO `exp_statuses` VALUES (1,'open',1,'009933'),(2,'closed',2,'990000');
/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_statuses_roles`
--

DROP TABLE IF EXISTS `exp_statuses_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_statuses_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `status_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_statuses_roles`
--

LOCK TABLES `exp_statuses_roles` WRITE;
/*!40000 ALTER TABLE `exp_statuses_roles` DISABLE KEYS */;
INSERT INTO `exp_statuses_roles` VALUES (5,1),(5,2);
/*!40000 ALTER TABLE `exp_statuses_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_groups`
--

DROP TABLE IF EXISTS `exp_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `group_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups`
--

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;
INSERT INTO `exp_template_groups` VALUES (2,1,'Site',1,'y');
/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_groups_roles`
--

DROP TABLE IF EXISTS `exp_template_groups_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_template_groups_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`template_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups_roles`
--

LOCK TABLES `exp_template_groups_roles` WRITE;
/*!40000 ALTER TABLE `exp_template_groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_groups_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_routes`
--

DROP TABLE IF EXISTS `exp_template_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_parsed` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_required` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_routes`
--

LOCK TABLES `exp_template_routes` WRITE;
/*!40000 ALTER TABLE `exp_template_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_templates`
--

DROP TABLE IF EXISTS `exp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'webpage',
  `template_engine` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_date` int(10) NOT NULL DEFAULT 0,
  `last_author_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cache` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT 0,
  `no_auth_bounce` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enable_http_auth` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `allow_php` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `protect_javascript` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `enable_frontedit` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates`
--

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;
INSERT INTO `exp_templates` VALUES (3,1,2,'index','webpage',NULL,'{embed=\"site/_header\" active=\"tabs__link--active js-tabs__link--active\"  activeli=\"active\"}\n<div class=\"wrapper wrapper--wide whats-on__wrapper tabs\" style=\"min-height: 1076px;\">\n<div class=\"tabs__panel active\">\n    {exp:channel:entries limit=\"6\" orderby=\"date\" sort=\"asc\"}\n  <article class=\"card-link card-link--reveal\" style=\"transition-delay: 0s;\"> \n\n    <div class=\"card-link__image\">\n      <a class=\"card-link__image-link\">{photo wrap=\"image\"}</a>\n    </div>\n    <div class=\"card-link__content\">\n      <div class=\"card-link__titles\">\n        <h3 class=\"h4 card-link__heading\">{title}</h3>\n        {if {date_of_show:total_fields} >0 }\n        <p class=\"card-link__sub-heading\">{date_of_show}\n          {date_of_show:date_show}\n          {if {date_of_show::index} > 0} & {/if} {content format=\"%D, %F %d, %Y\"}\n          {date_of_show:date_show}\n          {/date_of_show}</p>\n        {if:else}\n        <p class=\"card-link__sub-heading\">Dates to be announced</p>\n        {/if}\n      </div>\n      <div class=\"card-link__info\">\n        <ul class=\"card-link__list\"> \n          {if {date_on_sale} > {current_time}}\n          <li class=\"card-link__item\">\n            <span class=\"card-link__item-title\">On Sale</span>\n            <span class=\"card-link__item-description\">{date_on_sale format=\"%D, %F %d, %Y - %g:%i:%s\"}</span>\n            {/if}\n        </ul>\n      <div class=\"card-link__ctas\">\n        <div class=\"inline-ctas\">\n          <a class=\"inline-ctas__cta text-pink\"><span class=\"inline-ctas__text\">Learn more<i class=\"icon-right-arrow inline-ctas__arrow\"></i></span></a>\n          {if {date_on_sale} > {current_time}}\n          <a class=\"inline-ctas__cta text-white\"> <i class=\"icon-calendar inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Remind me</span><i class=\"icon-right-arrow inline-ctas__arrow\"></i></a>\n          {if:elseif sold_out}\n          <span class=\"inline-ctas__cta text-white\"> <i class=\"icon-sold-out inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Sold Out</span></span>\n          {if:else}\n          <a class=\"inline-ctas__cta text-white\"> <i class=\"icon-ticket inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Buy Now</span><i class=\"icon-right-arrow inline-ctas__arrow\"></i></a>\n          {/if}\n         \n</div>\n</div>\n  \n</div>\n\n      </article>\n     {/exp:channel:entries}\n    </div>\n    </div>\n    \n  {embed=\"site/_footer\"}','',1677444160,1,'n',0,'','n','n','o',0,'n','y'),(4,1,2,'_header','webpage',NULL,'<html>\n  <head>\n    <title>{site_name}</title>\n    <link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"{stylesheet=\'site/main\'}\" />\n  </head>\n  <body>\n  <main class=\"main-container\">\n  	<section class=\"section section--on-top tabs js-tabs whats-on tabbed-content\" id=\"whatsOn\">\n    	<div class=\"wrapper wrapper--even whats-on__wrapper stagger-children\">\n        	<div class=\"wrapper__col stagger-child\">\n              	<h2 class=\"h4 whats-on__heading\">Shows</h2>\n          	</div>\n       		<div class=\"wrapper__col\"></div>\n          <div class=\"wrapper__col stagger-child\">\n            <div class=\"tabs__nav\">\n              <ul class=\"tabs__list tab-navigation\">\n                <li class=\"tabs__item\" data-tab-target=\"just-announced\">\n                  <li class=\"tabs__item {embed:activeli}\"><a class=\"tabs__link js-tabs__link {embed:activelink}\" href=\"Site/index\">Just Announced<a></li>\n                  <li class=\"tabs__item {embed:activeli}\"><a class=\"tabs__link js-tabs__link {embed:activelink}\" href=\"Site/Upcoming\">Upcoming<a></li>\n                  <li class=\"tabs__item {embed:activeli}\"><a class=\"tabs__link js-tabs__link {embed:activelink}\" href=\"Site/Featured\">Featured<a></li>\n              </ul>\n            </div>\n            </div>\n            </div>\n      ','',1677445537,1,'n',0,'','n','n','o',0,'n','y'),(5,1,2,'_footer','webpage',NULL,'			   </div>\n			</section>\n		</main>\n	</body>\n</html>','',1677441674,1,'n',0,'','n','n','o',0,'n','y'),(6,1,2,'Upcoming','webpage',NULL,'{embed=\"site/_header\" active=\"tabs__link--active js-tabs__link--active\"  activeli=\"active\"}\n<div class=\"wrapper wrapper--wide whats-on__wrapper tabs\" style=\"min-height: 1076px;\">\n<div class=\"tabs__panel active\">\n{exp:channel:entries limit=\"6\" orderby=\"date_show\" sort=\"asc\"}\n<article class=\"card-link card-link--reveal\" style=\"transition-delay: 0s;\"> \n\n    <div class=\"card-link__image\">\n      <a class=\"card-link__image-link\">{photo wrap=\"image\"}</a>\n    </div>\n    <div class=\"card-link__content\">\n      <div class=\"card-link__titles\">\n        <h3 class=\"h4 card-link__heading\">{title}</h3>\n        {if {date_of_show:total_fields} >0 }\n        <p class=\"card-link__sub-heading\">{date_of_show}\n          {date_of_show:date_show}\n          {if {date_of_show::index} > 0} & {/if} {content format=\"%D, %F %d, %Y\"}\n          {date_of_show:date_show}\n          {/date_of_show}</p>\n        {if:else}\n        <p class=\"card-link__sub-heading\">Dates to be announced</p>\n        {/if}\n      </div>\n      <div class=\"card-link__info\">\n        <ul class=\"card-link__list\"> \n          {if {date_on_sale} > {current_time}}\n          <li class=\"card-link__item\">\n            <span class=\"card-link__item-title\">On Sale</span>\n            <span class=\"card-link__item-description\">{date_on_sale format=\"%D, %F %d, %Y - %g:%i:%s\"}</span>\n            {/if}\n        </ul>\n      <div class=\"card-link__ctas\">\n        <div class=\"inline-ctas\">\n          <a class=\"inline-ctas__cta text-pink\"><span class=\"inline-ctas__text\">Learn more<i class=\"icon-right-arrow inline-ctas__arrow\"></i></span></a>\n          {if {date_on_sale} > {current_time}}\n          <a class=\"inline-ctas__cta text-white\"> <i class=\"icon-calendar inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Remind me</span><i class=\"icon-right-arrow inline-ctas__arrow\"></i></a>\n          {if:elseif sold_out}\n          <span class=\"inline-ctas__cta text-white\"> <i class=\"icon-sold-out inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Sold Out</span></span>\n          {if:else}\n          <a class=\"inline-ctas__cta text-white\"> <i class=\"icon-ticket inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Buy Now</span><i class=\"icon-right-arrow inline-ctas__arrow\"></i></a>\n          {/if}\n         \n</div>\n</div>\n  \n</div>\n\n      </article>\n     {/exp:channel:entries}\n    </div>\n    </div>\n    \n  {embed=\"site/_footer\"}','',1677444273,1,'n',0,'','n','n','o',0,'n','y'),(7,1,2,'Featured','webpage',NULL,'{embed=\"site/_header\" active=\"tabs__link--active js-tabs__link--active\"  activeli=\"active\"}\n<div class=\"wrapper wrapper--wide whats-on__wrapper tabs\" style=\"min-height: 1076px;\">\n<div class=\"tabs__panel active\">\n{exp:channel:entries limit=\"6\" category=\"featured\" orderby=\"date\" sort=\"asc\"}\n <article class=\"card-link card-link--reveal\" style=\"transition-delay: 0s;\"> \n\n    <div class=\"card-link__image\">\n      <a class=\"card-link__image-link\">{photo wrap=\"image\"}</a>\n    </div>\n    <div class=\"card-link__content\">\n      <div class=\"card-link__titles\">\n        <h3 class=\"h4 card-link__heading\">{title}</h3>\n        {if {date_of_show:total_fields} >0 }\n        <p class=\"card-link__sub-heading\">{date_of_show}\n          {date_of_show:date_show}\n          {if {date_of_show::index} > 0} & {/if} {content format=\"%D, %F %d, %Y\"}\n          {date_of_show:date_show}\n          {/date_of_show}</p>\n        {if:else}\n        <p class=\"card-link__sub-heading\">Dates to be announced</p>\n        {/if}\n      </div>\n      <div class=\"card-link__info\">\n        <ul class=\"card-link__list\"> \n          {if {date_on_sale} > {current_time}}\n          <li class=\"card-link__item\">\n            <span class=\"card-link__item-title\">On Sale</span>\n            <span class=\"card-link__item-description\">{date_on_sale format=\"%D, %F %d, %Y - %g:%i:%s\"}</span>\n            {/if}\n        </ul>\n      <div class=\"card-link__ctas\">\n        <div class=\"inline-ctas\">\n          <a class=\"inline-ctas__cta text-pink\"><span class=\"inline-ctas__text\">Learn more<i class=\"icon-right-arrow inline-ctas__arrow\"></i></span></a>\n          {if {date_on_sale} > {current_time}}\n          <a class=\"inline-ctas__cta text-white\"> <i class=\"icon-calendar inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Remind me</span><i class=\"icon-right-arrow inline-ctas__arrow\"></i></a>\n          {if:elseif sold_out}\n          <span class=\"inline-ctas__cta text-white\"> <i class=\"icon-sold-out inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Sold Out</span></span>\n          {if:else}\n          <a class=\"inline-ctas__cta text-white\"> <i class=\"icon-ticket inline-ctas__icon\"></i> <span class=\"inline-ctas__text\">Buy Now</span><i class=\"icon-right-arrow inline-ctas__arrow\"></i></a>\n          {/if}\n         \n</div>\n</div>\n  \n</div>\n\n      </article>\n     {/exp:channel:entries}\n    </div>\n    </div>\n    \n  {embed=\"site/_footer\"}','',1677445570,1,'n',0,'','n','n','o',0,'n','y'),(8,1,2,'main','css',NULL,'@import\"https://fast.fonts.net/lt/1.css?apiType=css&c=8e14c3a5-3219-4a5b-b524-7855a2d48110&fontids=1488878,1488902,1488914\";\n\n:root {\n  --swiper-theme-color: #007aff\n}\n\n.swiper-container {\n  margin-left: auto;\n  margin-right: auto;\n  position: relative;\n  overflow: hidden;\n  list-style: none;\n  padding: 0;\n  z-index: 1\n}\n\n.swiper-wrapper {\n  position: relative;\n  width: 100%;\n  height: 100%;\n  z-index: 1;\n  display: flex;\n  transition-property: transform;\n  box-sizing: content-box\n}\n\n.swiper-container-pointer-events {\n  touch-action: pan-y\n}\n\n.swiper-slide {\n  flex-shrink: 0;\n  width: 100%;\n  height: 100%;\n  position: relative;\n  transition-property: transform\n}\n\n.swiper-container-autoheight,\n.swiper-container-autoheight .swiper-slide {\n  height: auto\n}\n\n.swiper-container-autoheight .swiper-wrapper {\n  align-items: flex-start;\n  transition-property: transform, height\n}\n\n.swiper-pagination {\n  position: absolute;\n  text-align: center;\n  transition: 300ms opacity;\n  transform: translate3d(0, 0, 0);\n  z-index: 10\n}\n\n.swiper-pagination.swiper-pagination-hidden {\n  opacity: 0\n}\n\n.swiper-container .swiper-notification {\n  position: absolute;\n  left: 0;\n  top: 0;\n  pointer-events: none;\n  opacity: 0;\n  z-index: -1000\n}\n\n.pagination-arrow {\n  padding: 0;\n  background: transparent;\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  position: relative;\n  width: 40px;\n  height: 40px\n}\n\n.pagination-arrow:focus {\n  outline: none\n}\n\n.pagination-arrow__icon {\n  color: #fff;\n  font-size: 9px;\n  line-height: 1em;\n  position: absolute;\n  left: 50%;\n  top: 50%;\n  transform: translate(-50%, -50%)\n}\n\n.pagination-arrow__circle {\n  width: 100%;\n  height: 100%\n}\n\n.pagination-arrow__behind,\n.pagination-arrow__on-top {\n  stroke-width: 1px;\n  stroke: #fff;\n  fill: transparent;\n  transition: .3s ease;\n  transition-property: stroke-width\n}\n\n.pagination-arrow__on-top {\n  stroke: #d40f7d;\n  stroke-dasharray: 125;\n  stroke-dashoffset: 125\n}\n\n.pagination-arrow:hover .pagination-arrow__behind,\n.pagination-arrow:hover .pagination-arrow__on-top {\n  stroke-width: 2px\n}\n\nhtml,\nbody,\np,\nol,\nul,\nli,\ndl,\ndt,\ndd,\nblockquote,\nfigure,\nfieldset,\nlegend,\ntextarea,\npre,\niframe,\nhr,\nh1,\nh2,\nh3,\nh4,\nh5,\nh6 {\n  margin: 0;\n  padding: 0\n}\n\nh1,\nh2,\nh3,\nh4,\nh5,\nh6 {\n  font-size: 100%;\n  font-weight: normal\n}\n\nul {\n  list-style: none\n}\n\nbutton,\ninput,\nselect,\ntextarea {\n  margin: 0\n}\n\nhtml,\n* {\n  box-sizing: border-box\n}\n\n*,\n*:before,\n*:after {\n  box-sizing: inherit\n}\n\nimg,\nembed,\niframe,\nobject,\naudio,\nvideo {\n  height: auto;\n  max-width: 100%\n}\n\niframe {\n  border: 0\n}\n\ntable {\n  border-collapse: collapse;\n  border-spacing: 0\n}\n\ntd,\nth {\n  padding: 0;\n  text-align: left\n}\n\n.reveal-on-enter {\n  opacity: 0\n}\n\nbutton {\n  -webkit-user-select: none;\n  -ms-user-select: none;\n  user-select: none;\n  display: inline-flex;\n  vertical-align: middle;\n  align-items: center;\n  justify-content: center;\n  font: inherit;\n  cursor: pointer;\n  overflow: visible;\n  border: none;\n  border-radius: 0\n}\n\nbutton,\nbutton:hover,\nbutton:active,\nbutton:focus {\n  text-decoration: none\n}\n\nbutton:focus,\nbutton:active {\n  background-color: inherit;\n  color: inherit\n}\n\nbutton::-moz-focus-inner {\n  border: 0;\n  padding: 0\n}\n\n.button,\n.search-input__input,\n.search-popup__submit {\n  transition: opacity .2s ease, background .2s ease, color .2s ease, border .2s ease, box-shadow .2s ease, text-shadow .2s ease;\n  height: 48px;\n  border: 1px solid transparent;\n  border-radius: 24px;\n  display: inline-flex;\n  justify-content: center;\n  align-items: center;\n  min-width: 200px;\n  font-size: 16px;\n  color: #fff;\n  background: transparent;\n  padding: 0 15px;\n  text-shadow: 0 0 1px transparent;\n  box-shadow: inset 0 0 0 2px #d40f7d\n}\n\n@media only screen and (min-width: 480px) {\n\n  .button,\n  .search-input__input,\n  .search-popup__submit {\n    min-width: 260px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .button,\n  .search-input__input,\n  .search-popup__submit {\n    padding: 0 30px\n  }\n}\n\n.button:hover,\n.search-input__input:hover,\n.search-popup__submit:hover {\n  box-shadow: inset 0 0 0 3px #d40f7d;\n  text-shadow: 0 0 1px #fff\n}\n\n.button--alternative {\n  color: #000\n}\n\n.button--secondary {\n  border-color: #000;\n  color: #000;\n  background: transparent;\n  box-shadow: none\n}\n\n.button--tertiary {\n  color: #000;\n  background: transparent;\n  box-shadow: inset 0 0 0 2px #000\n}\n\n.button--tertiary:hover {\n  box-shadow: inset 0 0 0 3px #000\n}\n\n.button--quaternary {\n  color: #000\n}\n\n.button--dark {\n  background: rgba(0, 0, 0, .4)\n}\n\n.button--ghost {\n  box-shadow: inset 0 0 0 2px #fff\n}\n\n.button--ghost:hover {\n  box-shadow: inset 0 0 0 3px #fff\n}\n\n.button--disabled {\n  color: #9b9b9b;\n  cursor: not-allowed;\n  box-shadow: inset 0 0 0 2px #9b9b9b\n}\n\n.button--disabled:hover {\n  color: #9b9b9b;\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  text-shadow: 0 0 1px transparent;\n  box-shadow: inset 0 0 0 2px #9b9b9b\n}\n\n.button--icon,\n.search-input__input {\n  width: 100%;\n  min-width: 210px;\n  text-shadow: 0 0 0 transparent;\n  align-items: center\n}\n\n.button--icon .button__icon,\n.search-input__input .button__icon {\n  font-size: 18px;\n  color: #d40f7d;\n  display: inline-flex\n}\n\n.button--icon .button__icon--left,\n.search-input__input .button__icon--left {\n  margin-right: 18px\n}\n\n.button--icon .button__icon--right,\n.search-input__input .button__icon--right {\n  margin-left: 18px\n}\n\n.button--icon:hover .button__icon,\n.search-input__input:hover .button__icon {\n  text-shadow: 0 0 0 transparent\n}\n\n@media only screen and (min-width: 768px) {\n\n  .button--icon,\n  .search-input__input {\n    width: auto\n  }\n}\n\n.button--short {\n  min-width: 215px\n}\n\n.button--full-width-mobile {\n  width: 100%\n}\n\n.button--search,\n.search-popup__submit {\n  background: transparent;\n  font-size: 16px;\n  line-height: 18px;\n  width: 100%;\n  transition: .1s ease;\n  transition-property: transform;\n  transform-origin: center center;\n  margin-top: 30px\n}\n\n.button--search:focus,\n.search-popup__submit:focus {\n  outline: none;\n  transform: scale(0.9)\n}\n\n@media only screen and (min-width: 768px) {\n\n  .button--search,\n  .search-popup__submit {\n    border: none;\n    position: absolute;\n    right: 0;\n    bottom: 18px;\n    width: auto;\n    min-width: 80px;\n    margin-top: 0;\n    box-shadow: none;\n    transition: .2s ease;\n    transition-property: text-shadow;\n    padding: 0\n  }\n\n  .button--search:hover,\n  .search-popup__submit:hover {\n    box-shadow: none\n  }\n}\n\n@media only screen and (min-width: 768px)and (min-width: 1024px) {\n\n  .button--search:hover,\n  .search-popup__submit:hover {\n    text-shadow: 0 0 1px #d40f7d\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .button--auto {\n    min-width: 0\n  }\n}\n\n.button--hidden {\n  opacity: 0;\n  pointer-events: none\n}\n\nfieldset {\n  margin-bottom: 10px\n}\n\nlabel {\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  display: block\n}\n\ninput[type=radio] {\n  vertical-align: text-bottom\n}\n\ninput[type=checkbox] {\n  vertical-align: bottom;\n  *vertical-align: baseline\n}\n\ninput[type=submit] {\n  cursor: pointer\n}\n\ninput[type=submit]::-moz-focus-inner {\n  border: 0;\n  padding: 0\n}\n\nselect {\n  border: none;\n  border-radius: 0;\n  -moz-appearance: none;\n  -webkit-appearance: none\n}\n\nselect::-ms-expand {\n  display: none\n}\n\nselect:-moz-focusring {\n  color: transparent;\n  text-shadow: 0 0 0 #000\n}\n\ninput[type=text],\ninput[type=password],\ninput[type=datetime],\ninput[type=datetime-local],\ninput[type=date],\ninput[type=month],\ninput[type=time],\ninput[type=week],\ninput[type=number],\ninput[type=email],\ninput[type=url],\ninput[type=search],\ninput[type=tel],\ninput[type=color],\ninput[type=file],\ntextarea,\nselect {\n  background: transparent;\n  line-height: 17px;\n  width: 100%;\n  box-sizing: border-box;\n  -webkit-appearance: none\n}\n\ninput[type=text]:focus,\ninput[type=password]:focus,\ninput[type=datetime]:focus,\ninput[type=datetime-local]:focus,\ninput[type=date]:focus,\ninput[type=month]:focus,\ninput[type=time]:focus,\ninput[type=week]:focus,\ninput[type=number]:focus,\ninput[type=email]:focus,\ninput[type=url]:focus,\ninput[type=search]:focus,\ninput[type=tel]:focus,\ninput[type=color]:focus,\ninput[type=file]:focus,\ntextarea:focus,\nselect:focus {\n  outline: none\n}\n\ninput[type=text].error,\ninput[type=password].error,\ninput[type=datetime].error,\ninput[type=datetime-local].error,\ninput[type=date].error,\ninput[type=month].error,\ninput[type=time].error,\ninput[type=week].error,\ninput[type=number].error,\ninput[type=email].error,\ninput[type=url].error,\ninput[type=search].error,\ninput[type=tel].error,\ninput[type=color].error,\ninput[type=file].error,\ntextarea.error,\nselect.error {\n  border: 1px solid #fff;\n  color: #fff\n}\n\ninput[type=text]:disabled,\ninput[type=password]:disabled,\ninput[type=datetime]:disabled,\ninput[type=datetime-local]:disabled,\ninput[type=date]:disabled,\ninput[type=month]:disabled,\ninput[type=time]:disabled,\ninput[type=week]:disabled,\ninput[type=number]:disabled,\ninput[type=email]:disabled,\ninput[type=url]:disabled,\ninput[type=search]:disabled,\ninput[type=tel]:disabled,\ninput[type=color]:disabled,\ninput[type=file]:disabled,\ntextarea:disabled,\nselect:disabled {\n  border: 1px solid #9b9b9b;\n  color: #9b9b9b;\n  pointer-events: none\n}\n\ninput[type=text]:disabled:focus,\ninput[type=password]:disabled:focus,\ninput[type=datetime]:disabled:focus,\ninput[type=datetime-local]:disabled:focus,\ninput[type=date]:disabled:focus,\ninput[type=month]:disabled:focus,\ninput[type=time]:disabled:focus,\ninput[type=week]:disabled:focus,\ninput[type=number]:disabled:focus,\ninput[type=email]:disabled:focus,\ninput[type=url]:disabled:focus,\ninput[type=search]:disabled:focus,\ninput[type=tel]:disabled:focus,\ninput[type=color]:disabled:focus,\ninput[type=file]:disabled:focus,\ntextarea:disabled:focus,\nselect:disabled:focus {\n  border: 1px solid #9b9b9b;\n  color: #9b9b9b\n}\n\ninput[type=search]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=Search]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEarch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEarch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seArch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeArch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEArch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEArch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seaRch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeaRch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEaRch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEaRch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seARch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeARch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEARch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEARch]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=searCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SearCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEarCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEarCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seArCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeArCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEArCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEArCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seaRCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeaRCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEaRCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEaRCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seARCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeARCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEARCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEARCh]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=searcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SearcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEarcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEarcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seArcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeArcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEArcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEArcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seaRcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeaRcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEaRcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEaRcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seARcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeARcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEARcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEARcH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=searCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SearCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEarCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEarCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seArCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeArCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEArCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEArCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seaRCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeaRCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEaRCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEaRCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=seARCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SeARCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=sEARCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button,\ninput[type=SEARCH]:enabled:read-write:-webkit-any(:focus, :hover):focus:focus:hover:hover::-webkit-search-cancel-button {\n  display: none\n}\n\ninput[type=search]::-webkit-search-decoration,\ninput[type=search]::-webkit-search-cancel-button,\ninput[type=search]::-webkit-search-results-button,\ninput[type=search]::-webkit-search-results-decoration {\n  display: none\n}\n\ntextarea,\ntextarea:focus {\n  width: 100%;\n  padding: 15px;\n  min-height: 150px;\n  line-height: 1.64;\n  overflow: auto\n}\n\n::-webkit-input-placeholder,\n:-moz-placeholder,\n::-moz-placeholder,\n:-ms-input-placeholder {\n  color: #9b9b9b;\n  font-size: 12px\n}\n\n@font-face {\n  font-family: \"Helvetica Neue LT W01_41488878\";\n  src: url(\"../fonts/helvetica-neue/1488878/3a46542f-f429-4821-9a88-62e3be54a640.woff2\") format(\"woff2\"), url(\"../fonts/helvetica-neue/1488878/50ac1699-f3d2-47b6-878f-67a368a17c41.woff\") format(\"woff\")\n}\n\n@font-face {\n  font-family: \"Helvetica Neue LT W01_65 Md\";\n  src: url(\"../fonts/helvetica-neue/1488902/5b1fbd62-45dc-4433-a7df-a2b24a146411.woff2\") format(\"woff2\"), url(\"../fonts/helvetica-neue/1488902/050b1948-f226-4d20-a65a-15d8ed031222.woff\") format(\"woff\")\n}\n\n@font-face {\n  font-family: \"Helvetica Neue LT W01_71488914\";\n  src: url(\"../fonts/helvetica-neue/1488914/531c5a28-5575-4f58-96d4-a80f7b702d7b.woff2\") format(\"woff2\"), url(\"../fonts/helvetica-neue/1488914/439c5962-f9fe-4eaf-a1f6-f41d42edba75.woff\") format(\"woff\")\n}\n\nhtml {\n  min-height: 100%;\n  -webkit-text-size-adjust: 100%;\n  -ms-text-size-adjust: 100%;\n  -moz-osx-font-smoothing: grayscale;\n  -webkit-font-smoothing: antialiased;\n  width: 100%;\n  scroll-behavior: smooth\n}\n\nhtml.is-animating .main-container:after {\n  transform: scaleX(1)\n}\n\nhtml.is-rendering a {\n  pointer-events: none\n}\n\nhtml.is-rendering .main-container:after {\n  transform-origin: right\n}\n\nbody {\n  position: relative;\n  height: 100%;\n  -webkit-overflow-scrolling: touch;\n  color: #fff;\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  line-height: 1.64;\n  background: #000;\n  font-size: 14px\n}\n\nbody.no-scroll {\n  width: 100vw;\n  position: fixed;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 768px) {\n  body {\n    font-size: 15px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  body {\n    font-size: 17px\n  }\n}\n\nbody.sticky-footer {\n  display: flex;\n  flex-direction: column;\n  justify-content: space-between;\n  align-items: stretch\n}\n\nbody.sticky-footer main {\n  flex-grow: 1\n}\n\n.main-container {\n  transform: none;\n  opacity: 1;\n  transition: .7s ease;\n  transition-property: opacity, transform\n}\n\n.main-container:after {\n  content: \"\";\n  position: fixed;\n  top: 0;\n  left: 0;\n  right: 0;\n  bottom: 0;\n  z-index: 8;\n  background: #000;\n  transform: scaleX(0);\n  transform-origin: left;\n  transition: .8s ease\n}\n\n@keyframes scrollDown {\n  0% {\n    background-position: 0 -60px\n  }\n\n  50% {\n    background-position: 0 0\n  }\n\n  100% {\n    background-position: 0 60px\n  }\n}\n\n@keyframes mouseWheel {\n  0% {\n    transform: translateY(0)\n  }\n\n  40% {\n    transform: translateY(1px)\n  }\n\n  60% {\n    transform: translateY(-1px)\n  }\n\n  100% {\n    transform: translateY(0)\n  }\n}\n\n@keyframes cardReveal {\n  50% {\n    transform-origin: left;\n    transform: scaleX(1)\n  }\n\n  50.001% {\n    transform-origin: right;\n    transform: scaleX(1)\n  }\n\n  100% {\n    transform-origin: right;\n    transform: scaleX(0)\n  }\n}\n\n@keyframes marquee {\n  from {\n    transform: translateX(0%)\n  }\n\n  to {\n    transform: translateX(-100%)\n  }\n}\n\n@keyframes marquee2 {\n  from {\n    transform: translateX(0%)\n  }\n\n  to {\n    transform: translateX(-100%)\n  }\n}\n\n@keyframes slideInOnLoad {\n  from {\n    transform: translateX(0%)\n  }\n\n  to {\n    transform: translateX(-100%)\n  }\n}\n\n@keyframes slideInOnLoad {\n  from {\n    transform: translateX(100%)\n  }\n\n  to {\n    transform: translateX(0)\n  }\n}\n\n@keyframes slideOutOnLoad {\n  from {\n    transform: translateX(0)\n  }\n\n  to {\n    transform: translateX(-100%)\n  }\n}\n\n@keyframes arrowBounce {\n  50% {\n    transform: translateX(4px)\n  }\n}\n\n@keyframes parentReveal {\n  0% {\n    transform-origin: left;\n    transform: scaleX(0)\n  }\n\n  25% {\n    transform-origin: left;\n    transform: scaleX(1)\n  }\n\n  25.001% {\n    transform-origin: right;\n    transform: scaleX(1)\n  }\n\n  75% {\n    transform-origin: right;\n    transform: scaleX(1)\n  }\n\n  100% {\n    transform-origin: right;\n    transform: scaleX(0)\n  }\n}\n\n@keyframes childReveal {\n  0% {\n    transform-origin: left;\n    transform: scaleX(0)\n  }\n\n  25% {\n    transform-origin: left;\n    transform: scaleX(0)\n  }\n\n  50% {\n    transform-origin: left;\n    transform: scaleX(1)\n  }\n\n  50.001% {\n    transform-origin: right;\n    transform: scaleX(1)\n  }\n\n  75% {\n    transform-origin: right;\n    transform: scaleX(0)\n  }\n\n  100% {\n    transform-origin: right;\n    transform: scaleX(0)\n  }\n}\n\na {\n  transition: color .3s ease;\n  text-decoration: none\n}\n\n@font-face {\n  font-family: \"icons\";\n  src: url(\"../fonts/icons/icons.eot?7cdbbe288036b00b282509e3459e40cc?#iefix\") format(\"embedded-opentype\"), url(\"../fonts/icons/icons.woff2?7cdbbe288036b00b282509e3459e40cc\") format(\"woff2\"), url(\"../fonts/icons/icons.woff?7cdbbe288036b00b282509e3459e40cc\") format(\"woff\"), url(\"../fonts/icons/icons.ttf?7cdbbe288036b00b282509e3459e40cc\") format(\"truetype\"), url(\"../fonts/icons/icons.svg?7cdbbe288036b00b282509e3459e40cc#icons\") format(\"svg\")\n}\n\ni[class^=icon-],\ni[class*=\" icon-\"] {\n  display: inline-flex;\n  align-items: center;\n  justify-content: center\n}\n\ni[class^=icon-]:before,\ni[class*=\" icon-\"]:before,\n.radio-tag__label:before,\n.custom-select__select:after {\n  font-family: icons;\n  font-style: normal;\n  font-weight: normal;\n  font-feature-settings: normal;\n  font-variant: normal;\n  text-transform: none;\n  line-height: 1;\n  text-rendering: optimizeLegibility;\n  -webkit-font-smoothing: subpixel-antialiased;\n  -moz-osx-font-smoothing: grayscale\n}\n\n.icon-accessibility:before {\n  content: \"\"\n}\n\n.icon-arrow-pointing-top:before {\n  content: \"\"\n}\n\n.icon-audio-recording:before {\n  content: \"\"\n}\n\n.icon-belt-chains:before {\n  content: \"\"\n}\n\n.icon-bottles:before {\n  content: \"\"\n}\n\n.icon-bus:before {\n  content: \"\"\n}\n\n.icon-calendar:before {\n  content: \"\"\n}\n\n.icon-camera:before {\n  content: \"\"\n}\n\n.icon-cancelled:before {\n  content: \"\"\n}\n\n.icon-cans:before {\n  content: \"\"\n}\n\n.icon-chain:before {\n  content: \"\"\n}\n\n.icon-close-fill:before,\n.radio-tag__input:checked+.radio-tag__label--icon:before {\n  content: \"\"\n}\n\n.icon-close:before {\n  content: \"\"\n}\n\n.icon-comedy:before,\n.radio-tag__label--comedy:before {\n  content: \"\"\n}\n\n.icon-cycling:before {\n  content: \"\"\n}\n\n.icon-driving:before {\n  content: \"\"\n}\n\n.icon-dropdown:before,\n.custom-select__select:after {\n  content: \"\"\n}\n\n.icon-facebook:before {\n  content: \"\"\n}\n\n.icon-facilities:before {\n  content: \"\"\n}\n\n.icon-family-round:before,\n.radio-tag__label--family:before {\n  content: \"\"\n}\n\n.icon-family:before {\n  content: \"\"\n}\n\n.icon-filters:before {\n  content: \"\"\n}\n\n.icon-flags:before {\n  content: \"\"\n}\n\n.icon-getting-here:before {\n  content: \"\"\n}\n\n.icon-go-pro:before {\n  content: \"\"\n}\n\n.icon-grid:before {\n  content: \"\"\n}\n\n.icon-info:before {\n  content: \"\"\n}\n\n.icon-instagram:before {\n  content: \"\"\n}\n\n.icon-ipad:before {\n  content: \"\"\n}\n\n.icon-laser:before {\n  content: \"\"\n}\n\n.icon-left-arrow:before {\n  content: \"\"\n}\n\n.icon-linkedin:before {\n  content: \"\"\n}\n\n.icon-list:before {\n  content: \"\"\n}\n\n.icon-mouse:before {\n  content: \"\"\n}\n\n.icon-music:before,\n.radio-tag__label--music:before {\n  content: \"\"\n}\n\n.icon-parking:before {\n  content: \"\"\n}\n\n.icon-play:before {\n  content: \"\"\n}\n\n.icon-poster:before {\n  content: \"\"\n}\n\n.icon-print:before {\n  content: \"\"\n}\n\n.icon-prohibited-items:before {\n  content: \"\"\n}\n\n.icon-prohibited:before {\n  content: \"\"\n}\n\n.icon-remove:before {\n  content: \"\"\n}\n\n.icon-right-arrow:before {\n  content: \"\"\n}\n\n.icon-search:before {\n  content: \"\"\n}\n\n.icon-seats:before {\n  content: \"\"\n}\n\n.icon-selfie-stick:before {\n  content: \"\"\n}\n\n.icon-smartphone:before {\n  content: \"\"\n}\n\n.icon-sold-out:before {\n  content: \"\"\n}\n\n.icon-sport:before,\n.radio-tag__label--sport:before {\n  content: \"\"\n}\n\n.icon-tablet:before {\n  content: \"\"\n}\n\n.icon-the-venue:before {\n  content: \"\"\n}\n\n.icon-theatre:before,\n.radio-tag__label--arts:before {\n  content: \"\"\n}\n\n.icon-ticket:before {\n  content: \"\"\n}\n\n.icon-train:before {\n  content: \"\"\n}\n\n.icon-tram:before {\n  content: \"\"\n}\n\n.icon-travel:before {\n  content: \"\"\n}\n\n.icon-twitter:before {\n  content: \"\"\n}\n\n.icon-umbrella:before {\n  content: \"\"\n}\n\n.icon-verified:before {\n  content: \"\"\n}\n\n.icon-video-camera:before {\n  content: \"\"\n}\n\n.icon-walking:before {\n  content: \"\"\n}\n\n.icon-your-ticket:before {\n  content: \"\"\n}\n\n.icon-youtube:before {\n  content: \"\"\n}\n\n.h1,\n.inner__strip--editor h1,\n.standard-content__inner h1,\n.h2,\n.inner__strip--editor h2,\n.standard-content__inner h2,\n.h3,\n.inner__strip--editor h3,\n.standard-content__inner h3,\n.h4,\n.inner__strip--editor h4,\n.standard-content__inner h4,\n.h5,\n.inner__strip--editor h5,\n.standard-content__inner h5,\n.h6,\n.inner__strip--editor h6,\n.standard-content__inner h6 {\n  margin-top: 0;\n  line-height: 1.15;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  margin-bottom: 20px;\n  letter-spacing: 0\n}\n\n.h1,\n.inner__strip--editor h1,\n.standard-content__inner h1 {\n  font-size: 36px;\n  line-height: 48px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .h1,\n  .inner__strip--editor h1,\n  .standard-content__inner h1 {\n    font-size: 52px;\n    line-height: 74px\n  }\n}\n\n.h2,\n.inner__strip--editor h2,\n.standard-content__inner h2 {\n  font-size: 30px;\n  line-height: 36px;\n  letter-spacing: .04px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .h2,\n  .inner__strip--editor h2,\n  .standard-content__inner h2 {\n    font-size: 42px;\n    line-height: 50px;\n    letter-spacing: .06px\n  }\n}\n\n.h3,\n.inner__strip--editor h3,\n.standard-content__inner h3 {\n  font-size: 26px;\n  line-height: 31px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .h3,\n  .inner__strip--editor h3,\n  .standard-content__inner h3 {\n    font-size: 36px;\n    line-height: 43px\n  }\n}\n\n.h4,\n.inner__strip--editor h4,\n.standard-content__inner h4 {\n  font-size: 20px;\n  line-height: 30px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .h4,\n  .inner__strip--editor h4,\n  .standard-content__inner h4 {\n    font-size: 28px;\n    line-height: 36px\n  }\n}\n\n.h5,\n.inner__strip--editor h5,\n.standard-content__inner h5 {\n  font-size: 18px;\n  line-height: 26px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .h5,\n  .inner__strip--editor h5,\n  .standard-content__inner h5 {\n    font-size: 22px\n  }\n}\n\n.h6,\n.inner__strip--editor h6,\n.standard-content__inner h6 {\n  font-size: 16px;\n  line-height: 26px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .h6,\n  .inner__strip--editor h6,\n  .standard-content__inner h6 {\n    font-size: 18px\n  }\n}\n\n.p,\n.inner__strip--editor p,\n.standard-content__inner p,\n.ul,\n.inner__strip--editor ul,\n.standard-content__inner ul,\n.ol,\n.inner__strip--editor ol,\n.standard-content__inner ol,\n.pre,\n.standard-content__inner pre,\n.blockquote,\n.standard-content__inner blockquote,\n.intro {\n  margin-bottom: 20px\n}\n\n.hr,\n.standard-content__inner hr {\n  background-color: transparent;\n  border: none;\n  border-bottom: 1px solid #9b9b9b;\n  height: 1px;\n  width: 100%;\n  margin: 20px 0\n}\n\n.strong,\n.standard-content__inner strong {\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.em,\n.standard-content__inner em {\n  font-style: italic\n}\n\n.intro {\n  font-size: 20px;\n  line-height: 36px\n}\n\n.p,\n.inner__strip--editor p,\n.standard-content__inner p {\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  font-size: 18px;\n  line-height: 26px\n}\n\n.p--small,\n.standard-content__inner p {\n  font-size: 16px;\n  line-height: 30px\n}\n\n.li,\n.inner__strip--editor li,\n.standard-content__inner li {\n  font-size: 16px;\n  line-height: 30px;\n  display: flex;\n  align-items: center\n}\n\n.li--bullets:before,\n.standard-content__inner ul li:before {\n  content: \"\";\n  width: 5px;\n  height: 5px;\n  border-radius: 50%;\n  background: #d40f7d;\n  margin-right: 32px\n}\n\n.caption,\n.inner__strip--editor caption,\n.inner__strip--editor figcaption,\n.standard-content__inner caption {\n  font-size: 14px;\n  color: #9b9b9b;\n  line-height: 17px\n}\n\n.caption--italic {\n  font-style: italic\n}\n\n.a,\n.standard-content__inner a:not(.button):not(.search-popup__submit):not(.search-input__input) {\n  color: #d40f7d;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  position: relative;\n  background: transparent;\n  padding: 0\n}\n\n.a:after,\n.standard-content__inner a:not(.button):not(.search-popup__submit):not(.search-input__input):after {\n  content: \"\";\n  position: absolute;\n  left: 0;\n  bottom: -3px;\n  height: 1px;\n  width: 100%;\n  background: #d40f7d;\n  transition: .2s ease;\n  transition-property: transform\n}\n\n.a:hover:after,\n.standard-content__inner a:hover:not(.button):not(.search-popup__submit):not(.search-input__input):after {\n  transform: translateY(-1px)\n}\n\n.li,\n.inner__strip--editor li,\n.standard-content__inner li {\n  font-size: 16px;\n  line-height: 30px;\n  margin-bottom: 10px;\n  padding-left: 25px;\n  position: relative;\n  list-style: none\n}\n\n.text-white {\n  color: #fff\n}\n\n.text-black {\n  color: #000\n}\n\n.text-pink {\n  color: #d40f7d\n}\n\n.text-center {\n  text-align: center\n}\n\n.label,\n.dropdown-card__label {\n  font-size: 10px;\n  line-height: 12px;\n  color: #d40f7d;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  padding-left: 8px\n}\n\n.skin {\n  background: #171616;\n  padding: 10px;\n  margin-top: 20px;\n  margin-bottom: 20px;\n  color: #fff\n}\n\n.skin__link {\n  color: #fff\n}\n\n.skin__colour {\n  background-clip: content-box;\n  width: 100px;\n  height: 100px;\n  display: block;\n  border: 1px solid #000;\n  padding: 10px;\n  margin-top: 10px;\n  margin-bottom: 10px\n}\n\n.skin__background {\n  display: inline-flex;\n  padding: 5px\n}\n\n.skin__background--dark {\n  background: #000\n}\n\n.styleguide {\n  color: #000;\n  background: #fff;\n  padding-top: 30px;\n  padding-bottom: 30px;\n  margin-top: 200px\n}\n\n.fifty-fifty {\n  width: 100%;\n  position: relative;\n  z-index: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .fifty-fifty {\n    display: flex;\n    margin: 0 -20px;\n    width: calc(100% + 40px);\n    align-items: flex-start;\n    justify-content: center\n  }\n\n  .fifty-fifty--vertically-centered {\n    align-items: center\n  }\n\n  .fifty-fifty--stretched {\n    align-items: stretch\n  }\n}\n\n.fifty-fifty__child {\n  min-width: 0;\n  width: 100%;\n  padding: 0 0 40px 0;\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .fifty-fifty__child {\n    width: 50%;\n    padding: 0;\n    margin: 20px\n  }\n\n  .fifty-fifty__child:last-of-type {\n    margin: 20px\n  }\n}\n\n.fifty-fifty__child--flex-center {\n  display: flex;\n  align-items: center;\n  justify-content: center\n}\n\n.fifty-fifty__child--full-height {\n  height: 100%\n}\n\n.fifty-fifty__child--no-margin {\n  margin: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .fifty-fifty__child--no-margin {\n    margin: 0\n  }\n\n  .fifty-fifty__child--no-margin:last-of-type {\n    margin: 0\n  }\n}\n\n.fifty-fifty__picture {\n  width: 100%;\n  height: 100%;\n  display: block;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 1024px) {\n  .fifty-fifty__picture {\n    margin-top: -50px\n  }\n}\n\n@media only screen and (min-width: 1360px) {\n  .fifty-fifty__picture {\n    margin-left: 80px\n  }\n}\n\n.fifty-fifty__picture-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n@media only screen and (min-width: 1024px) {\n  .fifty-fifty__content {\n    max-width: 480px;\n    padding-right: 40px\n  }\n}\n\n.fifty-fifty__paragraph,\n.fifty-fifty__item {\n  font-size: 16px;\n  line-height: 30px;\n  font-weight: 300\n}\n\n.fifty-fifty__ctas {\n  margin-top: 40px;\n  text-align: center\n}\n\n@media only screen and (min-width: 768px) {\n  .fifty-fifty__ctas {\n    text-align: left\n  }\n}\n\n.fifty-fifty__ctas--centred {\n  text-align: center\n}\n\n@media only screen and (min-width: 1180px) {\n  .fifty-fifty__list {\n    margin-left: 50px\n  }\n}\n\n.fifty-fifty__item {\n  border-top: 1px solid #4a4a4a;\n  padding: 15px 0\n}\n\n.fifty-fifty__item:last-of-type {\n  border-bottom: 1px solid #4a4a4a\n}\n\n@media only screen and (min-width: 1024px) {\n  .fifty-fifty--revert {\n    flex-direction: row-reverse\n  }\n\n  .fifty-fifty--revert .fifty-fifty__picture {\n    margin-left: -80px\n  }\n\n  .fifty-fifty--revert .fifty-fifty__content {\n    padding-right: 0;\n    padding-left: 40px\n  }\n\n  .fifty-fifty--revert .fifty-fifty__list {\n    margin-right: 50px;\n    margin-left: 0\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .fifty-fifty--revert .fifty-fifty__content {\n    margin-left: 60px\n  }\n}\n\n.page-strip {\n  width: 100%;\n  position: relative;\n  z-index: 0;\n  color: #000;\n  background-color: #fff;\n  margin-top: 0;\n  margin-bottom: 0;\n  padding: 40px 0\n}\n\n.page-strip:before,\n.page-strip .page-strip__curve:before {\n  background-color: #fff\n}\n\n@media only screen and (min-width: 1024px) {\n  .page-strip {\n    padding: 80px 0\n  }\n}\n\n.page-strip__background-image {\n  width: 100%;\n  display: flex;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.page-strip--grey {\n  background-color: #ececec;\n  color: #000\n}\n\n.page-strip--grey+.page-strip--grey {\n  padding-top: 0\n}\n\n.page-strip--charcoal {\n  background-color: #1b1a1a;\n  color: #fff\n}\n\n.page-strip--charcoal+.page-strip--charcoal {\n  padding-top: 0\n}\n\n.page-strip--no-space {\n  padding: 0;\n  margin: 0\n}\n\n.page-strip--on-top {\n  z-index: 2\n}\n\n.page-strip--inner:last-child {\n  margin-bottom: 0;\n  padding-bottom: 40px\n}\n\n@media only screen and (min-width: 1024px) {\n  .page-strip--inner:last-child {\n    padding-bottom: 80px\n  }\n}\n\n.page-strip:not(.page-strip--charcoal):not(.page-strip--grey):not(.page-strip--has-background-image)+.page-strip:not(.page-strip--charcoal):not(.page-strip--grey):not(.page-strip--has-background-image) {\n  padding-top: 0\n}\n\n.page-strip--has-background-image {\n  padding: 0\n}\n\n.page-strip--has-background-image:last-child {\n  padding: 0\n}\n\n.section {\n  margin: 30px auto;\n  max-width: 90vw\n}\n\n.section--on-top {\n  position: relative;\n  z-index: 1\n}\n\n@media only screen and (min-width: 1024px) {\n  .section {\n    margin: 30px auto\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--less-space {\n    margin-top: 40px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--extended-bottom-space {\n    margin-bottom: 180px\n  }\n}\n\n.section--no-space-above {\n  margin-top: 0\n}\n\n.section--no-space-below {\n  margin-bottom: 0\n}\n\n.section--light {\n  background: #fff;\n  color: #000;\n  padding: 40px 0;\n  margin: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--light {\n    padding: 90px 0\n  }\n}\n\n.section--dark-grey {\n  background: #171616\n}\n\n.section--darkest-grey {\n  background: #0a0a0a\n}\n\n.section--dark-grey,\n.section--darkest-grey {\n  margin: 0;\n  padding: 40px 0\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .section--dark-grey,\n  .section--darkest-grey {\n    padding: 90px 0\n  }\n}\n\n.section--split-top {\n  margin-top: 0;\n  padding-top: 40px;\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--split-top {\n    padding-top: 90px\n  }\n}\n\n.section--split-top:before {\n  content: \"\";\n  position: absolute;\n  top: 0;\n  left: 0;\n  height: calc(50% + 20px);\n  background: #171616;\n  display: block;\n  width: 100%\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--split-top:before {\n    height: calc(50% + 45px)\n  }\n}\n\n.section--split-bottom {\n  margin-bottom: 0;\n  padding-bottom: 40px;\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--split-bottom {\n    padding-bottom: 90px\n  }\n}\n\n.section--split-bottom:before {\n  content: \"\";\n  position: absolute;\n  bottom: 0;\n  left: 0;\n  height: calc(50% + 20px);\n  background: #171616;\n  display: block;\n  width: 100%\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--split-bottom:before {\n    height: calc(50% + 45px)\n  }\n}\n\n.section--dark-grey+.section--split-top {\n  padding-top: 0\n}\n\n.section--dark-grey+.section--split-top:before {\n  height: 50%\n}\n\n.section--light+.section--light {\n  padding-top: 0\n}\n\n.section--split-bottom+.section--dark-grey {\n  padding-top: 0\n}\n\n.section--logos {\n  padding: 80px 0 50px\n}\n\n.section--no-padding {\n  margin: 0\n}\n\n.section--top-page {\n  padding: 40px 0;\n  margin: 0;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--top-page {\n    padding: 90px 0\n  }\n}\n\n.section--top-page-alt {\n  padding: 40px 0;\n  margin: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--top-page-alt {\n    padding: 80px 0 100px\n  }\n}\n\n.section:last-of-type {\n  margin-bottom: 0\n}\n\n.section--padding-top {\n  padding-top: 105px\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--padding-top {\n    padding-top: 235px\n  }\n}\n\n.section--increased-margin {\n  margin: 40px 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .section--increased-margin {\n    margin: 120px 0\n  }\n}\n\n.section--no-space {\n  padding: 0;\n  margin: 0\n}\n\n.wrapper {\n  margin-left: auto;\n  margin-right: auto;\n  width: 100%;\n  max-width: 1180px;\n  padding: 0 15px\n}\n\n@media only screen and (min-width: 768px) {\n  .wrapper {\n    padding: 0 25px;\n    overflow: visible\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .wrapper {\n    padding: 0 30px\n  }\n}\n\n.wrapper--full-width {\n  max-width: none;\n  padding: 0\n}\n\n.wrapper--full-width-mobile {\n  padding-left: 0;\n  padding-right: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .wrapper--full-width-mobile {\n    padding-left: 30px;\n    padding-right: 30px\n  }\n}\n\n.wrapper--flex {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 1024px) {\n  .wrapper--flex {\n    flex-direction: row\n  }\n}\n\n.wrapper--flex-row-tablet {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .wrapper--flex-row-tablet {\n    flex-direction: row\n  }\n}\n\n.wrapper--even {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .wrapper--even {\n    flex-direction: row;\n    justify-content: space-between\n  }\n}\n\n.wrapper--expanded {\n  max-width: 1270px\n}\n\n.wrapper--wide {\n  max-width: 1360px\n}\n\n.wrapper--widest {\n  max-width: 1600px\n}\n\n.wrapper--narrow {\n  max-width: 960px\n}\n\n.wrapper--small {\n  max-width: 1075px\n}\n\n.wrapper__col {\n  display: flex;\n  flex-direction: column;\n  justify-content: center;\n  align-items: center;\n  flex: 0 0 44%\n}\n\n.wrapper__col:first-child {\n  align-items: flex-start\n}\n\n@media only screen and (min-width: 768px) {\n  .wrapper__col:first-child {\n    flex: 0 0 15%\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .wrapper__col:first-child {\n    flex: 0 0 28%\n  }\n}\n\n.wrapper__col:last-child {\n  align-items: flex-end;\n  flex: 0 0 28%\n}\n\n.footer {\n  background: #000;\n  padding-top: 105px\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer {\n    padding-top: 120px\n  }\n}\n\n.footer__row {\n  display: flex;\n  justify-content: space-between;\n  align-items: center;\n  flex-wrap: wrap\n}\n\n.footer__row>div:nth-child(1) {\n  flex: 0 50%\n}\n\n.footer__row>div:nth-child(2) {\n  flex: 0 50%;\n  display: flex;\n  justify-content: flex-end\n}\n\n.footer__row>div:nth-child(3) {\n  flex: 0 100%;\n  display: flex;\n  justify-content: center;\n  margin: 40px 0 34px 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__row>div:nth-child(1) {\n    flex: 1\n  }\n\n  .footer__row>div:nth-child(2) {\n    flex: 1;\n    order: 3\n  }\n\n  .footer__row>div:nth-child(3) {\n    flex: 1;\n    order: 2;\n    margin: 0\n  }\n}\n\n.footer__logo:nth-child(1) img {\n  width: 68px\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__logo:nth-child(1) img {\n    width: 120px\n  }\n}\n\n.footer__logo:nth-child(2) img {\n  width: 94.76px\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__logo:nth-child(2) img {\n    width: 142.14px\n  }\n}\n\n.footer__social-list {\n  display: flex\n}\n\n.footer__social-item {\n  margin: 0 5px\n}\n\n.footer__social-link {\n  color: #fff;\n  font-size: 14px;\n  line-height: 1em;\n  padding: 5px\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__social-link {\n    transform-origin: center center;\n    display: inline-flex;\n    transition: .2s ease;\n    -webkit-backface-visibility: hidden;\n    backface-visibility: hidden\n  }\n\n  .footer__social-link:hover {\n    transform: scale(1.15)\n  }\n}\n\n.footer__nav {\n  margin-top: 0;\n  width: 100%;\n  display: flex;\n  flex-direction: column;\n  padding: 0 38px\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__nav {\n    margin-top: 100px;\n    margin-bottom: 135px;\n    justify-content: space-between;\n    flex-direction: row;\n    padding: 0 100px\n  }\n}\n\n.footer__links>* {\n  padding-bottom: 15px\n}\n\n.footer__parent {\n  font-size: 18px;\n  color: #fff;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  display: flex;\n  justify-content: space-between;\n  align-items: center;\n  padding-bottom: 5px\n}\n\n.footer__parent--active {\n  color: #d40f7d\n}\n\n.footer__parent--active .footer__dropdown-icon {\n  transform: rotate(-180deg)\n}\n\n.footer i.footer__dropdown-icon {\n  color: #d40f7d;\n  font-size: 8px\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer i.footer__dropdown-icon {\n    display: none\n  }\n}\n\n.footer__dropdown {\n  display: flex;\n  max-height: 0;\n  overflow: hidden;\n  transition: .3s ease;\n  transition-property: max-height\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__dropdown {\n    display: flex;\n    max-height: none\n  }\n}\n\n.footer__dropdown--visible {\n  display: block\n}\n\n.footer__item {\n  margin-bottom: 4px\n}\n\n.footer__dropdown-link {\n  font-size: 16px;\n  line-height: 22px;\n  color: #9b9b9b;\n  padding: 5px 0;\n  display: flex\n}\n\n.footer__dropdown-link:hover,\n.footer__dropdown-link:active,\n.footer__dropdown-link:focus {\n  color: #fff\n}\n\n.footer__bottom {\n  display: flex;\n  justify-content: space-between;\n  margin-top: 45px;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__bottom {\n    flex-direction: row\n  }\n}\n\n.footer__col {\n  font-size: 12px;\n  flex: 1;\n  display: flex\n}\n\n.footer__col:nth-child(1) {\n  justify-content: center\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__col:nth-child(1) {\n    justify-content: flex-start\n  }\n}\n\n.footer__col:nth-child(2) {\n  justify-content: center;\n  padding: 30px 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__col:nth-child(2) {\n    padding: 0\n  }\n}\n\n.footer__col:nth-child(3) {\n  justify-content: center\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__col:nth-child(3) {\n    justify-content: flex-end\n  }\n}\n\n.footer__col a {\n  text-decoration: none;\n  color: #fff\n}\n\n.footer__copyright {\n  max-width: 230px;\n  text-align: center\n}\n\n@media only screen and (min-width: 1024px) {\n  .footer__copyright {\n    max-width: none\n  }\n}\n\n.footer__button {\n  background: #d40f7d;\n  width: 40px;\n  height: 40px;\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  color: #fff;\n  margin-left: 30px\n}\n\n.footer__button:hover,\n.footer__button:active,\n.footer__button:focus {\n  background: #fff;\n  color: #d40f7d;\n  outline: none\n}\n\n.footer__button-icon {\n  font-size: 13px;\n  margin-bottom: -3px\n}\n\n.header {\n  display: block;\n  color: #fff;\n  padding: 16px 0;\n  background: transparent;\n  position: relative;\n  left: 0;\n  top: 0;\n  width: 100%;\n  margin-right: -30px;\n  margin-bottom: 20px;\n  z-index: 4\n}\n\n@media only screen and (min-width: 1024px) {\n  .header {\n    padding: 30px 0\n  }\n}\n\n.header__logo {\n  width: 68px;\n  height: 40px\n}\n\n.header__logo-link {\n  color: inherit\n}\n\n.header__logo-color {\n  fill: currentColor\n}\n\n@media only screen and (min-width: 768px) {\n  .header__logo {\n    width: 95px;\n    height: 55px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__logo {\n    width: 120px;\n    height: 71px\n  }\n}\n\n.header__wrapper {\n  display: flex;\n  justify-content: space-between;\n  align-items: center;\n  opacity: 0\n}\n\n.header__triggers {\n  display: flex;\n  align-items: center\n}\n\n.header__list {\n  display: none\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__list {\n    display: flex\n  }\n}\n\n.header__nav {\n  height: 55px;\n  display: none;\n  transition: .3s ease;\n  transition-property: opacity, transform\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__nav {\n    display: flex\n  }\n}\n\n.header__social {\n  display: none;\n  border-right: 1px solid #2b2b2b;\n  border-left: 1px solid #2b2b2b;\n  height: 55px;\n  align-items: center;\n  padding: 0 20px;\n  transition: .3s ease;\n  transition-property: opacity, transform\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__social {\n    display: flex\n  }\n}\n\n.header__social-item {\n  margin: 0 5px\n}\n\n.header__social-link {\n  color: inherit;\n  padding: 5px 5px;\n  line-height: 1em;\n  font-size: 14px\n}\n\n.header__social-link--twitter {\n  font-size: 12px\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__social-link {\n    transition: .2s ease;\n    transition-property: transform;\n    -webkit-backface-visibility: hidden;\n    backface-visibility: hidden\n  }\n\n  .header__social-link:hover {\n    transform: scale(1.15);\n    display: inline-flex\n  }\n}\n\n.header__link,\n.header__search-button,\n.header__menu-button {\n  color: inherit;\n  background: transparent;\n  height: 45px\n}\n\n.header__link:focus,\n.header__search-button:focus,\n.header__menu-button:focus {\n  outline: none\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .header__link,\n  .header__search-button,\n  .header__menu-button {\n    height: 55px\n  }\n}\n\n.header__list {\n  padding-right: 12.5px;\n  border-right: 1px solid #2b2b2b\n}\n\n.header__link {\n  margin: 0 22px;\n  padding: 14px 0;\n  display: flex;\n  position: relative;\n  text-shadow: 0 0 1px transparent;\n  transition: .2s ease;\n  transition-property: text-shadow\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__link {\n    margin: 0 17px\n  }\n\n  .header__link:after {\n    content: \"\";\n    position: absolute;\n    width: 100%;\n    height: 1px;\n    background: #d40f7d;\n    left: 0;\n    bottom: 0;\n    transform-origin: right;\n    transition: .2s ease;\n    transition-property: transform;\n    transform: scaleX(0)\n  }\n\n  .header__link:hover {\n    text-shadow: 0 0 1px #fff\n  }\n\n  .header__link:hover:after {\n    transform-origin: left;\n    transform: scaleX(1)\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .header__link {\n    margin: 0 22px\n  }\n}\n\n.header__search-button {\n  font-size: 18px;\n  line-height: 1em;\n  padding: 0 15px;\n  transition: .3s ease;\n  transition-property: opacity, transform\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__search-button {\n    margin: 0 25px;\n    padding: 5px;\n    transform-origin: center center;\n    transition: .2s ease;\n    -webkit-backface-visibility: hidden;\n    backface-visibility: hidden\n  }\n\n  .header__search-button:hover {\n    transform: scale(1.15)\n  }\n}\n\n.header__menu-button {\n  padding: 0 15px;\n  transition: .3s ease;\n  transition-property: opacity, transform\n}\n\n@media only screen and (min-width: 1024px) {\n  .header__menu-button {\n    padding: 0 30px;\n    transition: .2s ease;\n    transition-property: transform;\n    -webkit-backface-visibility: hidden;\n    backface-visibility: hidden\n  }\n\n  .header__menu-button:hover {\n    transform: scale(1.15);\n    display: inline-flex\n  }\n}\n\n.header--dark {\n  color: #000\n}\n\n.header--menu-open .header__nav,\n.header--menu-open .header__search-button {\n  opacity: 0\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .header--menu-open .header__nav,\n  .header--menu-open .header__search-button {\n    transform: translateY(-20px)\n  }\n}\n\n.header--search-open {\n  pointer-events: none\n}\n\n.header--search-open .header__nav,\n.header--search-open .header__search-button,\n.header--search-open .header__menu-button,\n.header--search-open .header__social {\n  opacity: 0;\n  pointer-events: none\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .header--search-open .header__nav,\n  .header--search-open .header__search-button,\n  .header--search-open .header__menu-button,\n  .header--search-open .header__social {\n    transform: translateY(-20px)\n  }\n}\n\n.header--overlay {\n  position: absolute;\n  margin-bottom: 0\n}\n\n.mega-menu {\n  position: fixed;\n  top: 0;\n  left: 0;\n  z-index: 3;\n  width: 100%;\n  height: 100vh;\n  background: #000;\n  color: #fff;\n  display: flex;\n  opacity: 0;\n  pointer-events: none;\n  transition: .3s ease;\n  transition-property: opacity;\n  padding-top: 80px\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu {\n    padding-top: 0;\n    min-height: 720px\n  }\n}\n\n.mega-menu--open {\n  opacity: 1;\n  pointer-events: auto\n}\n\n.mega-menu--open .mega-menu__image:after {\n  transform: scaleX(0);\n  transition: .7s ease;\n  transition-property: transform\n}\n\n.mega-menu--open .mega-menu__links,\n.mega-menu--open .mega-menu__featured {\n  transform: none;\n  opacity: 1;\n  transition: .5s ease;\n  transition-property: opacity, transform;\n  transition-delay: .2s\n}\n\n.mega-menu--opening .mega-menu__image:after {\n  transform: scaleX(0);\n  transition: .7s ease;\n  transition-property: transform;\n  transition-delay: .6s\n}\n\n.mega-menu--changing .mega-menu__image:after {\n  transform: scaleX(1);\n  transition: .7s ease;\n  transition-property: transform;\n  transition-delay: 0s\n}\n\n.mega-menu__col {\n  display: flex;\n  flex-direction: column;\n  padding: 30px 53px 30px;\n  overflow: auto;\n  height: calc(100% - 83px)\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__col {\n    flex: 0 0 50%;\n    justify-content: center;\n    padding: 0;\n    height: auto\n  }\n}\n\n.mega-menu__col:first-child {\n  width: 100%\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__col:first-child {\n    width: auto;\n    align-items: flex-end\n  }\n}\n\n.mega-menu__col:last-child {\n  position: relative;\n  display: none\n}\n\n.mega-menu__col:last-child:before {\n  content: \"\";\n  position: absolute;\n  left: 0;\n  top: 0;\n  width: 100%;\n  height: 225px;\n  background: linear-gradient(to bottom, #000000 0%, transparent 100%);\n  z-index: 1\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__col:last-child {\n    display: flex\n  }\n}\n\n.mega-menu__links {\n  display: flex;\n  flex-direction: column;\n  transform: translateY(60px);\n  opacity: 0;\n  transition-delay: .3s\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__links {\n    width: 560px;\n    max-width: calc(100% - 30px);\n    max-height: 490px;\n    flex-wrap: wrap;\n    transform: translateX(-60px)\n  }\n}\n\n.mega-menu__image {\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  visibility: hidden\n}\n\n.mega-menu__image--active {\n  visibility: visible\n}\n\n.mega-menu__image-source {\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover;\n  width: 100%;\n  height: 100%\n}\n\n.mega-menu__image:after {\n  content: \"\";\n  position: absolute;\n  left: 0;\n  top: 0;\n  width: 100%;\n  height: 100%;\n  background: #000;\n  transform: scaleX(1);\n  transform-origin: left;\n  transition-delay: .3s\n}\n\n.mega-menu__inner {\n  padding-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__inner {\n    width: 50%;\n    padding-right: 20px\n  }\n}\n\n.mega-menu__link {\n  color: inherit;\n  transition: .2s ease;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  text-shadow: 0 0 1px transparent;\n  transition-property: color, font-family, text-shadow;\n  padding: 5px 0;\n  display: flex;\n  font-size: 16px;\n  line-height: 22px\n}\n\n.mega-menu__link:hover {\n  color: #d40f7d\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__link {\n    padding: 0\n  }\n}\n\n.mega-menu__parent {\n  font-size: 18px;\n  color: inherit;\n  transition: .2s ease;\n  transition-property: color;\n  display: flex;\n  justify-content: space-between;\n  align-items: center;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  padding-bottom: 5px\n}\n\n.mega-menu__parent--active {\n  color: #d40f7d\n}\n\n.mega-menu__parent--active .mega-menu__icon {\n  transform: rotate(180deg)\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__parent {\n    font-size: 22px;\n    line-height: 26px;\n    font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n    margin-bottom: 17px;\n    padding-bottom: 0\n  }\n\n  .mega-menu__parent:hover {\n    color: #d40f7d\n  }\n}\n\n.mega-menu__dropdown {\n  max-height: 0;\n  overflow: hidden;\n  transition: .3s ease;\n  transition-property: max-height\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__dropdown {\n    max-height: none\n  }\n}\n\n.mega-menu__item {\n  margin-bottom: 4px;\n  color: #9b9b9b\n}\n\n.mega-menu__item:last-child {\n  margin-bottom: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__item:last-child {\n    margin-bottom: 15px\n  }\n}\n\n.mega-menu__item .mega-menu__link {\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.mega-menu__item .mega-menu__link:hover {\n  color: #fff;\n  text-shadow: 0 0 1px #fff\n}\n\n.mega-menu i.mega-menu__icon {\n  font-size: 8px;\n  line-height: 1em;\n  color: #d40f7d\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu i.mega-menu__icon {\n    display: none\n  }\n}\n\n.mega-menu__featured {\n  transform: translateY(60px);\n  opacity: 0;\n  transition-delay: .3s\n}\n\n.mega-menu__featured-title {\n  font-size: 16px;\n  line-height: 26px;\n  margin-bottom: 20px\n}\n\n.mega-menu__featured-heading {\n  margin-bottom: 5px;\n  margin-left: -10px;\n  margin-right: -10px\n}\n\n.mega-menu__featured-link {\n  color: #fff\n}\n\n.mega-menu__featured-sub-heading {\n  font-size: 14px;\n  line-height: 17px;\n  color: #9b9b9b;\n  margin-left: -10px;\n  margin-right: -10px;\n  margin-bottom: 20px\n}\n\n.mega-menu__featured-ctas {\n  margin-bottom: 35px;\n  margin-left: -10px;\n  margin-right: -10px\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__featured {\n    display: none\n  }\n}\n\n.mega-menu__social {\n  display: flex;\n  position: fixed;\n  bottom: 0;\n  z-index: 1;\n  width: 100%;\n  left: 0;\n  justify-content: center;\n  background: #000;\n  padding: 30px 10px;\n  min-height: 83px\n}\n\n@media only screen and (min-width: 1024px) {\n  .mega-menu__social {\n    display: none\n  }\n}\n\n.mega-menu__social-list {\n  display: flex\n}\n\n.mega-menu__social-item {\n  margin: 0 5px\n}\n\n.mega-menu__social-link {\n  padding: 5px;\n  font-size: 14px;\n  line-height: 1em;\n  color: currentColor\n}\n\n.sidebar {\n  display: flex;\n  width: 100%;\n  flex-wrap: wrap\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar {\n    padding: 0 30px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar--plain {\n    padding: 0\n  }\n}\n\n.sidebar__sidebar {\n  position: relative;\n  width: 100%;\n  padding: 0 15px;\n  display: none\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar__sidebar {\n    display: block;\n    padding: 0;\n    width: 250px;\n    margin-left: 94px\n  }\n}\n\n.sidebar__content {\n  width: 100%\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar__content {\n    width: calc(100% - 250px - 94px)\n  }\n}\n\n.sidebar__col {\n  padding-top: 20px;\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar__col {\n    margin-bottom: 40px\n  }\n}\n\n.sidebar__container {\n  background-color: #ececec;\n  padding: 49px 0 46px 41px;\n  border-radius: 24px 0 0 24px;\n  position: relative;\n  z-index: 0\n}\n\n.sidebar__container:before {\n  position: absolute;\n  content: \"\";\n  background-color: #ececec;\n  border-radius: 24px 0 0 24px;\n  left: 0;\n  top: 0;\n  width: 100vw;\n  height: 100%;\n  z-index: -1;\n  pointer-events: none\n}\n\n.sidebar__list-item {\n  margin-bottom: 10px\n}\n\n.sidebar__list-link {\n  font-size: 16px;\n  line-height: 30px;\n  color: #000;\n  display: block;\n  transform-origin: left center;\n  transition: transform .3s ease, text-shadow .3s ease;\n  position: relative\n}\n\n.sidebar__list-link:before {\n  content: \"\";\n  background: #d40f7d;\n  height: 1px;\n  width: 18px;\n  position: absolute;\n  top: 50%;\n  left: -25px;\n  opacity: 0;\n  transition: opacity .3s ease\n}\n\n.sidebar__list-link:hover,\n.sidebar__list-link.active {\n  transform: translateX(10px) scale(1.125);\n  text-shadow: 0 0 1px #000\n}\n\n.sidebar__list-link:hover:before,\n.sidebar__list-link.active:before {\n  opacity: 1\n}\n\n.sidebar__title {\n  font-size: 14px;\n  line-height: 17px;\n  margin-bottom: 22px;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.hamburger {\n  position: relative;\n  display: inline-block;\n  width: 21px;\n  height: 14px\n}\n\n.hamburger__bar,\n.hamburger__bar:before,\n.hamburger__bar:after {\n  position: absolute;\n  width: 100%;\n  height: 2px;\n  border-radius: 2px;\n  transition-timing-function: ease;\n  transition-duration: .15s;\n  transition-property: transform, background-color;\n  background-color: currentColor\n}\n\n.hamburger__bar {\n  top: 50%;\n  display: block;\n  margin-top: -2px;\n  transition: .1s ease\n}\n\n.hamburger__bar:before,\n.hamburger__bar:after {\n  display: block;\n  content: \"\"\n}\n\n.hamburger__bar:before {\n  top: -6px;\n  transition: .1s ease;\n  transition-property: top, opacity, background-color\n}\n\n.hamburger__bar:after {\n  max-width: 17px;\n  bottom: -6px;\n  transition: .1s ease;\n  transition-property: bottom, opacity, max-width, background-color\n}\n\n.hamburger--expanded .hamburger__bar {\n  transition: .1s ease;\n  transition-delay: .12s;\n  transform: rotate(45deg)\n}\n\n.hamburger--expanded .hamburger__bar:before {\n  top: 0;\n  opacity: 0;\n  transition: .1s ease;\n  transition-property: top, opacity;\n  transition-delay: .12s\n}\n\n.hamburger--expanded .hamburger__bar:after {\n  bottom: 0;\n  max-width: 100%;\n  transform: rotate(-90deg);\n  transition: .1s ease;\n  transition-property: bottom, transform, max-width;\n  transition-delay: .12s\n}\n\n.paging-info {\n  position: absolute;\n  display: block;\n  left: 0;\n  right: 0;\n  bottom: 0;\n  margin: 0 auto;\n  text-align: center;\n  background: #fff;\n  max-width: 192px;\n  z-index: 1;\n  box-shadow: 0 0 15px 0 rgba(0, 0, 0, .1)\n}\n\n.paging-info--has-arrows {\n  display: flex\n}\n\n.paging-info:before {\n  position: absolute;\n  content: \"\";\n  display: block;\n  left: 0;\n  text-align: center;\n  right: 0;\n  height: 20px;\n  width: 1px;\n  background-color: rgba(142, 142, 149, .1);\n  margin: 0 auto;\n  top: 14px;\n  z-index: 2\n}\n\n.paging-info__current-slide,\n.paging-info__total-slides {\n  background: #fff;\n  position: relative;\n  display: inline-block;\n  height: 48px;\n  line-height: 48px;\n  width: 48px;\n  font-size: 1rem\n}\n\n.paging-info__current-slide {\n  color: #fff;\n  letter-spacing: 0\n}\n\n.paging-info__total-slides {\n  color: #fff;\n  letter-spacing: 0\n}\n\n.paging-info__arrow {\n  position: relative;\n  bottom: 0\n}\n\n.slider__hover-slide {\n  transition: opacity .3s ease\n}\n\n.slider__hover-slide--focus-out {\n  opacity: .3\n}\n\n.slider__hover-slide--focus-in {\n  opacity: 1\n}\n\n.hero-carousel {\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-carousel__slides {\n  position: relative;\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-carousel__slide {\n  display: none;\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-carousel__slide--visible {\n  display: block\n}\n\n.hero-carousel__transition-overlay {\n  position: absolute;\n  top: 0;\n  left: 0;\n  bottom: -200px;\n  right: 0;\n  background: #000;\n  z-index: 1;\n  transform: scaleX(0);\n  transform-origin: 0 50%\n}\n\n.hero-carousel__controls {\n  position: absolute;\n  left: 50%;\n  z-index: 1;\n  display: flex;\n  justify-content: flex-end;\n  align-items: flex-end;\n  pointer-events: none;\n  bottom: 74px;\n  transform: translateX(-50%)\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-carousel__controls {\n    bottom: 80px\n  }\n}\n\n.hero-carousel__arrows {\n  display: flex;\n  pointer-events: auto\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-carousel__arrows {\n    margin-right: 60px\n  }\n}\n\n.hero-carousel__right-arrow {\n  opacity: 0\n}\n\n.hero-carousel__left-arrow {\n  margin-right: 20px;\n  display: none;\n  opacity: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-carousel__left-arrow {\n    display: flex\n  }\n}\n\n.slider-category {\n  position: absolute;\n  left: 50%;\n  bottom: 50px;\n  width: 100%;\n  text-align: center;\n  transform: translate(-50%, -50%);\n  z-index: 1;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  pointer-events: none;\n  transition: .3s ease;\n  transition-property: opacity\n}\n\n.slider-category--hidden {\n  opacity: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .slider-category {\n    bottom: auto;\n    top: 50%;\n    transform: translate(-50%, calc(-50% - 60px))\n  }\n}\n\n.slider-category__heading {\n  font-size: 26px;\n  line-height: 1em;\n  height: 28px;\n  overflow: hidden;\n  display: block;\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .slider-category__heading {\n    font-size: 52px;\n    line-height: 1em;\n    height: 56px\n  }\n}\n\n.slider-category__item {\n  position: absolute;\n  left: 50%;\n  transform: translate(-50%, 100%);\n  transition: .7s ease;\n  transition-property: transform\n}\n\n@media only screen and (min-width: 1024px) {\n  .slider-category__item {\n    text-shadow: 0 0 7px rgba(0, 0, 0, .3)\n  }\n}\n\n.slider-category__item--active {\n  left: 50%;\n  transform: translate(-50%, 0)\n}\n\n.slider-category__item--move-active {\n  transform: translate(-50%, -100%)\n}\n\n.heading-slide,\n.top-heading,\n.modal__heading {\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide,\n  .top-heading,\n  .modal__heading {\n    min-height: 200px;\n    display: flex;\n    align-items: center\n  }\n}\n\n.heading-slide__inner,\n.top-heading__inner {\n  width: 100%;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide__inner,\n  .top-heading__inner {\n    position: absolute\n  }\n}\n\n.heading-slide__heading,\n.top-heading__heading,\n.modal__heading-slide {\n  font-size: 16.25vw;\n  line-height: 1.2em;\n  margin-bottom: 0;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  color: #0f0f0f;\n  transform: translateX(50%);\n  width: 100%;\n  text-align: center;\n  transition: .2s ease;\n  transition-property: transform;\n  white-space: nowrap\n}\n\n.heading-slide__heading--dark {\n  color: #121111\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide__heading,\n  .top-heading__heading,\n  .modal__heading-slide {\n    font-size: 160px\n  }\n}\n\n.heading-slide__wrapper,\n.top-heading__wrapper,\n.modal__heading-wrapper {\n  position: relative;\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n\n  .heading-slide__wrapper,\n  .top-heading__wrapper,\n  .modal__heading-wrapper {\n    flex-direction: row;\n    justify-content: space-between;\n    align-items: center\n  }\n}\n\n.heading-slide__sub-heading,\n.top-heading__sub-heading,\n.modal__heading-sub {\n  margin-bottom: 20px;\n  overflow: hidden\n}\n\n.heading-slide__sub-heading-inner {\n  transform: translateY(100%);\n  display: flex;\n  transition: .3s ease;\n  transition-property: transform\n}\n\n.heading-slide__sub-heading--loaded .heading-slide__sub-heading-inner {\n  transform: none\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide__sub-heading,\n  .top-heading__sub-heading,\n  .modal__heading-sub {\n    margin-bottom: 0\n  }\n}\n\n.heading-slide__watcher {\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100vh;\n  pointer-events: none\n}\n\n.heading-slide__social {\n  display: flex;\n  align-items: center;\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide__social {\n    margin-bottom: 0\n  }\n}\n\n.heading-slide__social-item {\n  margin: 0 2px\n}\n\n@media only screen and (min-width: 768px) {\n  .heading-slide__social-item {\n    margin: 0 5px\n  }\n}\n\n.heading-slide__social-list {\n  flex: 1;\n  display: flex;\n  border-right: 1px solid #2b2b2b;\n  padding: 16px 30px 16px 0;\n  justify-content: space-between\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide__social-list {\n    padding: 16px 22px;\n    justify-content: normal\n  }\n}\n\n.heading-slide__social-link {\n  color: #fff;\n  font-size: 14px\n}\n\n@media only screen and (min-width: 768px) {\n  .heading-slide__social-link {\n    padding: 5px 5px;\n    line-height: 1em;\n    font-size: 14px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide__social-link {\n    transform-origin: center center;\n    display: inline-flex;\n    transition: .2s ease;\n    -webkit-backface-visibility: hidden;\n    backface-visibility: hidden\n  }\n\n  .heading-slide__social-link:hover {\n    transform: scale(1.15)\n  }\n}\n\n.heading-slide__social-tag {\n  flex: 1;\n  display: flex;\n  justify-content: center;\n  color: #fff;\n  font-size: 14px;\n  line-height: 17px;\n  padding-left: 30px\n}\n\n.heading-slide--banner .heading-slide__sub-heading,\n.heading-slide--banner .top-heading__sub-heading,\n.heading-slide--banner .modal__heading-sub {\n  font-size: 36px;\n  line-height: 48px\n}\n\n@media only screen and (min-width: 768px) {\n\n  .heading-slide--banner .heading-slide__sub-heading,\n  .heading-slide--banner .top-heading__sub-heading,\n  .heading-slide--banner .modal__heading-sub {\n    font-size: 52px;\n    line-height: 74px\n  }\n}\n\n.heading-slide--baseline {\n  min-height: 115px;\n  align-items: end\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide--revert {\n    padding-left: 30px;\n    margin-left: 50%\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .heading-slide--revert {\n    padding-left: 90px\n  }\n}\n\n.modal {\n  position: fixed;\n  top: 0;\n  left: 0;\n  right: 0;\n  bottom: 0;\n  pointer-events: none;\n  opacity: 0;\n  background: #000;\n  z-index: 6;\n  transition: .3s ease;\n  transition-property: opacity\n}\n\n.modal__background {\n  width: 100%;\n  height: 100%\n}\n\n.modal__dialog {\n  display: flex;\n  flex-direction: column;\n  height: 100%\n}\n\n.modal__content {\n  width: 100%;\n  position: relative;\n  overflow: auto;\n  display: flex;\n  flex-direction: column;\n  justify-content: flex-start;\n  flex: 1;\n  padding: 0 15px 85px\n}\n\n@media only screen and (min-width: 1024px) {\n  .modal__content {\n    justify-content: center;\n    padding-bottom: 0\n  }\n}\n\n.modal__video {\n  width: 800px;\n  max-width: 90%;\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%)\n}\n\n.modal__video-inner {\n  width: 100%;\n  position: relative;\n  padding-bottom: 56.25%;\n  height: 0;\n  overflow: hidden;\n  top: -46px\n}\n\n.modal__video iframe {\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%\n}\n\n.modal__heading {\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 768px) {\n  .modal__heading {\n    margin-bottom: 40px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .modal__heading {\n    margin-bottom: 0\n  }\n}\n\n.modal__heading-slide {\n  transition: 0s;\n  transition-delay: .4s\n}\n\n@media only screen and (min-width: 1024px) {\n  .modal__heading-slide {\n    position: absolute;\n    top: 0;\n    left: 0\n  }\n}\n\n.modal__heading-wrapper {\n  display: flex;\n  align-items: center;\n  flex-direction: row;\n  justify-content: space-between\n}\n\n.modal__heading-sub {\n  margin-bottom: 0\n}\n\n.modal__close {\n  width: 32px;\n  height: 32px;\n  background: transparent;\n  border: none;\n  color: #fff;\n  padding: 0\n}\n\n.modal__close-icon {\n  font-size: 16px;\n  line-height: 1em;\n  pointer-events: none\n}\n\n.modal__close:focus {\n  outline: none\n}\n\n.modal__reveal {\n  position: relative\n}\n\n.modal__top {\n  padding: 30px 0\n}\n\n.modal__top-wrapper {\n  display: flex;\n  justify-content: flex-end\n}\n\n.modal.is-open {\n  opacity: 1;\n  pointer-events: auto\n}\n\n.modal.is-open .modal__heading-slide {\n  transform: translateX(0);\n  transition: .7s ease;\n  transition-delay: 0s\n}\n\n.modal-clone__tab {\n  width: 100%\n}\n\n.modal-clone__tab:last-child {\n  display: none\n}\n\n.modal-clone--switch .modal-clone__tab:nth-child(2) {\n  display: none\n}\n\n.modal-clone--switch .modal-clone__tab:last-child {\n  display: block\n}\n\n.filter-modal__top-wrapper {\n  justify-content: space-between\n}\n\n.filter-modal__heading {\n  margin-bottom: 0\n}\n\n.filter-modal__content {\n  padding: 0\n}\n\n.play-button {\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  width: 62px;\n  height: 62px;\n  border-radius: 31px;\n  background: #fff;\n  padding: 0\n}\n\n.play-button__icon {\n  font-size: 18px;\n  color: #000;\n  position: relative;\n  z-index: 1;\n  margin-top: 3px;\n  margin-left: 6px\n}\n\n.play-button__ripple,\n.play-button:before,\n.play-button:after {\n  content: \"\";\n  position: absolute;\n  opacity: .5;\n  top: 0;\n  left: 0;\n  margin-left: -31px;\n  margin-top: -31px;\n  background: #fff;\n  border-radius: 100px;\n  width: 124px;\n  height: 124px;\n  transform: scale(0.5);\n  transition: .9s ease;\n  transition-property: opacity, transform\n}\n\n.play-button:before {\n  transition-delay: .2s\n}\n\n.play-button:after {\n  transition-delay: .4s\n}\n\n.play-button:hover .play-button__ripple,\n.play-button:hover:before,\n.play-button:hover:after {\n  transform: scale(1);\n  opacity: 0\n}\n\n.play-button:focus,\n.play-button:hover:focus {\n  outline: 0\n}\n\n.play-button:focus .play-button__ripple,\n.play-button:focus:before,\n.play-button:focus:after,\n.play-button:hover:focus .play-button__ripple,\n.play-button:hover:focus:before,\n.play-button:hover:focus:after {\n  transform: scale(0.5);\n  opacity: .5\n}\n\n.inline-ctas {\n  display: flex;\n  justify-content: space-between\n}\n\n@media only screen and (min-width: 1024px) {\n  .inline-ctas {\n    justify-content: flex-start\n  }\n}\n\n.inline-ctas__cta {\n  display: flex;\n  align-items: center;\n  font-size: 16px;\n  line-height: 18px\n}\n\n@media only screen and (min-width: 768px) {\n  .inline-ctas__cta {\n    margin-right: 55px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .inline-ctas__cta {\n    margin-right: 25px;\n    font-size: 14px\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .inline-ctas__cta {\n    margin-right: 55px;\n    font-size: 16px\n  }\n}\n\n.inline-ctas__cta:last-child {\n  margin-right: 0\n}\n\n.inline-ctas__cta .inline-ctas__arrow {\n  transition: .2s ease;\n  transition-property: transform\n}\n\n.inline-ctas__cta:hover .inline-ctas__arrow,\n.inline-ctas__cta:active .inline-ctas__arrow,\n.inline-ctas__cta:focus .inline-ctas__arrow {\n  transform: translateX(3px)\n}\n\n.inline-ctas__cta--icon-mobile .inline-ctas__arrow,\n.inline-ctas__cta--icon-mobile .inline-ctas__text {\n  display: none\n}\n\n@media only screen and (min-width: 768px) {\n\n  .inline-ctas__cta--icon-mobile .inline-ctas__arrow,\n  .inline-ctas__cta--icon-mobile .inline-ctas__text {\n    display: block\n  }\n}\n\n.inline-ctas__cta--icon-mobile .inline-ctas__icon {\n  margin: 0;\n  font-size: 25px\n}\n\n@media only screen and (min-width: 768px) {\n  .inline-ctas__cta--icon-mobile .inline-ctas__icon {\n    margin-top: 2px;\n    margin-right: 10px;\n    font-size: 18px\n  }\n}\n\n.inline-ctas__icon {\n  line-height: 1em;\n  margin-top: 2px;\n  margin-right: 10px;\n  font-size: 18px\n}\n\n.inline-ctas__icon--secondary {\n  color: #d40f7d\n}\n\n.inline-ctas__arrow {\n  line-height: 1em;\n  margin-top: 2px;\n  margin-left: 10px;\n  font-size: 10px\n}\n\n.custom-select {\n  position: relative;\n  color: #4a4a4a\n}\n\n.custom-select__wrapper {\n  width: 100%;\n  position: relative\n}\n\n.custom-select__wrapper.is-open .custom-select__items {\n  display: block\n}\n\n.custom-select__wrapper.is-populated .custom-select__selected {\n  color: #fff\n}\n\n.custom-select__select {\n  width: 100%;\n  position: relative\n}\n\n.custom-select__select:after {\n  font-size: 5px;\n  transform-origin: center center;\n  color: #d40f7d;\n  position: absolute;\n  right: 15px;\n  top: 15px\n}\n\n.custom-select__items {\n  position: absolute;\n  background: #fff;\n  top: 100%;\n  left: 0;\n  right: 0;\n  z-index: 1;\n  max-height: 258px;\n  overflow: auto;\n  display: none\n}\n\n.custom-select__items::-webkit-scrollbar {\n  width: 5px;\n  height: 5px\n}\n\n.custom-select__items::-webkit-scrollbar-thumb {\n  background: #9b9b9b\n}\n\n.custom-select__items::-webkit-scrollbar-track {\n  background: #fff\n}\n\n.custom-select__items {\n  scrollbar-face-color: #9b9b9b;\n  scrollbar-track-color: #fff\n}\n\n.custom-select__item,\n.custom-select__selected,\n.custom-select__hidden {\n  color: #4a4a4a;\n  padding: 8px 15px 8px 10px;\n  cursor: pointer;\n  font-size: 16px;\n  line-height: 26px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  border-bottom: 1px solid #9b9b9b;\n  background: transparent\n}\n\n.custom-select__selected,\n.custom-select__hidden {\n  padding-top: 3px;\n  display: flex;\n  align-items: center;\n  justify-content: space-between;\n  width: 100%\n}\n\n.custom-select__hidden {\n  display: none\n}\n\n.custom-select__hidden.native {\n  display: block\n}\n\n.custom-select__hidden {\n  color: #fff\n}\n\n.custom-select__hidden:required:invalid {\n  color: #4a4a4a\n}\n\n.custom-select__item {\n  background: #fff;\n  border-bottom: 1px solid #9b9b9b\n}\n\n.custom-select__item:first-child {\n  display: none\n}\n\n.hero-banner {\n  position: relative;\n  height: 100vw;\n  min-height: 400px;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-banner {\n    height: 48.5vw;\n    max-height: 100vh\n  }\n}\n\n.hero-banner__video {\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  width: 100%;\n  height: 100%;\n  min-height: inherit;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.hero-banner__wrapper {\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-banner__background {\n  width: 100%;\n  position: relative;\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-banner__background-inner {\n  width: 100%;\n  position: relative;\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-banner__background:before,\n.hero-banner__background:after {\n  content: \"\";\n  position: absolute;\n  width: 100%;\n  left: 0;\n  z-index: 1\n}\n\n.hero-banner__background:before {\n  top: 0;\n  height: 160px;\n  background: linear-gradient(to bottom, #000000 0%, transparent 100%)\n}\n\n.hero-banner__background:after {\n  bottom: 0;\n  height: 395px;\n  background: linear-gradient(to top, #000000 0%, transparent 100%)\n}\n\n.hero-banner__background--cancelled {\n  filter: grayscale(100%)\n}\n\n.hero-banner__source {\n  width: 100%;\n  height: 100%;\n  min-height: inherit;\n  -o-object-fit: contain;\n  font-family: \"object-fit:contain\";\n  object-fit: contain\n}\n\n.hero-banner__content {\n  position: absolute;\n  bottom: 70px;\n  box-sizing: border-box;\n  left: 50%;\n  transform: translateX(-50%);\n  display: flex;\n  flex-direction: column;\n  align-items: flex-start;\n  padding-right: 70px;\n  z-index: 1\n}\n\n.hero-banner__content>* {\n  opacity: 0\n}\n\n.hero-banner__heading {\n  margin-bottom: 0\n}\n\n.hero-banner__sub-title {\n  margin-top: 10px;\n  color: #9b9b9b;\n  font-size: 14px\n}\n\n.hero-banner__sub-title--featured {\n  color: #fff;\n  font-size: 18px\n}\n\n.hero-banner__title,\n.hero-banner__sub-title {\n  font-size: 14px;\n  line-height: 17px\n}\n\n.hero-banner__sub-title {\n  color: #9b9b9b\n}\n\n.hero-banner__cta {\n  min-width: 160px;\n  margin-top: 30px\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-banner__cta {\n    margin-bottom: 10px\n  }\n}\n\n.hero-banner__cta--no-margin {\n  margin-bottom: 0\n}\n\n.hero-banner__picture {\n  display: flex;\n  height: 100%;\n  min-height: inherit\n}\n\n.hero-banner--mobile-shorter {\n  height: auto;\n  min-height: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-banner--mobile-shorter {\n    min-height: 400px;\n    height: 48.5vw;\n    max-height: 100vh\n  }\n}\n\n.hero-banner--mobile-shorter .hero-banner__background {\n  min-height: 400px;\n  height: 100vw\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-banner--mobile-shorter .hero-banner__background {\n    max-height: 100vh;\n    height: 48.5vw\n  }\n}\n\n.hero-banner--mobile-shorter .hero-banner__background:before {\n  height: 60px\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-banner--mobile-shorter .hero-banner__background:before {\n    height: 160px\n  }\n}\n\n.hero-banner--mobile-shorter .hero-banner__background:after {\n  height: 195px\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-banner--mobile-shorter .hero-banner__background:after {\n    height: 395px\n  }\n}\n\n.hero-banner--mobile-shorter .hero-banner__content {\n  padding-right: 0;\n  position: relative\n}\n\n.hero-banner--mobile-shorter .hero-banner__content>* {\n  opacity: 1\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-banner--mobile-shorter .hero-banner__content {\n    position: absolute\n  }\n}\n\n.hero-strip {\n  width: 100%;\n  display: flex;\n  justify-content: space-between;\n  flex-direction: column;\n  box-sizing: border-box;\n  padding-right: 15px\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip {\n    align-items: flex-start\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-strip {\n    flex-direction: row;\n    align-items: center;\n    padding-right: 30px\n  }\n}\n\n.hero-strip__content {\n  display: flex;\n  margin-top: 15px;\n  align-items: flex-start;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__content {\n    flex-direction: row;\n    align-items: center\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .hero-strip__content {\n    margin-top: 40px\n  }\n}\n\n.hero-strip__col {\n  display: flex;\n  flex-direction: column;\n  align-items: flex-start;\n  height: auto;\n  width: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__col {\n    width: auto;\n    align-items: center\n  }\n}\n\n.hero-strip__col:nth-child(1) {\n  padding-right: 0;\n  border-bottom: 1px solid #4a4a4a\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__col:nth-child(1) {\n    padding-right: 30px;\n    border-bottom: none\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .hero-strip__col:nth-child(1) {\n    padding-right: 40px\n  }\n}\n\n.hero-strip__col:nth-child(2),\n.hero-strip__col:nth-child(3),\n.hero-strip__col:nth-child(4) {\n  padding: 0;\n  border-bottom: 1px solid #4a4a4a\n}\n\n@media only screen and (min-width: 768px) {\n\n  .hero-strip__col:nth-child(2),\n  .hero-strip__col:nth-child(3),\n  .hero-strip__col:nth-child(4) {\n    padding: 0 30px;\n    border-left: 1px solid #4a4a4a;\n    border-bottom: none\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n\n  .hero-strip__col:nth-child(2),\n  .hero-strip__col:nth-child(3),\n  .hero-strip__col:nth-child(4) {\n    padding: 0 40px\n  }\n}\n\n.hero-strip__col:before {\n  content: \"\";\n  padding-top: 12px\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__col:before {\n    padding-top: 0\n  }\n}\n\n.hero-strip__col:after {\n  content: \"\";\n  padding-bottom: 12px\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__col:after {\n    padding-bottom: 0\n  }\n}\n\n.hero-strip__title {\n  font-size: 10px;\n  width: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__title {\n    padding-top: 0\n  }\n}\n\n.hero-strip__sub-title {\n  font-size: 14px;\n  width: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .hero-strip__sub-title {\n    margin-bottom: 0\n  }\n}\n\n.scroll-indicator {\n  display: none;\n  opacity: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .scroll-indicator {\n    display: flex;\n    flex-direction: column;\n    align-items: center\n  }\n}\n\n.scroll-indicator__bar {\n  width: 1px;\n  height: 60px;\n  position: relative;\n  overflow: hidden\n}\n\n.scroll-indicator__bar:before {\n  content: \"\";\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  display: block;\n  background-image: linear-gradient(to bottom, #FFFFFF 50%, rgba(255, 255, 255, 0) 50%);\n  background-position: 0 -60px;\n  background-size: 100% 200%;\n  animation: scrollDown 2s ease forwards infinite\n}\n\n.scroll-indicator__text {\n  font-size: 12px;\n  line-height: 12px;\n  height: 47px;\n  display: flex;\n  align-items: center\n}\n\n.scroll-indicator__text-inner {\n  display: block;\n  transform-origin: center center;\n  transform: rotate(-90deg)\n}\n\n.scroll-indicator__icon {\n  width: 19px;\n  height: 29px\n}\n\n.scroll-indicator__wheel {\n  animation: mouseWheel 2s ease infinite\n}\n\n.search-popup--popup {\n  background: #000;\n  height: 100vh;\n  position: fixed;\n  top: 0;\n  width: 100%;\n  left: 0;\n  z-index: 3;\n  color: #fff;\n  display: flex;\n  flex-direction: column;\n  opacity: 0;\n  pointer-events: none;\n  transition: .3s ease;\n  transition-property: opacity;\n  border: none;\n  padding: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup--popup {\n    min-height: 720px\n  }\n}\n\n.search-popup .status-message {\n  margin: 50px auto\n}\n\n.search-popup--open {\n  opacity: 1;\n  pointer-events: auto\n}\n\n.search-popup--open .search-popup__wrapper--form,\n.search-popup--open .search-popup__close {\n  opacity: 1;\n  transform: none\n}\n\n.search-popup__wrapper {\n  padding-top: 16px;\n  padding-bottom: 16px;\n  display: flex;\n  flex-direction: column;\n  justify-content: center;\n  align-items: flex-start;\n  min-height: 77px\n}\n\n.search-popup__wrapper--form {\n  transition: .5s ease;\n  transition-property: opacity, transform;\n  transition-delay: .2s;\n  opacity: 0;\n  transform: translateY(60px)\n}\n\n.search-popup__wrapper:nth-child(1) {\n  align-items: flex-end;\n  justify-content: center\n}\n\n.search-popup__wrapper:nth-child(2) {\n  flex: 1\n}\n\n.search-popup__wrapper:nth-child(3) {\n  align-items: center\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__wrapper {\n    padding-top: 30px;\n    padding-bottom: 30px;\n    justify-content: flex-start;\n    min-height: 131px\n  }\n\n  .search-popup__wrapper:nth-child(2) {\n    padding-top: 70px\n  }\n\n  .search-popup__wrapper:nth-child(3) {\n    display: none\n  }\n}\n\n.search-popup__close {\n  padding: 0 15px;\n  height: 14px;\n  background: transparent;\n  position: relative;\n  transform: translateY(20px);\n  opacity: 0;\n  transition: .3s ease;\n  transition-property: opacity, transform;\n  transition-delay: .2s\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__close {\n    padding: 0 30px\n  }\n}\n\n.search-popup__close:focus {\n  outline: none\n}\n\n.search-popup__close-inner {\n  width: 21px;\n  height: 14px;\n  position: relative;\n  display: inline-block;\n  top: 6px;\n  transform: translateY(-50%) rotate(45deg)\n}\n\n.search-popup__close-inner:before,\n.search-popup__close-inner:after {\n  content: \"\";\n  display: block;\n  position: absolute;\n  width: 100%;\n  height: 2px;\n  border-radius: 2px;\n  background-color: #fff;\n  top: 6px\n}\n\n.search-popup__close-inner:after {\n  transform: rotate(-90deg)\n}\n\n.search-popup__links {\n  display: none\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__links {\n    display: flex;\n    flex-direction: column;\n    margin-top: 175px;\n    width: 100%\n  }\n\n  .search-popup__links--hidden {\n    display: none\n  }\n}\n\n.search-popup__links-list {\n  display: flex;\n  flex-direction: column;\n  max-height: 160px;\n  flex-wrap: wrap;\n  width: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__links--alt {\n    margin-top: 60px\n  }\n}\n\n.search-popup__item {\n  font-size: 16px;\n  line-height: 20px;\n  margin-bottom: 13px;\n  width: 50%;\n  padding-right: 15px\n}\n\n.search-popup__item-link {\n  color: currentColor;\n  text-shadow: 0 0 1px transparent;\n  transition: .2s ease;\n  transition-property: text-shadow\n}\n\n.search-popup__item-link:hover {\n  text-shadow: 0 0 1px #fff\n}\n\n.search-popup__social-list {\n  display: flex\n}\n\n.search-popup__social-item {\n  margin: 0 5px\n}\n\n.search-popup__social-link {\n  font-size: 14px;\n  line-height: 1em;\n  padding: 5px;\n  color: currentColor\n}\n\n.search-popup__form {\n  width: 100%;\n  position: relative\n}\n\n.search-popup__label {\n  color: #d40f7d;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  font-size: 14px;\n  line-height: 17px\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__label {\n    padding: 0 20px\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__label--alt {\n    padding: 0\n  }\n}\n\n.search-popup__input {\n  color: #fff;\n  font-size: 14px;\n  line-height: 17px;\n  background: transparent;\n  border: none;\n  border-bottom: 1px solid #fff;\n  padding: 15px 75px 15px 0\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__input {\n    font-size: 44px;\n    line-height: 52px;\n    padding: 20px 75px 15px 20px;\n    text-overflow: ellipsis\n  }\n}\n\n.search-popup__input::-webkit-input-placeholder {\n  color: #4a4a4a\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__input--alt {\n    padding: 20px 75px 15px 0\n  }\n}\n\n.search-popup__submit-icon {\n  color: #d40f7d;\n  margin-left: 8px;\n  margin-top: 3px\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__submit-icon {\n    margin-top: 0\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .search-popup__submit-text {\n    display: none\n  }\n\n  .search-popup__submit-icon {\n    margin-left: 0;\n    font-size: 40px;\n    line-height: 1em\n  }\n}\n\n.search-results {\n  display: none\n}\n\n@media only screen and (min-width: 768px) {\n  .search-results {\n    flex-direction: column;\n    align-items: center;\n    width: 100%\n  }\n\n  .search-results--searching {\n    display: flex;\n    height: 100%\n  }\n}\n\n.search-results__inner {\n  margin-bottom: 40px;\n  width: 100%;\n  height: calc(100% - 140px);\n  overflow: auto\n}\n\n.search-results__inner::-webkit-scrollbar {\n  width: 4px\n}\n\n.search-results__inner::-webkit-scrollbar-track {\n  background: #ececec\n}\n\n.search-results__inner::-webkit-scrollbar-thumb {\n  background: #d40f7d\n}\n\n.search-results__inner .list-link:last-of-type {\n  margin-bottom: 0\n}\n\n.search-results__item {\n  display: flex;\n  align-items: center;\n  border-bottom: 1px solid #1b1a1a\n}\n\n.search-results__item:hover {\n  background: #1b1a1a\n}\n\n.search-results__info {\n  padding: 30px 20px;\n  color: #fff;\n  flex: 1\n}\n\n.search-results__heading {\n  margin-bottom: 15px\n}\n\n.search-results__title {\n  font-size: 10px;\n  line-height: 12px\n}\n\n.search-results__extra-info {\n  display: flex\n}\n\n.search-results__extra-col {\n  margin-right: 70px;\n  display: flex;\n  flex-direction: column\n}\n\n.search-results__extra-col:last-child {\n  margin-right: 0\n}\n\n.search-results__extra-title {\n  font-size: 10px;\n  line-height: 12px;\n  margin-bottom: 6px\n}\n\n.search-results__extra-item {\n  font-size: 14px;\n  line-height: 17px\n}\n\n.search-results__error {\n  margin-top: 20px\n}\n\n.search-results__all--hidden {\n  display: none\n}\n\n.search-results__ctas {\n  padding: 30px 20px\n}\n\n.whats-on {\n  perspective: 800px\n}\n\n.whats-on__wrapper {\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .whats-on__wrapper {\n    margin-bottom: 60px\n  }\n}\n\n.whats-on__wrapper:last-of-type {\n  margin-bottom: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .whats-on__heading {\n    margin-bottom: 0\n  }\n}\n\n.whats-on__footer {\n  width: 100%;\n  display: flex;\n  justify-content: center;\n  margin-top: 0px;\n  margin-bottom: 60px\n}\n\n.tabs {\n  position: relative\n}\n\n.tabs__panel {\n  display: flex;\n  flex-direction: column;\n  transition: opacity .22s ease-out;\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  opacity: 0;\n  pointer-events: none;\n  z-index: 0\n}\n\n.tabs__panel.active {\n  transition-delay: 120ms;\n  opacity: 1;\n  pointer-events: all;\n  z-index: 1;\n  position: absolute\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__panel {\n    flex-direction: row;\n    flex-wrap: wrap;\n    justify-content: space-between;\n    align-items: flex-start\n  }\n}\n\n.tabs__panel:after {\n  content: \"\";\n  flex: 0 0 calc(33.33333% - 25px)\n}\n\n.tabs__nav {\n  width: 100%;\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__nav {\n    margin-bottom: 0\n  }\n}\n\n.tabs__list {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__list {\n    flex-direction: row;\n    justify-content: center\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__item {\n    flex: 0 0 136px\n  }\n}\n\n.tabs__icon {\n  font-size: 20px;\n  margin-right: 20px;\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs__link,\n.radio-tab__label,\n.svg-tabs__button {\n  background: transparent;\n  border-bottom: 1px solid #4a4a4a;\n  padding: 18px 0;\n  color: #9b9b9b;\n  width: 100%;\n  font-size: 16px;\n  line-height: 18px;\n  text-shadow: 0 0 1px transparent;\n  transition: .2s ease;\n  transition-property: text-shadow, color;\n  display: flex;\n  align-items: center;\n  justify-content: center\n}\n\n@media only screen and (min-width: 768px) {\n\n  .tabs__link,\n  .radio-tab__label,\n  .svg-tabs__button {\n    padding: 40px 10px\n  }\n}\n\n.tabs__link--active,\n.radio-tab__input:checked+.radio-tab__label,\n.svg-tabs__button--active {\n  position: relative\n}\n\n.tabs__link:hover,\n.radio-tab__label:hover,\n.svg-tabs__button:hover,\n.tabs__link:focus,\n.radio-tab__label:focus,\n.svg-tabs__button:focus {\n  text-shadow: 0 0 1px #fff;\n  border-bottom: 1px solid #4a4a4a;\n  outline: none\n}\n\n.tabs__link:hover .tabs__icon,\n.radio-tab__label:hover .tabs__icon,\n.svg-tabs__button:hover .tabs__icon,\n.tabs__link:focus .tabs__icon,\n.radio-tab__label:focus .tabs__icon,\n.svg-tabs__button:focus .tabs__icon {\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs .active .tabs__link,\n.tabs .active .radio-tab__label,\n.tabs .active .svg-tabs__button {\n  text-shadow: 0 0 1px #fff;\n  border-width: 2px;\n  border-color: #d40f7d;\n  color: #fff\n}\n\n.tabs .active .tabs__link .tabs__icon,\n.tabs .active .radio-tab__label .tabs__icon,\n.tabs .active .svg-tabs__button .tabs__icon {\n  color: #d40f7d;\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs .active .tabs__link:hover,\n.tabs .active .radio-tab__label:hover,\n.tabs .active .svg-tabs__button:hover,\n.tabs .active .tabs__link:focus,\n.tabs .active .radio-tab__label:focus,\n.tabs .active .svg-tabs__button:focus {\n  border-width: 2px;\n  border-color: #d40f7d;\n  outline: none\n}\n\n.tabs--fluid .tabs__item {\n  flex: auto\n}\n\n.tabs--fluid .tabs__link,\n.tabs--fluid .radio-tab__label,\n.tabs--fluid .svg-tabs__button {\n  padding-left: 25px;\n  padding-right: 25px\n}\n\n.card-link {\n  flex: 1;\n  margin-bottom: 15px;\n  transition: opacity .3s ease, transform .7s ease-out;\n  opacity: 0;\n  transform: translateY(40px) rotate3d(1, 0, 0, 8deg)\n}\n\n.card-link--reveal {\n  opacity: 1;\n  transform: none\n}\n\n.card-link--grey .card-link__image-source {\n  filter: grayscale(100%)\n}\n\n.card-link--grey .card-link__heading-link {\n  color: #9b9b9b\n}\n\n.card-link:hover .card-link__info {\n  max-height: 80px\n}\n\n@media only screen and (min-width: 768px) {\n  .card-link {\n    flex: 0 0 calc(50% - 15px)\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link {\n    flex: 0 0 calc(33.33333% - 25px);\n    position: relative;\n    margin-bottom: 100px\n  }\n}\n\n.card-link.focus-out {\n  opacity: .3;\n  transition: 2s ease\n}\n\n.card-link__image {\n  width: 100%;\n  height: calc(95.95vw - 30px)\n}\n\n@media only screen and (min-width: 768px) {\n  .card-link__image {\n    height: calc(48.282vw - 30px)\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__image {\n    height: calc(31.774vw - 30px)\n  }\n}\n\n@media only screen and (min-width: 1360px) {\n  .card-link__image {\n    height: 408px\n  }\n}\n\n.card-link__image-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.card-link__content {\n  padding: 20px 15px;\n  background: #000\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__content {\n    position: absolute;\n    bottom: -60px;\n    right: 0;\n    width: calc(100% - 15px);\n    padding: 30px\n  }\n}\n\n.card-link__titles {\n  margin-bottom: 15px\n}\n\n.card-link__heading {\n  margin-bottom: 5px\n}\n\n.card-link__heading-link {\n  color: #fff\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__heading {\n    margin-bottom: 10px\n  }\n}\n\n.card-link__sub-heading {\n  font-size: 14px;\n  line-height: 17px;\n  color: #9b9b9b;\n  margin-bottom: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__info {\n    max-height: 0;\n    overflow: hidden;\n    transition: .3s ease;\n    transition-property: max-height\n  }\n}\n\n.card-link__list {\n  padding-left: 0;\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__list {\n    height: 40px;\n    display: flex;\n    flex-direction: column;\n    overflow: auto\n  }\n\n  .card-link__list::-webkit-scrollbar {\n    width: 4px\n  }\n\n  .card-link__list::-webkit-scrollbar-track {\n    background: #ececec;\n    border-radius: 2px\n  }\n\n  .card-link__list::-webkit-scrollbar-thumb {\n    background: #d40f7d;\n    border-radius: 2px\n  }\n}\n\n.card-link__item {\n  list-style: none;\n  display: flex;\n  align-items: flex-start;\n  margin-bottom: 8px\n}\n\n.card-link__item:last-child {\n  margin-bottom: 0\n}\n\n.card-link__item-title,\n.card-link__item-description {\n  flex: 0 0 50%;\n  font-size: 12px;\n  line-height: 15px\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__item-title {\n    flex: 0 0 40%\n  }\n}\n\n.card-link__item-description {\n  color: #9b9b9b\n}\n\n@media only screen and (min-width: 1024px) {\n  .card-link__item-description {\n    flex: 0 0 60%\n  }\n}\n\n.dropdown-card {\n  background: #1b1a1a;\n  padding: 40px 25px 30px;\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  text-align: center;\n  margin-bottom: 15px;\n  position: relative\n}\n\n.dropdown-card:before,\n.dropdown-card:after {\n  content: \"\";\n  position: absolute;\n  background: #000;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  z-index: 2;\n  transition: .5s ease\n}\n\n.dropdown-card:before {\n  transform: scaleX(1);\n  transform-origin: right\n}\n\n.dropdown-card:after {\n  background: #00b5e2;\n  transform: scaleX(0);\n  transform-origin: left\n}\n\n.dropdown-card:last-of-type:after {\n  background: #d40f7d\n}\n\n.dropdown-card--reduced {\n  background: transparent;\n  align-items: flex-start;\n  padding: 0;\n  margin-bottom: 40px;\n  width: 100%\n}\n\n.dropdown-card--reduced:before,\n.dropdown-card--reduced:after {\n  display: none\n}\n\n.dropdown-card--reduced .dropdown-card__heading {\n  font-size: 10px;\n  line-height: 13px;\n  margin-bottom: 5px;\n  color: #9b9b9b\n}\n\n.dropdown-card--reduced .dropdown-card__form {\n  width: 100%\n}\n\n.dropdown-card--reduced .dropdown-card__form-heading {\n  text-align: left\n}\n\n.dropdown-card--reduced .dropdown-card__submit {\n  width: 100%\n}\n\n.dropdown-card__heading {\n  font-size: 16px;\n  line-height: 18px;\n  margin-bottom: 20px\n}\n\n.dropdown-card__icon {\n  margin-bottom: 15px\n}\n\n.dropdown-card__icon-source {\n  font-size: 24px;\n  line-height: 1em\n}\n\n@media only screen and (min-width: 1024px) {\n  .dropdown-card__form {\n    display: flex;\n    flex-wrap: wrap;\n    justify-content: center;\n    align-items: center\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .dropdown-card__form-heading {\n    margin-right: 20px;\n    margin-bottom: 40px\n  }\n}\n\n.dropdown-card__fieldset {\n  border: none;\n  display: flex;\n  flex-direction: column;\n  align-items: flex-start;\n  justify-content: flex-start;\n  text-align: left;\n  margin-bottom: 30px;\n  z-index: 1\n}\n\n@media only screen and (min-width: 1024px) {\n  .dropdown-card__fieldset {\n    flex: 0 0 220px;\n    margin-bottom: 40px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .dropdown-card {\n    flex: 0 0 calc(50% - 20px);\n    max-width: calc(50% - 20px);\n    margin: 0 20px;\n    padding: 80px\n  }\n\n  .dropdown-card:first-child {\n    margin-left: 0\n  }\n\n  .dropdown-card:last-child {\n    margin-right: 0\n  }\n}\n\n.dropdown-card--loaded:after {\n  animation: 1s cardReveal ease\n}\n\n.dropdown-card--loaded:before {\n  transform: scaleX(0);\n  transition-delay: .5s\n}\n\n.dropdown-card--loaded:last-of-type:after {\n  animation-delay: .25s\n}\n\n.dropdown-card--loaded:last-of-type:before {\n  transform: scaleX(0);\n  transition-delay: .75s\n}\n\n.interruption-strip {\n  width: 100%;\n  position: relative;\n  display: flex;\n  align-items: center;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 1024px) {\n  .interruption-strip {\n    min-height: 800px\n  }\n}\n\n.interruption-strip__background {\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 130%;\n  overflow: hidden\n}\n\n.interruption-strip__background-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.interruption-strip__picture {\n  width: 100%;\n  height: 100%;\n  display: flex\n}\n\n.interruption-strip__source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.interruption-strip__video {\n  position: absolute;\n  top: 50%;\n  left: 50%;\n  transform: translate(-50%, -50%);\n  min-width: 100%;\n  min-height: 100%;\n  width: auto;\n  height: auto;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.interruption-strip__wrapper {\n  position: relative;\n  display: flex;\n  flex-direction: column;\n  max-width: 240px;\n  margin: 0 auto;\n  padding: 85px 0;\n  text-align: center\n}\n\n@media only screen and (min-width: 768px) {\n  .interruption-strip__wrapper {\n    max-width: 400px;\n    align-items: center\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .interruption-strip__wrapper {\n    max-width: 800px;\n    align-items: center\n  }\n}\n\n.interruption-strip__description {\n  margin-bottom: 30px\n}\n\n.logos {\n  overflow: hidden\n}\n\n.logos__title {\n  text-align: center;\n  width: 100%;\n  display: block;\n  margin-bottom: 40px;\n  color: #fff\n}\n\n.logos__sponsor {\n  width: 100%;\n  display: flex;\n  justify-content: center\n}\n\n.logos__wrapper>*:last-child {\n  margin-bottom: 0\n}\n\n.bottom-cards {\n  position: relative\n}\n\n.bottom-cards__row {\n  display: flex;\n  min-height: 720px;\n  height: auto;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 1024px) {\n  .bottom-cards__row {\n    min-height: 0;\n    height: 310px;\n    flex-direction: row\n  }\n}\n\n.bottom-cards__card {\n  height: 100%;\n  width: auto;\n  color: #fff;\n  position: relative;\n  margin-left: -15px;\n  margin-right: -15px\n}\n\n@media only screen and (min-width: 768px) {\n  .bottom-cards__card {\n    margin-left: 0;\n    margin-right: 0\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .bottom-cards__card {\n    width: 50%\n  }\n}\n\n.bottom-cards__card:before {\n  content: \"\";\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  background: #000;\n  opacity: .3;\n  z-index: 1\n}\n\n.bottom-cards__card:nth-child(1) {\n  margin-bottom: 17px\n}\n\n@media only screen and (min-width: 1024px) {\n  .bottom-cards__card:nth-child(1) {\n    margin-right: 17px;\n    margin-bottom: 0\n  }\n}\n\n.bottom-cards__card:nth-child(2) {\n  margin-top: 17px\n}\n\n@media only screen and (min-width: 1024px) {\n  .bottom-cards__card:nth-child(2) {\n    margin-left: 17px;\n    margin-top: 0\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .bottom-cards__card:hover .bottom-cards__logo,\n  .bottom-cards__card:active .bottom-cards__logo,\n  .bottom-cards__cardfocus .bottom-cards__logo {\n    transform: scale(0.7);\n    padding: 44px 0 0 44px\n  }\n\n  .bottom-cards__card:hover .bottom-cards__button,\n  .bottom-cards__card:active .bottom-cards__button,\n  .bottom-cards__cardfocus .bottom-cards__button {\n    opacity: 1\n  }\n}\n\n.bottom-cards__card-bg {\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover;\n  width: 100%;\n  height: 100%;\n  position: absolute;\n  top: 0;\n  left: 0\n}\n\n.bottom-cards__logo {\n  padding: 44px 0 30px 44px;\n  display: block;\n  z-index: 1;\n  position: relative;\n  transition: .3s ease;\n  transition-property: transform, padding\n}\n\n.bottom-cards__copy {\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  font-size: 32px;\n  line-height: 34px;\n  padding: 0 44px;\n  display: block;\n  z-index: 1;\n  position: relative\n}\n\n.bottom-cards__button {\n  z-index: 1;\n  position: relative;\n  margin: 30px 44px;\n  min-width: 190px;\n  transition: .3s ease;\n  transition-property: opacity, box-shadow\n}\n\n@media only screen and (min-width: 1024px) {\n  .bottom-cards__button {\n    min-width: 210px;\n    opacity: 0\n  }\n}\n\n.marquee {\n  overflow: hidden;\n  margin: 50px -15px;\n  position: relative;\n  width: 100vw\n}\n\n@media only screen and (min-width: 1024px) {\n  .marquee {\n    width: auto\n  }\n}\n\n.marquee__link {\n  display: inline-block;\n  margin: 0 35px\n}\n\n@media only screen and (min-width: 1024px) {\n  .marquee__link {\n    margin: 0 42px\n  }\n}\n\n.marquee__image {\n  min-height: 25px;\n  width: auto;\n  max-width: none\n}\n\n.marquee__container {\n  display: block;\n  overflow: hidden;\n  white-space: nowrap;\n  will-change: transform\n}\n\n@media only screen and (min-width: 1024px) {\n  .marquee__container {\n    display: flex;\n    justify-content: center\n  }\n}\n\n.marquee__wrapper {\n  position: relative;\n  margin: 0;\n  align-items: center;\n  display: inline-flex;\n  animation: marquee 20s linear infinite\n}\n\n@media only screen and (min-width: 1024px) {\n  .marquee__wrapper {\n    animation: none\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .marquee__wrapper:nth-child(2) {\n    display: none\n  }\n}\n\n.custom-radios {\n  display: flex;\n  flex-wrap: wrap\n}\n\n.custom-radios__label {\n  padding: 7px 20px;\n  font-size: 12px;\n  line-height: 15px;\n  color: #4a4a4a;\n  border: 1px solid #4a4a4a;\n  border-radius: 16px;\n  margin-right: 10px;\n  cursor: pointer;\n  display: flex;\n  align-items: center;\n  margin-bottom: 10px\n}\n\n.custom-radios__label--icon {\n  padding-left: 8px\n}\n\n.custom-radios__label:last-of-type {\n  margin-right: 0\n}\n\n.custom-radios__label:hover {\n  background: #fff;\n  color: #000\n}\n\n.custom-radios__icon {\n  font-size: 14px;\n  line-height: .8em;\n  margin-right: 10px\n}\n\n.custom-radios__input {\n  display: none\n}\n\n.custom-radios__input:checked+.custom-radios__label {\n  background: #fff;\n  color: #000\n}\n\n.newsletter-popup {\n  background: #1b1a1a;\n  display: flex;\n  flex-direction: column;\n  padding: 40px 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .newsletter-popup {\n    padding: 90px 0\n  }\n}\n\n.newsletter-popup__wrapper {\n  max-width: 675px;\n  padding: 0 15px;\n  display: flex;\n  flex-direction: column;\n  align-items: center;\n  text-align: center;\n  margin: 0 auto 10px\n}\n\n@media only screen and (min-width: 1024px) {\n  .newsletter-popup__wrapper {\n    margin: 0 auto 40px\n  }\n}\n\n.newsletter-popup__wrapper--no-space {\n  margin-bottom: 0\n}\n\n.newsletter-popup.submit-message {\n  display: none\n}\n\n.newsletter-form {\n  max-width: 690px;\n  padding: 0 15px;\n  margin: 0 auto;\n  display: flex;\n  flex-direction: row;\n  flex-wrap: wrap\n}\n\n.newsletter-form__fieldset {\n  flex: 0 0 100%;\n  border: none\n}\n\n.newsletter-form__fieldset.error .newsletter-form__error {\n  display: block\n}\n\n.newsletter-form__title {\n  flex: 0 100%\n}\n\n.newsletter-form__label {\n  font-size: 10px;\n  line-height: 12px;\n  color: #d40f7d;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  padding-left: 8px\n}\n\n.newsletter-form__input {\n  color: #fff;\n  padding: 8px 15px 8px 10px;\n  font-size: 16px;\n  line-height: 26px;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  border: none;\n  border-bottom: 1px solid #fff;\n  background: #1b1a1a;\n  margin-bottom: 10px\n}\n\n@media only screen and (min-width: 1024px) {\n  .newsletter-form__input {\n    margin-bottom: 0\n  }\n}\n\n.newsletter-form__title {\n  font-size: 10px;\n  line-height: 12px;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  margin-bottom: 10px\n}\n\n.newsletter-form__title-extra {\n  color: #4a4a4a\n}\n\n.newsletter-form__error {\n  font-size: 12px;\n  line-height: 15px;\n  letter-spacing: 0;\n  color: #d40f7d;\n  padding-top: 10px;\n  display: none\n}\n\n.newsletter-form__submit {\n  width: 100%;\n  display: flex;\n  justify-content: center\n}\n\n.agreement {\n  display: flex;\n  margin-top: 15px;\n  margin-bottom: 60px;\n  align-items: center;\n  position: relative;\n  flex: 0 0 100%;\n  flex-wrap: wrap\n}\n\n.agreement__box {\n  flex: 0 0 75px;\n  width: 75px\n}\n\n.agreement__label {\n  cursor: pointer;\n  border-radius: 10px;\n  width: 100%;\n  height: 20px;\n  background-color: #4a4a4a;\n  position: relative;\n  color: #9b9b9b;\n  font-size: 10px;\n  letter-spacing: .7px;\n  line-height: 1em;\n  display: flex;\n  align-items: center;\n  padding: 2px\n}\n\n.agreement__label:before {\n  content: \"\";\n  width: 16px;\n  flex: 0 0 16px;\n  height: 16px;\n  border-radius: 50%;\n  background-color: currentColor\n}\n\n.agreement__text {\n  flex: 1 0 auto;\n  text-align: center;\n  padding: 0 5px\n}\n\n.agreement__desc,\n.agreement__error {\n  font-size: 12px;\n  line-height: 15px;\n  letter-spacing: 0;\n  display: block;\n  padding-left: 15px;\n  color: #fff;\n  flex: 0 0 calc(100% - 75px);\n  width: calc(100% - 75px)\n}\n\n.agreement__desc-link,\n.agreement__error-link {\n  color: #fff\n}\n\n.agreement__error {\n  color: #d40f7d;\n  padding-left: 0;\n  flex: 1 0 auto;\n  padding-top: 10px;\n  display: none\n}\n\n.agreement__checkbox input[type=checkbox] {\n  -webkit-appearance: checkbox;\n  position: absolute;\n  opacity: 0;\n  pointer-events: none\n}\n\n.agreement__checkbox input[type=checkbox]:checked+label {\n  color: #fff;\n  flex-direction: row-reverse\n}\n\n.agreement.error .agreement__error {\n  display: block\n}\n\n.slide-banner {\n  display: flex;\n  flex-direction: column;\n  justify-content: space-around;\n  align-items: center;\n  position: relative\n}\n\n.slide-banner:after {\n  content: \"\";\n  position: absolute;\n  top: 0;\n  left: 0;\n  transform: scaleX(1);\n  transform-origin: right;\n  transition: .8s ease;\n  background: #171616;\n  width: 100%;\n  height: 100%;\n  z-index: 1\n}\n\n.slide-banner--loaded:after {\n  transform: scaleX(0)\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner {\n    margin-bottom: 160px\n  }\n}\n\n.slide-banner[data-direction=left] .slide-banner__image {\n  left: auto;\n  right: 0\n}\n\n.slide-banner__wrapper {\n  overflow: hidden;\n  position: relative\n}\n\n.slide-banner__wrapper:after {\n  content: \"\";\n  position: absolute;\n  display: none;\n  z-index: 1\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner__wrapper:after {\n    display: block;\n    bottom: auto;\n    top: 0;\n    right: 0;\n    width: 900px;\n    background: linear-gradient(to left, #171616 0%, #171616 25%, rgba(23, 22, 22, 0) 100%);\n    height: 100%\n  }\n}\n\n.slide-banner__images {\n  width: 100%;\n  height: 71.875vw;\n  position: relative;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 768px) {\n  .slide-banner__images {\n    height: 42vw\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner__images {\n    height: 800px\n  }\n}\n\n.slide-banner__image {\n  position: absolute;\n  top: 0;\n  left: 0;\n  height: 100%;\n  text-align: center;\n  display: flex;\n  align-items: center;\n  width: calc(100% + 500px);\n  transform-origin: center;\n  transform: translateX(-500px);\n  opacity: 0\n}\n\n.slide-banner__image:after {\n  content: \"\";\n  position: absolute;\n  bottom: 0;\n  width: 100%;\n  height: 115px;\n  background: linear-gradient(to top, #171616 0%, rgba(23, 22, 22, 0) 100%)\n}\n\n.slide-banner__image-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.slide-banner__inner {\n  position: relative;\n  z-index: 2;\n  transform: translateY(-100px)\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner__inner {\n    display: flex;\n    align-items: center;\n    max-height: none;\n    position: absolute;\n    top: 50%;\n    left: 50%;\n    transform: translate(-50%, -50%);\n    height: 100%\n  }\n}\n\n.slide-banner__content {\n  max-height: 185px\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner__content {\n    position: absolute;\n    max-height: none;\n    right: 30px;\n    width: 340px\n  }\n}\n\n.slide-banner__logo {\n  width: 100px;\n  height: 75px;\n  margin-bottom: 20px;\n  opacity: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner__logo {\n    width: 140px;\n    height: 100px;\n    margin-bottom: 30px\n  }\n}\n\n.slide-banner__button {\n  margin-bottom: 24px;\n  opacity: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .slide-banner__button {\n    min-width: 215px;\n    margin-right: 40px;\n    margin-bottom: 10px\n  }\n}\n\n.slide-banner__links {\n  display: flex;\n  flex-direction: column;\n  align-items: center\n}\n\n@media only screen and (min-width: 768px) {\n  .slide-banner__links {\n    flex-direction: row;\n    flex-wrap: wrap;\n    margin-bottom: -10px\n  }\n}\n\n.slide-banner__link {\n  font-size: 16px;\n  color: #fff;\n  opacity: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .slide-banner__link {\n    margin-bottom: 10px\n  }\n}\n\n.slide-banner__link:hover,\n.slide-banner__link:active,\n.slide-banner__link:focus {\n  opacity: .9\n}\n\n.slide-banner__heading {\n  opacity: 0;\n  color: #fff\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner__heading {\n    margin-bottom: 40px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner--reverse .slide-banner__content {\n    right: auto;\n    left: 30px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner--reverse .slide-banner__wrapper:after {\n    right: auto;\n    left: 0;\n    background: linear-gradient(to right, #171616 0%, #171616 25%, rgba(23, 22, 22, 0) 100%)\n  }\n}\n\n.slide-banner--plain {\n  margin-bottom: 0;\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner--plain {\n    margin-bottom: 80px\n  }\n}\n\n.slide-banner--plain:after {\n  content: \"\";\n  position: absolute;\n  bottom: 0;\n  left: 0;\n  right: 0;\n  background-color: #171616;\n  height: 100%\n}\n\n.slide-banner--plain .slide-banner__images {\n  height: 200px\n}\n\n@media only screen and (min-width: 768px) {\n  .slide-banner--plain .slide-banner__images {\n    height: 400px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .slide-banner--plain .slide-banner__images {\n    height: 520px\n  }\n}\n\n.slide-banner--plain .slide-banner__content {\n  right: 0;\n  left: 0;\n  text-align: center;\n  width: auto\n}\n\n.slide-banner--plain .slide-banner__logo {\n  margin: auto\n}\n\n.social-wall {\n  position: relative\n}\n\n.social-wall__heading {\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 768px) {\n  .social-wall__heading {\n    margin-bottom: 60px\n  }\n}\n\n.social-wall__slider {\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .social-wall__slider {\n    margin-bottom: 60px\n  }\n}\n\n.social-wall__slide {\n  margin-left: 5px;\n  margin-right: 5px;\n  width: 280px;\n  height: 280px;\n  position: relative\n}\n\n.social-wall__slide:after {\n  content: \"\";\n  position: absolute;\n  height: 50%;\n  width: 100%;\n  background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, #000000 100%);\n  bottom: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .social-wall__slide {\n    width: 320px;\n    height: 320px\n  }\n\n  .social-wall__slide:after {\n    display: none\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .social-wall__slide {\n    width: 420px;\n    height: 420px\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .social-wall__slide {\n    margin-left: 20px;\n    margin-right: 20px\n  }\n}\n\n.social-wall__image {\n  width: 100%;\n  height: 100%;\n  display: block\n}\n\n.social-wall__image-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.social-wall__wrapper {\n  display: flex;\n  position: relative;\n  margin-bottom: 60px\n}\n\n@media only screen and (min-width: 1024px) {\n  .social-wall__wrapper {\n    margin-bottom: 0\n  }\n}\n\n.social-wall__overlay {\n  display: none;\n  box-sizing: border-box\n}\n\n@media only screen and (min-width: 1024px) {\n  .social-wall__overlay {\n    display: flex;\n    flex-direction: column;\n    position: absolute;\n    padding: 20px;\n    top: 0;\n    left: 0;\n    justify-content: space-between;\n    height: 100%;\n    width: 100%;\n    align-items: flex-start;\n    opacity: 0;\n    transition: .3s ease;\n    transition-property: opacity;\n    background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, #000000 100%)\n  }\n}\n\n.social-wall__link {\n  width: 100%;\n  height: 100%;\n  display: flex;\n  position: relative\n}\n\n.social-wall__link:hover .social-wall__overlay {\n  opacity: 1\n}\n\n.social-wall__arrows {\n  display: flex;\n  width: 100%;\n  justify-content: center\n}\n\n@media only screen and (min-width: 1024px) {\n  .social-wall__arrows {\n    justify-content: flex-end\n  }\n}\n\n.social-wall__left-arrow {\n  margin-right: 10px\n}\n\n.social-wall__right-arrow {\n  margin-left: 10px\n}\n\n.social-wall__profile {\n  background: #fff;\n  display: flex;\n  align-items: center;\n  padding: 7px 20px 7px 7px;\n  border-radius: 25px\n}\n\n.social-wall__profile-link {\n  font-size: 12px;\n  line-height: 14px;\n  color: #9b9b9b\n}\n\n.social-wall__profile-info {\n  display: flex;\n  flex-direction: column\n}\n\n.social-wall__profile-account {\n  color: #000;\n  font-size: 14px;\n  line-height: 17px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.social-wall__profile-image {\n  width: 35px;\n  height: 35px;\n  margin-right: 6px\n}\n\n.social-wall__profile-image-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover;\n  border-radius: 18px\n}\n\n.social-wall__text {\n  font-size: 16px;\n  line-height: 28px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.heading-slide,\n.top-heading,\n.modal__heading {\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide,\n  .top-heading,\n  .modal__heading {\n    min-height: 200px;\n    display: flex;\n    align-items: center\n  }\n}\n\n.heading-slide__inner,\n.top-heading__inner {\n  width: 100%;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide__inner,\n  .top-heading__inner {\n    position: absolute\n  }\n}\n\n.heading-slide__heading,\n.top-heading__heading,\n.modal__heading-slide {\n  font-size: 16.25vw;\n  line-height: 1.2em;\n  margin-bottom: 0;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  color: #0f0f0f;\n  transform: translateX(50%);\n  width: 100%;\n  text-align: center;\n  transition: .2s ease;\n  transition-property: transform;\n  white-space: nowrap\n}\n\n.heading-slide__heading--dark {\n  color: #121111\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide__heading,\n  .top-heading__heading,\n  .modal__heading-slide {\n    font-size: 160px\n  }\n}\n\n.heading-slide__wrapper,\n.top-heading__wrapper,\n.modal__heading-wrapper {\n  position: relative;\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n\n  .heading-slide__wrapper,\n  .top-heading__wrapper,\n  .modal__heading-wrapper {\n    flex-direction: row;\n    justify-content: space-between;\n    align-items: center\n  }\n}\n\n.heading-slide__sub-heading,\n.top-heading__sub-heading,\n.modal__heading-sub {\n  margin-bottom: 20px;\n  overflow: hidden\n}\n\n.heading-slide__sub-heading-inner {\n  transform: translateY(100%);\n  display: flex;\n  transition: .3s ease;\n  transition-property: transform\n}\n\n.heading-slide__sub-heading--loaded .heading-slide__sub-heading-inner {\n  transform: none\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .heading-slide__sub-heading,\n  .top-heading__sub-heading,\n  .modal__heading-sub {\n    margin-bottom: 0\n  }\n}\n\n.heading-slide__watcher {\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100vh;\n  pointer-events: none\n}\n\n.heading-slide__social {\n  display: flex;\n  align-items: center;\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide__social {\n    margin-bottom: 0\n  }\n}\n\n.heading-slide__social-item {\n  margin: 0 2px\n}\n\n@media only screen and (min-width: 768px) {\n  .heading-slide__social-item {\n    margin: 0 5px\n  }\n}\n\n.heading-slide__social-list {\n  flex: 1;\n  display: flex;\n  border-right: 1px solid #2b2b2b;\n  padding: 16px 30px 16px 0;\n  justify-content: space-between\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide__social-list {\n    padding: 16px 22px;\n    justify-content: normal\n  }\n}\n\n.heading-slide__social-link {\n  color: #fff;\n  font-size: 14px\n}\n\n@media only screen and (min-width: 768px) {\n  .heading-slide__social-link {\n    padding: 5px 5px;\n    line-height: 1em;\n    font-size: 14px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide__social-link {\n    transform-origin: center center;\n    display: inline-flex;\n    transition: .2s ease;\n    -webkit-backface-visibility: hidden;\n    backface-visibility: hidden\n  }\n\n  .heading-slide__social-link:hover {\n    transform: scale(1.15)\n  }\n}\n\n.heading-slide__social-tag {\n  flex: 1;\n  display: flex;\n  justify-content: center;\n  color: #fff;\n  font-size: 14px;\n  line-height: 17px;\n  padding-left: 30px\n}\n\n.heading-slide--banner .heading-slide__sub-heading,\n.heading-slide--banner .top-heading__sub-heading,\n.heading-slide--banner .modal__heading-sub {\n  font-size: 36px;\n  line-height: 48px\n}\n\n@media only screen and (min-width: 768px) {\n\n  .heading-slide--banner .heading-slide__sub-heading,\n  .heading-slide--banner .top-heading__sub-heading,\n  .heading-slide--banner .modal__heading-sub {\n    font-size: 52px;\n    line-height: 74px\n  }\n}\n\n.heading-slide--baseline {\n  min-height: 115px;\n  align-items: end\n}\n\n@media only screen and (min-width: 1024px) {\n  .heading-slide--revert {\n    padding-left: 30px;\n    margin-left: 50%\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .heading-slide--revert {\n    padding-left: 90px\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .top-heading {\n    margin-bottom: 40px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .top-heading {\n    margin-bottom: 0\n  }\n}\n\n.top-heading__headings {\n  display: flex;\n  flex-direction: column\n}\n\n.top-heading__title {\n  font-size: 14px;\n  line-height: 17px\n}\n\n.top-heading__heading {\n  display: none;\n  transform: translateX(100%);\n  animation: .7s slideInOnLoad ease forwards .4s\n}\n\n@media only screen and (min-width: 1024px) {\n  .top-heading__heading {\n    display: block\n  }\n}\n\n.top-heading--reduced {\n  min-height: 0\n}\n\n.top-heading--reduced .top-heading__wrapper {\n  flex-direction: row;\n  align-items: center;\n  justify-content: space-between\n}\n\n.top-heading--reduced .top-heading__sub-heading {\n  margin-bottom: 0\n}\n\n.tabs {\n  position: relative\n}\n\n.tabs__panel {\n  display: flex;\n  flex-direction: column;\n  transition: opacity .22s ease-out;\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  opacity: 0;\n  pointer-events: none;\n  z-index: 0\n}\n\n.tabs__panel.active {\n  transition-delay: 120ms;\n  opacity: 1;\n  pointer-events: all;\n  z-index: 1;\n  position: absolute\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__panel {\n    flex-direction: row;\n    flex-wrap: wrap;\n    justify-content: space-between;\n    align-items: flex-start\n  }\n}\n\n.tabs__panel:after {\n  content: \"\";\n  flex: 0 0 calc(33.33333% - 25px)\n}\n\n.tabs__nav {\n  width: 100%;\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__nav {\n    margin-bottom: 0\n  }\n}\n\n.tabs__list {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__list {\n    flex-direction: row;\n    justify-content: center\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__item {\n    flex: 0 0 136px\n  }\n}\n\n.tabs__icon {\n  font-size: 20px;\n  margin-right: 20px;\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs__link,\n.radio-tab__label,\n.svg-tabs__button {\n  background: transparent;\n  border-bottom: 1px solid #4a4a4a;\n  padding: 18px 0;\n  color: #9b9b9b;\n  width: 100%;\n  font-size: 16px;\n  line-height: 18px;\n  text-shadow: 0 0 1px transparent;\n  transition: .2s ease;\n  transition-property: text-shadow, color;\n  display: flex;\n  align-items: center;\n  justify-content: center\n}\n\n@media only screen and (min-width: 768px) {\n\n  .tabs__link,\n  .radio-tab__label,\n  .svg-tabs__button {\n    padding: 40px 10px\n  }\n}\n\n.tabs__link--active,\n.radio-tab__input:checked+.radio-tab__label,\n.svg-tabs__button--active {\n  position: relative\n}\n\n.tabs__link:hover,\n.radio-tab__label:hover,\n.svg-tabs__button:hover,\n.tabs__link:focus,\n.radio-tab__label:focus,\n.svg-tabs__button:focus {\n  text-shadow: 0 0 1px #fff;\n  border-bottom: 1px solid #4a4a4a;\n  outline: none\n}\n\n.tabs__link:hover .tabs__icon,\n.radio-tab__label:hover .tabs__icon,\n.svg-tabs__button:hover .tabs__icon,\n.tabs__link:focus .tabs__icon,\n.radio-tab__label:focus .tabs__icon,\n.svg-tabs__button:focus .tabs__icon {\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs .active .tabs__link,\n.tabs .active .radio-tab__label,\n.tabs .active .svg-tabs__button {\n  text-shadow: 0 0 1px #fff;\n  border-width: 2px;\n  border-color: #d40f7d;\n  color: #fff\n}\n\n.tabs .active .tabs__link .tabs__icon,\n.tabs .active .radio-tab__label .tabs__icon,\n.tabs .active .svg-tabs__button .tabs__icon {\n  color: #d40f7d;\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs .active .tabs__link:hover,\n.tabs .active .radio-tab__label:hover,\n.tabs .active .svg-tabs__button:hover,\n.tabs .active .tabs__link:focus,\n.tabs .active .radio-tab__label:focus,\n.tabs .active .svg-tabs__button:focus {\n  border-width: 2px;\n  border-color: #d40f7d;\n  outline: none\n}\n\n.tabs--fluid .tabs__item {\n  flex: auto\n}\n\n.tabs--fluid .tabs__link,\n.tabs--fluid .radio-tab__label,\n.tabs--fluid .svg-tabs__button {\n  padding-left: 25px;\n  padding-right: 25px\n}\n\n.svg-tabs {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs {\n    margin-top: 40px\n  }\n}\n\n.svg-tabs__wrapper {\n  margin-bottom: 50px\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs__wrapper {\n    margin-bottom: 100px\n  }\n}\n\n.svg-tabs__tabs {\n  background: #1b1a1a;\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs__tabs:before {\n    content: \"\";\n    position: absolute;\n    background: #4a4a4a;\n    height: 2px;\n    width: 100%;\n    bottom: 0;\n    left: 0\n  }\n}\n\n.svg-tabs__svg {\n  display: flex\n}\n\n.svg-tabs__svg *[id^=stairs-],\n.svg-tabs__svg *[id^=ref-],\n.svg-tabs__svg #stairs_master {\n  opacity: 0;\n  transition: .3s ease opacity\n}\n\n.svg-tabs__svg *[id^=block_]:hover {\n  cursor: pointer\n}\n\n.svg-tabs__svg g {\n  transition: .3s ease opacity\n}\n\n.svg-tabs__svg g.focus-out {\n  opacity: .3;\n  transition: 2s ease opacity\n}\n\n.svg-tabs__svg g.remove {\n  opacity: 0\n}\n\n.svg-tabs__svg g.show-all *[id^=stairs-],\n.svg-tabs__svg g.show-all *[id^=ref-] {\n  opacity: 1\n}\n\n.svg-tabs__svg g.show-all.focus-out {\n  opacity: 1\n}\n\n.svg-tabs__inner {\n  overflow: hidden;\n  position: relative\n}\n\n.svg-tabs__icon {\n  cursor: pointer;\n  pointer-events: bounding-box;\n  fill: #fff;\n  transition: .2s ease;\n  transition-property: fill\n}\n\n.svg-tabs__icon+g {\n  fill: #777;\n  stroke: #777;\n  transition: .2s ease;\n  transition-property: fill, stroke;\n  pointer-events: none\n}\n\n.svg-tabs__icon:hover,\n.svg-tabs__icon--active {\n  fill: #d40f7d\n}\n\n.svg-tabs__icon:hover+g,\n.svg-tabs__icon--active+g {\n  fill: #fff;\n  stroke: #fff\n}\n\n.svg-tabs__list {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs__list {\n    flex-direction: row;\n    position: relative;\n    justify-content: center\n  }\n\n  .svg-tabs__list:after {\n    content: \"\";\n    position: absolute;\n    background: #4a4a4a;\n    height: 1px;\n    width: 100%;\n    bottom: 0;\n    left: 0\n  }\n}\n\n.svg-tabs__item {\n  z-index: 1;\n  flex: 1 0 auto\n}\n\n.svg-tabs__button {\n  color: #9b9b9b\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs__button {\n    min-width: 160px;\n    border-bottom: none;\n    transition-property: color, text-shadow\n  }\n\n  .svg-tabs__button:hover,\n  .svg-tabs__button:focus {\n    border-bottom: none;\n    color: #fff\n  }\n}\n\n.svg-tabs__button--active {\n  color: #fff;\n  border-bottom: 2px solid #d40f7d\n}\n\n.svg-tabs__button--active:hover,\n.svg-tabs__button--active:focus {\n  border-bottom: 2px solid #d40f7d\n}\n\n.svg-tabs__button--active .svg-tabs__button-icon {\n  color: #d40f7d\n}\n\n.svg-tabs__button-icon {\n  width: 30px;\n  font-size: 20px;\n  line-height: 1em;\n  margin-right: 20px;\n  text-shadow: 0 0 1px transparent\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs__button-icon {\n    width: auto;\n    margin-right: 15px\n  }\n}\n\n.svg-tabs__button-inner {\n  display: flex;\n  align-items: center;\n  min-width: 120px;\n  pointer-events: none\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tabs__button-inner {\n    min-width: 0\n  }\n}\n\n.svg-tabs__filters {\n  margin-bottom: 60px\n}\n\n@media only screen and (min-width: 768px) {\n  .svg-tabs__filters {\n    display: none\n  }\n}\n\n.svg-tabs__reset {\n  position: absolute;\n  z-index: 1;\n  left: 0;\n  top: 0;\n  background: transparent;\n  color: #fff;\n  display: flex;\n  align-items: center;\n  font-size: 16px;\n  line-height: 18px;\n  opacity: 0;\n  pointer-events: none;\n  transition: .3s ease opacity\n}\n\n.svg-tabs__reset.visible {\n  opacity: 1;\n  pointer-events: auto\n}\n\n.svg-tabs__reset-icon {\n  color: #d40f7d;\n  font-size: 14px;\n  line-height: 1em;\n  margin-right: 8px\n}\n\n@media only screen and (min-width: 1180px) {\n  .svg-tabs__reset {\n    left: calc((100% - 1180px)/2 + 30px)\n  }\n}\n\n.svg-tab-panel {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tab-panel {\n    flex-direction: row\n  }\n}\n\n.svg-tab-panel__col {\n  background: #fff;\n  color: #000;\n  flex: 1;\n  display: flex;\n  justify-content: center;\n  position: relative\n}\n\n.svg-tab-panel__col:before,\n.svg-tab-panel__col:after {\n  content: \"\";\n  position: absolute;\n  background: #1b1a1a;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  z-index: 2;\n  transition: .5s ease\n}\n\n.svg-tab-panel__col:before {\n  transform: scaleX(1);\n  transform-origin: right\n}\n\n.svg-tab-panel__col:after {\n  background: #00b5e2;\n  transform: scaleX(0);\n  transform-origin: left\n}\n\n.svg-tab-panel__col:last-of-type:before {\n  background: #fff\n}\n\n.svg-tab-panel__col:last-of-type:after {\n  background: #d40f7d\n}\n\n.svg-tab-panel__col--loaded:after {\n  animation: 1s cardReveal ease\n}\n\n.svg-tab-panel__col--loaded:before {\n  transform: scaleX(0);\n  transition-delay: .5s\n}\n\n.svg-tab-panel__col--loaded:last-of-type:after {\n  animation-delay: .25s\n}\n\n.svg-tab-panel__col--loaded:last-of-type:before {\n  transform: scaleX(0);\n  transition-delay: .75s\n}\n\n.svg-tab-panel__col--info {\n  background: #1b1a1a;\n  color: #fff\n}\n\n.svg-tab-panel__info,\n.svg-tab-panel__links {\n  width: 100%;\n  transform: translateY(30px);\n  opacity: 0;\n  transition: .5s ease;\n  transition-property: opacity, transform;\n  position: absolute;\n  transition-delay: 0s;\n  pointer-events: none;\n  padding: 40px 15px\n}\n\n@media only screen and (min-width: 768px) {\n\n  .svg-tab-panel__info,\n  .svg-tab-panel__links {\n    padding: 55px 30px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .svg-tab-panel__info,\n  .svg-tab-panel__links {\n    padding: 70px 30px 100px;\n    left: auto;\n    max-width: 700px\n  }\n}\n\n.svg-tab-panel__info--active,\n.svg-tab-panel__links--active {\n  display: block;\n  transform: translateY(0);\n  opacity: 1;\n  position: relative;\n  transition-delay: .5s;\n  left: 0;\n  pointer-events: auto\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tab-panel__links {\n    padding: 110px 30px 100px\n  }\n}\n\n.svg-tab-panel__list {\n  display: flex;\n  flex-direction: column\n}\n\n.svg-tab-panel__item {\n  display: flex\n}\n\n.svg-tab-panel__link {\n  color: currentColor;\n  font-size: 16px;\n  line-height: 30px;\n  padding-bottom: 10px\n}\n\n.svg-tab-panel__link-icon {\n  color: #d40f7d;\n  line-height: 1em;\n  margin-top: 2px;\n  margin-left: 20px;\n  font-size: 10px;\n  display: inline-block;\n  transition: .2s ease;\n  transition-property: transform\n}\n\n.svg-tab-panel__link-text {\n  opacity: .54;\n  transition: .2s ease opacity\n}\n\n.svg-tab-panel__link:hover .svg-tab-panel__link-icon,\n.svg-tab-panel__link:focus .svg-tab-panel__link-icon {\n  transform: translateX(3px)\n}\n\n.svg-tab-panel__link:hover .svg-tab-panel__link-text,\n.svg-tab-panel__link:focus .svg-tab-panel__link-text {\n  opacity: 1\n}\n\n.svg-tab-panel__icon {\n  font-size: 28px;\n  line-height: 1em;\n  margin-bottom: 10px;\n  color: #d40f7d;\n  display: flex\n}\n\n@media only screen and (min-width: 1024px) {\n  .svg-tab-panel__icon {\n    margin-bottom: 15px\n  }\n}\n\n.responsive-map {\n  display: flex;\n  height: 350px\n}\n\n@media only screen and (min-width: 768px) {\n  .responsive-map {\n    height: 500px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .responsive-map {\n    height: 700px\n  }\n}\n\n.responsive-map__canvas {\n  width: 100%;\n  color: #000\n}\n\n.icon-card {\n  background: #1b1a1a;\n  flex: 1 1 auto;\n  border-radius: 10px;\n  margin: 10px;\n  color: #fff;\n  display: flex;\n  flex-direction: column;\n  justify-content: center;\n  align-items: center;\n  overflow: hidden;\n  position: relative\n}\n\n.icon-card:before {\n  content: \"\";\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  background: #d8d8d8;\n  opacity: 0;\n  transition: .3s ease opacity\n}\n\n@media only screen and (min-width: 1024px) {\n  .icon-card {\n    margin: 0 10px\n  }\n\n  .icon-card:hover:before,\n  .icon-card:focus:before {\n    opacity: .08\n  }\n\n  .icon-card:hover .icon-card__button-text,\n  .icon-card:focus .icon-card__button-text {\n    opacity: 1\n  }\n}\n\n.icon-card__icon {\n  margin-top: 65px;\n  margin-bottom: 10px;\n  font-size: 50px;\n  position: relative\n}\n\n.icon-card__title {\n  text-align: center;\n  position: relative\n}\n\n.icon-card__button {\n  margin-top: 16px;\n  position: relative;\n  margin-bottom: 60px;\n  min-width: 182px\n}\n\n.icon-card__button-text {\n  opacity: .54;\n  transition: .3s ease opacity\n}\n\n.details {\n  margin-bottom: 35px\n}\n\n.details__title {\n  font-size: 10px;\n  line-height: 12px;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  margin-bottom: 3px\n}\n\n.details__description {\n  margin-bottom: 0\n}\n\n.details__extra-info {\n  border-top: 1px solid #1b1a1a;\n  border-bottom: 1px solid #1b1a1a;\n  padding: 10px 0;\n  margin-bottom: 20px\n}\n\n.details__categories {\n  display: flex;\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .details__categories {\n    margin-bottom: 30px\n  }\n}\n\n.details__categories-item {\n  font-size: 10px;\n  line-height: 12px;\n  color: #9b9b9b;\n  padding: 0 12px;\n  border-left: 1px solid #1b1a1a;\n  border-right: 1px solid #1b1a1a\n}\n\n.details__categories-item:first-child {\n  border-left: none;\n  padding-left: 0\n}\n\n.details__categories-item:last-child {\n  border-right: none;\n  padding-right: 0\n}\n\n.details__content {\n  max-height: 180px;\n  overflow: hidden;\n  position: relative;\n  margin-bottom: 20px;\n  transition: .3s ease;\n  transition-property: max-height\n}\n\n@media only screen and (min-width: 1024px) {\n  .details__content {\n    margin-bottom: 40px\n  }\n}\n\n.details__content:after {\n  content: \"\";\n  position: absolute;\n  bottom: 0;\n  left: 0;\n  width: 100%;\n  height: 120px;\n  background: linear-gradient(to top, #0A0A0A 0%, rgba(10, 10, 10, 0) 100%);\n  transition: .3s ease;\n  transition-property: opacity\n}\n\n@media only screen and (min-width: 1024px) {\n  .details__content {\n    max-height: 270px\n  }\n\n  .details__content:after {\n    height: 130px\n  }\n}\n\n.details__content--expanded:after {\n  opacity: 0\n}\n\n.details__trigger {\n  background: transparent;\n  padding: 0;\n  color: #d40f7d;\n  border: none;\n  display: flex;\n  align-items: center;\n  font-size: 16px;\n  line-height: 18px\n}\n\n.details__trigger-icon {\n  font-size: 8px;\n  margin-top: 5px;\n  margin-left: 12px;\n  transform-origin: center center\n}\n\n.details__trigger:hover,\n.details__trigger:focus {\n  outline: none;\n  color: #d40f7d\n}\n\n.details__trigger--expanded .details__trigger-icon {\n  transform: rotate(180deg)\n}\n\n.sticky-nav {\n  position: fixed;\n  z-index: 7;\n  bottom: 0;\n  left: 0;\n  background: #fff;\n  width: 100%;\n  transform: translateY(100%);\n  transition: transform .3s ease\n}\n\n.sticky-nav__list {\n  display: flex;\n  padding: 14px 0\n}\n\n.sticky-nav__item {\n  flex: 1;\n  border-right: 1px solid #d8d8d8\n}\n\n.sticky-nav__item:last-child {\n  border-right: none\n}\n\n.sticky-nav__link {\n  display: flex;\n  align-items: center;\n  justify-content: center;\n  color: #000;\n  padding: 5px 10px\n}\n\n.sticky-nav__icon {\n  font-size: 20px;\n  display: inline-flex;\n  color: #d40f7d;\n  margin-right: 6px\n}\n\n.sticky-nav__text {\n  font-size: 13px;\n  line-height: 16px\n}\n\n@media only screen and (min-width: 1024px) {\n  .sticky-nav {\n    display: none\n  }\n}\n\n.sticky-nav.stuck {\n  transform: translateY(0)\n}\n\n.accordion__trigger {\n  background: transparent;\n  padding: 15px 0;\n  color: currentColor;\n  width: 100%;\n  font-size: 16px;\n  line-height: 26px;\n  display: flex;\n  flex-direction: column;\n  align-items: flex-start\n}\n\n@media only screen and (min-width: 768px) {\n  .accordion__trigger {\n    flex-direction: row;\n    justify-content: space-between\n  }\n}\n\n.accordion__trigger:focus {\n  outline: none\n}\n\n.accordion__trigger:hover .accordion__trigger-text,\n.accordion__trigger--expanded .accordion__trigger-text {\n  transform: none;\n  opacity: 1\n}\n\n.accordion__trigger--expanded .accordion__icon-wrapper:after {\n  transform: rotate(0deg)\n}\n\n.accordion__trigger-text {\n  white-space: nowrap\n}\n\n@media only screen and (min-width: 768px) {\n  .accordion__trigger-text {\n    opacity: 0;\n    transform: translateX(-15px);\n    transition: .2s ease;\n    transition-property: opacity, transform;\n    visibility: hidden\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .accordion__trigger-text {\n    visibility: visible\n  }\n}\n\n.accordion__title {\n  margin-bottom: 15px;\n  text-align: left;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n@media only screen and (min-width: 768px) {\n  .accordion__title {\n    margin-bottom: 0\n  }\n}\n\n.accordion__icon {\n  color: #d40f7d;\n  display: flex;\n  align-items: center\n}\n\n.accordion__icon-wrapper {\n  width: 18px;\n  height: 18px;\n  position: relative;\n  display: flex;\n  margin-left: 10px;\n  align-items: center;\n  justify-content: center\n}\n\n@media only screen and (min-width: 768px) {\n  .accordion__icon-wrapper {\n    margin-left: 20px\n  }\n}\n\n.accordion__icon-wrapper:before,\n.accordion__icon-wrapper:after {\n  content: \"\";\n  width: 100%;\n  position: absolute;\n  background: #d40f7d;\n  transform-origin: center;\n  height: 2px;\n  border-radius: 1.5px;\n  transition: .2s ease;\n  transition-property: transform\n}\n\n.accordion__icon-wrapper:after {\n  transform: rotate(-90deg)\n}\n\n.accordion__content {\n  max-height: 0;\n  overflow: hidden;\n  transition: .3s ease;\n  opacity: 0;\n  transition-property: max-height, opacity;\n  display: flex;\n  flex-direction: column\n}\n\n.accordion__content-inner {\n  margin-bottom: 20px\n}\n\n.accordion__content--expanded {\n  opacity: 1\n}\n\n.sidebar-section {\n  position: relative\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar-section {\n    display: flex;\n    align-items: flex-start;\n    justify-content: space-between;\n    padding-left: calc((100% - 1180px)/2)\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar-section__wrapper {\n    width: 785px;\n    max-width: calc(100% - 420px);\n    margin: 0\n  }\n}\n\n.sidebar-section__panel {\n  display: none\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar-section__panel {\n    display: block;\n    width: 405px;\n    flex: 0 0 405px;\n    background: #000;\n    position: -webkit-sticky;\n    position: sticky;\n    top: 0;\n    padding: 40px;\n    border-top-left-radius: 24px;\n    border-bottom-left-radius: 24px;\n    overflow: hidden\n  }\n}\n\n.sidebar-section__panel--bottom {\n  position: absolute;\n  bottom: 0;\n  top: auto\n}\n\n.sidebar-section__panel--plain {\n  background: transparent;\n  padding: 0\n}\n\n.sidebar-section.hidden {\n  display: none\n}\n\n.sidebar__main-heading {\n  margin-bottom: 5px\n}\n\n.sidebar__details {\n  color: #9b9b9b;\n  font-size: 12px;\n  line-height: 14px;\n  margin-bottom: 20px\n}\n\n.sidebar__status {\n  font-size: 16px;\n  line-height: 18px;\n  display: flex;\n  align-items: center\n}\n\n.sidebar__status-icon {\n  display: inline-flex;\n  font-size: 20px;\n  line-height: 1em;\n  margin-right: 10px;\n  color: #d40f7d\n}\n\n.sidebar__headings {\n  margin-bottom: 35px;\n  width: 100%\n}\n\n@media only screen and (min-width: 1024px) {\n  .sidebar__headings {\n    margin-bottom: 60px\n  }\n}\n\n.sidebar__sub-heading {\n  margin-bottom: 35px\n}\n\n.sidebar__thumbnail {\n  margin-bottom: 30px\n}\n\n.sidebar__thumbnail svg {\n  width: 100%;\n  height: auto\n}\n\n.sidebar__download-title {\n  font-size: 10px;\n  line-height: 12px;\n  color: #9b9b9b;\n  margin-bottom: 5px;\n  display: block\n}\n\n.sidebar__download-links {\n  display: flex;\n  flex-direction: column;\n  margin-bottom: 60px\n}\n\n.sidebar__download-button {\n  margin-bottom: 20px\n}\n\n.sidebar__download-link {\n  justify-content: center\n}\n\n.sidebar__social-list {\n  margin-top: 20px;\n  display: flex;\n  align-items: center\n}\n\n.sidebar__social-item {\n  width: 40px;\n  height: 40px;\n  margin-right: 20px\n}\n\n.sidebar__social-link {\n  display: flex;\n  width: 40px;\n  height: 40px;\n  align-items: center;\n  justify-content: center;\n  color: #fff;\n  font-size: 16px;\n  line-height: 1em;\n  box-shadow: inset 0 0 0 2px #fff;\n  border-radius: 50%;\n  transition: .3s ease;\n  transition-property: box-shadow\n}\n\n.sidebar__social-link:hover {\n  box-shadow: inset 0 0 0 3px #d40f7d\n}\n\n.sidebar__social-icon {\n  display: flex\n}\n\n.social-widget {\n  margin-top: 40px\n}\n\n.social-widget__wrapper {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .social-widget__wrapper {\n    flex-direction: row\n  }\n}\n\n.social-widget__thumbnail {\n  position: relative;\n  margin-bottom: 20px;\n  height: calc(75vw - 30px);\n  width: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .social-widget__thumbnail {\n    height: 300px;\n    flex: 0 0 50%;\n    margin-bottom: 0\n  }\n}\n\n.social-widget__thumbnail-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.social-widget__embed {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .social-widget__embed {\n    flex: 0 0 50%;\n    justify-content: center;\n    padding: 10px 0 10px 25px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .social-widget__embed {\n    padding-left: 55px\n  }\n}\n\n.social-widget__content {\n  margin-bottom: 15px\n}\n\n.social-widget__content p {\n  font-size: 16px;\n  line-height: 26px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  margin-bottom: 20px\n}\n\n.social-widget__content p:last-child {\n  margin-bottom: 0\n}\n\n.social-widget__content a {\n  color: #fff\n}\n\n.social-widget__profile {\n  margin-bottom: 20px;\n  display: flex;\n  flex-direction: row;\n  align-items: center;\n  color: #fff\n}\n\n.social-widget__profile-image {\n  width: 35px;\n  height: 35px;\n  border-radius: 50%;\n  overflow: hidden;\n  margin-right: 10px\n}\n\n.social-widget__profile-image-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.social-widget__profile-titles {\n  display: flex;\n  flex-direction: column\n}\n\n.social-widget__profile-main-title {\n  display: flex;\n  align-items: center;\n  font-size: 14px;\n  line-height: 17px;\n  margin-bottom: 0;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.social-widget__profile-sub-title {\n  font-size: 9px;\n  line-height: 11px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  color: #9b9b9b\n}\n\n.social-widget__verified {\n  display: none;\n  margin-left: 10px;\n  font-size: 12px;\n  color: #1da1f2\n}\n\n.social-widget__verified--true {\n  display: inline-flex\n}\n\n.social-widget__date {\n  font-size: 10px;\n  line-height: 12px\n}\n\n.inner-banner__content {\n  padding: 180px 0 40px 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .inner-banner__heading {\n    margin-bottom: 40px\n  }\n}\n\n.button-list {\n  display: flex;\n  align-items: center;\n  flex-direction: column;\n  flex-wrap: wrap;\n  justify-content: center\n}\n\n@media only screen and (min-width: 768px) {\n  .button-list {\n    flex-direction: row;\n    flex-wrap: wrap\n  }\n}\n\n.button-list__item {\n  width: 100%;\n  margin: 0 0 20px;\n  display: flex;\n  justify-content: center\n}\n\n.button-list__item:last-of-type {\n  margin-bottom: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .button-list__item {\n    width: auto;\n    margin: 0 10px 25px;\n    margin-bottom: 0;\n    margin-bottom: initial\n  }\n}\n\n.button-list--alt {\n  justify-content: flex-start\n}\n\n@media only screen and (min-width: 768px) {\n  .button-list--alt .button-list__item {\n    margin: 0 20px 20px 0\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .button-list--no-margin .button-list__item {\n    margin-bottom: 0\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .button-list--no-margin-bottom .button-list__item:last-of-type {\n    margin-bottom: 0\n  }\n}\n\n.button-list--inner {\n  justify-content: flex-start\n}\n\n.button-list--inner .button-list__item {\n  padding: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .button-list--inner .button-list__item {\n    margin: 0 20px 20px 0\n  }\n}\n\n.image-strip {\n  height: 700px;\n  width: 100%\n}\n\n.image-strip__image {\n  width: 100%;\n  height: auto;\n  max-height: 725px;\n  display: flex;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.video-container {\n  padding-top: 56.25%;\n  position: relative;\n  overflow: hidden\n}\n\n.video-container iframe {\n  border: 0;\n  height: 100%;\n  left: 0;\n  position: absolute;\n  top: 0;\n  width: 100%\n}\n\n.inner-accordion {\n  margin-bottom: 20px;\n  transition: box-shadow .3s ease;\n  position: relative\n}\n\n.inner-accordion:before {\n  content: \"\";\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  box-shadow: 0 2px 20px 0 rgba(236, 236, 236, .9);\n  z-index: -1;\n  opacity: .5;\n  transition: .3s ease opacity\n}\n\n.inner-accordion:hover:before {\n  opacity: 1\n}\n\n.inner-accordion__trigger {\n  padding: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .inner-accordion__trigger {\n    padding: 30px 40px\n  }\n}\n\n.inner-accordion__title {\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  color: #000\n}\n\n.inner-accordion__content-inner {\n  padding: 0 15px 40px\n}\n\n@media only screen and (min-width: 1024px) {\n  .inner-accordion__content-inner {\n    padding: 0 40px 40px\n  }\n}\n\n.inner-accordion.accordion--expanded:before {\n  opacity: 1\n}\n\n.listing__wrapper {\n  display: flex;\n  flex-direction: column;\n  align-items: center\n}\n\n.listing__grid {\n  display: flex;\n  flex-direction: column;\n  width: 100%;\n  position: relative;\n  min-height: 300px\n}\n\n.listing__grid:after {\n  content: \"\";\n  flex: 0 0 calc(33.33333% - 25px)\n}\n\n@media only screen and (min-width: 768px) {\n  .listing__grid {\n    flex-direction: row;\n    flex-wrap: wrap;\n    width: 100%;\n    justify-content: space-between\n  }\n}\n\n.async-search__form {\n  display: flex;\n  flex-direction: row;\n  flex-wrap: wrap\n}\n\n.async-search__col {\n  width: 100%;\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .async-search__col {\n    margin-bottom: 40px;\n    flex: 1 0 auto;\n    width: auto;\n    display: flex;\n    justify-content: flex-start\n  }\n}\n\n.async-search__col--search {\n  order: 3;\n  width: calc(100% - 100px)\n}\n\n.async-search__col:nth-child(3) {\n  order: 2;\n  width: 100px\n}\n\n@media only screen and (min-width: 768px) {\n  .async-search__col:nth-child(1) {\n    order: 1\n  }\n\n  .async-search__col:nth-child(2) {\n    order: 2;\n    width: auto;\n    justify-content: flex-end;\n    align-items: flex-end\n  }\n\n  .async-search__col:nth-child(3) {\n    order: 4;\n    align-items: flex-end;\n    justify-content: flex-end\n  }\n\n  .async-search__col:nth-child(4) {\n    order: 3\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .async-search__col {\n    flex: 0 0 50%;\n    width: 50%\n  }\n\n  .async-search__col:nth-child(3) {\n    flex: 0 0 20%;\n    width: 20%\n  }\n\n  .async-search__col:nth-child(4) {\n    flex: 0 0 80%;\n    width: 80%\n  }\n}\n\n.async-search__col--hidden-mobile {\n  display: none\n}\n\n@media only screen and (min-width: 768px) {\n  .async-search__col--hidden-mobile {\n    display: flex\n  }\n}\n\n.async-search__tabs,\n.async-search__tags {\n  border: none;\n  box-shadow: none;\n  margin: 0\n}\n\n@media only screen and (min-width: 768px) {\n\n  .async-search__tabs,\n  .async-search__tags {\n    display: flex;\n    align-items: center;\n    flex-wrap: wrap\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .async-search__tags {\n    margin-bottom: -10px\n  }\n}\n\n.async-search__label {\n  font-size: 20px;\n  line-height: 30px;\n  margin-bottom: 20px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n@media only screen and (min-width: 768px) {\n  .async-search__label {\n    font-size: 10px;\n    line-height: 12px;\n    margin-bottom: 10px;\n    font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif\n  }\n}\n\n.tabs {\n  position: relative\n}\n\n.tabs__panel {\n  display: flex;\n  flex-direction: column;\n  transition: opacity .22s ease-out;\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  opacity: 0;\n  pointer-events: none;\n  z-index: 0\n}\n\n.tabs__panel.active {\n  transition-delay: 120ms;\n  opacity: 1;\n  pointer-events: all;\n  z-index: 1;\n  position: absolute\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__panel {\n    flex-direction: row;\n    flex-wrap: wrap;\n    justify-content: space-between;\n    align-items: flex-start\n  }\n}\n\n.tabs__panel:after {\n  content: \"\";\n  flex: 0 0 calc(33.33333% - 25px)\n}\n\n.tabs__nav {\n  width: 100%;\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__nav {\n    margin-bottom: 0\n  }\n}\n\n.tabs__list {\n  display: flex;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__list {\n    flex-direction: row;\n    justify-content: center\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .tabs__item {\n    flex: 0 0 136px\n  }\n}\n\n.tabs__icon {\n  font-size: 20px;\n  margin-right: 20px;\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs__link,\n.radio-tab__label,\n.svg-tabs__button {\n  background: transparent;\n  border-bottom: 1px solid #4a4a4a;\n  padding: 18px 0;\n  color: #9b9b9b;\n  width: 100%;\n  font-size: 16px;\n  line-height: 18px;\n  text-shadow: 0 0 1px transparent;\n  transition: .2s ease;\n  transition-property: text-shadow, color;\n  display: flex;\n  align-items: center;\n  justify-content: center\n}\n\n@media only screen and (min-width: 768px) {\n\n  .tabs__link,\n  .radio-tab__label,\n  .svg-tabs__button {\n    padding: 40px 10px\n  }\n}\n\n.tabs__link--active,\n.radio-tab__input:checked+.radio-tab__label,\n.svg-tabs__button--active {\n  position: relative\n}\n\n.tabs__link:hover,\n.radio-tab__label:hover,\n.svg-tabs__button:hover,\n.tabs__link:focus,\n.radio-tab__label:focus,\n.svg-tabs__button:focus {\n  text-shadow: 0 0 1px #fff;\n  border-bottom: 1px solid #4a4a4a;\n  outline: none\n}\n\n.tabs__link:hover .tabs__icon,\n.radio-tab__label:hover .tabs__icon,\n.svg-tabs__button:hover .tabs__icon,\n.tabs__link:focus .tabs__icon,\n.radio-tab__label:focus .tabs__icon,\n.svg-tabs__button:focus .tabs__icon {\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs .active .tabs__link,\n.tabs .active .radio-tab__label,\n.tabs .active .svg-tabs__button {\n  text-shadow: 0 0 1px #fff;\n  border-width: 2px;\n  border-color: #d40f7d;\n  color: #fff\n}\n\n.tabs .active .tabs__link .tabs__icon,\n.tabs .active .radio-tab__label .tabs__icon,\n.tabs .active .svg-tabs__button .tabs__icon {\n  color: #d40f7d;\n  text-shadow: 0 0 1px transparent\n}\n\n.tabs .active .tabs__link:hover,\n.tabs .active .radio-tab__label:hover,\n.tabs .active .svg-tabs__button:hover,\n.tabs .active .tabs__link:focus,\n.tabs .active .radio-tab__label:focus,\n.tabs .active .svg-tabs__button:focus {\n  border-width: 2px;\n  border-color: #d40f7d;\n  outline: none\n}\n\n.tabs--fluid .tabs__item {\n  flex: auto\n}\n\n.tabs--fluid .tabs__link,\n.tabs--fluid .radio-tab__label,\n.tabs--fluid .svg-tabs__button {\n  padding-left: 25px;\n  padding-right: 25px\n}\n\n.radio-tab {\n  position: relative;\n  min-width: 136px\n}\n\n.radio-tab__input {\n  opacity: 0;\n  pointer-events: none;\n  position: absolute\n}\n\n.radio-tab__label {\n  cursor: pointer\n}\n\n.radio-tag {\n  position: relative;\n  margin-bottom: 10px\n}\n\n.radio-tag:last-child {\n  margin-bottom: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .radio-tag {\n    margin-right: 10px\n  }\n\n  .radio-tag:last-child {\n    margin-bottom: 10px;\n    margin-right: 0\n  }\n}\n\n.radio-tag__input {\n  opacity: 0;\n  pointer-events: none;\n  position: absolute\n}\n\n.radio-tag__label {\n  cursor: pointer;\n  height: 48px;\n  border-radius: 24px;\n  border: 1px solid #4a4a4a;\n  display: flex;\n  align-items: center;\n  color: #4a4a4a;\n  transition: .3s ease border-color, .3s ease color\n}\n\n.radio-tag__label:hover {\n  border-color: #fff;\n  color: #fff\n}\n\n@media only screen and (min-width: 768px) {\n  .radio-tag__label {\n    height: 28px;\n    border-radius: 14px\n  }\n}\n\n.radio-tag__label:before {\n  flex: 0 0 48px;\n  height: 24px;\n  font-size: 24px;\n  line-height: 1em;\n  text-align: center\n}\n\n@media only screen and (min-width: 768px) {\n  .radio-tag__label:before {\n    height: 12px;\n    font-size: 12px;\n    flex: 0 0 28px\n  }\n}\n\n.radio-tag__label--icon .radio-tag__text {\n  padding-left: 0\n}\n\n.radio-tag__text {\n  flex: 1 0 auto;\n  text-align: center;\n  padding: 0 48px;\n  font-size: 16px;\n  line-height: 18px\n}\n\n@media only screen and (min-width: 768px) {\n  .radio-tag__text {\n    padding: 0 28px;\n    font-size: 12px;\n    line-height: 15px\n  }\n}\n\n.radio-tag__input:checked+.radio-tag__label {\n  border-color: #fff;\n  color: #000;\n  background: #fff\n}\n\nbutton {\n  -webkit-user-select: none;\n  -ms-user-select: none;\n  user-select: none;\n  display: inline-flex;\n  vertical-align: middle;\n  align-items: center;\n  justify-content: center;\n  font: inherit;\n  cursor: pointer;\n  overflow: visible;\n  border: none;\n  border-radius: 0\n}\n\nbutton,\nbutton:hover,\nbutton:active,\nbutton:focus {\n  text-decoration: none\n}\n\nbutton:focus,\nbutton:active {\n  background-color: inherit;\n  color: inherit\n}\n\nbutton::-moz-focus-inner {\n  border: 0;\n  padding: 0\n}\n\n.button,\n.search-input__input,\n.search-popup__submit {\n  transition: opacity .2s ease, background .2s ease, color .2s ease, border .2s ease, box-shadow .2s ease, text-shadow .2s ease;\n  height: 48px;\n  border: 1px solid transparent;\n  border-radius: 24px;\n  display: inline-flex;\n  justify-content: center;\n  align-items: center;\n  min-width: 200px;\n  font-size: 16px;\n  color: #fff;\n  background: transparent;\n  padding: 0 15px;\n  text-shadow: 0 0 1px transparent;\n  box-shadow: inset 0 0 0 2px #d40f7d\n}\n\n@media only screen and (min-width: 480px) {\n\n  .button,\n  .search-input__input,\n  .search-popup__submit {\n    min-width: 260px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .button,\n  .search-input__input,\n  .search-popup__submit {\n    padding: 0 30px\n  }\n}\n\n.button:hover,\n.search-input__input:hover,\n.search-popup__submit:hover {\n  box-shadow: inset 0 0 0 3px #d40f7d;\n  text-shadow: 0 0 1px #fff\n}\n\n.button--alternative {\n  color: #000\n}\n\n.button--secondary {\n  border-color: #000;\n  color: #000;\n  background: transparent;\n  box-shadow: none\n}\n\n.button--tertiary {\n  color: #000;\n  background: transparent;\n  box-shadow: inset 0 0 0 2px #000\n}\n\n.button--tertiary:hover {\n  box-shadow: inset 0 0 0 3px #000\n}\n\n.button--quaternary {\n  color: #000\n}\n\n.button--dark {\n  background: rgba(0, 0, 0, .4)\n}\n\n.button--ghost {\n  box-shadow: inset 0 0 0 2px #fff\n}\n\n.button--ghost:hover {\n  box-shadow: inset 0 0 0 3px #fff\n}\n\n.button--disabled {\n  color: #9b9b9b;\n  cursor: not-allowed;\n  box-shadow: inset 0 0 0 2px #9b9b9b\n}\n\n.button--disabled:hover {\n  color: #9b9b9b;\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  text-shadow: 0 0 1px transparent;\n  box-shadow: inset 0 0 0 2px #9b9b9b\n}\n\n.button--icon,\n.search-input__input {\n  width: 100%;\n  min-width: 210px;\n  text-shadow: 0 0 0 transparent;\n  align-items: center\n}\n\n.button--icon .button__icon,\n.search-input__input .button__icon {\n  font-size: 18px;\n  color: #d40f7d;\n  display: inline-flex\n}\n\n.button--icon .button__icon--left,\n.search-input__input .button__icon--left {\n  margin-right: 18px\n}\n\n.button--icon .button__icon--right,\n.search-input__input .button__icon--right {\n  margin-left: 18px\n}\n\n.button--icon:hover .button__icon,\n.search-input__input:hover .button__icon {\n  text-shadow: 0 0 0 transparent\n}\n\n@media only screen and (min-width: 768px) {\n\n  .button--icon,\n  .search-input__input {\n    width: auto\n  }\n}\n\n.button--short {\n  min-width: 215px\n}\n\n.button--full-width-mobile {\n  width: 100%\n}\n\n.button--search,\n.search-popup__submit {\n  background: transparent;\n  font-size: 16px;\n  line-height: 18px;\n  width: 100%;\n  transition: .1s ease;\n  transition-property: transform;\n  transform-origin: center center;\n  margin-top: 30px\n}\n\n.button--search:focus,\n.search-popup__submit:focus {\n  outline: none;\n  transform: scale(0.9)\n}\n\n@media only screen and (min-width: 768px) {\n\n  .button--search,\n  .search-popup__submit {\n    border: none;\n    position: absolute;\n    right: 0;\n    bottom: 18px;\n    width: auto;\n    min-width: 80px;\n    margin-top: 0;\n    box-shadow: none;\n    transition: .2s ease;\n    transition-property: text-shadow;\n    padding: 0\n  }\n\n  .button--search:hover,\n  .search-popup__submit:hover {\n    box-shadow: none\n  }\n}\n\n@media only screen and (min-width: 768px)and (min-width: 1024px) {\n\n  .button--search:hover,\n  .search-popup__submit:hover {\n    text-shadow: 0 0 1px #d40f7d\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .button--auto {\n    min-width: 0\n  }\n}\n\n.button--hidden {\n  opacity: 0;\n  pointer-events: none\n}\n\n.search-input {\n  position: relative\n}\n\n@media only screen and (min-width: 768px) {\n  .search-input {\n    max-width: 260px\n  }\n}\n\n.search-input__input {\n  border: none;\n  padding: 0 96px 0 30px;\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  border-radius: 24px\n}\n\n.search-input__input::-webkit-input-placeholder {\n  color: #fff\n}\n\n.search-input__input::-moz-placeholder {\n  color: #fff\n}\n\n.search-input__input:-ms-input-placeholder {\n  color: #fff\n}\n\n.search-input__input:-moz-placeholder {\n  color: #fff\n}\n\n.search-input__submit {\n  position: absolute;\n  top: 0;\n  right: 0;\n  width: 96px;\n  height: 48px;\n  border-radius: 0 24px 24px 0;\n  background: transparent;\n  color: #d40f7d;\n  font-size: 20px;\n  line-height: 1em;\n  padding: 0\n}\n\n.view-toggle {\n  display: flex;\n  align-items: center;\n  height: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .view-toggle {\n    justify-content: flex-end;\n    height: auto\n  }\n}\n\n.view-toggle__item {\n  flex: 0 0 20px;\n  height: 20px;\n  display: inline-flex;\n  margin-left: 25px\n}\n\n@media only screen and (min-width: 768px) {\n  .view-toggle__item {\n    margin-left: 36px\n  }\n}\n\n.view-toggle__item:first-child {\n  margin-left: 0\n}\n\n.view-toggle__button {\n  background: transparent;\n  color: #fff;\n  padding: 0;\n  font-size: 20px;\n  line-height: 1em;\n  height: 100%;\n  opacity: .3;\n  transition: .3s ease opacity\n}\n\n.view-toggle__button.active {\n  opacity: 1\n}\n\n.sticky-trigger {\n  display: flex;\n  position: -webkit-sticky;\n  position: sticky;\n  left: 0;\n  bottom: 0;\n  background: #ececec;\n  width: 100%;\n  padding: 20px;\n  font-size: 13px;\n  line-height: 16px;\n  margin-top: 40px\n}\n\n.sticky-trigger__icon {\n  font-size: 20px;\n  line-height: 1em;\n  margin-right: 10px\n}\n\n@media only screen and (min-width: 768px) {\n  .sticky-trigger {\n    display: none\n  }\n}\n\n.sticky-trigger--modal {\n  position: absolute;\n  transform: translateY(100%);\n  transition: .3s ease transform\n}\n\n.sticky-trigger--modal.show {\n  transform: translateY(0)\n}\n\n.loading-indicator {\n  position: absolute;\n  top: calc(50% - 15px);\n  left: calc(50% - 30px);\n  transform-origin: left;\n  transform: scaleX(0);\n  width: 90px;\n  height: 30px;\n  background: #c4d600;\n  animation: 2s parentReveal ease infinite forwards\n}\n\n.loading-indicator--centered {\n  top: 100px\n}\n\n.loading-indicator--reduced {\n  top: auto;\n  bottom: -40px\n}\n\n.loading-indicator:before,\n.loading-indicator:after {\n  content: \"\";\n  position: absolute;\n  top: -20px;\n  left: -50px;\n  width: 100%;\n  height: 100%;\n  background: #00b5e2;\n  transform-origin: left;\n  transform: scaleX(0);\n  animation: 2s childReveal ease infinite forwards;\n  opacity: .8\n}\n\n.loading-indicator:after {\n  left: -20px;\n  top: 20px;\n  background: #d40f7d\n}\n\n.loading-indicator--page {\n  position: fixed;\n  z-index: 9;\n  width: 90px !important\n}\n\n.list-link {\n  flex: 0 0 100%;\n  width: 100%;\n  max-width: 1130px;\n  margin: 0 auto;\n  display: flex;\n  flex-direction: column;\n  align-items: flex-start;\n  padding: 30px 20px;\n  border-bottom: 1px solid #1b1a1a;\n  position: relative;\n  min-height: 130px\n}\n\n@media only screen and (min-width: 768px) {\n  .list-link {\n    flex-direction: row;\n    align-items: center\n  }\n}\n\n.list-link:last-of-type {\n  margin-bottom: 80px\n}\n\n.list-link:before {\n  content: \"\";\n  position: absolute;\n  width: 100%;\n  height: 100%;\n  z-index: -1;\n  background: #1b1a1a;\n  top: 0;\n  left: 0;\n  transform: scaleY(0);\n  transform-origin: bottom;\n  transition: .3s ease\n}\n\n.list-link:hover:before {\n  transform: scaleY(1)\n}\n\n.list-link__heading {\n  margin-bottom: 15px\n}\n\n.list-link__heading:only-child {\n  margin-bottom: 0\n}\n\n.list-link__heading-link {\n  color: #fff\n}\n\n.list-link__heading-link span {\n  display: none\n}\n\n.list-link__list {\n  display: block\n}\n\n@media only screen and (min-width: 768px) {\n  .list-link__list {\n    display: flex;\n    align-items: flex-start;\n    flex-wrap: wrap;\n    margin-bottom: -15px\n  }\n}\n\n.list-link__title {\n  font-size: 10px;\n  line-height: 12px;\n  font-family: \"Helvetica Neue LT W01_71488914\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.list-link__item {\n  margin: 0 80px 15px 0;\n  display: flex;\n  flex-direction: column;\n  max-width: 330px\n}\n\n.list-link__item:last-child {\n  margin-right: 0\n}\n\n.list-link__item-description {\n  font-size: 14px;\n  line-height: 17px;\n  color: #9b9b9b\n}\n\n.list-link__content {\n  flex: 1 1 auto\n}\n\n@media only screen and (min-width: 768px) {\n  .list-link__content {\n    padding-right: 50px\n  }\n}\n\n.list-link__ctas {\n  display: flex;\n  justify-content: flex-end;\n  flex: 1 0 auto;\n  margin-top: 20px\n}\n\n@media only screen and (min-width: 768px) {\n  .list-link__ctas {\n    flex: 0 0 400px;\n    margin-top: 0\n  }\n}\n\n.list-link__ctas .inline-ctas__cta {\n  width: 140px;\n  margin-right: 30px\n}\n\n.list-link__ctas .inline-ctas__cta:last-child {\n  width: auto;\n  margin-right: 0\n}\n\n.list-link--grey .list-link__heading-link,\n.list-link--grey .list-link__title {\n  color: #9b9b9b\n}\n\n.pagination--hidden {\n  opacity: 0;\n  pointer-events: none\n}\n\n.text-link {\n  font-size: 16px;\n  line-height: 21px\n}\n\n.text-link__icon {\n  font-size: 10px;\n  margin-left: 10px;\n  color: #d40f7d\n}\n\n.text-link:hover .text-link__icon {\n  animation: arrowBounce 1s infinite cubic-bezier(0.445, 0.05, 0.55, 0.95)\n}\n\n.text-link--dark {\n  color: #000\n}\n\n.text-link--light {\n  color: #fff\n}\n\n.search-banner__heading {\n  margin-bottom: 47px\n}\n\n.list-item {\n  display: inline-flex;\n  align-items: center;\n  margin-bottom: 15px\n}\n\n@media only screen and (min-width: 768px) {\n  .list-item {\n    width: calc(33% - 40px);\n    margin-right: 40px;\n    margin-bottom: 25px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .list-item {\n    width: calc(25% - 40px)\n  }\n}\n\n.list-item__icon {\n  width: 30px;\n  height: 30px;\n  margin-right: 10px;\n  display: flex;\n  align-items: center;\n  justify-content: center\n}\n\n@media only screen and (min-width: 1024px) {\n  .list-item__icon {\n    width: 60px;\n    height: 60px;\n    margin-right: 20px\n  }\n}\n\n.list-item__icon-source {\n  position: absolute;\n  font-size: 30px\n}\n\n@media only screen and (min-width: 1024px) {\n  .list-item__icon-source {\n    font-size: 60px\n  }\n}\n\n.list-item__icon--primary {\n  color: #d40f7d\n}\n\n.list-item__icon--secondary {\n  font-size: 15px\n}\n\n@media only screen and (min-width: 1024px) {\n  .list-item__icon--secondary {\n    font-size: 30px\n  }\n}\n\n.list-item__text {\n  color: #9b9b9b;\n  font-size: 16px;\n  line-height: 30px\n}\n\n.items-list {\n  display: flex;\n  flex-wrap: wrap;\n  flex-direction: column\n}\n\n@media only screen and (min-width: 768px) {\n  .items-list {\n    flex-direction: row;\n    width: calc(100% + 40px)\n  }\n}\n\n.section-heading {\n  margin-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .section-heading {\n    display: inline-flex;\n    align-items: center;\n    margin-bottom: 55px\n  }\n}\n\n.section-heading__icon {\n  font-size: 35px;\n  margin: 0 0 15px\n}\n\n@media only screen and (min-width: 1024px) {\n  .section-heading__icon {\n    font-size: 45px;\n    margin: 0 35px 0 0\n  }\n}\n\n.section-heading__heading {\n  margin-bottom: 0;\n  font-size: 26px\n}\n\n@media only screen and (min-width: 1024px) {\n  .section-heading__heading {\n    font-size: 28px\n  }\n}\n\n.section-heading--dark .section-heading__heading,\n.section-heading--dark .section-heading__icon {\n  color: #000\n}\n\n.help-accordion {\n  margin-bottom: 30px;\n  transition: box-shadow .3s ease;\n  box-shadow: 0 2px 4px 0 rgba(236, 236, 236, .3)\n}\n\n@media only screen and (min-width: 1024px) {\n  .help-accordion {\n    margin-bottom: 20px\n  }\n}\n\n.help-accordion:hover {\n  box-shadow: 0 2px 20px 0 rgba(236, 236, 236, .9)\n}\n\n.help-accordion__trigger {\n  padding: 15px\n}\n\n@media only screen and (min-width: 1024px) {\n  .help-accordion__trigger {\n    padding: 30px 37px\n  }\n}\n\n.help-accordion__title {\n  font-family: \"Helvetica Neue LT W01_41488878\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  color: #000\n}\n\n.help-accordion__content-inner {\n  padding: 0;\n  z-index: 1;\n  margin-bottom: 0\n}\n\n@media only screen and (min-width: 1024px) {\n  .help-accordion__content-inner {\n    padding: 0 37px 0\n  }\n}\n\n.help-accordion__bottom {\n  position: relative;\n  display: flex;\n  align-items: center;\n  padding: 40px 0;\n  margin-top: 60px\n}\n\n.help-accordion__bottom:before {\n  position: absolute;\n  content: \"\";\n  background-color: rgba(216, 216, 216, .2);\n  right: -37px;\n  top: 0;\n  width: 100vw;\n  height: 100%;\n  z-index: -1\n}\n\n.help-accordion__bottom-icon {\n  margin-right: 20px;\n  color: #9b9b9b;\n  font-size: 30px\n}\n\n.help-accordion__bottom-text {\n  color: #9b9b9b;\n  font-size: 15px;\n  line-height: 30px;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.help-accordion__bottom-link {\n  color: #d40f7d\n}\n\n.help-accordion__bottom-link:hover {\n  text-decoration: underline\n}\n\n.help-accordion__heading {\n  font-size: 14px;\n  line-height: 16px;\n  color: #d40f7d;\n  margin-bottom: 20px\n}\n\n.download-card {\n  background: #1b1a1a;\n  flex: 1 1 auto;\n  border-radius: 10px;\n  margin: 10px;\n  color: #fff;\n  display: flex;\n  flex-direction: column;\n  justify-content: center;\n  align-items: center;\n  padding: 30px\n}\n\n@media only screen and (min-width: 1024px) {\n  .download-card {\n    margin: 0 10px;\n    padding: 30px 40px\n  }\n}\n\n.download-card__image {\n  margin-bottom: 30px;\n  width: 100%;\n  display: flex\n}\n\n@media only screen and (min-width: 1024px) {\n  .download-card__image {\n    margin-bottom: 20px\n  }\n}\n\n.download-card__button {\n  min-width: 240px\n}\n\n.download-card__title,\n.download-card__description {\n  align-self: flex-start\n}\n\n.download-card__title {\n  font-size: 12px;\n  color: #9b9b9b;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif\n}\n\n.blur-card {\n  margin: 10px 0;\n  display: flex;\n  justify-content: center;\n  align-items: center;\n  position: relative;\n  min-height: 200px;\n  flex-direction: column;\n  overflow: hidden\n}\n\n@media only screen and (min-width: 768px) {\n  .blur-card {\n    width: 50%;\n    min-height: 450px;\n    margin: 0 10px\n  }\n\n  .blur-card:first-child {\n    margin-left: 0\n  }\n\n  .blur-card:last-child {\n    margin-right: 0\n  }\n\n  .blur-card:hover .blur-card__picture {\n    filter: blur(4px);\n    transform: translate3d(0, 0, 0) scale(1.05)\n  }\n\n  .blur-card:hover .blur-card__button {\n    opacity: 1\n  }\n}\n\n.blur-card__picture {\n  display: block;\n  width: 100%;\n  height: 100%;\n  overflow: hidden;\n  position: absolute;\n  top: 0;\n  bottom: 0;\n  left: 0;\n  right: 0;\n  z-index: -1;\n  filter: blur(4px);\n  transition: filter .3s ease, transform .3s ease\n}\n\n@media only screen and (min-width: 768px) {\n  .blur-card__picture {\n    filter: blur(0)\n  }\n}\n\n.blur-card__source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.blur-card__logo {\n  padding-bottom: 20px\n}\n\n@media only screen and (min-width: 1024px) {\n  .blur-card__logo {\n    padding: 40px 0\n  }\n}\n\n.blur-card__button {\n  opacity: 1;\n  transition: opacity .3s ease\n}\n\n@media only screen and (min-width: 768px) {\n  .blur-card__button {\n    opacity: 0\n  }\n}\n\n.blur-card__wrapper {\n  display: flex;\n  flex-direction: column;\n  width: auto;\n  min-width: 100%\n}\n\n@media only screen and (min-width: 768px) {\n  .blur-card__wrapper {\n    flex-direction: row\n  }\n}\n\n.benefits {\n  background-color: #171616;\n  overflow: hidden\n}\n\n.benefits__heading {\n  text-align: center\n}\n\n.benefits__content {\n  display: flex;\n  flex-wrap: wrap;\n  margin: 0 -25px\n}\n\n.benefits__text {\n  margin: 0 25px;\n  padding: 20px 0;\n  width: 100%;\n  border-top: 1px solid #4a4a4a\n}\n\n.benefits__text:last-of-type {\n  border-bottom: 1px solid #4a4a4a\n}\n\n@media only screen and (min-width: 768px) {\n  .benefits__text {\n    width: calc(25% - 50px);\n    border-bottom: 1px solid #4a4a4a;\n    padding: 30px 0;\n    margin-bottom: 25px\n  }\n}\n\n.food-and-drinks {\n  width: 100%;\n  position: relative;\n  z-index: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks {\n    display: flex;\n    margin: 0 -20px;\n    width: calc(100% + 40px);\n    align-items: stretch;\n    justify-content: center\n  }\n}\n\n.food-and-drinks__child {\n  min-width: 0;\n  width: 100%;\n  padding: 0 0 40px 0;\n  position: relative\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__child {\n    width: 30%;\n    padding: 0;\n    margin: 0\n  }\n\n  .food-and-drinks__child+.food-and-drinks__child {\n    width: 70%\n  }\n}\n\n.food-and-drinks__child--single {\n  display: flex;\n  align-items: stretch;\n  padding-bottom: 10px\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__child--single {\n    width: 70%;\n    margin-left: 30%;\n    padding-bottom: 0\n  }\n}\n\n.food-and-drinks__child--single .food-and-drinks__picture {\n  width: calc(60% - 10px);\n  margin-right: 10px;\n  height: auto;\n  max-height: 120px\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__child--single .food-and-drinks__picture {\n    margin-right: 20px;\n    width: calc(60% - 20px);\n    max-height: none\n  }\n}\n\n.food-and-drinks__child--single .food-and-drinks__picture:last-of-type {\n  width: 40%;\n  margin: 0\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__child--single .food-and-drinks__picture:last-of-type {\n    margin-right: 20px;\n    width: calc(40% - 20px)\n  }\n}\n\n.food-and-drinks__picture {\n  width: 100%;\n  height: 100%;\n  display: block;\n  overflow: hidden\n}\n\n.food-and-drinks__picture--single {\n  width: calc(60% - 10px);\n  height: 190px\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__picture--single {\n    width: 100%;\n    height: 100%\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .food-and-drinks__picture--single {\n    width: calc(100% + 30px);\n    margin-left: -30px\n  }\n}\n\n.food-and-drinks__picture-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.food-and-drinks__content {\n  max-width: 650px\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__content {\n    padding: 95px 115px\n  }\n}\n\n.food-and-drinks__paragraph {\n  font-size: 14px;\n  line-height: 30px;\n  font-weight: 300\n}\n\n.food-and-drinks__ctas {\n  margin-top: 40px;\n  text-align: center\n}\n\n@media only screen and (min-width: 768px) {\n  .food-and-drinks__ctas {\n    text-align: left\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .food-and-drinks--revert {\n    flex-direction: row-reverse\n  }\n\n  .food-and-drinks--revert .food-and-drinks__child--single {\n    margin-right: 30%;\n    width: calc(100% + 20px);\n    margin-left: 0\n  }\n\n  .food-and-drinks--revert .food-and-drinks__child--single .food-and-drinks__picture {\n    margin-right: 0;\n    margin-left: 20px\n  }\n\n  .food-and-drinks--revert .food-and-drinks__child--single .food-and-drinks__picture:last-of-type {\n    margin-right: 0;\n    margin-left: 20px\n  }\n\n  .food-and-drinks--revert .food-and-drinks__picture--single {\n    width: 100%\n  }\n}\n\n@media only screen and (min-width: 1180px) {\n  .food-and-drinks--revert .food-and-drinks__child--single {\n    margin-right: 30%;\n    width: calc(100% + 30px);\n    margin-left: -30px\n  }\n\n  .food-and-drinks--revert .food-and-drinks__picture--single {\n    margin-left: 0\n  }\n}\n\n@media only screen and (min-width: 1360px) {\n  .food-and-drinks--revert .food-and-drinks__picture--single {\n    width: calc(100% + 20px);\n    margin-right: -20px\n  }\n}\n\n.gallery {\n  position: relative\n}\n\n.gallery__slider {\n  align-items: flex-end;\n  margin-bottom: 30px;\n  min-height: 260px\n}\n\n@media only screen and (min-width: 768px) {\n  .gallery__slider {\n    margin-bottom: 50px;\n    min-height: 570px\n  }\n}\n\n.gallery__slide {\n  margin-left: 5px;\n  margin-right: 5px;\n  position: relative;\n  transition: width .3s ease, height .3s ease;\n  height: 220px\n}\n\n.gallery__slide.swiper-slide-active {\n  height: 260px;\n  width: 80vw !important\n}\n\n@media only screen and (min-width: 768px) {\n  .gallery__slide {\n    height: 460px\n  }\n\n  .gallery__slide.swiper-slide-active {\n    width: 50vw !important;\n    height: 570px\n  }\n}\n\n.gallery__image {\n  width: 100%;\n  height: 100%;\n  display: block\n}\n\n.gallery__image-source {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.gallery__wrapper {\n  display: flex;\n  position: relative;\n  margin-bottom: 60px\n}\n\n@media only screen and (min-width: 1024px) {\n  .gallery__wrapper {\n    margin-bottom: 0\n  }\n}\n\n.list {\n  display: flex\n}\n\n.list__item {\n  padding: 0\n}\n\n.inline-links__heading {\n  margin-bottom: 20px;\n  color: #d40f7d\n}\n\n.inline-links__link {\n  color: #000\n}\n\n.status-message {\n  margin: 0 auto;\n  max-width: 1120px;\n  width: 100%\n}\n\n.js-tabs__panel {\n  min-height: calc(575.7vw + 690px);\n  position: relative\n}\n\n@media only screen and (min-width: 768px) {\n  .js-tabs__panel {\n    min-height: calc(144.846vw + 351px)\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .js-tabs__panel {\n    min-height: calc(63.548vw + 140px)\n  }\n}\n\n@media only screen and (min-width: 1360px) {\n  .js-tabs__panel {\n    min-height: 1016px\n  }\n}\n\n.standard-content {\n  position: relative\n}\n\n.standard-content__inner img {\n  display: block;\n  margin-bottom: 70px\n}\n\n.inner--flex {\n  display: flex\n}\n\n.inner--light {\n  background-color: #fff;\n  color: #000\n}\n\n.inner__strip {\n  max-width: 900px;\n  margin: 0 auto;\n  padding-left: 15px;\n  padding-right: 15px\n}\n\n@media only screen and (min-width: 768px) {\n  .inner__strip {\n    padding-left: 25px;\n    padding-right: 25px\n  }\n}\n\n@media only screen and (min-width: 1024px) {\n  .inner__strip {\n    padding-left: 0;\n    padding-right: 0\n  }\n}\n\n.inner__strip--extended {\n  max-width: 1070px\n}\n\n@media only screen and (min-width: 1024px) {\n\n  .inner__strip--editor h1,\n  .inner__strip--editor h2,\n  .inner__strip--editor h3,\n  .inner__strip--editor h4,\n  .inner__strip--editor h5,\n  .inner__strip--editor h6 {\n    margin-bottom: 40px\n  }\n}\n\n.inner__strip--editor p {\n  font-size: 16px;\n  line-height: 30px\n}\n\n@media only screen and (min-width: 1024px) {\n  .inner__strip--editor p {\n    margin-bottom: 40px\n  }\n}\n\n.inner__strip--editor p.intro {\n  font-size: 20px;\n  line-height: 36px\n}\n\n.inner__strip--editor a:not(.button):not(.search-popup__submit):not(.search-input__input):not(.list__link) {\n  color: #d40f7d;\n  font-family: \"Helvetica Neue LT W01_65 Md\", \"Helvetica Neue\", helvetica, arial, sans-serif;\n  position: relative\n}\n\n.inner__strip--editor a:not(.button):not(.search-popup__submit):not(.search-input__input):not(.list__link):after {\n  position: absolute;\n  content: \"\";\n  width: 100%;\n  height: 1px;\n  left: 0;\n  bottom: -4px;\n  background-color: #d40f7d;\n  transition: transform .3s ease\n}\n\n.inner__strip--editor a:not(.button):not(.search-popup__submit):not(.search-input__input):not(.list__link):hover:after {\n  transform: translateY(2px)\n}\n\n.inner__strip--editor caption,\n.inner__strip--editor figcaption {\n  margin-top: 10px;\n  text-align: left;\n  font-style: italic\n}\n\n.inner__strip--editor figure {\n  font-size: 12px;\n  color: #4a4a4a;\n  text-align: center;\n  margin-bottom: 20px\n}\n\n.inner__strip--editor figure img {\n  height: auto;\n  margin-bottom: 0;\n  max-width: 100%\n}\n\n.inner__strip--editor ul li:not(.button-list__item):not(.list__item) {\n  margin-bottom: 0\n}\n\n.inner__strip--editor ul li:not(.button-list__item):not(.list__item):before {\n  content: \"\";\n  width: 5px;\n  height: 5px;\n  border-radius: 50%;\n  display: block;\n  background: #d40f7d;\n  position: absolute;\n  left: 0;\n  top: 13px\n}\n\n.inner__strip--editor ol {\n  counter-reset: li\n}\n\n.inner__strip--editor ol li {\n  counter-increment: step-counter;\n  margin-bottom: 0\n}\n\n.inner__strip--editor ol li:before {\n  content: counter(step-counter) \".\";\n  display: block;\n  color: #d40f7d;\n  position: absolute;\n  top: 0;\n  left: 0;\n  font-weight: bold\n}\n\n.inner__strip--editor img {\n  display: block\n}\n\n.inner__strip--editor figure {\n  flex: 1;\n  margin-bottom: 30px\n}\n\n@media only screen and (min-width: 768px) {\n  .inner__strip--editor figure {\n    margin: 0 20px 30px 0\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .inner__strip--editor figure:first-child {\n    margin-left: 0\n  }\n}\n\n@media only screen and (min-width: 768px) {\n  .inner__strip--editor figure:last-child {\n    margin-right: 0\n  }\n}\n\n.inner__strip--editor figure img {\n  width: 100%;\n  height: 100%;\n  -o-object-fit: cover;\n  font-family: \"object-fit:cover\";\n  object-fit: cover\n}\n\n.inner__strip--editor figure figcaption {\n  padding: 0 15px;\n  font-style: italic\n}\n\n@media only screen and (min-width: 768px) {\n  .inner__strip--editor figure figcaption {\n    padding: 0\n  }\n}\n\n.inner__strip--editor>*:last-child {\n  margin-bottom: 0\n}\n\n.inner__video-container {\n  padding-top: 56.25%;\n  position: relative;\n  overflow: hidden\n}\n\n.inner__video-container iframe {\n  border: 0;\n  height: 100%;\n  left: 0;\n  position: absolute;\n  top: 0;\n  width: 100%\n}\n\n@media print {\n  @page {\n    margin: 5mm;\n    size: auto\n  }\n\n  body {\n    background-color: #fff;\n    color: #000\n  }\n\n  .mega-menu,\n  .launch-modal,\n  .modal,\n  .inline-ctas,\n  .interruption-strip,\n  .logos,\n  .bottom-cards,\n  .footer,\n  #onetrust-consent-sdk {\n    display: none !important\n  }\n\n  .header__logo-color {\n    fill: #000\n  }\n\n  .header__triggers {\n    display: none\n  }\n\n  .section {\n    padding-top: 0 !important;\n    padding-bottom: 30px !important;\n    margin-top: 0 !important;\n    margin-bottom: 30px !important\n  }\n}\n\n@media print {\n\n  .async-search,\n  .search-input,\n  .radio-group,\n  .view-toggle,\n  .pagination {\n    display: none\n  }\n\n  .radio-tab {\n    min-width: 0\n  }\n\n  .radio-tab__label {\n    padding: 0 0 10px;\n    display: none;\n    color: #000\n  }\n\n  .radio-tab__input:checked+.radio-tab__label {\n    display: inline\n  }\n\n  .list-link {\n    max-width: none;\n    padding: 20px 0;\n    border-color: #9b9b9b\n  }\n\n  .list-link:first-child {\n    padding-top: 0\n  }\n\n  .list-link__heading-link {\n    color: #000\n  }\n\n  .list-link__heading-link span {\n    display: inline\n  }\n\n  .list-link__ctas {\n    display: none\n  }\n\n  .list-link__item:last-child {\n    margin-bottom: 0\n  }\n\n  .list-link--grey .list-link__heading-link {\n    color: #000\n  }\n\n  .list-link--grey .list-link__title {\n    color: #000\n  }\n}','',1677442037,1,'n',0,'','n','n','o',0,'n','y');
/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_templates_roles`
--

DROP TABLE IF EXISTS `exp_templates_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_templates_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates_roles`
--

LOCK TABLES `exp_templates_roles` WRITE;
/*!40000 ALTER TABLE `exp_templates_roles` DISABLE KEYS */;
INSERT INTO `exp_templates_roles` VALUES (2,3),(3,3),(4,3),(5,3),(2,4),(3,4),(4,4),(5,4),(2,5),(3,5),(4,5),(5,5),(2,6),(3,6),(4,6),(5,6),(2,7),(3,7),(4,7),(5,7),(2,8),(3,8),(4,8),(5,8);
/*!40000 ALTER TABLE `exp_templates_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_throttle`
--

DROP TABLE IF EXISTS `exp_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_throttle`
--

LOCK TABLES `exp_throttle` WRITE;
/*!40000 ALTER TABLE `exp_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_update_log`
--

DROP TABLE IF EXISTS `exp_update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_update_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_update_log`
--

LOCK TABLES `exp_update_log` WRITE;
/*!40000 ALTER TABLE `exp_update_log` DISABLE KEYS */;
INSERT INTO `exp_update_log` VALUES (1,1677419336,'Smartforge::add_key failed. Table \'exp_comments\' does not exist.','Smartforge::add_key',106,'C:\\xampp\\htdocs\\kooba\\system\\ee\\ExpressionEngine\\Addons\\comment\\upd.comment.php'),(2,1677419336,'Smartforge::add_key failed. Table \'exp_dock_prolets\' does not exist.','Smartforge::add_key',202,'C:\\xampp\\htdocs\\kooba\\system\\ee\\ExpressionEngine\\Addons\\pro\\upd.pro.php');
/*!40000 ALTER TABLE `exp_update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_prefs`
--

DROP TABLE IF EXISTS `exp_upload_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT 1,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adapter` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `adapter_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_types` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img',
  `allow_subfolders` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `subfolders_on_top` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y',
  `default_modal_view` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'list',
  `max_size` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_height` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_width` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_format` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_format` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_properties` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_pre_format` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_post_format` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs`
--

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs` VALUES (1,1,'Avatars','local',NULL,'{base_path}images\\avatars\\','{base_url}images/avatars/','img','n','y','list','50','100','100',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(2,1,'Signature Attachments','local',NULL,'{base_path}images\\signature_attachments\\','{base_url}images/signature_attachments/','img','n','y','list','30','80','480',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(3,1,'PM Attachments','local',NULL,'{base_path}images\\pm_attachments\\','{base_url}images/pm_attachments/','img','n','y','list','250',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(4,1,'Image of the show','local',NULL,'{base_path}/','{base_url}/','img','n','n','list','','','',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0);
/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_prefs_roles`
--

DROP TABLE IF EXISTS `exp_upload_prefs_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exp_upload_prefs_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `upload_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs_roles`
--

LOCK TABLES `exp_upload_prefs_roles` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs_roles` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs_roles` VALUES (5,4);
/*!40000 ALTER TABLE `exp_upload_prefs_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kooba'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-26 21:07:49
