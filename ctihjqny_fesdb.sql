-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 09:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `tb_active_eval`
--

CREATE TABLE `tb_active_eval` (
  `active_id` int(11) NOT NULL,
  `schoolyear` varchar(9) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_comments`
--

CREATE TABLE `tb_comments` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `student_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_courses`
--

CREATE TABLE `tb_courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_evaluations`
--

CREATE TABLE `tb_evaluations` (
  `evaluation_id` int(11) NOT NULL,
  `rating_avg` varchar(3) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `schoolyear` varchar(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `student_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_faculty`
--

CREATE TABLE `tb_faculty` (
  `faculty_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `conatct_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `feedback_id` int(11) NOT NULL,
  `answer` int(1) NOT NULL,
  `date` date NOT NULL,
  `question` varchar(200) NOT NULL,
  `question_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `login_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `password` varchar(65) NOT NULL,
  `usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_questions`
--

CREATE TABLE `tb_questions` (
  `question_id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ratings`
--

CREATE TABLE `tb_ratings` (
  `rating_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `student_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sections`
--

CREATE TABLE `tb_sections` (
  `section_id` int(11) NOT NULL,
  `section_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sections_relation`
--

CREATE TABLE `tb_sections_relation` (
  `secrel_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sentiment`
--

CREATE TABLE `tb_sentiment` (
  `sentiment_id` int(11) NOT NULL,
  `positive_count` int(5) NOT NULL,
  `negative_count` int(5) NOT NULL,
  `sentiment_score` int(5) NOT NULL,
  `analysis` varchar(20) NOT NULL,
  `evaluation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `tb_subjects`
--

CREATE TABLE `tb_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `units` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_terms`
--

CREATE TABLE `tb_terms` (
  `term_id` int(11) NOT NULL,
  `term` varchar(255) NOT NULL,
  `value` int(2) NOT NULL,
  `term_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_active_eval`
--
ALTER TABLE `tb_active_eval`
  ADD PRIMARY KEY (`active_id`);

--
-- Indexes for table `tb_comments`
--
ALTER TABLE `tb_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `test1` (`student_id`),
  ADD KEY `t8` (`faculty_id`);

--
-- Indexes for table `tb_courses`
--
ALTER TABLE `tb_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tb_evaluations`
--
ALTER TABLE `tb_evaluations`
  ADD PRIMARY KEY (`evaluation_id`);

--
-- Indexes for table `tb_faculty`
--
ALTER TABLE `tb_faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `test` (`student_id`),
  ADD KEY `t9` (`faculty_id`),
  ADD KEY `t12` (`question_id`),
  ADD KEY `t13` (`subject_id`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `t5` (`student_id`),
  ADD KEY `t6` (`faculty_id`);

--
-- Indexes for table `tb_questions`
--
ALTER TABLE `tb_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tb_ratings`
--
ALTER TABLE `tb_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `t14` (`student_id`),
  ADD KEY `t15` (`faculty_id`);

--
-- Indexes for table `tb_sections`
--
ALTER TABLE `tb_sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `tb_sections_relation`
--
ALTER TABLE `tb_sections_relation`
  ADD PRIMARY KEY (`secrel_id`),
  ADD KEY `test4` (`section_id`),
  ADD KEY `t10` (`faculty_id`),
  ADD KEY `t11` (`subject_id`);

--
-- Indexes for table `tb_sentiment`
--
ALTER TABLE `tb_sentiment`
  ADD PRIMARY KEY (`sentiment_id`),
  ADD KEY `t7` (`evaluation_id`);

--
-- Indexes for table `tb_students`
--
ALTER TABLE `tb_students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `test2` (`course_id`),
  ADD KEY `test3` (`section_id`);

--
-- Indexes for table `tb_subjects`
--
ALTER TABLE `tb_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tb_terms`
--
ALTER TABLE `tb_terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_comments`
--
ALTER TABLE `tb_comments`
  ADD CONSTRAINT `t8` FOREIGN KEY (`faculty_id`) REFERENCES `tb_faculty` (`faculty_id`),
  ADD CONSTRAINT `test1` FOREIGN KEY (`student_id`) REFERENCES `tb_students` (`student_id`);

--
-- Constraints for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD CONSTRAINT `t12` FOREIGN KEY (`question_id`) REFERENCES `tb_questions` (`question_id`),
  ADD CONSTRAINT `t13` FOREIGN KEY (`subject_id`) REFERENCES `tb_subjects` (`subject_id`),
  ADD CONSTRAINT `t9` FOREIGN KEY (`faculty_id`) REFERENCES `tb_faculty` (`faculty_id`),
  ADD CONSTRAINT `test` FOREIGN KEY (`student_id`) REFERENCES `tb_students` (`student_id`);

--
-- Constraints for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD CONSTRAINT `t5` FOREIGN KEY (`student_id`) REFERENCES `tb_students` (`student_id`),
  ADD CONSTRAINT `t6` FOREIGN KEY (`faculty_id`) REFERENCES `tb_faculty` (`faculty_id`);

--
-- Constraints for table `tb_ratings`
--
ALTER TABLE `tb_ratings`
  ADD CONSTRAINT `t14` FOREIGN KEY (`student_id`) REFERENCES `tb_students` (`student_id`),
  ADD CONSTRAINT `t15` FOREIGN KEY (`faculty_id`) REFERENCES `tb_faculty` (`faculty_id`);

--
-- Constraints for table `tb_sections_relation`
--
ALTER TABLE `tb_sections_relation`
  ADD CONSTRAINT `t10` FOREIGN KEY (`faculty_id`) REFERENCES `tb_faculty` (`faculty_id`),
  ADD CONSTRAINT `t11` FOREIGN KEY (`subject_id`) REFERENCES `tb_subjects` (`subject_id`),
  ADD CONSTRAINT `test4` FOREIGN KEY (`section_id`) REFERENCES `tb_sections` (`section_id`);

--
-- Constraints for table `tb_sentiment`
--
ALTER TABLE `tb_sentiment`
  ADD CONSTRAINT `t7` FOREIGN KEY (`evaluation_id`) REFERENCES `tb_evaluations` (`evaluation_id`);

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
