-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2019 at 08:26 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv_resume_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
CREATE TABLE IF NOT EXISTS `award` (
  `UserId` int(6) NOT NULL,
  `Year` int(4) NOT NULL,
  `Achivement` varchar(50) NOT NULL,
  `Organization` varchar(40) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`UserId`, `Year`, `Achivement`, `Organization`) VALUES
(1, 2016, 'Cricket Player of The year', 'ACB'),
(2, 2018, 'Student of the year', 'GSEB');

-- --------------------------------------------------------

--
-- Table structure for table `careerobjective`
--

DROP TABLE IF EXISTS `careerobjective`;
CREATE TABLE IF NOT EXISTS `careerobjective` (
  `UserId` int(6) NOT NULL,
  `Summary` varchar(500) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careerobjective`
--

INSERT INTO `careerobjective` (`UserId`, `Summary`) VALUES
(1, 'Making my own Product and good programmer'),
(2, 'Startup and Good programmer'),
(11, 'my goal is to be a good programmer'),
(2, 'My goal is to be a good programmer and startup.');

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
CREATE TABLE IF NOT EXISTS `certification` (
  `UserId` int(6) NOT NULL,
  `Year` int(4) NOT NULL,
  `Field` varchar(100) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`UserId`, `Year`, `Field`) VALUES
(1, 2019, 'IOT auction'),
(2, 2019, 'CodeFeder');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `UserId` int(6) NOT NULL,
  `SchoolName` varchar(50) NOT NULL,
  `DateFrom` varchar(15) NOT NULL,
  `DateTo` varchar(15) NOT NULL,
  `Description` varchar(40) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`UserId`, `SchoolName`, `DateFrom`, `DateTo`, `Description`) VALUES
(1, 'Panchamrut International Public School', 'July-2016', 'March-2018', 'I done my 11 and 12 in science Stream'),
(2, 'Sahjanand International Public School', 'July-2016', 'March-2018', 'I done my 11 and 12 in science Stream');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `UserId` int(6) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `DateFrom` varchar(15) NOT NULL,
  `DateTo` varchar(15) NOT NULL,
  `Responsibilities` varchar(60) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`UserId`, `Company`, `DateFrom`, `DateTo`, `Responsibilities`) VALUES
(3, 'Amazon', 'May-2016', 'January-2018', 'Ass.Manager');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE IF NOT EXISTS `hobbies` (
  `UserId` int(6) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Rating` float NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`UserId`, `Description`, `Rating`) VALUES
(1, 'Book Reading', 4.3),
(2, 'Football Playing', 4.2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

DROP TABLE IF EXISTS `personal_information`;
CREATE TABLE IF NOT EXISTS `personal_information` (
  `UserId` int(6) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `Profession` varchar(20) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `LinkedIn` varchar(30) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`UserId`, `FirstName`, `LastName`, `Profession`, `Address`, `Phone`, `Email`, `DOB`, `LinkedIn`) VALUES
(1, 'Mayank', 'Tank', 'Engineer', 'Ahmedabad', '8320802177', 'mjtank931@gmail.com', '09-03-2001', 'mayanktank'),
(2, 'Meet', 'Akbari', 'Engineer', 'Ahmedabad', '8320258961', 'meetakbari@gmail.com', '14-01-2001', 'meetakbari'),
(11, 'prince', 'dalsaniya', 'student', 'ahmedabad', '2323232323', 'pdalsaniya@gmail.com', '23-12-2018', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `UserId` int(6) NOT NULL,
  `ProjectName` varchar(70) NOT NULL,
  `Year` int(4) NOT NULL,
  `ProjectDiscription` varchar(120) NOT NULL,
  KEY `project_ibfk_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`UserId`, `ProjectName`, `Year`, `ProjectDiscription`) VALUES
(1, 'Super Market', 2018, 'This is C language based Project'),
(2, 'Bus management system', 2018, 'This is C language based project with file I/O');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `UserId` int(6) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`UserId`, `UserName`, `Email`, `Password`) VALUES
(1, 'Meet', 'meetakbari@gmail.com', 'meetak456'),
(2, 'Mayank', 'mjtank931@gmail.com', 'mjtank123'),
(3, 'mithilesh', 'mithilesh@gmail.com', 'mithi1234'),
(11, 'prince', 'pdalsaniya1@gmial.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `UserId` int(6) NOT NULL,
  `Skill_Name` varchar(50) NOT NULL,
  `Rating` int(1) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`UserId`, `Skill_Name`, `Rating`) VALUES
(1, 'Cricket Player', 4),
(2, 'Casio Player', 4);

-- --------------------------------------------------------

--
-- Table structure for table `volunteerexperience`
--

DROP TABLE IF EXISTS `volunteerexperience`;
CREATE TABLE IF NOT EXISTS `volunteerexperience` (
  `UserId` int(6) NOT NULL,
  `Organization` varchar(60) NOT NULL,
  `Year` int(4) NOT NULL,
  `Event` varchar(70) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteerexperience`
--

INSERT INTO `volunteerexperience` (`UserId`, `Organization`, `Year`, `Event`) VALUES
(1, 'Ahmedabad University', 2019, 'Ingenium-2019'),
(1, 'Ahmedabad University', 2019, 'Ingenium-2019'),
(2, 'Ahmedabad University', 2018, 'Ingenium-2018');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

DROP TABLE IF EXISTS `workshop`;
CREATE TABLE IF NOT EXISTS `workshop` (
  `UserId` int(6) NOT NULL,
  `Organization` varchar(50) NOT NULL,
  `Year` int(4) NOT NULL,
  `Discription` varchar(100) NOT NULL,
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`UserId`, `Organization`, `Year`, `Discription`) VALUES
(1, 'Ahmedabad University', 2019, 'Matlab Workshop'),
(2, 'Coding Ninjas', 2018, 'Compititive Programming Workshop');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `award_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `careerobjective`
--
ALTER TABLE `careerobjective`
  ADD CONSTRAINT `careerobjective_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certification`
--
ALTER TABLE `certification`
  ADD CONSTRAINT `certification_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD CONSTRAINT `personal_information_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `volunteerexperience`
--
ALTER TABLE `volunteerexperience`
  ADD CONSTRAINT `volunteerexperience_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workshop`
--
ALTER TABLE `workshop`
  ADD CONSTRAINT `workshop_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `register` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
