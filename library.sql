-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 08, 2018 at 05:24 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` text NOT NULL,
  `book_name` text NOT NULL,
  `author` text NOT NULL,
  `edition` text NOT NULL,
  `dept` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `author`, `edition`, `dept`) VALUES
('123', 'Let us C++', 'BJ', '1st', 'CSE'),
('999', 'Ninetynin', 'Sen', '2nd', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `book_id` text NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `roll_no` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `issue_date`, `return_date`, `roll_no`) VALUES
('123', '2018-09-08', '2018-09-10', '160515733045');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `roll_no` text NOT NULL,
  `name` text NOT NULL,
  `branch` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll_no`, `name`, `branch`) VALUES
('160515733045', 'Masood Khan Patel', 'CSE'),
('160516737038', 'Syeda Mahnaaz Fatima', 'IT');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
