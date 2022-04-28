CREATE DATABASE  IF NOT EXISTS `final_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final_project`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `essentials`
--

DROP TABLE IF EXISTS `essentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `essentials` (
  `Product_Category` text,
  `Product_ID` text,
  `Product_Detail` text,
  `Description` text,
  `sName` text,
  `sEmail` text,
  `Keywords` text,
  `Post_Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essentials`
--

LOCK TABLES `essentials` WRITE;
/*!40000 ALTER TABLE `essentials` DISABLE KEYS */;
INSERT INTO `essentials` VALUES ('Essentials','Es001','Bath towels','five bath towels and washcloths, super plush $10','John','John@gmail.com','','27-Mar-22'),('Essentials','Es002','bed sheets','queen size, pink color $5','Jenifer','Jenifer@gmail.com','','28-Mar-22'),('Essentials','Es003','pillows','queen size pillows; 2 asking $10','Ashley','Ashley@gmail.com','','29-Mar-22'),('Essentials','Es004','bathmats','two blue bathmats for shower and sink area $5','Mark','Mark@gmail.com','','30-Mar-22'),('Essentials','Es005','curtains','burgandy floral print $5','Jenifer','Jenifer@gmail.com','','31-Mar-22'),('Essentials','Es006','toilet paper','45 pack of that squishy Charmin No room in the car to take with! Free to someone in need!!!','Chris','Chris@gmail.com','','31-Mar-22'),('Essentials','Es007','Papertowels','12 pack of papertowels; YOU WILL NEED THESE! $5','Chris','Chris@gmail.com','','31-Mar-22'),('Essentials','Es008','Plastic utensils','plastic utensils; bought at Sams club in bulk. No need for these anymore because I am leaving the Ramen Noodle diet! Free','Chris','Chris@gmail.com','','31-Mar-22');
/*!40000 ALTER TABLE `essentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture`
--

DROP TABLE IF EXISTS `furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture` (
  `Product_Category` text,
  `Product_ID` text,
  `Product_Detail` text,
  `Description` text,
  `sName` text,
  `sEmail` text,
  `Keywords` text,
  `Post_Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture`
--

LOCK TABLES `furniture` WRITE;
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` VALUES ('Furniture','F001','Desk','Nice compact desk with minimal damage. Still works well. Just want it gone.','John','John@gmail.com','Desk','23-Mar-22'),('Furniture','F002','Chairs','Two chairs with minimal stains. They still sit nice. I have a lot of good memories in these chairs. I hope you can make your own. $50 obo','Chris','Chris@gmail.com','Chair','24-Mar-22'),('Furniture','F003','Chair','I have a very well cared for AU banded chair. $25 obo','Ashley','Ashley@gmail.com','AU, tigers, chair, camping, gamping, tailgate','25-Mar-22'),('Furniture','F004','Couch','I am moving out of town and have no way to move my couch. First person with a truck gets it.','Mark','Mark@gmail.com','Couch, sleep, free','26-Mar-22'),('Furniture','F005','Bed','Very nice Ashley furniture queen size bedframe. Well cared for and in good condition. Only 4 years old. Asking $150','Jenifer','Jenifer@gmail.com','queen size, bedframe, bed, matress, nightstand, wood, lamp, kirklands, rustic, farmhouse, TV stand','27-Mar-22'),('Furniture','F006','Matress','Queen matress in good condition; only 4 years old. Asking $100','Jenifer','Jenifer@gmail.com','queen size, bedframe, bed, matress, nightstand, wood, lamp, kirklands, rustic, farmhouse, TV stand','28-Mar-22'),('Furniture','F007','Nightstand','Very nice Ashley Furniture nightstand. Great condition. Has a spot on it from where someone left their cold drink without a coaster. $100','Jenifer','Jenifer@gmail.com','queen size, bedframe, bed, matress, nightstand, wood, lamp, kirklands, rustic, farmhouse, TV stand','29-Mar-22'),('Furniture','F008','Lamp','Rustic Farmhouse lamp from Kirklands. Great condition. Payed $100 but I will sell for $50.','Jenifer','Jenifer@gmail.com','queen size, bedframe, bed, matress, nightstand, wood, lamp, kirklands, rustic, farmhouse, TV stand','30-Mar-22'),('Furniture','F009','TV Stand','Very nice Ashley Furniture TV stand. Great condition.  $100','Jenifer','Jenifer@gmail.com','queen size, bedframe, bed, matress, nightstand, wood, lamp, kirklands, rustic, farmhouse, TV stand','31-Mar-22');
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housing`
--

DROP TABLE IF EXISTS `housing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housing` (
  `Product_Category` text,
  `Product_ID` text,
  `Product_Detail` text,
  `Description` text,
  `sName` text,
  `sEmail` text,
  `Keywords` text,
  `Post_Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housing`
--

LOCK TABLES `housing` WRITE;
/*!40000 ALTER TABLE `housing` DISABLE KEYS */;
INSERT INTO `housing` VALUES ('Housing','H001','Appartment Lease','looking for someone to assume my lease. I am moving and I still have 4 months on the lease. Landlord says I have to pay or find a new tennant. HMU for details','Chris','Chris@gmail.com','Lease, appartment','31-Mar-22'),('Housing','H002','Roommate','Looking for a roommate; I have a nice two bedroom appartment close to campus. Rent is $900/ month. Utilities included','Ben','Ben@gmail.com','roommate','10-Mar-22'),('Housing','H003','Appartment','Now leasing! We have 1,2,3, and even 4 bedroom apartments available now! Send us a message for details. Prices vary','Dimetry','Dimetry@gmail.com','apartments, apartment','22-Mar-22'),('Housing','H004','Appartment','Now leasing! We have 1,2,3, and even 4 bedroom apartments available now! Send us a message for details. Prices vary','Jack','Jack@gmail.com','apartments, apartment','22-Mar-22'),('Housing','H005','Appartment','Now leasing! We have 2 and 3 bedroom apartments available now! Utilities included in price and private pool! Send us a message for details. Prices vary','Collinsworth','Collinsworth@gmail.com','apartments, apartment','17-Mar-22'),('Housing','H006','Appartment','Now leasing! We have apartments available now! Send us a message for details. Prices vary','Richard','Richard@gmail.com','apartments, apartment','18-Mar-22');
/*!40000 ALTER TABLE `housing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen_supplies`
--

DROP TABLE IF EXISTS `kitchen_supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitchen_supplies` (
  `Product_Category` text,
  `Product_ID` text,
  `Product_Detail` text,
  `Description` text,
  `sName` text,
  `sEmail` text,
  `Keywords` text,
  `Post_Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen_supplies`
--

LOCK TABLES `kitchen_supplies` WRITE;
/*!40000 ALTER TABLE `kitchen_supplies` DISABLE KEYS */;
INSERT INTO `kitchen_supplies` VALUES ('Kitchen_Supplies','K001','Cutlery','Four piece set of kitchen cutlery; silver color; great condition asking $20','John','John@gmail.com','fork, knife, spoon','23-Mar-22'),('Kitchen_Supplies','K002','Dishes','Plates and bowls; brown color; rustic look; asking $20','Chris','Chris@gmail.com','','24-Mar-22'),('Kitchen_Supplies','K003','Knives','Kitchen knife set; asking $50','Ashley','Ashley@gmail.com','knife','25-Mar-22'),('Kitchen_Supplies','K004','Linnens','Various kitchen linnens; asking $5','Mark','Mark@gmail.com','kitchen towel','26-Mar-22'),('Kitchen_Supplies','K005','Tupperware','various sizes of plastic tupperware; $10','Jenifer','Jenifer@gmail.com','','27-Mar-22'),('Kitchen_Supplies','K006','Dishes','Left behind from my roommate; 4 each: plates, saucer, bowl; $10','Jenifer','Jenifer@gmail.com','','28-Mar-22'),('Kitchen_Supplies','K007','Wine opener','Free to a good home','Jenifer','Jenifer@gmail.com','','29-Mar-22'),('Kitchen_Supplies','K008','Pots and Pans','Various pots and pans; very nice; $20','Jenifer','Jenifer@gmail.com','','30-Mar-22'),('Kitchen_Supplies','K009','Cutlery','Set of forks, spoons, and knives. $10','Jenifer','Jenifer@gmail.com','fork, knife, spoon','31-Mar-22');
/*!40000 ALTER TABLE `kitchen_supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc`
--

DROP TABLE IF EXISTS `misc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misc` (
  `Product_Category` text,
  `Product_ID` text,
  `Product_Detail` text,
  `Description` text,
  `sName` text,
  `sEmail` text,
  `Keywords` text,
  `Post_Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc`
--

LOCK TABLES `misc` WRITE;
/*!40000 ALTER TABLE `misc` DISABLE KEYS */;
INSERT INTO `misc` VALUES ('Misc.','M001','Tickets','two season tickets to the 2022 Auburn Football games; Asking $200','John','John@gmail.com','football, season tickets, war eagle','27-Mar-22'),('Misc.','M002','Keg tap','tap for a keg','Jenifer','Jenifer@gmail.com','keg, tap','28-Mar-22'),('Misc.','M003','Keg tap','tap for a keg','Ashley','Ashley@gmail.com','keg, tap','29-Mar-22'),('Misc.','M004','Keg tap','tap for a keg','Mark','Mark@gmail.com','tap','30-Mar-22'),('Misc.','M005','Keg tap','tap for a keg','Jenifer','Jenifer@gmail.com','','31-Mar-22');
/*!40000 ALTER TABLE `misc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_supplies`
--

DROP TABLE IF EXISTS `office_supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_supplies` (
  `Product_Category` text,
  `Product_ID` text,
  `Product_Detail` text,
  `Description` text,
  `sName` text,
  `sEmail` text,
  `Keywords` text,
  `Post_Date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_supplies`
--

LOCK TABLES `office_supplies` WRITE;
/*!40000 ALTER TABLE `office_supplies` DISABLE KEYS */;
INSERT INTO `office_supplies` VALUES ('Office_Supplies','Os001','Pens','two boxes of brand new ballpoint pens. About 50 pens $5','John','John@gmail.com','pens, pen, ink','23-Mar-22'),('Office_Supplies','Os002','Printer Paper','two packs of printer paper. 1000 sheets total; asking $5','Chris','Chris@gmail.com','paper, printer','24-Mar-22'),('Office_Supplies','Os003','Printer ink','brand new ink for inkjet 5000 printer; asking $10','Ashley','Ashley@gmail.com','printer ink, new','25-Mar-22'),('Office_Supplies','Os004','Printer Paper','one pack of printer paper; I used like 20 sheets but there was 500. come get it; its free.','Mark','Mark@gmail.com','paper, printer paper','26-Mar-22'),('Office_Supplies','Os005','Printer ink','brand new ink for inkjet 5120 printer; asking $10','Jenifer','Jenifer@gmail.com','ink, printer','27-Mar-22'),('Office_Supplies','Os006','Printer','Used inkjet 5000 printer. I bought it thinking I would need it for papers but I printed like 5 papers my whole time at AU. Asking $35','Jenifer','Jenifer@gmail.com','printer, used, lightly used','28-Mar-22'),('Office_Supplies','Os007','Folders','Various colors of folders for organization of class materials. Free','Jenifer','Jenifer@gmail.com','organization, folders','29-Mar-22'),('Office_Supplies','Os008','Sheet Protectors','about 200 page protectors for 3-ring binders. Asking $5','Jenifer','Jenifer@gmail.com','','30-Mar-22'),('Office_Supplies','Os009','Stickey Notes','They are various colors. Have about 1000 of them. Free','Jenifer','Jenifer@gmail.com','post-it, stickey notes','31-Mar-22');
/*!40000 ALTER TABLE `office_supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_category` varchar(45) NOT NULL,
  UNIQUE KEY `idproduct_category_UNIQUE` (`product_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES ('Automotive'),('Electronics'),('Essentials'),('Furniture'),('Housing'),('Kitchen_Supplies'),('Misc'),('Office_Supplies'),('Sporting_Equipment');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 19:32:57
