-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tasklance
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `TaskerProfile`
--

DROP TABLE IF EXISTS `TaskerProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskerProfile` (
  `TaskerID` int(11) DEFAULT NULL,
  `ProfileName` varchar(30) DEFAULT NULL,
  `ProfileDescription` varchar(1000) DEFAULT NULL,
  `TotalExperience` smallint(6) DEFAULT NULL,
  `Education` varchar(50) DEFAULT NULL,
  `Certifications` varchar(50) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `DisabilityType` tinyint(4) DEFAULT NULL,
  `DisabilityPercentage` tinyint(4) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `aadharNo` varchar(20) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `disability_cert_no` varchar(50) DEFAULT NULL,
  `LastProjectId` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskerProfile`
--

LOCK TABLES `TaskerProfile` WRITE;
/*!40000 ALTER TABLE `TaskerProfile` DISABLE KEYS */;
INSERT INTO `TaskerProfile` VALUES (13,'sonali bhondivale',NULL,0,'12 running',NULL,1,NULL,NULL,NULL,4,'kopri area,arizona building, 7th floor,702','779415607444','12 running',NULL,NULL,NULL),(14,'Aarti navnath karale',NULL,0,'B Com',NULL,1,1,10,'1996-05-06 18:30:00',1,'Aarti navnath karale','AD1234','B Com','D1234',NULL,NULL),(15,'SUNIL POLAMPELLI',NULL,0,'B Com',NULL,1,1,10,'1996-04-03 18:30:00',1,'SUNIL POLAMPELLI','AD1111','B Com','D2222',NULL,NULL),(18,'Sameer rajendra rava',NULL,0,'Bachlore of Banking and insurance',NULL,1,NULL,NULL,'1994-10-13 18:30:00',1,'34,b wing, Pratik building, nivatia road, Malad east, Mumbai 400097','652342243411','Bachlore of Banking and insurance',NULL,NULL,NULL),(19,'Sumit Arjun Sawant',NULL,1,'BEIT',NULL,1,NULL,NULL,'1993-09-06 18:30:00',1,'chembur','201496199541','BEIT',NULL,NULL,NULL),(1216,'heefzan shaikh',NULL,3,'Graduate',NULL,1,NULL,NULL,'1995-07-10 18:30:00',1216,'fnh b79 behind shaikh misri dargah antophill wadala mumbai','567268551376','Graduate',NULL,NULL,NULL),(21,'Maxwell Victor Fargo',NULL,0,'B.Com Mumbai University 2016',NULL,1,1,10,'1995-03-18 18:30:00',1,'Mumbai','A1234','B.Com Mumbai University 2016','D1234',NULL,NULL),(22,'Pooja Sainath Jadhav',NULL,0,'M.Tech Mumbai University 2019',NULL,1,6,0,'1992-12-01 18:30:00',1,'Non-U.S.','A1234','M.Tech Mumbai University 2019','NA',NULL,NULL),(24,'Ankit Desai',NULL,6,'B.E',NULL,1,6,0,'1994-02-15 18:30:00',1,'Mah?r?shtra','553278909329','B.E','NA',NULL,NULL),(1217,'A',NULL,1,'BE',NULL,1,2,10,'1933-02-01 18:30:00',1217,'Non-U.S.','A1234','BE','D1234',NULL,NULL),(1218,'Reshma Katti',NULL,0,'BE',NULL,1,3,30,'2000-12-31 18:30:00',1218,'Thane','A1234','BE','D1234',NULL,NULL),(28,'Prashant Ramesh Shin',NULL,3,'Bachelor of Engineering in Computers',NULL,1,1,45,'1994-02-25 08:00:00',1217,'AL/1/513,Shiv Shankar Apt,sec-16,Airoli','752208593819','Bachelor of Engineering in Computers','008376',NULL,NULL),(1219,'A',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1219,'MH',NULL,NULL,NULL,NULL,NULL),(30,'AKASH CHAVAN',NULL,0,'BE',NULL,1,6,0,'1994-08-13 18:30:00',1217,'mumbai','841412895821','BE','NA',NULL,NULL),(31,'Avishkar Meshram',NULL,2,'BE',NULL,1,6,0,'1976-06-05 18:30:00',1217,'MH','ABCD','BE','NA',NULL,NULL),(32,'Tasklance',NULL,1,'BE',NULL,1,6,0,'1990-12-31 18:30:00',1217,'Non-U.S.','A1234','BE','NA',NULL,NULL),(1220,'Ganesh Patil',NULL,0,'BE',NULL,1,6,0,'1989-03-31 18:30:00',1220,'Karnataka','644841909925','BE','NA',NULL,NULL),(34,'sweta pushpam',NULL,2,'MCA',NULL,1,6,0,'1992-05-01 18:30:00',1217,'powai','A1234','MCA','na',NULL,NULL),(1221,'maitrilekha',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1221,'Mumbai',NULL,NULL,NULL,NULL,NULL),(36,'Manish Meshram',NULL,0,'BCom',NULL,1,6,0,'1988-08-08 18:30:00',1222,'Mumbai','A1234','BCom','NA',NULL,NULL),(37,'Payal Mulchandani',NULL,1,'Masters',NULL,1,6,0,'1986-07-03 18:30:00',1217,'of10, Powai','A1234','Masters','NA',NULL,NULL);
/*!40000 ALTER TABLE `TaskerProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=1223 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Mumbai','Maharashtra'),(2,'Delhi','Delhi'),(3,'Bengaluru','Karnataka'),(4,'Ahmedabad','Gujarat'),(5,'Hyderabad','Telangana'),(6,'Chennai','Tamil Nadu'),(7,'Kolkata','West Bengal'),(8,'Pune','Maharashtra'),(9,'Jaipur','Rajasthan'),(10,'Surat','Gujarat'),(11,'Lucknow','Uttar Pradesh'),(12,'Kanpur','Uttar Pradesh'),(13,'Nagpur','Maharashtra'),(14,'Patna','Bihar'),(15,'Indore','Madhya Pradesh'),(16,'Thane','Maharashtra'),(17,'Bhopal','Madhya Pradesh'),(18,'Visakhapatnam','Andhra Pradesh'),(19,'Vadodara','Gujarat'),(20,'Firozabad','Uttar Pradesh'),(21,'Ludhiana','Punjab'),(22,'Rajkot','Gujarat'),(23,'Agra','Uttar Pradesh'),(24,'Siliguri','West Bengal'),(25,'Nashik','Maharashtra'),(26,'Faridabad','Haryana'),(27,'Patiala','Punjab'),(28,'Meerut','Uttar Pradesh'),(29,'Kalyan-Dombivali','Maharashtra'),(30,'Vasai-Virar','Maharashtra'),(31,'Varanasi','Uttar Pradesh'),(32,'Srinagar','Jammu and Kashmir'),(33,'Dhanbad','Jharkhand'),(34,'Jodhpur','Rajasthan'),(35,'Amritsar','Punjab'),(36,'Raipur','Chhattisgarh'),(37,'Allahabad','Uttar Pradesh'),(38,'Coimbatore','Tamil Nadu'),(39,'Jabalpur','Madhya Pradesh'),(40,'Gwalior','Madhya Pradesh'),(41,'Vijayawada','Andhra Pradesh'),(42,'Madurai','Tamil Nadu'),(43,'Guwahati','Assam'),(44,'Chandigarh','Chandigarh'),(45,'Hubli-Dharwad','Karnataka'),(46,'Amroha','Uttar Pradesh'),(47,'Moradabad','Uttar Pradesh'),(48,'Gurgaon','Haryana'),(49,'Aligarh','Uttar Pradesh'),(50,'Solapur','Maharashtra'),(51,'Ranchi','Jharkhand'),(52,'Jalandhar','Punjab'),(53,'Tiruchirappalli','Tamil Nadu'),(54,'Bhubaneswar','Odisha'),(55,'Salem','Tamil Nadu'),(56,'Warangal','Telangana'),(57,'Mira-Bhayandar','Maharashtra'),(58,'Thiruvananthapuram','Kerala'),(59,'Bhiwandi','Maharashtra'),(60,'Saharanpur','Uttar Pradesh'),(61,'Guntur','Andhra Pradesh'),(62,'Amravati','Maharashtra'),(63,'Bikaner','Rajasthan'),(64,'Noida','Uttar Pradesh'),(65,'Jamshedpur','Jharkhand'),(66,'Bhilai Nagar','Chhattisgarh'),(67,'Cuttack','Odisha'),(68,'Kochi','Kerala'),(69,'Udaipur','Rajasthan'),(70,'Bhavnagar','Gujarat'),(71,'Dehradun','Uttarakhand'),(72,'Asansol','West Bengal'),(73,'Nanded-Waghala','Maharashtra'),(74,'Ajmer','Rajasthan'),(75,'Jamnagar','Gujarat'),(76,'Ujjain','Madhya Pradesh'),(77,'Sangli','Maharashtra'),(78,'Loni','Uttar Pradesh'),(79,'Jhansi','Uttar Pradesh'),(80,'Pondicherry','Puducherry'),(81,'Nellore','Andhra Pradesh'),(82,'Jammu','Jammu and Kashmir'),(83,'Belagavi','Karnataka'),(84,'Raurkela','Odisha'),(85,'Mangaluru','Karnataka'),(86,'Tirunelveli','Tamil Nadu'),(87,'Malegaon','Maharashtra'),(88,'Gaya','Bihar'),(89,'Tiruppur','Tamil Nadu'),(90,'Davanagere','Karnataka'),(91,'Kozhikode','Kerala'),(92,'Akola','Maharashtra'),(93,'Kurnool','Andhra Pradesh'),(94,'Bokaro Steel City','Jharkhand'),(95,'Rajahmundry','Andhra Pradesh'),(96,'Ballari','Karnataka'),(97,'Agartala','Tripura'),(98,'Bhagalpur','Bihar'),(99,'Latur','Maharashtra'),(100,'Dhule','Maharashtra'),(101,'Korba','Chhattisgarh'),(102,'Bhilwara','Rajasthan'),(103,'Brahmapur','Odisha'),(104,'Mysore','Karnatka'),(105,'Muzaffarpur','Bihar'),(106,'Ahmednagar','Maharashtra'),(107,'Kollam','Kerala'),(108,'Raghunathganj','West Bengal'),(109,'Bilaspur','Chhattisgarh'),(110,'Shahjahanpur','Uttar Pradesh'),(111,'Thrissur','Kerala'),(112,'Alwar','Rajasthan'),(113,'Kakinada','Andhra Pradesh'),(114,'Nizamabad','Telangana'),(115,'Sagar','Madhya Pradesh'),(116,'Tumkur','Karnataka'),(117,'Hisar','Haryana'),(118,'Rohtak','Haryana'),(119,'Panipat','Haryana'),(120,'Darbhanga','Bihar'),(121,'Kharagpur','West Bengal'),(122,'Aizawl','Mizoram'),(123,'Ichalkaranji','Maharashtra'),(124,'Tirupati','Andhra Pradesh'),(125,'Karnal','Haryana'),(126,'Bathinda','Punjab'),(127,'Rampur','Uttar Pradesh'),(128,'Shivamogga','Karnataka'),(129,'Ratlam','Madhya Pradesh'),(130,'Modinagar','Uttar Pradesh'),(131,'Durg','Chhattisgarh'),(132,'Shillong','Meghalaya'),(133,'Imphal','Manipur'),(134,'Hapur','Uttar Pradesh'),(135,'Ranipet','Tamil Nadu'),(136,'Anantapur','Andhra Pradesh'),(137,'Arrah','Bihar'),(138,'Karimnagar','Telangana'),(139,'Parbhani','Maharashtra'),(140,'Etawah','Uttar Pradesh'),(141,'Bharatpur','Rajasthan'),(142,'Begusarai','Bihar'),(143,'New Delhi','Delhi'),(144,'Chhapra','Bihar'),(145,'Kadapa','Andhra Pradesh'),(146,'Ramagundam','Telangana'),(147,'Pali','Rajasthan'),(148,'Satna','Madhya Pradesh'),(149,'Vizianagaram','Andhra Pradesh'),(150,'Katihar','Bihar'),(151,'Hardwar','Uttarakhand'),(152,'Sonipat','Haryana'),(153,'Nagercoil','Tamil Nadu'),(154,'Thanjavur','Tamil Nadu'),(155,'Murwara (Katni)','Madhya Pradesh'),(156,'Naihati','West Bengal'),(157,'Sambhal','Uttar Pradesh'),(158,'Nadiad','Gujarat'),(159,'Yamunanagar','Haryana'),(160,'English Bazar','West Bengal'),(161,'Eluru','Andhra Pradesh'),(162,'Munger','Bihar'),(163,'Panchkula','Haryana'),(164,'Raayachuru','Karnataka'),(165,'Panvel','Maharashtra'),(166,'Deoghar','Jharkhand'),(167,'Ongole','Andhra Pradesh'),(168,'Nandyal','Andhra Pradesh'),(169,'Morena','Madhya Pradesh'),(170,'Bhiwani','Haryana'),(171,'Porbandar','Gujarat'),(172,'Palakkad','Kerala'),(173,'Anand','Gujarat'),(174,'Purnia','Bihar'),(175,'Baharampur','West Bengal'),(176,'Barmer','Rajasthan'),(177,'Morvi','Gujarat'),(178,'Orai','Uttar Pradesh'),(179,'Bahraich','Uttar Pradesh'),(180,'Sikar','Rajasthan'),(181,'Vellore','Tamil Nadu'),(182,'Singrauli','Madhya Pradesh'),(183,'Khammam','Telangana'),(184,'Mahesana','Gujarat'),(185,'Silchar','Assam'),(186,'Sambalpur','Odisha'),(187,'Rewa','Madhya Pradesh'),(188,'Unnao','Uttar Pradesh'),(189,'Hugli-Chinsurah','West Bengal'),(190,'Raiganj','West Bengal'),(191,'Phusro','Jharkhand'),(192,'Adityapur','Jharkhand'),(193,'Alappuzha','Kerala'),(194,'Bahadurgarh','Haryana'),(195,'Machilipatnam','Andhra Pradesh'),(196,'Rae Bareli','Uttar Pradesh'),(197,'Jalpaiguri','West Bengal'),(198,'Bharuch','Gujarat'),(199,'Pathankot','Punjab'),(200,'Hoshiarpur','Punjab'),(201,'Baramula','Jammu and Kashmir'),(202,'Adoni','Andhra Pradesh'),(203,'Jind','Haryana'),(204,'Tonk','Rajasthan'),(205,'Tenali','Andhra Pradesh'),(206,'Kancheepuram','Tamil Nadu'),(207,'Vapi','Gujarat'),(208,'Sirsa','Haryana'),(209,'Navsari','Gujarat'),(210,'Mahbubnagar','Telangana'),(211,'Puri','Odisha'),(212,'Robertson Pet','Karnataka'),(213,'Erode','Tamil Nadu'),(214,'Batala','Punjab'),(215,'Haldwani-cum-Kathgodam','Uttarakhand'),(216,'Vidisha','Madhya Pradesh'),(217,'Saharsa','Bihar'),(218,'Thanesar','Haryana'),(219,'Chittoor','Andhra Pradesh'),(220,'Veraval','Gujarat'),(221,'Lakhimpur','Uttar Pradesh'),(222,'Sitapur','Uttar Pradesh'),(223,'Hindupur','Andhra Pradesh'),(224,'Santipur','West Bengal'),(225,'Balurghat','West Bengal'),(226,'Ganjbasoda','Madhya Pradesh'),(227,'Moga','Punjab'),(228,'Proddatur','Andhra Pradesh'),(229,'Srinagar','Uttarakhand'),(230,'Medinipur','West Bengal'),(231,'Habra','West Bengal'),(232,'Sasaram','Bihar'),(233,'Hajipur','Bihar'),(234,'Bhuj','Gujarat'),(235,'Shivpuri','Madhya Pradesh'),(236,'Ranaghat','West Bengal'),(237,'Shimla','Himachal Pradesh'),(238,'Tiruvannamalai','Tamil Nadu'),(239,'Kaithal','Haryana'),(240,'Rajnandgaon','Chhattisgarh'),(241,'Godhra','Gujarat'),(242,'Hazaribag','Jharkhand'),(243,'Bhimavaram','Andhra Pradesh'),(244,'Mandsaur','Madhya Pradesh'),(245,'Dibrugarh','Assam'),(246,'Kolar','Karnataka'),(247,'Bankura','West Bengal'),(248,'Mandya','Karnataka'),(249,'Dehri-on-Sone','Bihar'),(250,'Madanapalle','Andhra Pradesh'),(251,'Malerkotla','Punjab'),(252,'Lalitpur','Uttar Pradesh'),(253,'Bettiah','Bihar'),(254,'Pollachi','Tamil Nadu'),(255,'Khanna','Punjab'),(256,'Neemuch','Madhya Pradesh'),(257,'Palwal','Haryana'),(258,'Palanpur','Gujarat'),(259,'Guntakal','Andhra Pradesh'),(260,'Nabadwip','West Bengal'),(261,'Udupi','Karnataka'),(262,'Jagdalpur','Chhattisgarh'),(263,'Motihari','Bihar'),(264,'Pilibhit','Uttar Pradesh'),(265,'Dimapur','Nagaland'),(266,'Mohali','Punjab'),(267,'Sadulpur','Rajasthan'),(268,'Rajapalayam','Tamil Nadu'),(269,'Dharmavaram','Andhra Pradesh'),(270,'Kashipur','Uttarakhand'),(271,'Sivakasi','Tamil Nadu'),(272,'Darjiling','West Bengal'),(273,'Chikkamagaluru','Karnataka'),(274,'Gudivada','Andhra Pradesh'),(275,'Baleshwar Town','Odisha'),(276,'Mancherial','Telangana'),(277,'Srikakulam','Andhra Pradesh'),(278,'Adilabad','Telangana'),(279,'Yavatmal','Maharashtra'),(280,'Barnala','Punjab'),(281,'Nagaon','Assam'),(282,'Narasaraopet','Andhra Pradesh'),(283,'Raigarh','Chhattisgarh'),(284,'Roorkee','Uttarakhand'),(285,'Valsad','Gujarat'),(286,'Ambikapur','Chhattisgarh'),(287,'Giridih','Jharkhand'),(288,'Chandausi','Uttar Pradesh'),(289,'Purulia','West Bengal'),(290,'Patan','Gujarat'),(291,'Bagaha','Bihar'),(292,'Hardoi ','Uttar Pradesh'),(293,'Achalpur','Maharashtra'),(294,'Osmanabad','Maharashtra'),(295,'Deesa','Gujarat'),(296,'Nandurbar','Maharashtra'),(297,'Azamgarh','Uttar Pradesh'),(298,'Ramgarh','Jharkhand'),(299,'Firozpur','Punjab'),(300,'Baripada Town','Odisha'),(301,'Karwar','Karnataka'),(302,'Siwan','Bihar'),(303,'Rajampet','Andhra Pradesh'),(304,'Pudukkottai','Tamil Nadu'),(305,'Anantnag','Jammu and Kashmir'),(306,'Tadpatri','Andhra Pradesh'),(307,'Satara','Maharashtra'),(308,'Bhadrak','Odisha'),(309,'Kishanganj','Bihar'),(310,'Suryapet','Telangana'),(311,'Wardha','Maharashtra'),(312,'Ranebennuru','Karnataka'),(313,'Amreli','Gujarat'),(314,'Neyveli (TS)','Tamil Nadu'),(315,'Jamalpur','Bihar'),(316,'Marmagao','Goa'),(317,'Udgir','Maharashtra'),(318,'Tadepalligudem','Andhra Pradesh'),(319,'Nagapattinam','Tamil Nadu'),(320,'Buxar','Bihar'),(321,'Aurangabad','Maharashtra'),(322,'Jehanabad','Bihar'),(323,'Phagwara','Punjab'),(324,'Khair','Uttar Pradesh'),(325,'Sawai Madhopur','Rajasthan'),(326,'Kapurthala','Punjab'),(327,'Chilakaluripet','Andhra Pradesh'),(328,'Aurangabad','Bihar'),(329,'Malappuram','Kerala'),(330,'Rewari','Haryana'),(331,'Nagaur','Rajasthan'),(332,'Sultanpur','Uttar Pradesh'),(333,'Nagda','Madhya Pradesh'),(334,'Port Blair','Andaman and Nicobar Islands'),(335,'Lakhisarai','Bihar'),(336,'Panaji','Goa'),(337,'Tinsukia','Assam'),(338,'Itarsi','Madhya Pradesh'),(339,'Kohima','Nagaland'),(340,'Balangir','Odisha'),(341,'Nawada','Bihar'),(342,'Jharsuguda','Odisha'),(343,'Jagtial','Telangana'),(344,'Viluppuram','Tamil Nadu'),(345,'Amalner','Maharashtra'),(346,'Zirakpur','Punjab'),(347,'Tanda','Uttar Pradesh'),(348,'Tiruchengode','Tamil Nadu'),(349,'Nagina','Uttar Pradesh'),(350,'Yemmiganur','Andhra Pradesh'),(351,'Vaniyambadi','Tamil Nadu'),(352,'Sarni','Madhya Pradesh'),(353,'Theni Allinagaram','Tamil Nadu'),(354,'Margao','Goa'),(355,'Akot','Maharashtra'),(356,'Sehore','Madhya Pradesh'),(357,'Mhow Cantonment','Madhya Pradesh'),(358,'Kot Kapura','Punjab'),(359,'Makrana','Rajasthan'),(360,'Pandharpur','Maharashtra'),(361,'Miryalaguda','Telangana'),(362,'Shamli','Uttar Pradesh'),(363,'Seoni','Madhya Pradesh'),(364,'Ranibennur','Karnataka'),(365,'Kadiri','Andhra Pradesh'),(366,'Shrirampur','Maharashtra'),(367,'Rudrapur','Uttarakhand'),(368,'Parli','Maharashtra'),(369,'Najibabad','Uttar Pradesh'),(370,'Nirmal','Telangana'),(371,'Udhagamandalam','Tamil Nadu'),(372,'Shikohabad','Uttar Pradesh'),(373,'Jhumri Tilaiya','Jharkhand'),(374,'Aruppukkottai','Tamil Nadu'),(375,'Ponnani','Kerala'),(376,'Jamui','Bihar'),(377,'Sitamarhi','Bihar'),(378,'Chirala','Andhra Pradesh'),(379,'Anjar','Gujarat'),(380,'Karaikal','Puducherry'),(381,'Hansi','Haryana'),(382,'Anakapalle','Andhra Pradesh'),(383,'Mahasamund','Chhattisgarh'),(384,'Faridkot','Punjab'),(385,'Saunda','Jharkhand'),(386,'Dhoraji','Gujarat'),(387,'Paramakudi','Tamil Nadu'),(388,'Balaghat','Madhya Pradesh'),(389,'Sujangarh','Rajasthan'),(390,'Khambhat','Gujarat'),(391,'Muktsar','Punjab'),(392,'Rajpura','Punjab'),(393,'Kavali','Andhra Pradesh'),(394,'Dhamtari','Chhattisgarh'),(395,'Ashok Nagar','Madhya Pradesh'),(396,'Sardarshahar','Rajasthan'),(397,'Mahuva','Gujarat'),(398,'Bargarh','Odisha'),(399,'Kamareddy','Telangana'),(400,'Sahibganj','Jharkhand'),(401,'Kothagudem','Telangana'),(402,'Ramanagaram','Karnataka'),(403,'Gokak','Karnataka'),(404,'Tikamgarh','Madhya Pradesh'),(405,'Araria','Bihar'),(406,'Rishikesh','Uttarakhand'),(407,'Shahdol','Madhya Pradesh'),(408,'Medininagar (Daltonganj)','Jharkhand'),(409,'Arakkonam','Tamil Nadu'),(410,'Washim','Maharashtra'),(411,'Sangrur','Punjab'),(412,'Bodhan','Telangana'),(413,'Fazilka','Punjab'),(414,'Palacole','Andhra Pradesh'),(415,'Keshod','Gujarat'),(416,'Sullurpeta','Andhra Pradesh'),(417,'Wadhwan','Gujarat'),(418,'Gurdaspur','Punjab'),(419,'Vatakara','Kerala'),(420,'Tura','Meghalaya'),(421,'Narnaul','Haryana'),(422,'Kharar','Punjab'),(423,'Yadgir','Karnataka'),(424,'Ambejogai','Maharashtra'),(425,'Ankleshwar','Gujarat'),(426,'Savarkundla','Gujarat'),(427,'Paradip','Odisha'),(428,'Virudhachalam','Tamil Nadu'),(429,'Kanhangad','Kerala'),(430,'Kadi','Gujarat'),(431,'Srivilliputhur','Tamil Nadu'),(432,'Gobindgarh','Punjab'),(433,'Tindivanam','Tamil Nadu'),(434,'Mansa','Punjab'),(435,'Taliparamba','Kerala'),(436,'Manmad','Maharashtra'),(437,'Tanuku','Andhra Pradesh'),(438,'Rayachoti','Andhra Pradesh'),(439,'Virudhunagar','Tamil Nadu'),(440,'Koyilandy','Kerala'),(441,'Jorhat','Assam'),(442,'Karur','Tamil Nadu'),(443,'Valparai','Tamil Nadu'),(444,'Srikalahasti','Andhra Pradesh'),(445,'Neyyattinkara','Kerala'),(446,'Bapatla','Andhra Pradesh'),(447,'Fatehabad','Haryana'),(448,'Malout','Punjab'),(449,'Sankarankovil','Tamil Nadu'),(450,'Tenkasi','Tamil Nadu'),(451,'Ratnagiri','Maharashtra'),(452,'Rabkavi Banhatti','Karnataka'),(453,'Sikandrabad','Uttar Pradesh'),(454,'Chaibasa','Jharkhand'),(455,'Chirmiri','Chhattisgarh'),(456,'Palwancha','Telangana'),(457,'Bhawanipatna','Odisha'),(458,'Kayamkulam','Kerala'),(459,'Pithampur','Madhya Pradesh'),(460,'Nabha','Punjab'),(461,'Shahabad, Hardoi','Uttar Pradesh'),(462,'Dhenkanal','Odisha'),(463,'Uran Islampur','Maharashtra'),(464,'Gopalganj','Bihar'),(465,'Bongaigaon City','Assam'),(466,'Palani','Tamil Nadu'),(467,'Pusad','Maharashtra'),(468,'Sopore','Jammu and Kashmir'),(469,'Pilkhuwa','Uttar Pradesh'),(470,'Tarn Taran','Punjab'),(471,'Renukoot','Uttar Pradesh'),(472,'Mandamarri','Telangana'),(473,'Shahabad','Karnataka'),(474,'Barbil','Odisha'),(475,'Koratla','Telangana'),(476,'Madhubani','Bihar'),(477,'Arambagh','West Bengal'),(478,'Gohana','Haryana'),(479,'Ladnu','Rajasthan'),(480,'Pattukkottai','Tamil Nadu'),(481,'Sirsi','Karnataka'),(482,'Sircilla','Telangana'),(483,'Tamluk','West Bengal'),(484,'Jagraon','Punjab'),(485,'AlipurdUrban Agglomerationr','West Bengal'),(486,'Alirajpur','Madhya Pradesh'),(487,'Tandur','Telangana'),(488,'Naidupet','Andhra Pradesh'),(489,'Tirupathur','Tamil Nadu'),(490,'Tohana','Haryana'),(491,'Ratangarh','Rajasthan'),(492,'Dhubri','Assam'),(493,'Masaurhi','Bihar'),(494,'Visnagar','Gujarat'),(495,'Vrindavan','Uttar Pradesh'),(496,'Nokha','Rajasthan'),(497,'Nagari','Andhra Pradesh'),(498,'Narwana','Haryana'),(499,'Ramanathapuram','Tamil Nadu'),(500,'Ujhani','Uttar Pradesh'),(501,'Samastipur','Bihar'),(502,'Laharpur','Uttar Pradesh'),(503,'Sangamner','Maharashtra'),(504,'Nimbahera','Rajasthan'),(505,'Siddipet','Telangana'),(506,'Suri','West Bengal'),(507,'Diphu','Assam'),(508,'Jhargram','West Bengal'),(509,'Shirpur-Warwade','Maharashtra'),(510,'Tilhar','Uttar Pradesh'),(511,'Sindhnur','Karnataka'),(512,'Udumalaipettai','Tamil Nadu'),(513,'Malkapur','Maharashtra'),(514,'Wanaparthy','Telangana'),(515,'Gudur','Andhra Pradesh'),(516,'Kendujhar','Odisha'),(517,'Mandla','Madhya Pradesh'),(518,'Mandi','Himachal Pradesh'),(519,'Nedumangad','Kerala'),(520,'North Lakhimpur','Assam'),(521,'Vinukonda','Andhra Pradesh'),(522,'Tiptur','Karnataka'),(523,'Gobichettipalayam','Tamil Nadu'),(524,'Sunabeda','Odisha'),(525,'Wani','Maharashtra'),(526,'Upleta','Gujarat'),(527,'Narasapuram','Andhra Pradesh'),(528,'Nuzvid','Andhra Pradesh'),(529,'Tezpur','Assam'),(530,'Una','Gujarat'),(531,'Markapur','Andhra Pradesh'),(532,'Sheopur','Madhya Pradesh'),(533,'Thiruvarur','Tamil Nadu'),(534,'Sidhpur','Gujarat'),(535,'Sahaswan','Uttar Pradesh'),(536,'Suratgarh','Rajasthan'),(537,'Shajapur','Madhya Pradesh'),(538,'Rayagada','Odisha'),(539,'Lonavla','Maharashtra'),(540,'Ponnur','Andhra Pradesh'),(541,'Kagaznagar','Telangana'),(542,'Gadwal','Telangana'),(543,'Bhatapara','Chhattisgarh'),(544,'Kandukur','Andhra Pradesh'),(545,'Sangareddy','Telangana'),(546,'Unjha','Gujarat'),(547,'Lunglei','Mizoram'),(548,'Karimganj','Assam'),(549,'Kannur','Kerala'),(550,'Bobbili','Andhra Pradesh'),(551,'Mokameh','Bihar'),(552,'Talegaon Dabhade','Maharashtra'),(553,'Anjangaon','Maharashtra'),(554,'Mangrol','Gujarat'),(555,'Sunam','Punjab'),(556,'Gangarampur','West Bengal'),(557,'Thiruvallur','Tamil Nadu'),(558,'Tirur','Kerala'),(559,'Rath','Uttar Pradesh'),(560,'Jatani','Odisha'),(561,'Viramgam','Gujarat'),(562,'Rajsamand','Rajasthan'),(563,'Yanam','Puducherry'),(564,'Kottayam','Kerala'),(565,'Panruti','Tamil Nadu'),(566,'Dhuri','Punjab'),(567,'Namakkal','Tamil Nadu'),(568,'Kasaragod','Kerala'),(569,'Modasa','Gujarat'),(570,'Rayadurg','Andhra Pradesh'),(571,'Supaul','Bihar'),(572,'Kunnamkulam','Kerala'),(573,'Umred','Maharashtra'),(574,'Bellampalle','Telangana'),(575,'Sibsagar','Assam'),(576,'Mandi Dabwali','Haryana'),(577,'Ottappalam','Kerala'),(578,'Dumraon','Bihar'),(579,'Samalkot','Andhra Pradesh'),(580,'Jaggaiahpet','Andhra Pradesh'),(581,'Goalpara','Assam'),(582,'Tuni','Andhra Pradesh'),(583,'Lachhmangarh','Rajasthan'),(584,'Bhongir','Telangana'),(585,'Amalapuram','Andhra Pradesh'),(586,'Firozpur Cantt.','Punjab'),(587,'Vikarabad','Telangana'),(588,'Thiruvalla','Kerala'),(589,'Sherkot','Uttar Pradesh'),(590,'Palghar','Maharashtra'),(591,'Shegaon','Maharashtra'),(592,'Jangaon','Telangana'),(593,'Bheemunipatnam','Andhra Pradesh'),(594,'Panna','Madhya Pradesh'),(595,'Thodupuzha','Kerala'),(596,'KathUrban Agglomeration','Jammu and Kashmir'),(597,'Palitana','Gujarat'),(598,'Arwal','Bihar'),(599,'Venkatagiri','Andhra Pradesh'),(600,'Kalpi','Uttar Pradesh'),(601,'Rajgarh (Churu)','Rajasthan'),(602,'Sattenapalle','Andhra Pradesh'),(603,'Arsikere','Karnataka'),(604,'Ozar','Maharashtra'),(605,'Thirumangalam','Tamil Nadu'),(606,'Petlad','Gujarat'),(607,'Nasirabad','Rajasthan'),(608,'Phaltan','Maharashtra'),(609,'Rampurhat','West Bengal'),(610,'Nanjangud','Karnataka'),(611,'Forbesganj','Bihar'),(612,'Tundla','Uttar Pradesh'),(613,'BhabUrban Agglomeration','Bihar'),(614,'Sagara','Karnataka'),(615,'Pithapuram','Andhra Pradesh'),(616,'Sira','Karnataka'),(617,'Bhadrachalam','Telangana'),(618,'Charkhi Dadri','Haryana'),(619,'Chatra','Jharkhand'),(620,'Palasa Kasibugga','Andhra Pradesh'),(621,'Nohar','Rajasthan'),(622,'Yevla','Maharashtra'),(623,'Sirhind Fatehgarh Sahib','Punjab'),(624,'Bhainsa','Telangana'),(625,'Parvathipuram','Andhra Pradesh'),(626,'Shahade','Maharashtra'),(627,'Chalakudy','Kerala'),(628,'Narkatiaganj','Bihar'),(629,'Kapadvanj','Gujarat'),(630,'Macherla','Andhra Pradesh'),(631,'Raghogarh-Vijaypur','Madhya Pradesh'),(632,'Rupnagar','Punjab'),(633,'Naugachhia','Bihar'),(634,'Sendhwa','Madhya Pradesh'),(635,'Byasanagar','Odisha'),(636,'Sandila','Uttar Pradesh'),(637,'Gooty','Andhra Pradesh'),(638,'Salur','Andhra Pradesh'),(639,'Nanpara','Uttar Pradesh'),(640,'Sardhana','Uttar Pradesh'),(641,'Vita','Maharashtra'),(642,'Gumia','Jharkhand'),(643,'Puttur','Karnataka'),(644,'Jalandhar Cantt.','Punjab'),(645,'Nehtaur','Uttar Pradesh'),(646,'Changanassery','Kerala'),(647,'Mandapeta','Andhra Pradesh'),(648,'Dumka','Jharkhand'),(649,'Seohara','Uttar Pradesh'),(650,'Umarkhed','Maharashtra'),(651,'Madhupur','Jharkhand'),(652,'Vikramasingapuram','Tamil Nadu'),(653,'Punalur','Kerala'),(654,'Kendrapara','Odisha'),(655,'Sihor','Gujarat'),(656,'Nellikuppam','Tamil Nadu'),(657,'Samana','Punjab'),(658,'Warora','Maharashtra'),(659,'Nilambur','Kerala'),(660,'Rasipuram','Tamil Nadu'),(661,'Ramnagar','Uttarakhand'),(662,'Jammalamadugu','Andhra Pradesh'),(663,'Nawanshahr','Punjab'),(664,'Thoubal','Manipur'),(665,'Athni','Karnataka'),(666,'Cherthala','Kerala'),(667,'Sidhi','Madhya Pradesh'),(668,'Farooqnagar','Telangana'),(669,'Peddapuram','Andhra Pradesh'),(670,'Chirkunda','Jharkhand'),(671,'Pachora','Maharashtra'),(672,'Madhepura','Bihar'),(673,'Pithoragarh','Uttarakhand'),(674,'Tumsar','Maharashtra'),(675,'Phalodi','Rajasthan'),(676,'Tiruttani','Tamil Nadu'),(677,'Rampura Phul','Punjab'),(678,'Perinthalmanna','Kerala'),(679,'Padrauna','Uttar Pradesh'),(680,'Pipariya','Madhya Pradesh'),(681,'Dalli-Rajhara','Chhattisgarh'),(682,'Punganur','Andhra Pradesh'),(683,'Mattannur','Kerala'),(684,'Mathura','Uttar Pradesh'),(685,'Thakurdwara','Uttar Pradesh'),(686,'Nandivaram-Guduvancheri','Tamil Nadu'),(687,'Mulbagal','Karnataka'),(688,'Manjlegaon','Maharashtra'),(689,'Wankaner','Gujarat'),(690,'Sillod','Maharashtra'),(691,'Nidadavole','Andhra Pradesh'),(692,'Surapura','Karnataka'),(693,'Rajagangapur','Odisha'),(694,'Sheikhpura','Bihar'),(695,'Parlakhemundi','Odisha'),(696,'Kalimpong','West Bengal'),(697,'Siruguppa','Karnataka'),(698,'Arvi','Maharashtra'),(699,'Limbdi','Gujarat'),(700,'Barpeta','Assam'),(701,'Manglaur','Uttarakhand'),(702,'Repalle','Andhra Pradesh'),(703,'Mudhol','Karnataka'),(704,'Shujalpur','Madhya Pradesh'),(705,'Mandvi','Gujarat'),(706,'Thangadh','Gujarat'),(707,'Sironj','Madhya Pradesh'),(708,'Nandura','Maharashtra'),(709,'Shoranur','Kerala'),(710,'Nathdwara','Rajasthan'),(711,'Periyakulam','Tamil Nadu'),(712,'Sultanganj','Bihar'),(713,'Medak','Telangana'),(714,'Narayanpet','Telangana'),(715,'Raxaul Bazar','Bihar'),(716,'Rajauri','Jammu and Kashmir'),(717,'Pernampattu','Tamil Nadu'),(718,'Nainital','Uttarakhand'),(719,'Ramachandrapuram','Andhra Pradesh'),(720,'Vaijapur','Maharashtra'),(721,'Nangal','Punjab'),(722,'Sidlaghatta','Karnataka'),(723,'Punch','Jammu and Kashmir'),(724,'Pandhurna','Madhya Pradesh'),(725,'Wadgaon Road','Maharashtra'),(726,'Talcher','Odisha'),(727,'Varkala','Kerala'),(728,'Pilani','Rajasthan'),(729,'Nowgong','Madhya Pradesh'),(730,'Naila Janjgir','Chhattisgarh'),(731,'Mapusa','Goa'),(732,'Vellakoil','Tamil Nadu'),(733,'Merta City','Rajasthan'),(734,'Sivaganga','Tamil Nadu'),(735,'Mandideep','Madhya Pradesh'),(736,'Sailu','Maharashtra'),(737,'Vyara','Gujarat'),(738,'Kovvur','Andhra Pradesh'),(739,'Vadalur','Tamil Nadu'),(740,'Nawabganj','Uttar Pradesh'),(741,'Padra','Gujarat'),(742,'Sainthia','West Bengal'),(743,'Siana','Uttar Pradesh'),(744,'Shahpur','Karnataka'),(745,'Sojat','Rajasthan'),(746,'Noorpur','Uttar Pradesh'),(747,'Paravoor','Kerala'),(748,'Murtijapur','Maharashtra'),(749,'Ramnagar','Bihar'),(750,'Sundargarh','Odisha'),(751,'Taki','West Bengal'),(752,'Saundatti-Yellamma','Karnataka'),(753,'Pathanamthitta','Kerala'),(754,'Wadi','Karnataka'),(755,'Rameshwaram','Tamil Nadu'),(756,'Tasgaon','Maharashtra'),(757,'Sikandra Rao','Uttar Pradesh'),(758,'Sihora','Madhya Pradesh'),(759,'Tiruvethipuram','Tamil Nadu'),(760,'Tiruvuru','Andhra Pradesh'),(761,'Mehkar','Maharashtra'),(762,'Peringathur','Kerala'),(763,'Perambalur','Tamil Nadu'),(764,'Manvi','Karnataka'),(765,'Zunheboto','Nagaland'),(766,'Mahnar Bazar','Bihar'),(767,'Attingal','Kerala'),(768,'Shahbad','Haryana'),(769,'Puranpur','Uttar Pradesh'),(770,'Nelamangala','Karnataka'),(771,'Nakodar','Punjab'),(772,'Lunawada','Gujarat'),(773,'Murshidabad','West Bengal'),(774,'Mahe','Puducherry'),(775,'Lanka','Assam'),(776,'Rudauli','Uttar Pradesh'),(777,'Tuensang','Nagaland'),(778,'Lakshmeshwar','Karnataka'),(779,'Zira','Punjab'),(780,'Yawal','Maharashtra'),(781,'Thana Bhawan','Uttar Pradesh'),(782,'Ramdurg','Karnataka'),(783,'Pulgaon','Maharashtra'),(784,'Sadasivpet','Telangana'),(785,'Nargund','Karnataka'),(786,'Neem-Ka-Thana','Rajasthan'),(787,'Memari','West Bengal'),(788,'Nilanga','Maharashtra'),(789,'Naharlagun','Arunachal Pradesh'),(790,'Pakaur','Jharkhand'),(791,'Wai','Maharashtra'),(792,'Tarikere','Karnataka'),(793,'Malavalli','Karnataka'),(794,'Raisen','Madhya Pradesh'),(795,'Lahar','Madhya Pradesh'),(796,'Uravakonda','Andhra Pradesh'),(797,'Savanur','Karnataka'),(798,'Sirohi','Rajasthan'),(799,'Udhampur','Jammu and Kashmir'),(800,'Umarga','Maharashtra'),(801,'Pratapgarh','Rajasthan'),(802,'Lingsugur','Karnataka'),(803,'Usilampatti','Tamil Nadu'),(804,'Palia Kalan','Uttar Pradesh'),(805,'Wokha','Nagaland'),(806,'Rajpipla','Gujarat'),(807,'Vijayapura','Karnataka'),(808,'Rawatbhata','Rajasthan'),(809,'Sangaria','Rajasthan'),(810,'Paithan','Maharashtra'),(811,'Rahuri','Maharashtra'),(812,'Patti','Punjab'),(813,'Zaidpur','Uttar Pradesh'),(814,'Lalsot','Rajasthan'),(815,'Maihar','Madhya Pradesh'),(816,'Vedaranyam','Tamil Nadu'),(817,'Nawapur','Maharashtra'),(818,'Solan','Himachal Pradesh'),(819,'Vapi','Gujarat'),(820,'Sanawad','Madhya Pradesh'),(821,'Warisaliganj','Bihar'),(822,'Revelganj','Bihar'),(823,'Sabalgarh','Madhya Pradesh'),(824,'Tuljapur','Maharashtra'),(825,'Simdega','Jharkhand'),(826,'Musabani','Jharkhand'),(827,'Kodungallur','Kerala'),(828,'Phulabani','Odisha'),(829,'Umreth','Gujarat'),(830,'Narsipatnam','Andhra Pradesh'),(831,'Nautanwa','Uttar Pradesh'),(832,'Rajgir','Bihar'),(833,'Yellandu','Telangana'),(834,'Sathyamangalam','Tamil Nadu'),(835,'Pilibanga','Rajasthan'),(836,'Morshi','Maharashtra'),(837,'Pehowa','Haryana'),(838,'Sonepur','Bihar'),(839,'Pappinisseri','Kerala'),(840,'Zamania','Uttar Pradesh'),(841,'Mihijam','Jharkhand'),(842,'Purna','Maharashtra'),(843,'Puliyankudi','Tamil Nadu'),(844,'Shikarpur, Bulandshahr','Uttar Pradesh'),(845,'Umaria','Madhya Pradesh'),(846,'Porsa','Madhya Pradesh'),(847,'Naugawan Sadat','Uttar Pradesh'),(848,'Fatehpur Sikri','Uttar Pradesh'),(849,'Manuguru','Telangana'),(850,'Udaipur','Tripura'),(851,'Pipar City','Rajasthan'),(852,'Pattamundai','Odisha'),(853,'Nanjikottai','Tamil Nadu'),(854,'Taranagar','Rajasthan'),(855,'Yerraguntla','Andhra Pradesh'),(856,'Satana','Maharashtra'),(857,'Sherghati','Bihar'),(858,'Sankeshwara','Karnataka'),(859,'Madikeri','Karnataka'),(860,'Thuraiyur','Tamil Nadu'),(861,'Sanand','Gujarat'),(862,'Rajula','Gujarat'),(863,'Kyathampalle','Telangana'),(864,'Shahabad, Rampur','Uttar Pradesh'),(865,'Tilda Newra','Chhattisgarh'),(866,'Narsinghgarh','Madhya Pradesh'),(867,'Chittur-Thathamangalam','Kerala'),(868,'Malaj Khand','Madhya Pradesh'),(869,'Sarangpur','Madhya Pradesh'),(870,'Robertsganj','Uttar Pradesh'),(871,'Sirkali','Tamil Nadu'),(872,'Radhanpur','Gujarat'),(873,'Tiruchendur','Tamil Nadu'),(874,'Utraula','Uttar Pradesh'),(875,'Patratu','Jharkhand'),(876,'Vijainagar, Ajmer','Rajasthan'),(877,'Periyasemur','Tamil Nadu'),(878,'Pathri','Maharashtra'),(879,'Sadabad','Uttar Pradesh'),(880,'Talikota','Karnataka'),(881,'Sinnar','Maharashtra'),(882,'Mungeli','Chhattisgarh'),(883,'Sedam','Karnataka'),(884,'Shikaripur','Karnataka'),(885,'Sumerpur','Rajasthan'),(886,'Sattur','Tamil Nadu'),(887,'Sugauli','Bihar'),(888,'Lumding','Assam'),(889,'Vandavasi','Tamil Nadu'),(890,'Titlagarh','Odisha'),(891,'Uchgaon','Maharashtra'),(892,'Mokokchung','Nagaland'),(893,'Paschim Punropara','West Bengal'),(894,'Sagwara','Rajasthan'),(895,'Ramganj Mandi','Rajasthan'),(896,'Tarakeswar','West Bengal'),(897,'Mahalingapura','Karnataka'),(898,'Dharmanagar','Tripura'),(899,'Mahemdabad','Gujarat'),(900,'Manendragarh','Chhattisgarh'),(901,'Uran','Maharashtra'),(902,'Tharamangalam','Tamil Nadu'),(903,'Tirukkoyilur','Tamil Nadu'),(904,'Pen','Maharashtra'),(905,'Makhdumpur','Bihar'),(906,'Maner','Bihar'),(907,'Oddanchatram','Tamil Nadu'),(908,'Palladam','Tamil Nadu'),(909,'Mundi','Madhya Pradesh'),(910,'Nabarangapur','Odisha'),(911,'Mudalagi','Karnataka'),(912,'Samalkha','Haryana'),(913,'Nepanagar','Madhya Pradesh'),(914,'Karjat','Maharashtra'),(915,'Ranavav','Gujarat'),(916,'Pedana','Andhra Pradesh'),(917,'Pinjore','Haryana'),(918,'Lakheri','Rajasthan'),(919,'Pasan','Madhya Pradesh'),(920,'Puttur','Andhra Pradesh'),(921,'Vadakkuvalliyur','Tamil Nadu'),(922,'Tirukalukundram','Tamil Nadu'),(923,'Mahidpur','Madhya Pradesh'),(924,'Mussoorie','Uttarakhand'),(925,'Muvattupuzha','Kerala'),(926,'Rasra','Uttar Pradesh'),(927,'Udaipurwati','Rajasthan'),(928,'Manwath','Maharashtra'),(929,'Adoor','Kerala'),(930,'Uthamapalayam','Tamil Nadu'),(931,'Partur','Maharashtra'),(932,'Nahan','Himachal Pradesh'),(933,'Ladwa','Haryana'),(934,'Mankachar','Assam'),(935,'Nongstoin','Meghalaya'),(936,'Losal','Rajasthan'),(937,'Sri Madhopur','Rajasthan'),(938,'Ramngarh','Rajasthan'),(939,'Mavelikkara','Kerala'),(940,'Rawatsar','Rajasthan'),(941,'Rajakhera','Rajasthan'),(942,'Lar','Uttar Pradesh'),(943,'Lal Gopalganj Nindaura','Uttar Pradesh'),(944,'Muddebihal','Karnataka'),(945,'Sirsaganj','Uttar Pradesh'),(946,'Shahpura','Rajasthan'),(947,'Surandai','Tamil Nadu'),(948,'Sangole','Maharashtra'),(949,'Pavagada','Karnataka'),(950,'Tharad','Gujarat'),(951,'Mansa','Gujarat'),(952,'Umbergaon','Gujarat'),(953,'Mavoor','Kerala'),(954,'Nalbari','Assam'),(955,'Talaja','Gujarat'),(956,'Malur','Karnataka'),(957,'Mangrulpir','Maharashtra'),(958,'Soro','Odisha'),(959,'Shahpura','Rajasthan'),(960,'Vadnagar','Gujarat'),(961,'Raisinghnagar','Rajasthan'),(962,'Sindhagi','Karnataka'),(963,'Sanduru','Karnataka'),(964,'Sohna','Haryana'),(965,'Manavadar','Gujarat'),(966,'Pihani','Uttar Pradesh'),(967,'Safidon','Haryana'),(968,'Risod','Maharashtra'),(969,'Rosera','Bihar'),(970,'Sankari','Tamil Nadu'),(971,'Malpura','Rajasthan'),(972,'Sonamukhi','West Bengal'),(973,'Shamsabad, Agra','Uttar Pradesh'),(974,'Nokha','Bihar'),(975,'PandUrban Agglomeration','West Bengal'),(976,'Mainaguri','West Bengal'),(977,'Afzalpur','Karnataka'),(978,'Shirur','Maharashtra'),(979,'Salaya','Gujarat'),(980,'Shenkottai','Tamil Nadu'),(981,'Pratapgarh','Tripura'),(982,'Vadipatti','Tamil Nadu'),(983,'Nagarkurnool','Telangana'),(984,'Savner','Maharashtra'),(985,'Sasvad','Maharashtra'),(986,'Rudrapur','Uttar Pradesh'),(987,'Soron','Uttar Pradesh'),(988,'Sholingur','Tamil Nadu'),(989,'Pandharkaoda','Maharashtra'),(990,'Perumbavoor','Kerala'),(991,'Maddur','Karnataka'),(992,'Nadbai','Rajasthan'),(993,'Talode','Maharashtra'),(994,'Shrigonda','Maharashtra'),(995,'Madhugiri','Karnataka'),(996,'Tekkalakote','Karnataka'),(997,'Seoni-Malwa','Madhya Pradesh'),(998,'Shirdi','Maharashtra'),(999,'SUrban Agglomerationr','Uttar Pradesh'),(1000,'Terdal','Karnataka'),(1001,'Raver','Maharashtra'),(1002,'Tirupathur','Tamil Nadu'),(1003,'Taraori','Haryana'),(1004,'Mukhed','Maharashtra'),(1005,'Manachanallur','Tamil Nadu'),(1006,'Rehli','Madhya Pradesh'),(1007,'Sanchore','Rajasthan'),(1008,'Rajura','Maharashtra'),(1009,'Piro','Bihar'),(1010,'Mudabidri','Karnataka'),(1011,'Vadgaon Kasba','Maharashtra'),(1012,'Nagar','Rajasthan'),(1013,'Vijapur','Gujarat'),(1014,'Viswanatham','Tamil Nadu'),(1015,'Polur','Tamil Nadu'),(1016,'Panagudi','Tamil Nadu'),(1017,'Manawar','Madhya Pradesh'),(1018,'Tehri','Uttarakhand'),(1019,'Samdhan','Uttar Pradesh'),(1020,'Pardi','Gujarat'),(1021,'Rahatgarh','Madhya Pradesh'),(1022,'Panagar','Madhya Pradesh'),(1023,'Uthiramerur','Tamil Nadu'),(1024,'Tirora','Maharashtra'),(1025,'Rangia','Assam'),(1026,'Sahjanwa','Uttar Pradesh'),(1027,'Wara Seoni','Madhya Pradesh'),(1028,'Magadi','Karnataka'),(1029,'Rajgarh (Alwar)','Rajasthan'),(1030,'Rafiganj','Bihar'),(1031,'Tarana','Madhya Pradesh'),(1032,'Rampur Maniharan','Uttar Pradesh'),(1033,'Sheoganj','Rajasthan'),(1034,'Raikot','Punjab'),(1035,'Pauri','Uttarakhand'),(1036,'Sumerpur','Uttar Pradesh'),(1037,'Navalgund','Karnataka'),(1038,'Shahganj','Uttar Pradesh'),(1039,'Marhaura','Bihar'),(1040,'Tulsipur','Uttar Pradesh'),(1041,'Sadri','Rajasthan'),(1042,'Thiruthuraipoondi','Tamil Nadu'),(1043,'Shiggaon','Karnataka'),(1044,'Pallapatti','Tamil Nadu'),(1045,'Mahendragarh','Haryana'),(1046,'Sausar','Madhya Pradesh'),(1047,'Ponneri','Tamil Nadu'),(1048,'Mahad','Maharashtra'),(1049,'Lohardaga','Jharkhand'),(1050,'Tirwaganj','Uttar Pradesh'),(1051,'Margherita','Assam'),(1052,'Sundarnagar','Himachal Pradesh'),(1053,'Rajgarh','Madhya Pradesh'),(1054,'Mangaldoi','Assam'),(1055,'Renigunta','Andhra Pradesh'),(1056,'Longowal','Punjab'),(1057,'Ratia','Haryana'),(1058,'Lalgudi','Tamil Nadu'),(1059,'Shrirangapattana','Karnataka'),(1060,'Niwari','Madhya Pradesh'),(1061,'Natham','Tamil Nadu'),(1062,'Unnamalaikadai','Tamil Nadu'),(1063,'PurqUrban Agglomerationzi','Uttar Pradesh'),(1064,'Shamsabad, Farrukhabad','Uttar Pradesh'),(1065,'Mirganj','Bihar'),(1066,'Todaraisingh','Rajasthan'),(1067,'Warhapur','Uttar Pradesh'),(1068,'Rajam','Andhra Pradesh'),(1069,'Urmar Tanda','Punjab'),(1070,'Lonar','Maharashtra'),(1071,'Powayan','Uttar Pradesh'),(1072,'P.N.Patti','Tamil Nadu'),(1073,'Palampur','Himachal Pradesh'),(1074,'Srisailam Project (Right Flank Colony) Township','Andhra Pradesh'),(1075,'Sindagi','Karnataka'),(1076,'Sandi','Uttar Pradesh'),(1077,'Vaikom','Kerala'),(1078,'Malda','West Bengal'),(1079,'Tharangambadi','Tamil Nadu'),(1080,'Sakaleshapura','Karnataka'),(1081,'Lalganj','Bihar'),(1082,'Malkangiri','Odisha'),(1083,'Rapar','Gujarat'),(1084,'Mauganj','Madhya Pradesh'),(1085,'Todabhim','Rajasthan'),(1086,'Srinivaspur','Karnataka'),(1087,'Murliganj','Bihar'),(1088,'Reengus','Rajasthan'),(1089,'Sawantwadi','Maharashtra'),(1090,'Tittakudi','Tamil Nadu'),(1091,'Lilong','Manipur'),(1092,'Rajaldesar','Rajasthan'),(1093,'Pathardi','Maharashtra'),(1094,'Achhnera','Uttar Pradesh'),(1095,'Pacode','Tamil Nadu'),(1096,'Naraura','Uttar Pradesh'),(1097,'Nakur','Uttar Pradesh'),(1098,'Palai','Kerala'),(1099,'Morinda, India','Punjab'),(1100,'Manasa','Madhya Pradesh'),(1101,'Nainpur','Madhya Pradesh'),(1102,'Sahaspur','Uttar Pradesh'),(1103,'Pauni','Maharashtra'),(1104,'Prithvipur','Madhya Pradesh'),(1105,'Ramtek','Maharashtra'),(1106,'Silapathar','Assam'),(1107,'Songadh','Gujarat'),(1108,'Safipur','Uttar Pradesh'),(1109,'Sohagpur','Madhya Pradesh'),(1110,'Mul','Maharashtra'),(1111,'Sadulshahar','Rajasthan'),(1112,'Phillaur','Punjab'),(1113,'Sambhar','Rajasthan'),(1114,'Prantij','Rajasthan'),(1115,'Nagla','Uttarakhand'),(1116,'Pattran','Punjab'),(1117,'Mount Abu','Rajasthan'),(1118,'Reoti','Uttar Pradesh'),(1119,'Tenu dam-cum-Kathhara','Jharkhand'),(1120,'Panchla','West Bengal'),(1121,'Sitarganj','Uttarakhand'),(1122,'Pasighat','Arunachal Pradesh'),(1123,'Motipur','Bihar'),(1125,'Raghunathpur','West Bengal'),(1126,'Suriyampalayam','Tamil Nadu'),(1127,'Qadian','Punjab'),(1128,'Rairangpur','Odisha'),(1129,'Silvassa','Dadra and Nagar Haveli'),(1130,'Nowrozabad (Khodargama)','Madhya Pradesh'),(1131,'Mangrol','Rajasthan'),(1132,'Soyagaon','Maharashtra'),(1133,'Sujanpur','Punjab'),(1134,'Manihari','Bihar'),(1135,'Sikanderpur','Uttar Pradesh'),(1136,'Mangalvedhe','Maharashtra'),(1137,'Phulera','Rajasthan'),(1138,'Ron','Karnataka'),(1139,'Sholavandan','Tamil Nadu'),(1140,'Saidpur','Uttar Pradesh'),(1141,'Shamgarh','Madhya Pradesh'),(1142,'Thammampatti','Tamil Nadu'),(1143,'Maharajpur','Madhya Pradesh'),(1144,'Multai','Madhya Pradesh'),(1145,'Mukerian','Punjab'),(1146,'Sirsi','Uttar Pradesh'),(1147,'Purwa','Uttar Pradesh'),(1148,'Sheohar','Bihar'),(1149,'Namagiripettai','Tamil Nadu'),(1150,'Parasi','Uttar Pradesh'),(1151,'Lathi','Gujarat'),(1152,'Lalganj','Uttar Pradesh'),(1153,'Narkhed','Maharashtra'),(1154,'Mathabhanga','West Bengal'),(1155,'Shendurjana','Maharashtra'),(1156,'Peravurani','Tamil Nadu'),(1157,'Mariani','Assam'),(1158,'Phulpur','Uttar Pradesh'),(1159,'Rania','Haryana'),(1160,'Pali','Madhya Pradesh'),(1161,'Pachore','Madhya Pradesh'),(1162,'Parangipettai','Tamil Nadu'),(1163,'Pudupattinam','Tamil Nadu'),(1164,'Panniyannur','Kerala'),(1165,'Maharajganj','Bihar'),(1166,'Rau','Madhya Pradesh'),(1167,'Monoharpur','West Bengal'),(1168,'Mandawa','Rajasthan'),(1169,'Marigaon','Assam'),(1170,'Pallikonda','Tamil Nadu'),(1171,'Pindwara','Rajasthan'),(1172,'Shishgarh','Uttar Pradesh'),(1173,'Patur','Maharashtra'),(1174,'Mayang Imphal','Manipur'),(1175,'Mhowgaon','Madhya Pradesh'),(1176,'Guruvayoor','Kerala'),(1177,'Mhaswad','Maharashtra'),(1178,'Sahawar','Uttar Pradesh'),(1179,'Sivagiri','Tamil Nadu'),(1180,'Mundargi','Karnataka'),(1181,'Punjaipugalur','Tamil Nadu'),(1182,'Kailasahar','Tripura'),(1183,'Samthar','Uttar Pradesh'),(1184,'Sakti','Chhattisgarh'),(1185,'Sadalagi','Karnataka'),(1186,'Silao','Bihar'),(1187,'Mandalgarh','Rajasthan'),(1188,'Loha','Maharashtra'),(1189,'Pukhrayan','Uttar Pradesh'),(1190,'Padmanabhapuram','Tamil Nadu'),(1191,'Belonia','Tripura'),(1192,'Saiha','Mizoram'),(1193,'Srirampore','West Bengal'),(1194,'Talwara','Punjab'),(1195,'Puthuppally','Kerala'),(1196,'Khowai','Tripura'),(1197,'Vijaypur','Madhya Pradesh'),(1198,'Takhatgarh','Rajasthan'),(1199,'Thirupuvanam','Tamil Nadu'),(1200,'Adra','West Bengal'),(1201,'Piriyapatna','Karnataka'),(1202,'Obra','Uttar Pradesh'),(1203,'Adalaj','Gujarat'),(1204,'Nandgaon','Maharashtra'),(1205,'Barh','Bihar'),(1206,'Chhapra','Gujarat'),(1207,'Panamattom','Kerala'),(1208,'Niwai','Uttar Pradesh'),(1209,'Bageshwar','Uttarakhand'),(1210,'Tarbha','Odisha'),(1211,'Adyar','Karnataka'),(1212,'Narsinghgarh','Madhya Pradesh'),(1213,'Warud','Maharashtra'),(1214,'Asarganj','Bihar'),(1215,'Sarsod','Haryana'),(1216,NULL,NULL),(1217,'1',NULL),(1218,'Belgaon',NULL),(1219,NULL,NULL),(1220,'3',NULL),(1221,NULL,NULL),(1222,'2',NULL);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disabilitytype`
--

DROP TABLE IF EXISTS `disabilitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disabilitytype` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `DisabilityName` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT '1',
  `disabilitycode` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disabilitytype`
--

LOCK TABLES `disabilitytype` WRITE;
/*!40000 ALTER TABLE `disabilitytype` DISABLE KEYS */;
INSERT INTO `disabilitytype` VALUES (1,'Physical Disability',1,'PD'),(2,'Mild Physical Disability',1,'MPD'),(3,'Hearing Impaired',1,'HI'),(4,'Hard Of Hearing',1,'HOH'),(5,'Low Vision',1,'LV'),(6,'Not Applicable',1,'NA');
/*!40000 ALTER TABLE `disabilitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donor` (
  `DonorID` int(11) NOT NULL AUTO_INCREMENT,
  `ProfileName` varchar(30) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`DonorID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES (1,'Avishkar','avishkar@gmail.com','9833822789','2017-01-22','nagpur'),(2,'sadhana','sad@gmail.com','8879295725','2017-02-06','kalyan east'),(3,'sadhana','sad@gmail.com','8879295725','2017-02-06','kalyan east'),(4,'sadhana','sad@gmail.com','8879295725','2017-02-06','kalyan east'),(5,'sadhana','sad@gmail.com','8879295725','2017-02-06','kalyan east'),(6,'M','maitrilekha@gmail.co','9833822789','2017-02-06','Mumbai'),(7,'M','maitrilekha@gmail.co','9833822789','2017-02-06','Mumbai'),(8,'Ma','maitrilekha@gmail.co','9833822789','2017-02-06','Mumbai');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectdata`
--

DROP TABLE IF EXISTS `projectdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectdata` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `descrn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectdata`
--

LOCK TABLES `projectdata` WRITE;
/*!40000 ALTER TABLE `projectdata` DISABLE KEYS */;
INSERT INTO `projectdata` VALUES (1,'HTML','HTML coding');
/*!40000 ALTER TABLE `projectdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectdetails`
--

DROP TABLE IF EXISTS `projectdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectdetails` (
  `ProjectID` int(11) DEFAULT NULL,
  `ProjectStartdate` datetime DEFAULT NULL,
  `ProjectEnddate` datetime DEFAULT NULL,
  `ProjectStatusID` smallint(6) DEFAULT NULL,
  `TaskerID` int(11) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `ProjectCompletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectdetails`
--

LOCK TABLES `projectdetails` WRITE;
/*!40000 ALTER TABLE `projectdetails` DISABLE KEYS */;
INSERT INTO `projectdetails` VALUES (1,NULL,NULL,1,NULL,1,NULL),(2,NULL,NULL,1,NULL,1,NULL),(3,NULL,NULL,1,NULL,1,NULL),(4,NULL,NULL,1,NULL,1,NULL),(5,NULL,NULL,1,NULL,1,NULL),(6,'2017-01-06 19:25:56','2017-01-06 21:25:56',4,14,1,'2017-01-06'),(7,NULL,NULL,1,NULL,1,NULL),(8,NULL,NULL,1,NULL,1,NULL),(9,NULL,NULL,1,NULL,1,NULL),(10,NULL,NULL,1,NULL,1,NULL),(11,NULL,NULL,1,NULL,1,NULL),(12,NULL,NULL,1,NULL,1,NULL),(13,NULL,NULL,1,NULL,1,NULL),(14,NULL,NULL,1,NULL,1,NULL),(15,NULL,NULL,1,NULL,1,NULL),(16,NULL,NULL,2,NULL,1,NULL),(17,NULL,NULL,2,NULL,1,NULL),(18,NULL,NULL,2,NULL,1,NULL),(19,NULL,NULL,3,NULL,1,NULL),(20,NULL,NULL,3,NULL,1,NULL),(21,NULL,NULL,3,NULL,1,NULL),(22,NULL,NULL,1,NULL,1,NULL),(23,NULL,NULL,1,NULL,1,NULL),(24,NULL,NULL,3,NULL,1,NULL),(25,NULL,NULL,3,NULL,1,NULL),(26,NULL,NULL,3,NULL,1,NULL),(27,NULL,NULL,1,NULL,1,NULL),(28,NULL,NULL,1,NULL,1,NULL),(29,NULL,NULL,1,NULL,1,NULL),(30,NULL,NULL,1,NULL,1,NULL),(31,NULL,NULL,1,NULL,1,NULL),(32,NULL,NULL,1,NULL,1,NULL),(33,NULL,NULL,1,NULL,1,NULL),(34,NULL,NULL,1,NULL,1,NULL),(35,NULL,NULL,1,NULL,1,NULL),(36,NULL,NULL,1,NULL,1,NULL),(37,NULL,NULL,1,NULL,1,NULL),(38,NULL,NULL,1,NULL,1,NULL),(39,NULL,NULL,1,NULL,1,NULL),(40,NULL,NULL,1,NULL,1,NULL),(41,NULL,NULL,1,NULL,1,NULL),(42,NULL,NULL,1,NULL,1,NULL),(43,NULL,NULL,1,NULL,1,NULL),(44,NULL,NULL,1,NULL,1,NULL),(45,NULL,NULL,1,NULL,1,NULL),(46,NULL,NULL,1,NULL,1,NULL),(47,NULL,NULL,1,NULL,1,NULL),(48,NULL,NULL,1,NULL,1,NULL),(49,NULL,NULL,1,NULL,1,NULL),(50,NULL,NULL,1,NULL,1,NULL),(51,NULL,NULL,1,NULL,1,NULL),(52,NULL,NULL,1,NULL,1,NULL),(53,NULL,NULL,1,NULL,1,NULL),(54,NULL,NULL,1,NULL,1,NULL),(55,NULL,NULL,1,NULL,1,NULL),(56,NULL,NULL,1,NULL,1,NULL),(57,NULL,NULL,1,NULL,1,NULL),(58,NULL,NULL,1,NULL,1,NULL),(59,NULL,NULL,1,NULL,1,NULL),(60,NULL,NULL,1,NULL,1,NULL),(61,NULL,NULL,1,NULL,1,NULL),(62,NULL,NULL,1,NULL,1,NULL),(63,NULL,NULL,1,NULL,1,NULL),(64,NULL,NULL,1,NULL,1,NULL),(65,NULL,NULL,1,NULL,1,NULL),(66,NULL,NULL,1,NULL,1,NULL),(67,NULL,NULL,4,NULL,1,NULL),(68,NULL,NULL,1,NULL,1,NULL),(69,NULL,NULL,4,NULL,1,NULL),(70,NULL,NULL,4,NULL,1,NULL),(71,NULL,NULL,4,NULL,1,NULL),(72,NULL,NULL,1,NULL,1,NULL),(73,NULL,NULL,1,NULL,1,NULL),(74,NULL,NULL,1,NULL,1,NULL),(75,NULL,NULL,1,NULL,1,NULL),(76,NULL,NULL,1,NULL,1,NULL),(77,NULL,NULL,1,NULL,1,NULL),(78,NULL,NULL,1,NULL,1,NULL),(79,NULL,NULL,1,NULL,1,NULL),(80,NULL,NULL,1,NULL,1,NULL),(81,NULL,NULL,1,NULL,1,NULL),(82,NULL,NULL,1,NULL,1,NULL),(83,NULL,NULL,1,NULL,1,NULL),(84,NULL,NULL,1,NULL,1,NULL),(85,NULL,NULL,1,NULL,1,NULL),(86,NULL,NULL,1,NULL,1,NULL),(87,NULL,NULL,1,NULL,1,NULL),(88,NULL,NULL,1,NULL,1,NULL),(89,NULL,NULL,1,NULL,1,NULL),(90,NULL,NULL,1,NULL,1,NULL);
/*!40000 ALTER TABLE `projectdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectTitle` varchar(300) DEFAULT NULL,
  `TaskSubCategoryID` int(11) DEFAULT NULL,
  `TaskProviderID` int(11) DEFAULT NULL,
  `ProjectDescription` varchar(2000) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `ETA` varchar(30) DEFAULT NULL,
  `budget` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'test',NULL,1,'testing',1,'2016-12-31 19:04:47','3 days','3000'),(2,'test',NULL,1,'testing',1,'2016-12-31 19:11:02','3 hours','5000'),(3,'tasklance testing',NULL,2,'testing',1,'2016-12-31 19:11:38','3 hours','5000'),(4,'A',NULL,NULL,'B',1,'2017-01-01 06:48:46','1 day','1000'),(5,'A',NULL,NULL,'B',1,'2017-01-01 06:52:50','1 day','10000'),(6,'test',31,1,'test',1,'2017-01-06 19:25:56','1','Rs 10 Per Minute'),(7,'test',18,1,'666666666666666666666666666666666666666666666666666665',1,'2017-01-06 19:28:30','1','1 hours'),(8,'test',31,1,'testgsuyk',1,'2017-01-06 19:35:24','1 hours','Rs 10 Per Minute'),(9,'test',31,1,'test',1,'2017-01-06 19:38:48','1 hours','Rs 10 Per Minute'),(10,'Create excel sheet of all attendees of event using their business card',32,NULL,'Create excel sheet of all attendees of event using their business card:\nName, Company name,Email Id, Phone and designation',1,'2017-01-07 07:34:59','2 Days','Rs 1 Per Card'),(11,'A',31,NULL,'B',1,'2017-01-08 04:30:49','2 Days','Rs 10 Per Minute'),(12,'Test',6,NULL,'Test',1,'2017-01-09 05:30:55','1 week','Rs 10 Per Profile'),(13,'A',6,NULL,'B',1,'2017-01-13 11:46:07','1 Day','Rs 10 Per Profile'),(14,'A',6,NULL,'B',1,'2017-01-13 11:46:31','1 Day','Rs 10 Per Profile'),(15,'A',6,NULL,'B',1,'2017-01-13 11:46:47','1 day','Rs 10 Per Profile'),(16,'A',10,3,'B',1,'2017-01-13 12:05:21','2 days','Rs 200 per Banner'),(17,'A',10,3,'B',1,'2017-01-13 12:10:09','1 days','Rs 200 per Banner'),(18,'Create Restaurent menu',23,3,'Create Restaurent menu',1,'2017-01-13 15:24:01','1 Day','Rs 200 per Page'),(19,'A',12,3,'B',1,'2017-01-14 14:42:53','1 day','Rs 100 per article of 200 word'),(20,'A',12,3,'B',1,'2017-01-14 14:43:14','1 day','Rs 100 per article of 200 word'),(21,'A',18,3,'B',1,'2017-01-14 14:46:19','1 Day','Rs 300 per Logo'),(22,'A',10,6,'B',1,'2017-01-20 04:43:22','2 days','Rs 200 per Banner'),(23,'A',6,NULL,'B',1,'2017-01-23 10:50:02','1 day','Rs 10 Per Profile'),(24,'A',6,3,'B',1,'2017-01-23 10:50:25','1 day','Rs 10 Per Profile'),(25,'A',12,3,'B',1,'2017-01-23 10:50:40','1 Day','Rs 100 per article of 200 word'),(26,'Places to visit in goa',28,3,'Places To Visit in Goa',1,'2017-01-23 17:28:05','1 week','Rs 50 Per Client'),(27,'Website testing',37,3,'Website testing',1,'2017-01-24 08:20:15','1 Week','Submit Task for Quote'),(28,'Website Site testing',37,3,'Website Site testing',1,'2017-01-24 09:47:50','1Week','Submit Task for Quote'),(29,'A',37,3,'B',1,'2017-01-24 10:10:21','1wwek','Submit Task for Quote'),(30,'test',37,1,'test',1,'2017-01-24 18:17:21','3 days','Submit Task for Quote'),(31,'test',12,1,'test',1,'2017-01-24 18:28:45','3 hours','Rs 100 per article of 200 word'),(32,'test',37,1,'test',1,'2017-01-24 18:29:13','3 hours','Submit Task for Quote'),(33,'test',37,1,'test',1,'2017-01-24 18:30:33','3 hours','Submit Task for Quote'),(34,'test',37,1,'test',1,'2017-01-24 18:30:54','3 hours','Submit Task for Quote'),(35,'A',7,6,'B',1,'2017-01-25 08:31:14','1 week','Rs 300 per Page'),(36,'A',37,7,'V',1,'2017-01-25 10:47:23','1 day','Submit Task for Quote'),(37,'test',37,1,'test',1,'2017-01-25 18:18:03','3 hours','Submit Task for Quote'),(38,'test',37,1,'test',1,'2017-01-25 18:28:50','3 hours','Submit Task for Quote'),(39,'A',10,6,'B',1,'2017-01-26 02:08:44','1 week','Rs 200 per Banner'),(40,'A',10,6,'B',1,'2017-01-26 03:07:11','1 week','Rs 200 per Banner'),(41,'A',10,6,'B',1,'2017-01-26 03:07:41','1 week','Rs 200 per Banner'),(42,'testing',38,1,'Testing',1,'2017-01-26 04:11:43','3 hours','Submit Task for Quote'),(43,'test',37,1,'test',1,'2017-01-26 14:45:10','3 hours','Submit Task for Quote'),(44,'test',37,1,'test',1,'2017-01-26 14:47:51','3 hours','Submit Task for Quote'),(45,'test',32,1,'test',1,'2017-01-26 14:48:47','3 hours','Rs 1 Per Card'),(46,'test',32,1,'test',1,'2017-01-26 16:29:33','3 hours','Rs 1 Per Card'),(47,'Web Page',10,6,'Web Page',1,'2017-01-26 16:32:19','1 Week','Rs 200 per Banner'),(48,'Web site testing',37,6,'Web site testing',1,'2017-01-27 05:50:21','1 week','Submit Task for Quote'),(49,'A',43,6,'B',1,'2017-01-27 05:53:50','1 week','Rs 100 per article of 500 word'),(50,'A',10,6,'B',1,'2017-01-27 06:06:50','1 week','Rs 200 per Banner'),(51,'A',10,6,'B',1,'2017-01-27 14:41:38','1 week','Rs 200 per Banner'),(52,'A',37,6,'B',1,'2017-01-28 06:40:58','1 week','Submit Task for Quote'),(53,'A',18,6,'B',1,'2017-01-28 07:02:00','1 day','Rs 300 per Logo'),(54,'test',32,1,'test',1,'2017-01-28 17:43:16','3 hours','100'),(55,'test',32,1,'test',1,'2017-01-28 18:28:48','3 hours','100'),(56,'A',13,6,'B',1,'2017-01-29 10:33:50','2 Hours','250'),(57,'A',13,6,'B',1,'2017-01-29 10:34:39','1','250'),(58,'A',13,6,'B',1,'2017-01-29 10:36:59','1 Day','250'),(59,'A',13,6,'B',1,'2017-01-29 10:37:58','1 Week','250'),(60,'A',13,6,'B',1,'2017-01-29 10:54:26','1','250'),(61,'A',13,6,'C',1,'2017-01-29 12:04:23','1 week','250'),(62,'test',32,1,'test',1,'2017-01-29 12:34:01','3 hours','100'),(63,'A',28,6,'B',1,'2017-01-29 13:13:41','1 week','150'),(64,'A',40,6,'B',1,'2017-01-29 13:49:22','1','250'),(65,'testing',13,1,'testing',1,'2017-01-29 18:00:30','3 hours','250'),(66,'A',10,6,'B',1,'2017-02-02 03:49:57','1 Day','250'),(67,'A',32,3,'B',1,'2017-02-02 07:47:49','1 day','100'),(68,'a',32,1,'b',1,'2017-02-02 07:48:53','3 hours','100'),(69,'A',32,3,'B',1,'2017-02-02 07:57:40','1 day','100'),(70,'A',10,3,'B',1,'2017-02-02 11:23:23','1 day','250'),(71,'A',10,3,'B',1,'2017-02-02 11:30:27','1','250'),(72,'A',13,3,'B',1,'2017-02-02 11:30:46','1','250'),(73,'A',37,3,'B',1,'2017-02-03 04:36:32','1 Day','250'),(74,'Website design',10,8,'A',1,'2017-02-03 11:46:32','1 day','250'),(75,'website design',10,8,'A',1,'2017-02-03 11:50:14','1 day','250'),(76,'Web Site',2,3,'Web Site',1,'2017-02-06 15:57:17','1 week','200'),(77,'a',13,1,'a',1,'2017-02-06 17:15:59','1','250'),(78,'A',10,3,'B',1,'2017-02-06 18:46:49','1 week','250'),(79,'A',13,3,'B',1,'2017-02-06 18:47:17','1 week','250'),(80,'A',2,3,'B',1,'2017-02-06 18:47:44','1 week','200'),(81,'a',10,1,'b',1,'2017-02-06 18:49:15','yuiu','250'),(82,'A',10,3,'B',1,'2017-02-06 18:51:59','1 week','250'),(83,'A',13,3,'B',1,'2017-02-06 18:53:06','1 week','250'),(84,'A',13,3,'B',1,'2017-02-06 19:43:15','1 week','250'),(85,'A',13,3,'B',1,'2017-02-06 19:52:04','1 week','250'),(86,'A',13,3,'B',1,'2017-02-06 19:54:09','1 week','250'),(87,'A',13,3,'B',1,'2017-02-06 19:59:24','1 week','250'),(88,'A',13,3,'B',1,'2017-02-06 20:15:06','1','250'),(89,'A',13,3,'B',1,'2017-02-06 20:20:37','1','250'),(90,'A',13,3,'B',1,'2017-02-06 20:25:03','1','250');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectstatuses`
--

DROP TABLE IF EXISTS `projectstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectstatuses` (
  `ProjectStatusID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ProjectStatus` varchar(100) DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ProjectStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectstatuses`
--

LOCK TABLES `projectstatuses` WRITE;
/*!40000 ALTER TABLE `projectstatuses` DISABLE KEYS */;
INSERT INTO `projectstatuses` VALUES (1,'Created',1),(2,'Assigned',1),(3,'In Progress',1),(4,'Completed',1),(5,'Delayed',1);
/*!40000 ALTER TABLE `projectstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `SkillID` smallint(6) NOT NULL AUTO_INCREMENT,
  `SkillName` varchar(50) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Microsoft SQL Server','2016-08-11',1),(2,'Oracle','2016-08-11',1),(3,'HR','2016-08-11',1),(4,'Customer Service','2016-08-11',1),(5,'SQL SERVER','2016-09-06',1),(6,'Wordpress','2016-09-25',1),(7,'Data Entry','2016-09-25',1);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskcategory`
--

DROP TABLE IF EXISTS `taskcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskcategory` (
  `TaskCategoryID` smallint(6) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`TaskCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskcategory`
--

LOCK TABLES `taskcategory` WRITE;
/*!40000 ALTER TABLE `taskcategory` DISABLE KEYS */;
INSERT INTO `taskcategory` VALUES (1,'Website Testing','2016-12-15',1,'Website Tester'),(2,'Account & Audits','2016-08-11',0,'The fast and affordable solution for all your tech needs'),(3,'Human Resources','2016-08-11',1,'The fast and affordable solution for all your tech needs'),(4,'Web Design','2016-09-25',1,'The fast and affordable solution for all your tech needs'),(5,'Graphic Design','2016-09-25',1,'The fast and affordable solution for all your tech needs'),(6,'Customer Support','2016-09-25',1,'The fast and affordable solution for all your tech needs'),(7,'Data Entry Jobs','2016-11-27',1,'Back Office Jobs'),(9,'Corporate Training',NULL,1,NULL),(10,'Software Development','2017-02-04',2,'Software Development'),(11,'Mobile Apps Development','2017-02-04',2,'Mobile Apps  Development'),(12,'IT Adminstrator','2017-02-04',2,'IT Adminstrator'),(13,'BI & Analytics','2017-02-04',2,'BI & Analytics'),(14,'Digital Marketing','2017-02-04',2,'Digital Marketing');
/*!40000 ALTER TABLE `taskcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasker`
--

DROP TABLE IF EXISTS `tasker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasker` (
  `TaskerID` int(11) NOT NULL AUTO_INCREMENT,
  `EmailID` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `LastLoginDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TaskSubCategoryID` int(11) DEFAULT NULL,
  `TaskCategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaskerID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasker`
--

LOCK TABLES `tasker` WRITE;
/*!40000 ALTER TABLE `tasker` DISABLE KEYS */;
INSERT INTO `tasker` VALUES (13,'sonalibhondivale@gmail.com','7666946600','2017-01-03',1,'2017-01-29 15:30:43',13,3),(14,'aartikarale123@gmail.com','7208306218','2017-01-07',1,'2017-01-29 15:30:28',32,7),(15,'sunilpolampelli@gmail.com','9196190711','2017-01-07',1,'2017-01-29 15:30:01',31,7),(17,'pallavi2601gondane@gmail.com','7389362696','2017-01-09',1,'2017-01-29 15:29:43',7,4),(18,'sameerraval1014@gmail.com','8898693837','2017-01-09',1,'2017-01-29 15:28:59',32,7),(19,'sumitsawant25@gmail.com','8268183320','2017-01-10',1,'2017-01-29 15:28:46',7,4),(20,'heefzanshaikh@gmail.com','9967786488','2017-01-11',1,'2017-01-29 15:28:03',32,7),(21,'montyfargose@gmail.com','9730655704','2017-01-12',1,'2017-01-29 15:27:51',37,8),(22,'poojajadhav101293@gmail.com','8983666580','2017-01-12',1,'2017-01-29 15:26:45',37,8),(24,'desaiankit76@gmail.com','9619645229','2017-01-13',1,'2017-01-29 15:27:17',7,4),(28,'dr.pras147@gmail.com','8898894828','2017-01-18',1,'2017-01-18 06:03:25',10,4),(29,'avishkarm@gmail.com','9833822789','2017-01-23',1,'2017-01-29 10:36:26',13,3),(30,'akashc376@gmail.com','8108894903','2017-01-24',1,'2017-01-24 17:55:02',41,1),(31,'avishkarm@gmail.com','9833322789','2017-01-29',1,'2017-01-29 10:51:29',13,3),(32,'avishkar@tasklance.com','9833833789','2017-01-29',1,'2017-01-29 15:25:57',28,6),(33,'gajananh999@gmail.com','9008311701','2017-01-29',1,'2017-01-29 15:25:35',32,7),(34,'swetapushpam20@gmail.com','8667666666','2017-02-03',1,'2017-02-03 11:49:40',10,4),(35,'maitrilekha.avishkar@gmail.com','1111111111','2017-02-06',1,'2017-02-06 07:28:20',NULL,NULL),(36,'manish.m@yahoo.com','8888888000','2017-02-06',1,'2017-02-06 09:21:47',60,12),(37,'payal@the4thwheel.com','9825885044','2017-02-06',1,'2017-02-06 15:56:52',2,5);
/*!40000 ALTER TABLE `tasker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasker_project_mapping`
--

DROP TABLE IF EXISTS `tasker_project_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasker_project_mapping` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tasker_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `taskerresponse` tinyint(4) DEFAULT NULL,
  `responsedate` date DEFAULT NULL,
  `createon` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasker_project_mapping`
--

LOCK TABLES `tasker_project_mapping` WRITE;
/*!40000 ALTER TABLE `tasker_project_mapping` DISABLE KEYS */;
INSERT INTO `tasker_project_mapping` VALUES (1,14,54,1,NULL,NULL,NULL),(2,18,54,1,NULL,NULL,NULL),(3,18,54,1,NULL,NULL,NULL),(4,18,54,1,NULL,NULL,NULL),(5,14,54,1,NULL,NULL,NULL),(6,18,54,1,NULL,NULL,NULL),(7,14,54,1,NULL,NULL,NULL),(8,14,54,1,NULL,NULL,NULL),(9,14,54,1,NULL,NULL,NULL),(10,14,54,1,NULL,NULL,NULL),(11,18,54,1,NULL,NULL,NULL),(12,18,54,1,NULL,NULL,NULL),(13,14,55,1,NULL,NULL,NULL),(14,18,55,1,NULL,NULL,NULL),(15,31,60,1,NULL,NULL,NULL),(16,31,61,1,NULL,NULL,NULL),(17,14,62,1,NULL,NULL,NULL),(18,18,62,1,NULL,NULL,NULL),(19,32,63,1,NULL,NULL,NULL),(20,31,65,1,NULL,NULL,NULL),(21,31,65,1,NULL,NULL,NULL),(22,31,65,1,0,NULL,'2017-01-29'),(23,0,NULL,1,0,NULL,'2017-01-30'),(24,31,72,1,0,NULL,'2017-02-02'),(25,34,75,1,0,NULL,'2017-02-03'),(26,37,76,1,0,NULL,'2017-02-06'),(27,31,83,1,0,NULL,'2017-02-06'),(28,18,54,1,0,NULL,'2017-02-06'),(29,31,84,1,0,NULL,'2017-02-06'),(30,31,84,1,0,NULL,'2017-02-06'),(31,31,85,1,0,NULL,'2017-02-06'),(32,31,86,1,0,NULL,'2017-02-06'),(33,31,87,1,0,NULL,'2017-02-06'),(34,18,54,1,0,NULL,'2017-02-06'),(35,31,88,1,0,NULL,'2017-02-06'),(36,31,88,1,0,NULL,'2017-02-06'),(37,31,88,1,0,NULL,'2017-02-06'),(38,31,88,1,0,NULL,'2017-02-06'),(39,31,88,1,0,NULL,'2017-02-06'),(40,31,88,1,0,NULL,'2017-02-06'),(41,31,89,1,0,NULL,'2017-02-06'),(42,31,90,1,0,NULL,'2017-02-06');
/*!40000 ALTER TABLE `tasker_project_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskerskill`
--

DROP TABLE IF EXISTS `taskerskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskerskill` (
  `TaskerID` int(11) DEFAULT NULL,
  `TaskSubCategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskerskill`
--

LOCK TABLES `taskerskill` WRITE;
/*!40000 ALTER TABLE `taskerskill` DISABLE KEYS */;
INSERT INTO `taskerskill` VALUES (36,60),(37,2);
/*!40000 ALTER TABLE `taskerskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskerskills`
--

DROP TABLE IF EXISTS `taskerskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskerskills` (
  `TaskerID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  `TaskSubCategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaskerID`,`SkillID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskerskills`
--

LOCK TABLES `taskerskills` WRITE;
/*!40000 ALTER TABLE `taskerskills` DISABLE KEYS */;
INSERT INTO `taskerskills` VALUES (1,1,1),(2,7,31),(9,7,31),(14,4,30);
/*!40000 ALTER TABLE `taskerskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskprovider`
--

DROP TABLE IF EXISTS `taskprovider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskprovider` (
  `TaskProviderID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(50) DEFAULT NULL,
  `WebsiteName` varchar(30) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`TaskProviderID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskprovider`
--

LOCK TABLES `taskprovider` WRITE;
/*!40000 ALTER TABLE `taskprovider` DISABLE KEYS */;
INSERT INTO `taskprovider` VALUES (1,'Sadhana Upadhyay',NULL,'sadhana.upadhyay3@gmail.com',NULL,'2016-12-31',1),(2,'sadhana upadhyay',NULL,'sadhana@homesfy.in',NULL,'2016-12-31',1),(3,'Avishkar Meshram',NULL,'avishkarm@gmail.com',NULL,'2017-01-13',1),(4,NULL,NULL,'desaiankit76@gmail.com',NULL,'2017-01-13',1),(5,NULL,NULL,'dr.pras147@gmail.com',NULL,'2017-01-18',1),(6,'Nishikant Kumar',NULL,'nkumar0987654321@gmail.com',NULL,'2017-01-20',1),(7,'Vivek Iyer',NULL,'vivek.sundaram@gmail.com',NULL,'2017-01-25',1),(8,'Sweta Pushpam',NULL,'swetapushpam20@gmail.com',NULL,'2017-02-03',1);
/*!40000 ALTER TABLE `taskprovider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskrates`
--

DROP TABLE IF EXISTS `taskrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskrates` (
  `taskrateid` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) DEFAULT NULL,
  `SubCategoryID` smallint(6) DEFAULT NULL,
  `Median_Salary` int(11) DEFAULT NULL,
  `MidLevel` int(11) DEFAULT NULL,
  `EntryLevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskrateid`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskrates`
--

LOCK TABLES `taskrates` WRITE;
/*!40000 ALTER TABLE `taskrates` DISABLE KEYS */;
INSERT INTO `taskrates` VALUES (1,'.NET Software Developer / Programmer',NULL,334958,350,250),(2,'3d Artist',NULL,297865,300,200),(3,'Account Executive',NULL,238261,250,150),(4,'Account Manager',NULL,592300,550,400),(5,'Account Manager Sales',NULL,626748,600,400),(6,'Accountant',NULL,231402,250,150),(7,'Accounting Assistant',NULL,184297,200,150),(8,'Accounts Assistant',NULL,179899,200,150),(9,'Accounts Receivable Analyst',NULL,256047,250,200),(10,'Administrative / Office Manager',NULL,400586,400,250),(11,'Administrative Assistant',NULL,247144,250,200),(12,'Administrative Manager',NULL,496038,450,350),(13,'Administrative Officer',NULL,348407,350,250),(14,'Aeronautical Engineer',NULL,617408,600,400),(15,'Android Software Developer',NULL,297029,300,200),(16,'Animator',NULL,352875,350,250),(17,'Animator, 3D',NULL,299942,300,200),(18,'Application Developer',NULL,484099,450,300),(19,'Application Support Analyst',NULL,434419,400,300),(20,'Applications Engineer',NULL,466349,450,300),(21,'Architect (but not Landscape or Naval)',NULL,366755,350,250),(22,'Area Sales Manager',NULL,583958,550,400),(23,'ASP.NET Developer',NULL,300998,300,200),(24,'Assistant Accountant',NULL,174338,200,150),(25,'Assistant Branch Manager, Banking',NULL,424006,400,300),(26,'Assistant Finance Manager',NULL,645950,600,400),(27,'Assistant General Manager (AGM)',NULL,1544833,1400,1000),(28,'Assistant Human Resources (HR) Manager',NULL,501165,500,350),(29,'Assistant Manager',NULL,583288,550,400),(30,'Assistant Manager, Customer Service',NULL,491174,450,350),(31,'Assistant Manager, Quality Control',NULL,594720,550,400),(32,'Assistant Marketing Manager',NULL,567332,550,350),(33,'Assistant Operations Manager',NULL,559547,550,350),(34,'Assistant Professor, Postsecondary / Higher Education',NULL,421681,400,300),(35,'Assistant Project Manager, Construction',NULL,602804,550,400),(36,'Assistant Sales Manager',NULL,446657,450,300),(37,'Assistant Store Manager',NULL,297932,300,200),(38,'Assistant Vice President (AVP), Regional Director',NULL,2115425,1950,1350),(39,'Associate Project Manager (Unspecified Type / General)',NULL,1005704,950,650),(40,'Associate Software Engineer',NULL,321973,300,200),(41,'Auditor',NULL,390003,400,250),(42,'Automation Engineer',NULL,355873,350,250),(43,'Biomedical Engineer',NULL,299680,300,200),(44,'Branch Manager, Banking',NULL,622692,600,400),(45,'Branch Sales Manager',NULL,484279,450,300),(46,'Brand Manager',NULL,892208,850,550),(47,'Business Analyst (Unspecified Type)',NULL,498162,450,350),(48,'Business Analyst, Finance/Banking',NULL,565825,550,350),(49,'Business Analyst, IT',NULL,591396,550,400),(50,'Business Consultant',NULL,917705,850,600),(51,'Business Development Associate',NULL,327778,300,250),(52,'Business Development Executive',NULL,264136,250,200),(53,'Business Development Manager',NULL,555911,550,350),(54,'Business Intelligence (BI) Analyst',NULL,512594,500,350),(55,'Business Intelligence (BI) Developer',NULL,437074,400,300),(56,'Business Manager',NULL,752861,700,500),(57,'Business Process / Management Consultant',NULL,645708,600,400),(58,'Call Center and Customer Service Executive',NULL,201859,200,150),(59,'Cashier',NULL,177190,200,150),(60,'Certified Ethical Hacker (CEH)',NULL,374890,350,250),(61,'Chartered Accountant',NULL,706945,650,450),(62,'Chemical Engineer',NULL,423045,400,300),(63,'Chemist',NULL,204512,200,150),(64,'Chief Executive Officer (CEO)',NULL,2958419,2700,1850),(65,'Chief Financial Officer (CFO)',NULL,3227648,2950,2000),(66,'Chief Technology Officer (CTO)',NULL,2446906,2250,1550),(67,'Civil Engineer',NULL,332618,300,250),(68,'Computer Aided Design (CAD) Engineer',NULL,290901,300,200),(69,'Computer Operator',NULL,146509,150,100),(70,'Consultant, Business Process / Management',NULL,576949,550,400),(71,'Consultant, Human Resources (HR)',NULL,348460,350,250),(72,'Content Writer',NULL,242137,250,150),(73,'Copy Editor',NULL,249930,250,200),(74,'Corporate Secretary',NULL,507022,500,350),(75,'Corporate Trainer',NULL,418117,400,300),(76,'Cost Accountant',NULL,455567,450,300),(77,'Credit Analyst',NULL,500781,500,350),(78,'Credit Manager',NULL,540167,500,350),(79,'Customer Care Executive',NULL,180501,200,150),(80,'Customer Service Associate',NULL,198398,200,150),(81,'Customer Service Manager',NULL,559774,550,350),(82,'Customer Service Officer',NULL,220668,200,150),(83,'Customer Service Representative (CSR)',NULL,215310,200,150),(84,'Customer Service Sales Associate',NULL,235618,250,150),(85,'Customer Service Team Leader',NULL,346446,350,250),(86,'Customer Support Engineer',NULL,188953,200,150),(87,'Customer Support Representative',NULL,199756,200,150),(88,'Data Analyst',NULL,344038,350,250),(89,'Data Entry Operator',NULL,121674,150,100),(90,'Data Scientist, IT',NULL,611529,600,400),(91,'Database Administrator (DBA)',NULL,432082,400,300),(92,'Dentist',NULL,347040,350,250),(93,'Deputy General Manager',NULL,1803875,1650,1150),(94,'Design Architect',NULL,364532,350,250),(95,'Design Engineer',NULL,366821,350,250),(96,'Design Engineering Manager',NULL,1074876,1000,700),(97,'Desktop Engineer',NULL,161158,150,100),(98,'Desktop Support Engineer',NULL,150212,150,100),(99,'Digital Marketing Manager',NULL,409607,400,300),(100,'Director of Operations',NULL,2604154,2350,1650),(101,'Draughtsman',NULL,289787,300,200),(102,'Editor',NULL,358239,350,250),(103,'Electrical Design Engineer',NULL,370596,350,250),(104,'Electrical Engineer',NULL,349408,350,250),(105,'Electrical Maintenance Engineer',NULL,264028,250,200),(106,'Electrician',NULL,188891,200,150),(107,'Electronics Engineer',NULL,310911,300,200),(108,'Embedded Software Engineer',NULL,374709,350,250),(109,'Embedded Systems Engineer',NULL,325874,300,250),(110,'Engineering Group Manager',NULL,1183571,1100,750),(111,'ERP Consultant',NULL,699299,650,450),(112,'Executive Administrative Assistant',NULL,243131,250,150),(113,'Executive Assistant',NULL,290707,300,200),(114,'Facility Manager',NULL,503920,500,350),(115,'Fashion Designer',NULL,351031,350,250),(116,'Field Sales Executive',NULL,198978,200,150),(117,'Field Service Engineer',NULL,294742,300,200),(118,'Film / Video Editor',NULL,255353,250,200),(119,'Finance Analyst',NULL,357342,350,250),(120,'Finance Manager',NULL,957871,900,600),(121,'Financial Analyst',NULL,353017,350,250),(122,'Financial Controller',NULL,1931880,1750,1200),(123,'Front End Developer / Engineer',NULL,420227,400,300),(124,'General / Operations Manager',NULL,1113407,1050,700),(125,'General Sales Manager',NULL,1217935,1100,750),(126,'Graphic Artist / Designer',10,258700,250,200),(127,'Graphic Designer',7,251299,250,200),(128,'High School Teacher',NULL,300298,300,200),(129,'Hospital Administrator',NULL,401360,400,250),(130,'Human Resources (HR) Administrator',NULL,243581,250,150),(131,'Human Resources (HR) Assistant',NULL,234808,250,150),(132,'Human Resources (HR) Associate',NULL,282239,300,200),(133,'Human Resources (HR) Business Partner',12,626494,600,400),(134,'Human Resources (HR) Coordinator',NULL,240250,250,150),(135,'Human Resources (HR) Generalist',NULL,299366,300,200),(136,'Human Resources (HR) Manager',NULL,609585,550,400),(137,'Human Resources (HR) Officer',NULL,285069,300,200),(138,'Human Resources (HR) Recruiter',6,188066,200,150),(139,'Human Resources (HR) Specialist',13,442630,400,300),(140,'Incident Manager',NULL,544237,500,350),(141,'Informatica Developer',NULL,497275,450,350),(142,'Information Security Analyst',NULL,471283,450,300),(143,'Information Technology (IT) Architect',NULL,1653156,1500,1050),(144,'Information Technology (IT) Consultant',NULL,784828,750,500),(145,'Information Technology (IT) Director',NULL,3434730,3100,2150),(146,'Information Technology (IT) Lead',NULL,955848,900,600),(147,'Information Technology (IT) Manager',NULL,1012773,950,650),(148,'Information Technology (IT) Support Specialist',NULL,456959,450,300),(149,'Information Technology Specialist',NULL,878241,800,550),(150,'Instructional Designer',NULL,447678,450,300),(151,'Instrumentation Engineer',NULL,369727,350,250),(152,'Interior Designer',NULL,288859,300,200),(153,'Internal Auditor',NULL,523891,500,350),(154,'iOS Developer',NULL,366408,350,250),(155,'Java Developer',NULL,391796,400,250),(156,'Java Software Developer / Programmer',NULL,409467,400,300),(157,'Junior Mechanical Engineer',NULL,237518,250,150),(158,'Junior Software Engineer',NULL,218369,200,150),(159,'Key Account Manager',NULL,654241,600,450),(160,'Lead Business Analyst',NULL,1184150,1100,750),(161,'Lead Software Development Engineer (SDE)',NULL,1117902,1050,700),(162,'Lead Software Engineer',NULL,1065010,1000,700),(163,'Lecturer / Speaker',NULL,296411,300,200),(164,'Legal Manager',NULL,797877,750,500),(165,'Linux System Administrator',NULL,334805,350,250),(166,'Logistics Coordinator',NULL,287664,300,200),(167,'Logistics Manager',NULL,546699,500,350),(168,'Maintenance Engineer',NULL,309527,300,200),(169,'Maintenance Manager',NULL,762494,700,500),(170,'Maintenance Technician',NULL,223119,250,150),(171,'Management Consultant',NULL,1013741,950,650),(172,'Manager Trainee',NULL,313774,300,200),(173,'Manufacturing Engineer',NULL,431968,400,300),(174,'Market Research Analyst',NULL,347926,350,250),(175,'Marketing Executive',NULL,246671,250,200),(176,'Marketing Manager',NULL,640621,600,400),(177,'Mathematics Teacher',NULL,298682,300,200),(178,'Mechanical Design Engineer',NULL,335905,350,250),(179,'Mechanical Engineer',NULL,342365,350,250),(180,'Medical Coder',NULL,233204,250,150),(181,'Medical Officer',NULL,538124,500,350),(182,'Medical Transcriptionist',NULL,239516,250,150),(183,'Medical Writer',NULL,354671,350,250),(184,'Merchandiser',NULL,320975,300,200),(185,'Microbiologist',NULL,286824,300,200),(186,'Middle School Teacher',NULL,254745,250,200),(187,'Mobile Applications Developer',NULL,315356,300,200),(188,'Module Lead',NULL,858846,800,550),(189,'National Sales Manager',NULL,1739606,1600,1100),(190,'Network Administrator',NULL,315913,300,200),(191,'Network Engineer',NULL,291266,300,200),(192,'Network Operations Center (NOC) Engineer',NULL,249072,250,200),(193,'Network Security Engineer',NULL,400583,400,250),(194,'Office Administrator',NULL,239523,250,150),(195,'Office Assistant',NULL,153912,150,100),(196,'Office Clerk, General',NULL,180754,200,150),(197,'Office Manager',NULL,390238,400,250),(198,'Operations Analyst',NULL,311229,300,200),(199,'Operations Manager',NULL,704154,650,450),(200,'Operations Supervisor',NULL,246464,250,200),(201,'Operations Team Leader',NULL,459706,450,300),(202,'Optometrist',NULL,261777,250,200),(203,'Oracle Database Administrator (DBA)',NULL,479599,450,300),(204,'Oracle Developer',NULL,484897,450,300),(205,'Pharmacist',NULL,201944,200,150),(206,'PHP Developer',NULL,240156,250,150),(207,'PHP Software Developer / Programmer',NULL,320445,300,200),(208,'PHP Web Developer',NULL,234328,250,150),(209,'Physician / Doctor, General Practice',NULL,587551,550,400),(210,'Physician / Doctor, Internal Medicine',NULL,1189283,1100,750),(211,'Physiotherapist',NULL,244506,250,200),(212,'Primary School Teacher',NULL,235460,250,150),(213,'Principal Software Engineer',NULL,1802022,1650,1150),(214,'Process Analyst',NULL,235350,250,150),(215,'Process Engineer',NULL,395630,400,250),(216,'Procurement Manager',NULL,820082,750,550),(217,'Procurement Specialist',NULL,415830,400,300),(218,'Product Manager, Software',NULL,1431670,1300,900),(219,'Production Engineer',NULL,266873,250,200),(220,'Production Manager, Manufacturing',NULL,703551,650,450),(221,'Production Operator',NULL,183125,200,150),(222,'Production Supervisor',NULL,223018,250,150),(223,'Production Supervisor, Manufacturing',NULL,265597,250,200),(224,'Program Manager, IT',NULL,1980656,1800,1250),(225,'Program Project Manager',NULL,1394008,1300,900),(226,'Programmer Analyst',NULL,339342,350,250),(227,'Project Coordinator, (Unknown Type / General)',NULL,354416,350,250),(228,'Project Coordinator, Information Technology (IT)',NULL,329754,300,250),(229,'Project Engineer',NULL,341854,350,250),(230,'Project Leader, IT',NULL,1078001,1000,700),(231,'Project Manager, (Unspecified Type / General)',NULL,1137811,1050,750),(232,'Project Manager, Construction',NULL,934234,850,600),(233,'Project Manager, Engineering',NULL,1066804,1000,700),(234,'Project Manager, Information Technology (IT)',NULL,1307721,1200,850),(235,'Project Manager, Operations',NULL,759658,700,500),(236,'Project Manager, Software Development',NULL,1349172,1250,850),(237,'Purchasing Manager',NULL,726519,700,450),(238,'Quality Assurance (QA) / Quality Control (QC) Engineer',NULL,251521,250,200),(239,'Quality Assurance (QA) / Quality Control (QC) Inspector',NULL,246908,250,200),(240,'Quality Assurance (QA) / Test Automation Engineer',39,421529,400,300),(241,'Quality Assurance (QA) Engineer',NULL,362841,350,250),(242,'Quality Assurance (QA) Specialist',NULL,489228,450,350),(243,'Quality Assurance Analyst',NULL,349765,350,250),(244,'Quality Assurance Manager',NULL,939339,850,600),(245,'Quality Control Analyst',NULL,283388,300,200),(246,'Quality Manager',NULL,864039,800,550),(247,'Quantity Surveyor',NULL,366885,350,250),(248,'Radio Frequency (RF) Engineer',NULL,234279,250,150),(249,'Receptionist',NULL,161663,150,100),(250,'Recruiter',NULL,279457,300,200),(251,'Regional Sales Manager',NULL,995643,900,650),(252,'Registered Nurse (RN)',NULL,233068,250,150),(253,'Relationship Manager',NULL,385773,350,250),(254,'Research Analyst',NULL,329688,300,250),(255,'Research Associate (Unspecified Type)',NULL,301458,300,200),(256,'Research Scientist',NULL,588338,550,400),(257,'Retail Store Manager',NULL,350317,350,250),(258,'Safety Officer',NULL,302701,300,200),(259,'Sales and Marketing Manager',NULL,519371,500,350),(260,'Sales Associate',NULL,236828,250,150),(261,'Sales Consultant',NULL,246839,250,200),(262,'Sales Coordinator',NULL,236999,250,150),(263,'Sales Engineer',NULL,299722,300,200),(264,'Sales Officer',NULL,241324,250,150),(265,'Sales Representative, Pharmaceuticals',NULL,241888,250,150),(266,'SAP ABAP Programmer',NULL,463044,450,300),(267,'SAP Basis Administrator',NULL,499774,450,350),(268,'SAP Business Intelligence Consultant',NULL,589504,550,400),(269,'SAP Consultant',NULL,590383,550,400),(270,'SAS Programmer',NULL,436999,400,300),(271,'Search Engine Optimization (SEO) Analyst',NULL,178135,200,150),(272,'Search Engine Optimization (SEO) Specialist',NULL,183085,200,150),(273,'Secondary School Teacher',NULL,306034,300,200),(274,'Security Analyst',NULL,436592,400,300),(275,'Security Guard',NULL,127909,150,100),(276,'Security Officer',NULL,294484,300,200),(277,'Senior .NET Developer / Programmer',NULL,678519,650,450),(278,'Senior Account Executive',NULL,351484,350,250),(279,'Senior Account Manager',NULL,1035971,950,650),(280,'Senior Accountant',NULL,340083,350,250),(281,'Senior Analyst, Finance',NULL,485902,450,300),(282,'Senior Application Developer',NULL,746679,700,500),(283,'Senior Business Analyst',NULL,859024,800,550),(284,'Senior Business Development Manager',NULL,994755,900,650),(285,'Senior Civil Engineer',NULL,525132,500,350),(286,'Senior Customer Service Representative (CSR)',NULL,288635,300,200),(287,'Senior Data Analyst',NULL,493717,450,350),(288,'Senior Database Administrator (DBA)',NULL,924248,850,600),(289,'Senior Electrical Engineer',NULL,550833,500,350),(290,'Senior Engineering Manager',NULL,2035433,1850,1300),(291,'Senior Executive Assistant',NULL,338026,350,250),(292,'Senior Finance Manager',NULL,1514523,1400,950),(293,'Senior Financial Analyst',NULL,510730,500,350),(294,'Senior Graphic Designer',NULL,429886,400,300),(295,'Senior Human Resources (HR) Generalist',NULL,399130,400,250),(296,'Senior Java Developer',NULL,798048,750,500),(297,'Senior Marketing Manager',NULL,1225143,1150,800),(298,'Senior Mechanical Design Engineer',NULL,606942,550,400),(299,'Senior Mechanical Engineer',NULL,619092,600,400),(300,'Senior Product Manager',NULL,1776457,1600,1100),(301,'Senior Programmer Analyst',NULL,838486,800,550),(302,'Senior Project Engineer',NULL,598378,550,400),(303,'Senior Project Manager, IT',NULL,1784183,1650,1100),(304,'Senior Quality Assurance (QA) / Test Automation Engineer',42,714643,650,450),(305,'Senior Research Analyst',NULL,592103,550,400),(306,'Senior Research Associate',NULL,413286,400,300),(307,'Senior Sales Executive',NULL,307203,300,200),(308,'Senior SAP Consultant',NULL,994442,900,650),(309,'Senior Software Architect',NULL,2074397,1900,1300),(310,'Senior Software Development Engineer (SDE)',NULL,1005735,950,650),(311,'Senior Software Engineer',NULL,711652,650,450),(312,'Senior Systems Administrator',NULL,600921,550,400),(313,'Senior Systems Analyst',NULL,852443,800,550),(314,'Senior Systems Engineer',NULL,502831,500,350),(315,'Senior Systems Engineer (Computer Networking / IT)',NULL,512389,500,350),(316,'Senior Technical Analyst',NULL,898015,850,600),(317,'Senior Technical Consultant',NULL,1059759,1000,700),(318,'Senior Technical Support Engineer',NULL,486727,450,300),(319,'Senior Technical Writer',NULL,833175,750,550),(320,'Senior Test Engineer',NULL,602458,550,400),(321,'Senior Web Developer',NULL,561764,550,350),(322,'Service Delivery Manager',NULL,1370962,1250,850),(323,'Service Desk Analyst',NULL,297491,300,200),(324,'Service Engineer',NULL,251808,250,200),(325,'Sharepoint Developer',NULL,491979,450,350),(326,'Software Architect',NULL,1819060,1650,1150),(327,'Software Consultant',NULL,721962,650,450),(328,'Software Developer',NULL,370992,350,250),(329,'Software Development Engineer (SDE)',NULL,1017621,950,650),(330,'Software Development Manager',NULL,2026375,1850,1250),(331,'Software Engineer',NULL,420566,400,300),(332,'Software Engineer / Developer / Programmer',NULL,420480,400,300),(333,'Software Quality Assurance (SQA) Lead',NULL,938319,850,600),(334,'Software Team Leader',NULL,997741,900,650),(335,'Software Test Lead',40,882099,800,550),(336,'Software Tester',NULL,315144,300,200),(337,'Solutions Architect',NULL,1577311,1450,1000),(338,'SQL Developer',NULL,372126,350,250),(339,'Sr. Human Resources (HR) Manager',NULL,1173609,1100,750),(340,'Sr. Network Engineer',NULL,616539,600,400),(341,'Sr. Operations Manager',NULL,1168755,1100,750),(342,'Sr. Software Engineer / Developer / Programmer',NULL,708475,650,450),(343,'Sr. Test / Quality Assurance (QA) Engineer, (Computer Software)',NULL,671720,650,450),(344,'Staff Nurse',NULL,234753,250,150),(345,'Storage Area Network (SAN) Systems Administrator',NULL,484414,450,300),(346,'Structural Engineer',NULL,485865,450,300),(347,'Supply Chain Manager',NULL,699256,650,450),(348,'Support Analyst, Information Technology (IT)',NULL,471949,450,300),(349,'Support Engineer, Information Technology (IT)',NULL,293650,300,200),(350,'Support Technician, Information Technology (IT)',NULL,286345,300,200),(351,'System Administrator, Computer / Network',NULL,242867,250,150),(352,'System Administrator, Server',NULL,309564,300,200),(353,'System Administrator, Windows Server',NULL,350322,350,250),(354,'Systems Administrator',NULL,311541,300,200),(355,'Systems Analyst',NULL,589805,550,400),(356,'Systems Engineer (Computer Networking / IT)',NULL,307667,300,200),(357,'Systems Engineer, IT',NULL,341878,350,250),(358,'Teacher Assistant',NULL,247408,250,200),(359,'Team Leader, General',NULL,495079,450,350),(360,'Team Leader, IT',NULL,933881,850,600),(361,'Technical Analyst',NULL,603266,550,400),(362,'Technical Architect',NULL,1548479,1400,1000),(363,'Technical Consultant',NULL,687835,650,450),(364,'Technical Delivery Manager',NULL,1886080,1700,1200),(365,'Technical Project Manager',NULL,1345681,1250,850),(366,'Technical Recruiter',NULL,251220,250,200),(367,'Technical Specialist',NULL,1060384,1000,700),(368,'Technical Subject Matter Expert',NULL,597535,550,400),(369,'Technical Support Engineer',NULL,250393,250,200),(370,'Technical Support Manager',NULL,1036397,950,650),(371,'Technical Support Representative',NULL,242646,250,150),(372,'Technical Support Specialist',NULL,427775,400,300),(373,'Technical Writer',NULL,465588,450,300),(374,'Technology Analyst',NULL,591829,550,400),(375,'Territory Manager',NULL,431941,400,300),(376,'Territory Sales Manager',NULL,488785,450,350),(377,'Test / Quality Assurance (QA) Analyst, (Computer Software)',NULL,430806,400,300),(378,'Test / Quality Assurance (QA) Engineer (Computer Software)',NULL,377140,350,250),(379,'Test Analyst',38,547487,500,350),(380,'Test Engineer',37,362788,350,250),(381,'Test Manager',NULL,1275340,1150,800),(382,'Trainer, Employee / Human Resources (HR)',NULL,298461,300,200),(383,'Training & Development Manager',NULL,822056,750,550),(384,'Training Manager',NULL,690397,650,450),(385,'UNIX System Administrator',NULL,397695,400,250),(386,'User Experience Designer',NULL,614481,600,400),(387,'User Interface Designer',NULL,377861,350,250),(388,'Vice President (VP), General Manager',NULL,2898428,2650,1800),(389,'Vice President (VP), Information Technology (IT)',NULL,3001875,2750,1850),(390,'Vice President (VP), Operations',NULL,2928897,2650,1850),(391,'Web Designer',NULL,225429,250,150),(392,'Web Designer & Developer',NULL,268631,250,200),(393,'Web Developer',NULL,259154,250,200),(394,'.NET Software Developer / Programmer',NULL,334958,350,250),(395,'3d Artist',NULL,297865,300,200),(396,'Splunk Corporate Training',NULL,NULL,1500,1000),(397,'Big Data and Hadoop Corporate Training',NULL,NULL,1500,1000),(398,'DATA ANALYTICS',NULL,NULL,1500,1000),(399,'QlikView Training',NULL,NULL,1000,500),(400,'Project Management Training',NULL,NULL,1500,1000);
/*!40000 ALTER TABLE `taskrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasksteps`
--

DROP TABLE IF EXISTS `tasksteps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasksteps` (
  `StepId` smallint(6) NOT NULL AUTO_INCREMENT,
  `TTId` smallint(6) DEFAULT NULL,
  `StepDescr` varchar(100) DEFAULT NULL,
  `Taskrateid` smallint(6) DEFAULT NULL,
  `NoOfHrs` smallint(6) DEFAULT NULL,
  `Estimatecost` int(11) DEFAULT NULL,
  PRIMARY KEY (`StepId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasksteps`
--

LOCK TABLES `tasksteps` WRITE;
/*!40000 ALTER TABLE `tasksteps` DISABLE KEYS */;
INSERT INTO `tasksteps` VALUES (1,1,'Requirement Analysis.',234,4,NULL),(2,1,'Launch the 3 Windows instances for SQL Database servers.',353,8,NULL),(3,1,'Setup the FTP and upload the DB Backup to the AWS cloud server.',353,8,NULL),(4,1,'Create logins andprovide the appropriate privileges.',353,2,NULL),(5,1,'Set up Primary Server for DB Mirroring.',91,4,NULL),(6,1,'Set up Mirror Server for DB Mirroring.',91,4,NULL),(7,1,'Set up Witness Server for DB Mirroring.',91,2,NULL),(8,1,'Testing.',91,1,NULL);
/*!40000 ALTER TABLE `tasksteps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasksubcategory`
--

DROP TABLE IF EXISTS `tasksubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasksubcategory` (
  `TaskSubCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `SubCategoryName` varchar(70) DEFAULT NULL,
  `TaskCategoryID` smallint(6) DEFAULT NULL,
  `SkillId` smallint(6) DEFAULT NULL,
  `MinExperienceInYear` smallint(6) DEFAULT NULL,
  `TaskCharge` int(11) DEFAULT NULL,
  `HostUrl` varchar(50) DEFAULT NULL,
  `ImageUrl` varchar(100) DEFAULT NULL,
  `AdUrl` varchar(200) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL,
  `subCatImgUrl` varchar(200) DEFAULT NULL,
  `TaskDescr` varchar(1000) DEFAULT NULL,
  `TaskRate` varchar(30) DEFAULT NULL,
  `taskrateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaskSubCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasksubcategory`
--

LOCK TABLES `tasksubcategory` WRITE;
/*!40000 ALTER TABLE `tasksubcategory` DISABLE KEYS */;
INSERT INTO `tasksubcategory` VALUES (1,'Windows server Setup',1,1,3,900,NULL,NULL,NULL,'2016-08-11',0,NULL,'Freelancer will set up and access Windows 2012 Server using a remote desktop. \nYou need to provide users for whom credentials are setup so that they have permission to access the server.','Per Task',NULL),(2,'Advertisement Design',5,1,3,500,NULL,NULL,NULL,'2016-08-11',1,NULL,NULL,'Rs 200 per Advertisement',126),(3,'Windows Performance Monitoring',1,1,3,1000,NULL,NULL,NULL,'2016-08-11',0,NULL,'Freelancer will access Windows 2012 Server using a remote desktop and monitor it and imeediately report for any incidences ','Per Day',NULL),(4,'CISA Audit',2,4,5,100,NULL,NULL,NULL,'2016-08-11',1,NULL,NULL,NULL,NULL),(5,'Microsoft Audit',2,4,5,50,NULL,NULL,NULL,'2016-08-11',1,NULL,NULL,NULL,NULL),(6,'Candidates Profiles meeting certain criteria',3,3,3,10,NULL,NULL,NULL,'2016-08-11',1,NULL,NULL,'Rs 10 Per Profile',1),(7,'Web page Design',4,6,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 300 per Page',1),(8,'Wordpress Design',4,6,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(9,'Set up IIS Web Server',1,6,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(10,'Banner Ad Design',4,6,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 200 per Banner',1),(11,'Blog Design',4,6,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(12,'Prepare a company handbook to  company specifications',3,3,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 100 per article of 200 word',1),(13,'Performance Reviews',3,3,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 100 per Candidate',1),(14,'HR Operations',3,3,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(15,'HR Analytics',3,3,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(16,'Manpower planning and Budgeting',3,3,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(17,'Compensation & Benefits',3,3,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 200 per Position',NULL),(18,'Logo Design',5,3,2,100,'http://tasklance.com','/images/partner/tech-partner.png','http://techpartner.in','2016-09-25',1,NULL,NULL,'Rs 300 per Logo',126),(19,'Windows Server Backup',1,3,2,100,'http://tasklance.com','/images/partner/tech-partner.png','http://techpartner.in','2016-09-25',0,NULL,NULL,NULL,NULL),(20,'Social Media Design',4,6,2,100,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(21,'Photoshop Design',5,5,2,100,'http://tasklance.com','/images/partner/aws-team.png','http://www.teamcomputers.com','2016-09-25',1,NULL,NULL,NULL,126),(22,'CD Cover Design',5,1,2,4000,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 300 per Cover',126),(23,'Create a 3 Page Restaurent/Spa menu',5,1,2,10000,'http://tasklance.com','/images/partner/menu.jpg','','2016-09-25',1,NULL,NULL,'Rs 200 per Page',126),(24,'Log Shipping',1,1,2,3000,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(26,'Database migration - MySQl to MS SQL',1,1,2,4000,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(27,'DeadLocks',1,1,2,500,NULL,NULL,NULL,'2016-09-25',0,NULL,NULL,NULL,NULL),(28,'Travel counsellor - Tours & Travels',6,7,2,100,'http://tasklance.com','/images/partner/yatra.png','https://www.yatra.com/','2016-09-25',1,NULL,NULL,'Rs 50 Per Client',58),(29,'Tele Marketing - Make calls and fill online forms.',6,7,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 10 Per Call',58),(30,'Telemarketing(Insurance Sales)',6,4,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 100 Per Client',58),(31,'Type a X minute Audio Report and proofread it.',7,7,2,100,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 10 Per Minute',89),(32,'Create Excel sheet of all business cards from a networking event',7,7,2,0,NULL,NULL,NULL,'2016-09-25',1,NULL,NULL,'Rs 1 Per Card',89),(33,'Database Repair - Server Off Line for an SQL Database',1,1,3,3000,NULL,NULL,NULL,'2016-10-10',0,NULL,NULL,NULL,NULL),(34,'sql server install/configuration',1,1,3,500,NULL,NULL,NULL,'2016-10-10',0,NULL,NULL,NULL,NULL),(35,'Service Packs and Hotfixes',1,1,3,500,NULL,NULL,NULL,'2016-10-11',0,NULL,NULL,NULL,NULL),(36,'Preparation of Accounts',2,2,3,500,NULL,NULL,NULL,'2016-11-27',1,NULL,NULL,NULL,NULL),(37,'UI Testing',1,8,3,500,NULL,NULL,NULL,'2016-12-15',1,NULL,NULL,'Submit Task for Quote',1),(38,'Unit Testing',1,8,3,500,NULL,NULL,NULL,'2016-12-15',1,NULL,NULL,'Submit Task for Quote',1),(39,'Performance Testing',1,8,3,500,NULL,NULL,NULL,'2016-12-15',1,NULL,NULL,'Submit Task for Quote',1),(40,'Load Testing',1,8,3,500,NULL,NULL,NULL,'2016-12-15',1,NULL,NULL,'Submit Task for Quote',1),(41,'Functionality Testing',1,8,3,500,NULL,NULL,NULL,'2016-12-15',1,NULL,NULL,'Submit Task for Quote',NULL),(42,'Automation Testing - Selenium',1,8,3,500,NULL,NULL,NULL,'2016-12-15',1,NULL,NULL,'Submit Task for Quote',1),(43,'Write newsletter article',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'Rs 100 per article of 500 word',72),(44,'Splunk Corporate Training',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,396),(45,'Big Data and Hadoop',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,397),(46,'Data Analytics using R',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,398),(47,'QlikView',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,399),(48,'Project Management',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,400),(49,'.NET Software Developer',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,1),(50,'ASP.NET Developer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,23),(51,'Front End Developer / Engineer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,123),(52,'Java Software Developer / Programmer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,156),(53,'PHP Developer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,206),(54,'Senior .NET Developer / Programmer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,277),(55,'Senior Java Developer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,296),(56,'Web Developer',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,393),(57,'Android Software Developer',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,15),(58,'iOS Developer',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,154),(60,'Oracle Developer',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,204),(61,'SQL Developer',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,338),(63,'Business Analyst, Finance/Banking',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,48),(64,'Business Analyst, IT',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,49),(65,'Business Intelligence (BI) Analyst',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,54),(66,'Business Intelligence (BI) Developer',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,55),(67,'Data Analyst',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,88),(68,'Data Scientist, IT',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,90),(69,'Lead Business Analyst',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,160),(70,'Senior Business Development Manager',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,284),(71,'Senior Data Analyst',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,287),(72,'Big Data and Hadoop Corporate Training',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,397);
/*!40000 ALTER TABLE `tasksubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasktemplate`
--

DROP TABLE IF EXISTS `tasktemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasktemplate` (
  `TTId` smallint(6) DEFAULT NULL,
  `TTDescr` varchar(100) DEFAULT NULL,
  `ImageURL` varchar(100) DEFAULT NULL,
  `YouTubeURL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasktemplate`
--

LOCK TABLES `tasktemplate` WRITE;
/*!40000 ALTER TABLE `tasktemplate` DISABLE KEYS */;
INSERT INTO `tasktemplate` VALUES (1,'MS SQL mirroring on AWS',NULL,NULL);
/*!40000 ALTER TABLE `tasktemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempTaskProvider`
--

DROP TABLE IF EXISTS `tempTaskProvider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempTaskProvider` (
  `TaskProviderID` int(11) NOT NULL DEFAULT '0',
  `CompanyName` varchar(50) DEFAULT NULL,
  `WebsiteName` varchar(30) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `IsActive` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempTaskProvider`
--

LOCK TABLES `tempTaskProvider` WRITE;
/*!40000 ALTER TABLE `tempTaskProvider` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempTaskProvider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempTasker`
--

DROP TABLE IF EXISTS `tempTasker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempTasker` (
  `TaskerID` int(11) NOT NULL AUTO_INCREMENT,
  `TaskerName` varchar(100) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Skills` varchar(100) DEFAULT NULL,
  `AddedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsTasklancer` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`TaskerID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempTasker`
--

LOCK TABLES `tempTasker` WRITE;
/*!40000 ALTER TABLE `tempTasker` DISABLE KEYS */;
INSERT INTO `tempTasker` VALUES (1,'Ashwin pahade','Nagpur','B.Tech/B.E. Nagpur University 2016','7218657856','Ashwinpahade02@gmail.com','Industrial Products/Heavy Machinery','08/03/1992','Male','Machine design','2016-12-23 05:50:17',0),(2,'Ayesha gondane','Nagpur','B.B.A/ B.M.S Nagpur University 2016','7840908214','ayeshagondane@gmail.com','Accounting/Finance','08-Aug-94','Female','Finance','2016-12-27 07:35:07',0),(3,'pragati soni','Nagpur','B.B.A/ B.M.S RTM Nagpur University 2015','7385935454','psoni9338@gmail.com','Fresher','20/05/1994','Female','MS-CIT','2016-12-27 07:45:17',0),(4,'Sandip bhaurao Ambone','Nagpur','B.A Nagpur University 2014','9975321503','ambonesandip91@gmail.com','Fresher','10-Sep-1991','Male','Fresher','2016-12-27 07:58:15',0),(5,'Pranay S. Buradkar','Nagpur','Diploma Nagpur University 2015','','pranayburadkar83@gmail.com',NULL,'23-Oct-1995',NULL,NULL,'2016-12-27 08:42:59',0),(6,'Pranay S. Buradkar','Nagpur','Diploma Nagpur University 2015','','pranayburadkar83@gmail.com',NULL,'23-Oct-1995',NULL,NULL,'2016-12-27 08:47:36',0),(7,'Rajat Fating','Nagpur','Pan card form filling at No company','','rajatfating294@gmail.com',NULL,'02-Mar-1998',NULL,NULL,'2016-12-27 08:47:36',0),(8,'akshay ashok raut','Nagpur','B.Com Nagpur University 2015','','araut791@gmail.com',NULL,'07-Jan-1996',NULL,NULL,'2016-12-27 08:47:36',0),(9,'Bhagyashree Rajendra sontakke Jain','Nagpur','Diploma Nagpur University 2014','7276548051','rajendrasontakke1964@gmail.com',NULL,'03-May-1993',NULL,NULL,'2016-12-27 08:47:36',0),(10,'akanksha tikaram bokde','Nagpur','B.Tech/B.E. Nagpur University 2016','','akanksha779@gmail.com',NULL,'29-Oct-1990',NULL,NULL,'2016-12-27 08:47:36',0),(11,'Roshan Chandramani Wasnik','Nagpur','B.B.A/ B.M.S Rashtrasant Tukdoji Maharaj NagpurUniversity 2014','','roshanwasnik1992@gmail.com',NULL,'24-Dec-1992',NULL,NULL,'2016-12-27 08:47:36',0),(12,'pooja dhanraj nagpure','Nagpur','B.Pharma rashtsant tukdoji maharaj university,nagpur2016','','poojanagpure44@gmail.com',NULL,'12-May-1995',NULL,NULL,'2016-12-27 08:47:36',0),(13,'krushna bisram bhalavi','Nagpur','Diploma RTM Nagpur University 2016','','krushnabhalavi25@gmail.com',NULL,'09-May-1994',NULL,NULL,'2016-12-27 08:47:36',0),(14,'Virendra Harilal Badwaik','Nagpur','B.Tech/B.E. RTM Nagpur University 2016','9765221388','badwaikvirendra1995@gmail.com',NULL,'12-Jun-1995',NULL,NULL,'2016-12-27 08:47:36',0),(15,'Divya Pillai','Nagpur','B.Sc Nagpur University 2015','919545930212','chinkupillai10@gmail.com',NULL,'13-Dec-1989',NULL,NULL,'2016-12-27 08:47:36',0),(16,'Kavita Shrikrishna Potpite','Nagpur','B.Com Nagpur University 2016','9096149864','kpotpite123@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 08:47:36',0),(17,'Dinesh Nandanwar','Nagpur','B.B.A/ B.M.S Nagpur University 2015','919011745930','dineshnandanwar17@gmail.com',NULL,'17-Aug-1993',NULL,NULL,'2016-12-27 08:47:36',0),(18,'pallavi more','Nagpur','art teacher diploma, bachlor of fine art in painting Nagpur University 2016','','pallavimorey19@gmail.com',NULL,'19-May-1993',NULL,NULL,'2016-12-27 08:47:36',0),(19,'Yugal Govind','Nagpur','Diploma Nagpur University 2016','919021607511','yugalgovind1072@gmail.com',NULL,'16-Feb-1997',NULL,NULL,'2016-12-27 08:47:36',0),(20,'Rahul Arunraoji Shembekar','Nagpur','B.Tech/B.E. Nagpur University 2018','9850708408','rahulshembekar60@gmail.com',NULL,'24-Jul-1996',NULL,NULL,'2016-12-27 08:47:36',0),(21,'Komal Ashok Nimbalkar','Nagpur','B.Tech/B.E. Nagpur University 2015','8698217709','komalnimbalkar1991@gmail.com',NULL,'07-May-1991',NULL,NULL,'2016-12-27 08:47:36',0),(22,'Niranjan Ranade','Nagpur','Senior Graphic Designer at Vivek Ranade Graphics','919421016307','niranjanranade112@gmail.com',NULL,'27-Oct-1985',NULL,NULL,'2016-12-27 08:47:36',0),(23,'chaitanya Dhananjay kshirsagar','Nagpur','BCA Nagpur University 2016','9881363747','chaitanya82377@gmail.com',NULL,'04-Jun-1997',NULL,NULL,'2016-12-27 08:47:36',0),(24,'Shubham kalmkar','Nagpur','Diploma Nagpur University 2016','9096147251','skkalmkar55@gmail.com',NULL,'26-Aug-1996',NULL,NULL,'2016-12-27 08:47:36',0),(25,'priya prabhakar yelane','Nagpur','B.Tech/B.E. RTMNU NAGPUR UNIVERSITY 2016','9172694870','priyayelne3@gmail.com',NULL,'17-Jul-1994',NULL,NULL,'2016-12-27 08:47:36',0),(26,'Priyanka Yadav','Nagpur','B.Tech/B.E. Nagpur University 2017','8956175102','ypriyankyadav2@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 08:47:36',0),(27,'Budeshawari anil yadav','Nagpur','B.Com Nagpur University 2014','8956633929','sapnayadav2911@gmail.com',NULL,'29-Feb-1988',NULL,NULL,'2016-12-27 08:47:36',0),(28,'Aarti navnath karale','Mumbai','B.Com Mumbai University 2016','7208306218','aartikarale123@gmail.com',NULL,'07-May-1996',NULL,NULL,'2016-12-27 08:57:57',0),(29,'Abhishek Suvarna','Mumbai','BACHELOR OF MANAGEMENT STUDIES University of Mumbai. 2016','8149846707','abhishek.abhishek.suvarna@gmail.com',NULL,'14-Sep-1995',NULL,NULL,'2016-12-27 08:57:57',0),(30,'Geeta Subhash Sawant','Mumbai','B.Com Mumbai University 2016','919870191770','sawantgeeta996@gmail.com',NULL,'08-Aug-1978',NULL,NULL,'2016-12-27 08:57:57',0),(31,'Komal Nalawade','Mumbai','MBA/PGDM BHARTI VIDYAPTH INSTITUTE OF MANAGEMENT AND RESEARCH 2017','919987552654','komu9987@gmail.com',NULL,'05-Nov-1992',NULL,NULL,'2016-12-27 08:57:57',0),(32,'Azaruddin','Mumbai','Diploma Mumbai University 2016','9763020298','ajjushaikh0896@gmail.com',NULL,'30-Aug-1996',NULL,NULL,'2016-12-27 08:57:57',0),(33,'SUNIL POLAMPELLI','Mumbai','B.Com Mumbai University 2016','919619071101','sunilpolampelli@gmail.com',NULL,'04-Apr-1996',NULL,NULL,'2016-12-27 08:57:57',0),(34,'Rohit Vishwakarma','Mumbai','Bachelor of Management Studies Mumbai University 2015','918879498426','rohitvishwakarma0501@gmail.com',NULL,'05-Jan-1994',NULL,NULL,'2016-12-27 08:57:57',0),(35,'Kushal Deepak Kamble','Mumbai','B.A mumbai hindi open university 2013','9821804805','kushal.kamble29@gmail.com',NULL,'29-Oct-1993',NULL,NULL,'2016-12-27 08:57:57',0),(36,'Joel Abreo','Mumbai','Diploma Mumbai University 2016','9619377032','joel.a649@gmail.com',NULL,'02-Sep-1993',NULL,NULL,'2016-12-27 08:57:57',0),(37,'Shweta Vijay Karlekar','Mumbai','B.Sc Mumbai University 2016','','shwetakarlekar77@gmail.com',NULL,'07-Feb-1995',NULL,NULL,'2016-12-27 08:57:57',0),(38,'Patil Priyanka Namdev','Mumbai','M.Sc Mumbai University 2016','8080197421','Patilpriyanka1510@gmail.com',NULL,'15-Oct-1992',NULL,NULL,'2016-12-27 08:57:57',0),(39,'Shilpa Sarvothama Shetty','Mumbai','BCA Mumbai University 2016','9967761541','shilpashetty9516@gmail.com',NULL,'16-Sep-1995',NULL,NULL,'2016-12-27 08:57:57',0),(40,'kamlakar Sakharam Bandekar','Mumbai','BMM Mumbai University 2016','9869795658','kamlakarbandekar1996@gmail.com',NULL,'31-Jan-1996',NULL,NULL,'2016-12-27 08:57:57',0),(41,'SANJANA GURAV','Mumbai','COMPUTER ENGNIEER Mumbai University 2016','9594549938','sanjanagurav45@gmail.com',NULL,'06-Nov-1995',NULL,NULL,'2016-12-27 08:57:57',0),(42,'Omkar Uday Sawant','Mumbai','B.Com Mumbai University 2016','9769541615','sawantomkar479@gmail.com',NULL,'19-Apr-1993',NULL,NULL,'2016-12-27 08:57:57',0),(43,'pankaj arun dabade','Mumbai','B.Com Mumbai University 2007','9762949963','arundabade@gmail.com',NULL,'05-Dec-1986',NULL,NULL,'2016-12-27 08:57:57',0),(44,'Akshay Gundaji Darekar','Mumbai','B.Com Mumbai University 2015','','akshay.darekar197@gmail.com',NULL,'29-Sep-1994',NULL,NULL,'2016-12-27 08:57:57',0),(45,'Bablu Bholenath Sonke','Mumbai','Ms Office, DTP, Typing Mumbai University 2013','919930173608','bablu.sonke@gmail.com',NULL,'13-Dec-1995',NULL,NULL,'2016-12-27 08:57:57',0),(46,'chandrika gautam','Mumbai','B.Sc Mumbai University 2016','8898100714','chandrikagautam8286552803@gmail.com',NULL,'31-Oct-1993',NULL,NULL,'2016-12-27 09:16:08',0),(47,'Chauhan Jayesh premchand','Mumbai','B.B.A/ B.M.S Mumbai University 2016','7709375998','chauhanjstar1998@gmail.com',NULL,'30-Jul-1998',NULL,NULL,'2016-12-27 09:16:08',0),(48,'Jyoti Sandeep Ojha','Mumbai','B.Com University of Mumbai 2015','8655499519','ojhapriya23@gmail.com',NULL,'01-Jan-1994',NULL,NULL,'2016-12-27 09:16:08',0),(49,'Sushal Dhondu Barve','Mumbai','Diploma Mumbai University 2016','','barvesushal@gmail.com',NULL,'08-Sep-1993',NULL,NULL,'2016-12-27 09:16:08',0),(50,'Santosh nathe','Mumbai','M.A Mumbai University 2016','9145565710','santoshnathe09@gmail.com',NULL,'12-Jun-1994',NULL,NULL,'2016-12-27 09:16:08',0),(51,'Ankit Manoj Rajput','Mumbai','B.Com Mumbai University 2009','9820688695','ankyth@icloud.com',NULL,'12-Mar-1989',NULL,NULL,'2016-12-27 09:16:08',0),(52,'Gautam vishwakarma','Mumbai','B.Com Mumbai University 2016','9870288721','gautamvishwakarma45@gmail.com',NULL,'03-Mar-1993',NULL,NULL,'2016-12-27 09:16:08',0),(53,'maznali palekar','Mumbai','B.Com Mumbai University 2016','8898654824','mannupalekar@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:16:08',0),(54,'Yuvraj yallappa yadav','Mumbai','B.Com Mumbai University 2016','9833228446','Yadavyuvaraj321@gmail.com',NULL,'24-Aug-1991',NULL,NULL,'2016-12-27 09:16:08',0),(55,'AKSHAY GOSAVI','Mumbai','BMS Mumbai University 2016','','akshaygosavi25@gmail.com',NULL,'23-Jun-1995',NULL,NULL,'2016-12-27 09:16:08',0),(56,'ASHISH PRAKASH SATPUTE','Mumbai','MBA/PGDM Mumbai University 2018','9920521469','ashishsatpute24@gmail.com',NULL,'28-Jul-1993',NULL,NULL,'2016-12-27 09:16:08',0),(57,'Maithili Gaikwad','Mumbai','B.B.A/ B.M.S Mumbai University 2016','9167430421','maithili32gaikwad@gmail.com',NULL,'06-Jun-1995',NULL,NULL,'2016-12-27 09:16:08',0),(58,'Siddhesh suresh sakpal','Mumbai','B.Sc Mumbai University 2015','9673036899','sakpals341@gmail.com',NULL,'12-Oct-1994',NULL,NULL,'2016-12-27 09:16:08',0),(59,'vaibhav keru more','Mumbai','B.Com Mumbai University 2016','9773283501','vaibhavkmore143@gmail.com',NULL,'08-Feb-1995',NULL,NULL,'2016-12-27 09:16:08',0),(60,'swapnil Bhaskar Bhavarthe','Mumbai','B.Com Mumbai University 2014','','swapnbhavarthe10@gmail.com',NULL,'01-May-1991',NULL,NULL,'2016-12-27 09:16:08',0),(61,'VAIBHAV THAKKAR','Mumbai','Other Arena Multimedia 2016','9892590980','vaibhav10788@gmail.com',NULL,'10-Jul-1988',NULL,NULL,'2016-12-27 09:16:08',0),(62,'venktesh perumal','Mumbai','B.Sc Mumbai University 2016','8419902077','venky28494@gmail.com',NULL,'28-Apr-1994',NULL,NULL,'2016-12-27 09:16:08',0),(63,'Mahesh Vijay Patil','Mumbai','B.Tech/B.E. Mumbai University 2015','9209195941','maheshpatil2003@gmail.com',NULL,'20-Mar-1993',NULL,NULL,'2016-12-27 09:16:08',0),(64,'prashant ramesh shinde','Mumbai','B.Tech/B.E. Mumbai University 2016','8898894828','dr.pras147@gmail.com',NULL,'25-Feb-1994',NULL,NULL,'2016-12-27 09:16:08',0),(65,'Rupali Goraksh Padval','Mumbai','B.Tech/B.E. Mumbai University 2015','9821476614','rupalipadval1@gmail.com',NULL,'23-May-1993',NULL,NULL,'2016-12-27 09:16:08',0),(66,'GAURI DEVENDRA PALSAMKAR','Mumbai','B.Com Mumbai University 2015','9004654337','gauripalsamkar1994@gmail.com',NULL,'17-Sep-1994',NULL,NULL,'2016-12-27 09:16:09',0),(67,'Bhavesh Laxman Mhatre','Mumbai','B.Sc Mumbai University 2015','','bhaveshmhatre9930@gmail.com',NULL,'23-Sep-1993',NULL,NULL,'2016-12-27 09:16:09',0),(68,'Pooja Pandurang Katkar','Mumbai','Other','9920881404','aditikatkar55@gmail.com',NULL,'10-Jun-1992',NULL,NULL,'2016-12-27 09:16:09',0),(69,'Yogesh Maruti Dalvi','Mumbai','B.Sc Mumbai University 2015','','yogesh.dalvi68@gmail.com',NULL,'30-Jun-1994',NULL,NULL,'2016-12-27 09:16:09',0),(70,'Dinesh Jaiswar','Mumbai','B.Sc Mumbai University 2006','9833957287','dinesh84kapu@gmail.com',NULL,'13-May-1983',NULL,NULL,'2016-12-27 09:16:09',0),(71,'priyanka','Mumbai','MBA DR DY Patil 2015','8652099862','priyaharish1302@gmail.com',NULL,'13-Feb-1992',NULL,NULL,'2016-12-27 09:16:09',0),(72,'Pawar Anurag Trimbak','Mumbai','Diploma Mumbai University 2013','','anuragpawar92@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(73,'manoj naydu','Mumbai','iti m.m.c.p Mumbai University 2012','7045136969','manojnaydu0385@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(74,'sanjay','Mumbai','B.Com Mumbai University 2016','8652403235','kavithiyasanjay@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(75,'Omkar anil Mistry','Mumbai','B.Tech/B.E. Mumbai University 2016','9833072617','omkarmistr@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(76,'namrata pandey','Mumbai','B.Sc Mumbai University 2016','8586154250','namrata1994pandey@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(77,'Amisha Patel','Mumbai','B.Com Mumbai University 2011','9004059264','patel.amisha88@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(78,'Neha Gupta','Mumbai','B.Com Mumbai University 2015','9773333889','00nehag@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(79,'sameer raval','Mumbai','bachlor of banking and insurance Mumbai University 2015','8898693837','sameerravalsmart@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(80,'dharmendra kumar yadav','Mumbai','M.Pharma National institute of pharmaceutical education and research (NIPER) mohali chandigarh 2014','9029446544','dharmendra.niper12@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(81,'Ravikant Suresh Rewale','Mumbai','B.Sc Mumbai University 2015','','rewaleravikant8275@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(82,'sagar narendra sarmalkar','Mumbai','B.Com Mumbai University 2012','8082495457','sagarbha.ss@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:30',0),(83,'SIDDHESH PATIL','Mumbai','Bachelor in Accounting and Finance Mumbai University 2015','9702737207','siddheshpatil28@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(84,'jagdish pathare','Mumbai','TYB.com Mumbai University 2015','8286851123','jackl8082@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(85,'Akanksha Subhash Ghadigavkar','Mumbai','BMS Mumbai University 2014','9665314498','akankshaghadi77@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(86,'Tamboli Munna','Mumbai','B.Com Mumbai University 2015','','munnatamboli5@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(87,'prashant ramesh shinde','Mumbai','B.Tech/B.E. Mumbai University 2016','click to copy','dr.pras147@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(88,'Priyanka shriram kadam','Mumbai','B.Com Kalina university of santacruz mumbai 2016','9768361470','Kpriyanka2302@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(89,'Nikita Narkhede','Mumbai','Diploma University of Mumbai, Mumbai 2015','click to copy','nikitanarkhede95@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(90,'SANJANA GURAV','Mumbai','COMPUTER ENGNIEER Mumbai University 2016','click to copy','sanjanagurav45@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(91,'Adesh Nathuram Chorghe','Mumbai','B.Com Mumbai University 2016','9225242743','chorgheadesh@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(92,'kamlakar Sakharam Bandekar','Mumbai','BMM Mumbai University 2016','9869795658','kamlakarbandekar1996@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2016-12-27 09:25:31',0),(93,'Swarnim Malik','Mumbai','','919899873569 (M)','swarnim.malik@gmail.com',NULL,'07-Aug-1992',NULL,NULL,'2017-01-11 07:23:24',0),(94,'Neha Nivrutti Aher','Mumbai','','9167765633 (M)','neharpatil2948@gmail.com',NULL,'01-Apr-1988',NULL,NULL,'2017-01-11 07:23:24',0),(95,'Jyotsana Tripathi','Mumbai','','8767315110 (M)','tripathij36@gmail.com',NULL,'09-Jan-1989',NULL,NULL,'2017-01-11 07:23:24',0),(96,'Dr Shikha Sethi','Mumbai','','9769182446 (M)','drsethishikha@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2017-01-11 07:23:24',0),(97,'madhuri ravindra khandaskar','Mumbai','','9545975284 (M)','chavanmadhuri124@gmail.com',NULL,'00-Jan-1900',NULL,NULL,'2017-01-11 07:23:24',0),(98,'SUMITRA JANKIDAS MULE ','Mumbai','','8108445212 (M)+1 More','sumitramule6@gmail.com',NULL,'06-Sep-1990',NULL,NULL,'2017-01-11 07:23:24',0),(99,'Maxwell Victor Fargose','Mumbai','B.Com Mumbai University 2016','9730655704','montyfargose@gmail.com',NULL,'19-Mar-1995',NULL,'finance','2017-01-12 08:40:55',0),(100,'Nisha Mathiyalagan','Mumbai','BAF Mumbai University 2016','8268307088 +1 More','nishamathiyalagan41@gmail.com',NULL,'15-Jan-1994',NULL,'back office,banking,data entry','2017-01-12 08:40:55',0),(101,'Chinmay gaikwad','Mumbai','PG Diploma Mumbai University 2016','9503977803','Cgaikwad81@gmail.com',NULL,'12-Dec-1994',NULL,'AutoCAD','2017-01-12 08:40:55',0),(102,'Sanjay Gorivale','Mumbai','B.Tech/B.E. Mumbai University 2016','8898326620','sanjay.gorivale72@gmail.com',NULL,'02-Jun-1993',NULL,'software engineering  IT Skills ','2017-01-12 08:40:55',0),(103,'abhishek sitaram rewale','Mumbai','Bsc .IT Mumbai University 2016','7875474652','abhirewale1221@gmail.com',NULL,'25-Dec-1995',NULL,'software engineering  IT Skills ','2017-01-12 08:40:55',0),(104,'Mangal Himachal singh','Mumbai','Diploma Mumbai University 2016','7039454816','mangalsingh594017@gmail.com',NULL,'08-May-1988',NULL,'Diploma in fire and safety with practical training','2017-01-12 08:40:55',0),(105,'ASHISH PRAKASH SATPUTE','Mumbai','MBA/PGDM Mumbai University 2018','9920521469','ashishsatpute24@gmail.com',NULL,'28-Jul-1993',NULL,'mba hr fresher  IT Skills Details','2017-01-12 08:40:55',0),(106,'Maithili Gaikwad','Mumbai','B.B.A/ B.M.S Mumbai University 2016','9167430421','',NULL,'06-Jun-1995',NULL,'software engineering  IT Skills ','2017-01-12 08:40:55',0),(107,'Mitesh Pawar','Mumbai','Under Graduate BMS Mumbai University 2016','8692050419','miteshpawar23@gmail.com',NULL,'23-Dec-1994',NULL,'software engineering  IT Skills ','2017-01-12 08:40:55',0),(108,'pooja choutapelli devanand','Mumbai','B.Sc Mumbai University 2016','8793045756','chpooja567@gmail.com',NULL,'30-Jul-1994',NULL,'software engineering  IT Skills ','2017-01-12 08:40:55',0);
/*!40000 ALTER TABLE `tempTasker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempemployees`
--

DROP TABLE IF EXISTS `tempemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempemployees` (
  `TaskerID` int(11) NOT NULL DEFAULT '0',
  `TaskerName` varchar(100) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(50) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Skills` varchar(100) DEFAULT NULL,
  `AddedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `IsTasklancer` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempemployees`
--

LOCK TABLES `tempemployees` WRITE;
/*!40000 ALTER TABLE `tempemployees` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tasklance'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddTaskerSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `AddTaskerSkills`(
	v_TaskerID int ,
	v_TaskSubCategoryID int 
)
BEGIN
	
		INSERT into taskerskill(TaskerID, TaskSubCategoryID)
		VALUES(v_TaskerID,v_TaskSubCategoryID);

		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_city` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_city`(
	p_city_name varchar(50),
	out p_city_id int 
)
BEGIN
	declare v_city_id int DEFAULT 0;

	select cityid into v_city_id from city where city_name = p_city_name;

	if v_city_id > 0 THEN
		set p_city_id = v_city_id;
	ELSE
		insert into city(city_name)
		values(p_city_name);

		set p_city_id = last_insert_id();
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_donor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_donor`(
	p_email varchar(20), 
	p_name varchar(20), 
	p_mobile varchar(12), 
	p_address varchar(500)
	
)
BEGIN
	
		INSERT into donor(ProfileName,EmailID, Phone, address,CreatedOn)
		           VALUES(p_name,p_email,p_mobile,p_address,now());

		

		

		
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_task` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_task`(
	p_task_title varchar(300),
	p_sub_cat_id int, 
	p_task_provider_id int,
	p_task_desc varchar(2000), 
	p_eta varchar(30), 
	p_budget varchar(30)
)
BEGIN
	declare project_id int DEFAULT 0;

	insert into projects(ProjectTitle, TaskSubCategoryID,TaskProviderID,ProjectDescription,IsActive,
	CreatedOn,ETA,budget)
	Values(p_task_title,p_sub_cat_id,p_task_provider_id,p_task_desc,1,now(),p_eta,p_budget);

	set project_id = last_insert_id();

	insert into projectdetails(projectID, projectStatusID,IsActive)
	values(project_id,1,1);

	select project_id as project_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_tasker` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_tasker`(
	p_email varchar(50), 
	p_name varchar(30), 
	p_mobile varchar(12), 
	p_disabiltyId int,
	p_percentage int, 
	p_DOB DATETIME, 
	p_city varchar(20), 
	p_address varchar(500),
	p_nationality varchar(20),
	p_aadharNo varchar(50),
	p_qualification varchar(100),
	p_experience varchar(20),
	p_disability varchar(50),
	p_categoryId int, 
	p_subCategoryId int
)
BEGIN
	DECLARE v_count int default 0;
    DECLARE v_TaskerID int;

	select count(*) into v_count from tasker where Phone = p_mobile;

	if v_count > 0 THEN
		select 0 as IsRegistered;
	else
		INSERT into tasker(EmailID, Phone, CreatedOn,IsActive, TaskSubCategoryID, 
                           TaskCategoryID)
		VALUES(p_email,p_mobile,now(),1,p_subCategoryId,p_categoryId);

        Set v_TaskerID=last_insert_id();

        INSERT into taskerskill(TaskerID, TaskSubCategoryID)
		VALUES(v_TaskerID,p_subCategoryId);

		call add_city(p_city,@cityId);

		INSERT INTO TaskerProfile(TaskerID,ProfileName,TotalExperience,
			Education,IsActive,DisabilityType,DisabilityPercentage,
			date_of_birth,city_id,address,aadharNo,qualification,disability_cert_no)
		VALUES(v_TaskerID,p_name,p_experience,p_qualification,1,p_disabiltyId,
			p_percentage,p_DOB,@cityId,p_address,p_aadharNo,p_qualification,
            p_disability);

		select 1 as IsRegistered;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_task_provider` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `add_task_provider`(
	p_email_id varchar(100),
	p_company_name varchar(100)
)
BEGIN
	declare v_task_provider_id int DEFAULT 0;

	select TaskProviderID into v_task_provider_id from taskprovider where EmailID = p_email_id;

	if v_task_provider_id > 0 THEN
		select v_task_provider_id as task_provider_id;
	ELSE
		insert into taskprovider(EmailID, CompanyName, CreatedOn, IsActive)
		values(p_email_id, p_company_name, now(), 1);

		select last_insert_id() as task_provider_id;
	end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRecentTasks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetRecentTasks`()
BEGIN
	select pc.projectid,pc.projecttitle,t.taskerId,
           pc.Projecttitle
	from tasker as t
	-- join TaskerProfile as tp on t.taskerid=tp.taskerid
	join projects as pc on pc.tasksubcategoryid=t.tasksubcategoryid
    join projectdetails as pd on  pd.projectid=pc.projectid
	where pd.projectstatusid=4  -- Completed
	order by pc.projectid desc
    limit 3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRecommendedTaskers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetRecommendedTaskers`(
	subcatid int
)
BEGIN
	declare varprojectid int DEFAULT 0;

	select ProjectID into varprojectid from projects 
	where TaskSubCategoryID = subcatid
	order by projectid desc limit 1;
	
	select pc.projectid,pc.projecttitle,t.taskerId,t.lastlogindate,
           ifnull(p.Projecttitle,'Fresher') LastProject, tp.ProfileName
	from tasker as t
	join TaskerProfile as tp on t.taskerid=tp.taskerid
	join projects as pc on pc.tasksubcategoryid=t.tasksubcategoryid
	-- join tasksubcategory as ts on ts.taskcategoryid=t.TaskCategoryID
	left join projectdetails as pd on pd.taskerid=tp.taskerid and pd.projectid=tp.LastProjectId
	left join projects as p on pd.projectid=p.projectid
	where pc.projectid=varprojectid;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTaskCategoryAndSubCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetTaskCategoryAndSubCategory`(CategoryId INT)
BEGIN
select 
    TaskSubCategoryID, SubCategoryName
from
    tasksubcategory as ts
        join
    taskcategory as t ON t.TaskCategoryID = ts.TaskCategoryID
where
    IsActive = 1
        AND TaskCategoryID = CategoryId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gettaskers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `gettaskers`(
	
)
BEGIN
	

	select t.TaskerID as TaskerID,
    CategoryName as TaskCategory ,SubCategoryName as SubCategory,Education, 
    DATE_FORMAT(date_of_birth, '%d/%m/%Y')as date_of_birth
	from tasker as t
	join TaskerProfile as tp on t.taskerid=tp.taskerid
	-- join projects as pc on pc.tasksubcategoryid=t.tasksubcategoryid
	join tasksubcategory as ts on ts.taskcategoryid=t.TaskCategoryID
    join taskcategory as tc on tc.TaskCategoryID=ts.TaskCategoryID
	;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gettasklancers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `gettasklancers`()
BEGIN

select *
from tempTasker
order by taskerid desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTaskProviderData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `GetTaskProviderData`(vartaskproviderid int)
BEGIN
	select pc.taskproviderid,
	   ps.projectstatus,
	   count(pc.projectid) as Projects
	from taskprovider as t
	-- join TaskerProfile as tp on t.taskerid=tp.taskerid
	join projects as pc on pc.taskproviderid=t.taskproviderid
    join projectdetails as pd on  pd.projectid=pc.projectid
    join projectstatuses as ps on ps.projectstatusid =pd.projectstatusid
	where t.taskproviderid=vartaskproviderid
    group by pc.taskproviderid,ps.projectstatus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_city` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_city`(
	
)
BEGIN
	

	select * from   city ;

	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_disability_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_disability_type`()
BEGIN
	select * from disabilitytype where IsActive=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_skills`()
BEGIN
	select * from skills where IsActive=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_tasker_project_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_tasker_project_detail`(
	p_tasker_id int,
	p_project_id int
)
BEGIN
insert into tasker_project_mapping(tasker_id, project_id,is_active,createon,taskerresponse)
values(p_tasker_id,p_project_id,is_active,now(),0);

select 
    tp.ProfileName as taskerName, t.EmailID as taskeremail
from
    tasker t
        inner join
    TaskerProfile tp ON t.taskerid = tp.taskerid
where
    t.taskerid = p_tasker_id;


select 
    ifnull(tp.Phone, tp.EmailID) as taskProviderMobile,
    p.budget as taskRate,
    p.ProjectDescription as taskDesc,
	tp.EmailID,
    tsc.SubCategoryName,
    tc.CategoryName,
    tp.Companyname
from
    projects p
        inner join
    taskprovider tp ON tp.TaskProviderID = p.TaskProviderID
        inner join
    tasksubcategory tsc ON p.TaskSubCategoryID = tsc.TaskSubCategoryID
inner join
    taskcategory tc ON tc.TaskCategoryID = tsc.TaskCategoryID
where
    p.ProjectID = p_project_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_task_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_task_category`(
p_is_active VARCHAR(10)
)
BEGIN
	select * from taskcategory where find_in_set(isactive,p_is_active);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_task_rate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_task_rate`(
	p_subcat_id int
)
BEGIN

Declare varDaily float DEFAULT 6.4; -- (8*0.8) 8 Hours and 20% discount
Declare varWeekly float DEFAULT 28.0; -- (5*8*0.7) % Days in week 8 Hours and 30% discount
Declare varMonthly float DEFAULT 105.6; -- (22*8*0.6) 22 days and 40% discount


/*
	select tasksubcategoryid,taskrate,
CONCAT(ifnull(HostUrl,''),ifnull(ImageUrl,'')) AS ImageUrl,AdUrl from tasksubcategory 
    where IsActive =1 and tasksubcategoryid = p_subcat_id;

*/

select tasksubcategoryid,
       tr.EntryLevel as taskrate,
       CEIL(tr.EntryLevel*varDaily) as Dailyrate,
       CEIL(tr.EntryLevel*varWeekly) as Weeklyrate,
       CEIL(tr.EntryLevel*varMonthly) as Monthlyrate,
       CONCAT(ifnull(HostUrl,''),ifnull(ImageUrl,'')) AS ImageUrl,
       AdUrl 
from tasksubcategory as ts 
join taskrates as tr on ts.taskrateid=tr.taskrateid
where IsActive =1 
and tasksubcategoryid = p_subcat_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_task_sub_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_task_sub_category`(
CategoryId INT,
p_is_active VARCHAR(10)
)
BEGIN
	
	select TaskSubCategoryID, SubCategoryName
from tasksubcategory 
where TaskCategoryID = CategoryId and find_in_set(isactive,p_is_active);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `potentialtaskers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `potentialtaskers`()
BEGIN

select *
from tempTasker
order by taskerid desc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_tasker_response` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `save_tasker_response`(
	p_tasker_id int,
	p_project_id int
)
BEGIN
	declare tasker_response_count int default 0;
	select 
		count(*)
	into tasker_response_count from
		tasker_project_mapping
	where
		tasker_id = p_tasker_id
			and project_id = p_project_id
			and taskerresponse = 1;

	if tasker_response_count >= 3 then
		update tasker_project_mapping 
		set 
			taskerresponse = 1,
			responsedate = now()
		where
			tasker_id = p_tasker_id
				and project_id = p_project_id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowRecommendedTaskers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ShowRecommendedTaskers`(
	varprojectid int
)
BEGIN
	
	select 
		pc.projectid,
		pc.projecttitle,
		t.taskerId,
		t.lastlogindate,
		ifnull(p.Projecttitle, 'Fresher') LastProject,
		tp.ProfileName
	from
		tasker as t
			join
		TaskerProfile as tp ON t.taskerid = tp.taskerid
			join
		projects as pc ON pc.tasksubcategoryid = t.tasksubcategoryid
			left join
		projectdetails as pd ON pd.taskerid = tp.taskerid
			and pd.projectid = tp.LastProjectId
			left join
		projects as p ON pd.projectid = p.projectid
	where
		pc.projectid = varprojectid;

	select 
		SubCategoryName
	from
		tasksubcategory
	where
		tasksubcategoryid = (select 
				TaskSubCategoryID
			from
				projects
			where
				projectid = varprojectid);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-07  7:45:48
