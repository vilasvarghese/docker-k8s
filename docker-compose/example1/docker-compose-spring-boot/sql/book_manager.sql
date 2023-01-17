# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.6-MariaDB)
# Database: book_manager
# Generation Time: 2019-09-15 19:12:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `author`;

CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `background` text DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DELETED') DEFAULT 'ACTIVE',
  `photo_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;

INSERT INTO `author` (`id`, `name`, `email`, `mobile`, `address`, `birthdate`, `country`, `background`, `biography`, `nickname`, `created`, `updated`, `created_by`, `updated_by`, `status`, `photo_url`)
VALUES
	(1,'Vilas Varghese','vilas_varghese@yahoo.com','919731588933',NULL,'2019-07-21',NULL,NULL,NULL,NULL,NULL,NULL,'rrr',NULL,'ACTIVE',NULL),
	(2,'Vilas Varghese','vilas_varghese@yahoo.com','919731588933',NULL,'2019-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL),
	(3,'Vilas Varghese','vilas_varghese@yahoo.com','919731588933','Dhaka','1988-12-12','BD','BB','BB','kjkjl',NULL,'2019-07-27 11:23:42',NULL,NULL,'ACTIVE',NULL),
	(4,'','vilas_varghese@yahoo.com','919731588933',NULL,'2019-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL),
	(5,'','vilas_varghese@yahoo.com','919731588933',NULL,'2019-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL),
	(6,'oiuiouio','vilas_varghese@yahoo.com','919731588933',NULL,'2099-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL),
	(7,'Mitun Deb','vilas_varghese@yahoo.com','919731588933',NULL,'2019-07-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACTIVE',NULL),
	(8,'Lovely Banik','vilas_varghese@yahoo.com','919731588933',NULL,'2019-07-21',NULL,NULL,NULL,NULL,NULL,'2019-07-24 20:43:32',NULL,NULL,'DELETED',NULL),
	(9,'Lovely Banik','vilas_varghese@yahoo.com','919731588933','wqeqw','2019-07-21','weqwe','eqw','qweqw','wq',NULL,'2019-07-27 11:46:10',NULL,NULL,'ACTIVE',NULL),
	(10,'Lovely Banik Sumi','vilas_varghese@yahoo.com','919731588933','Dhaka','2019-07-10','Bangladesh','Lovely\'s Background','Lovely\'s Biography','SUMI',NULL,'2019-07-27 11:22:56',NULL,NULL,'ACTIVE',NULL),
	(11,'Sanjoy Kumer Dey','sanjoyd.cse@gmail','919731588933','Dhaka','2018-12-12','Bangladesh','Sanjoy Background','Sanjoy Biography','sanju',NULL,'2019-07-27 11:21:49',NULL,NULL,'ACTIVE',NULL),
	(12,'Kakoli','kakoli@gmail.com','01718989898','jghjhjk','2019-07-11','Bangladesh','Kakoli Background','Kakoli Biography','koli',NULL,'2019-07-27 11:21:17',NULL,NULL,'ACTIVE',NULL);

/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DELETED') DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `isbn` varchar(45) NOT NULL,
  `overview` text DEFAULT NULL,
  `date_of_publish` datetime NOT NULL,
  `date_of_repring` datetime NOT NULL,
  `acknowledgement` text DEFAULT NULL,
  `copyright` varchar(255) NOT NULL,
  `fact` text DEFAULT NULL,
  `printed_by` varchar(45) NOT NULL,
  `cover_designer` varchar(45) NOT NULL,
  `cover_photo_url` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;

INSERT INTO `book` (`id`, `created`, `updated`, `created_by`, `updated_by`, `status`, `name`, `isbn`, `overview`, `date_of_publish`, `date_of_repring`, `acknowledgement`, `copyright`, `fact`, `printed_by`, `cover_designer`, `cover_photo_url`, `price`)
VALUES
	(1,'2019-07-28 01:41:22',NULL,NULL,NULL,'ACTIVE','Spring','Online','7957678','2019-07-21 06:00:00','2019-07-21 06:00:00','Acknowledgement','Copyright@Sanjoy','hohohoh','HHH','Rajib','kjhkjhk',77777);

/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table book_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book_author`;

