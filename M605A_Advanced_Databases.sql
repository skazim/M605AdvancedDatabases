-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: M605A_Advanced_Databases
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Appetizers','2024-01-01 11:00:00'),(2,'Main Courses','2024-01-02 11:00:00'),(3,'Desserts','2024-01-03 11:00:00'),(4,'Beverages','2024-01-04 11:00:00'),(5,'Men\'s Clothing','2024-06-25 15:44:09'),(6,'Women\'s Clothing','2024-06-25 15:44:09'),(7,'Kids Wear','2024-06-25 15:44:09'),(8,'Footwear','2024-06-25 15:44:09'),(9,'Accessories','2024-06-25 15:44:09'),(10,'Sportswear','2024-06-25 15:44:09'),(11,'Winterwear','2024-06-25 15:44:09'),(12,'SummerWear','2024-06-25 15:44:09');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(100) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `commentsDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_product` (`prod_id`),
  KEY `fk_comments_customer` (`cust_id`),
  KEY `rating` (`rating`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Great dish, loved the flavors!',1,1,'2024-06-26 16:54:10',5),(2,'Service was excellent, will come back again.',2,1,'2024-06-26 16:54:10',5),(3,'The dessert was heavenly, perfect ending to the meal.',3,1,'2024-06-26 16:54:10',5),(4,'Amazing drinks, loved the variety.',4,2,'2024-06-26 16:54:10',5),(5,'The appetizer was delicious, a must-try!',1,2,'2024-06-26 16:54:10',5),(6,'Good ambiance, enjoyed the evening.',2,2,'2024-06-26 16:54:10',5),(7,'This product is bad.',1,1,'2024-06-26 16:53:38',1),(8,'Really bad quality.',2,1,'2024-06-26 16:53:38',1),(9,'Not satisfied, it is bad.',3,1,'2024-06-26 16:53:38',1),(10,'Worst product ever, it is bad.',4,1,'2024-06-26 16:53:38',1),(11,'Bad experience.',1,2,'2024-06-26 16:53:38',1),(12,'I found this product bad.',2,2,'2024-06-26 16:53:38',1),(13,'Terrible, it is bad.',3,2,'2024-06-26 16:53:38',1),(14,'Not worth the money, bad.',4,2,'2024-06-26 16:53:38',1),(15,'Very bad product.',1,3,'2024-06-26 16:53:38',1),(16,'Do not buy, it is bad.',2,3,'2024-06-26 16:53:38',1),(17,'This product is not bad.',3,3,'2024-06-26 16:53:46',2),(18,'Not bad at all.',4,3,'2024-06-26 16:53:46',2),(19,'Satisfactory, not bad.',1,4,'2024-06-26 16:53:46',2),(20,'It is not bad.',2,4,'2024-06-26 16:53:46',2),(21,'Could be better, but not bad.',3,4,'2024-06-26 16:53:46',2),(22,'I found this product not bad.',4,4,'2024-06-26 16:53:46',2),(23,'Reasonable quality, not bad.',1,5,'2024-06-26 16:53:46',2),(24,'Fair enough, not bad.',2,5,'2024-06-26 16:53:46',2),(25,'Acceptable, not bad.',3,5,'2024-06-26 16:53:46',2),(26,'Overall, not bad.',4,5,'2024-06-26 16:53:46',2),(27,'This product is good.',1,6,'2024-06-26 16:53:55',3),(28,'I liked it, it is good.',2,6,'2024-06-26 16:53:55',3),(29,'Good value for money.',3,6,'2024-06-26 16:53:55',3),(30,'Satisfactory, it is good.',4,6,'2024-06-26 16:53:55',3),(31,'Good quality.',1,7,'2024-06-26 16:53:55',3),(32,'I found this product good.',2,7,'2024-06-26 16:53:55',3),(33,'Overall, good.',3,7,'2024-06-26 16:53:55',3),(34,'Decent, good.',4,7,'2024-06-26 16:53:55',3),(35,'Quite good.',1,8,'2024-06-26 16:53:55',3),(36,'Worth buying, good.',2,8,'2024-06-26 16:53:55',3),(37,'This product is better than others.',3,8,'2024-06-26 16:54:04',4),(38,'Better quality.',4,8,'2024-06-26 16:54:04',4),(39,'Better experience.',1,9,'2024-06-26 16:54:04',4),(40,'Much better.',2,9,'2024-06-26 16:54:04',4),(41,'Better value for money.',3,9,'2024-06-26 16:54:04',4),(42,'I found this product better.',4,9,'2024-06-26 16:54:04',4),(43,'Overall, better.',1,10,'2024-06-26 16:54:04',4),(44,'Better choice.',2,10,'2024-06-26 16:54:04',4),(45,'Definitely better.',3,10,'2024-06-26 16:54:04',4),(46,'Quite better.',4,10,'2024-06-26 16:54:04',4),(47,'This product is the best.',1,1,'2024-06-26 16:54:10',5),(48,'Excellent, it is the best.',2,1,'2024-06-26 16:54:10',5),(49,'Best value for money.',3,1,'2024-06-26 16:54:10',5),(50,'The best quality.',4,1,'2024-06-26 16:54:10',5),(51,'Absolutely the best.',1,2,'2024-06-26 16:54:10',5),(52,'I found this product the best.',2,2,'2024-06-26 16:54:10',5),(53,'Overall, the best.',3,2,'2024-06-26 16:54:10',5),(54,'Highly recommend, the best.',4,2,'2024-06-26 16:54:10',5),(55,'The best experience.',1,3,'2024-06-26 16:54:10',5),(56,'Worth every penny, the best.',2,3,'2024-06-26 16:54:10',5);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `LastLoginTime` datetime DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alice Johnson','alice@example.com','2024-06-16 20:05:24','27461de608b917641c905ab12470f716','+12321312312','Goerzelle','2024-06-24 16:45:23','2024-06-16 18:07:11'),(2,'Bob Smith','bob@example.com','2024-06-16 20:05:24','27461de608b917641c905ab12470f716','+12321312312','Goerzelle','2024-06-24 16:49:06','2024-06-16 18:07:11'),(3,'Hussain','hussain@gmail.com','2024-06-25 17:50:58','4082b2fb8fbcbc9394491083ec210824','123324324','Berlin Wansee','2024-06-25 15:50:58','2024-06-25 15:50:58'),(4,'Hamza','hamza@gmail.com','2024-06-25 17:51:54','8950259507cd8ce2a99f8b94674f2b77','123324324','Schonalle','2024-06-25 15:51:54','2024-06-25 15:51:54'),(5,'Hamza','hamza@gmail.com','2024-06-25 17:52:50','8950259507cd8ce2a99f8b94674f2b77','123324324','Schonalle','2024-06-25 15:52:50','2024-06-25 15:52:50'),(6,'Ali','Ali@gmail.com','2024-06-25 17:52:50','86318e52f5ed4801abe1d13d509443de','123324324','Schonalle','2024-06-25 15:52:50','2024-06-25 15:52:50'),(7,'Moti','moti@gmail.com','2024-06-25 17:52:50','1a93068a96764ba0fb92c8c3f7759f10','123324324','Schonalle','2024-06-25 15:52:50','2024-06-25 15:52:50');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'SUMMER25',25.00,'2024-08-31 23:59:59','Summer Sale - 25% off on all items'),(2,'FALL2024',15.00,'2024-11-30 23:59:59','Fall Promotion - $15 off on selected products'),(3,'WELCOME10',10.00,'2025-01-31 23:59:59','Welcome Discount - $10 off for new customers'),(4,'HOLIDAY50',50.00,'2024-12-25 23:59:59','Holiday Special - $50 off on orders over $200'),(5,'SPRING20',20.00,'2025-04-30 23:59:59','Spring Discount - $20 off on minimum purchase of $100');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,50,'2024-06-15 08:00:00'),(2,2,30,'2024-06-15 08:15:00'),(3,3,20,'2024-06-15 08:30:00'),(4,4,40,'2024-06-15 08:45:00'),(5,5,60,'2024-06-15 09:00:00'),(6,10,50,'2024-06-15 08:00:00'),(7,9,50,'2024-06-26 15:43:35'),(8,10,50,'2024-06-26 15:43:35'),(9,11,50,'2024-06-26 15:43:35'),(10,20,5,'2024-06-26 15:43:35'),(11,25,50,'2024-06-26 15:43:35');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`inquire`@`localhost`*/ /*!50003 TRIGGER `check_inventory`
AFTER UPDATE ON `inventory`
FOR EACH ROW
BEGIN
    IF NEW.quantity < 10 THEN
        INSERT INTO `logInventory` (prod_id, quantity) 
        VALUES (NEW.prod_id, NEW.quantity);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `logInventory`
--

DROP TABLE IF EXISTS `logInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logInventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `logTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logInventory`
--

LOCK TABLES `logInventory` WRITE;
/*!40000 ALTER TABLE `logInventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `logInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginActivity`
--

DROP TABLE IF EXISTS `loginActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginActivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginActivity`
--

LOCK TABLES `loginActivity` WRITE;
/*!40000 ALTER TABLE `loginActivity` DISABLE KEYS */;
INSERT INTO `loginActivity` VALUES (1,1,'2024-06-15 06:30:00'),(2,2,'2024-06-15 07:15:00'),(4,1,'2024-06-15 10:30:00'),(5,2,'2024-06-15 11:45:00');
/*!40000 ALTER TABLE `loginActivity` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`inquire`@`localhost`*/ /*!50003 TRIGGER after_insert_loginActivity
AFTER INSERT ON loginActivity
FOR EACH ROW
BEGIN
    UPDATE customers
    SET LastLoginTime = NEW.loginTime
    WHERE id = NEW.customer_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `orderDetails`
--

DROP TABLE IF EXISTS `orderDetails`;
/*!50001 DROP VIEW IF EXISTS `orderDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `orderDetails` AS SELECT 
 1 AS `order_id`,
 1 AS `customer_id`,
 1 AS `Customer Name`,
 1 AS `orderDateTime`,
 1 AS `order_item_id`,
 1 AS `prod_id`,
 1 AS `Product Name`,
 1 AS `quantity`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orderItems`
--

DROP TABLE IF EXISTS `orderItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderItems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_id` (`prod_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderItems`
--

LOCK TABLES `orderItems` WRITE;
/*!40000 ALTER TABLE `orderItems` DISABLE KEYS */;
INSERT INTO `orderItems` VALUES (1,1,1,2,25.50),(2,1,2,1,15.75),(3,2,3,3,30.00),(4,2,4,2,20.00),(5,3,1,1,12.00),(6,3,5,4,40.50);
/*!40000 ALTER TABLE `orderItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderStatus`
--

DROP TABLE IF EXISTS `orderStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderStatus`
--

LOCK TABLES `orderStatus` WRITE;
/*!40000 ALTER TABLE `orderStatus` DISABLE KEYS */;
INSERT INTO `orderStatus` VALUES (1,1,'Processing','2024-06-15 10:30:00'),(2,2,'Shipped','2024-06-15 11:45:00'),(3,3,'Delivered','2024-06-15 13:00:00');
/*!40000 ALTER TABLE `orderStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `orderDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-06-15 10:30:00'),(2,2,'2024-06-15 11:45:00'),(3,1,'2024-06-15 13:00:00'),(4,1,'2024-06-15 14:15:00'),(5,2,'2024-06-15 15:30:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'Credit Card','2024-06-15 10:30:00','Paid',50.00),(2,2,'PayPal','2024-06-15 11:45:00','Paid',100.00),(3,3,'Credit Card','2024-06-15 13:00:00','Paid',75.00);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `tags` int(11) NOT NULL,
  `supp_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_supplier` (`supp_id`),
  KEY `fk_product_category` (`categoryId`),
  KEY `idx_products_category` (`categoryId`),
  KEY `idx_products_supplier` (`supp_id`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,1,'2024-06-24 17:42:42'),(2,'Garlic Bread','Toasted garlic bread with herbs and butter',3.99,1,1,2,'2024-06-24 17:42:42'),(3,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,3,'2024-06-24 17:43:07'),(4,'Veggie Burger','Delicious veggie burger with lettuce, tomato, and cheese',9.99,2,3,4,'2024-06-24 17:43:26'),(5,'Chocolate Cake','Rich chocolate cake with chocolate frosting',6.99,3,6,5,'2024-06-25 15:56:17'),(6,'Apple Pie','Classic apple pie with a flaky crust',5.49,3,6,6,'2024-06-25 15:56:17'),(7,'Lemonade','Refreshing homemade lemonade',2.99,4,4,7,'2024-06-24 17:46:16'),(8,'Iced Tea','Chilled iced tea with a hint of lemon',2.49,4,4,8,'2024-06-24 17:46:16'),(9,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,2,'2024-06-25 16:07:02'),(10,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,3,'2024-06-25 16:07:26'),(11,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,4,'2024-06-25 16:09:58'),(12,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,5,'2024-06-25 16:09:58'),(13,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,5,'2024-06-25 16:09:58'),(14,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,6,'2024-06-25 16:09:58'),(15,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,7,'2024-06-25 16:09:58'),(16,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,8,'2024-06-25 16:09:58'),(17,'Spring Rolls','Crispy vegetable spring rolls served with dipping sauce',5.99,1,1,9,'2024-06-25 16:09:58'),(18,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,3,'2024-06-25 16:11:13'),(19,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,4,'2024-06-25 16:11:13'),(20,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,5,'2024-06-25 16:11:13'),(21,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,8,'2024-06-25 16:11:13'),(22,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,1,'2024-06-25 16:11:13'),(23,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,9,'2024-06-25 16:11:13'),(24,'Grilled Chicken','Juicy grilled chicken breast served with vegetables',12.99,2,2,10,'2024-06-25 16:11:13'),(25,'Lemonade','Refreshing homemade lemonade',2.99,4,4,1,'2024-06-25 16:13:10'),(26,'Lemonade','Refreshing homemade lemonade',2.99,4,4,2,'2024-06-25 16:13:10'),(27,'Lemonade','Refreshing homemade lemonade',2.99,4,4,3,'2024-06-25 16:13:10'),(28,'Lemonade','Refreshing homemade lemonade',2.99,4,4,4,'2024-06-25 16:13:10'),(29,'Lemonade','Refreshing homemade lemonade',2.99,4,4,5,'2024-06-25 16:13:10'),(30,'Lemonade','Refreshing homemade lemonade',2.99,4,4,6,'2024-06-25 16:13:10'),(31,'Lemonade','Refreshing homemade lemonade',2.99,4,4,9,'2024-06-25 16:13:10');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'bad'),(2,'not bad'),(3,'good'),(4,'better'),(5,'best');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `returnItemDetails`
--

DROP TABLE IF EXISTS `returnItemDetails`;
/*!50001 DROP VIEW IF EXISTS `returnItemDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `returnItemDetails` AS SELECT 
 1 AS `Order Id`,
 1 AS `Customer Name`,
 1 AS `Product Name`,
 1 AS `Product Price`,
 1 AS `Reason`,
 1 AS `Order Date`,
 1 AS `Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `returnItems`
--

DROP TABLE IF EXISTS `returnItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returnItems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderItemId` int(11) NOT NULL,
  `returnDate` datetime DEFAULT NULL,
  `reason` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderItemId` (`orderItemId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnItems`
--

LOCK TABLES `returnItems` WRITE;
/*!40000 ALTER TABLE `returnItems` DISABLE KEYS */;
INSERT INTO `returnItems` VALUES (1,1,'2024-06-20 10:00:00','Wrong size'),(2,3,'2024-06-21 09:30:00','Defective'),(3,6,'2024-06-22 14:00:00','Changed mind');
/*!40000 ALTER TABLE `returnItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `shipping_address` varchar(100) DEFAULT NULL,
  `shipping_method` varchar(100) DEFAULT NULL,
  `shipping_status` varchar(100) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (1,1,'123 Main St, Anytown, USA','Standard Shipping','Shipped','2024-06-16 10:00:00'),(2,2,'456 Elm St, Othertown, USA','Express Shipping','In Transit','2024-06-16 12:00:00'),(3,3,'789 Oak St, Newcity, USA','Standard Shipping','Delivered','2024-06-17 09:00:00');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Alpha Supply Co.','123 Industrial Way, Springfield, IL','contact@alphasupply.com','2024-01-15 08:30:00'),(2,'Beta Traders Inc.','456 Commerce Blvd, Metropolis, NY','sales@betatraders.com','2024-02-20 09:45:00'),(3,'Gamma Goods Ltd.','789 Market St, Gotham, NJ','info@gammagoods.com','2024-03-25 13:20:00'),(4,'Delta Distributors','101 Wholesale Rd, Smallville, KS','support@deltadistributors.com','2024-04-30 14:00:00'),(5,'Epsilon Enterprises','202 Retail Park, Star City, CA','contact@epsilonenterprises.com','2024-05-05 10:30:00'),(6,'Zeta Supply Chain','303 Distribution Ave, Central City, FL','service@zetasupplychain.com','2024-06-10 09:00:00'),(7,'Eta Wholesale','404 Supplier St, Coast City, OR','info@etawholesale.com','2024-07-15 06:20:00'),(8,'Theta Trade Corp.','505 Vendor Pl, Hub City, TX','sales@thetatrade.com','2024-08-20 13:50:00'),(9,'Iota Imports','606 Export Way, Fawcett City, PA','contact@iotaimports.com','2024-09-25 11:40:00'),(10,'Kappa Supplies','707 Logistics Ln, Ivy Town, MA','support@kappasupplies.com','2024-10-30 16:25:00');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'vegetarian, starter'),(2,'non-vegetarian, main course'),(3,'vegetarian, main course'),(6,'vegetarian, dessert'),(5,'vegetarian, beverage');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `orderDetails`
--

/*!50001 DROP VIEW IF EXISTS `orderDetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`inquire`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderDetails` AS select `o`.`id` AS `order_id`,`o`.`customer_id` AS `customer_id`,`c`.`name` AS `Customer Name`,`o`.`orderDateTime` AS `orderDateTime`,`oi`.`id` AS `order_item_id`,`oi`.`prod_id` AS `prod_id`,`p`.`name` AS `Product Name`,`oi`.`quantity` AS `quantity`,`oi`.`price` AS `price` from (((`orders` `o` join `orderItems` `oi` on((`o`.`id` = `oi`.`order_id`))) join `customers` `c` on((`o`.`customer_id` = `c`.`id`))) join `products` `p` on((`oi`.`prod_id` = `p`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `returnItemDetails`
--

/*!50001 DROP VIEW IF EXISTS `returnItemDetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`inquire`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `returnItemDetails` AS select `o`.`id` AS `Order Id`,`c`.`name` AS `Customer Name`,`p`.`name` AS `Product Name`,`p`.`price` AS `Product Price`,`ri`.`reason` AS `Reason`,`o`.`orderDateTime` AS `Order Date`,`oi`.`quantity` AS `Quantity` from ((((`returnItems` `ri` join `orderItems` `oi` on((`oi`.`id` = `ri`.`orderItemId`))) join `orders` `o` on((`o`.`id` = `oi`.`order_id`))) join `customers` `c` on((`o`.`customer_id` = `c`.`id`))) join `products` `p` on((`oi`.`prod_id` = `p`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-28 17:55:37
