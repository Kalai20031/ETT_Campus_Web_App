-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2025 at 08:22 AM
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
-- Database: `ett_campus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Staff') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Kalai', 'kalaiselvanselvanayagam@gmail.com', 'Kalai', '$2y$10$PnMwdMuC30bbW20XKjaliuQrICJ6dHUW2FC8i8WCle.8oNitD2K.a', 'Admin', '2025-12-24 04:20:12'),
(2, 'Dhulakshan', 'Dhulakshan123@gmail.com', 'Dhulakshan', '$2y$10$1U/QpENghqxgcyP8UGf7P.EaoxwEEdkzYxwIwIAUNw0mDflfcKn0a', 'Admin', '2025-12-26 07:11:23'),
(3, 'Zainab', 'Zainab123@gmail.com', 'Zainab', '$2y$10$iJGJ4VWnbAOaWkVcpDvqfOC4yXxJ2M3JueSSA3WUGwL8O7kt0l.K6', 'Staff', '2025-12-26 07:19:12'),
(4, 'Aadhil', 'Aadhil123@gmail.com', 'Aadhil', '$2y$10$TAslhZVhohvwctHJx20wkewJy3hmkrwPI4u8c/tYb6vD5K0dQoOMu', 'Admin', '2025-12-27 12:10:17'),
(5, 'Rohan', 'Rohan456@gmail.com', 'Rohan', '$2y$10$jE50JG/ljeRqBxpzzFWN8uFhqD2vbCD.r7yN3ie6vyPhUx11OJlVu', 'Staff', '2025-12-29 06:22:00'),
(6, 'Malan', 'Malan@gmail.com', 'Malan', '$2y$10$kHgvjn6GxEDscnoJfVsosenocR4PQ/f9gySIBlibKRuqFvLvNJOCC', 'Staff', '2025-12-29 06:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `duration_years` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `duration_years`, `credits`, `description`, `created_at`) VALUES
(1, 'Computer Science', 3, 120, 'Bachelor of Computer Science', '2025-12-29 05:55:30'),
(2, 'Information Technology', 3, 110, 'Bachelor of IT', '2025-12-29 05:55:30'),
(3, 'Business Management', 3, 100, 'Bachelor of Business Management', '2025-12-29 05:55:30'),
(4, 'Accounting', 3, 100, 'Bachelor of Accounting', '2025-12-29 05:55:30'),
(5, 'Marketing', 3, 100, 'Bachelor of Marketing', '2025-12-29 05:55:30'),
(6, 'Finance', 3, 100, 'Bachelor of Finance', '2025-12-29 05:55:30'),
(7, 'Electrical Engineering', 4, 130, 'Bachelor of EE', '2025-12-29 05:55:30'),
(8, 'Mechanical Engineering', 4, 130, 'Bachelor of ME', '2025-12-29 05:55:30'),
(9, 'Civil Engineering', 4, 130, 'Bachelor of CE', '2025-12-29 05:55:30'),
(10, 'Law', 3, 120, 'Bachelor of Law', '2025-12-29 05:55:30'),
(11, 'Economics', 3, 110, 'Bachelor of Economics', '2025-12-29 05:55:30'),
(12, 'Psychology', 3, 100, 'Bachelor of Psychology', '2025-12-29 05:55:30'),
(13, 'Nursing', 4, 120, 'Bachelor of Nursing', '2025-12-29 05:55:30'),
(14, 'Pharmacy', 4, 120, 'Bachelor of Pharmacy', '2025-12-29 05:55:30'),
(15, 'Architecture', 4, 130, 'Bachelor of Architecture', '2025-12-29 05:55:30'),
(16, 'Graphic Design', 3, 100, 'Bachelor of Design', '2025-12-29 05:55:30'),
(17, 'Animation', 3, 100, 'Bachelor of Animation', '2025-12-29 05:55:30'),
(18, 'Hospitality Management', 3, 100, 'Bachelor of Hospitality', '2025-12-29 05:55:30'),
(19, 'Tourism Management', 3, 100, 'Bachelor of Tourism', '2025-12-29 05:55:30'),
(20, 'Data Science', 3, 120, 'Bachelor of Data Science', '2025-12-29 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lecturer_id` int(11) NOT NULL,
  `lecturer_name` varchar(100) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`lecturer_id`, `lecturer_name`, `nic`, `email`, `phone`, `department`, `created_at`) VALUES
