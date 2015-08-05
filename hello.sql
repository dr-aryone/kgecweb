-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kgecweb
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1-log

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
-- Table structure for table `administration_adminprof`
--

DROP TABLE IF EXISTS `administration_adminprof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_adminprof` (
  `AdminType` varchar(20) NOT NULL DEFAULT '',
  `AdminName` varchar(50) NOT NULL,
  `AdminDOB` date NOT NULL,
  `AdminImage` varchar(100) NOT NULL,
  `AdminWord` longtext NOT NULL,
  `AdminEmailId` varchar(254) NOT NULL,
  `AdminPhoneNo` varchar(13) NOT NULL,
  PRIMARY KEY (`AdminType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_adminprof`
--

LOCK TABLES `administration_adminprof` WRITE;
/*!40000 ALTER TABLE `administration_adminprof` DISABLE KEYS */;
INSERT INTO `administration_adminprof` VALUES ('PRINCIPAL','Dr. Krishnendu Chakraborty','2015-05-09','AdminProf/Image/person.png','Dear Aspirant, We are in the midst of revolution. The nation is basking in the glory of a new proud generation that is taking the world by storm! The entire intellectual community of the world has woken up to the reality that India is a treasure-house of talent and intelligence. The youth of today are taking India to unparalleled height of prosperity. The only raw material essential to this great turn-around is EDUCATION –i.e. Knowledge. Knowledge is Power. All great achievements are the products of man’s dreams, ambition, dedication to achieve a truly noble goal. ‘KALYANI GOVERNMENT ENGINEERING COLLEGE’ is the crystallization of the efforts, dreams, and aspirations of all the people involved in this mission to give the best to the students who desire to be equipped with the right essentials to be successful in all spheres of an exciting new world where knowledge is everything. The faculty are into education from last many years. Past students placed in top technical and corporate houses is a testimony to their endeavor in imparting top quality education to the students. Your potentials and abilities are unlimited. In KGEC we unfold and make you realize this and build totally balanced TECHNICAL LEADERS to REIGN THE TECHNICAL ARENA. At KGEC you shall be able to achieve the goals and aspirations of your life. I welcome you to the new world of education at KALYANI GOVERNMENT ENGINEERING COLLEGE. \r\n-- Dr. Krishnendu Chakrabarty, Principal','chakraborty40@rediffmail.com','9999999999999'),('REGISTRAR','Bishnu Pada Biswas','2015-05-11','AdminProf/Image/person_pzLKVQb.png','Dear Aspirant,\r\n\r\nFrom the inception of West Bengal University of Technology (WBUT) has established itself as one of the most successful and credible educational bodies of its kind in the nation. With a long term experience in the field of education, the university has attracted students from all over the country and has developed strong links to the national and international technical community. Kalyani Government Engineering College (KGEC) has been established as an institute of great technical stature under the aegis of WBUT.\r\n\r\nI can say with complete confidence that KGEC presents one of the finest engineering education in the country as it is a community of learners, striving to educate the mind, nurture the spirit, and foster the development of the whole individual.\r\n\r\nKGEC\'s dedicated and talented faculty supports the mission and as they continue to seek educational growth for themselves, they bring new and innovative ideas back into the classroom. The thirst for knowledge and love of learning thrive at KGEC in both students and teachers.\r\n\r\nIf you believe successful engineering education is based on genuine capabilities and profound knowledge, if you wish to go beyond success, and if you are confident that you are among the very best, then KGEC is the place just for you.\r\n\r\nWelcome to the class of knowledge leaders. Welcome to KALYANI GOVERNMENT ENGINEERING COLLEGE.','bpbiswas.registrar@yahoo.com','03325826680');
/*!40000 ALTER TABLE `administration_adminprof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_admission`
--

DROP TABLE IF EXISTS `administration_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_admission` (
  `Admission_Type` varchar(20) NOT NULL,
  `Admission_Details` longtext NOT NULL,
  PRIMARY KEY (`Admission_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_admission`
--

LOCK TABLES `administration_admission` WRITE;
/*!40000 ALTER TABLE `administration_admission` DISABLE KEYS */;
INSERT INTO `administration_admission` VALUES ('btech','There are five departments in B.Tech :-Computer Science & Engineering(CSE),Mechanical Engineering(ME),Information Technology(IT),Electronics & Commmunication Engineering(ECE), Electrical Engineering(EE).\r\nAdmission is taken through WBJEE(West Bengal Joint Entrance Examination).\r\nIntake is 60 in each department(Reserved Seats SC-22% ST-6% PC-3%).\r\nOne additional seat is reserved for defence cota in EE.\r\nDiploma holders can take admission through WB-JELET(West Bengal Joint Entrance Examination of Lateral Entry) in BTECH 2nd year.'),('mca','Admission is taken through JECA (West Bengal Joint Entrance Exam MCA ).\r\nIntake 40 (Reserved Seats SC-22% ST-6% PD-3%).\r\nCandidate must acquire 1st class in BSC.'),('mtech','There are three departments in M.Tech :- Computer Science & Engineering(CSE),Production Engineering(PE),Electronics & Commmunication Engineering(ECE).\r\nIntake is 18(GATE:13, NON-GATE:5). In each catagory reserved Seats -> SC-22% ST-6% PC-3%.\r\nEntire admission process is conducted centrally by West Bengal University of Technology (WBUT), SaltLake. One can go through the website of WBUT from time to time for further details.');
/*!40000 ALTER TABLE `administration_admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_institution`
--

DROP TABLE IF EXISTS `administration_institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_institution` (
  `InstName` varchar(50) NOT NULL,
  `InstLogo` varchar(100) NOT NULL,
  `InstDescrip` longtext NOT NULL,
  `InstImages_id` int(11) NOT NULL,
  `InstOwner_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`InstName`),
  KEY `administration_institution_90f7b5e6` (`InstImages_id`),
  KEY `administration_institution_2d9fafe8` (`InstOwner_id`),
  CONSTRAINT `administration_institution_InstOwner_id_6d1fea5143e5b229_fk` FOREIGN KEY (`InstOwner_id`) REFERENCES `administration_adminprof` (`AdminType`),
  CONSTRAINT `D0d36eebffeea056cb55933b729c236c` FOREIGN KEY (`InstImages_id`) REFERENCES `administration_instscrollimage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_institution`
--

LOCK TABLES `administration_institution` WRITE;
/*!40000 ALTER TABLE `administration_institution` DISABLE KEYS */;
INSERT INTO `administration_institution` VALUES ('Kalyani Government Engineering College','Institute/Image/logo1_8xu4KEe.png','MISSION :\r\n\r\nThe mission of Kalyani Government Engineering College is to impart quality technical education to the students at the undergraduate and at the postgraduate levels of engineering with the aim to make them complete human beings possessing depth of knowledge not only in their own discipline but also in the kindred areas, which shall necessarily be accompanied by a wide mental horizon making them capable of sifting the grain from the chaff, the honesty from the chicanery, the truth from the untruth.\r\nVISION :\r\n\r\n\r\nThe vision of Kalyani Government Engineering College is to produce high quality, globally compeitive technical manpower and to become a centre of excellence in a few select areas of high-end technologies. It also envisages to act as an incubation cell for etrepreneurship activities in the region in association with the industry houses of the locality and outside. Keeping pace with the global technological developments through continuing education programmes is its another cherished ambition.',1,'PRINCIPAL');
/*!40000 ALTER TABLE `administration_institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_instscrollimage`
--

DROP TABLE IF EXISTS `administration_instscrollimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_instscrollimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ImageDes` varchar(30) NOT NULL,
  `ImageScroll` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_instscrollimage`
--

LOCK TABLES `administration_instscrollimage` WRITE;
/*!40000 ALTER TABLE `administration_instscrollimage` DISABLE KEYS */;
INSERT INTO `administration_instscrollimage` VALUES (1,'baler hero','Institute/ScrollImage/DSC00674.JPG');
/*!40000 ALTER TABLE `administration_instscrollimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_notice`
--

DROP TABLE IF EXISTS `administration_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NoticeType` varchar(20),
  `NoticeTag` varchar(30) NOT NULL,
  `NoticeStartDate` date NOT NULL,
  `NoticeEndDate` date NOT NULL,
  `NoticeFile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_notice`
--

LOCK TABLES `administration_notice` WRITE;
/*!40000 ALTER TABLE `administration_notice` DISABLE KEYS */;
INSERT INTO `administration_notice` VALUES (1,'REGISTRAR','Result Publish','2015-05-09','2015-05-09','notice/2015/05/09/a.sh'),(2,'TRAINING','TCS Placement on 23rd February','2015-05-10','2015-05-10','notice/2015/05/10/DSC00674.JPG'),(3,'PLACEMENT','Purchase Water Purifier','2015-05-10','2015-05-10','notice/2015/05/10/DSC00676.JPG'),(4,'PLACEMENT','College Day','2015-05-10','2015-05-10','notice/2015/05/10/DSC00678.JPG'),(5,'ACCOUNTS','Holidy','2015-05-10','2015-05-10','notice/2015/05/10/DSC00703.JPG'),(6,'PLACEMENT','Java training ','2015-05-10','2015-05-10','notice/2015/05/10/DSC00829.JPG'),(7,'PLACEMENT','4th year exam schedule','2015-05-10','2015-05-10','notice/2015/05/10/DSC00674_UcUoVdz.JPG'),(8,'PLACEMENT','4th year exam result','2015-05-10','2015-05-10','notice/2015/05/10/DSC00673.JPG'),(9,'PLACEMENT','New Company has Registered','2015-05-27','2015-05-30','notice/2015/05/27/SR_ARCh.png'),(10,'PLACEMENT','Google joined in campus placem','2015-05-31','2015-05-28','notice/2015/05/31/person.png');
/*!40000 ALTER TABLE `administration_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_special_events`
--

DROP TABLE IF EXISTS `administration_special_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_special_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Events_Name` varchar(30) NOT NULL,
  `Events_Descriptions` longtext NOT NULL,
  `Events_Date` date NOT NULL,
  `Event_Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_special_events`
--

LOCK TABLES `administration_special_events` WRITE;
/*!40000 ALTER TABLE `administration_special_events` DISABLE KEYS */;
INSERT INTO `administration_special_events` VALUES (1,'Congratulation GATE 2015','For gate','2015-05-31','notice/special_events/person.png'),(2,'Topprs ME 2015','Congratulation for becoming the toppers in gate 2015','2015-05-31','notice/special_events/DSC00669.JPG'),(3,'Techtx 2015','We are going to fcelebarete tectix 2015 in kgec','2015-05-31','notice/special_events/DSC00673.JPG'),(4,'Aakash Workshop  in kgec','We are happily co-ordinate the aakash workshops','2015-05-31','notice/special_events/DSC00673_7lbwuzR.JPG'),(5,'Exotica 2015','We are happy to invite all of you','2015-05-31','notice/special_events/DSC00691.JPG');
/*!40000 ALTER TABLE `administration_special_events` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'notice');
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,40),(2,1,41),(3,1,42);
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
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add student',7,'add_student'),(20,'Can change student',7,'change_student'),(21,'Can delete student',7,'delete_student'),(22,'Can add department',8,'add_department'),(23,'Can change department',8,'change_department'),(24,'Can delete department',8,'delete_department'),(25,'Can add faculty',9,'add_faculty'),(26,'Can change faculty',9,'change_faculty'),(27,'Can delete faculty',9,'delete_faculty'),(28,'Can add staff',10,'add_staff'),(29,'Can change staff',10,'change_staff'),(30,'Can delete staff',10,'delete_staff'),(31,'Can add department',11,'add_department'),(32,'Can change department',11,'change_department'),(33,'Can delete department',11,'delete_department'),(34,'Can add faculty',12,'add_faculty'),(35,'Can change faculty',12,'change_faculty'),(36,'Can delete faculty',12,'delete_faculty'),(37,'Can add staff',13,'add_staff'),(38,'Can change staff',13,'change_staff'),(39,'Can delete staff',13,'delete_staff'),(40,'Can add notice',14,'add_notice'),(41,'Can change notice',14,'change_notice'),(42,'Can delete notice',14,'delete_notice'),(43,'Can add admin prof',15,'add_adminprof'),(44,'Can change admin prof',15,'change_adminprof'),(45,'Can delete admin prof',15,'delete_adminprof'),(46,'Can add inst scroll image',16,'add_instscrollimage'),(47,'Can change inst scroll image',16,'change_instscrollimage'),(48,'Can delete inst scroll image',16,'delete_instscrollimage'),(49,'Can add institution',17,'add_institution'),(50,'Can change institution',17,'change_institution'),(51,'Can delete institution',17,'delete_institution'),(52,'Can add tpo',18,'add_tpo'),(53,'Can change tpo',18,'change_tpo'),(54,'Can delete tpo',18,'delete_tpo'),(55,'Can add tied company',19,'add_tiedcompany'),(56,'Can change tied company',19,'change_tiedcompany'),(57,'Can delete tied company',19,'delete_tiedcompany'),(58,'Can add placement record',20,'add_placementrecord'),(59,'Can change placement record',20,'change_placementrecord'),(60,'Can delete placement record',20,'delete_placementrecord'),(61,'Can add special_ events',21,'add_special_events'),(62,'Can change special_ events',21,'change_special_events'),(63,'Can delete special_ events',21,'delete_special_events'),(64,'Can add admission',22,'add_admission'),(65,'Can change admission',22,'change_admission'),(66,'Can delete admission',22,'delete_admission'),(70,'Can add hostel',24,'add_hostel'),(71,'Can change hostel',24,'change_hostel'),(72,'Can delete hostel',24,'delete_hostel');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$8M7c0di6RWzD$e7POmYaG6NHF0N2AikSA0GydvZX0DgCOlyVUoMvKpeE=','2015-04-30 08:49:22',1,'kgecweb','','','kgecweb@gmail.com',1,1,'2015-04-30 08:47:13'),(2,'pbkdf2_sha256$20000$oEAHty33Gs0M$Y2NP1fdAM1hX+G/Vk9fFHCeOyIlf/n+o3JPMDhK53ds=','2015-07-12 12:14:13',1,'admin','','','bpain@gmail.com',1,1,'2015-05-05 13:49:51'),(3,'pbkdf2_sha256$20000$bxXpFaBMxc8F$JFbKPTc+iWVnCWeOf27yG7daUoXPz47DDClu2FWAMH8=','2015-05-16 17:48:36',0,'hello','Hello','','hello@gmail.com',1,1,'2015-05-16 17:45:21');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (3,3,1);
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_department`
--

DROP TABLE IF EXISTS `dept_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_department` (
  `DeptName` varchar(100) NOT NULL,
  `DeptStartDate` date NOT NULL,
  `DeptDescrip` longtext NOT NULL,
  `DeptOwner` varchar(100) NOT NULL,
  `DeptTagLine` varchar(200) NOT NULL,
  `DeptImage` varchar(100) NOT NULL,
  `DeptFullName` varchar(100) NOT NULL,
  PRIMARY KEY (`DeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_department`
--

LOCK TABLES `dept_department` WRITE;
/*!40000 ALTER TABLE `dept_department` DISABLE KEYS */;
INSERT INTO `dept_department` VALUES ('CSE','1995-05-07','Computer  Science and Engineering is one of the major disciplines being offered in this college since the outset of this college, in the year 1995, with approval from the All India Council for Technical Education, New Delhi, India. Two courses are offered in the department: Undergraduate (B.E.)  and Postgraduate (M.Tech).  \r\n\r\nThe strength of the department is it’s faculty members. The department has a strong group of 17 faculty members with a balanced combination of experienced as well as young blood. The department is equipped with a number of laboratories to cater the need of laboratory courses. All the faculty members are engaged in active research work and can ably guide the students in the classes and project works. A good number of sponsored projects are either carried out or being executed at present. Faculty members also publish good quality research papers frequently. Our students are our real strength. Incumbents in our department are top quality students admitted through WBJEE merit list. In past academic years all of our students have been picked up by reputed companies. We have excellent network facility in the department also. Hope, the Department will continue to show excellence in future.\r\n\r\n<blockquote class=\"pull-right\">\r\n  <p>Dr. Swapan Kumar Mondal.</p>\r\n</blockquote>\r\n','Dr. Swapan Kr. Mondal','Hello','dept_img/1011.jpg','ComputerScience&Engineering'),('IT','1995-05-07','IT dept','Dr. Malabika Sengupta','sfdsaf','dept_img/DSC00703.JPG','Information&Technology');
/*!40000 ALTER TABLE `dept_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_faculty`
--

DROP TABLE IF EXISTS `dept_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_faculty` (
  `FaculyId` int(11) NOT NULL AUTO_INCREMENT,
  `FacultyName` varchar(100) NOT NULL,
  `FacultyDOB` date NOT NULL,
  `FacultyImage` varchar(100) NOT NULL,
  `FacultyBio` longtext NOT NULL,
  `FacultyDept_id` varchar(100) NOT NULL,
  `FacultyContact` varchar(10) NOT NULL,
  `FacultyEmail` varchar(254) NOT NULL,
  PRIMARY KEY (`FaculyId`),
  KEY `dept_FacultyDept_id_3687d63ff41f11b4_fk_dept_department_DeptName` (`FacultyDept_id`),
  CONSTRAINT `dept_FacultyDept_id_3687d63ff41f11b4_fk_dept_department_DeptName` FOREIGN KEY (`FacultyDept_id`) REFERENCES `dept_department` (`DeptName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_faculty`
--

LOCK TABLES `dept_faculty` WRITE;
/*!40000 ALTER TABLE `dept_faculty` DISABLE KEYS */;
INSERT INTO `dept_faculty` VALUES (13,'Dr. Swapan Kr. Mondal','1965-05-14','faculty_img/skmandal.jpg','I dont Know','CSE','9999999999','paltaswapan@gmail.com'),(14,'Dr. Malabika Sengupta','1976-05-14','faculty_img/12.JPG','I dont know','IT','9999999999','2015-05-18 03:15:33.386488+00:00'),(15,'Prof. Koushik Dasgupta','2015-07-12','faculty_img/11.JPG','hellokk;dv;sd','CSE','9999999999','koushik.dasgupta@gmail.com');
/*!40000 ALTER TABLE `dept_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_staff`
--

DROP TABLE IF EXISTS `dept_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_staff` (
  `StaffId` int(11) NOT NULL AUTO_INCREMENT,
  `StaffName` varchar(100) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffImage` varchar(100) NOT NULL,
  `StaffBio` longtext NOT NULL,
  `StaffDept_id` varchar(100) NOT NULL,
  PRIMARY KEY (`StaffId`),
  KEY `dept_s_StaffDept_id_26d8a5289cfe8294_fk_dept_department_DeptName` (`StaffDept_id`),
  CONSTRAINT `dept_s_StaffDept_id_26d8a5289cfe8294_fk_dept_department_DeptName` FOREIGN KEY (`StaffDept_id`) REFERENCES `dept_department` (`DeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_staff`
--

LOCK TABLES `dept_staff` WRITE;
/*!40000 ALTER TABLE `dept_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `dept_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-04-30 09:10:09','1','Biswajit  Pain',1,'',7,1),(2,'2015-04-30 09:17:02','2','Biswajit  Pain',1,'',7,1),(3,'2015-04-30 09:17:29','1','Biswajit  Pain',2,'Changed date_of_birth.',7,1),(4,'2015-05-05 13:50:49','8','Biswajit  Pain',3,'',7,2),(5,'2015-05-05 13:50:49','7','Biswajit Pain',3,'',7,2),(6,'2015-05-05 13:50:49','6','Biswajit Pain',3,'',7,2),(7,'2015-05-05 13:50:49','5','Biswajit  Pain',3,'',7,2),(8,'2015-05-05 13:50:49','4','Biswajit  Pain',3,'',7,2),(9,'2015-05-05 13:50:49','3','Biswajit Pain',3,'',7,2),(10,'2015-05-05 15:49:14','2','Biswajit  Pain',3,'',7,2),(11,'2015-05-05 15:49:14','1','Biswajit  Pain',3,'',7,2),(12,'2015-05-06 12:35:39','1','Department object',1,'',8,2),(13,'2015-05-06 13:06:27','1','Department object',2,'Changed DeptName and DeptDescrip.',8,2),(14,'2015-05-06 13:07:07','2','Department object',1,'',8,2),(15,'2015-05-06 13:26:19','3','Department object',1,'',8,2),(16,'2015-05-06 19:12:54','1','Faculty object',1,'',9,2),(17,'2015-05-06 19:30:35','1','Faculty object',3,'',9,2),(18,'2015-05-06 19:32:09','4','Department object',1,'',8,2),(19,'2015-05-06 19:40:59','2','Faculty object',1,'',9,2),(20,'2015-05-06 19:44:06','3','Faculty object',1,'',9,2),(21,'2015-05-06 20:25:15','CSE','Department object',1,'',11,2),(22,'2015-05-06 20:26:06','1','Faculty object',1,'',12,2),(23,'2015-05-06 21:06:23','IT','IT',1,'',11,2),(24,'2015-05-06 21:07:23','2','Pulak Ghosh',1,'',12,2),(25,'2015-05-06 21:35:04','3','Subhasish Kundu',1,'',12,2),(26,'2015-05-06 21:35:50','4','Naba Sir',1,'',12,2),(27,'2015-05-08 10:16:55','5','Munai',1,'',12,2),(28,'2015-05-08 10:17:08','6','wdqwfdrqwFDR',1,'',12,2),(29,'2015-05-08 10:17:24','7','wdqWFGFaf',1,'',12,2),(30,'2015-05-08 10:17:36','8','safDGSFAGFD',1,'',12,2),(31,'2015-05-08 10:18:32','9','sfdsfgsdf',1,'',12,2),(32,'2015-05-08 10:18:56','10','sfddsfafsa',1,'',12,2),(33,'2015-05-08 13:01:57','MCA','MCA',1,'',11,2),(34,'2015-05-08 13:02:54','ME','ME',1,'',11,2),(35,'2015-05-08 13:04:53','ComputerScience&Engineering','ComputerScience&Engineering',2,'Changed DeptName, DeptDescrip and DeptTagLine.',11,2),(36,'2015-05-08 13:42:15','ComputerScience&Engineering','ComputerScience&Engineering',3,'',11,2),(37,'2015-05-08 13:43:20','CSE','CSE',2,'Changed DeptFullNamee.',11,2),(38,'2015-05-08 13:43:46','CSE','CSE',2,'No fields changed.',11,2),(39,'2015-05-08 13:44:04','IT','IT',2,'Changed DeptFullNamee.',11,2),(40,'2015-05-08 13:44:23','MCA','MCA',2,'Changed DeptFullNamee.',11,2),(41,'2015-05-08 13:44:37','ME','ME',2,'Changed DeptFullNamee.',11,2),(42,'2015-05-08 14:55:07','1','Biswajit',1,'',13,2),(43,'2015-05-08 14:58:19','2','Anurag Prasad',1,'',13,2),(44,'2015-05-08 16:00:20','CSE','CSE',2,'Changed DeptDescrip.',11,2),(45,'2015-05-08 16:03:43','11','Santanu Das',1,'',12,2),(46,'2015-05-08 16:08:54','12','lau bose',1,'',12,2),(47,'2015-05-08 17:22:35','ECE','ECE',1,'',11,2),(48,'2015-05-08 17:23:25','ECE','ECE',2,'Changed DeptImage.',11,2),(49,'2015-05-08 17:25:05','IT','IT',2,'Changed DeptOwner.',11,2),(50,'2015-05-08 18:15:36','CSE','CSE',2,'Changed DeptDescrip.',11,2),(51,'2015-05-08 18:33:17','CSE','CSE',2,'Changed DeptDescrip.',11,2),(52,'2015-05-08 18:36:03','CSE','CSE',2,'Changed DeptDescrip.',11,2),(53,'2015-05-08 20:16:27','ME','ME',2,'Changed DeptOwner.',11,2),(54,'2015-05-08 20:17:07','11','Dr.Santanu Das',2,'Changed FacultyName.',12,2),(55,'2015-05-08 20:17:28','ME','ME',2,'Changed DeptOwner.',11,2),(56,'2015-05-09 09:06:09','1','Result Publish',1,'',14,2),(57,'2015-05-09 11:03:05','PRI','AdminProf object',1,'',15,2),(58,'2015-05-09 11:04:42','PRI','AdminProf object',3,'',15,2),(59,'2015-05-09 11:07:36','PRI','AdminProf object',1,'',15,2),(60,'2015-05-09 11:13:05','REG','REG',1,'',15,2),(61,'2015-05-09 12:03:28','1','baler hero',1,'',16,2),(62,'2015-05-09 12:21:42','Kalyani Government Engineering College','Kalyani Government Engineering College',1,'',17,2),(63,'2015-05-09 13:52:20','Kalyani Government Engineering College','Kalyani Government Engineering College',2,'Changed InstDescrip.',17,2),(64,'2015-05-09 13:54:16','Kalyani Government Engineering College','Kalyani Government Engineering College',2,'Changed InstDescrip.',17,2),(65,'2015-05-09 13:55:58','Kalyani Government Engineering College','Kalyani Government Engineering College',2,'Changed InstDescrip.',17,2),(66,'2015-05-09 19:54:55','1','Dr.Biswajit Pain',2,'Changed FacultyName.',12,2),(67,'2015-05-09 19:57:33','1','Biswajit Pain',2,'Changed FacultyName.',12,2),(68,'2015-05-10 11:09:18','2','Amder oi hero',1,'',16,2),(69,'2015-05-10 12:09:52','2','Amder oi hero',3,'',16,2),(70,'2015-05-10 12:51:37','2','TCS Placement on 23rd February',1,'',14,2),(71,'2015-05-10 13:24:35','3','Baler tender',1,'',14,2),(72,'2015-05-10 13:26:43','4','love ajkal',1,'',14,2),(73,'2015-05-10 13:27:26','5','love kal',1,'',14,2),(74,'2015-05-10 13:57:07','6','Java training ',1,'',14,2),(75,'2015-05-10 13:58:34','7','4th year exam schedule',1,'',14,2),(76,'2015-05-10 13:59:07','8','4th year exam result',1,'',14,2),(77,'2015-05-10 13:59:44','8','4th year exam result',2,'Changed NoticeType.',14,2),(78,'2015-05-10 14:51:32','5','Holidy',2,'Changed NoticeTag.',14,2),(79,'2015-05-10 14:51:58','4','College Day',2,'Changed NoticeTag.',14,2),(80,'2015-05-10 14:52:29','3','Purchase Water Purifier',2,'Changed NoticeTag.',14,2),(81,'2015-05-10 15:56:50','9','Nabdar biea',1,'',14,2),(82,'2015-05-12 19:26:50','1','TataConsaltencyServices',1,'',19,2),(83,'2015-05-12 19:27:45','1','PlacementRecord object',1,'',20,2),(84,'2015-05-12 19:31:03','1','Professor M K Kumar',1,'',18,2),(85,'2015-05-12 19:40:16','2','Promptcloud',1,'',19,2),(86,'2015-05-13 08:48:08','1','Tata Consaltency Services',2,'Changed CompanyName.',19,2),(87,'2015-05-13 08:48:22','2','Prompt Cloud',2,'Changed CompanyName.',19,2),(88,'2015-05-13 09:50:39','1','Professor M K Kumar',2,'Changed TpotDesk.',18,2),(89,'2015-05-13 09:51:40','1','Professor M K Kumar',2,'Changed TpotDesk.',18,2),(90,'2015-05-13 09:52:11','1','Professor M K Kumar',2,'Changed TpotDesk.',18,2),(91,'2015-05-13 09:52:56','1','Professor M K Kumar',2,'Changed TpotDesk.',18,2),(92,'2015-05-13 18:28:17','10','sfddsfafsa',3,'',12,2),(93,'2015-05-13 18:28:17','9','sfdsfgsdf',3,'',12,2),(94,'2015-05-13 18:28:17','8','safDGSFAGFD',3,'',12,2),(95,'2015-05-13 18:28:17','7','wdqWFGFaf',3,'',12,2),(96,'2015-05-13 18:28:17','5','Munai',3,'',12,2),(97,'2015-05-13 18:28:17','4','Naba Sir',3,'',12,2),(98,'2015-05-13 18:28:18','1','Biswajit Pain',3,'',12,2),(99,'2015-05-13 18:28:49','CSE','CSE',2,'Changed DeptImage.',11,2),(100,'2015-05-13 18:32:51','CSE','CSE',2,'Changed DeptImage.',11,2),(101,'2015-05-13 18:36:49','IT','IT',2,'Changed DeptImage.',11,2),(102,'2015-05-13 18:38:03','IT','IT',2,'Changed DeptImage.',11,2),(103,'2015-05-13 18:39:16','IT','IT',2,'Changed DeptImage.',11,2),(104,'2015-05-13 18:47:57','IT','IT',2,'Changed DeptImage.',11,2),(105,'2015-05-13 18:49:32','3','Subhasish Kundu',2,'Changed FacultyImage.',12,2),(106,'2015-05-13 18:58:26','1','Tata Consaltency Services',2,'Changed CompanyLogo.',19,2),(107,'2015-05-13 18:59:18','2','Prompt Cloud',2,'Changed CompanyLogo.',19,2),(108,'2015-05-13 19:15:04','1','Mrinal Kanti Kumar',2,'Changed TpoName and TpoImage.',18,2),(109,'2015-05-13 19:32:29','CSE','CSE',2,'Changed DeptImage.',11,2),(110,'2015-05-13 20:24:56','2','PlacementRecord object',1,'',20,2),(111,'2015-05-13 20:49:32','3','PlacementRecord object',1,'',20,2),(112,'2015-05-13 20:50:00','4','PlacementRecord object',1,'',20,2),(113,'2015-05-13 20:58:41','1','Tata Consaltency Services',2,'Changed CompanyLogo.',19,2),(114,'2015-05-13 21:04:23','1','Tata Consaltency Services',2,'Changed CompanyLogo.',19,2),(115,'2015-05-13 21:06:13','2','Prompt Cloud',2,'Changed CompanyLogo.',19,2),(116,'2015-05-13 21:14:18','3','Atos',1,'',19,2),(117,'2015-05-13 21:15:07','4','Digital Dynamic Technology',1,'',19,2),(118,'2015-05-13 21:16:36','5','Plivo',1,'',19,2),(119,'2015-05-13 21:17:07','6','Capgemini',1,'',19,2),(120,'2015-05-13 21:23:21','7','Hello',1,'',19,2),(121,'2015-05-13 21:24:01','4','DDT',2,'Changed CompanyName.',19,2),(122,'2015-05-13 21:24:16','1','TCS',2,'Changed CompanyName.',19,2),(123,'2015-05-14 13:06:36','1','Tata Consaltency Services',2,'Changed CompanyName.',19,2),(124,'2015-05-14 13:07:07','4','Digital Dynamic Technology',2,'Changed CompanyName.',19,2),(125,'2015-05-14 13:07:25','5','PlacementRecord object',1,'',20,2),(126,'2015-05-14 13:10:25','CSE','CSE',2,'Changed DeptImage.',11,2),(127,'2015-05-14 13:12:29','CSE','CSE',2,'Changed DeptImage.',11,2),(128,'2015-05-14 13:28:33','13','Dr. Swapan Kr. Mondal',1,'',12,2),(129,'2015-05-14 13:28:43','CSE','CSE',2,'Changed DeptOwner.',11,2),(130,'2015-05-14 13:37:49','14','Dr. Malabika Sengupta',1,'',12,2),(131,'2015-05-14 13:38:42','IT','IT',2,'Changed DeptOwner.',11,2),(132,'2015-05-14 13:39:33','6','wdqwfdrqwFDR',3,'',12,2),(133,'2015-05-14 13:39:33','3','Subhasish Kundu',3,'',12,2),(134,'2015-05-14 13:39:33','2','Pulak Ghosh',3,'',12,2),(135,'2015-05-14 13:40:51','12','lau bose',3,'',12,2),(136,'2015-05-14 15:23:54','6','PlacementRecord object',1,'',20,2),(137,'2015-05-14 18:23:04','2','Anurag Prasad',3,'',13,2),(138,'2015-05-14 18:23:04','1','Biswajit',3,'',13,2),(139,'2015-05-14 18:23:44','11','Dr.Santanu Das',2,'Changed FacultyBio.',12,2),(140,'2015-05-16 17:44:41','1','notice',1,'',3,2),(141,'2015-05-16 17:45:22','3','hello',1,'',4,2),(142,'2015-05-16 17:45:44','3','hello',2,'Changed groups.',4,2),(143,'2015-05-16 17:46:12','3','hello',2,'Changed first_name and email.',4,2),(144,'2015-05-16 17:47:55','3','hello',2,'Changed password.',4,2),(145,'2015-05-16 17:48:16','3','hello',2,'Changed is_staff.',4,2),(146,'2015-05-18 04:10:51','9','Nabdar biea',3,'',14,2),(147,'2015-05-24 16:48:47','1','PlacementRecord object',2,'Changed PrYear.',20,2),(148,'2015-05-24 16:49:37','2','PlacementRecord object',2,'Changed PrYear.',20,2),(149,'2015-05-24 17:18:12','1','Mrinal Kanti Kumar',2,'Changed TpoImage.',18,2),(150,'2015-05-26 02:39:11','PRI','PRI',2,'Changed AdminImage.',15,2),(151,'2015-05-26 02:41:07','REG','REG',2,'Changed AdminImage.',15,2),(152,'2015-05-26 02:48:57','PRI','PRI',2,'Changed AdminWord.',15,2),(153,'2015-05-27 14:25:49','PRINCIPAL','PRINCIPAL',2,'Changed AdminType, AdminEmailId and AdminPhoneNo.',15,2),(154,'2015-05-27 14:26:03','PRI','PRI',3,'',15,2),(155,'2015-05-27 14:26:24','8','4th year exam result',2,'Changed NoticeType.',14,2),(156,'2015-05-27 14:26:40','1','Result Publish',2,'Changed NoticeType.',14,2),(157,'2015-05-27 14:56:46','7','4th year exam schedule',2,'Changed NoticeType.',14,2),(158,'2015-05-27 14:57:20','6','Java training ',2,'Changed NoticeType.',14,2),(159,'2015-05-27 14:57:27','5','Holidy',2,'Changed NoticeType.',14,2),(160,'2015-05-27 15:18:15','8','4th year exam result',2,'Changed NoticeType.',14,2),(161,'2015-05-27 15:18:24','7','4th year exam schedule',2,'Changed NoticeType.',14,2),(162,'2015-05-27 15:18:30','6','Java training ',2,'Changed NoticeType.',14,2),(163,'2015-05-27 15:18:39','5','Holidy',2,'Changed NoticeType.',14,2),(164,'2015-05-27 15:18:46','4','College Day',2,'Changed NoticeType.',14,2),(165,'2015-05-27 15:18:52','3','Purchase Water Purifier',2,'Changed NoticeType.',14,2),(166,'2015-05-27 15:19:03','2','TCS Placement on 23rd February',2,'Changed NoticeType.',14,2),(167,'2015-05-27 15:31:18','1','Result Publish',2,'Changed NoticeType.',14,2),(168,'2015-05-27 15:33:23','9','ache baler company',1,'',14,2),(169,'2015-05-27 16:29:47','5','Holidy',2,'Changed NoticeType.',14,2),(170,'2015-05-27 16:34:52','5','Holidy',2,'No fields changed.',14,2),(171,'2015-05-30 11:00:54','Kalyani Government Engineering College','Kalyani Government Engineering College',1,'',17,2),(172,'2015-05-30 11:04:51','2','TCS Placement on 23rd February',2,'Changed NoticeType.',14,2),(173,'2015-05-30 15:23:03','1','Result Publish',2,'Changed NoticeType.',14,2),(174,'2015-05-30 15:41:47','REGISTRAR','REGISTRAR',2,'Changed AdminType, AdminEmailId and AdminPhoneNo.',15,2),(175,'2015-05-30 15:41:59','REG','REG',3,'',15,2),(176,'2015-05-30 15:44:52','REGISTRAR','REGISTRAR',3,'',15,2),(177,'2015-05-30 15:46:08','REGISTRAR','REGISTRAR',1,'',15,2),(178,'2015-05-30 16:31:07','REGISTRAR','REGISTRAR',2,'Changed AdminName, AdminWord, AdminEmailId and AdminPhoneNo.',15,2),(179,'2015-05-30 16:32:20','PRINCIPAL','PRINCIPAL',2,'Changed AdminEmailId.',15,2),(180,'2015-05-30 16:34:52','9','New Company has Registered',2,'Changed NoticeTag.',14,2),(181,'2015-05-31 04:45:45','10','Google joined in campus placem',1,'',14,2),(182,'2015-05-31 04:49:36','10','Google joined in campus placem',2,'Changed NoticeType.',14,2),(183,'2015-05-31 13:53:44','1','Congratulation',1,'',21,2),(184,'2015-05-31 13:59:11','2','Topprs',1,'',21,2),(185,'2015-05-31 14:18:07','2','Topprs',2,'Changed Events_Descriptions.',21,2),(186,'2015-05-31 14:49:56','1','Congratulation GATE 2015',2,'Changed Events_Name.',21,2),(187,'2015-05-31 14:54:22','3','Techtx 2015',1,'',21,2),(188,'2015-05-31 15:08:34','1','Congratulationabcd GATE 2015',2,'Changed Events_Name.',21,2),(189,'2015-05-31 15:10:50','1','Congratulationa GATE 2015',2,'Changed Events_Name.',21,2),(190,'2015-05-31 15:11:30','1','Congratulation GATE 2015',2,'Changed Events_Name.',21,2),(191,'2015-05-31 15:12:41','2','Topprs ME 2015',2,'Changed Events_Name.',21,2),(192,'2015-05-31 15:19:52','4','Aakash Workshops ',1,'',21,2),(193,'2015-05-31 15:20:36','4','Aakash Workshops  in kgec',2,'Changed Events_Name.',21,2),(194,'2015-05-31 15:23:47','4','AakashWorkshop  in kgec',2,'Changed Events_Name.',21,2),(195,'2015-05-31 15:25:04','5','Exotica 2015',1,'',21,2),(196,'2015-05-31 15:25:33','4','Aakash Workshop  in kgec',2,'Changed Events_Name.',21,2),(197,'2015-06-06 15:14:10','ECE','ECE',2,'Changed DeptImage.',11,2),(198,'2015-06-06 15:15:23','ME','ME',3,'',11,2),(199,'2015-06-06 16:32:27','MCA','MCA',3,'',11,2),(200,'2015-06-06 16:32:36','ECE','ECE',3,'',11,2),(201,'2015-07-12 12:45:36','btech','btech',1,'',22,2),(202,'2015-07-12 13:01:58','btech','btech',2,'Changed Admission_Details.',22,2),(203,'2015-07-12 13:39:52','mtech','mtech',1,'',22,2),(204,'2015-07-12 13:40:12','mca','mca',1,'',22,2),(205,'2015-07-12 13:47:23','15','Prof. Koushik Dasgupta',1,'',12,2),(206,'2015-07-12 15:11:15','13','Dr. Swapan Kr. Mondal',2,'Changed FacultyEmail.',12,2);
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
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(15,'administration','adminprof'),(22,'administration','admission'),(17,'administration','institution'),(16,'administration','instscrollimage'),(14,'administration','notice'),(21,'administration','special_events'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'department','department'),(9,'department','faculty'),(10,'department','staff'),(11,'dept','department'),(12,'dept','faculty'),(13,'dept','staff'),(24,'hostels','hostel'),(6,'sessions','session'),(7,'student','student'),(20,'trplc','placementrecord'),(19,'trplc','tiedcompany'),(18,'trplc','tpo');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-04-30 08:46:19'),(2,'auth','0001_initial','2015-04-30 08:46:21'),(3,'admin','0001_initial','2015-04-30 08:46:22'),(4,'contenttypes','0002_remove_content_type_name','2015-04-30 08:46:22'),(5,'auth','0002_alter_permission_name_max_length','2015-04-30 08:46:22'),(6,'auth','0003_alter_user_email_max_length','2015-04-30 08:46:23'),(7,'auth','0004_alter_user_username_opts','2015-04-30 08:46:23'),(8,'auth','0005_alter_user_last_login_null','2015-04-30 08:46:23'),(9,'auth','0006_require_contenttypes_0002','2015-04-30 08:46:23'),(10,'sessions','0001_initial','2015-04-30 08:46:23'),(11,'student','0001_initial','2015-04-30 08:52:22'),(12,'student','0002_auto_20150430_1444','2015-04-30 09:15:09'),(13,'student','0003_student_docfile','2015-04-30 12:27:00'),(14,'department','0001_initial','2015-05-06 11:49:54'),(15,'department','0002_department_deptimage','2015-05-06 12:33:21'),(16,'department','0003_auto_20150506_1804','2015-05-06 12:34:45'),(17,'department','0004_faculty_staff','2015-05-06 19:10:46'),(18,'dept','0001_initial','2015-05-06 20:23:20'),(19,'dept','0004_department_deptfullnamee','2015-05-08 13:37:22'),(20,'administration','0001_initial','2015-05-09 08:59:22'),(21,'administration','0002_adminprof','2015-05-09 10:49:53'),(22,'administration','0003_auto_20150509_1634','2015-05-09 11:05:02'),(23,'administration','0004_auto_20150509_1725','2015-05-09 11:55:45'),(24,'trplc','0001_initial','2015-05-12 19:13:20'),(25,'trplc','0002_auto_20150513_0042','2015-05-12 19:13:20'),(26,'trplc','0003_auto_20150513_0056','2015-05-12 19:26:39'),(27,'administration','0005_auto_20150513_2355','2015-05-13 18:26:17'),(28,'dept','0002_auto_20150513_2355','2015-05-13 18:26:17'),(29,'trplc','0004_auto_20150513_2355','2015-05-13 18:26:17'),(30,'dept','0003_auto_20150518_0845','2015-05-18 03:15:37'),(31,'administration','0006_auto_20150527_1953','2015-05-27 14:24:15'),(32,'administration','0007_auto_20150531_1914','2015-05-31 13:44:55'),(33,'administration','0008_auto_20150712_1744','2015-07-12 12:15:22'),(34,'administration','0009_auto_20150712_1751','2015-07-12 12:21:51'),(35,'administration','0010_auto_20150712_1756','2015-07-12 12:26:08'),(36,'administration','0011_remove_admission_record_admission_year','2015-07-12 12:40:37'),(37,'administration','0012_auto_20150712_1814','2015-07-12 12:44:50'),(38,'hostels','0001_initial','2015-07-12 17:07:21');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4mdznofjscj7zmrg2y9kwiyhh2c9wz9u','MTIwOGI4ZGEwNTgyMTFmZjg2Y2I2MjM0NGQ3YWUxZWVhZjM5Mjg1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZDhkZDViMDA0ZTdjNjBmMjRkMjdlNjM3OWZkOWFkMzNiNzIzYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2015-06-01 04:10:35'),('e2igtha1x4rptb86mb4cnfth6kedxmn9','MTIwOGI4ZGEwNTgyMTFmZjg2Y2I2MjM0NGQ3YWUxZWVhZjM5Mjg1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZDhkZDViMDA0ZTdjNjBmMjRkMjdlNjM3OWZkOWFkMzNiNzIzYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2015-07-26 12:14:13'),('nuf6kown5poo66myuiirw293v14jlydk','NzY3YzNjZTM4NjJhOTZlM2ZiNTUwN2E1YjU2NzFhZGNmNWZhNWRiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzYTZkNmRhODNmMTQ4YjYyNTc1NzY3NWI5ZjA2MDQ4YjZiNWE5YjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-05-14 08:49:22'),('vjybvwuqon1f0to98991ko3qnf0n69wr','MTIwOGI4ZGEwNTgyMTFmZjg2Y2I2MjM0NGQ3YWUxZWVhZjM5Mjg1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZDhkZDViMDA0ZTdjNjBmMjRkMjdlNjM3OWZkOWFkMzNiNzIzYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2015-06-20 15:13:29');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostels_hostel`
--

DROP TABLE IF EXISTS `hostels_hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostels_hostel` (
  `HostelName` varchar(100) NOT NULL,
  `HostelType` varchar(10) NOT NULL,
  `HostelSeat` decimal(3,2) NOT NULL,
  `HostelImage` varchar(100) NOT NULL,
  `HostelAddress` varchar(200) NOT NULL,
  PRIMARY KEY (`HostelName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostels_hostel`
--

LOCK TABLES `hostels_hostel` WRITE;
/*!40000 ALTER TABLE `hostels_hostel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostels_hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_student`
--

DROP TABLE IF EXISTS `student_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `department` varchar(55) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `docfile` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_student`
--

LOCK TABLES `student_student` WRITE;
/*!40000 ALTER TABLE `student_student` DISABLE KEYS */;
INSERT INTO `student_student` VALUES (3,'Biswajit ','Pain','1990-06-22','','CSE','2nd','','documents/2015/05/05/DSC00729.JPG'),(4,'Biswajit ','Pain','1990-06-22','','MEC','4th','','documents/2015/05/05/DSC00769.JPG'),(5,'Biswajit ','Pain','1990-06-22','','IT','2nd','','documents/2015/05/05/DSC00744.JPG'),(6,'Biswajit ','Pain','1990-06-22','','CSE','2nd','','documents/2015/05/06/DSC00677.JPG'),(7,'Biswajit ','Pain','1990-06-22','','CSE','2nd','','documents/2015/05/06/DSC00674.JPG');
/*!40000 ALTER TABLE `student_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trplc_placementrecord`
--

DROP TABLE IF EXISTS `trplc_placementrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trplc_placementrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PrYear` int(11) NOT NULL,
  `PlacedStudent` int(11) NOT NULL,
  `MaxSalary` decimal(4,2) NOT NULL,
  `PrCompany_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trplc_placementrecord_c1deeb6d` (`PrCompany_id`),
  CONSTRAINT `trplc_plac_PrCompany_id_3762c46046354db5_fk_trplc_tiedcompany_id` FOREIGN KEY (`PrCompany_id`) REFERENCES `trplc_tiedcompany` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trplc_placementrecord`
--

LOCK TABLES `trplc_placementrecord` WRITE;
/*!40000 ALTER TABLE `trplc_placementrecord` DISABLE KEYS */;
INSERT INTO `trplc_placementrecord` VALUES (1,2013,205,3.16,1),(2,2012,210,12.34,1),(3,2015,12,22.00,2),(4,2014,122,3.16,1),(5,2015,12,4.43,4),(6,2015,2,23.00,5);
/*!40000 ALTER TABLE `trplc_placementrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trplc_tiedcompany`
--

DROP TABLE IF EXISTS `trplc_tiedcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trplc_tiedcompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(100) NOT NULL,
  `CompanyLogo` varchar(100) NOT NULL,
  `CompanyUrl` varchar(200) NOT NULL,
  `AssociatedFrom` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trplc_tiedcompany`
--

LOCK TABLES `trplc_tiedcompany` WRITE;
/*!40000 ALTER TABLE `trplc_tiedcompany` DISABLE KEYS */;
INSERT INTO `trplc_tiedcompany` VALUES (1,'Tata Consaltency Services','tlpc/companylogo/images.jpg','http://www.tcs.com','2005-05-13'),(2,'Prompt Cloud','tlpc/companylogo/prompt-cloud-final-logo.png','http://www.promptcloud.com','2015-05-13'),(3,'Atos','tlpc/companylogo/Atos-logo.png','http://www.atos.com','2010-05-14'),(4,'Digital Dynamic Technology','tlpc/companylogo/ddt.jpg','http://www.polaris.com','2010-05-14'),(5,'Plivo','tlpc/companylogo/plivo_icon.png','http://www.plivo.com','2013-05-14'),(6,'Capgemini','tlpc/companylogo/capgemini.jpeg','http://www.capgemini.com','2011-05-14'),(7,'Hello','tlpc/companylogo/capgemini_4M6g0It.jpeg','http://www.hello.com','2015-05-14');
/*!40000 ALTER TABLE `trplc_tiedcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trplc_tpo`
--

DROP TABLE IF EXISTS `trplc_tpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trplc_tpo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TpoName` varchar(100) NOT NULL,
  `TpoEmailId` varchar(254) NOT NULL,
  `TopPhone1` varchar(10) NOT NULL,
  `TopPhone2` varchar(10) NOT NULL,
  `TpoImage` varchar(100) NOT NULL,
  `TpotDesk` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trplc_tpo`
--

LOCK TABLES `trplc_tpo` WRITE;
/*!40000 ALTER TABLE `trplc_tpo` DISABLE KEYS */;
INSERT INTO `trplc_tpo` VALUES (1,'Mrinal Kanti Kumar','trg_placement@email.com','99999999','11111111','tlpc/person.png','<b>Greetings from KGEC!!!!</b></br>\r\n\r\nWe cordially invite your esteemed organization to participate in the campus recruitment drive for the students graduating every year in the month of June. Presently our campus recruitment process starts after 6th semester for B.Tech,, 4th semester for MCA and 2nd semester for M.Tech. students. It is generally spread over approximately one year for every batch, starting from July and ending at June.\r\n\r\nWithin the short tenure since its inception in the year 1995, our college has been able to establish the reputation for its students within the state of West Bengal and outside the state, as well as in other countries in their respective disciplines. Our institute is now one of the leading engineering colleges in the state.\r\n\r\nFor their significant contribution to their respective fields, our alumni have received prestigious awards from international organizations like Microsoft, Google etc. One of our alumni got Young Scientist Award for 2008-09 by the Indian Science Congress for his research in Low Power Communication as well as a number of other factors as taken into account by the award committee. Our alumni are now successfully working in different reputed organization of our country and outside the country as well.\r\n\r\nM/s Tata consultancy Services (T.C.S.) has also graded our college‚ \'A\' as per its own accreditation system. It may please be mentioned that the standard of Kalyani Government Engineering College is at par with the other reputed institutions across the country. Quick on grasping knowledge, with good communication and human relations skills and aware of modern developments, the typical KGECian is expected to play a very important role in organizations like yours wanting to be internationally competitive in terms of products, services and technology. At KGEC you would find candidates meeting your requirements. It will be my pleasure to assist in your recruitment efforts to meet the challenges ahead. We will provide all infrastructure and necessary support for smooth conducting of the recruitment process.\r\n\r\nOver and above a rigorous academic schedule, we place a great emphasis on all round development of our students. Our students, in addition to their academic duties, also come forward with great enthusiasm to actively participate in various co-curricular and extra curricular activities in the college. Such activities include organizing and participation in sports and games, social activities, cultural programmes, technological and career fares etc. Students are also involved in various bodies of the college, such as Governing Body, Library Committee etc. \r\n\r\nOur institute is having a huge campus with about 75 acres of land. The distance of our institute from Dum Dum airport through Kalyani Express Highway is only one and quarter hour journey and from Howrah railway station about two hours journey by road.\r\n\r\nKeeping all the above in the backdrop, it is therefore, earnestly requested to kindly fix up a date for conducting the campus interview for our passing out batch students.\r\n\r\nIf interested in making an early Pre-Placement Talk, please let us know the preferred date.');
/*!40000 ALTER TABLE `trplc_tpo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-05 19:37:49
