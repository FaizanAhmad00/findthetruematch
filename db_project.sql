-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 04:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_city`
--

CREATE TABLE `address_city` (
  `ADDRESS_ID` int(11) NOT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address_city`
--

INSERT INTO `address_city` (`ADDRESS_ID`, `ADDRESS`, `CITY`) VALUES
(1, 'People\'s Colony', 'Lahore'),
(2, 'Glshan Ravi', 'Lahore'),
(4, 'Qila Dildar Singh', 'Gujranwala'),
(5, 'Ghakhar Cantt', 'Islamabad'),
(6, 'wazribad', 'wazribad');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `password`) VALUES
(1, 'ahmad@gmail.com', 'ahmad');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `CANDIDATE_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `MEMBERSHIP` int(11) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `HEIGHT` decimal(5,2) DEFAULT NULL,
  `CAST` varchar(50) DEFAULT NULL,
  `RELIGION_ID` int(11) DEFAULT NULL,
  `FATHER_NAME` varchar(50) DEFAULT NULL,
  `MOTHER_NAME` varchar(50) DEFAULT NULL,
  `CONTACT_NUMBER` varchar(50) DEFAULT NULL,
  `ADDRESS_ID` int(11) DEFAULT NULL,
  `MARITAL_STATUS` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `PROFILE_IMAGE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CANDIDATE_ID`, `EMAIL`, `PASSWORD`, `MEMBERSHIP`, `NAME`, `AGE`, `HEIGHT`, `CAST`, `RELIGION_ID`, `FATHER_NAME`, `MOTHER_NAME`, `CONTACT_NUMBER`, `ADDRESS_ID`, `MARITAL_STATUS`, `GENDER`, `PROFILE_IMAGE`) VALUES
(1, 'ahmad@gmail.com', '12345', 1, 'Ghufran Ahmad', 22, '165.00', 'Khan', 1, 'Mahmood', 'Humaira', '123456789', 1, 'yes', 'Male', '../Images/pic1.png'),
(2, 'shan@gmail.com', 'shan', 1, 'M Shan e Alam', 23, '168.00', 'Ansari', 2, 'Mushtaq', 'Bano', '112233445', 2, 'no', 'Male', '../Images/Shan.jpeg'),
(4, 'zaryab@gmail.com', 'zaryab', 0, 'Zaryab Hassan', 23, '166.00', 'Rana', 4, 'Mushtaq', 'Sajda', '1231234', 4, 'no', 'Male', '../Images/zaryab.jpg'),
(5, 'sami@gmail.com', 'sami', 0, 'Sami Onder', 24, '170.00', 'Jutt', 5, 'fayaz', 'Humaira', '123498765', 5, 'no', 'Male', '../Images/Sami.jpeg'),
(6, 'umer@gmail.com', 'umer', 0, 'Umar bhutta', 23, '5.00', 'bhutta', 6, 'bilal', 'a', '123457677', 6, 'no', 'Male', '../Images/ombre.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `COMPLETION_YEAR` int(11) NOT NULL DEFAULT 0,
  `QUALIFICATION` varchar(50) DEFAULT NULL,
  `LAST_INSTITUTE` varchar(50) DEFAULT NULL,
  `OTHER_ACHIVEMENT` varchar(50) DEFAULT NULL,
  `CANDIDATE_ID_FK` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_details`
--

INSERT INTO `education_details` (`COMPLETION_YEAR`, `QUALIFICATION`, `LAST_INSTITUTE`, `OTHER_ACHIVEMENT`, `CANDIDATE_ID_FK`) VALUES
(2000, 'matric', 'inter', 'none', 6),
(2023, 'BS CS', 'Lumps', 'No', 5),
(2024, 'BS SE', 'GIFT', 'Not yet', 2),
(2025, 'BS SE', 'GIFT', 'A lot', 1),
(2026, 'Business', 'GIFT', 'Not yet', 4);

-- --------------------------------------------------------

--
-- Table structure for table `family_details`
--