(1, 'Alice Johnson', '987654321V', 'alice.johnson@example.com', '0711110001', 'Computer Science', '2025-12-29 06:08:34'),
(2, 'Bob Smith', '876543210V', 'bob.smith@example.com', '0711110002', 'IT', '2025-12-29 06:08:34'),
(3, 'Carol Davis', '765432109V', 'carol.davis@example.com', '0711110003', 'Business', '2025-12-29 06:08:34'),
(4, 'David Lee', '654321098V', 'david.lee@example.com', '0711110004', 'Accounting', '2025-12-29 06:08:34'),
(5, 'Eva Green', '543210987V', 'eva.green@example.com', '0711110005', 'Marketing', '2025-12-29 06:08:34'),
(6, 'Frank White', '432109876V', 'frank.white@example.com', '0711110006', 'Finance', '2025-12-29 06:08:34'),
(7, 'Grace Kim', '321098765V', 'grace.kim@example.com', '0711110007', 'Engineering', '2025-12-29 06:08:34'),
(8, 'Hank Brown', '210987654V', 'hank.brown@example.com', '0711110008', 'Engineering', '2025-12-29 06:08:34'),
(9, 'Ivy Scott', '109876543V', 'ivy.scott@example.com', '0711110009', 'Engineering', '2025-12-29 06:08:34'),
(10, 'Jack Wilson', '998877664V', 'jack.wilson@example.com', '0711110010', 'Law', '2025-12-29 06:08:34'),
(11, 'Karen Hall', '887766554V', 'karen.hall@example.com', '0711110011', 'Economics', '2025-12-29 06:08:34'),
(12, 'Leo King', '776655443V', 'leo.king@example.com', '0711110012', 'Psychology', '2025-12-29 06:08:34'),
(13, 'Mia Adams', '665544332V', 'mia.adams@example.com', '0711110013', 'Nursing', '2025-12-29 06:08:34'),
(14, 'Nina Baker', '554433221V', 'nina.baker@example.com', '0711110014', 'Pharmacy', '2025-12-29 06:08:34'),
(15, 'Oscar Clark', '443322110V', 'oscar.clark@example.com', '0711110015', 'Architecture', '2025-12-29 06:08:34'),
(16, 'Paula Lewis', '332211009V', 'paula.lewis@example.com', '0711110016', 'Design', '2025-12-29 06:08:34'),
(17, 'Quinn Wright', '221100998V', 'quinn.wright@example.com', '0711110017', 'Animation', '2025-12-29 06:08:34'),
(18, 'Ryan Young', '110099887V', 'ryan.young@example.com', '0711110018', 'Hospitality', '2025-12-29 06:08:34'),
(19, 'Sophia Turner', '009988776V', 'sophia.turner@example.com', '0711110019', 'Tourism', '2025-12-29 06:08:34'),
(20, 'Tom Harris', '887766332V', 'tom.harris@example.com', '0711110020', 'Data Science', '2025-12-29 06:08:34'),
(21, 'Kevin', '835504570V', 'Kevi123@gmail.com', '0711847108', 'IT', '2025-12-29 06:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `marks_obtained` decimal(5,2) NOT NULL,
  `total_marks` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `course` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `nic`, `course`, `email`, `phone`, `gender`, `created_at`) VALUES
