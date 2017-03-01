-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2016 at 11:03 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `autoservices`
--

-- --------------------------------------------------------

--
-- Table structure for table `advetiesmet`
--

CREATE TABLE IF NOT EXISTS `advetiesmet` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `imagead` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `advetiesmet`
--

INSERT INTO `advetiesmet` (`id`, `imagead`) VALUES
(33, 'imageuplode/adverties_profile-4535.jpg'),
(34, 'imageuplode/adverties_profile-8970.jpg'),
(35, 'imageuplode/adverties_profile-8987.jpg'),
(40, 'imageuplode/adverties_profile-3996.jpg'),
(42, 'imageuplode/adverties_profile-3006.jpg'),
(43, 'imageuplode/adverties_profile-9990.jpg'),
(44, 'imageuplode/adverties_profile-4192.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cuid` int(4) NOT NULL AUTO_INCREMENT,
  `nic` varchar(50) DEFAULT NULL,
  `fristname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `contacnumber` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `laddress` varchar(225) DEFAULT NULL,
  `paddress` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `regesterdate` datetime NOT NULL,
  `image` varchar(225) DEFAULT '..\\imageuplode\\default-profile.png',
  PRIMARY KEY (`cuid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cuid`, `nic`, `fristname`, `lastname`, `contacnumber`, `email`, `laddress`, `paddress`, `password`, `regesterdate`, `image`) VALUES
(2, '144778866555V', 'Dasun', 'Perara', '07788554898', 'kamal@yahoo.com', '45 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', 'hqTVlSkn', '2015-02-16 05:30:00', NULL),
(110, '3378866555V', 'Kamal', 'Perera', '0117555866', 'kamal@test.net', 'Moratuwa Dehiwala', 'Colombo', 'q83V3XEF', '2015-02-16 05:30:00', NULL),
(111, '914778556555V', 'test', 'test', '0114558552', 'fbsddssddsvds', '78 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', 'hU5SKVFu', '2015-02-16 05:30:00', '../imageuplode/cus_image-111.jpg'),
(116, '934778866555V', 'Amal', 'Perera', '0114558522', 'dvzdvz', 'Moratuwa Dehiwala', 'Moratuwa Dehiwala', 'NGnzsqSq', '2015-02-16 05:30:00', '../imageuplode/default-profile.png'),
(133, '9214555553208v', 'Perera ', 'Kamal', '544444584584', '444455454584', '588 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', '295959555', '2016-01-08 05:30:00', '../imageuplode/default-profile.png'),
(134, '914778866555V', 'Kamala', 'Subashigha', '01178856654', 'kamala@test.com', '558 Meewla Rawathawattha', 'Moratuwa Dehiwala', 'wi4tvf8p', '2016-01-08 05:30:00', NULL),
(143, '9114555553208v', 'Sachith', 'Samarasinghe', '0779600640', 'sd.samarasinghe', 'ThilinaRamminika North MillaniyaHorana', 'Thilina\nRamminika North \nMillaniya\nHorana', 'erc4sBOJ', '2016-01-10 05:30:00', NULL),
(150, '901455553208v', 'Saman', 'Perera', '011147785555', 'saman@gmail.com', 'Moratuwa Katubadda', 'Moratuwa Katubadda', 'mitpQu5B', '2016-01-10 05:30:00', NULL),
(176, '9114555553208v', 'Praneeth', 'Madhusanka', '(+94)774258006', 'wpraneethmadusanka@gmail.com', '184-A Millagahawaththa, Danketiya, Haburugala', '184-A Millagahawaththa, Danketiya, Haburugala', 'pvDT8qTO', '2016-01-16 05:30:00', NULL),
(182, '8714555553208v', 'Kamal ', 'Perera', '01115582255252', 'kamlors@gmail.com', 'Moratuwa', 'Moratuwa', 'VyraT9ta', '2016-01-21 05:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doneservices`
--

CREATE TABLE IF NOT EXISTS `doneservices` (
  `doneseid` int(4) NOT NULL AUTO_INCREMENT,
  `vid` int(4) DEFAULT NULL,
  `serid` int(4) DEFAULT NULL,
  `serdate` date DEFAULT NULL,
  `servicesName` varchar(225) DEFAULT NULL,
  `servicestype` varchar(225) DEFAULT NULL,
  `matirial` varchar(225) DEFAULT 'No Add Material',
  `mile` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`doneseid`),
  KEY `vid` (`vid`),
  KEY `serid` (`serid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `doneservices`
--

INSERT INTO `doneservices` (`doneseid`, `vid`, `serid`, `serdate`, `servicesName`, `servicestype`, `matirial`, `mile`) VALUES
(7, 55, 1, '2016-01-14', 'nbmjb', 'hjkhj', '', '8'),
(21, 16, 1, '2016-01-15', 'hghghhgc fgfdgfdg gfdgd gdgdf gdfgfd gdg\nfhgfhgghgf gfdgfg hghghhgc fgfdgfdg gfdgd gdgdf gdfgfd gdg\nfhgfhgghgf gfdgfg', 'fdgfdgfdgf fggfdgfdd ggfdgdfgd ggdfgdg', 'hghgfhgfh hgfhgfhg hghgfh hgfhfg ', '6');

-- --------------------------------------------------------

--
-- Table structure for table `donesuplire`
--

CREATE TABLE IF NOT EXISTS `donesuplire` (
  `id` int(4) NOT NULL,
  `supid` int(4) DEFAULT NULL,
  `vid` int(4) DEFAULT NULL,
  `selldatedate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supid` (`supid`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `loginid` int(4) NOT NULL AUTO_INCREMENT,
  `userid` int(4) NOT NULL,
  `username` varchar(225) NOT NULL,
  `login_rols` varchar(225) NOT NULL,
  `password` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `userid`, `username`, `login_rols`, `password`) VALUES
(1, 1, 'admin', 'admin', '1234'),
(13, 179, 'customer3483', 'C_customer', 'JWWXW4FLVKEMRS0DYJ'),
(14, 21, 's_provider6590', 'S_provider', 'TQTFAJ6VUNV2ORE96D'),
(15, 22, 's_provider5301', 'S_provider', 'BGYCM27YAKOQNJTORJ'),
(16, 23, 's_provider3954', 'S_provider', '2A2ODO8AD96HU7K9UT'),
(17, 24, 's_provider1904', 'S_provider', '2NECJCM5H470BCWHF7'),
(18, 25, 's_provider3439', 'S_provider', '1GI2ZHS16GVWE5CFIW'),
(19, 26, 's_provider3990', 'S_provider', '875PO5QTH59SOV0H5M'),
(20, 179, 'customer7803', 'C_customer', 'SIYIWD8C09OG1PL8HI'),
(21, 180, 'customer1059', 'C_customer', 'CCGS6AFYCBW0Y5SHBF'),
(22, 181, 'customer9145', 'C_customer', 'EAMT6ELU3NBHFRI6H2'),
(23, 27, 's_provider7898', 'S_provider', 'DVL4XEU27R658QPNL1'),
(24, 19, 'v_suplire1212', 'suplire', 'NL3L6HG1RSU67YKT84'),
(26, 28, 's_provider1416', 'S_provider', 'F2EJTM3BIP1FGF6SDD'),
(27, 182, 'customer6983', 'C_customer', 'DHVJFCKRQZIQWL26HH');

-- --------------------------------------------------------

--
-- Table structure for table `serviceshistry`
--

CREATE TABLE IF NOT EXISTS `serviceshistry` (
  `servhistyid` int(4) NOT NULL AUTO_INCREMENT,
  `vid` int(4) DEFAULT NULL,
  `serdate` date DEFAULT NULL,
  `servicesname` varchar(50) DEFAULT NULL,
  `servicestype` varchar(50) DEFAULT NULL,
  `matirial` varchar(50) DEFAULT NULL,
  `milage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`servhistyid`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `serviceshistry`
--

INSERT INTO `serviceshistry` (`servhistyid`, `vid`, `serdate`, `servicesname`, `servicestype`, `matirial`, `milage`) VALUES
(1, 3, '2016-01-06', 'test', 'kmkm', 'hbhub', '20');

-- --------------------------------------------------------

--
-- Table structure for table `servicesprovider`
--

CREATE TABLE IF NOT EXISTS `servicesprovider` (
  `serid` int(4) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) DEFAULT NULL,
  `contacnumber` varchar(50) DEFAULT NULL,
  `hqaddress` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `managername` varchar(50) DEFAULT NULL,
  `managecontacnumber` varchar(50) DEFAULT NULL,
  `managemail` varchar(50) DEFAULT NULL,
  `vehicalperday` varchar(50) DEFAULT NULL,
  `logitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `sevices_catagary` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`serid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `servicesprovider`
--

INSERT INTO `servicesprovider` (`serid`, `companyname`, `contacnumber`, `hqaddress`, `email`, `managername`, `managecontacnumber`, `managemail`, `vehicalperday`, `logitude`, `latitude`, `image`, `sevices_catagary`) VALUES
(1, 'Service Company Limited', '01147788552', 'Service Company Limited', 'Service Company Limited', 'kamlbhdvvllfbffccc', '0777552552252', 'kamal@test.com', '100', 79, 80, NULL, 'Service_Station , Mechanical_Repair(Garage) , Tire_Station , Battery_Station , Towing_Service , '),
(2, 'Service Mart', '(+94)11147755522', '12  Moratuwa rd Pabadura', 'support@servicemart.com', 'Kamal Perera', '(+94)11775555555', 'kamal@servicemart.com', '52', 79.225, 5.555, NULL, 'Service_Station , Mechanical_Repair(Garage) , Tire_Station , '),
(13, 'Service Provider', '(+94)77 1728 223', 'Service Provider', 'Service Provider', 'Service Provider', 'Service Provider', 'Service Provider', '500', NULL, NULL, NULL, NULL),
(14, 'Service Company', '(+94)11 1728 223', '145 Gall rd, Colombo 03', 'servicecompany@slt.net', 'Kamal', '(+94)77 1728 223', 'kaml@gmail.com', '100', 80.5353, 5.94931, NULL, 'Service_Station , Mechanical_Repair(Garage) , Tire_Station , Battery_Station , Towing_Service , Spare_Parts , '),
(18, 'Test Provider', '(+94)117889545', '41Gall Rosd Moratuwa', 'testpro@slt.net', 'Test Manager', '(+94)715585254', 'testmng@test.com', '200', 79.1, 5.2, NULL, 'Service_Station , Mechanical_Repair(Garage) , Battery_Station , '),
(26, 'Auto Mart', '(+94)1185545544', '41A Galle rd Colombo 04', 'Galle rd Colombo 04', 'Saman', '07775899455', 'samn@gmil.com', '200', 79, 5, NULL, 'Service_Station , Mechanical_Repair(Garage) , Tire_Station , Battery_Station , Towing_Service , AC_Service , Spare_Parts , ');

-- --------------------------------------------------------

--
-- Table structure for table `suplire`
--

CREATE TABLE IF NOT EXISTS `suplire` (
  `supid` int(4) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) DEFAULT NULL,
  `contacnumber` varchar(50) DEFAULT NULL,
  `hqaddress` varchar(225) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `managername` varchar(50) DEFAULT NULL,
  `managecontacnumber` varchar(50) DEFAULT NULL,
  `managemail` varchar(50) DEFAULT NULL,
  `vehicleperday` int(11) DEFAULT NULL,
  `image` varchar(225) DEFAULT '../imageuplode/default-profile.png',
  PRIMARY KEY (`supid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `suplire`
--

INSERT INTO `suplire` (`supid`, `companyname`, `contacnumber`, `hqaddress`, `email`, `managername`, `managecontacnumber`, `managemail`, `vehicleperday`, `image`) VALUES
(1, 'Car sale Pvt Ltd', '01755885252', 'Colombo rd Panaduragg', 'carsale@carsale.com', 'Kamal  Perera n', '01117885555', 'kamal@ccarsale.com', 11, NULL),
(3, 'LK Cars', '(+94)1145588555', 'LK Cars\nPannipitiya', 'lkcars@lkcar.net', 'Rama Perera', '(+94)7745588555', 'rama@lkcar.net', 100, NULL),
(13, 'Sonnac Bidding Centre (pvt) Ltd', '11 233 9311', 'Sonnac Bidding Centre (pvt) Ltd\nGallroad colombo 03', 'gm@sonnacbiddingcentre.com', 'Manager', '11 233 9311', 'gm@sonnacbiddingcentre.com', 10, NULL),
(15, 'Car Supplier pvt ltd', '(+94) 774258006', 'Car Supplier pvt ltd\nRajagiriya Colombo', 'damithnuwans@gmail.com', 'Kumara', '(+94) 774258006', 'wpraneethmadusanla@gmail.com', 100, NULL),
(16, 'Sonnac Bidding Centre (pvt) Ltd', '(+94)11 233 9311', '9th Floor,\nEast Tower,\nWorld Trade Center,\nColombo 01,\nSri Lanka', 'gm@sonnacbiddingcentre.com', 'M.H.Fouz Farhan', '(+94)77 783 8368', 'gm@sonnacbiddingcentre.com', 100, NULL),
(17, 'Dushan Enterprices (pvt) Ltd', '(+94)777 777 7745', 'Dushan Enterprices (pvt) Ltd\nBaseline Road,\nBorella', 'dushanenterprices@gmail.com', 'Dushan', '(+94)777 777 7745', 'dushanenterprices@gmail.com', 20, NULL),
(19, 'PMW Private Limited', '(+94)712809878', 'Katubedda Motatuwa.', 'bbpmw@gmail.com', 'kavinda', '(+94)712809878', 'kavinda@gmail.com', 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `game` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`test_id`),
  UNIQUE KEY `test_id` (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `address`, `game`, `name`) VALUES
(1, 'sdgsdgsd', 'gsdgsdgsdg', 'sdgsdgsdgsdgd'),
(2, 'aaaaaaaaaaaaaaaa', 'bbbbbbbbbbbbbbbb', 'ccccccccccccccccccccccccc');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `vid` int(4) NOT NULL AUTO_INCREMENT,
  `cuid` int(4) DEFAULT NULL,
  `refnumber` varchar(50) DEFAULT NULL,
  `enginnumber` varchar(50) DEFAULT NULL,
  `chachinumber` varchar(50) DEFAULT NULL,
  `vehicalnumber` varchar(50) DEFAULT NULL,
  `vehicletype` varchar(50) DEFAULT NULL,
  `vehiclebrand` varchar(50) DEFAULT NULL,
  `vehiclemodle` varchar(50) DEFAULT NULL,
  `fueltype` varchar(50) DEFAULT NULL,
  `supid` int(4) DEFAULT NULL,
  `frstserviceskm` varchar(50) DEFAULT NULL,
  `secondserviceskm` varchar(50) DEFAULT NULL,
  `threadserviceskm` varchar(50) DEFAULT NULL,
  `fourthservice` varchar(50) DEFAULT NULL,
  `fifthservice` varchar(50) DEFAULT NULL,
  `sixthservice` varchar(50) DEFAULT NULL,
  `seventhservice` varchar(50) DEFAULT NULL,
  `eighthservice` varchar(50) DEFAULT NULL,
  `paymentdate` datetime NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `cuid` (`cuid`),
  KEY `supid` (`supid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `cuid`, `refnumber`, `enginnumber`, `chachinumber`, `vehicalnumber`, `vehicletype`, `vehiclebrand`, `vehiclemodle`, `fueltype`, `supid`, `frstserviceskm`, `secondserviceskm`, `threadserviceskm`, `fourthservice`, `fifthservice`, `sixthservice`, `seventhservice`, `eighthservice`, `paymentdate`, `image`) VALUES
(1, 2, 'RN202951', '212522528282822', '252858558555bnbngnnn', 'WP AAA 3255', 'car', 'Toyota', 'Alleon', 'Hybride', 3, '2500', '30000', '400000', '', '1', '1', '1', '1', '2015-12-22 00:00:00', NULL),
(3, 110, 'RN202953', '212522528582822', '258858558555bnbngnnn', 'WP BFA4785', 'bike', 'KIA', 'Kia', 'Hybride', 1, '2500', '11', '11', NULL, NULL, NULL, NULL, NULL, '2015-12-02 00:00:00', NULL),
(16, 111, 'RN206821', '512522528282822', '558858558555bnbngnnn', 'WP KAA4785', 'van', 'dvdv', 'vvf', 'Petrol', 1, '2500', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-06 00:00:00', NULL),
(17, 110, 'RN206823', '75522528282822', '84558558555bnbngnnn', 'WP GAA4785', 'van', 'fdf', 'gffhfn', 'Hybride', 1, '2500', '3', '3', NULL, NULL, NULL, NULL, NULL, '2016-01-11 00:00:00', NULL),
(18, 110, 'RN206092', '892522528282822', '2552558555bnbngnnn', 'WP CCA4785', 'car', 'okioj', 'yugyug', 'Petrol', 1, '2500', '45', '566', NULL, NULL, NULL, NULL, NULL, '2016-01-05 00:00:00', NULL),
(32, 143, 'RN205195', '412522528282822', 'sd55bnbngnnnscsc', 'WP CAD4785', 'car', 'Toyota', 'Prius 2014', 'Hybride', 13, '2500', '4500', '7000', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL),
(48, 150, 'RN207088', '642522528282822', '4455959595bnbngnnn', 'WP KAA1785', 'van', 'Toyota', 'Allon', 'Petrol', 16, '2500', '4', '4', NULL, NULL, NULL, NULL, NULL, '2016-01-05 00:00:00', NULL),
(55, 150, 'RN205363', '332522528282822', 'sc58558555bnbngnnn', 'WP BCA4785', 'car', 'Nisan', 'ffd', 'Hybride', 13, '2500', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-20 00:00:00', NULL),
(58, 2, 'RN201612080', '412522528282822', 'cscscc858555bnbngnnn', 'WP CAA4785', 'van', 'Toyota', 'jmjnjn', 'Petrol', 3, '2500', '', '', '', '', '', '', '', '2016-01-13 00:00:00', NULL),
(59, 2, 'RN201612038', '912522528282822', '118858558555bnbngnnn', 'WP BFA4585', 'car', 'Hyhunda', 'g', 'Hybride', 19, '2500', '5', '5', '', '', '', '', '', '2016-01-13 00:00:00', NULL),
(60, 182, 'RN201612126', '412522528282822', '552256811585517i745', 'WP AAA4785', 'car', 'Toyota', 'Vitz', 'Hybride', 13, '2500', '15000', '20000', '', '', '', '', '', '2016-01-21 00:00:00', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doneservices`
--
ALTER TABLE `doneservices`
  ADD CONSTRAINT `Doneservices_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `vehicle` (`vid`),
  ADD CONSTRAINT `Doneservices_ibfk_2` FOREIGN KEY (`serid`) REFERENCES `servicesprovider` (`serid`);

--
-- Constraints for table `donesuplire`
--
ALTER TABLE `donesuplire`
  ADD CONSTRAINT `Donesuplire_ibfk_1` FOREIGN KEY (`supid`) REFERENCES `suplire` (`supid`),
  ADD CONSTRAINT `Donesuplire_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `vehicle` (`vid`);

--
-- Constraints for table `serviceshistry`
--
ALTER TABLE `serviceshistry`
  ADD CONSTRAINT `serviceshistry_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `vehicle` (`vid`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`cuid`) REFERENCES `customer` (`cuid`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`supid`) REFERENCES `suplire` (`supid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
