-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2016 at 03:21 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `advetiesmet`
--

INSERT INTO `advetiesmet` (`id`, `imagead`) VALUES
(33, 'imageuplode/adverties_profile-4535.jpg'),
(34, 'imageuplode/adverties_profile-8970.jpg'),
(35, 'imageuplode/adverties_profile-8987.jpg'),
(36, 'imageuplode/adverties_profile-8474.jpg'),
(37, 'imageuplode/adverties_profile-6028.jpg'),
(38, 'imageuplode/adverties_profile-8772.jpg'),
(39, 'imageuplode/adverties_profile-2383.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cuid`, `nic`, `fristname`, `lastname`, `contacnumber`, `email`, `laddress`, `paddress`, `password`, `regesterdate`, `image`) VALUES
(2, '25222533959552594625', 'Test Customer', '', '07788554898', 'testcustomervhnhn', '45 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', 'lEk9yORm', '2015-02-16 05:30:00', '../imageuplode/cus_image-2.jpg'),
(110, '4224533959552594625', 'jio', 'iii', '5335585888', 'dzvdfbbhgthhlllllllllllllll', 'Moratuwa Dehiwalalllllllllll', 'Moratuwa Dehiwalallllll', 'k[[po', '2015-02-16 05:30:00', '../imageuplode/cus_image-110.jpg'),
(111, '5525242245', 'test', 'test', '0114558552', 'fbsddssddsvds', '78 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', 'hU5SKVFu', '2015-02-16 05:30:00', '../imageuplode/cus_image-111.jpg'),
(114, '9252552551151V', 'tyest Customer', 'test', '2525225156', 'scsccdsscssdc', '588 Colombo 10', 'Moratuwa Dehiwala', '1234', '2015-02-16 05:30:00', '../imageuplode/default-profile.png'),
(115, 'sdvdv', 'ffvbfvsdvfvbfdv', 'ddvcfvvf', '1243545564654', '553533fdvfdvfdvfdvf', '588 Colombo 10', 'Moratuwa Dehiwala', 'sdvdvs', '2015-02-16 05:30:00', '../imageuplode/default-profile.png'),
(116, 'fbfb', 'Amal', 'Perera', '235', 'dvzdvz', 'Moratuwa Dehiwala', 'Moratuwa Dehiwala', 'NGnzsqSq', '2015-02-16 05:30:00', '../imageuplode/default-profile.png'),
(118, 'hhgg', 'sdsfd', 'fsfsds', '85484', '77', '8848448', 'Moratuwa Dehiwala', 'hg', '2015-02-16 00:00:00', '../imageuplode/default-profile.png'),
(119, 'ddv', 'Nalaka ', 'Perera', '0774558895255', '0774558895255', 'Moratuwa Dehiwala', 'Moratuwa Dehiwala', 't9fzNtiz', '2015-02-16 05:30:00', NULL),
(120, 'fdbfd', 'fbb', 'fdbfd', '3', 'fdb', 'fdbb', 'Moratuwa Dehiwala', 'fdbfd', '2015-02-16 00:00:00', '../imageuplode/cus_image-120.jpg'),
(121, 'gg', 'Damith Nuwanvvv', 'sdvdsv', '553522222222222', 'fdb20000000', 'dsvds', 'Moratuwa Dehiwala', 'ngfngf', '2016-01-02 05:30:00', '../imageuplode/default-profile.png'),
(124, 'fdbfdb', 'ddfbf', 'fbdf', '42453', 'bfbf', 'fdb', 'Moratuwa Dehiwala', 'fdbf', '2016-01-02 05:30:00', '../imageuplode/default-profile.png'),
(126, 'dvsfdv', 'dvvd', 'dfv', '5373', '552', 'sdvdsd', 'Moratuwa Dehiwala', 'sdfvfsvsfd', '2016-01-02 05:30:00', '../imageuplode/default-profile.png'),
(127, 'dcsdc', 'fdrggr', 'ddc', '53535', '5333', '588 Colombo 10', 'Moratuwa Dehiwala', 'dccd', '2016-01-07 05:30:00', '../imageuplode/default-profile.png'),
(128, 'sdvv', 'vdfvf', 'sdv', '022', 'cdcds', 'sdvsdv', 'Moratuwa Dehiwala', 'sdvdscv', '2016-01-07 05:30:00', '../imageuplode/default-profile.png'),
(129, 'fdb', 'ggdb', 'fdb', '45353', '53533', 'fdb', 'Moratuwa Dehiwala', 'bfdb', '2016-01-07 05:30:00', '../imageuplode/default-profile.png'),
(130, 'kljilojiojh', 'rtrt', 'klkklj', '55445', 'yu', 'ioioiou', 'Moratuwa Dehiwala', 'ioiouiou', '2016-01-08 05:30:00', '../imageuplode/default-profile.png'),
(131, '67542.45341.215453435', 'Damith', 'nUWAN', '6595945', '848489499', 'No  122 Meewala rd  Uguda Ruggahawila', 'Moratuwa Dehiwala', '34534335354', '2016-01-08 05:30:00', '../imageuplode/default-profile.png'),
(133, '59555', 'Perera ', 'Tjndjkh', '544444584584', '444455454584', '588 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', '295959555', '2016-01-08 05:30:00', '../imageuplode/default-profile.png'),
(134, '2655954999454949494', 'KAMALA', 'sUBASINGA', '51515541', '8484848484', '558 Meewla Rawathawattha', 'Moratuwa Dehiwala', '88494949449844484894894', '2016-01-08 05:30:00', '../imageuplode/default-profile.png'),
(136, 'oij', 'efdl,lf', 'ijiojiojio', '545488', 'jnuihuihu', 'jiojio', 'Moratuwa Dehiwala', 'iojiojioj', '2016-01-08 05:30:00', '../imageuplode/default-profile.png'),
(137, 'lnkljnlnnj', 'mnncnlcnl', 'klnlnlnl', '54444', '548451', 'klknnlknln', 'Moratuwa Dehiwala', 'FwisbEXP', '2016-01-09 05:30:00', '../imageuplode/default-profile.png'),
(138, '6262622', 'test', '6622262', '626226', 'testmai', '225 Moratuwa uihuihh', 'Moratuwa Dehiwala', '5wcKMiwU', '2016-01-09 05:30:00', '../imageuplode/default-profile.png'),
(139, '448448', '7774477', '\\1444844', '848484', '84848484', '77 Moratuwa Rawathawattha', 'Moratuwa Dehiwala', 'QGvVT65a', '2016-01-09 05:30:00', '../imageuplode/default-profile.png'),
(140, 'dvdv', 'dvvdv', 'vdd', '5353', 'dsg', '588 Colombo 10', 'Moratuwa Dehiwala', 'CigXslsZ', '2016-01-10 05:30:00', '../imageuplode/default-profile.png'),
(141, '848484844188', 'Customer', '12244', '515151185151585', 'huvbvbvcgff', 'Moratuwa', 'Moratuwa', 'Ox6m4RvD', '2016-01-10 05:30:00', '../imageuplode/default-profile.png'),
(142, 'ghgh', 'hghv', 'ghg', '7', 'hg', 'gh', 'gh', 'sh434BeI', '2016-01-10 05:30:00', '../imageuplode/default-profile.png'),
(143, '91143208v', 'Sachith', 'Samarasinghe', '0779600640', 'sd.samarasinghe', 'THILINA\nRamminika North \nMillaniya\nHorana', 'Thilina\nRamminika North \nMillaniya\nHorana', 'erc4sBOJ', '2016-01-10 05:30:00', NULL),
(145, '56865865', 'sfsa', 'sgds', '44', 'zfdsd', 'dsfs', 'fdsfed', 'rPHaWwmo', '2016-01-10 05:30:00', '../imageuplode/default-profile.png'),
(146, 'xzxz xz ', 'cdvzdc', 'xz cxz zx', 'zx zx xz', 'xz xz xz', 'xz x', 'xz xz ', 'nuhEzlLX', '2016-01-10 05:30:00', '../imageuplode/default-profile.png'),
(147, ' xcv ', 'v xv ', 'c cx ', 'cxc cx ', 'bvc x', 'xc ', 'xc cx ', 'Km2CT5D0', '2016-01-10 05:30:00', '../imageuplode/default-profile.png'),
(150, 'vcbcvbc', 'nvhn', 'cvbc', 'vbfdbfd', 'dbfdbfdb', 'cbc', 'cvbcvb ', '1uFOpXBa', '2016-01-10 05:30:00', '../imageuplode/cus_image-150.jpg'),
(151, 'degrdgbdg', '755283', '5425422', 'kbkhbk h', 'kbkhbvkhb', 'dfgfdg', 'hjhjvhjvb', 'W0PvsH2W', '2016-01-12 05:30:00', '../imageuplode/cus_image-151.jpg'),
(152, 'dvdsc', 'Kamal', 'Perera', '01117777555', 'sdvsdv', 'Moratuwa', 'Moratuwa', 'cFz6rDwc', '2016-01-14 05:30:00', NULL),
(153, 'hgmhg', 'hhm', 'hg', 'hg', 'hgjh', 'hghg', 'hgnj', 'Hqq5H6vr', '2016-01-14 05:30:00', NULL),
(154, 'hmhm', 'mhmh', 'mhn', 'hmhmn', 'hmh', 'hmhg', 'hm', 'L3F85eTb', '2016-01-14 05:30:00', NULL),
(172, 'fdvdv', 'fdvfxcv', 'fvfdv', 'fdvvf', 'fdvffdvfd', 'fvbdv', 'fdvf', 'CsaUaOD3', '2016-01-14 05:30:00', NULL),
(173, 'sdcdsc', 'dcdcd', 'sdvcds', 'dcdc', 'sdcsdc', 'sdcsdc', 'dscsdc', '7GR6XWs0', '2016-01-14 05:30:00', NULL),
(174, 'tr66t', 'rt6tr6', 'rt6tr6', '56565', 'damithdns@gmail.com', 'tr6tr6', 'rt6tr6', 'nEO4nRiG', '2016-01-14 05:30:00', NULL),
(175, '895547755222v', 'Test Customer', 'name', '77885520000', 'email', 'Address no', 'Address no', 'kaTPhFyX', '2016-01-14 05:30:00', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `doneservices`
--

INSERT INTO `doneservices` (`doneseid`, `vid`, `serid`, `serdate`, `servicesName`, `servicestype`, `matirial`, `mile`) VALUES
(1, 1, 1, '2016-01-05', 'dvxdv', 'xcvxdv', 'dvxdv', '2'),
(2, 2, 2, '2016-01-06', 'test', 'test', 'c c  c', '5'),
(3, 1, 2, '2016-01-06', 'sadsad', 'sadsad', 'sadsd', 'asdsad'),
(4, 3, 2, '2016-01-11', 'vvsvdsyivgswp;[', '', '', '555225'),
(5, 13, 1, '2016-01-11', 'hgvcgh', 'vghv', '', '5444454'),
(6, 3, 1, '2016-01-11', 'ertret', '', '', '4'),
(7, 55, 1, '2016-01-14', 'nbmjb', 'hjkhj', '', '8'),
(8, 15, 1, '2016-01-14', 'asds', 'sdf', 'sdf', '3'),
(9, 36, 1, '2016-01-14', 'xvccx', 'xcv', 'xcv', '32'),
(10, 17, 1, '2016-01-14', 'hgj', 'ret', 'rete', '56'),
(11, 10, 1, '2016-01-14', 'fdg', 'dfg', 'dfg', '4'),
(12, 16, 1, '2016-01-14', 'dd', 'dd', 'dd', '3'),
(13, 35, 1, '2016-01-14', '5gg', 'gb', 'bhh', '5'),
(14, 32, 1, '2016-01-14', 'gffh', 'fhfhfh', '', '6'),
(15, 17, 1, '2016-01-14', 'fghgfh', 'fghgfh', '', '6'),
(16, 13, 1, '2016-01-14', 'trrete', '', '', '55'),
(17, 18, 1, '2016-01-14', '66', '', '', '6'),
(18, 3, 1, '2016-01-14', 'f', '', '', '5'),
(19, 13, 1, '2016-01-13', 'jklkjl', '', '', '9'),
(20, 35, 1, '2016-01-06', ',l.m', '', '', '9'),
(21, 16, 1, '2016-01-15', 'hghghhgc fgfdgfdg gfdgd gdgdf gdfgfd gdg\nfhgfhgghgf gfdgfg', 'fdgfdgfdgf fggfdgfdd ggfdgdfgd ggdfgdg', 'hghgfhgfh hgfhgfhg hghgfh hgfhfg ', '6'),
(22, 10, 1, '2016-01-07', 'fv', '', '', '9'),
(23, 1, 17, '2016-01-13', 'bgc cg ', 'fdcgn ', 'gbg', '5');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `servicesprovider`
--

INSERT INTO `servicesprovider` (`serid`, `companyname`, `contacnumber`, `hqaddress`, `email`, `managername`, `managecontacnumber`, `managemail`, `vehicalperday`, `logitude`, `latitude`, `image`, `sevices_catagary`) VALUES
(1, 'Service Company Limited', '588484844', 'Test', 'ggggggggggggggg', 'kaml', '22255555', 'kamal@test.com', '5', 79.911, 6.714, '../imageuplode/servisespro_profile-1.jpg', 'Spare_Parts,Mechanical_Repair(Garage)'),
(2, 'Service Matrt', '588425284844', 'guvftffufutfutft', 'vgufftgtf', 'yugytfffvytvc', 'yugutfutftu7f', 'ygyugyuuutf', '5', 80.535, 5.9494, NULL, 'Spare_Parts'),
(11, 'Service Matrt', '(+94)77 1728 223', 'guvftffufutfutft', 'vgufftgtf', 'yugytfffvytvc', 'yugutfutftu7f', 'ygyugyuuutf', '5', 79.9128, 6.7176, NULL, 'Spare_Parts,Mechanical_Repair(Garage)'),
(12, 'companyA', '(+94)77 1728 223', 'sdfsd', 'sdf', 'sdf', 'sdf', 'sfd', '4', 79.8997, 6.80146, NULL, 'Battery_Station,Towing_Service,Vehicle_Rent_&_Taxi,Hotel_and_Accommondation'),
(13, 'compiyan', '(+94)77 1728 223', 'fdg', 'dg', 'dfg', 'fdg', 'dg', '6', 79.863, 6.85595, NULL, 'AC_Service'),
(14, 'servies 4', '(+94)77 1728 223', 'sdfsdf', 'sdfsdf', 'sdfsdf', '86786', 'ffuftu@gmail.com', '77', 80.5353, 5.94931, 'zxcx', 'Spare_Parts'),
(15, 'company A', '(+94) 77 123 4586', 'no 234 , navala, moratuwa', 'dfgdf', 'dfgdfg', '(+94) 77 123 546', 'sdfsd', '54', 79.9647, 6.57922, 'fsdfsdfsdf', NULL),
(16, 'dvdv', 'vdd', 'vdv', 'vdv', 'dvdv', 'dvvd', 'dvvd', '52', 123, 458, NULL, NULL),
(17, 'vv', 'vv', 'vv', 'vv', 'vv', 'v', '', '5', 123, 458, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `suplire`
--

INSERT INTO `suplire` (`supid`, `companyname`, `contacnumber`, `hqaddress`, `email`, `managername`, `managecontacnumber`, `managemail`, `vehicleperday`, `image`) VALUES
(1, 'Car sale Pvt Ltd', '01755885252', 'Colombo rd Panadura', 'carsale@carsale.com', 'Kamal  Perera ', '0111788555', 'kamal@ccarsale.com', 10, NULL),
(3, 'LK Cars', '01755885252', 'LK Cars\nPannipitiya', 'lkcars@lkcar.net', 'Rama', '61948155111', 'rama@lkcar.net', 100, NULL),
(13, 'Sonnac Bidding Centre (pvt) Ltd', '11 233 9311', 'Sonnac Bidding Centre (pvt) Ltd\nGallroad colombo 03', 'gm@sonnacbiddingcentre.com', 'Manager', '11 233 9311', 'gm@sonnacbiddingcentre.com', 10, NULL),
(14, 'AMW', '(+94)11 233 9311', 'AMW Company\nColombo 03\ncvcb', 'damithnuwanvs@gmail.com', 'damith', '(+94)11 233 9311', 'damithnuwacns@gmail.com', 3, NULL),
(15, 'Car Supplier pvt ltd', '(+94) 774258006', 'Car Supplier pvt ltd\nRajagiriya Colombo', 'damithnuwans@gmail.com', 'Kumara', '(+94) 774258006', 'wpraneethmadusanla@gmail.com', 5, '../imageuplode/sup_profile-15.jpg'),
(16, 'Sonnac Bidding Centre (pvt) Ltd', '(+94)11 233 9311', '9th Floor,\nEast Tower,\nWorld Trade Center,\nColombo 01,\nSri Lanka', 'gm@sonnacbiddingcentre.com', 'M.H.Fouz Farhan', '(+94)77 783 8368', 'gm@sonnacbiddingcentre.com', 100, NULL),
(17, 'Dushan Enterprices (pvt) Ltd', '(+94)777 777 7745', 'Dushan Enterprices (pvt) Ltd\nBaseline Road,\nBorella', 'dushanenterprices@gmail.com', 'Dushan', '(+94)777 777 7745', 'dushanenterprices@gmail.com', 20, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `cuid`, `refnumber`, `enginnumber`, `chachinumber`, `vehicalnumber`, `vehicletype`, `vehiclebrand`, `vehiclemodle`, `fueltype`, `supid`, `frstserviceskm`, `secondserviceskm`, `threadserviceskm`, `fourthservice`, `fifthservice`, `sixthservice`, `seventhservice`, `eighthservice`, `paymentdate`, `image`) VALUES
(1, 2, 'RN202951', '212522528282822', '252858558555bnbngnnn', 'WP AAA 3255', 'car', 'Toyota', 'Alleon', 'Petrol', 3, '1000', '30000', '400000', '', '100', '', '', '', '2015-12-22 00:00:00', '../imageuplode/veh_profile-1.jpg'),
(2, 2, '0122505', '21252', '2525', '2522', '2252', '22''252', '2522552', '22525', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-01 00:00:00', NULL),
(3, 110, 'RN202953', '212522528282822', 'sdvvsdd', 'dfvfsd', 'bike', 'dvdv', 'RN202953', 'Hybride', 1, '1', '11', '11', NULL, NULL, NULL, NULL, NULL, '2015-12-02 00:00:00', NULL),
(10, 120, 'RN205630', 'fbb', 'fbbf', 'ffbb', 'van', 'ffbfb', 'gbgfb', 'Hybride', 1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-12 00:00:00', '../imageuplode/veh_profile-10.jpg'),
(12, 124, 'RN20509', 'xcxcdv', 'dsdc', 'gfc', 'van', 'bfxc', 'ccdvsdv', 'Diesel', 1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-14 00:00:00', NULL),
(13, 127, 'RN204246', 'ththt', 'ththh', 'ththh', '', 'eferw', 'rfr', 'Hybride', 1, '25', '55', '55', NULL, NULL, NULL, NULL, NULL, '2016-01-18 00:00:00', NULL),
(15, 127, 'RN207075', 'ddvcd', 'dv', 'fddf', 'van', 'ddcdvc', 'ddvd', 'Hybride', 1, '1', '1', '11', NULL, NULL, NULL, NULL, NULL, '2016-01-06 00:00:00', NULL),
(16, 111, 'RN206821', 'vdv', 'dvd', 'ddvd', 'van', 'dvdv', 'vvf', 'Petrol', 1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-06 00:00:00', NULL),
(17, 110, 'RN206823', 'ggfngfn', 'bfdbdbg', 'gngnngf', 'van', 'fdf', 'gffhfn', 'Hybride', 1, '1', '3', '3', NULL, NULL, NULL, NULL, NULL, '2016-01-11 00:00:00', NULL),
(18, 110, 'RN206092', '84848548', 'uihuihuih', '662622', 'bike', 'okioj', 'yugyug', 'Petrol', 1, '6566', '45', '566', NULL, NULL, NULL, NULL, NULL, '2016-01-05 00:00:00', NULL),
(26, 115, 'RN207043', '5511', '777', '8844', 'car', '77', '\\5145', 'Hybride', 1, '44', '44', '44', NULL, NULL, NULL, NULL, NULL, '2016-01-12 00:00:00', NULL),
(29, 141, 'RN203748', '5548484', '5545141515', 'uvuhybgyihc', 'van', 'TEST', 'YTFTYFUTUUY', 'Petrol', 1, '55', '55', '4545', NULL, NULL, NULL, NULL, NULL, '2016-01-10 00:00:00', NULL),
(30, 138, 'RN20186', '5433', '4554635', '4565654', 'car', 'uiyu8', 'yuiuyi', 'Petrol', 1, '45354', '5353', '45345', NULL, NULL, NULL, NULL, NULL, '2016-01-13 00:00:00', NULL),
(31, 138, 'RN206521', '546456', '53453', '8645', 'car', 'uhiu', 'fhfgh', 'Petrol', 1, '53543', '535', '5354', NULL, NULL, NULL, NULL, NULL, '2016-01-12 00:00:00', NULL),
(32, 143, 'RN205195', 'C45e77', 'e145d11', 'CAD', 'car', 'Toyota', 'Prius 2014', 'Hybride', 13, '2000', '4500', '7000', NULL, NULL, NULL, NULL, NULL, '2016-01-01 00:00:00', NULL),
(33, 145, 'RN202078', 'dzfvsa', 'sfs', 'adsafsa', 'car', 'toyota', 'Allon', 'Hybride', 13, '2000', '4500', '7000', NULL, NULL, NULL, NULL, NULL, '2016-01-04 00:00:00', NULL),
(35, 146, 'RN204699', 'dsvdsvddsvsd', 'dvsdv', 'sdvdsvsdvvsd', 'bike', 'bbc vc xc xc', 'vvdv', 'Diesel', 1, '1', '11', '1', '', '', '', '', '', '2016-01-05 00:00:00', NULL),
(36, 147, 'RN20354', 'cx xc xc', 'xc xc', 'vxcv cv ', 'car', 'Toyota', 'EX', 'Hybride', 1, '1', '1', '1', '1', '1', '1', '1', '1', '2016-01-19 00:00:00', NULL),
(48, 150, 'RN207088', 'db', 'fdb', 'bfdb', 'van', 'Toyota', 'Allon', 'Petrol', 16, '4', '4', '4', NULL, NULL, NULL, NULL, NULL, '2016-01-05 00:00:00', NULL),
(53, 138, 'RN203935', 'gbgbbg', 'gbgb', 'vbbgbg', 'van', 'gbgb', 'gbgbg', 'Hybride', 1, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-12 00:00:00', NULL),
(54, 147, 'RN207426', 'sdsdf', 'fdbfd', 'ghgd', 'car', 'fgfb', 'grgrdsg', 'Hybride', 1, '5', '5', '5', NULL, NULL, NULL, NULL, NULL, '2016-01-19 00:00:00', NULL),
(55, 150, 'RN205363', 'sdsdf', 'fbfb', 'gdfgdrg', 'car', 'ffb', 'ffd', 'Hybride', 13, '1', '1', '1', NULL, NULL, NULL, NULL, NULL, '2016-01-20 00:00:00', NULL),
(56, 152, 'RN201611433', 'cdscds', 'sdvdsvc', 'dvdsvsdv', 'car', 'Nisabn', 'sdcvsdc', 'Hybride', 1, '2', '2', '', '', '', '', '', '', '2016-01-11 00:00:00', NULL),
(59, 175, 'RN201611472', 'cdhg225585225552', '4451514141141441', 'WP BDD2258', 'car', 'Nisan', 'GX 55212', 'Hybride', 14, '1000', '2000', '3000', '', '', '', '', '', '2016-01-12 00:00:00', '../imageuplode/veh_profile-10.jpg'),
(61, 175, 'RN201611537', 'ggtg', 'gtgg', 'tgtgtg', 'car', 'hthh', 'qwqwqwqwqwqw', 'Hybride', 1, '2', '2', '2', '', '', '', '', '', '2016-01-05 00:00:00', NULL);

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