CREATE TABLE `family_details` (
  `SIBLINGS` int(11) NOT NULL DEFAULT 0,
  `FATHER_OCCUPATION` varchar(50) DEFAULT NULL,
  `MOTHER_OCCUPATION` varchar(50) DEFAULT NULL,
  `MARRIED_FAMILY_MEMBERS` int(11) DEFAULT NULL,
  `CANDIDATE_ID_FK` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_details`
--

INSERT INTO `family_details` (`SIBLINGS`, `FATHER_OCCUPATION`, `MOTHER_OCCUPATION`, `MARRIED_FAMILY_MEMBERS`, `CANDIDATE_ID_FK`) VALUES
(2, 'Teacher', 'No work', 0, 4),
(3, 'Wapda', 'House Wife', 4, 1),
(4, 'FBR', 'Politician', 0, 5),
(4, 'buss', 'H', 1, 6),
(6, 'Shop owner', 'No work', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE `job_details` (
  `COMPANY_NAME` varchar(50) NOT NULL,
  `OCCUPATION` varchar(50) DEFAULT NULL,
  `INCOME` int(11) DEFAULT NULL,
  `DESIGNATION` varchar(50) DEFAULT NULL,
  `CANDIDATE_ID_FK` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_details`
--

INSERT INTO `job_details` (`COMPANY_NAME`, `OCCUPATION`, `INCOME`, `DESIGNATION`, `CANDIDATE_ID_FK`) VALUES
('Gift', 'Ticktoker', 134454, 'Pro Ticktoker', 4),
('industry', 'buss', 100, 'wazriabd', 6),
('Market', 'Shop men', 23432, 'Sales man', 2),
('no', 'Choudhary', 1234567, 'Owner', 5),
('Systems', 'Software developer', 123400, 'Manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_details`
--

CREATE TABLE `property_details` (
  `NO_OF_HOUSES` int(11) NOT NULL DEFAULT 0,
  `NO_OF_SHOPS` int(11) DEFAULT NULL,
  `LAND_PLOT` varchar(50) DEFAULT NULL,
  `CARS_AND_VEHICLES` varchar(50) DEFAULT NULL,
  `FACTORY_AND_COMPANY` varchar(50) DEFAULT NULL,
  `CANDIDATE_ID_FK` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_details`
--

INSERT INTO `property_details` (`NO_OF_HOUSES`, `NO_OF_SHOPS`, `LAND_PLOT`, `CARS_AND_VEHICLES`, `FACTORY_AND_COMPANY`, `CANDIDATE_ID_FK`) VALUES
(1, 2, '1', '2', 'No', 2),
(2, 0, 'no', '1', 'Systems', 1),
(2, 0, '2', '1', 'No', 4),
(2, 7, '8', '4', 'no', 5),
(12, 10, '20', '10', 'industry', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sect_religion`
--

CREATE TABLE `sect_religion` (
  `RELIGION_ID` int(11) NOT NULL,
  `SECT` varchar(50) DEFAULT NULL,
  `RELIGION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sect_religion`
--

INSERT INTO `sect_religion` (`RELIGION_ID`, `SECT`, `RELIGION`) VALUES
(1, 'Muslim', 'Islam'),
(2, 'Suni', 'Islam'),
(4, 'Suni', 'Islam'),
(5, 'Suni', 'Islam'),
(6, 's', 'islam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_city`
--
ALTER TABLE `address_city`
  ADD PRIMARY KEY (`ADDRESS_ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`CANDIDATE_ID`),
  ADD KEY `CITY` (`ADDRESS_ID`),
  ADD KEY `RELIGION` (`RELIGION_ID`);

--
-- Indexes for table `education_details`
--
ALTER TABLE `education_details`
  ADD PRIMARY KEY (`COMPLETION_YEAR`,`CANDIDATE_ID_FK`);

--
-- Indexes for table `family_details`
--
ALTER TABLE `family_details`
  ADD PRIMARY KEY (`SIBLINGS`,`CANDIDATE_ID_FK`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`COMPANY_NAME`,`CANDIDATE_ID_FK`);

--
-- Indexes for table `property_details`
--
ALTER TABLE `property_details`
  ADD PRIMARY KEY (`NO_OF_HOUSES`,`CANDIDATE_ID_FK`);

--
-- Indexes for table `sect_religion`
--
ALTER TABLE `sect_religion`
  ADD PRIMARY KEY (`RELIGION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `CANDIDATE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
