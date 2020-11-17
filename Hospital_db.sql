-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Hospital_manage_db
-- ------------------------------------------------------
-- Server version	10.3.24-MariaDB-2
/*
    Group1
    Group_members:  E/17/154
                    E/17/207
                    E/17/251
                    

*/
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
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Appointment` (
  `Appointment_ID` varchar(5) NOT NULL,
  `Patient_ID` varchar(5) DEFAULT NULL,
  `Doctor_ID` varchar(5) DEFAULT NULL,
  `Dept_ID` varchar(5) DEFAULT NULL,
  `Conult_time` time DEFAULT NULL,
  PRIMARY KEY (`Appointment_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Dept_ID` (`Dept_ID`),
  CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`Doctor_ID`) ON DELETE SET NULL,
  CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`Dept_ID`) REFERENCES `Department` (`Department_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES ('AP1','P0001','D1000','DP001','08:00:00'),('AP10','P0010','D1009','DP005','10:15:00'),('AP11','P0011','D1010','DP001','10:30:00'),('AP12','P0012','D1011','DP002','10:45:00'),('AP13','P0013','D1012','DP003','11:00:00'),('AP14','P0014','D1013','DP004','11:15:00'),('AP15','P0015','D1014','DP005','11:30:00'),('AP16','P0016','D1015','DP001','11:45:00'),('AP17','P0017','D1016','DP002','12:00:00'),('AP18','P0018','D1017','DP003','12:15:00'),('AP19','P0019','D1018','DP004','12:30:00'),('AP2','P0002','D1001','DP002','08:15:00'),('AP20','P0020','D1019','DP005','12:45:00'),('AP21','P0021','D1020','DP001','13:00:00'),('AP22','P0022','D1021','DP002','13:15:00'),('AP23','P0023','D1022','DP003','13:30:00'),('AP24','P0024','D1023','DP004','13:45:00'),('AP25','P0025','D1024','DP005','14:00:00'),('AP26','P0026','D1025','DP001','14:15:00'),('AP27','P0027','D1000','DP002','14:30:00'),('AP28','P0028','D1002','DP003','14:45:00'),('AP29','P0029','D1003','DP004','15:45:00'),('AP3','P0003','D1002','DP003','08:30:00'),('AP4','P0004','D1003','DP004','08:45:00'),('AP5','P0005','D1004','DP005','09:00:00'),('AP6','P0006','D1005','DP001','09:15:00'),('AP7','P0007','D1006','DP002','09:30:00'),('AP8','P0008','D1007','DP003','09:45:00'),('AP9','P0009','D1008','DP004','10:00:00');
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bill`
--

DROP TABLE IF EXISTS `Bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bill` (
  `Bill_No` varchar(5) NOT NULL,
  `Patient_ID` varchar(5) DEFAULT NULL,
  `Report_ID` varchar(5) DEFAULT NULL,
  `Doctor_Charge` decimal(10,0) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Hospital_Fee` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Bill_No`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Report_ID` (`Report_ID`),
  CONSTRAINT `Bill_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`Patient_ID`) ON DELETE SET NULL,
  CONSTRAINT `Bill_ibfk_2` FOREIGN KEY (`Report_ID`) REFERENCES `Report` (`Report_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bill`
--

LOCK TABLES `Bill` WRITE;
/*!40000 ALTER TABLE `Bill` DISABLE KEYS */;
INSERT INTO `Bill` VALUES ('B1','P0001','R1',20000,5,10000),('B10','P0010','R10',20500,4,51122),('B11','P0011','R11',20000,14,10000),('B12','P0012','R12',20500,12,12000),('B13','P0013','R13',20000,5,31000),('B14','P0014','R14',20500,1,13000),('B15','P0015','R15',20000,2,51122),('B16','P0016','R16',20500,4,10000),('B17','P0017','R17',20000,14,12000),('B18','P0018','R18',20500,12,31000),('B19','P0019','R19',20000,5,13000),('B2','P0002','R2',20500,1,12000),('B20','P0020','R20',20500,1,51122),('B21','P0021','R21',20000,2,10000),('B22','P0022','R22',20500,4,12000),('B23','P0023','R23',20000,14,31000),('B24','P0024','R24',20500,12,13000),('B25','P0025','R25',20000,5,51122),('B26','P0026','R26',20500,1,10000),('B27','P0027','R27',20000,2,12000),('B28','P0028','R28',20500,4,31000),('B29','P0029','R29',20000,14,13000),('B3','P0003','R3',20000,2,31000),('B30','P0001','R30',20500,12,51122),('B31','P0002','R31',20000,5,10000),('B32','P0003','R32',20500,1,12000),('B33','P0004','R33',20000,2,31000),('B34','P0005','R34',20500,4,13000),('B35','P0006','R35',20000,14,51122),('B36','P0007','R36',20500,12,10000),('B37','P0008','R37',20000,5,12000),('B38','P0009','R38',20500,1,31000),('B39','P0010','R39',20000,2,13000),('B4','P0004','R4',20500,4,13000),('B5','P0005','R5',20000,14,51122),('B6','P0006','R6',20500,12,10000),('B7','P0007','R7',20000,5,12000),('B8','P0008','R8',20500,1,31000),('B9','P0009','R9',20000,2,13000);
/*!40000 ALTER TABLE `Bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cleaning`
--

DROP TABLE IF EXISTS `Cleaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cleaning` (
  `Employee_ID` varchar(5) DEFAULT NULL,
  `Department_ID` varchar(5) DEFAULT NULL,
  `Shift` time DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  KEY `Department_ID` (`Department_ID`),
  CONSTRAINT `Cleaning_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`) ON DELETE SET NULL,
  CONSTRAINT `Cleaning_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cleaning`
--

LOCK TABLES `Cleaning` WRITE;
/*!40000 ALTER TABLE `Cleaning` DISABLE KEYS */;
INSERT INTO `Cleaning` VALUES ('C0001','DP005','08:00:00'),('C0002','DP001','08:15:00'),('C0003','DP002','08:30:00'),('C0004','DP003','08:45:00'),('C0005','DP004','09:00:00'),('C0006','DP005','09:15:00'),('C0007','DP001','09:30:00'),('C0008','DP002','09:45:00'),('C0009','DP003','10:00:00'),('C0010','DP004','10:15:00'),('C0001','DP005','10:30:00'),('C0002','DP001','10:45:00'),('C0003','DP002','11:00:00'),('C0004','DP003','11:15:00'),('C0005','DP004','11:30:00'),('C0006','DP005','11:45:00'),('C0007','DP001','12:00:00'),('C0008','DP002','12:15:00'),('C0009','DP003','12:30:00'),('C0010','DP004','12:45:00'),('C0001','DP005','13:00:00'),('C0002','DP001','13:15:00'),('C0003','DP002','13:30:00'),('C0004','DP003','13:45:00'),('C0005','DP004','14:00:00'),('C0006','DP005','14:15:00'),('C0007','DP001','14:30:00'),('C0008','DP002','14:45:00'),('C0009','DP003','15:00:00'),('C0010','DP004','15:15:00'),('C0001','DP005','15:30:00'),('C0002','DP001','15:45:00'),('C0003','DP002','16:00:00'),('C0004','DP003','16:15:00'),('C0005','DP004','16:30:00');
/*!40000 ALTER TABLE `Cleaning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `Department_ID` varchar(5) NOT NULL,
  `Dept_Name` varchar(200) NOT NULL,
  `Phone_No` char(10) DEFAULT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES ('DP001','Outpatient Department(OPD)','0812569874'),('DP002','Inpatient Service Department','0812569873'),('DP003','Cardiology Department','0812569875'),('DP004','Nutrition and Dietetics Department','0812569876'),('DP005','Department of Occupational Theraphy','0812569877');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `Doctor_ID` varchar(5) NOT NULL,
  `Doctor_NIC` varchar(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Phone_No` varchar(10) DEFAULT NULL,
  `Specialization` char(50) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`,`Doctor_NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES ('D1000','812345670v','Sunil Silva','M','771234567','Audiologist \r'),('D1001','812345671v','Kapila Kalhara','M','771234581','Allergist \r'),('D1002','812345672v','Alwis Alahakoon','M','771234568','Andrologists \r'),('D1003','812345673v','Gamindu Gamage','M','771234565','Anesthesiologist .\r'),('D1004','812345674v','Tharindu Tharaka','M','771234562','Cardiologist \r'),('D1005','812345675v','Fazil Farook','M','771234562','Cardiovascular Surgeon\r'),('D1006','812345676v','Basil Brian','M','771234563','Clinical Neurophysiologis\r'),('D1007','812345677v','Sarath Lanka','M','771234569','Dentist\r'),('D1008','812345678v','Panduka Perera','M','771234523','Dermatologist \r'),('D1009','812345679v','Anil Amarasiri','M','771234234','Emergency Doctor\r'),('D1010','812345680v','Pasindu Cooray','M','771234232','Endocrinologist\r'),('D1011','812345681v','Tharaki Medagedara','F','771234463','Epidemiologists\r'),('D1012','812345682v','Kalpana Sulochana','F','771234543','ENT Specialist \r'),('D1013','812345683v','Sagara Lionel','M','771234567','Family Practitioner\r'),('D1014','812345684v',' Padma Fernando','F','771234567','Gastroenterologist\r'),('D1015','812345685v','Sarala Thennekoon','F','771234522','Gynecologist\r'),('D1016','812345686v','Manik Kavindi','F','771234533','General Psychiatrist\r'),('D1017','812345687v','Saman DeSilva','M','771234544','Hematologist\r'),('D1018','812345688v','Maya Kumari','F','771234567','Immunologist\r'),('D1019','812345689v','Ranga Herath','M','771234567','Infectious Disease Specialist\r'),('D1020','812345690v','Wimal Bandara','M','771234567','Internal Medicine Specialists\r'),('D1021','812345691v','Siril Weligama','M','771234567','Internists\r'),('D1022','812345692v','Kanchana Silva','F','771234567','Medical Geneticist\r'),('D1023','812345693v','Thishan Namal','M','771234567','Microbiologist \r'),('D1024','812345694v','Kamal Soriya','M','771234567','Neonatologist\r'),('D1025','812345695v','Chethana Kalpana','F','771234567','Nephrologists \r');
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor_Hours`
--

DROP TABLE IF EXISTS `Doctor_Hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor_Hours` (
  `Doctor_ID` varchar(5) NOT NULL,
  `Hours` int(11) DEFAULT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `Doctor_Hours_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor_Hours`
--

LOCK TABLES `Doctor_Hours` WRITE;
/*!40000 ALTER TABLE `Doctor_Hours` DISABLE KEYS */;
INSERT INTO `Doctor_Hours` VALUES ('D1000',12,360000),('D1001',12,360000),('D1002',12,360000),('D1003',12,360000),('D1004',12,360000),('D1005',12,360000),('D1006',12,360000),('D1007',13,390000),('D1008',12,360000),('D1009',14,420000),('D1010',12,360000),('D1011',12,360000),('D1012',12,360000),('D1013',18,540000),('D1014',12,360000),('D1015',12,360000),('D1016',12,360000),('D1017',12,360000),('D1018',12,360000),('D1019',12,360000),('D1020',12,360000),('D1021',12,360000),('D1022',12,360000),('D1023',12,360000),('D1024',15,450000),('D1025',12,360000);
/*!40000 ALTER TABLE `Doctor_Hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `Employee_ID` varchar(5) NOT NULL,
  `Employee_NIC` varchar(10) NOT NULL,
  `Emp_Name` varchar(200) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Contact_No` char(10) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`,`Employee_NIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('A0001','841412056V','Chandimali Subasinghe','1984-05-20','F','0710326578'),('A0002','710912856V','Jayasanka Jayakodi','1971-03-03','M','0774239598'),('A0003','841412031V','Piumika Liyanage','1984-04-20','F','0762581463'),('A0004','710990812V','Dhammika Samarakoon','1971-03-10','M','0773265419'),('A0005','841421056V','Madhushani Siriwardhana','1984-04-15','F','0714398510'),('A0006','710990846V','Dulmini Kodithuwakku','1971-04-10','F','0769854365'),('A0007','710990126V','Sandamini Bandara','1971-04-05','F','0714589652'),('A0008','711290846V','Shilpika Kumari','1971-10-03','F','0754821658'),('A0009','710931846V','Chamara Samarakoon','1971-04-02','M','0774369852'),('C0001','701460584V','Janaki Nanayakkara','1970-05-26','F','0751395175'),('C0002','690620749V','Prasad Dias','1969-03-03','M','0761938492'),('C0003','731100124V','Ayesha Senevirathne','1973-04-20','F','0774163852'),('C0004','670020587V','Sanjeewa Wijerathne','1967-01-02','M','0761936254'),('C0005','710990856V','Devika Kumari','1971-04-09','F','0712288996'),('C0006','701775682V','Ramya Kumari','1970-06-26','F','0769854365'),('C0007','711280302V','Udeni Gamlath','1971-05-08','F','0719589652'),('C0008','722651247V','Tharanga Guruge','1972-09-22','M','0754871658'),('C0009','692832012V','Yamuna Samaraweera','1969-10-10','F','0774399852'),('C0010','672350124V','Pushpa Kulathunga','1967-08-22','F','0715447603'),('N0001','800012356V','Thilini Silva','1980-01-01','F','0769865457'),('N0002','781775682V','Mallika de Silva','1978-06-26','F','0774569823'),('N0003','831280302V','Pradeep Rajapaksha','1983-05-08','M','0714598762'),('N0004','852651247V','Kasuni Dissanayake','1985-09-22','F','0772346875'),('N0005','772832012V','Wathsala Ekanayake','1977-10-10','F','0754213658'),('N0006','842350124V','Anuradhi Rathnayake','1984-08-22','F','0725469875'),('N0007','762550165V','Sarath Kumara','1976-09-11','M','0712469896'),('N0008','800640145V','Sachini Thennakoon','1980-03-04','F','0774986321'),('N0009','851490479V','Malshani Gunawardene','1985-05-29','F','0754896321'),('N0010','870360457V','Sumudu Cooray','1987-02-05','F','0784623589'),('N0011','850998475V','Buddhini Manamperi','1985-03-04','F','0715444603'),('N0012','843526987V','Dilrukshi Wickramasinghe','1984-12-20','F','0754869520'),('N0013','750158965V','Priyantha Bandara','1975-01-15','M','0785689785'),('N0014','842580120V','Parakrama Rajakaruna','1984-09-14','M','0713652987'),('N0015','871200354V','Samindi Weerakkody','1987-04-29','F','0768529637'),('N0016','802505689V','Dilshani Kuruppu','1980-09-06','F','0719638469'),('N0017','871153568V','Nisansala Suraweera','1987-04-24','F','0779854698'),('N0018','790111248V','Darshana Senarathne','1979-01-11','M','0784932586'),('N0019','810568129V','Tharkani Alahakoon','1981-02-27','F','0754658985'),('N0020','752580120V','Suranga Samaraweera','1975-09-14','M','0710025698'),('N0021','801200354V','Deepika Kumari','1980-04-29','F','0773697468'),('N0022','770158965V','Sujeewa Amarasekara','1977-01-15','F','0716941589'),('N0023','822580120V','Gayathri Ekanayake','1982-09-14','F','0770326598'),('N0024','811800778V','Prabath Jayawickrama','1981-06-29','M','0769812687'),('N0025','791190852V','Sureka Bandara','1979-04-28','F','0714569873'),('P0001','851800778V','Lakmali Fonseka','1985-06-29','F','0764679325'),('P0002','791190852V','Champa Ranasinghe','1979-04-28','F','0718239746');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee_Salary`
--

DROP TABLE IF EXISTS `Employee_Salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee_Salary` (
  `Employee_ID` varchar(5) DEFAULT NULL,
  `Hours_worked` int(11) DEFAULT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `Employee_Salary_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee_Salary`
--

LOCK TABLES `Employee_Salary` WRITE;
/*!40000 ALTER TABLE `Employee_Salary` DISABLE KEYS */;
INSERT INTO `Employee_Salary` VALUES ('N0001',12,120000),('N0002',13,130000),('N0003',14,140000),('N0004',15,150000),('N0005',16,160000),('N0006',17,170000),('N0007',18,180000),('N0008',19,190000),('N0009',20,200000),('N0010',21,210000),('P0001',22,220000),('P0002',23,230000),('C0001',24,240000),('C0002',25,250000),('C0003',26,260000),('C0004',27,270000),('C0005',28,280000),('A0001',29,290000),('A0002',30,300000),('A0003',31,310000),('A0004',32,320000),('A0005',33,330000),('A0006',34,340000),('A0007',35,350000),('A0008',36,360000),('A0009',37,370000),('N0011',37,370000),('N0012',37,370000),('N0013',37,370000),('N0014',37,370000),('N0015',37,370000),('N0016',37,370000),('N0017',37,370000),('N0018',37,370000),('N0019',37,370000),('N0020',37,370000),('N0021',37,370000),('N0022',37,370000),('N0023',37,370000),('N0024',37,370000),('N0025',37,370000);
/*!40000 ALTER TABLE `Employee_Salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medication`
--

DROP TABLE IF EXISTS `Medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Medication` (
  `Report_ID` varchar(5) DEFAULT NULL,
  `Medication_Desc` varchar(500) DEFAULT NULL,
  `Charge` decimal(10,0) DEFAULT NULL,
  KEY `Report_ID` (`Report_ID`),
  CONSTRAINT `Medication_ibfk_1` FOREIGN KEY (`Report_ID`) REFERENCES `Report` (`Report_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medication`
--

LOCK TABLES `Medication` WRITE;
/*!40000 ALTER TABLE `Medication` DISABLE KEYS */;
INSERT INTO `Medication` VALUES ('R1','Thrombolytics,Nitroglycerin,Morphine',4000),('R7','Mucinex, Azithromycin, Doxycycline',5000),('R10','Singulair,montelukast, prednisone,Fasenra',4000),('R13','Hydroxine, Levocetirizine, Xyzal, Loratadine',4500),('R16','metroformin, Januvia, Victoza',6500),('R19','atorvastatin, Lipitor, Crestor, Simvastatin',5700),('R22','carboplatin, Adriamyclin, Leukeran',8000),('R25','Levofloxacin, clarithromycin, Levaquin',3800),('R28','plavix, clopidogrel,activase',5000),('R31','methotrexate, Enbrel. Humira',4950),('R34','triamcinolone, clobetasol,fluocinonide',3900),('R37','prednisone, budesonide,mesalamine',4300);
/*!40000 ALTER TABLE `Medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nurse`
--

DROP TABLE IF EXISTS `Nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nurse` (
  `Nurse_ID` varchar(5) DEFAULT NULL,
  `Dept_ID` varchar(5) DEFAULT NULL,
  KEY `Nurse_ID` (`Nurse_ID`),
  KEY `Dept_ID` (`Dept_ID`),
  CONSTRAINT `Nurse_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `Employee` (`Employee_ID`) ON DELETE SET NULL,
  CONSTRAINT `Nurse_ibfk_2` FOREIGN KEY (`Dept_ID`) REFERENCES `Department` (`Department_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nurse`
--

LOCK TABLES `Nurse` WRITE;
/*!40000 ALTER TABLE `Nurse` DISABLE KEYS */;
INSERT INTO `Nurse` VALUES ('N0001','DP001'),('N0002','DP002'),('N0003','DP002'),('N0004','DP002'),('N0005','DP002'),('N0006','DP002'),('N0007','DP002'),('N0008','DP002'),('N0009','DP002'),('N0010','DP003'),('N0011','DP004'),('N0012','DP005'),('N0013','DP005'),('N0014','DP001'),('N0015','DP002'),('N0016','DP002'),('N0017','DP002'),('N0018','DP002'),('N0019','DP002'),('N0020','DP002'),('N0021','DP003'),('N0022','DP003'),('N0023','DP004'),('N0024','DP004'),('N0025','DP005');
/*!40000 ALTER TABLE `Nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `Patient_ID` varchar(5) NOT NULL,
  `Patient_NIC` varchar(12) NOT NULL,
  `Patient_Name` varchar(200) DEFAULT NULL,
  `Patient_add` varchar(500) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Contact_No` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES ('P0001','808123123V','Hasini Bandara','No 25,Singhe Mw,Kandy','F','771231231\r'),('P0002','808123124V','Asela Dilshan','No 23,Main road,Kegalle','M','771431231\r'),('P0003','808123125V','Anil Mark','No 13,Kandy road,Mawanella','M','712231231\r'),('P0004','808123126V','Sachira Welagedara','No 2,Galle road,Colombo','M','756231231\r'),('P0005','808123123V','Janith Vikum','No 3,Main road,Ambepussa','M','717231231\r'),('P0006','808123127V','Pathum Sadakan','No 2,Singhe Mw,Colombo','M','711231261\r'),('P0007','808123128V','Warna Alwis','No 12,James Place,Aranayake','M','767231431\r'),('P0008','808123129V','Sithum Akash','No 19,Kandy Road,Colombo','M','763232291\r'),('P0009','808123133V','Devaraj Priyaraj','No 14,Samadhi Mw,Colombo','M','776231231\r'),('P0010','808123133V','Nilukshi Sadumini','No 9,Gampola Road,Peradeniya','F','782346352\r'),('P0011','808123423V','Shlika Latha','No 14,Samadhi mw,Colombo','F','713456434\r'),('P0012','808123223V','Mahela Udugama','No 6,Singhe Mw,Colombo','M','789231031\r'),('P0013','808123623V','Sirima Lakshmi','No 1,Kandy Rd,Mawanella','F','754796582\r'),('P0014','808123123V','Miguel Rathnayaka','No 13,Main Rd,Kegalle','M','769574698\r'),('P0015','808123123V','Simone Silve','No 17,Gannoruwa Rd,Peradeniya','M','711231231\r'),('P0016','808123123V','Madara Kaluarachchi','No 17,Samagi Mw,Warakapola','F','776958321\r'),('P0017','808123123V','Seetha Dissanayake','No 17,Main Rd,Kadawatha','F','765241896\r'),('P0018','808123123V','Marvin Marker','No 12,Singhe Mw,Colombo','M','771278931\r'),('P0019','808123123V','Lionel Singhe','No 23,Singhe Mw,Colombo','M','771231981\r'),('P0020','808123123V','Wajira Weligama','No 78,Main Rd,Galle','M','771986231\r'),('P0021','808123123V','Malsha Sithum','No 1,Samagi Mw,Trincomalee','F','775431231\r'),('P0022','808123123V','Sagarika Pathirana','No 13,Kandy Rd,Polonnaruwa','F','769831231\r'),('P0023','808123123V','Priya Latha','No 1,Kandy Rd,Anuradhapura','F','771654231\r'),('P0024','808123123V','Shehan shankar','No 12,Main Rd,Yakkala','M','771279431\r'),('P0025','808123123V','Gavin Gamage','No 1,Samadhi Mw,Kundasale','M','774579652\r'),('P0026','808123123V','Kevin Roshel','No 45,Kandy Rd,Mawanella','M','785231231\r'),('P0027','808123123V','Sahan Dilshan','No 17,Main Rd,Pilimathalawa','M','765895874\r'),('P0028','808123123V','Mark Messer','No 14,Molagoda,Kegalle,Colombo','M','774569823\r'),('P0029','808123123V','Alfred Tiron','No 1,Gampola Rd,Kadugannawa','M','754786253\r');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient_in_Rooms`
--

DROP TABLE IF EXISTS `Patient_in_Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient_in_Rooms` (
  `Patient_ID` varchar(5) DEFAULT NULL,
  `Room_No` varchar(5) DEFAULT NULL,
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Room_No` (`Room_No`),
  CONSTRAINT `Patient_in_Rooms_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`Patient_ID`) ON DELETE SET NULL,
  CONSTRAINT `Patient_in_Rooms_ibfk_2` FOREIGN KEY (`Room_No`) REFERENCES `Room` (`Room_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient_in_Rooms`
--

LOCK TABLES `Patient_in_Rooms` WRITE;
/*!40000 ALTER TABLE `Patient_in_Rooms` DISABLE KEYS */;
INSERT INTO `Patient_in_Rooms` VALUES ('P0001','1'),('P0002','2'),('P0003','3'),('P0004','4'),('P0005','5'),('P0006','6'),('P0007','7'),('P0008','8'),('P0009','9'),('P0010','10'),('P0011','11'),('P0012','12'),('P0013','13'),('P0014','14'),('P0015','15'),('P0016','16'),('P0017','17'),('P0018','18'),('P0019','19'),('P0020','20'),('P0021','21'),('P0022','22'),('P0023','23'),('P0024','24'),('P0025','25');
/*!40000 ALTER TABLE `Patient_in_Rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Report`
--

DROP TABLE IF EXISTS `Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Report` (
  `Report_ID` varchar(5) NOT NULL,
  `Doctor_ID` varchar(5) DEFAULT NULL,
  `Patient_ID` varchar(5) DEFAULT NULL,
  `Report_Desc` text DEFAULT NULL,
  PRIMARY KEY (`Report_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  CONSTRAINT `Report_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`Doctor_ID`) ON DELETE SET NULL,
  CONSTRAINT `Report_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`Patient_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Report`
--

LOCK TABLES `Report` WRITE;
/*!40000 ALTER TABLE `Report` DISABLE KEYS */;
INSERT INTO `Report` VALUES ('R1','D1000','P0001','Needs Medication\r'),('R10','D1009','P0010','Needs Medication\r'),('R11','D1010','P0011','Surgery \r'),('R12','D1011','P0012','Send to Ward\r'),('R13','D1012','P0013','Needs Medication\r'),('R14','D1013','P0014','Surgery \r'),('R15','D1014','P0015','Send to Ward\r'),('R16','D1015','P0016','Needs Medication\r'),('R17','D1016','P0017','Surgery \r'),('R18','D1017','P0018','Send to Ward\r'),('R19','D1018','P0019','Needs Medication\r'),('R2','D1001','P0002','Surgery \r'),('R20','D1019','P0020','Surgery \r'),('R21','D1020','P0021','Send to Ward\r'),('R22','D1021','P0022','Needs Medication\r'),('R23','D1022','P0023','Surgery \r'),('R24','D1023','P0024','Send to Ward\r'),('R25','D1024','P0025','Needs Medication\r'),('R26','D1025','P0026','Surgery \r'),('R27','D1000','P0027','Send to Ward\r'),('R28','D1001','P0028','Needs Medication\r'),('R29','D1002','P0029','Surgery \r'),('R3','D1002','P0003','Send to Ward\r'),('R30','D1003','P0001','Send to Ward\r'),('R31','D1004','P0002','Needs Medication\r'),('R32','D1005','P0003','Surgery \r'),('R33','D1006','P0004','Send to Ward\r'),('R34','D1007','P0005','Needs Medication\r'),('R35','D1008','P0006','Surgery \r'),('R36','D1009','P0007','Send to Ward\r'),('R37','D1010','P0008','Needs Medication\r'),('R38','D1011','P0009','Surgery \r'),('R39','D1012','P0010','Send to Ward\r'),('R4','D1003','P0004','Needs Medication\r'),('R5','D1004','P0005','Surgery \r'),('R6','D1005','P0006','Send to Ward\r'),('R7','D1006','P0007','Needs Medication\r'),('R8','D1007','P0008','Surgery \r'),('R9','D1008','P0009','Send to Ward\r');
/*!40000 ALTER TABLE `Report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `Room_No` varchar(5) NOT NULL,
  `Nurse_ID` varchar(5) DEFAULT NULL,
  `Dept_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Room_No`),
  KEY `Nurse_ID` (`Nurse_ID`),
  KEY `Dept_ID` (`Dept_ID`),
  CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `Nurse` (`Nurse_ID`) ON DELETE SET NULL,
  CONSTRAINT `Room_ibfk_2` FOREIGN KEY (`Dept_ID`) REFERENCES `Department` (`Department_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES ('1','N0001','DP001'),('10','N0009','DP002'),('11','N0010','DP003'),('12','N0011','DP004'),('13','N0012','DP005'),('14','N0013','DP005'),('15','N0015','DP002'),('16','N0016','DP002'),('17','N0017','DP002'),('18','N0018','DP002'),('19','N0019','DP002'),('2','N0014','DP001'),('20','N0020','DP002'),('21','N0001','DP001'),('22','N0014','DP001'),('23','N0002','DP002'),('24','N0003','DP002'),('25','N0004','DP002'),('26','N0005','DP002'),('27','N0006','DP002'),('28','N0007','DP002'),('29','N0008','DP002'),('3','N0002','DP002'),('30','N0009','DP002'),('31','N0010','DP003'),('32','N0011','DP004'),('33','N0012','DP005'),('34','N0013','DP005'),('35','N0015','DP002'),('36','N0016','DP002'),('37','N0017','DP002'),('38','N0018','DP002'),('39','N0019','DP002'),('4','N0003','DP002'),('40','N0020','DP002'),('41','N0001','DP001'),('42','N0014','DP001'),('5','N0004','DP002'),('6','N0005','DP002'),('7','N0006','DP002'),('8','N0007','DP002'),('9','N0008','DP002');
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-02 16:43:41
