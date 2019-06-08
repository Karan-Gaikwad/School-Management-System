-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: schooltest2
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user type',7,'add_usertype'),(26,'Can change user type',7,'change_usertype'),(27,'Can delete user type',7,'delete_usertype'),(28,'Can view user type',7,'view_usertype'),(29,'Can add role',8,'add_role'),(30,'Can change role',8,'change_role'),(31,'Can delete role',8,'delete_role'),(32,'Can view role',8,'view_role'),(33,'Can add usersdb',7,'add_usersdb'),(34,'Can change usersdb',7,'change_usersdb'),(35,'Can delete usersdb',7,'delete_usersdb'),(36,'Can view usersdb',7,'view_usersdb'),(37,'Can add student',9,'add_student'),(38,'Can change student',9,'change_student'),(39,'Can delete student',9,'delete_student'),(40,'Can view student',9,'view_student'),(41,'Can add courses',10,'add_courses'),(42,'Can change courses',10,'change_courses'),(43,'Can delete courses',10,'delete_courses'),(44,'Can view courses',10,'view_courses'),(45,'Can add department',11,'add_department'),(46,'Can change department',11,'change_department'),(47,'Can delete department',11,'delete_department'),(48,'Can view department',11,'view_department'),(49,'Can add parent',12,'add_parent'),(50,'Can change parent',12,'change_parent'),(51,'Can delete parent',12,'delete_parent'),(52,'Can view parent',12,'view_parent'),(53,'Can add subjects',13,'add_subjects'),(54,'Can change subjects',13,'change_subjects'),(55,'Can delete subjects',13,'delete_subjects'),(56,'Can view subjects',13,'view_subjects'),(57,'Can add exams',14,'add_exams'),(58,'Can change exams',14,'change_exams'),(59,'Can delete exams',14,'delete_exams'),(60,'Can view exams',14,'view_exams'),(61,'Can add student_ attendance',15,'add_student_attendance'),(62,'Can change student_ attendance',15,'change_student_attendance'),(63,'Can delete student_ attendance',15,'delete_student_attendance'),(64,'Can view student_ attendance',15,'view_student_attendance'),(65,'Can add teacher',16,'add_teacher'),(66,'Can change teacher',16,'change_teacher'),(67,'Can delete teacher',16,'delete_teacher'),(68,'Can view teacher',16,'view_teacher'),(69,'Can add student_ marks',17,'add_student_marks'),(70,'Can change student_ marks',17,'change_student_marks'),(71,'Can delete student_ marks',17,'delete_student_marks'),(72,'Can view student_ marks',17,'view_student_marks');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$PjuFZ7jo7bJD$Qdviia1XhxMOFHg71vFZJ4ba/shnmcl9Kt4N13INqI0=','2019-06-08 04:25:35.337905',1,'krazykaran','','','krazykaran26@gmail.com',1,1,'2019-06-06 17:52:51.699848'),(2,'pbkdf2_sha256$150000$7O3rmpfdokqA$0GzWsSuxbOAe8hs8TLhCzZ2uEsJo1XF5KbRnilybH08=',NULL,0,'testuser','','','',0,1,'2019-06-06 17:57:59.000000'),(3,'pbkdf2_sha256$150000$S57Zap0plyLg$2W7GKIuoUZfAsIZf5YEKpXx8yJYmoIJ58qvexbOAX/Y=',NULL,0,'NewUser2','','','user2@gmail.com',0,1,'2019-06-06 21:16:10.423380'),(4,'pbkdf2_sha256$150000$ip6TwzoYIDtC$HuM9zeMRpV+0DVWx7PZzmD4ZlCBNQFwWuJs9BpqMhBg=',NULL,0,'NewUser3','','','newuser3@gmail.com',0,1,'2019-06-07 09:42:22.312770'),(5,'pbkdf2_sha256$150000$ybXTDIaJmIhn$1OU7Vo7v3N69rhhRxE7CO56Nfv3LYJFvIe5/L4rseT8=',NULL,0,'Chinu','','','chinu@gmail.com',0,1,'2019-06-07 10:51:40.905744'),(6,'pbkdf2_sha256$150000$3wwK3YBK1u8r$60Nh5LBSEtzHlkTT5++T4rheHG+YvaOYD9Q+pTBPW50=',NULL,0,'Teacher1','','','',0,1,'2019-06-07 19:56:34.256561'),(7,'pbkdf2_sha256$150000$zZUmI0Gzp41w$cCkshO7EuhR3ZCRlGIpAsCsN2QMgIOidELaIeTOuP8Y=',NULL,0,'Teacher2','','','',0,1,'2019-06-07 19:58:00.435496'),(8,'pbkdf2_sha256$150000$O4dTGzVyAr3A$IPX2cjy+2VyQ22xKyiRdzIR0Pmu7VnqBMiUIwynR80A=',NULL,0,'Parent1','','','',0,1,'2019-06-07 19:58:59.696468'),(9,'pbkdf2_sha256$150000$X2ZwkWFY0zYD$xM95k2Ke9GxM2OqleAucvivW9BYOWjwna7HJQoDcV8I=',NULL,0,'Parent2','','','',0,1,'2019-06-07 19:59:22.398494');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-06-06 17:58:00.223362','2','testuser',1,'[{\"added\": {}}]',4,1),(2,'2019-06-06 17:58:17.373858','2','testuser',2,'[]',4,1),(3,'2019-06-07 11:23:42.515107','1','Role object (1)',1,'[{\"added\": {}}]',8,1),(4,'2019-06-07 11:23:58.815056','2','Role object (2)',1,'[{\"added\": {}}]',8,1),(5,'2019-06-07 11:24:06.837090','2','Role object (2)',2,'[]',8,1),(6,'2019-06-07 11:24:15.807486','3','Role object (3)',1,'[{\"added\": {}}]',8,1),(7,'2019-06-07 11:37:05.144478','3','krazykaran',1,'[{\"added\": {}}]',7,1),(8,'2019-06-07 11:37:18.980465','4','Chinu',1,'[{\"added\": {}}]',7,1),(9,'2019-06-07 11:42:01.174238','2','Chinu',3,'',7,1),(10,'2019-06-07 11:42:01.274980','1','Chinu',3,'',7,1),(11,'2019-06-07 17:34:27.993491','1','Engineering',1,'[{\"added\": {}}]',11,1),(12,'2019-06-07 17:34:35.497953','2','Medical',1,'[{\"added\": {}}]',11,1),(13,'2019-06-07 17:34:42.477889','3','Management',1,'[{\"added\": {}}]',11,1),(14,'2019-06-07 17:35:14.087287','1','Computer Science',1,'[{\"added\": {}}]',10,1),(15,'2019-06-07 17:35:48.687240','2','Mechanical',1,'[{\"added\": {}}]',10,1),(16,'2019-06-07 17:36:01.252882','3','BSC Nursing',1,'[{\"added\": {}}]',10,1),(17,'2019-06-07 17:36:11.045287','4','MBBS',1,'[{\"added\": {}}]',10,1),(18,'2019-06-07 17:36:17.332820','5','BBA',1,'[{\"added\": {}}]',10,1),(19,'2019-06-07 17:36:25.086312','6','MBA',1,'[{\"added\": {}}]',10,1),(20,'2019-06-07 17:36:53.501244','1','Student object (1)',1,'[{\"added\": {}}]',9,1),(21,'2019-06-07 17:37:11.190812','2','Student object (2)',1,'[{\"added\": {}}]',9,1),(22,'2019-06-07 17:37:33.773529','5','NewUser2',1,'[{\"added\": {}}]',7,1),(23,'2019-06-07 17:38:06.331114','3','Student object (3)',1,'[{\"added\": {}}]',9,1),(24,'2019-06-07 17:38:27.074213','6','NewUser3',1,'[{\"added\": {}}]',7,1),(25,'2019-06-07 17:38:45.056203','4','Student object (4)',1,'[{\"added\": {}}]',9,1),(26,'2019-06-07 19:56:34.640676','6','Teacher1',1,'[{\"added\": {}}]',4,1),(27,'2019-06-07 19:58:00.672890','7','Teacher2',1,'[{\"added\": {}}]',4,1),(28,'2019-06-07 19:58:20.531755','7','Teacher1',1,'[{\"added\": {}}]',7,1),(29,'2019-06-07 19:58:28.826826','8','Teacher2',1,'[{\"added\": {}}]',7,1),(30,'2019-06-07 19:58:59.917310','8','Parent1',1,'[{\"added\": {}}]',4,1),(31,'2019-06-07 19:59:22.607106','9','Parent2',1,'[{\"added\": {}}]',4,1),(32,'2019-06-07 19:59:34.393813','9','Parent1',1,'[{\"added\": {}}]',7,1),(33,'2019-06-07 19:59:43.633204','10','Parent2',1,'[{\"added\": {}}]',7,1),(34,'2019-06-07 20:00:17.205815','1','NewTeacher1',1,'[{\"added\": {}}]',16,1),(35,'2019-06-07 20:00:41.301411','2','NewTeacher2',1,'[{\"added\": {}}]',16,1),(36,'2019-06-07 20:01:32.250099','5','Tony Stark',1,'[{\"added\": {}}]',9,1),(37,'2019-06-07 20:02:24.703555','6','Dr. Strange',1,'[{\"added\": {}}]',9,1),(38,'2019-06-07 20:03:07.828511','1','TOC',1,'[{\"added\": {}}]',13,1),(39,'2019-06-07 20:03:43.647547','2','Mechanics',1,'[{\"added\": {}}]',13,1),(40,'2019-06-07 20:04:43.378008','1','H.Stark',1,'[{\"added\": {}}]',12,1),(41,'2019-06-07 20:05:03.485439','2','K. Strange',1,'[{\"added\": {}}]',12,1),(42,'2019-06-07 20:07:21.349146','2','Tony Stark',1,'[{\"added\": {}}]',15,1),(43,'2019-06-07 20:07:32.305214','3','Tony Stark',1,'[{\"added\": {}}]',15,1),(44,'2019-06-07 20:07:48.833755','4','Tony Stark',1,'[{\"added\": {}}]',15,1),(45,'2019-06-07 20:08:06.539365','5','Tony Stark',1,'[{\"added\": {}}]',15,1),(46,'2019-06-07 20:08:16.818121','6','Dr. Strange',1,'[{\"added\": {}}]',15,1),(47,'2019-06-07 20:08:45.924222','7','Dr. Strange',1,'[{\"added\": {}}]',15,1),(48,'2019-06-07 20:08:56.158610','8','Dr. Strange',1,'[{\"added\": {}}]',15,1),(49,'2019-06-07 20:10:21.908583','1','Class Test 1',1,'[{\"added\": {}}]',14,1),(50,'2019-06-07 20:11:13.191469','3','Biology',1,'[{\"added\": {}}]',13,1),(51,'2019-06-07 20:11:23.040152','2','Class Test 1',1,'[{\"added\": {}}]',14,1),(52,'2019-06-07 20:11:47.233932','2','Class Test 1_Bio',2,'[{\"changed\": {\"fields\": [\"exam_name\"]}}]',14,1),(53,'2019-06-07 20:11:58.154626','1','Class Test 1_Toc',2,'[{\"changed\": {\"fields\": [\"exam_name\"]}}]',14,1),(54,'2019-06-07 20:22:22.771190','4','Tony Stark 95',1,'[{\"added\": {}}]',17,1),(55,'2019-06-07 20:23:10.961773','5','Dr. Strange marks = 98',1,'[{\"added\": {}}]',17,1),(56,'2019-06-07 20:23:30.048544','3','Tony Stark marks = 90',3,'',17,1),(57,'2019-06-07 20:23:30.049545','2','Tony Stark marks = 85',3,'',17,1),(58,'2019-06-07 20:23:30.051539','1','Tony Stark marks = 57',3,'',17,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'users','usersdb'),(8,'users','role'),(9,'users','student'),(10,'users','courses'),(11,'users','department'),(12,'users','parent'),(13,'users','subjects'),(14,'users','exams'),(15,'users','student_attendance'),(16,'users','teacher'),(17,'users','student_marks');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-06 17:51:59.308526'),(2,'auth','0001_initial','2019-06-06 17:51:59.987609'),(3,'admin','0001_initial','2019-06-06 17:52:02.154134'),(4,'admin','0002_logentry_remove_auto_add','2019-06-06 17:52:02.692329'),(5,'admin','0003_logentry_add_action_flag_choices','2019-06-06 17:52:02.729307'),(6,'contenttypes','0002_remove_content_type_name','2019-06-06 17:52:02.949412'),(7,'auth','0002_alter_permission_name_max_length','2019-06-06 17:52:03.151420'),(8,'auth','0003_alter_user_email_max_length','2019-06-06 17:52:03.229467'),(9,'auth','0004_alter_user_username_opts','2019-06-06 17:52:03.250523'),(10,'auth','0005_alter_user_last_login_null','2019-06-06 17:52:03.400768'),(11,'auth','0006_require_contenttypes_0002','2019-06-06 17:52:03.407750'),(12,'auth','0007_alter_validators_add_error_messages','2019-06-06 17:52:03.439227'),(13,'auth','0008_alter_user_username_max_length','2019-06-06 17:52:03.501189'),(14,'auth','0009_alter_user_last_name_max_length','2019-06-06 17:52:03.689993'),(15,'auth','0010_alter_group_name_max_length','2019-06-06 17:52:03.778242'),(16,'auth','0011_update_proxy_permissions','2019-06-06 17:52:03.813337'),(17,'sessions','0001_initial','2019-06-06 17:52:03.961487'),(18,'users','0001_initial','2019-06-07 11:03:40.643292'),(19,'users','0002_role','2019-06-07 11:23:00.406317'),(20,'users','0003_auto_20190607_1655','2019-06-07 11:25:53.112934'),(21,'users','0004_auto_20190607_1710','2019-06-07 11:40:20.450204'),(22,'users','0005_auto_20190607_2300','2019-06-07 17:30:59.083845'),(23,'users','0006_auto_20190608_0120','2019-06-07 19:52:18.826271'),(24,'users','0007_auto_20190608_0146','2019-06-07 20:17:14.918409'),(25,'users','0008_auto_20190608_0223','2019-06-07 20:53:51.661720');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('s1gldikrer12xb1io1f0zl3gu8n253fp','NGQ5NDVkNTlmM2IyNTVmMjkxOTVmMTE3M2U0YjlhZGIyZThiZGQ0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzFmN2Y0ZDQyNmU2MjVlNjQ4OTNjNjQ1YmVmNjBjZDA0MDRmMmUzIn0=','2019-06-21 11:27:50.159385');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_courses`
--

DROP TABLE IF EXISTS `users_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL,
  `department_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_courses_department_name_id_908dbd0d` (`department_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_courses`
--

LOCK TABLES `users_courses` WRITE;
/*!40000 ALTER TABLE `users_courses` DISABLE KEYS */;
INSERT INTO `users_courses` VALUES (1,'Computer Science',1),(2,'Mechanical',1),(3,'BSC Nursing',2),(4,'MBBS',2),(5,'BBA',3),(6,'MBA',3);
/*!40000 ALTER TABLE `users_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_department`
--

DROP TABLE IF EXISTS `users_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_department`
--

LOCK TABLES `users_department` WRITE;
/*!40000 ALTER TABLE `users_department` DISABLE KEYS */;
INSERT INTO `users_department` VALUES (1,'Engineering'),(2,'Medical'),(3,'Management');
/*!40000 ALTER TABLE `users_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_exams`
--

DROP TABLE IF EXISTS `users_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(50) NOT NULL,
  `student_name_id` int(11) NOT NULL,
  `subject_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_exams_student_name_id_22009963` (`student_name_id`),
  KEY `users_exams_subject_name_id_5f3dd875` (`subject_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_exams`
--

LOCK TABLES `users_exams` WRITE;
/*!40000 ALTER TABLE `users_exams` DISABLE KEYS */;
INSERT INTO `users_exams` VALUES (1,'Class Test 1_Toc',5,1),(2,'Class Test 1_Bio',6,3);
/*!40000 ALTER TABLE `users_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_parent`
--

DROP TABLE IF EXISTS `users_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_name` varchar(50) NOT NULL,
  `student_name_id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_parent_student_name_id_b6e80db7` (`student_name_id`),
  KEY `users_parent_username_id_b9937eaa` (`username_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_parent`
--

LOCK TABLES `users_parent` WRITE;
/*!40000 ALTER TABLE `users_parent` DISABLE KEYS */;
INSERT INTO `users_parent` VALUES (1,'H.Stark',5,9),(2,'K. Strange',6,10);
/*!40000 ALTER TABLE `users_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_role`
--

DROP TABLE IF EXISTS `users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userrole` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_role`
--

LOCK TABLES `users_role` WRITE;
/*!40000 ALTER TABLE `users_role` DISABLE KEYS */;
INSERT INTO `users_role` VALUES (1,'Student'),(2,'Parent'),(3,'Teacher');
/*!40000 ALTER TABLE `users_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_student`
--

DROP TABLE IF EXISTS `users_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(50) NOT NULL,
  `course_name_id` int(11) NOT NULL,
  `department_name_id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_student_course_name_id_80bed80c` (`course_name_id`),
  KEY `users_student_department_name_id_e11becc2` (`department_name_id`),
  KEY `users_student_username_id_179eb675` (`username_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student`
--

LOCK TABLES `users_student` WRITE;
/*!40000 ALTER TABLE `users_student` DISABLE KEYS */;
INSERT INTO `users_student` VALUES (1,'Karan Gaikwad',1,1,3),(2,'Akshata Titare',2,1,4),(3,'Akshay Dhote',3,2,5),(4,'Arvind Pathak',6,3,6),(5,'Tony Stark',1,1,5),(6,'Dr. Strange',3,2,6);
/*!40000 ALTER TABLE `users_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_student_attendance`
--

DROP TABLE IF EXISTS `users_student_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_student_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `present` tinyint(1) NOT NULL,
  `student_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_student_attendance_student_name_id_504b7f99` (`student_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student_attendance`
--

LOCK TABLES `users_student_attendance` WRITE;
/*!40000 ALTER TABLE `users_student_attendance` DISABLE KEYS */;
INSERT INTO `users_student_attendance` VALUES (1,'2019-06-01',1,5),(2,'2019-06-01',1,5),(3,'2019-06-02',1,5),(4,'2019-06-03',0,5),(5,'2019-06-04',1,5),(6,'2019-06-01',1,6),(7,'2019-06-03',1,6),(8,'2019-06-04',1,6);
/*!40000 ALTER TABLE `users_student_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_student_marks`
--

DROP TABLE IF EXISTS `users_student_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_student_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marks` int(11) NOT NULL,
  `exam_name_id` int(11) NOT NULL,
  `student_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_student_marks_exam_name_id_356ed08a` (`exam_name_id`),
  KEY `users_student_marks_student_name_id_8cb53a51` (`student_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student_marks`
--

LOCK TABLES `users_student_marks` WRITE;
/*!40000 ALTER TABLE `users_student_marks` DISABLE KEYS */;
INSERT INTO `users_student_marks` VALUES (4,95,1,5),(5,98,2,6);
/*!40000 ALTER TABLE `users_student_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_subjects`
--

DROP TABLE IF EXISTS `users_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) NOT NULL,
  `course_name_id` int(11) NOT NULL,
  `teacher_name_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_subjects_course_name_id_b9b85951` (`course_name_id`),
  KEY `users_subjects_teacher_name_id_86371016` (`teacher_name_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_subjects`
--

LOCK TABLES `users_subjects` WRITE;
/*!40000 ALTER TABLE `users_subjects` DISABLE KEYS */;
INSERT INTO `users_subjects` VALUES (1,'TOC',1,1),(2,'Mechanics',2,2),(3,'Biology',3,1);
/*!40000 ALTER TABLE `users_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teacher`
--

DROP TABLE IF EXISTS `users_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(50) NOT NULL,
  `course_name_id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_teacher_course_name_id_cf324542` (`course_name_id`),
  KEY `users_teacher_username_id_1824f391` (`username_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teacher`
--

LOCK TABLES `users_teacher` WRITE;
/*!40000 ALTER TABLE `users_teacher` DISABLE KEYS */;
INSERT INTO `users_teacher` VALUES (1,'NewTeacher1',1,7),(2,'NewTeacher2',3,8);
/*!40000 ALTER TABLE `users_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usersdb`
--

DROP TABLE IF EXISTS `users_usersdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_usersdb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_usertype_username_id_6a90a762` (`username_id`),
  KEY `users_usertype_role_id_a7399e42` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_usersdb`
--

LOCK TABLES `users_usersdb` WRITE;
/*!40000 ALTER TABLE `users_usersdb` DISABLE KEYS */;
INSERT INTO `users_usersdb` VALUES (6,1,4),(5,1,3),(3,1,1),(4,3,5),(7,3,6),(8,3,7),(9,2,8),(10,2,9);
/*!40000 ALTER TABLE `users_usersdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-08 12:03:25