CREATE TABLE `book_author` (
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  KEY `FKbjqhp85wjv8vpr0beygh6jsgo` (`author_id`),
  KEY `FKhwgu59n9o80xv75plf9ggj7xn` (`book_id`),
  CONSTRAINT `FKbjqhp85wjv8vpr0beygh6jsgo` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  CONSTRAINT `FKhwgu59n9o80xv75plf9ggj7xn` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;

INSERT INTO `book_author` (`book_id`, `author_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table book_publisher
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book_publisher`;

CREATE TABLE `book_publisher` (
  `book_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  KEY `FKnihk8b6sfx2mvtstq87wpjsfu` (`publisher_id`),
  KEY `FK8ywuvxfycghsfmxvu363jllpq` (`book_id`),
  CONSTRAINT `FK8ywuvxfycghsfmxvu363jllpq` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKnihk8b6sfx2mvtstq87wpjsfu` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `book_publisher` WRITE;
/*!40000 ALTER TABLE `book_publisher` DISABLE KEYS */;

INSERT INTO `book_publisher` (`book_id`, `publisher_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `book_publisher` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table book_tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `book_tag`;

CREATE TABLE `book_tag` (
  `book_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `FKrxw4xl05l6ns1763bq284e7m2` (`tag_id`),
  KEY `FKdrc33u5ufw8rdvajeveowgx7g` (`book_id`),
  CONSTRAINT `FKdrc33u5ufw8rdvajeveowgx7g` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKrxw4xl05l6ns1763bq284e7m2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `book_tag` WRITE;
/*!40000 ALTER TABLE `book_tag` DISABLE KEYS */;

INSERT INTO `book_tag` (`book_id`, `tag_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `book_tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bookshelf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bookshelf`;

CREATE TABLE `bookshelf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `capability` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DELETED') DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bookshelf` WRITE;
/*!40000 ALTER TABLE `bookshelf` DISABLE KEYS */;

INSERT INTO `bookshelf` (`id`, `name`, `category`, `capability`, `created`, `updated`, `created_by`, `updated_by`, `status`)
VALUES
	(1,'Spring','Youtube',32,'2019-07-29 00:23:48',NULL,NULL,NULL,'ACTIVE');

/*!40000 ALTER TABLE `bookshelf` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table publisher
# ------------------------------------------------------------

DROP TABLE IF EXISTS `publisher`;

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_mobile` varchar(45) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook_page` varchar(255) DEFAULT NULL,
  `about` varchar(45) DEFAULT NULL,
  `background` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DELETED') DEFAULT 'ACTIVE',
  `photo_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;

INSERT INTO `publisher` (`id`, `name`, `address`, `mobile`, `email`, `contact_person_name`, `contact_person_mobile`, `website`, `facebook_page`, `about`, `background`, `created`, `updated`, `created_by`, `updated_by`, `status`, `photo_url`)
VALUES
	(1,'Onnorokom','Kawran bazar','77978687687687',NULL,'ajhgjh','46467576576567',NULL,NULL,NULL,NULL,'2019-07-26 23:28:16',NULL,NULL,NULL,NULL,NULL),
	(2,'Prothoma','Kawran bazar','77978687687687',NULL,'ajhgjh','46467576576567',NULL,NULL,NULL,NULL,'2019-07-26 23:29:02',NULL,NULL,NULL,NULL,NULL),
	(3,'Prothoma','Kawran bazar','77978687687687',NULL,'ajhgjh','46467576576567',NULL,NULL,NULL,NULL,'2019-07-26 23:33:14',NULL,NULL,NULL,'ACTIVE',NULL),
	(4,'Proma','Kawran bazar','77978687687687',NULL,'ajhgjh','46467576576567',NULL,NULL,NULL,NULL,'2019-07-27 00:22:01',NULL,NULL,NULL,'ACTIVE',NULL);

/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DELETED') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;

INSERT INTO `tag` (`id`, `name`, `category`, `status`, `created`, `updated`, `created_by`, `updated_by`)
VALUES
	(1,'Spring','Online','ACTIVE','2019-07-27 21:58:13',NULL,NULL,NULL);

/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

