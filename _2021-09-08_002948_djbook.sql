-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: djbook
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB-1:10.6.4+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_4612b05e4d85e428_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_4612b05e4d85e428_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_6b703c6a7f9381cc_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_6806de4a5be1f02f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add autor',7,'add_autor'),(20,'Can change autor',7,'change_autor'),(21,'Can delete autor',7,'delete_autor'),(22,'Can add editor',8,'add_editor'),(23,'Can change editor',8,'change_editor'),(24,'Can delete editor',8,'delete_editor'),(25,'Can add libro',9,'add_libro'),(26,'Can change libro',9,'change_libro'),(27,'Can delete libro',9,'delete_libro');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$0i4rSGQWgJrK$gy6gxNnDuaFIO5YbTTyynJDkhARUjm4waRiU7lMwh+w=','2021-08-28 00:45:14',1,'djbook','','','djbook@example.com',1,1,'2021-08-19 02:38:05');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_7e06b1c92f65d5b6_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_7e06b1c92f65d5b6_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_33776317b5b26b42_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_3e4dcc191e42f837_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_3e4dcc191e42f837_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissio_user_id_f503effd907b6dd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

--
-- Table structure for table `biblioteca_autor`
--

DROP TABLE IF EXISTS `biblioteca_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_autor`
--

/*!40000 ALTER TABLE `biblioteca_autor` DISABLE KEYS */;
INSERT INTO `biblioteca_autor` VALUES (2,'Adrian ','Holovaty','adrian@example.com'),(3,'Robin','Nixon','RobinNixon@example.com'),(4,'Daniel ','Roy Greenfeld','DanielRoyGreenfeld@example.com');
/*!40000 ALTER TABLE `biblioteca_autor` ENABLE KEYS */;

--
-- Table structure for table `biblioteca_editor`
--

DROP TABLE IF EXISTS `biblioteca_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca_editor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_editor`
--

/*!40000 ALTER TABLE `biblioteca_editor` DISABLE KEYS */;
INSERT INTO `biblioteca_editor` VALUES (1,'Addison-Wesley','75 Arlington Street','Boston','MA','U.S.A','http://www.apress.com'),(2,'O\'Reilly','10 Fawcett St','Cambridge','MA','U.S.A','http://www.oreilly.com'),(3,'Apress Publishing','2855 Telegraph Ave','Berkeley','CA','U.S.A','http://www.apress.com'),(4,'Alfaomega','avenida quesada','bogota','cundinamarca','colombia','http://alfaomega.com'),(5,'Audrey Roy Greenfeld and Danie','street black','new york','new york','usa','https://twoscoopspress.com/');
/*!40000 ALTER TABLE `biblioteca_editor` ENABLE KEYS */;

--
-- Table structure for table `biblioteca_libro`
--

DROP TABLE IF EXISTS `biblioteca_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca_libro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `portada` varchar(100) NOT NULL,
  `editor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `biblioteca_li_editor_id_7574c6fc8441531a_fk_biblioteca_editor_id` (`editor_id`),
  CONSTRAINT `biblioteca_li_editor_id_7574c6fc8441531a_fk_biblioteca_editor_id` FOREIGN KEY (`editor_id`) REFERENCES `biblioteca_editor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_libro`
--

/*!40000 ALTER TABLE `biblioteca_libro` DISABLE KEYS */;
INSERT INTO `biblioteca_libro` VALUES (1,'La Guia Definitiva Django','2021-08-23','',3),(2,'Aprender Php, Mysql y Javascript','2021-08-27','',4),(3,'Best Practices for Django 1.8','2021-08-27','',5);
/*!40000 ALTER TABLE `biblioteca_libro` ENABLE KEYS */;

--
-- Table structure for table `biblioteca_libro_autores`
--

