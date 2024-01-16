/* If you are running this script on your local host, uncomment the next 5 lines. */
-- drop database if exists newScholar;
-- create database newScholar /*!40100 DEFAULT CHARACTER SET utf8 */;
-- use newScholar;
-- SET GLOBAL sql_mode=(SELECT CONCAT(@@sql_mode,',ANSI')); 
-- SET sql_mode=(SELECT CONCAT(@@sql_mode,',ANSI')); 



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
-- Table structure for table `researcher`
--

UNLOCK TABLES;

DROP TABLE IF EXISTS `researcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `researcher` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researcher`
--

LOCK TABLES `researcher` WRITE;
/*!40000 ALTER TABLE `researcher` DISABLE KEYS */;
INSERT INTO `researcher` VALUES (1,'Renata','Borovica-Gajic','rb@unimelb.edu.au'),(2,'Farhana','Choudhury','fc@unimelb.edu.au'),(3,'Colton','Carner','cc@unimelb.edu.au'),(4,'Tim','Hermanto','th@unimelb.edu.au'),(5,'Ling','Luo','ll@unimelb.edu.au'),(6,'Jane','Doe','jd@unimelb.edu.au'),(7,'Kara','Hayden','kh@unimelb.edu.au'),(8,'Layla','Hamid','lh@unimelb.edu.au');
/*!40000 ALTER TABLE `researcher` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StartPage` int(11) NOT NULL,
  `EndPage` int(11) NOT NULL,
  `Title` varchar(1000) NOT NULL,
  `DateOfPublication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `documentURL` varchar(1000) NOT NULL,
  `documentSizeKb` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication`
--

LOCK TABLES `publication` WRITE;
/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
INSERT INTO `publication` VALUES (1,4,14,'Survey on databases','2022-06-04 01:00:00','www.dummyurl.unimelb.edu.au',1000),(2,20,35,'Survey on machine learning','2022-07-04 01:00:00','www.dummyurl2.unimelb.edu.au',2000),(3,40,44,'Indexing in databases','2021-06-04 01:00:00','www.dummyurl3.unimelb.edu.au',1000),(4,45,60,'Efficiency of queries','2023-04-04 01:00:00','www.dummyurl5.unimelb.edu.au',1000),(5,1,12,'Efficiency of indexes','1999-01-04 01:00:00','www.dummyurl6.unimelb.edu.au',1000),(6,15,30,'Segmenting text','1998-01-04 01:00:00','www.dummyurl6.unimelb.edu.au',1000),(7,1,20,'Inferring paragraph breaks','2023-01-04 01:00:00','www.dummyurl7.unimelb.edu.au',1000),(8,45,60,'A survey on natural language processing','2023-01-04 01:00:00','www.dummyurl8.unimelb.edu.au',1000),(9,11,30,'Learning indexing','2020-01-04 01:00:00','www.dummyurl9.unimelb.edu.au',1000),(10,15,20,'User evaluation','2021-01-04 01:00:00','www.dummyurl10.unimelb.edu.au',1000),(11,5,60,'User evaluation','2023-01-01 01:00:00','www.dummyurl11.unimelb.edu.au',1000),(12,12,23,'Cyber security survey','2022-01-02 01:00:00','www.dummyurl12.unimelb.edu.au',1000),(13,1,10,'Cyber security 101','2023-01-04 01:00:00','www.dummyurl13.unimelb.edu.au',1000);
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `keyword`
--

UNLOCK TABLES;

DROP TABLE IF EXISTS `keyword`;
CREATE TABLE `keyword` (
  `Id` int(11) NOT NULL,
  `Word` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES (1,'Databases'),(2,'Machine learning'),(3,'Natural language processing'), (4,'Human-computer interaction'),(5,'Cyber security');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `researcherHasKeyword`
--

DROP TABLE IF EXISTS `researcher_has_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `researcher_has_keyword` (
  `researcherID` int(11) NOT NULL,
  `keywordID` int(11) NOT NULL,
  PRIMARY KEY (`researcherID`,`keywordID`),
  KEY `fk_researcherHasKeyword_r1_idx` (`researcherID`),
  KEY `fk_researcherHasKeyword_k1_idx` (`keywordID`),
  CONSTRAINT `fk_researcherHasKeyword_r1` FOREIGN KEY (`researcherID`) REFERENCES `researcher` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_researcherHasKeyword_k1` FOREIGN KEY (`keywordID`) REFERENCES `keyword` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researcherHasKeyword`
--

LOCK TABLES `researcher_has_keyword` WRITE;
/*!40000 ALTER TABLE `researcher_has_keyword` DISABLE KEYS */;
INSERT INTO `researcher_has_keyword` VALUES (1,1), (1,2),(2,1),(2,5), (3,2),(3,3),(4,3),(4,4),(4,5),(5,4),(6,1),(6,5),(7,2),(7,5),(8,2);
/*!40000 ALTER TABLE `researcher_has_keyword` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `publicationHasKeyword`
--

DROP TABLE IF EXISTS `publication_has_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_has_keyword` (
  `publicationID` int(11) NOT NULL,
  `keywordID` int(11) NOT NULL,
  PRIMARY KEY (`publicationID`,`keywordID`),
  KEY `fk_publicationHasKeyword_p1_idx` (`publicationID`),
  KEY `fk_publicationHasKeyword_k1_idx` (`keywordID`),
  CONSTRAINT `fk_publicationHasKeyword_p1` FOREIGN KEY (`publicationID`) REFERENCES `publication` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicationHasKeyword_k1` FOREIGN KEY (`keywordID`) REFERENCES `keyword` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicationHasKeyword`
--

LOCK TABLES `publication_has_keyword` WRITE;
/*!40000 ALTER TABLE `publication_has_keyword` DISABLE KEYS */;
INSERT INTO `publication_has_keyword` VALUES (1,1), (3,1),(4,1),(5,1),(2,2),(9,2),(6,3),(7,3),(8,3),(10,4),(11,4),(12,5),(13,5);
/*!40000 ALTER TABLE `publication_has_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- ------------------------------
--

--
-- Table structure for table `coauthors`
--
DROP TABLE IF EXISTS `coauthors`;
CREATE TABLE `coauthors` (
  `AuthorID` int(11) NOT NULL,
  `PublicationID` int(11) NOT NULL,
  PRIMARY KEY (`AuthorID`,`PublicationID`),
  KEY `fk_coauthors_a1_idx` (`AuthorID`),
  KEY `fk_coauthors_p1_idx` (`publicationID`),
  CONSTRAINT `fk_coauthors_a1` FOREIGN KEY (`AuthorID`) REFERENCES `researcher` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_coauthors_p1` FOREIGN KEY (`PublicationID`) REFERENCES `publication` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coauthors`
--

LOCK TABLES `coauthors` WRITE;
/*!40000 ALTER TABLE `coauthors` DISABLE KEYS */;
INSERT INTO `coauthors` VALUES (1,1),(2,1), (3,1), (1,2),(3,2),(8,2), (1,3),(6,3), (2,4),(6,4),(7,4), (1,5),(2,5),(5,5), (3,6),(3,7),(4,7),(3,8), (1,9),(4,9),(5,9),(6,9),(4,10),(5,11),(5,12),(6,12),(5,13),(7,13);
/*!40000 ALTER TABLE `coauthors` ENABLE KEYS */;
UNLOCK TABLES;




