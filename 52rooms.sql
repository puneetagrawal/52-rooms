-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.11.10.1


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema f2r_development
--

CREATE DATABASE IF NOT EXISTS f2r_development;
USE f2r_development;

--
-- Definition of table `f2r_development`.`f2r_hotel_inventory_items`
--

DROP TABLE IF EXISTS `f2r_development`.`f2r_hotel_inventory_items`;
CREATE TABLE  `f2r_development`.`f2r_hotel_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cost_price` int(11) DEFAULT NULL,
  `room_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available_from` date DEFAULT NULL,
  `available_to` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `count_on_hand` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`f2r_hotel_inventory_items`
--

/*!40000 ALTER TABLE `f2r_hotel_inventory_items` DISABLE KEYS */;
LOCK TABLES `f2r_hotel_inventory_items` WRITE;
INSERT INTO `f2r_development`.`f2r_hotel_inventory_items` VALUES  (6,2,300,400,'1','2012-12-24','2012-12-27','2012-12-13 09:51:27','2012-12-13 10:00:23',6),
 (7,3,455,458,'2','2013-01-01','2012-01-10','2013-01-09 10:12:47','2013-01-09 10:14:05',45),
 (9,3,65,98,'2','2013-01-01','2012-01-09','2013-01-09 10:42:41','2013-01-09 10:48:40',89),
 (10,3,89,897,'2','2013-01-01','2012-01-09','2013-01-09 10:42:41','2013-01-09 10:49:24',45);
