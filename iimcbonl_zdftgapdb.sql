-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2024 at 03:57 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iimcbonl_zdftgapdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accid` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT './_store/accounts/profiles/avatar.png',
  `lastlogin` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accid`, `is_admin`, `email`, `mobile`, `password`, `title`, `firstname`, `lastname`, `profile_photo`, `lastlogin`, `enabled`, `created`) VALUES
(1, 1, 'admin@iimcb.com', NULL, '*mainADMIN', '', 'IIMCB', 'ADMIN', './_store/accounts/profiles/avatar.png', '2023-07-28 04:35:27', 0, '2023-07-27 23:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `accid` int(11) DEFAULT NULL,
  `osystem` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'UNKNOWN',
  `browser` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UNKNOWN',
  `device` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UNKNOWN',
  `ipaddr` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `report` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `risklevel` enum('low','medium','high') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'low',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banco_accounts`
--

CREATE TABLE `banco_accounts` (
  `accid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `new_account` tinyint(1) NOT NULL DEFAULT '1',
  `reset_password` tinyint(1) NOT NULL DEFAULT '0',
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `otp` varchar(20) DEFAULT NULL,
  `otp_pending` tinyint(1) NOT NULL DEFAULT '0',
  `otp_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(200) DEFAULT NULL,
  `address2` text,
  `city` varchar(200) DEFAULT NULL,
  `zipcode` varchar(15) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `title` varchar(20) NOT NULL DEFAULT 'Mr',
  `sex` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `currency` varchar(65) DEFAULT 'USD',
  `account_type` varchar(200) NOT NULL DEFAULT 'Savings Account',
  `denytransfer` tinyint(1) NOT NULL DEFAULT '0',
  `balance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `loggedin` int(11) DEFAULT NULL,
  `lastlogin` int(11) DEFAULT NULL,
  `pin` varchar(5) NOT NULL DEFAULT '0000',
  `swift` varchar(30) DEFAULT NULL,
  `iban` varchar(30) DEFAULT NULL,
  `photo` varchar(360) DEFAULT NULL,
  `avatar` varchar(300) NOT NULL DEFAULT './_store/avatars/user.png',
  `photoid` varchar(360) DEFAULT NULL,
  `idnumber` varchar(100) DEFAULT NULL,
  `kyc` tinyint(1) NOT NULL DEFAULT '0',
  `kyc_approved` tinyint(1) NOT NULL DEFAULT '0',
  `identification` varchar(200) DEFAULT './_store/accounts/kyc/identification.png',
  `utility` varchar(200) DEFAULT './_store/accounts/kyc/utility.png',
  `otp_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `email_notix` tinyint(1) NOT NULL DEFAULT '0',
  `sms_notix` tinyint(1) NOT NULL DEFAULT '1',
  `profile_notix` tinyint(1) NOT NULL DEFAULT '0',
  `enable_transfer` tinyint(1) NOT NULL DEFAULT '0',
  `enable_error` tinyint(1) NOT NULL DEFAULT '0',
  `transfer_error` enum('taxcode','aml','uvc') NOT NULL DEFAULT 'taxcode',
  `error_code` varchar(24) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banco_accounts`
--

INSERT INTO `banco_accounts` (`accid`, `email`, `password`, `new_account`, `reset_password`, `firstname`, `lastname`, `mobile`, `otp`, `otp_pending`, `otp_time`, `address`, `address2`, `city`, `zipcode`, `state`, `country`, `title`, `sex`, `currency`, `account_type`, `denytransfer`, `balance`, `enabled`, `isadmin`, `loggedin`, `lastlogin`, `pin`, `swift`, `iban`, `photo`, `avatar`, `photoid`, `idnumber`, `kyc`, `kyc_approved`, `identification`, `utility`, `otp_enabled`, `email_notix`, `sms_notix`, `profile_notix`, `enable_transfer`, `enable_error`, `transfer_error`, `error_code`, `created`) VALUES
(60543804, 'admin@iimcb.com', 'tmulXI', 0, 1, 'Iveta', 'Natafalusiova', '+421902975008', '', 0, '2023-08-05 08:45:00', 'Nacina Ves 194', 'Nacina Ves 194', 'Nacima', '01011', 'Nacina ', 'Slovakia', 'Mrs', 'Female', 'USD', 'Savings Account', 0, 193000.00, 1, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/60543804/IMG-20230831-WA0001-1_1.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/9d9b9107e86f078f1bf807b835a70dfa/Screenshot_20230707-232932.jpg', './_store/accounts/profiles/9d9b9107e86f078f1bf807b835a70dfa/Screenshot_20230707-232932_1.jpg', 0, 0, 1, 0, 0, 1, 'uvc', '8681', '2023-07-28 06:25:45'),
(60543805, 'juligromacka50@gmail.com', 'itiswell12', 0, 0, 'Jaime', 'Francisco', '+1 (213) 290?3592', 'GFYR6E', 1, '2023-08-29 06:38:00', 'Flat G, Latitude East, 45a St. Catherines Road, Bournemout, united kingdom ', 'Flat G, Latitude East, 45a St. Catherines Road, Bournemout, united kingdom ', 'Bournemouth', 'BH1', 'Rio de janeriro', 'Brazil', 'Mrs', 'Female', 'USD', 'Current Account', 0, 14400.00, 1, 0, NULL, NULL, '1999', NULL, NULL, NULL, './_store/accounts/profiles/60543805/IMG-20240106-WA0030.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/7a402071d89868769480bfb383688172/IMG-20230829-WA0005-1_1.jpg', './_store/accounts/profiles/7a402071d89868769480bfb383688172/IMG-20230829-WA0005-1_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '2468', '2023-08-29 06:16:05'),
(60543812, 'michealezo@gmail.com', 'rwuq2e5', 1, 1, 'Martin ', 'Owen', '+447851166700', 'W0ZFIX', 1, '2023-08-29 07:02:00', 'United kingdom ', 'United kingdom ', 'Bournemouth', 'BH1', 'Bournemouth', 'United Kingdom', 'Mrs', 'Female', 'USD', 'Current Account', 0, 0.00, 0, 0, NULL, NULL, '0000', NULL, NULL, NULL, './_store/accounts/profiles/60543812/IMG-20230921-WA0015-3.jpg', NULL, NULL, 1, 0, './_store/accounts/profiles/20a795a8ae2be0a11046a066e8349ead/IMG-20230829-WA0008_1.jpg', './_store/accounts/profiles/20a795a8ae2be0a11046a066e8349ead/IMG-20230829-WA0008_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-08-29 06:59:35'),
(60543813, 'matthewclrk84@gmail.com', 'FnCV7cZ', 1, 1, 'Matthew', 'Clark', '+17034586369', '9Q9YIU', 1, '2023-08-30 08:08:00', '+17037583759', '', 'Jersey', '400701', 'Orlando', 'United States', 'Mr', 'Male', 'USD', 'Loan Account', 0, 0.00, 1, 0, NULL, NULL, '0000', NULL, NULL, NULL, './_store/accounts/profiles/d5baf0d99cfed751e37e3d60665e9ecd/download.jpeg', NULL, NULL, 1, 1, './_store/accounts/profiles/d5baf0d99cfed751e37e3d60665e9ecd/id-doc.jpeg', './_store/accounts/profiles/d5baf0d99cfed751e37e3d60665e9ecd/bill-doc.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-08-29 21:46:37'),
(60543814, 'info@iimcb.com', 'abdul12', 0, 0, 'mudrikah', 'abdul azis', '+966500223596', NULL, 0, '2023-08-31 12:29:04', 'reemas beauty center safwa 32833,Dammam,saudiarabia', 'reemas beauty center safwa 32833,Dammam,saudiarabia', 'Jakarta ', '10110', 'Indonesia ', 'Indonesia', 'Mrs', 'Female', 'USD', 'Savings Account', 1, 184500.00, 1, 0, NULL, NULL, '1947', NULL, NULL, NULL, './_store/accounts/profiles/22a46add1a9771669a62684e78e3d7cf/IMG-20230830-WA0045.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/22a46add1a9771669a62684e78e3d7cf/IMG-20230830-WA0045_1.jpg', './_store/accounts/profiles/22a46add1a9771669a62684e78e3d7cf/IMG-20230830-WA0045_2.jpg', 0, 0, 1, 0, 0, 1, 'taxcode', '2468', '2023-08-31 06:59:04'),
(60543819, 'customercare@iimcb.com', 'tony12', 0, 0, 'Matthew Martin', 'Owen', '+4218979464', NULL, 0, '2023-08-31 15:45:52', 'Flat G, Latitude East, 45a St. Catherines Road, Bournemout, united kingdom', 'Flat G, Latitude East, 45a St. Catherines Road, Bournemout, united kingdom', 'Nacina ', '01911', 'Nacina ', 'Slovakia', 'Mrs', 'Female', 'USD', 'Current Account', 0, 0.00, 1, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/60543819/IMG-20230930-WA0039-3.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/a387141122d81023bdafcd7a5b3c7874/IMG-20230831-WA0001-1_1.jpg', './_store/accounts/profiles/a387141122d81023bdafcd7a5b3c7874/IMG-20230831-WA0001.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-08-31 10:15:52'),
(60543820, 'frankedisoniimb@outlook.com', 'angel12', 0, 0, 'Maria delos Angeles ', 'Aguilera corona ', '526213434', NULL, 0, '2023-09-04 17:14:40', 'Galerías Celaya Eje. Nor-Oriente 200 Col. Las compuertas del campestre Celaya', 'Galerías Celaya Eje. Nor-Oriente 200 Col. Las compuertas del campestre Celaya', 'Celaya', '52', 'Celaya', 'Mexico', 'Mrs', 'Female', 'USD', 'Current Account', 0, 3800.00, 1, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/1ab2a1e9a4ee040daddd1bd42ebb77c3/IMG-20230904-WA0012.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/1ab2a1e9a4ee040daddd1bd42ebb77c3/IMG-20230904-WA0012_1.jpg', './_store/accounts/profiles/1ab2a1e9a4ee040daddd1bd42ebb77c3/IMG-20230904-WA0012_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-09-04 11:44:40'),
(60543821, 'Edwa15shirley@yahoo.com', 'Toney12', 0, 0, 'Shirley', 'Ann Edwards', '+1780 217-0219', NULL, 0, '2023-09-19 13:50:43', '1, 10443-156 street NW  Edmonton, AB  T5P 2R6', '1, 10443-156 street NW   Edmonton, AB  T5P 2R6', 'Edmonton ', 'T5P2R6', 'Alberta ', 'Canada', 'Mr', 'Male', 'USD', 'Savings Account', 0, 521000.00, 0, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/60543821/IMG-20240221-WA0015-2_1.jpg', NULL, NULL, 1, 1, './_store/accounts/kyc/60543821/IMG-20240221-WA0015-2_1.jpg', './_store/accounts/kyc/60543821/IMG-20240221-WA0015-2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-09-19 08:20:43'),
(60543822, 'julitagromacka60@op.pl', 'j04aOBv', 1, 1, 'Julita ', 'Gromacka ', '+48518938185', NULL, 0, '2023-09-19 14:06:20', 'Bydgoszcz ', 'Bydgoszcz ', 'Bydgoszcz ', '00001', 'Poland', 'Poland', 'Mrs', 'Female', 'USD', 'Platinum Business Account', 1, 97000.00, 1, 0, NULL, NULL, '0000', NULL, NULL, NULL, './_store/accounts/profiles/4967c7933e23b3452b6400407ec652f0/IMG-20230919-WA0000.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/4967c7933e23b3452b6400407ec652f0/IMG-20230919-WA0000_1.jpg', './_store/accounts/profiles/4967c7933e23b3452b6400407ec652f0/IMG-20230919-WA0000_2.jpg', 0, 0, 1, 0, 0, 1, 'taxcode', '', '2023-09-19 08:36:20'),
(60543824, 'm8831627@gmail.com', '1234567', 0, 0, 'Julita ', 'Gromacka ', '+48518938185', NULL, 0, '2023-09-19 19:35:25', 'Bydgoszcz ', 'Bydgoszcz ', 'Miasta', '0001', 'Warsaw ', 'Poland', 'Mr', 'Male', 'USD', 'Current Account', 0, 97000.00, 1, 0, NULL, NULL, '4501', NULL, NULL, NULL, './_store/accounts/profiles/905c802c1564cd0c43ba193884efcdad/IMG-20230919-WA0000.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/905c802c1564cd0c43ba193884efcdad/IMG-20230919-WA0001.jpg', './_store/accounts/profiles/905c802c1564cd0c43ba193884efcdad/IMG-20230919-WA0000_1.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-09-19 14:05:25'),
(60543825, 'accountant-general@iimcb.com', '246810', 0, 0, ' Meltesalet ', 'Claudine', '+44 9157388828', NULL, 0, '2023-09-28 15:40:26', 'Orap Malekula North East Area Cel Malekula Island Malampa Province', 'Orap Malekula North East Area Cel Malekula Island Malampa Province', 'cavite', '3166', 'Malampa Province', 'Vanuatu', 'Mr', 'Male', 'USD', 'Current Account', 0, 4800000.00, 0, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/60543825/IMG-20240327-WA0014.jpg', NULL, NULL, 1, 1, './_store/accounts/kyc/60543825/IMG-20240327-WA0014.jpg', './_store/accounts/kyc/60543825/IMG-20240327-WA0014_1.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-09-28 10:10:26'),
(60543826, 'mathewown276@gmail.com', 'xYSZLn', 0, 1, 'Matthew Martin', 'Owen', '+4478511600', NULL, 0, '2023-10-28 20:17:35', 'Flat G, Latitude East, 45a St. Catherines Road, Bournemout, united kingdom', 'Flat G, Latitude East, 45a St. Catherines Road, Bournemout, united kingdom', 'Bournemouth', 'BH1', 'Bournemouth', 'United Kingdom', 'Mr', 'Male', 'USD', 'Current Account', 1, 1000000.00, 0, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/60543826/IMG-20230930-WA0039-2.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/9d9b9107e86f078f1bf807b835a70dfa/IMG-20230930-WA0039-2.jpg', './_store/accounts/profiles/9d9b9107e86f078f1bf807b835a70dfa/IMG-20230930-WA0039-2_1.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-10-28 14:47:35'),
(60543827, 'arodrigu2410@yahoo.com', '@home', 0, 0, 'Antonio Rodriguez', ' Torres', '+528441224192', NULL, 0, '2023-10-30 17:47:56', 'Vinaroz 306,   Portal de Aragón   CP 25290   Saltillo, Coahuila, Mexico', 'Vinaroz 306,   Portal de Aragón   CP 25290   Saltillo, Coahuila, Mexico', 'Coahuila ', '11000', 'Coahuila ', 'Mexico', 'Mr', 'Male', 'USD', 'Current Account', 0, 374000.00, 0, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/b760369e0a2c4fcb7c21dd200f6fee39/IMG-20231030-WA0009.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/b760369e0a2c4fcb7c21dd200f6fee39/IMG-20231030-WA0009_1.jpg', './_store/accounts/profiles/b760369e0a2c4fcb7c21dd200f6fee39/IMG-20231030-WA0009_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-10-30 12:17:56'),
(60543828, 'edita.cabatit@gmail.com', 'apple12', 0, 0, 'EDITA SUBANG                ', 'CABATIT', '+11 (780) 266 6168', NULL, 0, '2023-11-01 17:36:27', '587 Ebbers Way NW   Edmonton Alberta   Canada', '587 Ebbers Way NW   Edmonton Alberta   Canada', 'Edmonton ', '4000', 'Edmonton ', 'Canada', 'Mrs', 'Female', 'USD', 'Current Account', 0, 285000.00, 0, 0, NULL, NULL, '0000', NULL, NULL, NULL, './_store/accounts/profiles/23c1fdf1dcfc0589f1324bdb119ba0a2/IMG-20231101-WA0013.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/23c1fdf1dcfc0589f1324bdb119ba0a2/IMG-20231101-WA0013_1.jpg', './_store/accounts/profiles/23c1fdf1dcfc0589f1324bdb119ba0a2/IMG-20231101-WA0013_2.jpg', 0, 0, 1, 0, 0, 1, 'taxcode', '', '2023-11-01 12:06:27'),
(60543829, 'wsparcie-ngo@wp.plA', 'Gjohn12', 0, 0, 'ANETA ROZWADOWSKA', 'JACHACZ', '+48602-266-323', NULL, 0, '2023-11-27 14:35:53', '20-357 Lublin,  ul. Dul?by 1/21 POLSKA-POLAND', '20-357 Lublin,  ul. Dul?by 1/21 POLSKA-POLAND', 'Lublin', '20001', 'Lublin ', 'Poland', 'Mrs', 'Female', 'USD', 'Current Account', 0, 185000.00, 1, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/cc0365abadd7a5e39a8204990f14928e/IMG-20231124-WA0005-1.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/cc0365abadd7a5e39a8204990f14928e/IMG-20231124-WA0005-1_1.jpg', './_store/accounts/profiles/cc0365abadd7a5e39a8204990f14928e/IMG-20231124-WA0005-1_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2023-11-27 09:05:53'),
(60543830, 'jagodaa49@gmail.com', 'Jadwi12', 0, 0, 'Jadwiga ', 'Wojewodzka', '+48 667 041 956', NULL, 0, '2024-02-21 13:06:58', '21-560  Miedzyrzec  Podlaski   ulica Partyzantow 59A/10    wojewodztwo Lubelskie', '21-560  Miedzyrzec  Podlaski   ulica Partyzantow 59A/10    wojewodztwo Lubelskie', 'Lubelskie', '00034', 'Poland', 'Poland', 'Mrs', 'Female', 'USD', 'Current Account', 0, 69000.00, 0, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/f1bc2fa05980f22fba7397edc669d08b/IMG-20240221-WA0015.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/f1bc2fa05980f22fba7397edc669d08b/IMG-20240221-WA0015_1.jpg', './_store/accounts/profiles/f1bc2fa05980f22fba7397edc669d08b/IMG-20240221-WA0015_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2024-02-21 07:36:58'),
(60543831, 'abuncar@gmail.com', 'mOc9PK4', 1, 1, 'Peggy', '  Lee Smith', '+17809321177', NULL, 0, '2024-03-13 20:10:04', '11804 Abbotsfield Road NW Apartment 111 Building 4 Edmonton Alberta Canada ', '11804 Abbotsfield Road NW Apartment 111 Building 4 Edmonton Alberta Canada ', 'Edmonton ', 'T5B 3T6', 'Alberta ', 'Canada', 'Mrs', 'Female', 'USD', 'Current Account', 0, 0.00, 0, 0, NULL, NULL, '0000', NULL, NULL, NULL, './_store/accounts/profiles/f86bccbfd1567670c78d963034cae0e3/IMG-20240221-WA0015-1.jpg', NULL, NULL, 1, 0, './_store/accounts/profiles/f86bccbfd1567670c78d963034cae0e3/IMG-20240221-WA0015-1_1.jpg', './_store/accounts/profiles/f86bccbfd1567670c78d963034cae0e3/IMG-20240221-WA0015-1_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2024-03-13 14:40:04'),
(60543833, 'harrisonpaul103644@gmail.com', 'Tony123', 0, 0, 'Lee Smith ', 'Peggy ', '+1780 932 1177', NULL, 0, '2024-03-13 21:35:45', '11804 Abbotsfield Road NW Apartment 111 Building 4 Edmonton Alberta Canada ', '11804 Abbotsfield Road NW Apartment 111 Building 4 Edmonton Alberta Canada ', 'Edmonton ', '24244', 'Alberta ', 'Canada', 'Mrs', 'Female', 'USD', 'Current Account', 0, 110000.00, 1, 0, NULL, NULL, '8681', NULL, NULL, NULL, './_store/accounts/profiles/2c08bb40b73ac136103d2aa8a57cabde/IMG-20240221-WA0015-1.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/2c08bb40b73ac136103d2aa8a57cabde/IMG-20240221-WA0015-1_1.jpg', './_store/accounts/profiles/2c08bb40b73ac136103d2aa8a57cabde/IMG-20240221-WA0015-1_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2024-03-13 16:05:45'),
(60543836, 'mathewowen647@gmail.com', 'warpmuK', 1, 1, 'Meltesalet', 'Claudine', '+447851166700', NULL, 0, '2024-04-02 14:11:30', 'Orap Malekula North East Area Cel Malekula Island Malampa Province', 'Orap Malekula North East Area Cel Malekula Island Malampa Province', 'Melekula', '3166', 'Malampa', 'Vanuatu', 'Mrs', 'Female', 'USD', 'Current Account', 0, 4800000.00, 0, 0, NULL, NULL, '0000', NULL, NULL, NULL, './_store/accounts/profiles/0777929ca969ae428994d9017ee98709/IMG-20240327-WA0014.jpg', NULL, NULL, 1, 1, './_store/accounts/profiles/0777929ca969ae428994d9017ee98709/IMG-20240327-WA0014_1.jpg', './_store/accounts/profiles/0777929ca969ae428994d9017ee98709/IMG-20240327-WA0014_2.jpg', 0, 0, 1, 0, 0, 0, 'taxcode', '', '2024-04-02 08:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `banco_activities`
--

CREATE TABLE `banco_activities` (
  `id` int(11) NOT NULL,
  `accid` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `os` varchar(120) NOT NULL,
  `browser` varchar(120) NOT NULL,
  `device` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banco_activities`
--

INSERT INTO `banco_activities` (`id`, `accid`, `ip`, `os`, `browser`, `device`, `created`) VALUES
(361, 60543805, '197.210.226.86', 'Android', 'Handheld Browser', 'Mobile', '2023-08-30 08:32:35'),
(360, 60543804, '185.189.115.145', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-05 08:45:37'),
(359, 60543804, '196.196.203.34', 'Android', 'Handheld Browser', 'Mobile', '2023-07-28 07:09:00'),
(358, 60543804, '196.196.203.34', 'Android', 'Handheld Browser', 'Mobile', '2023-07-28 06:50:34'),
(357, 60543804, '196.196.203.2', 'Android', 'Handheld Browser', 'Mobile', '2023-07-28 06:35:20'),
(362, 60543805, '197.210.226.86', 'Android', 'Handheld Browser', 'Mobile', '2023-08-30 08:36:31'),
(363, 60543805, '139.144.199.125', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-30 09:03:20'),
(364, 60543805, '139.144.199.125', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-30 09:07:19'),
(365, 60543805, '139.144.199.125', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-30 09:09:41'),
(366, 60543805, '178.79.158.45', 'Android', 'Handheld Browser', 'Mobile', '2023-08-30 09:10:31'),
(367, 60543805, '139.144.199.125', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-30 10:36:50'),
(368, 60543812, '178.79.158.45', 'Android', 'Handheld Browser', 'Mobile', '2023-08-30 14:43:46'),
(369, 60543805, '178.79.158.45', 'Android', 'Handheld Browser', 'Mobile', '2023-08-30 14:46:10'),
(370, 60543805, '102.90.42.145', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-30 15:38:47'),
(371, 60543805, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 07:19:17'),
(372, 60543814, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 07:20:36'),
(373, 60543814, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 07:30:35'),
(374, 60543814, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 08:08:52'),
(375, 60543815, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 09:09:47'),
(376, 60543815, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 09:14:11'),
(377, 60543815, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 09:19:25'),
(378, 60543814, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 09:22:00'),
(379, 60543815, '31.24.230.78', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 09:26:08'),
(380, 60543815, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 09:32:59'),
(381, 60543805, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 09:37:59'),
(382, 60543815, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 09:39:45'),
(383, 60543814, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 09:42:00'),
(384, 60543819, '197.210.84.35', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 10:17:45'),
(385, 60543819, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 10:20:34'),
(386, 60543814, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 10:37:11'),
(387, 60543819, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 10:38:54'),
(388, 60543804, '193.9.112.154', 'iPhone', 'Handheld Browser', 'Mobile', '2023-08-31 10:53:37'),
(389, 60543804, '197.210.84.184', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 11:07:10'),
(390, 60543804, '197.210.84.184', 'Android', 'Handheld Browser', 'Mobile', '2023-08-31 11:31:55'),
(391, 60543819, '178.79.158.45', 'Android', 'Handheld Browser', 'Mobile', '2023-09-01 06:20:09'),
(392, 60543805, '197.210.85.151', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-01 11:19:56'),
(393, 60543820, '185.132.36.5', 'Android', 'Handheld Browser', 'Mobile', '2023-09-04 11:52:24'),
(394, 60543820, '185.132.36.5', 'Android', 'Handheld Browser', 'Mobile', '2023-09-04 12:02:20'),
(395, 60543820, '187.187.198.44', 'Android', 'Handheld Browser', 'Mobile', '2023-09-04 13:01:53'),
(396, 60543820, '187.187.198.44', 'Android', 'Handheld Browser', 'Mobile', '2023-09-04 13:03:10'),
(397, 60543820, '187.187.198.44', 'Android', 'Handheld Browser', 'Mobile', '2023-09-04 13:05:26'),
(398, 60543820, '186.96.26.201', 'Android', 'Handheld Browser', 'Mobile', '2023-09-04 13:57:16'),
(399, 60543805, '197.210.84.77', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-05 13:26:27'),
(400, 60543805, '197.210.79.142', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-05 17:54:08'),
(401, 60543805, '173.73.189.135', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-05 23:30:14'),
(402, 60543805, '173.73.189.135', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-05 23:42:31'),
(403, 60543805, '173.73.189.135', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 01:14:23'),
(404, 60543805, '173.73.189.135', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 01:57:28'),
(405, 60543805, '173.73.189.135', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 01:58:46'),
(406, 60543805, '178.79.168.170', 'Android', 'Handheld Browser', 'Mobile', '2023-09-06 05:00:50'),
(407, 60543805, '178.79.168.170', 'Android', 'Handheld Browser', 'Mobile', '2023-09-06 05:29:12'),
(408, 60543805, '178.79.168.170', 'Android', 'Handheld Browser', 'Mobile', '2023-09-06 05:31:14'),
(409, 60543805, '178.79.168.170', 'Android', 'Handheld Browser', 'Mobile', '2023-09-06 05:33:05'),
(410, 60543814, '178.79.168.170', 'Android', 'Handheld Browser', 'Mobile', '2023-09-06 05:47:29'),
(411, 60543805, '173.73.189.135', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 05:49:55'),
(412, 60543805, '178.79.168.170', 'Android', 'Handheld Browser', 'Mobile', '2023-09-06 06:04:32'),
(413, 60543805, '172.56.33.232', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 16:43:58'),
(414, 60543805, '172.56.33.232', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 18:34:23'),
(415, 60543805, '172.56.2.143', 'iPhone', 'Handheld Browser', 'Mobile', '2023-09-06 20:09:19'),
(416, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 12:24:45'),
(417, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 12:24:45'),
(418, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 12:26:07'),
(419, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 12:30:00'),
(420, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 12:41:47'),
(421, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:04:55'),
(422, 60543819, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:21:43'),
(423, 60543819, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:22:29'),
(424, 60543819, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:27:31'),
(425, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:48:17'),
(426, 60543821, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:54:57'),
(427, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 13:58:24'),
(428, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:08:05'),
(429, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:18:33'),
(430, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:23:24'),
(431, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:25:56'),
(432, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:30:37'),
(433, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:32:41'),
(434, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:36:19'),
(435, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:38:35'),
(436, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:40:50'),
(437, 60543804, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:44:21'),
(438, 60543804, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:44:44'),
(439, 60543804, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:44:54'),
(440, 60543804, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:45:34'),
(441, 60543804, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:46:37'),
(442, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:47:20'),
(443, 60543822, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:50:01'),
(444, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:51:53'),
(445, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:52:36'),
(446, 60543824, '88.202.230.203', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 14:53:04'),
(447, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 15:48:18'),
(448, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 15:55:11'),
(449, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 15:55:11'),
(450, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:27:28'),
(451, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:39:10'),
(452, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:39:11'),
(453, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:50:28'),
(454, 60543805, '109.228.49.97', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:51:21'),
(455, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:52:03'),
(456, 60543805, '109.228.49.97', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:52:22'),
(457, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 16:53:58'),
(458, 60543824, '188.146.248.125', 'Android', 'Handheld Browser', 'Mobile', '2023-09-19 18:01:26'),
(459, 60543825, '134.65.56.156', 'Android', 'Handheld Browser', 'Mobile', '2023-09-28 10:25:10'),
(460, 60543825, '115.147.63.70', 'Android', 'Handheld Browser', 'Mobile', '2023-09-30 12:10:05'),
(461, 60543825, '122.54.91.65', 'Android', 'Handheld Browser', 'Mobile', '2023-09-30 12:18:03'),
(462, 60543825, '115.147.63.70', 'Android', 'Handheld Browser', 'Mobile', '2023-10-02 12:14:48'),
(463, 60543805, '197.210.226.34', 'iPhone', 'Handheld Browser', 'Mobile', '2023-10-05 15:00:52'),
(464, 60543804, '134.65.56.172', 'Android', 'Handheld Browser', 'Mobile', '2023-10-20 13:52:43'),
(465, 60543826, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 14:53:22'),
(466, 60543826, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 14:54:12'),
(467, 60543804, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 14:56:39'),
(468, 60543826, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 14:57:35'),
(469, 60543826, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 14:58:30'),
(470, 60543826, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 15:03:28'),
(471, 60543826, '142.93.38.181', 'Android', 'Handheld Browser', 'Mobile', '2023-10-28 15:07:43'),
(472, 60543827, '197.210.226.192', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 12:21:19'),
(473, 60543827, '197.210.226.192', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 12:24:07'),
(474, 60543827, '197.210.226.192', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 12:26:41'),
(475, 60543827, '197.210.55.51', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 12:32:03'),
(476, 60543827, '197.210.226.47', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 12:37:20'),
(477, 60543827, '197.210.55.175', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 12:42:31'),
(478, 60543827, '197.210.55.22', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 13:55:33'),
(479, 60543827, '197.210.226.196', 'Android', 'Handheld Browser', 'Mobile', '2023-10-30 13:58:34'),
(480, 60543827, '189.218.23.164', 'Windows 10', 'Chrome', 'Computer', '2023-10-30 18:07:54'),
(481, 60543826, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2023-10-31 19:08:58'),
(482, 60543826, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2023-10-31 19:19:36'),
(483, 60543827, '189.218.23.164', 'Windows 10', 'Chrome', 'Computer', '2023-10-31 21:30:11'),
(484, 60543828, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2023-11-01 12:08:58'),
(485, 60543828, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2023-11-01 12:15:21'),
(486, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-01 14:07:25'),
(487, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:19:54'),
(488, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:39:43'),
(489, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:40:05'),
(490, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:41:27'),
(491, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:41:44'),
(492, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:44:23'),
(493, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:44:58'),
(494, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:52:28'),
(495, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:53:26'),
(496, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:55:10'),
(497, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:55:38'),
(498, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:57:57'),
(499, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 18:59:13'),
(500, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 19:02:51'),
(501, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 19:07:48'),
(502, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 19:11:38'),
(503, 60543828, '137.186.238.219', 'Android', 'Handheld Browser', 'Mobile', '2023-11-02 19:11:56'),
(504, 60543826, '88.208.199.126', 'Android', 'Handheld Browser', 'Mobile', '2023-11-19 13:22:21'),
(505, 60543826, '46.205.210.232', 'Windows 10', 'Chrome', 'Computer', '2023-11-19 18:05:11'),
(506, 60543826, '46.205.210.232', 'Windows 10', 'Chrome', 'Computer', '2023-11-20 12:21:22'),
(507, 60543804, '77.68.48.201', 'Android', 'Handheld Browser', 'Mobile', '2023-11-20 16:02:08'),
(508, 60543826, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:10:55'),
(509, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:13:14'),
(510, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:18:20'),
(511, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:22:59'),
(512, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:31:38'),
(513, 60543804, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:36:46'),
(514, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:42:35'),
(515, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 09:54:05'),
(516, 60543829, '77.68.102.20', 'Android', 'Handheld Browser', 'Mobile', '2023-11-27 10:00:08'),
(517, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-11-27 14:21:29'),
(518, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-11-27 14:22:30'),
(519, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-11-27 14:37:27'),
(520, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-11-30 15:49:08'),
(521, 60543829, '188.146.104.16', 'Android', 'Handheld Browser', 'Mobile', '2023-11-30 20:13:24'),
(522, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 15:04:58'),
(523, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 15:10:54'),
(524, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 15:11:17'),
(525, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 15:15:55'),
(526, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 15:30:40'),
(527, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 15:40:50'),
(528, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 16:03:44'),
(529, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 16:12:56'),
(530, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 16:13:50'),
(531, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 16:20:11'),
(532, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 16:31:13'),
(533, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 16:33:35'),
(534, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 17:24:14'),
(535, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 18:38:08'),
(536, 60543829, '89.77.60.88', 'Windows 10', 'Chrome', 'Computer', '2023-12-01 23:09:11'),
(537, 60543829, '145.224.100.111', 'Windows 10', 'Chrome', 'Computer', '2023-12-03 10:52:13'),
(538, 60543829, '145.224.100.111', 'Windows 10', 'Chrome', 'Computer', '2023-12-04 20:21:23'),
(539, 60543829, '46.204.4.118', 'Android', 'Handheld Browser', 'Mobile', '2023-12-05 15:44:15'),
(540, 60543829, '46.204.4.118', 'Android', 'Handheld Browser', 'Mobile', '2023-12-05 18:48:26'),
(541, 60543829, '46.204.4.118', 'Android', 'Handheld Browser', 'Mobile', '2023-12-05 20:28:16'),
(542, 60543829, '109.237.26.32', 'Android', 'Handheld Browser', 'Mobile', '2023-12-06 05:46:43'),
(543, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-06 10:05:47'),
(544, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-06 10:38:40'),
(545, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-06 10:42:14'),
(546, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-06 10:42:55'),
(547, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-06 10:47:30'),
(548, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-06 16:55:54'),
(549, 60543829, '188.146.91.18', 'Android', 'Handheld Browser', 'Mobile', '2023-12-06 17:24:32'),
(550, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-11 15:16:58'),
(551, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-11 15:16:59'),
(552, 60543829, '188.146.90.241', 'Android', 'Handheld Browser', 'Mobile', '2023-12-12 15:05:59'),
(553, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-15 15:46:50'),
(554, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-17 11:39:14'),
(555, 60543829, '46.205.211.109', 'Windows 10', 'Chrome', 'Computer', '2023-12-20 11:30:37'),
(556, 60543829, '188.146.96.56', 'Android', 'Handheld Browser', 'Mobile', '2023-12-23 12:54:55'),
(557, 60543829, '188.146.96.56', 'Android', 'Handheld Browser', 'Mobile', '2023-12-23 23:20:59'),
(558, 60543829, '188.146.96.56', 'Android', 'Handheld Browser', 'Mobile', '2023-12-25 22:41:22'),
(559, 60543829, '46.151.185.42', 'Windows 10', 'Chrome', 'Computer', '2023-12-27 10:44:09'),
(560, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2023-12-27 14:49:05'),
(561, 60543829, '188.146.92.72', 'Android', 'Handheld Browser', 'Mobile', '2023-12-28 14:02:57'),
(562, 60543829, '188.146.92.72', 'Android', 'Handheld Browser', 'Mobile', '2023-12-28 14:22:54'),
(563, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2023-12-28 16:10:13'),
(564, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-01 11:19:05'),
(565, 60543829, '188.146.92.72', 'Android', 'Handheld Browser', 'Mobile', '2024-01-02 08:54:51'),
(566, 60543829, '46.151.185.42', 'Windows 10', 'Chrome', 'Computer', '2024-01-02 10:26:43'),
(567, 60543829, '188.146.92.72', 'Android', 'Handheld Browser', 'Mobile', '2024-01-02 19:44:49'),
(568, 60543829, '188.146.92.72', 'Android', 'Handheld Browser', 'Mobile', '2024-01-04 23:22:44'),
(569, 60543805, '88.202.230.77', 'Android', 'Handheld Browser', 'Mobile', '2024-01-06 09:32:28'),
(570, 60543805, '88.202.230.77', 'Android', 'Handheld Browser', 'Mobile', '2024-01-06 09:56:32'),
(571, 60543826, '88.202.230.77', 'Android', 'Handheld Browser', 'Mobile', '2024-01-06 10:12:08'),
(572, 60543826, '88.202.230.77', 'Android', 'Handheld Browser', 'Mobile', '2024-01-06 10:13:26'),
(573, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-09 19:42:37'),
(574, 60543805, '197.210.78.190', 'Android', 'Handheld Browser', 'Mobile', '2024-01-10 16:07:32'),
(575, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-11 11:37:24'),
(576, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-11 14:13:41'),
(577, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-11 14:14:11'),
(578, 60543805, '197.210.227.177', 'Android', 'Handheld Browser', 'Mobile', '2024-01-11 21:23:39'),
(579, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-11 22:57:58'),
(580, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-12 08:27:24'),
(581, 60543829, '88.208.225.113', 'Android', 'Handheld Browser', 'Mobile', '2024-01-12 10:02:39'),
(582, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-12 14:00:27'),
(583, 60543829, '139.162.205.93', 'Android', 'Handheld Browser', 'Mobile', '2024-01-12 14:09:48'),
(584, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-12 20:18:57'),
(585, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-13 08:45:52'),
(586, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-13 11:09:10'),
(587, 60543805, '197.210.226.152', 'Android', 'Handheld Browser', 'Mobile', '2024-01-13 12:07:45'),
(588, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-13 14:43:31'),
(589, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-13 14:49:51'),
(590, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-13 22:52:14'),
(591, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-14 00:45:39'),
(592, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-14 00:48:12'),
(593, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-14 00:49:23'),
(594, 60543805, '139.162.236.226', 'Android', 'Handheld Browser', 'Mobile', '2024-01-14 03:56:11'),
(595, 60543805, '139.162.236.226', 'Android', 'Handheld Browser', 'Mobile', '2024-01-14 03:57:05'),
(596, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-14 11:01:51'),
(597, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-14 13:00:39'),
(598, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-14 17:06:51'),
(599, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-15 01:30:48'),
(600, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-15 02:05:14'),
(601, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-15 14:03:49'),
(602, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-15 14:03:53'),
(603, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-15 14:03:54'),
(604, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-15 14:03:55'),
(605, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-15 14:43:14'),
(606, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-16 09:30:51'),
(607, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-16 13:08:45'),
(608, 60543829, '188.146.90.172', 'Android', 'Handheld Browser', 'Mobile', '2024-01-16 16:03:56'),
(609, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-16 18:02:17'),
(610, 60543829, '188.146.97.217', 'Android', 'Handheld Browser', 'Mobile', '2024-01-17 16:20:05'),
(611, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-18 18:13:30'),
(612, 60543805, '197.210.84.111', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 07:08:14'),
(613, 60543805, '109.74.199.169', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 20:00:16'),
(614, 60543805, '109.74.199.169', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 20:17:11'),
(615, 60543805, '109.74.199.169', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 20:42:26'),
(616, 60543805, '109.74.199.169', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 20:46:48'),
(617, 60543805, '109.74.199.169', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 21:22:48'),
(618, 60543805, '109.74.199.169', 'Android', 'Handheld Browser', 'Mobile', '2024-01-19 21:26:59'),
(619, 60543805, '102.90.57.137', 'Android', 'Handheld Browser', 'Mobile', '2024-01-20 18:06:04'),
(620, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-23 19:41:12'),
(621, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-23 19:41:14'),
(622, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-23 19:43:38'),
(623, 60543829, '188.146.97.219', 'Android', 'Handheld Browser', 'Mobile', '2024-01-24 11:31:12'),
(624, 60543829, '195.117.99.7', 'Windows 10', 'Firefox', 'Computer', '2024-01-24 11:31:54'),
(625, 60543829, '188.146.97.219', 'Android', 'Handheld Browser', 'Mobile', '2024-01-25 12:47:11'),
(626, 60543829, '188.146.97.219', 'Android', 'Handheld Browser', 'Mobile', '2024-01-25 19:12:37'),
(627, 60543829, '46.205.209.168', 'Windows 10', 'Chrome', 'Computer', '2024-01-26 10:21:07'),
(628, 60543829, '188.146.97.219', 'Android', 'Handheld Browser', 'Mobile', '2024-01-26 14:08:46'),
(629, 60543829, '188.146.97.219', 'Android', 'Handheld Browser', 'Mobile', '2024-01-29 13:02:39'),
(630, 60543829, '188.146.95.18', 'Android', 'Handheld Browser', 'Mobile', '2024-01-31 17:56:38'),
(631, 60543829, '188.146.95.18', 'Android', 'Handheld Browser', 'Mobile', '2024-02-03 21:52:32'),
(632, 60543829, '46.205.210.240', 'Windows 10', 'Chrome', 'Computer', '2024-02-06 18:50:33'),
(633, 60543826, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2024-02-07 08:30:15'),
(634, 60543826, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2024-02-07 08:33:43'),
(635, 60543826, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2024-02-07 08:34:51'),
(636, 60543812, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2024-02-07 08:37:47'),
(637, 60543821, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2024-02-07 08:38:48'),
(638, 60543819, '165.231.33.186', 'Android', 'Handheld Browser', 'Mobile', '2024-02-07 08:41:01'),
(639, 60543819, '197.211.61.143', 'Android', 'Handheld Browser', 'Mobile', '2024-02-10 12:37:22'),
(640, 60543819, '197.211.61.143', 'Android', 'Handheld Browser', 'Mobile', '2024-02-10 12:43:38'),
(641, 60543805, '139.162.246.41', 'Android', 'Handheld Browser', 'Mobile', '2024-02-10 15:06:39'),
(642, 60543805, '77.68.77.31', 'Android', 'Handheld Browser', 'Mobile', '2024-02-10 21:12:53'),
(643, 60543819, '77.68.77.31', 'Android', 'Handheld Browser', 'Mobile', '2024-02-10 21:17:38'),
(644, 60543829, '46.205.210.240', 'Windows 10', 'Chrome', 'Computer', '2024-02-11 18:49:15'),
(645, 60543829, '188.146.91.171', 'Android', 'Handheld Browser', 'Mobile', '2024-02-12 14:44:16'),
(646, 60543829, '188.146.91.171', 'Android', 'Handheld Browser', 'Mobile', '2024-02-15 00:19:18'),
(647, 60543829, '188.146.91.171', 'Android', 'Handheld Browser', 'Mobile', '2024-02-16 11:47:30'),
(648, 60543819, '129.205.113.188', 'Android', 'Handheld Browser', 'Mobile', '2024-02-20 18:42:29'),
(649, 60543821, '196.244.217.50', 'Android', 'Handheld Browser', 'Mobile', '2024-02-21 07:24:07'),
(650, 60543830, '196.244.217.50', 'Android', 'Handheld Browser', 'Mobile', '2024-02-21 07:39:43'),
(651, 60543830, '196.244.217.50', 'Android', 'Handheld Browser', 'Mobile', '2024-02-21 07:42:59'),
(652, 60543830, '196.244.217.50', 'Android', 'Handheld Browser', 'Mobile', '2024-02-21 07:57:16'),
(653, 60543829, '46.205.208.111', 'Windows 10', 'Chrome', 'Computer', '2024-02-21 18:01:06'),
(654, 60543819, '129.205.113.188', 'Android', 'Handheld Browser', 'Mobile', '2024-02-22 15:37:23'),
(655, 60543819, '129.205.113.175', 'Android', 'Handheld Browser', 'Mobile', '2024-02-23 10:53:19'),
(656, 60543819, '129.205.113.175', 'Android', 'Handheld Browser', 'Mobile', '2024-02-23 10:55:09'),
(657, 60543819, '129.205.113.175', 'Android', 'Handheld Browser', 'Mobile', '2024-02-23 11:04:04'),
(658, 60543819, '129.205.113.175', 'Android', 'Handheld Browser', 'Mobile', '2024-02-23 11:31:05'),
(659, 60543825, '136.158.49.23', 'Android', 'Handheld Browser', 'Mobile', '2024-02-23 15:27:50'),
(660, 60543825, '136.158.49.23', 'Android', 'Handheld Browser', 'Mobile', '2024-02-23 15:30:43'),
(661, 60543829, '46.205.208.111', 'Windows 10', 'Chrome', 'Computer', '2024-02-23 17:59:31'),
(662, 60543829, '178.182.205.36', 'Android', 'Handheld Browser', 'Mobile', '2024-02-25 14:40:01'),
(663, 60543829, '178.182.205.22', 'Android', 'Handheld Browser', 'Mobile', '2024-02-26 18:21:40'),
(664, 60543829, '178.182.205.22', 'Android', 'Handheld Browser', 'Mobile', '2024-02-26 21:00:14'),
(665, 60543829, '178.182.205.33', 'Android', 'Handheld Browser', 'Mobile', '2024-02-27 18:19:37'),
(666, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 17:41:25'),
(667, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 17:42:09'),
(668, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 17:46:41'),
(669, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 17:51:34'),
(670, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 17:54:32'),
(671, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:31:27'),
(672, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:32:01'),
(673, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:35:06'),
(674, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:36:33'),
(675, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:37:17'),
(676, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:40:24'),
(677, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:41:47'),
(678, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-28 20:47:48'),
(679, 60543829, '37.30.31.170', 'Android', 'Handheld Browser', 'Mobile', '2024-02-29 10:39:14'),
(680, 60543829, '37.30.31.170', 'Android', 'Handheld Browser', 'Mobile', '2024-02-29 12:49:36'),
(681, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-02-29 14:55:42'),
(682, 60543829, '188.146.31.14', 'Android', 'Handheld Browser', 'Mobile', '2024-03-01 12:47:57'),
(683, 60543829, '188.146.31.14', 'Android', 'Handheld Browser', 'Mobile', '2024-03-01 17:03:56'),
(684, 60543829, '46.151.185.42', 'Windows 10', 'Chrome', 'Computer', '2024-03-04 09:08:04'),
(685, 60543829, '46.205.208.246', 'Windows 10', 'Chrome', 'Computer', '2024-03-04 15:14:46'),
(686, 60543829, '46.170.179.33', 'Windows 10', 'Chrome', 'Computer', '2024-03-06 20:53:35'),
(687, 60543829, '46.170.179.33', 'Windows 10', 'Chrome', 'Computer', '2024-03-06 20:59:23'),
(688, 60543825, '136.158.49.23', 'Android', 'Handheld Browser', 'Mobile', '2024-03-07 14:55:37'),
(689, 60543825, '136.158.49.23', 'Android', 'Handheld Browser', 'Mobile', '2024-03-07 14:56:32'),
(690, 60543829, '178.182.205.38', 'Android', 'Handheld Browser', 'Mobile', '2024-03-08 13:16:14'),
(691, 60543829, '178.182.205.19', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 01:23:05'),
(692, 60543831, '102.90.58.226', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 14:45:31'),
(693, 60543831, '102.90.58.226', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 14:45:33'),
(694, 60543831, '102.90.65.90', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 14:51:04'),
(695, 60543819, '102.90.66.24', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 15:02:45'),
(696, 60543831, '102.90.65.90', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 15:06:48'),
(697, 60543820, '102.90.67.102', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 15:12:09'),
(698, 60543833, '102.90.64.200', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 16:11:21'),
(699, 60543833, '102.90.64.200', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 16:11:23'),
(700, 60543833, '102.90.66.177', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 16:16:45'),
(701, 60543833, '102.90.58.236', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 16:26:02'),
(702, 60543833, '72.143.222.193', 'Android', 'Handheld Browser', 'Mobile', '2024-03-13 20:16:33'),
(703, 60543833, '178.62.9.165', 'Android', 'Handheld Browser', 'Mobile', '2024-03-14 15:03:56'),
(704, 60543833, '72.143.221.178', 'Android', 'Handheld Browser', 'Mobile', '2024-03-14 15:20:08'),
(705, 60543833, '72.143.222.176', 'Android', 'Handheld Browser', 'Mobile', '2024-03-14 15:59:26'),
(706, 60543829, '178.182.205.19', 'Android', 'Handheld Browser', 'Mobile', '2024-03-17 09:54:19'),
(707, 60543829, '46.205.210.24', 'Windows 10', 'Chrome', 'Computer', '2024-03-20 14:32:37'),
(708, 60543805, '139.162.194.254', 'Android', 'Handheld Browser', 'Mobile', '2024-03-29 08:19:56'),
(709, 60543821, '197.210.85.20', 'Android', 'Handheld Browser', 'Mobile', '2024-03-29 09:34:20'),
(710, 60543821, '197.210.85.20', 'Android', 'Handheld Browser', 'Mobile', '2024-03-29 09:41:03'),
(711, 60543821, '197.210.85.20', 'Android', 'Handheld Browser', 'Mobile', '2024-03-29 09:41:39'),
(712, 60543821, '199.126.138.168', 'iPhone', 'Handheld Browser', 'Mobile', '2024-03-29 15:10:57'),
(713, 60543821, '199.126.138.168', 'iPhone', 'Handheld Browser', 'Mobile', '2024-03-29 20:38:18'),
(714, 60543821, '199.126.138.168', 'iPhone', 'Handheld Browser', 'Mobile', '2024-04-01 03:47:02'),
(715, 60543827, '144.126.201.128', 'Android', 'Handheld Browser', 'Mobile', '2024-04-01 11:02:59'),
(716, 60543827, '144.126.201.128', 'Android', 'Handheld Browser', 'Mobile', '2024-04-01 11:03:00'),
(717, 60543836, '213.171.212.79', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 08:45:46'),
(718, 60543836, '213.171.212.79', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 08:53:34'),
(719, 60543836, '213.171.212.79', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 08:56:43'),
(720, 60543825, '213.171.212.79', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 09:04:53'),
(721, 60543825, '213.171.212.79', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 09:11:54'),
(722, 60543825, '213.171.212.79', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 09:13:16'),
(723, 60543825, '202.80.34.35', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 22:26:01'),
(724, 60543825, '102.90.42.21', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 23:06:42'),
(725, 60543825, '102.90.42.21', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 23:08:55'),
(726, 60543825, '202.80.34.35', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 23:29:16'),
(727, 60543825, '202.80.34.35', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 23:31:02'),
(728, 60543825, '202.80.34.35', 'Android', 'Handheld Browser', 'Mobile', '2024-04-02 23:46:08'),
(729, 60543825, '202.80.34.35', 'Android', 'Handheld Browser', 'Mobile', '2024-04-03 00:23:55'),
(730, 60543825, '202.80.34.21', 'Android', 'Handheld Browser', 'Mobile', '2024-04-03 06:02:32'),
(731, 60543825, '202.80.34.21', 'Android', 'Handheld Browser', 'Mobile', '2024-04-03 06:02:36'),
(732, 60543825, '202.80.34.21', 'Android', 'Handheld Browser', 'Mobile', '2024-04-03 06:02:44'),
(733, 60543825, '202.80.34.41', 'Android', 'Handheld Browser', 'Mobile', '2024-04-05 02:50:33'),
(734, 60543825, '202.80.34.41', 'Android', 'Handheld Browser', 'Mobile', '2024-04-05 02:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `banco_countries`
--

CREATE TABLE `banco_countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `btc` tinyint(1) NOT NULL DEFAULT '1',
  `local` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banco_countries`
--

INSERT INTO `banco_countries` (`id`, `sortname`, `name`, `btc`, `local`) VALUES
(1, 'AF', 'Afghanistan', 1, 0),
(2, 'AL', 'Albania', 1, 0),
(3, 'DZ', 'Algeria', 1, 0),
(4, 'AS', 'American Samoa', 1, 0),
(5, 'AD', 'Andorra', 1, 0),
(6, 'AO', 'Angola', 1, 0),
(7, 'AI', 'Anguilla', 1, 0),
(8, 'AQ', 'Antarctica', 1, 0),
(9, 'AG', 'Antigua And Barbuda', 1, 0),
(10, 'AR', 'Argentina', 1, 0),
(11, 'AM', 'Armenia', 1, 0),
(12, 'AW', 'Aruba', 1, 0),
(13, 'AU', 'Australia', 1, 0),
(14, 'AT', 'Austria', 1, 0),
(15, 'AZ', 'Azerbaijan', 1, 0),
(16, 'BS', 'Bahamas The', 1, 0),
(17, 'BH', 'Bahrain', 1, 0),
(18, 'BD', 'Bangladesh', 1, 0),
(19, 'BB', 'Barbados', 1, 0),
(20, 'BY', 'Belarus', 1, 0),
(21, 'BE', 'Belgium', 1, 0),
(22, 'BZ', 'Belize', 1, 0),
(23, 'BJ', 'Benin', 1, 0),
(24, 'BM', 'Bermuda', 1, 0),
(25, 'BT', 'Bhutan', 1, 0),
(26, 'BO', 'Bolivia', 1, 0),
(27, 'BA', 'Bosnia and Herzegovina', 1, 0),
(28, 'BW', 'Botswana', 1, 0),
(29, 'BV', 'Bouvet Island', 1, 0),
(30, 'BR', 'Brazil', 1, 0),
(31, 'IO', 'British Indian Ocean Territory', 1, 0),
(32, 'BN', 'Brunei', 1, 0),
(33, 'BG', 'Bulgaria', 1, 0),
(34, 'BF', 'Burkina Faso', 1, 0),
(35, 'BI', 'Burundi', 1, 0),
(36, 'KH', 'Cambodia', 1, 0),
(37, 'CM', 'Cameroon', 1, 0),
(38, 'CA', 'Canada', 1, 0),
(39, 'CV', 'Cape Verde', 1, 0),
(40, 'KY', 'Cayman Islands', 1, 0),
(41, 'CF', 'Central African Republic', 1, 0),
(42, 'TD', 'Chad', 1, 0),
(43, 'CL', 'Chile', 1, 0),
(44, 'CN', 'China', 1, 0),
(45, 'CX', 'Christmas Island', 1, 0),
(46, 'CC', 'Cocos (Keeling) Islands', 1, 0),
(47, 'CO', 'Colombia', 1, 0),
(48, 'KM', 'Comoros', 1, 0),
(49, 'CG', 'Congo', 1, 0),
(50, 'CD', 'Congo The Democratic Republic Of The', 1, 0),
(51, 'CK', 'Cook Islands', 1, 0),
(52, 'CR', 'Costa Rica', 1, 0),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 1, 0),
(54, 'HR', 'Croatia (Hrvatska)', 1, 0),
(55, 'CU', 'Cuba', 1, 0),
(56, 'CY', 'Cyprus', 1, 0),
(57, 'CZ', 'Czech Republic', 1, 0),
(58, 'DK', 'Denmark', 1, 0),
(59, 'DJ', 'Djibouti', 1, 0),
(60, 'DM', 'Dominica', 1, 0),
(61, 'DO', 'Dominican Republic', 1, 0),
(62, 'TP', 'East Timor', 1, 0),
(63, 'EC', 'Ecuador', 1, 0),
(64, 'EG', 'Egypt', 1, 0),
(65, 'SV', 'El Salvador', 1, 0),
(66, 'GQ', 'Equatorial Guinea', 1, 0),
(67, 'ER', 'Eritrea', 1, 0),
(68, 'EE', 'Estonia', 1, 0),
(69, 'ET', 'Ethiopia', 1, 0),
(70, 'XA', 'External Territories of Australia', 1, 0),
(71, 'FK', 'Falkland Islands', 1, 0),
(72, 'FO', 'Faroe Islands', 1, 0),
(73, 'FJ', 'Fiji Islands', 1, 0),
(74, 'FI', 'Finland', 1, 0),
(75, 'FR', 'France', 1, 0),
(76, 'GF', 'French Guiana', 1, 0),
(77, 'PF', 'French Polynesia', 1, 0),
(78, 'TF', 'French Southern Territories', 1, 0),
(79, 'GA', 'Gabon', 1, 0),
(80, 'GM', 'Gambia The', 1, 0),
(81, 'GE', 'Georgia', 1, 0),
(82, 'DE', 'Germany', 1, 0),
(83, 'GH', 'Ghana', 1, 0),
(84, 'GI', 'Gibraltar', 1, 0),
(85, 'GR', 'Greece', 1, 0),
(86, 'GL', 'Greenland', 1, 0),
(87, 'GD', 'Grenada', 1, 0),
(88, 'GP', 'Guadeloupe', 1, 0),
(89, 'GU', 'Guam', 1, 0),
(90, 'GT', 'Guatemala', 1, 0),
(91, 'XU', 'Guernsey and Alderney', 1, 0),
(92, 'GN', 'Guinea', 1, 0),
(93, 'GW', 'Guinea-Bissau', 1, 0),
(94, 'GY', 'Guyana', 1, 0),
(95, 'HT', 'Haiti', 1, 0),
(96, 'HM', 'Heard and McDonald Islands', 1, 0),
(97, 'HN', 'Honduras', 1, 0),
(98, 'HK', 'Hong Kong S.A.R.', 1, 0),
(99, 'HU', 'Hungary', 1, 0),
(100, 'IS', 'Iceland', 1, 0),
(101, 'IN', 'India', 1, 0),
(102, 'ID', 'Indonesia', 1, 0),
(103, 'IR', 'Iran', 1, 0),
(104, 'IQ', 'Iraq', 1, 0),
(105, 'IE', 'Ireland', 1, 0),
(106, 'IL', 'Israel', 1, 0),
(107, 'IT', 'Italy', 1, 0),
(108, 'JM', 'Jamaica', 1, 0),
(109, 'JP', 'Japan', 1, 0),
(110, 'XJ', 'Jersey', 1, 0),
(111, 'JO', 'Jordan', 1, 0),
(112, 'KZ', 'Kazakhstan', 1, 0),
(113, 'KE', 'Kenya', 1, 0),
(114, 'KI', 'Kiribati', 1, 0),
(115, 'KP', 'Korea North', 1, 0),
(116, 'KR', 'Korea South', 1, 0),
(117, 'KW', 'Kuwait', 1, 0),
(118, 'KG', 'Kyrgyzstan', 1, 0),
(119, 'LA', 'Laos', 1, 0),
(120, 'LV', 'Latvia', 1, 0),
(121, 'LB', 'Lebanon', 1, 0),
(122, 'LS', 'Lesotho', 1, 0),
(123, 'LR', 'Liberia', 1, 0),
(124, 'LY', 'Libya', 1, 0),
(125, 'LI', 'Liechtenstein', 1, 0),
(126, 'LT', 'Lithuania', 1, 0),
(127, 'LU', 'Luxembourg', 1, 0),
(128, 'MO', 'Macau S.A.R.', 1, 0),
(129, 'MK', 'Macedonia', 1, 0),
(130, 'MG', 'Madagascar', 1, 0),
(131, 'MW', 'Malawi', 1, 0),
(132, 'MY', 'Malaysia', 1, 0),
(133, 'MV', 'Maldives', 1, 0),
(134, 'ML', 'Mali', 1, 0),
(135, 'MT', 'Malta', 1, 0),
(136, 'XM', 'Man (Isle of)', 1, 0),
(137, 'MH', 'Marshall Islands', 1, 0),
(138, 'MQ', 'Martinique', 1, 0),
(139, 'MR', 'Mauritania', 1, 0),
(140, 'MU', 'Mauritius', 1, 0),
(141, 'YT', 'Mayotte', 1, 0),
(142, 'MX', 'Mexico', 1, 0),
(143, 'FM', 'Micronesia', 1, 0),
(144, 'MD', 'Moldova', 1, 0),
(145, 'MC', 'Monaco', 1, 0),
(146, 'MN', 'Mongolia', 1, 0),
(147, 'MS', 'Montserrat', 1, 0),
(148, 'MA', 'Morocco', 1, 0),
(149, 'MZ', 'Mozambique', 1, 0),
(150, 'MM', 'Myanmar', 1, 0),
(151, 'NA', 'Namibia', 1, 0),
(152, 'NR', 'Nauru', 1, 0),
(153, 'NP', 'Nepal', 1, 0),
(154, 'AN', 'Netherlands Antilles', 1, 0),
(155, 'NL', 'Netherlands The', 1, 0),
(156, 'NC', 'New Caledonia', 1, 0),
(157, 'NZ', 'New Zealand', 1, 0),
(158, 'NI', 'Nicaragua', 1, 0),
(159, 'NE', 'Niger', 1, 0),
(160, 'NG', 'Nigeria', 1, 1),
(161, 'NU', 'Niue', 1, 0),
(162, 'NF', 'Norfolk Island', 1, 0),
(163, 'MP', 'Northern Mariana Islands', 1, 0),
(164, 'NO', 'Norway', 1, 0),
(165, 'OM', 'Oman', 1, 0),
(166, 'PK', 'Pakistan', 1, 0),
(167, 'PW', 'Palau', 1, 0),
(168, 'PS', 'Palestinian Territory Occupied', 1, 0),
(169, 'PA', 'Panama', 1, 0),
(170, 'PG', 'Papua new Guinea', 1, 0),
(171, 'PY', 'Paraguay', 1, 0),
(172, 'PE', 'Peru', 1, 0),
(173, 'PH', 'Philippines', 1, 0),
(174, 'PN', 'Pitcairn Island', 1, 0),
(175, 'PL', 'Poland', 1, 0),
(176, 'PT', 'Portugal', 1, 0),
(177, 'PR', 'Puerto Rico', 1, 0),
(178, 'QA', 'Qatar', 1, 0),
(179, 'RE', 'Reunion', 1, 0),
(180, 'RO', 'Romania', 1, 0),
(181, 'RU', 'Russia', 1, 0),
(182, 'RW', 'Rwanda', 1, 0),
(183, 'SH', 'Saint Helena', 1, 0),
(184, 'KN', 'Saint Kitts And Nevis', 1, 0),
(185, 'LC', 'Saint Lucia', 1, 0),
(186, 'PM', 'Saint Pierre and Miquelon', 1, 0),
(187, 'VC', 'Saint Vincent And The Grenadines', 1, 0),
(188, 'WS', 'Samoa', 1, 0),
(189, 'SM', 'San Marino', 1, 0),
(190, 'ST', 'Sao Tome and Principe', 1, 0),
(191, 'SA', 'Saudi Arabia', 1, 0),
(192, 'SN', 'Senegal', 1, 0),
(193, 'RS', 'Serbia', 1, 0),
(194, 'SC', 'Seychelles', 1, 0),
(195, 'SL', 'Sierra Leone', 1, 0),
(196, 'SG', 'Singapore', 1, 0),
(197, 'SK', 'Slovakia', 1, 0),
(198, 'SI', 'Slovenia', 1, 0),
(199, 'XG', 'Smaller Territories of the UK', 1, 0),
(200, 'SB', 'Solomon Islands', 1, 0),
(201, 'SO', 'Somalia', 1, 0),
(202, 'ZA', 'South Africa', 1, 0),
(203, 'GS', 'South Georgia', 1, 0),
(204, 'SS', 'South Sudan', 1, 0),
(205, 'ES', 'Spain', 1, 0),
(206, 'LK', 'Sri Lanka', 1, 0),
(207, 'SD', 'Sudan', 1, 0),
(208, 'SR', 'Suriname', 1, 0),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 1, 0),
(210, 'SZ', 'Swaziland', 1, 0),
(211, 'SE', 'Sweden', 1, 0),
(212, 'CH', 'Switzerland', 1, 0),
(213, 'SY', 'Syria', 1, 0),
(214, 'TW', 'Taiwan', 1, 0),
(215, 'TJ', 'Tajikistan', 1, 0),
(216, 'TZ', 'Tanzania', 1, 0),
(217, 'TH', 'Thailand', 1, 0),
(218, 'TG', 'Togo', 1, 0),
(219, 'TK', 'Tokelau', 1, 0),
(220, 'TO', 'Tonga', 1, 0),
(221, 'TT', 'Trinidad And Tobago', 1, 0),
(222, 'TN', 'Tunisia', 1, 0),
(223, 'TR', 'Turkey', 1, 0),
(224, 'TM', 'Turkmenistan', 1, 0),
(225, 'TC', 'Turks And Caicos Islands', 1, 0),
(226, 'TV', 'Tuvalu', 1, 0),
(227, 'UG', 'Uganda', 1, 0),
(228, 'UA', 'Ukraine', 1, 0),
(229, 'AE', 'United Arab Emirates', 1, 0),
(230, 'GB', 'United Kingdom', 1, 0),
(231, 'US', 'United States', 1, 0),
(232, 'UM', 'United States Minor Outlying Islands', 1, 0),
(233, 'UY', 'Uruguay', 1, 0),
(234, 'UZ', 'Uzbekistan', 1, 0),
(235, 'VU', 'Vanuatu', 1, 0),
(236, 'VA', 'Vatican City State (Holy See)', 1, 0),
(237, 'VE', 'Venezuela', 1, 0),
(238, 'VN', 'Vietnam', 1, 0),
(239, 'VG', 'Virgin Islands (British)', 1, 0),
(240, 'VI', 'Virgin Islands (US)', 1, 0),
(241, 'WF', 'Wallis And Futuna Islands', 1, 0),
(242, 'EH', 'Western Sahara', 1, 0),
(243, 'YE', 'Yemen', 1, 0),
(244, 'YU', 'Yugoslavia', 1, 0),
(245, 'ZM', 'Zambia', 1, 0),
(246, 'ZW', 'Zimbabwe', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banco_currencies`
--

CREATE TABLE `banco_currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL DEFAULT 'USD',
  `sign` varchar(12) NOT NULL DEFAULT '&#36;',
  `name` varchar(300) NOT NULL DEFAULT 'Dollars',
  `curr_rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `calltime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banco_currencies`
--

INSERT INTO `banco_currencies` (`id`, `code`, `sign`, `name`, `curr_rate`, `enabled`, `calltime`) VALUES
(1, 'USD', '&#36;', 'US Dollars', 1.08, 1, 1711700397),
(2, 'CAD', '&#36;', 'Canadian Dollars', 1.46, 1, 1711700397),
(3, 'JPY', '&#165;', 'Japanese Yen', 163.04, 1, 1711700397),
(4, 'AUD', '&#36;', 'Australian Dollars', 1.65, 1, 1711700397),
(5, 'INR', '&#8377;', 'Indian Rupee ', 89.80, 1, 1711700397),
(6, 'ZAR', '', 'South African Rand', 20.37, 1, 1711700398),
(7, 'EUR', '&#8364;', 'Euros', 1.00, 1, 1711700398),
(8, 'GBP', '&#163;', 'Pound Sterling', 0.85, 1, 1711700398);

-- --------------------------------------------------------

--
-- Table structure for table `banco_transactions`
--

CREATE TABLE `banco_transactions` (
  `tid` int(11) NOT NULL,
  `transid` varchar(64) DEFAULT NULL,
  `notes` text NOT NULL,
  `accid` int(11) NOT NULL,
  `transferid` int(11) DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` enum('DEBIT','CREDIT','FEES','REVERSE') NOT NULL DEFAULT 'FEES',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `by_admin` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banco_transactions`
--

INSERT INTO `banco_transactions` (`tid`, `transid`, `notes`, `accid`, `transferid`, `amount`, `type`, `sent`, `by_admin`, `created`) VALUES
(6, '1690525868', 'Bentec', 60543804, NULL, 3000.00, 'CREDIT', 0, 1, '2023-07-28 06:31:08'),
(7, '1693290336', 'Bentec ', 60543805, NULL, 1000000.00, 'CREDIT', 0, 1, '2023-08-29 06:25:36'),
(8, '1693290391', 'Anna Maria ', 60543805, NULL, 200000.00, 'CREDIT', 0, 1, '2023-08-29 06:26:31'),
(9, '1693466653', 'IIMCB ', 60543814, NULL, 185000.00, 'CREDIT', 0, 1, '2023-08-31 07:24:13'),
(10, '1693472911', 'Bntec', 60543815, NULL, 188000.00, 'CREDIT', 0, 1, '2023-08-31 09:08:31'),
(11, '1693480331', 'Bentec ', 60543804, NULL, 185000.00, 'CREDIT', 0, 1, '2023-08-31 11:12:11'),
(12, '1693481849', 'IIMCB ', 60543804, NULL, 5000.00, 'CREDIT', 0, 1, '2023-08-31 11:37:29'),
(13, '1693828523', 'IIMCB ', 60543820, NULL, 3800.00, 'CREDIT', 0, 1, '2023-09-04 11:55:23'),
(14, '1693914389', 'Poppyhill', 60543805, NULL, 1000000.00, 'DEBIT', 0, 1, '2023-09-05 11:46:29'),
(15, '1693915314', 'Poppyhill', 60543805, NULL, 3000.00, 'DEBIT', 0, 1, '2023-09-05 12:01:54'),
(16, '1693979861', 'Funds transfer: #5/1693979861/Shdd', 60543814, 5, 500.00, 'DEBIT', 0, NULL, '2023-09-06 05:57:41'),
(17, '1695126203', 'IIMCB ', 60543822, NULL, 97000.00, 'CREDIT', 0, 1, '2023-09-19 12:23:23'),
(18, '1695135226', 'IIMCB ', 60543824, NULL, 970000.00, 'CREDIT', 0, 1, '2023-09-19 14:53:46'),
(19, '1695135256', 'IIMCB ', 60543824, NULL, 970000.00, 'DEBIT', 0, 1, '2023-09-19 14:54:16'),
(20, '1695135276', 'IIMCB ', 60543824, NULL, 97000.00, 'CREDIT', 0, 1, '2023-09-19 14:54:36'),
(21, '1698505518', 'Bentec Group ', 60543826, NULL, 500000.00, 'CREDIT', 0, 1, '2023-10-28 15:05:18'),
(22, '1698505579', 'Bentec Group ', 60543826, NULL, 300000.00, 'CREDIT', 0, 1, '2023-10-28 15:06:19'),
(23, '1698505637', 'Bentec ', 60543826, NULL, 250000.00, 'CREDIT', 0, 1, '2023-10-28 15:07:17'),
(24, '1698670825', 'UN Contract payment ', 60543827, NULL, 374000.00, 'CREDIT', 0, 1, '2023-10-30 13:00:25'),
(25, '1698779552', 'Funds transfer: #11/1698779552/Bank of Dubai ', 60543826, 11, 600000.00, 'DEBIT', 0, NULL, '2023-10-31 19:12:32'),
(26, '1698780136', 'Funds transfer: #12/1698780136/Karazhan hazard ', 60543826, 12, 400000.00, 'DEBIT', 0, NULL, '2023-10-31 19:22:16'),
(27, '1698840855', 'Bentec ', 60543828, NULL, 285000.00, 'CREDIT', 0, 1, '2023-11-01 12:14:15'),
(28, '1701076130', 'IIMCB ', 60543826, NULL, 50000.00, 'DEBIT', 0, 1, '2023-11-27 09:08:50'),
(29, '1701076343', 'IIMCB ', 60543829, NULL, 50000.00, 'CREDIT', 0, 1, '2023-11-27 09:12:23'),
(30, '1701079306', 'Bentec Group ', 60543829, NULL, 63000.00, 'CREDIT', 0, 1, '2023-11-27 10:01:46'),
(31, '1701446744', 'Funds transfer: #15/1701446744/Aneta Rozwadowska-Jachacz', 60543829, 15, 15000.00, 'DEBIT', 0, NULL, '2023-12-01 16:05:44'),
(32, '1701448401', 'Funds transfer: #16/1701448401/Aneta Rozwadowska-Jachacz', 60543829, 16, 5000.00, 'DEBIT', 0, NULL, '2023-12-01 16:33:21'),
(33, '1701859633', 'Funds transfer: #17/1701859633/Aneta Rozwadowska- Jachacz', 60543829, 17, 5000.00, 'DEBIT', 0, NULL, '2023-12-06 10:47:13'),
(34, '1704535289', 'Bentec Group (contract fund)', 60543805, NULL, 1000000.00, 'CREDIT', 0, 1, '2024-01-06 10:01:29'),
(35, '1704902568', 'Harcros Chemicals Inc', 60543805, NULL, 978000.00, 'DEBIT', 0, 1, '2024-01-10 16:02:48'),
(36, '1704903033', 'Transpark shipping company ', 60543805, NULL, 137000.00, 'DEBIT', 0, 1, '2024-01-10 16:10:33'),
(37, '1705008146', 'Edward Joaquin', 60543805, NULL, 5000.00, 'CREDIT', 0, 1, '2024-01-11 21:22:26'),
(38, '1705059351', 'IIMCB ', 60543829, NULL, 150000.00, 'CREDIT', 0, 1, '2024-01-12 11:35:51'),
(39, '1705147614', 'Vicente Salvador', 60543805, NULL, 2500.00, 'CREDIT', 0, 1, '2024-01-13 12:06:54'),
(40, '1705204512', 'Transpark shipping company', 60543805, NULL, 89000.00, 'DEBIT', 0, 1, '2024-01-14 03:55:12'),
(41, '1705648012', 'Bentec Group ', 60543805, NULL, 60000.00, 'CREDIT', 0, 1, '2024-01-19 07:06:52'),
(42, '1705698594', 'Funds transfer: #18/1705698594/Glenna Ford', 60543805, 18, 3000.00, 'DEBIT', 0, NULL, '2024-01-19 21:09:54'),
(43, '1705699492', 'Funds transfer: #19/1705699492/Vicente Salvador', 60543805, 19, 6000.00, 'DEBIT', 0, NULL, '2024-01-19 21:24:52'),
(44, '1705700195', 'Jaime Francisco', 60543805, NULL, 45000.00, 'DEBIT', 0, 1, '2024-01-19 21:36:35'),
(45, '1705774336', 'Funds transfer: #20/1705774336/Joanne Headford', 60543805, 20, 3600.00, 'DEBIT', 0, NULL, '2024-01-20 18:12:16'),
(46, '1707294570', 'Bentec Group ', 60543826, NULL, 1000000.00, 'CREDIT', 0, 1, '2024-02-07 08:29:30'),
(47, '1707295811', 'Bentec Group ', 60543819, NULL, 1000000.00, 'CREDIT', 0, 1, '2024-02-07 08:50:11'),
(48, '1707569165', 'Funds transfer: #21/1707569165/Alham keemh', 60543819, 21, 880000.00, 'DEBIT', 0, NULL, '2024-02-10 12:46:05'),
(49, '1707577497', 'Bentec Group ', 60543805, NULL, 410000.00, 'CREDIT', 0, 1, '2024-02-10 15:04:57'),
(50, '1707577921', 'Funds transfer: #22/1707577921/Harcros chemical Inc', 60543805, 22, 400000.00, 'DEBIT', 0, NULL, '2024-02-10 15:12:01'),
(51, '1707599517', 'Edward Joaquin', 60543805, NULL, 1500.00, 'CREDIT', 0, 1, '2024-02-10 21:11:57'),
(52, '1707599798', 'Edward Joaquin', 60543819, NULL, 1000.00, 'CREDIT', 0, 1, '2024-02-10 21:16:38'),
(53, '1708454484', 'Bentec Group (contract fund)', 60543819, NULL, 1000000.00, 'CREDIT', 0, 1, '2024-02-20 18:41:24'),
(54, '1708501973', 'IIMCB  BANK', 60543830, NULL, 69000.00, 'CREDIT', 0, 1, '2024-02-21 07:52:53'),
(55, '1708616817', 'Funds transfer: #23/1708616817/MS. Mudrikah BT Abdul Azis Muhammad ', 60543819, 23, 950000.00, 'DEBIT', 0, NULL, '2024-02-22 15:46:57'),
(56, '1708686036', 'Funds transfer: #24/1708686036/MS. Mudrikah BT Abdul Azis Muhammad ', 60543819, 24, 170000.00, 'DEBIT', 0, NULL, '2024-02-23 11:00:36'),
(57, '1708686308', 'Funds transfer: #25/1708686308/MS. Mudrikah BT Abdul Azis Muhammad ', 60543819, 25, 1000.00, 'DEBIT', 0, NULL, '2024-02-23 11:05:08'),
(58, '1709142500', 'Funds transfer: #26/1709142500/Aneta Rozwadowska- Jachacz', 60543829, 26, 5000.00, 'DEBIT', 0, NULL, '2024-02-28 17:48:20'),
(59, '1709142818', 'Funds transfer: #27/1709142818/Aneta Rozwadowska- Jachacz', 60543829, 27, 15000.00, 'DEBIT', 0, NULL, '2024-02-28 17:53:38'),
(60, '1709142976', 'Funds transfer: #28/1709142976/Aneta Rozwadowska- Jachacz', 60543829, 28, 18000.00, 'DEBIT', 0, NULL, '2024-02-28 17:56:16'),
(61, '1709153144', 'Funds transfer: #29/1709153144/Aneta Rozwadowska- Jachacz', 60543829, 29, 15000.00, 'DEBIT', 0, NULL, '2024-02-28 20:45:44'),
(62, '1710347088', 'IIMCB  BANK', 60543833, NULL, 110000.00, 'CREDIT', 0, 1, '2024-03-13 16:24:48'),
(63, '1711705431', 'IIMCB ', 60543821, NULL, 521000.00, 'CREDIT', 0, 1, '2024-03-29 09:43:51'),
(64, '1712049444', 'IIMCB ', 60543836, NULL, 4800000.00, 'CREDIT', 0, 1, '2024-04-02 09:17:24'),
(65, '1712049552', 'IIMCB ', 60543825, NULL, 4800000.00, 'CREDIT', 0, 1, '2024-04-02 09:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `banco_transfers`
--

CREATE TABLE `banco_transfers` (
  `id` int(11) NOT NULL,
  `accid` int(11) DEFAULT NULL,
  `name` text,
  `bankname` text,
  `bankaddress` text,
  `swiftcode` text,
  `iban` text,
  `abaroutine` text,
  `accno` text,
  `accname` text,
  `amount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banco_transfers`
--

INSERT INTO `banco_transfers` (`id`, `accid`, `name`, `bankname`, `bankaddress`, `swiftcode`, `iban`, `abaroutine`, `accno`, `accname`, `amount`, `status`, `created`) VALUES
(5, 60543814, 'Shdd', 'Shdd', 'Shdd', '7273', '72773', '73733', '723333', 'Jsjs', 500.00, 0, '2023-09-06 05:49:04'),
(6, 60543814, 'Tax', 'Tax', 'Tax', '827372', '72773', '7277722', '662633', 'Mack', 500.00, 0, '2023-09-06 06:00:58'),
(7, 60543805, 'Tax', 'Tax', 'Tax', '827372', '8288272', '7233', '723333', 'Mack', 500.00, 0, '2023-09-06 06:06:36'),
(8, 60543805, 'Elizabeth Chloé', 'Elizabeth Chloé', 'Elizabeth Chloé', 'NOSCCATT', '026002532', '026002532', '4576894356', 'Matilda Mia', 7000.00, 0, '2023-09-06 20:23:05'),
(9, 60543805, 'Elizabeth Chloé', 'Elizabeth Chloé', 'Elizabeth Chloé', 'NOSCCATT', '026002532', '026002532', '4576894356', 'Matilda Mia', 7000.00, 0, '2023-09-06 20:32:41'),
(10, 60543805, 'Elizabeth Chloé', 'Elizabeth Chloé', 'Elizabeth Chloé', 'NOSCCATT ', '026002532', '026002532', '4576894356', 'Matilda Mia', 4000.00, 0, '2023-09-06 20:47:28'),
(11, 60543826, 'Bank of Dubai ', 'Bank of Dubai ', 'Bank of Dubai ', 'TJGGFJv', '62627283', '7273773', '2737363', 'Mahama ali', 600000.00, 0, '2023-10-31 19:12:19'),
(12, 60543826, 'Karazhan hazard ', 'Karazhan hazard ', 'Karazhan hazard ', 'SCBLAEADABD', '8288272', '7277722', '6266262', 'Mathew Alexander Owen ', 400000.00, 0, '2023-10-31 19:22:04'),
(13, 60543829, 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'BPKOPLPW', 'PL82102031470000850200089318', '', '82102031470000850200089318', 'Aneta Rozwadowska-Jachacz', 12000.00, 0, '2023-12-01 15:10:15'),
(14, 60543829, 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'BPKOPLPW', 'PL39102031470000810200938456', '', '39 1020 3147 0000 8102 0093 8456', 'company account', 15000.00, 0, '2023-12-01 15:33:30'),
(15, 60543829, 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'BPKOPLPW', 'PL39102031470000810200938456', '', '39102031470000810200938456', 'company account', 15000.00, 0, '2023-12-01 16:05:33'),
(16, 60543829, 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'Aneta Rozwadowska-Jachacz', 'BPKOPLPW', 'PL82102031470000850200089318', '', '82102031470000850200089318', 'company account', 5000.00, 0, '2023-12-01 16:33:10'),
(17, 60543829, 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'BPKOPLPW', 'PL39102031470000810200938456', '', '39102031470000810200938456', 'company account', 5000.00, 0, '2023-12-06 10:47:02'),
(18, 60543805, 'Glenna Ford', 'Glenna Ford', 'Glenna Ford', 'SVRNUS33', '37738463937373838737', '72732', '60543805', 'Jaime Francisco ', 3000.00, 0, '2024-01-19 21:09:41'),
(19, 60543805, 'Vicente Salvador', 'Vicente Salvador', 'Vicente Salvador', 'SVRNUS33', 'UT37738463937373838737', '72732', '7373838737', 'Vicente Salvador', 6000.00, 0, '2024-01-19 21:24:39'),
(20, 60543805, 'Joanne Headford', 'Joanne Headford', 'Joanne Headford', '30-80-89', 'GB60LOYD3080 8946 1256 68', 'LOYDGB21739', '46125668', 'Joanne Headford', 3600.00, 0, '2024-01-20 18:12:04'),
(21, 60543819, 'Alham keemh', 'Alham keemh', 'Alham keemh', '', 'UT37738463937373838737', '77373', '36383636', 'Mathew Martin Owen ', 880000.00, 0, '2024-02-10 12:45:53'),
(22, 60543805, 'Harcros chemical Inc', 'Harcros chemical Inc', 'Harcros chemical Inc', '736337', 'UT37738463937373838737', '77373', '62662738', 'Jaime Francisco', 400000.00, 0, '2024-02-10 15:11:49'),
(23, 60543819, 'MS. Mudrikah BT Abdul Azis Muhammad ', 'MS. Mudrikah BT Abdul Azis Muhammad ', 'MS. Mudrikah BT Abdul Azis Muhammad ', 'Arnbsari', 'Sa2730400108079482010013', '6544566', '07948201', 'MS. Mudrikah BT Abdul Azis Muhammad ', 950000.00, 0, '2024-02-22 15:46:46'),
(24, 60543819, 'MS. Mudrikah BT Abdul Azis Muhammad ', 'MS. Mudrikah BT Abdul Azis Muhammad ', 'MS. Mudrikah BT Abdul Azis Muhammad ', 'Arnbsari', 'Sa2730400108079482010013', '6544566', '0108079482010013', 'MS. Mudrikah BT Abdul Azis Muhammad ', 170000.00, 0, '2024-02-23 11:00:25'),
(25, 60543819, 'MS. Mudrikah BT Abdul Azis Muhammad ', 'MS. Mudrikah BT Abdul Azis Muhammad ', 'MS. Mudrikah BT Abdul Azis Muhammad ', 'Arnbsari', 'Sa2730400108079482010013', '6544566', '97644555666', 'MS. Mudrikah BT Abdul Azis Muhammad ', 1000.00, 0, '2024-02-23 11:04:57'),
(26, 60543829, 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'BPKOPLPW', '62 1020 3147 0000 8302 0210 0295', '62 1020 3147 0000 8302 0210 0295', '62 1020 3147 0000 8302 0210 0295', 'PKO KONTO ZA ZERO', 5000.00, 0, '2024-02-28 17:48:09'),
(27, 60543829, 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'BPKOPLPW', '62 1020 3147 0000 8302 0210 0295', '62 1020 3147 0000 8302 0210 0295', '62 1020 3147 0000 8302 0210 0295', 'PKO KONTO ZA ZERO', 15000.00, 0, '2024-02-28 17:53:27'),
(28, 60543829, 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'BPKOPLPW', '82 1020 3147 0000 8502 0008 9318', '82 1020 3147 0000 8502 0008 9318', '82 1020 3147 0000 8502 0008 9318', 'KONTO AURUM ', 18000.00, 0, '2024-02-28 17:56:05'),
(29, 60543829, 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'Aneta Rozwadowska- Jachacz', 'BPKOPLPW', '62 1020 3147 0000 8302 0210 0295', '62 1020 3147 0000 8302 0210 0295', '62 1020 3147 0000 8302 0210 0295', 'PKO KONTO ZA ZERO', 15000.00, 0, '2024-02-28 20:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `pageid` int(11) DEFAULT NULL,
  `webpart` int(11) DEFAULT NULL,
  `cmskey` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cms` text COLLATE utf8_unicode_ci,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pageid` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `pagestyle` enum('page','blog') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'page',
  `shortname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menutitle` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'home',
  `showtop` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO',
  `showheader` tinyint(1) NOT NULL DEFAULT '1',
  `showfooter` tinyint(1) DEFAULT '1',
  `categories` varchar(225) COLLATE utf8_unicode_ci DEFAULT '["cat2"]',
  `enabled` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'YES',
  `metakey` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metades` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pageid`, `sort`, `pagestyle`, `shortname`, `menutitle`, `title`, `parent`, `showtop`, `showheader`, `showfooter`, `categories`, `enabled`, `metakey`, `metades`, `excerpt`, `content`, `photo`, `created`) VALUES
(1000, 0, 'page', 'home', 'Home', 'Welcome to Default Website', '0', 'NO', 1, 1, '[\"cat2\"]', 'YES', NULL, NULL, NULL, NULL, NULL, '2023-07-27 22:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `caption` varchar(360) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('input','textarea','radio','checkbox','file') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'input',
  `disabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `caption`, `name`, `value`, `type`, `disabled`) VALUES
(1, 'Application Context Name', 'appname', 'nohenugudd', 'input', 0),
(2, 'Site Domain URL', 'domain', 'http://anthill.com', 'input', 0),
(3, 'Website Title', 'title', 'Anthill Pro.', 'input', 0),
(4, 'Default Landing Page', 'defaultlandingpage', '1000', 'input', 0),
(5, 'Google Page', 'link_google', '#', 'input', 0),
(6, 'LinkedIn Page', 'link_linkedin', '#', 'input', 0),
(7, 'Twitter Page', 'link_twitter', '#', 'input', 0),
(8, 'Facebook Page', 'link_facebook', '#', 'input', 0),
(9, 'YouTube Channel', 'link_youtube', '#', 'input', 0),
(10, 'Instagram Page', 'link_instagram', '#', 'input', 0),
(11, 'Copy Right Text', 'copyright_text', '© 2019 <span>Anthill Pro</span>. All Rights Reserved', 'input', 0);

-- --------------------------------------------------------

--
-- Table structure for table `webparts`
--

CREATE TABLE `webparts` (
  `id` int(11) NOT NULL,
  `page` int(11) DEFAULT NULL,
  `webpart` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `sort` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banco_accounts`
--
ALTER TABLE `banco_accounts`
  ADD PRIMARY KEY (`accid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `banco_activities`
--
ALTER TABLE `banco_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banco_currencies`
--
ALTER TABLE `banco_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `banco_transactions`
--
ALTER TABLE `banco_transactions`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `banco_transfers`
--
ALTER TABLE `banco_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmskey` (`cmskey`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `webparts`
--
ALTER TABLE `webparts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banco_accounts`
--
ALTER TABLE `banco_accounts`
  MODIFY `accid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60543837;

--
-- AUTO_INCREMENT for table `banco_activities`
--
ALTER TABLE `banco_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- AUTO_INCREMENT for table `banco_currencies`
--
ALTER TABLE `banco_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banco_transactions`
--
ALTER TABLE `banco_transactions`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `banco_transfers`
--
ALTER TABLE `banco_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `webparts`
--
ALTER TABLE `webparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