--
-- Table structure for table `topten`
--

DROP TABLE IF EXISTS `topten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topten` (
  `PublicationId` int(11) NOT NULL,
  `Startdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Enddate` timestamp DEFAULT NULL,
  `Position` int(11) NOT NULL,
  PRIMARY KEY (`PublicationId`,`Startdate`),
  KEY `fk_topten_p1_idx` (`PublicationId`),
  CONSTRAINT `fk_topten_p1` FOREIGN KEY (`PublicationId`) REFERENCES `publication` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topten`
--

LOCK TABLES `topten` WRITE;
/*!40000 ALTER TABLE `topten` DISABLE KEYS */;
INSERT INTO `topten` VALUES (1,'2023-01-01 01:00:00','2023-01-14 01:00:00',1),(2,'2023-01-01 01:00:00','2023-01-14 01:00:00',2),(3,'2023-01-01 01:00:00','2023-01-14 01:00:00',3),(5,'2023-01-01 01:00:00','2023-01-14 01:00:00',4),(9,'2023-01-01 01:00:00','2023-01-14 01:00:00',5),(1,'2023-15-01 01:00:00','2023-01-31 01:00:00',2),(2,'2023-01-15 01:00:00','2023-01-31 01:00:00',1),(6,'2023-01-15 01:00:00','2023-01-31 01:00:00',2),(3,'2023-01-15 01:00:00','2023-01-31 01:00:00',3),(10,'2023-01-15 01:00:00','2023-01-31 01:00:00',4),(9,'2023-01-15 01:00:00','2023-01-31 01:00:00',5),(1,'2023-02-01 01:00:00','2023-02-14 01:00:00',1),(12,'2023-02-01 01:00:00','2023-02-14 01:00:00',2),(7,'2023-02-01 01:00:00','2023-02-14 01:00:00',3),(3,'2023-02-01 01:00:00','2023-02-14 01:00:00',4),(13,'2023-02-01 01:00:00','2023-02-14 01:00:00',5) ;
/*!40000 ALTER TABLE `topten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencing`
--
DROP TABLE IF EXISTS `referencing`;
CREATE TABLE IF NOT EXISTS `referencing` (
  `referencingPublicationId` int(11) NOT NULL,
  `referencedPublicationId` int(11) NOT NULL,
  PRIMARY KEY (`referencingPublicationId`, `referencedPublicationId`),
  CONSTRAINT `fk_references_publication1` FOREIGN KEY (`referencedPublicationId`) REFERENCES `publication` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_references_publication2` FOREIGN KEY (`referencingPublicationId`) REFERENCES `publication` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topten`
--

LOCK TABLES `referencing` WRITE;
/*!40000 ALTER TABLE `referencing` DISABLE KEYS */;
INSERT INTO `referencing` VALUES (13,12),(13,10),(12,10),(12,9),(12,3),(12,1),(11,10),(11,1),(10,9),(9,1),(9,3),(9,4),(9,5),(9,6),(9,7),(8,7),(8,6),(7,6),(5,1),(5,2),(5,3),(5,4),(4,1),(4,2),(4,3),(3,2),(2,1);
/*!40000 ALTER TABLE `referencing` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2022-09-09 17:17:29