UNLOCK TABLES;
/*!40000 ALTER TABLE `f2r_hotel_inventory_items` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`schema_migrations`
--

DROP TABLE IF EXISTS `f2r_development`.`schema_migrations`;
CREATE TABLE  `f2r_development`.`schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `f2r_development`.`schema_migrations` VALUES  ('20121030062943'),
 ('20121030062944'),
 ('20121030062945'),
 ('20121030062946'),
 ('20121030062947'),
 ('20121030062948'),
 ('20121030062949'),
 ('20121030062950'),
 ('20121030062951'),
 ('20121030062952'),
 ('20121030062953'),
 ('20121030062954'),
 ('20121030062955'),
 ('20121030062956'),
 ('20121030062957'),
 ('20121030062958'),
 ('20121030062959'),
 ('20121030062960'),
 ('20121030062961'),
 ('20121030062962'),
 ('20121030062963'),
 ('20121030062964'),
 ('20121030062965'),
 ('20121030062966'),
 ('20121030062967'),
 ('20121030062968'),
 ('20121030062969'),
 ('20121030062970'),
 ('20121030062971'),
 ('20121030062972'),
 ('20121030062973'),
 ('20121030062974'),
 ('20121030062975'),
 ('20121030062976'),
 ('20121030062977'),
 ('20121030062978'),
 ('20121030062979'),
 ('20121030062980'),
 ('20121030062981'),
 ('20121030062982'),
 ('20121030062983'),
 ('20121030062984'),
 ('20121030062985'),
 ('20121030062986'),
 ('20121030062987'),
 ('20121030062988'),
 ('20121030062989'),
 ('20121030062990'),
 ('20121030062991'),
 ('20121030062992'),
 ('20121030062993'),
 ('20121030062994'),
 ('20121030062995'),
 ('20121030062996'),
 ('20121030062997'),
 ('20121030062998'),
 ('20121030062999'),
 ('20121030063000'),
 ('20121030063001'),
 ('20121030063002'),
 ('20121030063003'),
 ('20121030063004'),
 ('20121030063005'),
 ('20121030063006'),
 ('20121030063007'),
 ('20121030063008'),
 ('20121030063009'),
 ('20121030063010'),
 ('20121030063011'),
 ('20121030063012'),
 ('20121030063013'),
 ('20121030063014'),
 ('20121030063015'),
 ('20121030063016'),
 ('20121030063017'),
 ('20121030063018'),
 ('20121030063019'),
 ('20121030063020'),
 ('20121030063021'),
 ('20121030063022'),
 ('20121030063023'),
 ('20121030063024'),
 ('20121030063025'),
 ('20121030063026'),
 ('20121030063027'),
 ('20121030063028'),
 ('20121030063029'),
 ('20121030063030'),
 ('20121030063031'),
 ('20121030063032'),
 ('20121030063033'),
 ('20121030063034'),
 ('20121030063035'),
 ('20121030063036'),
 ('20121030063037'),
 ('20121030063038'),
 ('20121030063039'),
 ('20121030063040'),
 ('20121030063041'),
 ('20121030063042'),
 ('20121030063043'),
 ('20121030063044'),
 ('20121030063045'),
 ('20121030063046'),
 ('20121030063047'),
 ('20121030063048'),
 ('20121030063049'),
 ('20121030063050'),
 ('20121030063051'),
 ('20121030063052'),
 ('20121030063053'),
 ('20121030063054'),
 ('20121030063055'),
 ('20121030063056'),
 ('20121030063057'),
 ('20121030063058'),
 ('20121030063059'),
 ('20121030063060'),
 ('20121030063061'),
 ('20121030063062'),
 ('20121030063063'),
 ('20121030063064'),
 ('20121030063065'),
 ('20121030063066'),
 ('20121030063067'),
 ('20121030063068'),
 ('20121030063069'),
 ('20121030063070'),
 ('20121030063071'),
 ('20121030063072'),
 ('20121030063739'),
 ('20121030063837'),
 ('20121030063913'),
 ('20121030063936'),
 ('20121030064002'),
 ('20121030064105'),
 ('20121030064145'),
 ('20121030064803'),
 ('20121030082658'),
 ('20121122084123'),
 ('20121122093147'),
 ('20121122093343'),
 ('20121123110417'),
 ('20121123145559'),
 ('20121126073615'),
 ('20121126073616');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_activators`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_activators`;
CREATE TABLE  `f2r_development`.`spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'all',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_activators`
--

/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
LOCK TABLES `spree_activators` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_addresses`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_addresses`;
CREATE TABLE  `f2r_development`.`spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_addresses`
--

/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
LOCK TABLES `spree_addresses` WRITE;
INSERT INTO `f2r_development`.`spree_addresses` VALUES  (1,'ghj','jhg','jhg','gfhj','ghj','fghj','fghj',NULL,NULL,17199670,214,'2012-12-13 10:05:14','2012-12-13 10:05:14',NULL),
 (2,'ghj','jhg','jhg','gfhj','ghj','fghj','fghj',NULL,NULL,17199670,214,'2012-12-13 10:05:14','2012-12-13 10:05:14',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_adjustments`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_adjustments`;
CREATE TABLE  `f2r_development`.`spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `adjustable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_adjustments`
--

/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
LOCK TABLES `spree_adjustments` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_assets`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_assets`;
CREATE TABLE  `f2r_development`.`spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `viewable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_assets`
--

/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
LOCK TABLES `spree_assets` WRITE;
INSERT INTO `f2r_development`.`spree_assets` VALUES  (1,2,78,40,4274,1,'Spree::Variant','image/png','done_button_tag_songs.png','Spree::Image','2012-12-13 09:53:11',''),
 (2,18,116,34,10010,1,'Spree::Variant','image/png','latest.png','Spree::Image','2013-01-09 10:16:12','Second Hotel'),
 (3,19,116,34,10010,1,'Spree::Variant','image/png','latest.png','Spree::Image','2013-01-09 10:33:38','Second Hotel');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_authentication_methods`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_authentication_methods`;
CREATE TABLE  `f2r_development`.`spree_authentication_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_authentication_methods`
--

/*!40000 ALTER TABLE `spree_authentication_methods` DISABLE KEYS */;
LOCK TABLES `spree_authentication_methods` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_authentication_methods` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_calculators`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_calculators`;
CREATE TABLE  `f2r_development`.`spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calculable_id` int(11) NOT NULL,
  `calculable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_calculators`
--

/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
LOCK TABLES `spree_calculators` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_configurations`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_configurations`;
CREATE TABLE  `f2r_development`.`spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_configurations`
--

/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
LOCK TABLES `spree_configurations` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_countries`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_countries`;
CREATE TABLE  `f2r_development`.`spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_countries`
--

/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
LOCK TABLES `spree_countries` WRITE;
INSERT INTO `f2r_development`.`spree_countries` VALUES  (1,'AFGHANISTAN','AF','AFG','Afghanistan',4),
 (2,'ALBANIA','AL','ALB','Albania',8),
 (3,'ALGERIA','DZ','DZA','Algeria',12),
 (4,'AMERICAN SAMOA','AS','ASM','American Samoa',16),
 (5,'ANDORRA','AD','AND','Andorra',20),
 (6,'ANGOLA','AO','AGO','Angola',24),
 (7,'ANGUILLA','AI','AIA','Anguilla',660),
 (8,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28),
 (9,'ARGENTINA','AR','ARG','Argentina',32),
 (10,'ARMENIA','AM','ARM','Armenia',51),
 (11,'ARUBA','AW','ABW','Aruba',533),
 (12,'AUSTRALIA','AU','AUS','Australia',36),
 (13,'AUSTRIA','AT','AUT','Austria',40),
 (14,'AZERBAIJAN','AZ','AZE','Azerbaijan',31),
 (15,'BAHAMAS','BS','BHS','Bahamas',44),
 (16,'BAHRAIN','BH','BHR','Bahrain',48),
 (17,'BANGLADESH','BD','BGD','Bangladesh',50),
 (18,'BARBADOS','BB','BRB','Barbados',52),
 (19,'BELARUS','BY','BLR','Belarus',112),
 (20,'BELGIUM','BE','BEL','Belgium',56),
 (21,'BELIZE','BZ','BLZ','Belize',84),
 (22,'BENIN','BJ','BEN','Benin',204),
 (23,'BERMUDA','BM','BMU','Bermuda',60),
 (24,'BHUTAN','BT','BTN','Bhutan',64),
 (25,'BOLIVIA','BO','BOL','Bolivia',68),
 (26,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70),
 (27,'BOTSWANA','BW','BWA','Botswana',72),
 (28,'BRAZIL','BR','BRA','Brazil',76),
 (29,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96),
 (30,'BULGARIA','BG','BGR','Bulgaria',100),
 (31,'BURKINA FASO','BF','BFA','Burkina Faso',854),
 (32,'BURUNDI','BI','BDI','Burundi',108),
 (33,'CAMBODIA','KH','KHM','Cambodia',116),
 (34,'CAMEROON','CM','CMR','Cameroon',120),
 (35,'CANADA','CA','CAN','Canada',124),
 (36,'CAPE VERDE','CV','CPV','Cape Verde',132),
 (37,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136),
 (38,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140),
 (39,'CHAD','TD','TCD','Chad',148),
 (40,'CHILE','CL','CHL','Chile',152),
 (41,'CHINA','CN','CHN','China',156),
 (42,'COLOMBIA','CO','COL','Colombia',170),
 (43,'COMOROS','KM','COM','Comoros',174),
 (44,'CONGO','CG','COG','Congo',178),
 (45,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180),
 (46,'COOK ISLANDS','CK','COK','Cook Islands',184),
 (47,'COSTA RICA','CR','CRI','Costa Rica',188),
 (48,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384),
 (49,'CROATIA','HR','HRV','Croatia',191),
 (50,'CUBA','CU','CUB','Cuba',192),
 (51,'CYPRUS','CY','CYP','Cyprus',196),
 (52,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203),
 (53,'DENMARK','DK','DNK','Denmark',208),
 (54,'DJIBOUTI','DJ','DJI','Djibouti',262),
 (55,'DOMINICA','DM','DMA','Dominica',212),
 (56,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214),
 (57,'ECUADOR','EC','ECU','Ecuador',218),
 (58,'EGYPT','EG','EGY','Egypt',818),
 (59,'EL SALVADOR','SV','SLV','El Salvador',222),
 (60,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226),
 (61,'ERITREA','ER','ERI','Eritrea',232),
 (62,'ESTONIA','EE','EST','Estonia',233),
 (63,'ETHIOPIA','ET','ETH','Ethiopia',231),
 (64,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238),
 (65,'FAROE ISLANDS','FO','FRO','Faroe Islands',234),
 (66,'FIJI','FJ','FJI','Fiji',242),
 (67,'FINLAND','FI','FIN','Finland',246),
 (68,'FRANCE','FR','FRA','France',250),
 (69,'FRENCH GUIANA','GF','GUF','French Guiana',254),
 (70,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258),
 (71,'GABON','GA','GAB','Gabon',266),
 (72,'GAMBIA','GM','GMB','Gambia',270),
 (73,'GEORGIA','GE','GEO','Georgia',268),
 (74,'GERMANY','DE','DEU','Germany',276),
 (75,'GHANA','GH','GHA','Ghana',288),
 (76,'GIBRALTAR','GI','GIB','Gibraltar',292),
 (77,'GREECE','GR','GRC','Greece',300),
 (78,'GREENLAND','GL','GRL','Greenland',304),
 (79,'GRENADA','GD','GRD','Grenada',308),
 (80,'GUADELOUPE','GP','GLP','Guadeloupe',312),
 (81,'GUAM','GU','GUM','Guam',316),
 (82,'GUATEMALA','GT','GTM','Guatemala',320),
 (83,'GUINEA','GN','GIN','Guinea',324),
 (84,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624),
 (85,'GUYANA','GY','GUY','Guyana',328),
 (86,'HAITI','HT','HTI','Haiti',332),
 (87,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336),
 (88,'HONDURAS','HN','HND','Honduras',340),
 (89,'HONG KONG','HK','HKG','Hong Kong',344),
 (90,'HUNGARY','HU','HUN','Hungary',348),
 (91,'ICELAND','IS','ISL','Iceland',352),
 (92,'INDIA','IN','IND','India',356),
 (93,'INDONESIA','ID','IDN','Indonesia',360),
 (94,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364),
 (95,'IRAQ','IQ','IRQ','Iraq',368),
 (96,'IRELAND','IE','IRL','Ireland',372),
 (97,'ISRAEL','IL','ISR','Israel',376),
 (98,'ITALY','IT','ITA','Italy',380),
 (99,'JAMAICA','JM','JAM','Jamaica',388),
 (100,'JAPAN','JP','JPN','Japan',392),
 (101,'JORDAN','JO','JOR','Jordan',400),
 (102,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398),
 (103,'KENYA','KE','KEN','Kenya',404),
 (104,'KIRIBATI','KI','KIR','Kiribati',296),
 (105,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408),
 (106,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410),
 (107,'KUWAIT','KW','KWT','Kuwait',414),
 (108,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417),
 (109,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418),
 (110,'LATVIA','LV','LVA','Latvia',428),
 (111,'LEBANON','LB','LBN','Lebanon',422),
 (112,'LESOTHO','LS','LSO','Lesotho',426),
 (113,'LIBERIA','LR','LBR','Liberia',430),
 (114,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434),
 (115,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438),
 (116,'LITHUANIA','LT','LTU','Lithuania',440),
 (117,'LUXEMBOURG','LU','LUX','Luxembourg',442),
 (118,'MACAO','MO','MAC','Macao',446),
 (119,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807),
 (120,'MADAGASCAR','MG','MDG','Madagascar',450),
 (121,'MALAWI','MW','MWI','Malawi',454),
 (122,'MALAYSIA','MY','MYS','Malaysia',458),
 (123,'MALDIVES','MV','MDV','Maldives',462),
 (124,'MALI','ML','MLI','Mali',466),
 (125,'MALTA','MT','MLT','Malta',470),
 (126,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584),
 (127,'MARTINIQUE','MQ','MTQ','Martinique',474),
 (128,'MAURITANIA','MR','MRT','Mauritania',478),
 (129,'MAURITIUS','MU','MUS','Mauritius',480),
 (130,'MEXICO','MX','MEX','Mexico',484),
 (131,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583),
 (132,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498),
 (133,'MONACO','MC','MCO','Monaco',492),
 (134,'MONGOLIA','MN','MNG','Mongolia',496),
 (135,'MONTSERRAT','MS','MSR','Montserrat',500),
 (136,'MOROCCO','MA','MAR','Morocco',504),
 (137,'MOZAMBIQUE','MZ','MOZ','Mozambique',508),
 (138,'MYANMAR','MM','MMR','Myanmar',104),
 (139,'NAMIBIA','NA','NAM','Namibia',516),
 (140,'NAURU','NR','NRU','Nauru',520),
 (141,'NEPAL','NP','NPL','Nepal',524),
 (142,'NETHERLANDS','NL','NLD','Netherlands',528),
 (143,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530),
 (144,'NEW CALEDONIA','NC','NCL','New Caledonia',540),
 (145,'NEW ZEALAND','NZ','NZL','New Zealand',554),
 (146,'NICARAGUA','NI','NIC','Nicaragua',558),
 (147,'NIGER','NE','NER','Niger',562),
 (148,'NIGERIA','NG','NGA','Nigeria',566),
 (149,'NIUE','NU','NIU','Niue',570),
 (150,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574),
 (151,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580),
 (152,'NORWAY','NO','NOR','Norway',578),
 (153,'OMAN','OM','OMN','Oman',512),
 (154,'PAKISTAN','PK','PAK','Pakistan',586),
 (155,'PALAU','PW','PLW','Palau',585),
 (156,'PANAMA','PA','PAN','Panama',591),
 (157,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598),
 (158,'PARAGUAY','PY','PRY','Paraguay',600),
 (159,'PERU','PE','PER','Peru',604),
 (160,'PHILIPPINES','PH','PHL','Philippines',608),
 (161,'PITCAIRN','PN','PCN','Pitcairn',612),
 (162,'POLAND','PL','POL','Poland',616),
 (163,'PORTUGAL','PT','PRT','Portugal',620),
 (164,'PUERTO RICO','PR','PRI','Puerto Rico',630),
 (165,'QATAR','QA','QAT','Qatar',634),
 (166,'REUNION','RE','REU','Reunion',638),
 (167,'ROMANIA','RO','ROM','Romania',642),
 (168,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643),
 (169,'RWANDA','RW','RWA','Rwanda',646),
 (170,'SAINT HELENA','SH','SHN','Saint Helena',654),
 (171,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659),
 (172,'SAINT LUCIA','LC','LCA','Saint Lucia',662),
 (173,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666),
 (174,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670),
 (175,'SAMOA','WS','WSM','Samoa',882),
 (176,'SAN MARINO','SM','SMR','San Marino',674),
 (177,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678),
 (178,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682),
 (179,'SENEGAL','SN','SEN','Senegal',686),
 (180,'SEYCHELLES','SC','SYC','Seychelles',690),
 (181,'SIERRA LEONE','SL','SLE','Sierra Leone',694),
 (182,'SINGAPORE','SG','SGP','Singapore',702),
 (183,'SLOVAKIA','SK','SVK','Slovakia',703),
 (184,'SLOVENIA','SI','SVN','Slovenia',705),
 (185,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90),
 (186,'SOMALIA','SO','SOM','Somalia',706),
 (187,'SOUTH AFRICA','ZA','ZAF','South Africa',710),
 (188,'SPAIN','ES','ESP','Spain',724),
 (189,'SRI LANKA','LK','LKA','Sri Lanka',144),
 (190,'SUDAN','SD','SDN','Sudan',736),
 (191,'SURINAME','SR','SUR','Suriname',740),
 (192,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744),
 (193,'SWAZILAND','SZ','SWZ','Swaziland',748),
 (194,'SWEDEN','SE','SWE','Sweden',752),
 (195,'SWITZERLAND','CH','CHE','Switzerland',756),
 (196,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760),
 (197,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158),
 (198,'TAJIKISTAN','TJ','TJK','Tajikistan',762),
 (199,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834),
 (200,'THAILAND','TH','THA','Thailand',764),
 (201,'TOGO','TG','TGO','Togo',768),
 (202,'TOKELAU','TK','TKL','Tokelau',772),
 (203,'TONGA','TO','TON','Tonga',776),
 (204,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780),
 (205,'TUNISIA','TN','TUN','Tunisia',788),
 (206,'TURKEY','TR','TUR','Turkey',792),
 (207,'TURKMENISTAN','TM','TKM','Turkmenistan',795),
 (208,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796),
 (209,'TUVALU','TV','TUV','Tuvalu',798),
 (210,'UGANDA','UG','UGA','Uganda',800),
 (211,'UKRAINE','UA','UKR','Ukraine',804),
 (212,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784),
 (213,'UNITED KINGDOM','GB','GBR','United Kingdom',826),
 (214,'UNITED STATES','US','USA','United States',840),
 (215,'URUGUAY','UY','URY','Uruguay',858),
 (216,'UZBEKISTAN','UZ','UZB','Uzbekistan',860),
 (217,'VANUATU','VU','VUT','Vanuatu',548),
 (218,'VENEZUELA','VE','VEN','Venezuela',862),
 (219,'VIET NAM','VN','VNM','Viet Nam',704),
 (220,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92),
 (221,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850),
 (222,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876),
 (223,'WESTERN SAHARA','EH','ESH','Western Sahara',732),
 (224,'YEMEN','YE','YEM','Yemen',887),
 (225,'ZAMBIA','ZM','ZMB','Zambia',894),
 (226,'ZIMBABWE','ZW','ZWE','Zimbabwe',716);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_credit_cards`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_credit_cards`;
CREATE TABLE  `f2r_development`.`spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_digits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `gateway_customer_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_credit_cards`
--