DROP TABLE IF EXISTS `biblioteca_libro_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca_libro_autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libro_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libro_id` (`libro_id`,`autor_id`),
  KEY `biblioteca_libr_autor_id_273cfed5bc2d4fac_fk_biblioteca_autor_id` (`autor_id`),
  CONSTRAINT `biblioteca_libr_autor_id_273cfed5bc2d4fac_fk_biblioteca_autor_id` FOREIGN KEY (`autor_id`) REFERENCES `biblioteca_autor` (`id`),
  CONSTRAINT `biblioteca_libr_libro_id_769ec9f774b1eb14_fk_biblioteca_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `biblioteca_libro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_libro_autores`
--

/*!40000 ALTER TABLE `biblioteca_libro_autores` DISABLE KEYS */;
INSERT INTO `biblioteca_libro_autores` VALUES (1,1,2),(2,2,3),(3,3,4);
/*!40000 ALTER TABLE `biblioteca_libro_autores` ENABLE KEYS */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_4cfc8dd4f2f0c605_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_28ff6f5f23d6ef2b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_4cfc8dd4f2f0c605_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_28ff6f5f23d6ef2b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-08-20 00:43:11','1','djbook',2,'Modificado/a email.',4,1),(2,'2021-08-21 22:29:58','2','Adrian  - Holovaty',1,'',7,1),(3,'2021-08-24 02:02:21','1','La Guia Definitiva Django',1,'',9,1),(4,'2021-08-28 00:49:18','3','Robin - Nixon',1,'',7,1),(5,'2021-08-28 00:51:38','4','Alfaomega',1,'',8,1),(6,'2021-08-28 00:51:52','2','Aprender Php, Mysql y Javascript',1,'',9,1),(7,'2021-08-28 00:55:22','4','Daniel  - Roy Greenfeld',1,'',7,1),(8,'2021-08-28 01:00:00','5','Audrey Roy Greenfeld and Danie',1,'',8,1),(9,'2021-08-28 01:00:26','3','Best Practices for Django 1.8',1,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

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
  UNIQUE KEY `django_content_type_app_label_7a1abee325a2be95_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'biblioteca','autor'),(8,'biblioteca','editor'),(9,'biblioteca','libro'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-08-13 22:51:58'),(2,'auth','0001_initial','2021-08-13 22:52:03'),(3,'admin','0001_initial','2021-08-13 22:52:05'),(4,'contenttypes','0002_remove_content_type_name','2021-08-13 22:52:06'),(5,'auth','0002_alter_permission_name_max_length','2021-08-13 22:52:06'),(6,'auth','0003_alter_user_email_max_length','2021-08-13 22:52:07'),(7,'auth','0004_alter_user_username_opts','2021-08-13 22:52:07'),(8,'auth','0005_alter_user_last_login_null','2021-08-13 22:52:08'),(9,'auth','0006_require_contenttypes_0002','2021-08-13 22:52:08'),(10,'sessions','0001_initial','2021-08-13 22:52:08'),(11,'biblioteca','0001_initial','2021-08-19 01:50:55'),(12,'biblioteca','0002_auto_20210820_2155','2021-08-21 02:55:56'),(13,'biblioteca','0003_auto_20210821_1518','2021-08-21 20:20:37'),(14,'biblioteca','0004_auto_20210821_1727','2021-08-21 22:28:17');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('07atc4bnniyroq5edhsa3yxnsgm22luo','ZDQ1ZmVkYjI1M2U3MjdhZGZiYThlM2Q4MWYyODVlYWQxNWQxMjYyMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE2NTk1ZjNhNWQ1YzM2NDdkYmQ0MjRhOTgxMjA4ODI5ZWJhOThhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2021-09-02 23:55:03'),('gc7a9ft6roftv66rsd1jtb0zyk3oor48','ZDQ1ZmVkYjI1M2U3MjdhZGZiYThlM2Q4MWYyODVlYWQxNWQxMjYyMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE2NTk1ZjNhNWQ1YzM2NDdkYmQ0MjRhOTgxMjA4ODI5ZWJhOThhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2021-09-02 23:40:36'),('m71x9x593tc44ge3m533mk6tl93ur753','ZDQ1ZmVkYjI1M2U3MjdhZGZiYThlM2Q4MWYyODVlYWQxNWQxMjYyMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzE2NTk1ZjNhNWQ1YzM2NDdkYmQ0MjRhOTgxMjA4ODI5ZWJhOThhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2021-09-02 23:37:09'),('o81aed3t62tdcc82w3vji5x3rhtsxlp1','YmJkMjcxZDk3NDFkZDA2ZTdjMzg2NTQ4YmExYmEyNmVkYmI4N2YxMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTY1OTVmM2E1ZDVjMzY0N2RiZDQyNGE5ODEyMDg4MjllYmE5OGFjIn0=','2021-09-03 22:38:53'),('ukgv6f0cv3xh9s8dm74l3yxwtuiuitxc','MDAwYTBiZDVmNTIwYTJlODQ1YjYyMGIwYTcwNzFjMGY1ZWQ4MzY4OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjcxNjU5NWYzYTVkNWMzNjQ3ZGJkNDI0YTk4MTIwODgyOWViYTk4YWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2021-09-02 21:38:59');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08  0:34:10