(1, 'John Doe', '123456789V', 'Computer Science', 'john.doe@example.com', '0711111001', 'Male', '2025-12-29 05:58:18'),
(2, 'Jane Roe', '234567890V', 'Information Technology', 'jane.roe@example.com', '0711111002', 'Female', '2025-12-29 05:58:18'),
(3, 'Mike Lee', '345678901V', 'Business Management', 'mike.lee@example.com', '0711111003', 'Male', '2025-12-29 05:58:18'),
(4, 'Emily Clark', '456789012V', 'Accounting', 'emily.clark@example.com', '0711111004', 'Female', '2025-12-29 05:58:18'),
(5, 'Chris Brown', '567890123V', 'Marketing', 'chris.brown@example.com', '0711111005', 'Male', '2025-12-29 05:58:18'),
(6, 'Olivia Smith', '678901234V', 'Finance', 'olivia.smith@example.com', '0711111006', 'Female', '2025-12-29 05:58:18'),
(7, 'Liam Johnson', '789012345V', 'Electrical Engineering', 'liam.johnson@example.com', '0711111007', 'Male', '2025-12-29 05:58:18'),
(8, 'Emma Davis', '890123456V', 'Mechanical Engineering', 'emma.davis@example.com', '0711111008', 'Female', '2025-12-29 05:58:18'),
(9, 'Noah Wilson', '901234567V', 'Civil Engineering', 'noah.wilson@example.com', '0711111009', 'Male', '2025-12-29 05:58:18'),
(10, 'Ava Martinez', '012345678V', 'Law', 'ava.martinez@example.com', '0711111010', 'Female', '2025-12-29 05:58:18'),
(11, 'Ethan Thomas', '112233445V', 'Economics', 'ethan.thomas@example.com', '0711111011', 'Male', '2025-12-29 05:58:18'),
(12, 'Sophia Moore', '223344556V', 'Psychology', 'sophia.moore@example.com', '0711111012', 'Female', '2025-12-29 05:58:18'),
(13, 'Mason Taylor', '334455667V', 'Nursing', 'mason.taylor@example.com', '0711111013', 'Male', '2025-12-29 05:58:18'),
(14, 'Isabella Anderson', '445566778V', 'Pharmacy', 'isabella.anderson@example.com', '0711111014', 'Female', '2025-12-29 05:58:18'),
(15, 'Logan Thomas', '556677889V', 'Architecture', 'logan.thomas@example.com', '0711111015', 'Male', '2025-12-29 05:58:18'),
(16, 'Mia Jackson', '667788990V', 'Graphic Design', 'mia.jackson@example.com', '0711111016', 'Female', '2025-12-29 05:58:18'),
(17, 'Lucas White', '778899001V', 'Animation', 'lucas.white@example.com', '0711111017', 'Male', '2025-12-29 05:58:18'),
(18, 'Amelia Harris', '889900112V', 'Hospitality Management', 'amelia.harris@example.com', '0711111018', 'Female', '2025-12-29 05:58:18'),
(19, 'Benjamin Martin', '990011223V', 'Tourism Management', 'benjamin.martin@example.com', '0711111019', 'Male', '2025-12-29 05:58:18'),
(20, 'Charlotte Lee', '101112131V', 'Data Science', 'charlotte.lee@example.com', '0711111020', 'Female', '2025-12-29 05:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `semester` enum('1','2','3','4') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `course_id`, `credits`, `semester`, `created_at`) VALUES
(1, 'Programming 101', 1, 20, '1', '2025-12-29 07:21:59'),
(2, 'Database Systems', 1, 15, '2', '2025-12-29 07:21:59'),
(3, 'Networking Basics', 2, 15, '1', '2025-12-29 07:21:59'),
(4, 'Business Ethics', 3, 10, '1', '2025-12-29 07:21:59'),
(5, 'Accounting Principles', 4, 15, '1', '2025-12-29 07:21:59'),
(6, 'Marketing Strategies', 5, 15, '2', '2025-12-29 07:21:59'),
(7, 'Corporate Finance', 6, 15, '2', '2025-12-29 07:21:59'),
(8, 'Circuits 101', 7, 20, '1', '2025-12-29 07:21:59'),
(9, 'Thermodynamics', 8, 20, '2', '2025-12-29 07:21:59'),
(10, 'Structural Engineering', 9, 20, '2', '2025-12-29 07:21:59'),
(11, 'Constitutional Law', 10, 20, '1', '2025-12-29 07:21:59'),
(12, 'Microeconomics', 11, 15, '1', '2025-12-29 07:21:59'),
(13, 'Human Psychology', 12, 15, '2', '2025-12-29 07:21:59'),
(14, 'Nursing Fundamentals', 13, 20, '1', '2025-12-29 07:21:59'),
(15, 'Pharmacology', 14, 20, '2', '2025-12-29 07:21:59'),
(16, 'Design Basics', 15, 15, '1', '2025-12-29 07:21:59'),
(17, 'Animation Techniques', 16, 15, '2', '2025-12-29 07:21:59'),
(18, 'Hospitality Operations', 17, 15, '1', '2025-12-29 07:21:59'),
(19, 'Tourism Management 101', 18, 15, '2', '2025-12-29 07:21:59'),
(20, 'Data Analytics', 19, 20, '1', '2025-12-29 07:21:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lecturer_id`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lecturer_id` (`lecturer_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `lecturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`lecturer_id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