/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
LOCK TABLES `spree_credit_cards` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_date_ranges`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_date_ranges`;
CREATE TABLE  `f2r_development`.`spree_date_ranges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rangeable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rangeable_id` int(11) DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_date_ranges`
--

/*!40000 ALTER TABLE `spree_date_ranges` DISABLE KEYS */;
LOCK TABLES `spree_date_ranges` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_date_ranges` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_gateways`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_gateways`;
CREATE TABLE  `f2r_development`.`spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `server` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_gateways`
--

/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
LOCK TABLES `spree_gateways` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_inventory_units`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_inventory_units`;
CREATE TABLE  `f2r_development`.`spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lock_version` int(11) DEFAULT '0',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_inventory_units`
--

/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
LOCK TABLES `spree_inventory_units` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_line_items`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_line_items`;
CREATE TABLE  `f2r_development`.`spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_line_items`
--

/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
LOCK TABLES `spree_line_items` WRITE;
INSERT INTO `f2r_development`.`spree_line_items` VALUES  (2,1,14,1,'300.00','2012-12-13 10:00:45','2012-12-13 10:00:45');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_log_entries`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_log_entries`;
CREATE TABLE  `f2r_development`.`spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_log_entries`
--

/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
LOCK TABLES `spree_log_entries` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_mail_methods`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_mail_methods`;
CREATE TABLE  `f2r_development`.`spree_mail_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_mail_methods`
--

/*!40000 ALTER TABLE `spree_mail_methods` DISABLE KEYS */;
LOCK TABLES `spree_mail_methods` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_mail_methods` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_option_types`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_option_types`;
CREATE TABLE  `f2r_development`.`spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_option_types`
--

