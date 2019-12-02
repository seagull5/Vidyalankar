-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2019 at 08:07 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
CREATE TABLE IF NOT EXISTS `student_table` (
  `roll_no` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `session` varchar(40) DEFAULT NULL,
  `program` varchar(40) DEFAULT NULL,
  `semester` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`roll_no`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`roll_no`, `name`, `dob`, `gender`, `email`, `phone`, `address`, `session`, `program`, `semester`) VALUES
(1, 'Purva Kulkarni', '1999-08-14', 'F', 'purvalovesbts@gmail.com', '9785578841', 'Half street Road, Ghatkopar(W)', 'CMPN', 'BE', '5th'),
(2, 'Pravina Bhalerao', '1999-05-25', 'F', 'pravinalovescow@gmail.com', '8532641271', 'Thane', 'CMPN', 'BE', '5th'),
(3, 'Kuheli Nayek', '2000-07-03', 'F', 'kuhelithebear@gmail.com', '9875124312', 'Antop Hill', 'CMPN', 'BE', '5th'),
(4, 'Jeon Jungkook', '1997-09-01', 'Male', 'kookielikesmilk@gmail.com', '9678967812', 'Dombivli', 'CMPN', 'BE', '7th'),
(5, 'Park Jimin', '1999-10-13', 'Male', 'jiminieangel5@gmail.com', '8097861234', 'Dadar', 'CMPN', 'BE', '5th'),
(6, 'Kim Taehyung', '1999-12-12', 'Male', 'taetaeinthearea@gmil.com', '7859786437', 'Matunga', 'CMPN', 'BE', '5th'),
(7, 'Hritik Roshan', '1999-08-17', 'Male', 'hritikrosh@gmail.com', '5645123787', 'Greenpark', 'CMPN', 'BE', '5th'),
(10, 'Kavita', '1998-10-11', 'female', 'kavitamaam@gmail.com', '7855452232', 'vit', 'CMPN', 'B.TECH', '6th');

-- --------------------------------------------------------

--
-- Table structure for table `subject_table`
--

DROP TABLE IF EXISTS `subject_table`;
CREATE TABLE IF NOT EXISTS `subject_table` (
  `Subject No` int(11) NOT NULL,
  `subject_name` varchar(32) NOT NULL,
  `teacher_name` varchar(64) NOT NULL,
  `field` varchar(8) NOT NULL,
  `semester` varchar(32) NOT NULL,
  PRIMARY KEY (`Subject No`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_table`
--

INSERT INTO `subject_table` (`Subject No`, `subject_name`, `teacher_name`, `field`, `semester`) VALUES
(1, 'DBMS', 'Kim Seokjin', 'CMPN', '5th'),
(2, 'WDL', 'Kim Namjoon', 'CMPN', '5th'),
(3, 'CN', 'Min Yoongi', 'CMPN', '5th'),
(4, 'DS', 'Kim Namjoon', 'CMPN', '3rd'),
(5, 'M3', 'Min Yoongi', 'CMPN', '3rd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `StudentRollNumber` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `Attendance` varchar(11) NOT NULL,
  `Date` date NOT NULL,
  `attID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`attID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`StudentRollNumber`, `SubjectId`, `Attendance`, `Date`, `attID`) VALUES
(1, 1, 'P', '2019-10-08', 1),
(3, 1, 'P', '2019-10-08', 2),
(3, 4, 'P', '2019-10-09', 3),
(5, 5, 'P', '2019-10-09', 4),
(1, 1, 'A', '2019-10-09', 5),
(1, 3, 'P', '2019-10-19', 8),
(1, 1, 'P', '2019-10-19', 7),
(10, 3, 'A', '2019-10-22', 11);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_table`
--

DROP TABLE IF EXISTS `teacher_table`;
CREATE TABLE IF NOT EXISTS `teacher_table` (
  `teacher id` int(11) NOT NULL,
  `first name` varchar(64) NOT NULL,
  `last name` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `degree` varchar(32) NOT NULL,
  `salary` varchar(64) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`teacher id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_table`
--

INSERT INTO `teacher_table` (`teacher id`, `first name`, `last name`, `dob`, `gender`, `email`, `phone`, `degree`, `salary`, `address`) VALUES
(1, 'Yoongi', 'Min', '1987-04-17', 'Male', 'sugaarocks@gmail.com', '9878698763', 'Phd. Music & Arts', '$12000', 'Wadala'),
(2, 'Namjoon', 'Kim', '1990-09-12', 'Male', 'Namjoonlovescrabs@gmail.com', '9786869721', 'Phd. Physics', '$17000', 'Bandra'),
(3, 'Seokjin', 'Kim', '1984-12-26', 'Male', '', '9786231742', 'MS in Artificial Intelligence', '$20000', 'Andheri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `usertype` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `usertype`) VALUES
('purvalovesbts@gmail.com', 'Purvaa5', 'Student'),
('pravinalovescow@gmail.com', '@funtime', 'Student'),
('kuhelithebear@gmail.com', 'kookie', 'Student'),
('kookielikesmilk@gmail.com', 'bananamilk', 'Student'),
('jiminieangel5@gmail.com', '@mochi', 'Student'),
('taetaeinthearea@gmil.com', 'hwarang', 'Student'),
('worldwidehandsome@gmail.com', 'Jinishandsome', 'Teacher'),
('Namjoonlovescrabs@gmail.com', 'Jooniee', 'Teacher'),
('Sugaarocks@gmail.com', 'Grandpayoongi', 'Teacher');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
