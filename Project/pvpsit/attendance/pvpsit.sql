-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2016 at 09:28 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pvpsit`
--

-- --------------------------------------------------------

--
-- Table structure for table `ane_stu_dailyattendance`
--

CREATE TABLE `ane_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_stu_dailyattendance`
--

CREATE TABLE `cse_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cvl_stu_dailyattendance`
--

CREATE TABLE `cvl_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_stu_dailyattendance`
--

CREATE TABLE `ece_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecm_stu_dailyattendance`
--

CREATE TABLE `ecm_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_stu_dailyattendance`
--

CREATE TABLE `eee_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_stu_dailyattendance`
--

CREATE TABLE `mec_stu_dailyattendance` (
  `stid` varchar(10) NOT NULL,
  `rybsid` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `sub01` int(11) DEFAULT NULL,
  `sub02` int(11) DEFAULT NULL,
  `sub03` int(11) DEFAULT NULL,
  `sub04` int(11) DEFAULT NULL,
  `sub05` int(11) DEFAULT NULL,
  `sub06` int(11) DEFAULT NULL,
  `sub07` int(11) DEFAULT NULL,
  `sub08` int(11) DEFAULT NULL,
  `sub09` int(11) DEFAULT NULL,
  `sub10` int(11) DEFAULT NULL,
  `sub11` int(11) DEFAULT NULL,
  `sub12` int(11) DEFAULT NULL,
  `sub13` int(11) DEFAULT NULL,
  `sub14` int(11) DEFAULT NULL,
  `sub15` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ane_stu_dailyattendance`
--
ALTER TABLE `ane_stu_dailyattendance`
  ADD KEY `ane_stu_attend_stu_master_fk1` (`stid`);

--
-- Indexes for table `cse_stu_dailyattendance`
--
ALTER TABLE `cse_stu_dailyattendance`
  ADD KEY `cse_stu_attend_stu_master_fk1` (`stid`);

--
-- Indexes for table `cvl_stu_dailyattendance`
--
ALTER TABLE `cvl_stu_dailyattendance`
  ADD KEY `cvl_stu_attend_stu_master_fk1` (`stid`);

--
-- Indexes for table `ece_stu_dailyattendance`
--
ALTER TABLE `ece_stu_dailyattendance`
  ADD KEY `ece_stu_attend_stu_master_fk1` (`stid`);

--
-- Indexes for table `ecm_stu_dailyattendance`
--
ALTER TABLE `ecm_stu_dailyattendance`
  ADD KEY `ecm_stu_attend_stu_master_fk1` (`stid`);

--
-- Indexes for table `eee_stu_dailyattendance`
--
ALTER TABLE `eee_stu_dailyattendance`
  ADD KEY `eee_stu_attend_stu_master_fk1` (`stid`);

--
-- Indexes for table `mec_stu_dailyattendance`
--
ALTER TABLE `mec_stu_dailyattendance`
  ADD KEY `mec_stu_attend_stu_master_fk1` (`stid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ane_stu_dailyattendance`
--
ALTER TABLE `ane_stu_dailyattendance`
  ADD CONSTRAINT `ane_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

--
-- Constraints for table `cse_stu_dailyattendance`
--
ALTER TABLE `cse_stu_dailyattendance`
  ADD CONSTRAINT `cse_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

--
-- Constraints for table `cvl_stu_dailyattendance`
--
ALTER TABLE `cvl_stu_dailyattendance`
  ADD CONSTRAINT `cvl_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

--
-- Constraints for table `ece_stu_dailyattendance`
--
ALTER TABLE `ece_stu_dailyattendance`
  ADD CONSTRAINT `ece_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

--
-- Constraints for table `ecm_stu_dailyattendance`
--
ALTER TABLE `ecm_stu_dailyattendance`
  ADD CONSTRAINT `ecm_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

--
-- Constraints for table `eee_stu_dailyattendance`
--
ALTER TABLE `eee_stu_dailyattendance`
  ADD CONSTRAINT `eee_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

--
-- Constraints for table `mec_stu_dailyattendance`
--
ALTER TABLE `mec_stu_dailyattendance`
  ADD CONSTRAINT `mec_stu_attend_stu_master_fk1` FOREIGN KEY (`stid`) REFERENCES `stu_master` (`stid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
