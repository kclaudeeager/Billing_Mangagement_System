-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 06:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `name` varchar(50) NOT NULL,
  `contactnumber` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `gender` tinytext NOT NULL,
  `ID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`name`, `contactnumber`, `email`, `address`, `gender`, `ID`) VALUES
(' Abijuru Dianne', ' 0780806690', ' abijuru@gmail.com', ' Rubavu', 'Female', 1),
(' Nkwakuzi Valens', ' 0786425100', ' nkwakuzi@g', ' Kibagabaga', 'Male', 2),
(' Nshimiyimana Eric', ' 0788123456', ' nshimiye@gmail.com', ' Kibungo', 'Male', 3),
('janvier Rutagengwa', ' 0788483455', ' rutagengwajanvier@gmail.com', ' Kigali Gasabo', 'Male', 4),
(' Hatangimana Dieudonne', ' 0788532753', ' hangimana@gmail.com', ' Kigali Gasabo Jari', 'Male', 5),
(' ishimwe Boniface', ' 0789729208', ' ishimwe@gmail.com', ' Kabarondo', 'Male', 6),
(' Iryivuze Joel', ' 0789729230', ' iryivuze@gmail.com', ' Kayonza', 'Male', 7),
(' Ntwari Stiven', ' 0789738349', ' ntwarist@gmail.com', ' Kabarondo', 'Male', 8),
(' Irakiza', ' 0789943757', ' irakiza@gmail.com', ' Rwamagana', 'Male', 10),
(' Olivier', '+25 0788722092', ' olivier@gmail.com', ' Kenya', 'Male', 12),
(' kwizera Claude', '+25 0789728209', ' claudekwizera003@gmail.com', ' kigali Gasabo Remera Nyarutarama', 'Male', 13),
(' Ermine kwizera Gashirabake', '+25 0788930596', ' erminekwizera@gmail.com', ' Cangugu', 'Male', 18);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Cnum` int(10) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Salutation` varchar(20) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Snum` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Cnum`, `Lname`, `Salutation`, `City`, `Snum`) VALUES
(1001, 'kwizera', 'Mr.', 'Springfield', 2001),
(1002, 'McBeal', 'Ms.', 'Boston', 2004),
(1003, 'Flinstone', 'Mr.', 'Bedrock', 2003),
(1004, 'Cramden', 'Mr.', 'New York', 2001),
(1001, 'kwizera', 'Mr.', 'Springfield', 2001),
(1002, 'McBeal', 'Ms.', 'Boston', 2004),
(1003, 'Flinstone', 'Mr.', 'Bedrock', 2003),
(1004, 'Cramden', 'Mr.', 'New York', 2001),
(1001, 'kwizera', 'Mr.', 'Springfield', 2001),
(1002, 'McBeal', 'Ms.', 'Boston', 2004),
(1003, 'Flinstone', 'Mr.', 'Bedrock', 2003),
(1004, 'Cramden', 'Mr.', 'KIGALI', 2001),
(1001, 'kwizera', 'Mr.', 'Springfield', 2001),
(1002, 'McBeal', 'Ms.', 'Boston', 2004),
(1003, 'Flinstone', 'Mr.', 'Bedrock', 2003),
(1004, 'Cramden', 'Mr.', 'KIGALI', 2001),
(1001, 'kwizera', 'Mr.', 'Springfield', 2001),
(1002, 'McBeal', 'Ms.', 'Boston', 2004),
(1003, 'Flinstone', 'Mr.', 'Bedrock', 2003),
(1004, 'Cramden', 'Mr.', 'KIGala', 2001),
(1001, 'kwizera', 'Mr.', 'Springfield', 2001),
(1002, 'McBeal', 'Ms.', 'Boston', 2004),
(1003, 'Flinstone', 'Mr.', 'Bedrock', 2003),
(1004, 'Cramden', 'Mr.', 'KIGli', 2001);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PID` int(20) NOT NULL,
  `PName` varchar(100) NOT NULL,
  `PRate` int(10) NOT NULL,
  `PDescription` varchar(200) NOT NULL,
  `Pquantity` int(100) NOT NULL,
  `Activate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PID`, `PName`, `PRate`, `PDescription`, `Pquantity`, `Activate`) VALUES
(1, 'phone', 90000, 'Communiction media', 8, 'YES'),
(4, 'Computer hp', 300000, '8Gb Ram Terabyte disk', 38, 'YES'),
(5, 'Samsung J2 pro', 250000, 'the smart phone', 500, 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `contactnumber` (`contactnumber`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`),
  ADD UNIQUE KEY `PName` (`PName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
