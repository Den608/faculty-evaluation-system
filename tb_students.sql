-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 06:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctihjqny_fesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_students`
--

CREATE TABLE `tb_students` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `yearlevel` varchar(20) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_students`
--
ALTER TABLE `tb_students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `test2` (`course_id`),
  ADD KEY `test3` (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_students`
--
ALTER TABLE `tb_students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_students`
--
ALTER TABLE `tb_students`
  ADD CONSTRAINT `test2` FOREIGN KEY (`course_id`) REFERENCES `tb_courses` (`course_id`),
  ADD CONSTRAINT `test3` FOREIGN KEY (`section_id`) REFERENCES `tb_sections` (`section_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
