-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: actissible_db
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Create actisible_user for DB access
--
DROP USER IF EXISTS 'actissible_user'@'%';
CREATE USER IF NOT EXISTS 'actissible_user'@'%' IDENTIFIED by 'Password1';

GRANT SELECT, INSERT, UPDATE ON *.* TO 'actissible_user'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


--
-- Table structure for table `comments`
--

DROP DATABASE IF EXISTS actissible_db;

CREATE DATABASE actissible_db;

USE actissible_db;

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `postal_town` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--
--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilities` (
  `X` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `VENUE_NAME` text,
  `ADDRESS_LINE_1` text,
  `POST_TOWN` text,
  `COUNTY` text,
  `POST_CODE` text,
  `NEW_DISTRICT_COUNCIL` text,
  `EASTING` int(11) DEFAULT NULL,
  `NORTHING` int(11) DEFAULT NULL,
  `TELEPHONE` text,
  `OWNERSHIP_TYPE` text,
  `ADVENTURE_SPORT` text,
  `ATHLETICS` text,
  `BOWLING` text,
  `BOXING` text,
  `CRICKET` text,
  `FITNESS` text,
  `GOLF` text,
  `MOTORSPORT` text,
  `SWIMMING` text,
  `SQUASH_HANDBALL` text,
  `TENNIS` text,
  `SPORTS_HALL` text,
  `WATERSPORTS` text,
  `MOUNTAIN_BIKING` text,
  `PITCHES_GRASS` text,
  `PITCHES_WATER` text,
  `PITCHES_THIRD_GEN` text,
  `PITCHES_SAND` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (-5.685378326836982,54.587289832801055,'1st Bangor Football Club','Portaferry Road','Newtownards','Down','BT23 8SG','North Down and Ards District',349679,373467,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-5.674118110638354,54.65695416003313,'Abbey Boxing Club','Banks Lane','Bangor','Down','BT20 5EJ','North Down and Ards District',350150,381244,'','Club','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-6.333354101399173,54.17170180022757,'Abbey Christian Brothers Grammar School','Ashgrove Road','Newry','Down','BT34 1QN','Newry City, Mourne and Down District',308889,326025,'028 3026 3142','Education','No','No','No','No','No','Yes','No','No','No','No','No','Yes','No','No','Yes','No','Yes','No'),(-5.530787787045331,54.606886139847774,'Abbey Road','Abbey Road','Millisle','Down','BT22 2DD','North Down and Ards District',359594,375988,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.274757805259618,54.34450069823712,'Abercorn Primary School','Newry Road','Banbridge','Down','BT32 3HR','Armagh City, Banbridge and Craigavon District',312245,345349,'028 4066 2880','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-5.831696854023573,54.45577833991287,'Academy Primary School','Listooder Road','Saintfield','Down','BT24 7JA','Newry City, Mourne and Down District',340673,358529,'028 9751 0407','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.002643881274216,54.67922564289074,'Academy Sports Club','Hydepark','Mallusk','Antrim','BT36 4PX','Antrim and Newtownabbey District',328881,383070,'028 9083 3085','District Council','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-6.276520343691456,54.8767093720589,'Academy Sports Club and Playing Fields','Hydepark','Newtownabbey','Antrim','BT43 6LL','Mid and East Antrim District',310677,404583,'028 9083 3085','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.796890751446382,54.73025128210421,'Acorn Intergrated Primary School','Victoria Road','Carrickfergus','Antrim','BT38 7JL','Mid and East Antrim District',341972,389146,'028 9336 0115','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-5.764485109800902,54.368129533981296,'Action Outdoors','Carragh Road','Downpatrick','Down','BT30 9AG','Newry City, Mourne and Down District',345341,348911,'077 8975 4565','Club','Yes','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No'),(-5.530787787045331,54.606886139847774,'Adams Park','Abbey Road','Millisle','Down','BT22 2DD','North Down and Ards District',359594,375988,'078 1369 4548','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-7.457766552574238,54.73549563213087,'Adventure Tours NI','Urbalreagh Road','Ardstraw','Tyrone','BT78 4LR','Fermanagh and Omagh District',234977,387636,'079 7163 9932','Private','Yes','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No'),(-6.292015263300522,54.35147586107744,'Aghaderg GAC','Scarva Road','Banbridge','Down','BT32 3QD','Armagh City, Banbridge and Craigavon District',311104,346098,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.583105398789747,55.03816361483543,'Aghadowey Airfield Circuit','Glasgort Road','Aghadowey','Londonderry','BT51 4BY','Causeway Coast and Glens District',290635,422114,'','Club','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No'),(-6.268932261722774,54.520552900553554,'Aghalee Playing Fields','Lurgan Road','Aghalee','Antrim','BT67 0DD','Causeway Coast and Glens District',312142,364953,'','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.267418468684616,54.52055816762338,'Aghalee Village Hall','Lurgan Road','Craigavon','Antrim','BT67 0DD','Lisburn and Castlereagh District',312240,364956,'028 9265 2150','Community','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.975960358360013,54.40894526460415,'Aghaloo Pavillion','Monaghan Road','Aughnacloy','Tyrone','BT69 6HU','Mid Ulster District',266542,351633,'','Other','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.69960760887103,54.30933632289915,'Aghavilly Primary School','Aghavilly Road','Milford','Armagh','BT60 3PN','Armagh City, Banbridge and Craigavon District',284690,340842,'028 3752 4255','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-7.467288728074658,54.82958947733831,'Aghyaran St Davogs','Park Road','Strabane','Tyrone','BT82 8EL','Derry City and Strabane District',234284,398106,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.356382399444325,54.85497046570157,'Ahoghill Community Centre','Cardonaghy Road','Ballymena','Antrim','BT42 1JB','Mid and East Antrim District',305608,402040,'028 2587 8198','Community','No','No','Yes','No','No','No','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-5.788463216228024,54.50364168603754,'Alexander Dickson Primary School','Comber Road','Ballygowan','Down','BT23 5TN','North Down and Ards District',343309,363943,'028 9752 8651','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.556335660194251,55.13132086548908,'Alive Bodyboard and Surf School','Ballybogey Road','Ballymoney','Antrim','BT53 6PD','Causeway Coast and Glens District',292132,432519,'077 4386 0509','Club','Yes','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No'),(-5.896106742674327,54.12941424971882,'All Blacks Amateur Boxing Club','Glassdrumman Road','Annalong','Down','BT34 4QN','Newry City, Mourne and Down District',337580,322081,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-6.2712540491505,54.871253045467924,'All Saints Boxing Club','Cushendall Road','Ballymena','Antrim','BT43 6HE','Mid and East Antrim District',311030,403984,'028 2565 1864','Club','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-7.308962131579467,54.996087840802886,'All Saints Clooney Bowling Club','Glendermott Road','Waterside','Londonderry','BT47 6BB','Derry City and Strabane District',244276,416730,'','Club','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.227841951209584,54.87007013917895,'All Saints GAC','Woodside Road','Ballymena','Antrim','BT42 4QH','Mid and East Antrim District',313820,403922,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.266444670481659,54.8755058169306,'All Saints Primary School Ballymena','Broughshane Road','Ballymena','Antrim','BT43 7DZ','Mid and East Antrim District',311327,404465,'028 2565 6076','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.146902221688168,54.352990967532286,'All Saints Primary School Banbridge','Ballela Road','Banbridge','Down','BT32 3TF','Armagh City, Banbridge and Craigavon District',320534,346505,'028 4067 1252','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-7.306517961427198,54.602518494328976,'All Saints Primary School Omagh','Tattysallagh Road','Omagh','Tyrone','BT78 5ER','Fermanagh and Omagh District',244866,372919,'028 8224 3233','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.249904920675283,54.725340039889446,'Allen Park','Castle Road','Antrim','Antrim','BT41 4NA','Antrim and Newtownabbey District',312806,387777,'028 9442 9001','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.247619923924843,54.7264929507424,'Allen Park Golf Centre','Castle Road','Antrim','Antrim','BT41 4NA','Antrim and Newtownabbey District',312950,387909,'028 9442 9001','Club','No','No','Yes','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No'),(-5.804430344722362,54.719740759307044,'Ampthitheatre Wellness Centre','Prince William Way','Carrickfergus','Antrim','BT38 7HP','Mid and East Antrim District',341523,387961,'028 9335 8888?','District Council','No','No','No','No','No','Yes','No','No','Yes','Yes','Yes','Yes','No','No','No','No','No','No'),(-7.034950346374005,54.65489968994585,'An Creagan Visitor Centre','Creggan','Omagh','Tyrone','BT79 9AF','Fermanagh and Omagh District',262336,378957,'028 8076 1112','Club','Yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-6.034538983358421,54.04920533734198,'An Riocht GAC','Dunnaval Road','Kilkeel','Down','BT34 4LT','Newry City, Mourne and Down District',328780,312894,'028 4176 3681','Club','No','No','No','No','No','Yes','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-6.618366766218067,54.11035129315293,'Anamar Primary School','Kiltybane Road','Crossmaglen','Down','BT35 9BH','Newry City, Mourne and Down District',290411,318795,'028 3086 1515','Education','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.933018881747143,55.04397172394589,'Anderson Park','Anderson Park','Coleraine','Londonderry','BT49 0RH','Causeway Coast and Glens District',268255,422363,'','District Council','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','Yes','No','No','No'),(-5.987356955345528,54.57322937711101,'Andersonstown Leisure Centre','Andersonstown Road','Belfast','Antrim','BT11 9BY','Belfast City',330205,371301,'028 90726311','District Council','No','No','No','No','No','Yes','No','No','Yes','Yes','No','Yes','No','No','No','No','No','No'),(-5.896796771739453,54.40813927885557,'Andy Ward Leisure','Belfast Road','Ballynahinch','Down','BT24 8EB','Newry City, Mourne and Down District',336610,353099,'028 9756 0033','Private','No','No','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.544679458432419,54.38362551339609,'Ann Street Football Pitch','Ann Street','Portaferry','Down','BT22 1LX','North Down and Ards District',359564,351111,'','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.200889499009732,54.30589155495419,'Annaclone GAC','Monteith Road','Banbridge','Down','BT32 5AT','Armagh City, Banbridge and Craigavon District',317158,341172,'028 4067 1787','Club','No','No','No','No','No','Yes','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-6.48727826847364,54.310336633018345,'Annagh Playing Fields','Tandragee Road','Portadown','Armagh','BT60 1TN','Armagh City, Banbridge and Craigavon District',298507,341229,'','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-6.565852580758054,54.45958308035248,'Annaghmore GAC','Eglish Road','Portadown','Armagh','BT62 1NL','Armagh City, Banbridge and Craigavon District',293055,357734,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.585409372977397,54.45815159224201,'Annaghmore Primary School','Annaghamore Road','Portadown','Armagh','BT62 1LZ','Armagh City, Banbridge and Craigavon District',291790,357549,'028 3885 1757','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.000420752744467,54.436792767367,'Annahilt Primary School','Ballynahinch Road','Hillsborough','Down','BT26 6BP','Lisburn and Castlereagh District',329792,356092,'028 9263 8557','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.001698390743271,54.43746084513574,'Annahilt Scout Hall','Ballynahinch Road','Hillsborough','Down','BT26 6BP','Lisburn and Castlereagh District',329707,356164,'','Club','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-5.920364512397976,54.10727296051246,'Annalong Bowling Club','Grove Road','Newry','Down','BT34 4XB','Newry City, Mourne and Down District',336067,319570,'','District Council','No','No','Yes','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-5.898498851106402,54.11027155727659,'Annalong Community Centre','Glassdrumman Road','Annalong','Down','BT34 4QJ','Newry City, Mourne and Down District',337487,319946,'','Community','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-5.902841750725054,54.10724727941317,'Annalong Primary School','KIilkeel Road','Annalong','Down','BT34 4TH','Newry City, Mourne and Down District',337213,319601,'028 4376 8340','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-5.970197498142924,54.2470492037381,'Annsborough Playing Fields','Annsborough','Castlewellan','Down','BT31 9HN','Newry City, Mourne and Down District',332361,335031,'','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-7.218344083845119,55.03032940055716,'Antares Health and Fitness Club','Clooney Road','Derry','Londonderry','BT47 3PA','Derry City and Strabane District',250033,420603,'028 7186 0606','Private','No','No','No','No','No','Yes','No','No','Yes','No','No','No','No','No','No','No','No','No'),(-5.832932861054515,54.85854161814662,'Antiville Playing Fields','Upper Cairncastle Road','Larne','Antrim','BT40 2EF','Mid and East Antrim District',339209,403352,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-5.838032900479436,54.85375377682238,'Antiville Primary School','Fairway','Larne','Antrim','BT40 2BG','Mid and East Antrim District',338898,402809,'028 2826 0624','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.240865307284248,54.716152956047175,'Antrim Boat Club','Castle Road','Antrim','Antrim','BT41 4NA','Antrim and Newtownabbey District',313414,386769,'','Club','No','No','No','No','No','No','No','No','No','No','No','Yes','Yes','No','No','No','No','No'),(-6.22457779237734,54.71491814909437,'Antrim Forum','Lough Road','Antrim','Antrim','BT41 4DQ','Antrim and Newtownabbey District',314467,386658,'028 9446 4131','District Council','No','Yes','No','No','No','Yes','No','No','Yes','Yes','Yes','Yes','No','No','Yes','No','No','Yes'),(-6.212509047219004,54.72362627161228,'Antrim Grammar School','Steeple Road','Antrim','Antrim','BT41 1AF','Antrim and Newtownabbey District',315220,387647,'028 9446 4091','Education','No','No','No','No','No','No','No','No','No','No','Yes','Yes','No','No','Yes','No','No','No'),(-6.215714755186469,54.71672859170217,'Antrim Primary School','Station Road','Antrim','Antrim','BT41 4AB','Antrim and Newtownabbey District',315033,386874,'028 9442 8226','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','Yes','No','No','No'),(-6.247149059666132,54.7244556859413,'Antrim Rugby and Ladies Hockey Club','Allan Road','Antrim','Antrim','BT41 4NA','Antrim and Newtownabbey District',312986,387683,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.151646530177348,54.487693214947925,'Anvil Park','Derrynahone Road','Craigavon','Down','BT67 0HR','Lisburn and Castlereagh District',319832,361489,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.716623408130888,55.18831569588442,'Aquaholics','Portmore Road','Portstewart','Londonderry','BT55 7BE','Causeway Coast and Glens District',281792,438664,'028 7083 2584','Club','Yes','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No'),(-5.909304887988206,54.57620927682653,'Aquinas Diocesan Grammar School','Ravenhill Road','Belfast','Antrim','BT6 0BY','Belfast City',335242,371780,'028 9064 3939','Education','No','No','No','No','No','Yes','No','No','No','No','No','Yes','No','No','No','No','Yes','No'),(-7.444696511433298,54.25410592806882,'Archdale Centre','Main Street','Lisnaskea','Fermanagh','BT92 0JD','Fermanagh and Omagh District',236242,334056,'028 6772 2421','District Council','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-7.59488202370726,54.423317162143974,'Archdale Hall','Baragh Road','Ballinamallard','Fermanagh','BT94 2AJ','Fermanagh and Omagh District',226345,352825,'','District Council','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.551942117637259,54.61490556429828,'Ardboe O\'Donovan Rossa GAC','Kilmascally Road','Dungannon','Tyrone','BT71 5BH','Mid Ulster District',293601,375041,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.064469971593882,55.081087248699276,'Ardclinis Outdoor Adventure','High Street','Cushdendall','Antrim','BT44 0NB','Causeway Coast and Glens District',323657,427687,'028 2177 1340','Club','Yes','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No'),(-6.924852034912868,55.024146224104896,'Ardgarvan Playing Fields','Ballyavelin Road','Limavady','Londonderry','BT49 0NE','Causeway Coast and Glens District',268811,420164,'','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-5.611511840379666,54.26029501440396,'Ardglass Community Centre','High Street','Ardglass','Down','BT30 7TU','Newry City, Mourne and Down District',355688,337237,'028 4484 1057','Community','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-5.596713421528224,54.26692005071229,'Ardglass GAC','Ardtole Road','Ardglass','Down','BT30 7SL','Newry City, Mourne and Down District',356627,338007,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-5.606605330990993,54.258616093229506,'Ardglass Golf Club','Castle Place','Ardglass','Down','BT30 7TP','Newry City, Mourne and Down District',356014,337061,'028 4484 1219','Club','No','No','No','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No'),(-5.471353303396697,54.41510846070044,'Ardminnan Equestrian Centre','Ardminnan Road','Newtownards','Down','BT22 1QJ','North Down and Ards District',364201,354783,'','Private','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.471353303396697,54.41510846070044,'Ardminnan Golf Course','Ardminnan Road','Portaferry','Down','BT22 1QJ','North Down and Ards District',364201,354783,'028 4277 1321','Club','No','No','No','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No'),(-7.263860151215321,54.96841668142017,'Ardmore Cricket and Football Club','Green Road','Ardmore','Londonderry','BT47 3RG','Derry City and Strabane District',247195,413679,'','Club','No','No','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.710651498885064,54.33057483524929,'Ardmore House Special School','Saul Street','Downpatrick','Down','BT30 6NJ','Newry City, Mourne and Down District',348975,344844,'028 4461 4881','Education','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No','No','No','No'),(-6.423942401505599,54.497031839284524,'Ardmore Primary School','Lenny\'s Road','Derryadd','Armagh','BT66 6QS','Armagh City, Banbridge and Craigavon District',302164,362099,'028 3834 0297','Education','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.629901426559575,54.34162683142826,'Ardmore Recreation Centre','Ballinahonemore Road','Armagh','Armagh','BT60 1JD','Armagh City, Banbridge and Craigavon District',289157,344522,'028 3751 5920','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','Yes'),(-7.278623843473024,54.966205594872825,'Ardmore Stables','Rushall Road','Londonderry','Londonderry','BT47 3QX','Derry City and Strabane District',246252,413423,'','Private','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-7.732505073371,54.69407699753061,'Ardmourne House Stables','Corgary Road','Castlederg','Tyrone','BT81 7YE','Derry City and Strabane District',217297,382923,'','Private','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.944923040830918,54.549199625450015,'Ardnavalley Scout Centre','Old Milltown Road','Belfast','Down','BT8 7SP','Lisburn and Castlereagh District',333027,368706,'028 9069 4161','Private','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-6.356918420063485,54.44594282301467,'Ardowen MUGA','Ardowen','Craigavon','Armagh','BT65 5EB','Armagh City, Banbridge and Craigavon District',306639,356512,'','District Council','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.957329830460101,54.612960793951395,'Ardoyne Kickhams GAC','Flax Street','Belfast','Antrim','BT14 7EJ','Belfast City',332018,375779,'','Club','No','No','No','No','No','No','No','No','No','No','No','No','No','No','Yes','No','No','No'),(-5.699143176965833,54.587651279304765,'Ards Bowling Club','South Street','Newtownards','Down','BT23 4JU','North Down and Ards District',348788,373478,'028 9181 2914','Club','No','No','Yes','No','No','No','No','No','No','No','No','No','No','No','No','No','No','No'),(-5.703535513878001,54.59702573911873,'Ards Leisure Centre','William Street','Newtownards','Down','BT23 4EJ','North Down and Ards District',348470,374512,'028 9181 2837','District Council','No','No','No','No','No','Yes','No','No','Yes','No','No','Yes','No','No','No','No','No','Yes');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-10 11:45:59