/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
LOCK TABLES `spree_option_types` WRITE;
INSERT INTO `f2r_development`.`spree_option_types` VALUES  (1,'Room Type','Room / Bed Type','2012-12-13 07:12:27','2012-12-13 07:12:27',0),
 (2,'Coupon Options','Coupon specific options','2012-12-13 09:22:18','2012-12-13 09:22:18',0),
 (3,'Available on','When is this variant for','2012-12-13 09:24:42','2012-12-13 09:24:42',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_option_types_prototypes`;
CREATE TABLE  `f2r_development`.`spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_option_types_prototypes`
--

/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
LOCK TABLES `spree_option_types_prototypes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_option_values`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_option_values`;
CREATE TABLE  `f2r_development`.`spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_option_values`
--

/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
LOCK TABLES `spree_option_values` WRITE;
INSERT INTO `f2r_development`.`spree_option_values` VALUES  (1,1,'Honeymoon Suite','Honeymoon Suite',1,'2012-12-13 07:13:05','2012-12-13 07:13:05'),
 (2,2,'Single Bed','Single Bed',1,'2012-12-13 07:13:05','2012-12-13 07:13:05'),
 (3,3,'Double Bed','Double Bed',1,'2012-12-13 07:13:05','2012-12-13 07:13:05'),
 (4,1,'duration (days)','5',2,'2012-12-13 09:22:46','2012-12-13 09:22:46'),
 (5,2,'duration (days)','10',2,'2012-12-13 09:22:46','2012-12-13 09:22:46'),
 (6,3,'duration (days)','15',2,'2012-12-13 09:22:46','2012-12-13 09:22:46'),
 (7,1,'date','2013-1-5',3,'2012-12-13 09:25:19','2013-01-09 09:08:33'),
 (8,2,'date','2013-1-6',3,'2012-12-13 09:25:19','2013-01-09 09:08:33'),
 (9,3,'date','2013-1-7',3,'2012-12-13 09:25:19','2013-01-09 09:08:33'),
 (10,4,'date','2013-1-8',3,'2012-12-13 09:57:51','2013-01-09 09:08:33'),
 (11,5,'date','2013-1-9',3,'2012-12-13 09:57:51','2013-01-09 09:08:33'),
 (12,6,'date','2013-1-10',3,'2013-01-09 09:08:33','2013-01-09 09:08:33');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_option_values_variants`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_option_values_variants`;
CREATE TABLE  `f2r_development`.`spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_option_values_variants`
--

/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
LOCK TABLES `spree_option_values_variants` WRITE;
INSERT INTO `f2r_development`.`spree_option_values_variants` VALUES  (3,1),
 (7,1),
 (7,7),
 (12,1),
 (12,8),
 (13,1),
 (13,9),
 (14,1),
 (14,7),
 (15,1),
 (15,8),
 (16,1),
 (16,9),
 (17,1),
 (17,10);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_orders`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_orders`;
CREATE TABLE  `f2r_development`.`spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustment_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(8,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_instructions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_orders`
--

/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
LOCK TABLES `spree_orders` WRITE;
INSERT INTO `f2r_development`.`spree_orders` VALUES  (1,'R406340847','300.00','300.00','payment','0.00',1,'2012-12-13 07:31:52','2012-12-13 10:05:41',NULL,1,2,'0.00',NULL,NULL,'balance_due','deepaktyagi@gmail.com',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_payment_methods`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_payment_methods`;
CREATE TABLE  `f2r_development`.`spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'development',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_payment_methods`
--

/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
LOCK TABLES `spree_payment_methods` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_payments`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_payments`;
CREATE TABLE  `f2r_development`.`spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avs_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_payments`
--

/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
LOCK TABLES `spree_payments` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_pending_promotions`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_pending_promotions`;
CREATE TABLE  `f2r_development`.`spree_pending_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_pending_promotions_on_user_id` (`user_id`),
  KEY `index_spree_pending_promotions_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_pending_promotions`
--

/*!40000 ALTER TABLE `spree_pending_promotions` DISABLE KEYS */;
LOCK TABLES `spree_pending_promotions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_pending_promotions` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_preferences`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_preferences`;
CREATE TABLE  `f2r_development`.`spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_preferences`
--

/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
LOCK TABLES `spree_preferences` WRITE;
INSERT INTO `f2r_development`.`spree_preferences` VALUES  (1,NULL,NULL,NULL,'52 Rooms','2012-12-12 12:45:46','2013-01-09 13:04:16','spree/app_configuration/site_name','string');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_product_groups`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_product_groups`;
CREATE TABLE  `f2r_development`.`spree_product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_groups_on_name` (`name`),
  KEY `index_product_groups_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_product_groups`
--

/*!40000 ALTER TABLE `spree_product_groups` DISABLE KEYS */;
LOCK TABLES `spree_product_groups` WRITE;
INSERT INTO `f2r_development`.`spree_product_groups` VALUES  (1,'GF','gf',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_product_groups` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_product_groups_products`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_product_groups_products`;
CREATE TABLE  `f2r_development`.`spree_product_groups_products` (
  `product_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_product_groups_products`
--

/*!40000 ALTER TABLE `spree_product_groups_products` DISABLE KEYS */;
LOCK TABLES `spree_product_groups_products` WRITE;
INSERT INTO `f2r_development`.`spree_product_groups_products` VALUES  (1,1),
 (2,1),
 (3,1),
 (4,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_product_groups_products` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_product_option_types`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_product_option_types`;
CREATE TABLE  `f2r_development`.`spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_product_option_types`
--

/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
LOCK TABLES `spree_product_option_types` WRITE;
INSERT INTO `f2r_development`.`spree_product_option_types` VALUES  (1,1,1,1,'2012-12-13 07:17:31','2012-12-13 07:17:31'),
 (3,2,1,1,'2012-12-13 07:26:20','2012-12-13 07:26:20'),
 (7,1,2,1,'2012-12-13 09:30:24','2012-12-13 09:30:24'),
 (9,2,2,1,'2012-12-13 09:51:26','2012-12-13 09:51:26'),
 (11,3,2,1,'2012-12-13 09:52:10','2012-12-13 09:52:10'),
 (13,4,2,1,'2012-12-13 09:59:24','2012-12-13 09:59:24'),
 (15,5,2,1,'2012-12-13 10:00:23','2012-12-13 10:00:23'),
 (16,6,2,1,'2012-12-13 10:01:19','2012-12-13 10:01:19'),
 (17,7,2,1,'2012-12-13 10:03:01','2012-12-13 10:03:01'),
 (18,8,2,1,'2012-12-13 10:04:45','2012-12-13 10:04:45'),
 (24,1,3,1,'2013-01-09 10:08:48','2013-01-09 10:08:48'),
 (25,2,3,1,'2013-01-09 10:12:47','2013-01-09 10:12:47'),
 (26,3,3,1,'2013-01-09 10:13:48','2013-01-09 10:13:48'),
 (27,4,3,1,'2013-01-09 10:14:05','2013-01-09 10:14:05'),
 (28,1,4,1,'2013-01-09 10:33:40','2013-01-09 10:33:40'),
 (29,2,4,1,'2013-01-09 10:33:40','2013-01-09 10:33:40'),
 (30,5,3,1,'2013-01-09 10:39:15','2013-01-09 10:39:15'),
 (31,6,3,1,'2013-01-09 10:39:57','2013-01-09 10:39:57'),
 (33,7,3,1,'2013-01-09 10:42:40','2013-01-09 10:42:40'),
 (35,8,3,1,'2013-01-09 10:48:40','2013-01-09 10:48:40'),
 (38,9,3,1,'2013-01-09 10:49:24','2013-01-09 10:49:24'),
 (39,10,3,1,'2013-01-09 13:03:25','2013-01-09 13:03:25'),
 (40,11,3,1,'2013-01-09 13:06:15','2013-01-09 13:06:15');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_product_properties`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_product_properties`;
CREATE TABLE  `f2r_development`.`spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_product_properties`
--

/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
LOCK TABLES `spree_product_properties` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_product_scopes`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_product_scopes`;
CREATE TABLE  `f2r_development`.`spree_product_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arguments` text COLLATE utf8_unicode_ci,
  `product_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_scopes_on_name` (`name`),
  KEY `index_product_scopes_on_product_group_id` (`product_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_product_scopes`
--

/*!40000 ALTER TABLE `spree_product_scopes` DISABLE KEYS */;
LOCK TABLES `spree_product_scopes` WRITE;
INSERT INTO `f2r_development`.`spree_product_scopes` VALUES  (1,'ascend_by_updated_at','--- []\n',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_product_scopes` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_products`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_products`;
CREATE TABLE  `f2r_development`.`spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `zoom_level` int(11) DEFAULT NULL,
  `overview` text COLLATE utf8_unicode_ci,
  `location_and_attractions` text COLLATE utf8_unicode_ci,
  `rooms` text COLLATE utf8_unicode_ci,
  `reviews` text COLLATE utf8_unicode_ci,
  `striked_price` int(11) DEFAULT NULL,
  `sale_percent` int(11) DEFAULT NULL,
  `property_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `star_rating` int(11) DEFAULT NULL,
  `flash_start_on` datetime DEFAULT NULL,
  `flash_close_on` datetime DEFAULT NULL,
  `amenities_html` text COLLATE utf8_unicode_ci,
  `product_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_hotel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_holiday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_time` time DEFAULT NULL,
  `checkout_time` time DEFAULT NULL,
  `coupon_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_cost_price` int(11) DEFAULT NULL,
  `coupon_sale_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_policies` text COLLATE utf8_unicode_ci,
  `featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_products`
--

/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
LOCK TABLES `spree_products` WRITE;
INSERT INTO `f2r_development`.`spree_products` VALUES  (2,'First','',NULL,NULL,'first','','',NULL,NULL,'2012-12-13 09:30:24','2012-12-13 10:04:45',42,'','','','Australia',NULL,NULL,NULL,NULL,'','','','',NULL,30,'','---\n- \'\'\n- Bar\n- Business Center\n- Coffee Shop\n',5,'2012-12-13 09:48:00',NULL,'','Flash Sale','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (3,'second','Description','2013-01-09 01:00:00',NULL,'second-hotel','','',NULL,NULL,'2013-01-09 10:08:48','2013-01-09 13:06:15',0,'los angles, alpha - 2 USA','los angles','california','Australia',457898,NULL,NULL,NULL,'Overview','Location','Room','Review',NULL,12,'Home Stay','---\n- \'\'\n- Bar\n- Gym\n',5,'2013-01-09 10:08:00','2013-07-17 16:15:00','Amenities html','Flash Sale','abhinav','three star','natural',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),
 (4,'COPY OF second','','2013-01-09 01:00:00',NULL,'second-hotel-1','','',NULL,NULL,'2013-01-09 10:33:40','2013-01-09 10:33:40',0,'los angles, alpha - 2 USA','los angles','california','Australia',457898,NULL,NULL,NULL,'','','','',NULL,12,'Home Stay','---\n- \'\'\n- Gym\n',5,'2013-01-09 10:08:00','2013-01-17 16:15:00','','Flash Sale','abhinav','three star','natural',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_products_promotion_rules`;
CREATE TABLE  `f2r_development`.`spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_products_promotion_rules`
--

/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
LOCK TABLES `spree_products_promotion_rules` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_products_taxons`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_products_taxons`;
CREATE TABLE  `f2r_development`.`spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_products_taxons`
--

/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
LOCK TABLES `spree_products_taxons` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_promotion_action_line_items`;
CREATE TABLE  `f2r_development`.`spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_promotion_action_line_items`
--

/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
LOCK TABLES `spree_promotion_action_line_items` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_promotion_actions`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_promotion_actions`;
CREATE TABLE  `f2r_development`.`spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_promotion_actions`
--

/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
LOCK TABLES `spree_promotion_actions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_promotion_rules`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_promotion_rules`;
CREATE TABLE  `f2r_development`.`spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_promotion_rules`
--

/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
LOCK TABLES `spree_promotion_rules` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_promotion_rules_users`;
CREATE TABLE  `f2r_development`.`spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_user_id` (`user_id`),
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_promotion_rules_users`
--

/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
LOCK TABLES `spree_promotion_rules_users` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_properties`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_properties`;
CREATE TABLE  `f2r_development`.`spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_properties`
--

/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
LOCK TABLES `spree_properties` WRITE;
INSERT INTO `f2r_development`.`spree_properties` VALUES  (1,'4 seasons','4 seasons','2012-12-13 07:14:13','2012-12-13 07:14:13');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_properties_prototypes`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_properties_prototypes`;
CREATE TABLE  `f2r_development`.`spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_properties_prototypes`
--

/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
LOCK TABLES `spree_properties_prototypes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_prototypes`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_prototypes`;
CREATE TABLE  `f2r_development`.`spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_prototypes`
--

/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
LOCK TABLES `spree_prototypes` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_return_authorizations`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_return_authorizations`;
CREATE TABLE  `f2r_development`.`spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_return_authorizations`
--

/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
LOCK TABLES `spree_return_authorizations` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_roles`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_roles`;
CREATE TABLE  `f2r_development`.`spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=930089100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_roles`
--

/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
LOCK TABLES `spree_roles` WRITE;
INSERT INTO `f2r_development`.`spree_roles` VALUES  (770229923,'user'),
 (930089099,'admin');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_roles_users`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_roles_users`;
CREATE TABLE  `f2r_development`.`spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_roles_users`
--

/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
LOCK TABLES `spree_roles_users` WRITE;
INSERT INTO `f2r_development`.`spree_roles_users` VALUES  (930089099,1),
 (930089099,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_shipments`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_shipments`;
CREATE TABLE  `f2r_development`.`spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_shipments`
--

/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
LOCK TABLES `spree_shipments` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_shipping_categories`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_shipping_categories`;
CREATE TABLE  `f2r_development`.`spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_shipping_categories`
--

/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
LOCK TABLES `spree_shipping_categories` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_shipping_methods`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_shipping_methods`;
CREATE TABLE  `f2r_development`.`spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display_on` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `match_none` tinyint(1) DEFAULT NULL,
  `match_all` tinyint(1) DEFAULT NULL,
  `match_one` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_shipping_methods`
--

/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
LOCK TABLES `spree_shipping_methods` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_skrill_transactions`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_skrill_transactions`;
CREATE TABLE  `f2r_development`.`spree_skrill_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_skrill_transactions`
--

/*!40000 ALTER TABLE `spree_skrill_transactions` DISABLE KEYS */;
LOCK TABLES `spree_skrill_transactions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_skrill_transactions` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_state_changes`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_state_changes`;
CREATE TABLE  `f2r_development`.`spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previous_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `stateful_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_state_changes`
--

/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
LOCK TABLES `spree_state_changes` WRITE;
INSERT INTO `f2r_development`.`spree_state_changes` VALUES  (1,'payment','paid',1,1,'2012-12-13 09:55:36','2012-12-13 09:55:36','Spree::Order','balance_due');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_states`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_states`;
CREATE TABLE  `f2r_development`.`spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1061493586 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_states`
--

/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
LOCK TABLES `spree_states` WRITE;
INSERT INTO `f2r_development`.`spree_states` VALUES  (6764998,'District of Columbia','DC',214),
 (17199670,'Utah','UT',214),
 (37199952,'Louisiana','LA',214),
 (41111624,'Virginia','VA',214),
 (51943165,'North Dakota','ND',214),
 (66390489,'Wyoming','WY',214),
 (69729944,'New Mexico','NM',214),
 (69870734,'Connecticut','CT',214),
 (91367981,'West Virginia','WV',214),
 (103680699,'Wisconsin','WI',214),
 (177087202,'North Carolina','NC',214),
 (179539703,'Nevada','NV',214),
 (199950338,'Hawaii','HI',214),
 (248548169,'Oklahoma','OK',214),
 (267271847,'Florida','FL',214),
 (276110813,'California','CA',214),
 (298914262,'Oregon','OR',214),
 (308473843,'Kentucky','KY',214),
 (385551075,'Massachusetts','MA',214),
 (403740659,'Alaska','AK',214),
 (414569975,'Washington','WA',214),
 (426832442,'New Hampshire','NH',214),
 (471470972,'Arkansas','AR',214),
 (471711976,'Pennsylvania','PA',214),
 (474001862,'Rhode Island','RI',214),
 (480368357,'Maryland','MD',214),
 (485193526,'Ohio','OH',214),
 (525212995,'Texas','TX',214),
 (532363768,'Mississippi','MS',214),
 (536031023,'Colorado','CO',214),
 (597434151,'South Carolina','SC',214),
 (615306087,'South Dakota','SD',214),
 (625629523,'Illinois','IL',214),
 (653576146,'Missouri','MO',214),
 (673350891,'Nebraska','NE',214),
 (721598219,'Delaware','DE',214),
 (726305632,'Tennessee','TN',214),
 (750950030,'New Jersey','NJ',214),
 (769938586,'Indiana','IN',214),
 (825306985,'Iowa','IA',214),
 (876916760,'Georgia','GA',214),
 (889445952,'New York','NY',214),
 (931624400,'Michigan','MI',214),
 (948208802,'Arizona','AZ',214),
 (969722173,'Kansas','KS',214),
 (982433740,'Idaho','ID',214),
 (989115415,'Vermont','VT',214),
 (999156632,'Montana','MT',214),
 (1032288924,'Minnesota','MN',214),
 (1055056709,'Maine','ME',214),
 (1061493585,'Alabama','AL',214);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_store_credits`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_store_credits`;
CREATE TABLE  `f2r_development`.`spree_store_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `remaining_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_store_credits`
--

/*!40000 ALTER TABLE `spree_store_credits` DISABLE KEYS */;
LOCK TABLES `spree_store_credits` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_store_credits` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_tax_categories`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_tax_categories`;
CREATE TABLE  `f2r_development`.`spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_tax_categories`
--

/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
LOCK TABLES `spree_tax_categories` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_tax_rates`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_tax_rates`;
CREATE TABLE  `f2r_development`.`spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_tax_rates`
--

/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
LOCK TABLES `spree_tax_rates` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_taxonomies`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_taxonomies`;
CREATE TABLE  `f2r_development`.`spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_taxonomies`
--

/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
LOCK TABLES `spree_taxonomies` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_taxons`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_taxons`;
CREATE TABLE  `f2r_development`.`spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_taxons`
--

/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
LOCK TABLES `spree_taxons` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_tokenized_permissions`;
CREATE TABLE  `f2r_development`.`spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_tokenized_permissions`
--

/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
LOCK TABLES `spree_tokenized_permissions` WRITE;
INSERT INTO `f2r_development`.`spree_tokenized_permissions` VALUES  (1,1,'Spree::Order','492d402ff5afd366','2012-12-13 07:31:52','2012-12-13 07:31:52');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_trackers`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_trackers`;
CREATE TABLE  `f2r_development`.`spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_trackers`
--

/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
LOCK TABLES `spree_trackers` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_user_authentications`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_user_authentications`;
CREATE TABLE  `f2r_development`.`spree_user_authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_user_authentications`
--

/*!40000 ALTER TABLE `spree_user_authentications` DISABLE KEYS */;
LOCK TABLES `spree_user_authentications` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_user_authentications` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_users`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_users`;
CREATE TABLE  `f2r_development`.`spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `spree_api_key` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  KEY `index_users_on_persistence_token` (`persistence_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_users`
--

/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
LOCK TABLES `spree_users` WRITE;
INSERT INTO `f2r_development`.`spree_users` VALUES  (1,'660e711798e2076d1845ed98534ab690ea4b37343966aae9d081ed9791d869c08722dda56b78696db0414de25965c724cdc226d44c00e535726db280098170a6','JQsHxiEF49QuexrFeDH4','deepaktyagi@gmail.com','YDFbbnPv26BCiPYoFpNH',NULL,NULL,NULL,5,0,NULL,'2013-01-09 07:17:34','2013-01-09 07:16:56','127.0.0.1','127.0.0.1','deepaktyagi@gmail.com',NULL,NULL,'2012-12-12 12:47:35','2013-01-09 07:17:34',NULL,NULL,NULL,NULL,'2013-01-08 09:54:12',NULL),
 (2,'23e7fd487a36871c386b30fe919b6ac43deb071976080d003bdcf9d65f21205f88e5d9b28bf130958b6ba7db9d73239089885dcb2258fade15dd8c56e6594622','yM2F9xH8st5cXjSitsRZ','deepaktyagi36@gmail.com',NULL,NULL,NULL,NULL,1,0,NULL,'2013-01-08 09:48:59','2013-01-08 09:48:59','127.0.0.1','127.0.0.1','deepaktyagi36@gmail.com',NULL,NULL,'2013-01-08 09:48:59','2013-01-08 09:48:59',NULL,NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_variants`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_variants`;
CREATE TABLE  `f2r_development`.`spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `cost_price` decimal(8,2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `available_on` date DEFAULT NULL,
  `f2r_hotel_inventory_item_id` int(11) DEFAULT NULL,
  `f2r_available_on` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_variants`
--

/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
LOCK TABLES `spree_variants` WRITE;
INSERT INTO `f2r_development`.`spree_variants` VALUES  (1,'','0.00',NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,NULL,NULL,NULL,NULL),
 (2,'','0.00',NULL,NULL,NULL,NULL,NULL,1,2,0,NULL,NULL,NULL,NULL,NULL),
 (3,'','20.00',NULL,NULL,NULL,NULL,NULL,0,NULL,6,'30.00',NULL,NULL,NULL,NULL),
 (7,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-11-24'),
 (12,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-11-25'),
 (13,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-11-26'),
 (14,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-12-24'),
 (15,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-12-25'),
 (16,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-12-26'),
 (17,'','300.00',NULL,NULL,NULL,NULL,NULL,0,2,6,'400.00',NULL,NULL,6,'2012-12-27'),
 (18,'','0.00',NULL,NULL,NULL,NULL,NULL,1,3,0,NULL,NULL,NULL,NULL,NULL),
 (19,'COPY OF ','0.00',NULL,NULL,NULL,NULL,NULL,1,4,0,NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_zone_members`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_zone_members`;
CREATE TABLE  `f2r_development`.`spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1017582645 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_zone_members`
--

/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
LOCK TABLES `spree_zone_members` WRITE;
INSERT INTO `f2r_development`.`spree_zone_members` VALUES  (4914820,13,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (5807739,96,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (35022990,188,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (91991191,163,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (120011419,52,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (120937060,117,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (195044517,214,'Spree::Country',2,'2009-06-04 17:22:41','2009-06-04 17:22:41'),
 (244414130,68,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (394938353,162,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (423866172,20,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (424792003,90,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (477297967,184,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (506358563,53,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (507251676,116,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (546142054,142,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (690576312,62,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (691747661,110,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (729140670,183,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (739772837,213,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (776249265,30,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (777453396,74,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (807406092,51,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (808610553,125,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (847027202,167,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (890329113,194,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (929017584,98,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (966149671,67,'Spree::Country',1,'2009-06-04 13:22:26','2009-06-04 13:22:26'),
 (1017582644,35,'Spree::Country',2,'2009-06-04 17:22:41','2009-06-04 17:22:41');
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;


--
-- Definition of table `f2r_development`.`spree_zones`
--

DROP TABLE IF EXISTS `f2r_development`.`spree_zones`;
CREATE TABLE  `f2r_development`.`spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `f2r_development`.`spree_zones`
--

/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
LOCK TABLES `spree_zones` WRITE;
INSERT INTO `f2r_development`.`spree_zones` VALUES  (1,'EU_VAT','Countries that make up the EU VAT zone.','2009-06-04 17:22:26','2009-06-04 17:22:26',0,0),
 (2,'North America','USA + Canada','2009-06-04 17:22:41','2009-06-04 17:22:41',0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
