-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2019 at 09:31 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senior_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classCode` varchar(255) NOT NULL,
  `className` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classCode`, `className`) VALUES
('1301107', 'Basic Information Technology'),
('1301203', 'Cloud Computing '),
('1301214', 'Web Design'),
('1301221', 'System Analysis and Design'),
('1301255', 'Data Communication and Networks'),
('1301282', 'Web Programming'),
('1301352', 'Information Security');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_NO` int(3) NOT NULL,
  `course_ID` int(10) NOT NULL,
  `course_Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_NO`, `course_ID`, `course_Name`) VALUES
(1, 1301011, 'Programming'),
(2, 1301012, 'Database'),
(3, 1301013, 'Popbl'),
(4, 1301017, 'Basic Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `majorID` int(11) NOT NULL,
  `majorTitle` text NOT NULL,
  `schoolID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`majorID`, `majorTitle`, `schoolID`) VALUES
(101, 'Information Technology', 1),
(102, 'Computer Engineering', 1),
(103, 'Computer Science', 1),
(104, 'Information and Communication Engineering', 1),
(105, 'Multimedia Technology and Animation', 1),
(106, 'Software Engineering ', 1),
(201, 'Accounting', 2),
(202, 'Aviation Business Management ', 2),
(203, 'Business Administration', 2),
(204, 'Economics', 2),
(205, 'Hospitality Industry Management ', 2),
(206, 'Logistics and Supply Chain Management ', 2),
(207, 'Tourism Management ', 2),
(301, 'Applied Chemistry', 3),
(302, 'Biotechnology', 3),
(303, 'Materials Engineering ', 3),
(401, 'Public Science ', 1),
(501, 'Food Science and Technology', 5),
(502, 'Posthaste Technology and Innovation', 5),
(601, 'Anti-Aging and Regenerative Medicine ', 6),
(602, 'Anti-Aging and Regenerative Science ', 6),
(603, 'Dermatology', 6),
(701, 'Cosmetic Science', 7),
(702, 'Beauty Technology', 7),
(801, 'Dentistry', 8),
(901, 'Laws', 9),
(1001, 'Medicine ', 10),
(1101, 'Nursing Science ', 11),
(1201, 'Applied Chemistry', 12),
(1202, 'Biotechnology', 12),
(1203, 'Materials Engineering ', 12),
(1301, 'Business Chinese ', 13),
(1302, 'Chinese Language and Culture', 13),
(1401, 'International Development ', 14);

-- --------------------------------------------------------

--
-- Table structure for table `reportst`
--

CREATE TABLE `reportst` (
  `rp_reportd` int(5) NOT NULL,
  `rp_teachId` int(255) NOT NULL,
  `rp_title` varchar(255) NOT NULL,
  `rp_details` varchar(255) NOT NULL,
  `rp_score` int(255) NOT NULL,
  `rp_pic` varchar(255) NOT NULL,
  `rp_reportDate` varchar(100) NOT NULL,
  `rp_location` varchar(255) NOT NULL,
  `rp_status` int(2) NOT NULL,
  `studentID` varchar(10) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `student_totalScore` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reportst`
--

INSERT INTO `reportst` (`rp_reportd`, `rp_teachId`, `rp_title`, `rp_details`, `rp_score`, `rp_pic`, `rp_reportDate`, `rp_location`, `rp_status`, `studentID`, `studentName`, `student_totalScore`) VALUES
(1, 123456, 'Student dress code ( in-class )', 'aaa', -5, '', '2019-05-20', 'ccc', 1, '5831301051', 'Teerapongg', 95),
(2, 123456, 'Student dress code ( in-class )', '555', -5, '', '2019-05-20', '6666', 1, '5831301051', 'Teerapongg', 90),
(3, 654321, 'Student dress code ( out-class )', 'dasd', -5, '5931301024.jpg', '2019-05-01', 'C3', 1, '5931301024', 'Pannathorn', 95),
(4, 654321, 'Student dress code ( out-class )', 'dwdq', -5, '5931301044.jpg', '2019-05-01', 'C3', 1, '5931301051', 'Eric', 95),
(5, 111111, 'Student dress code ( in-class )', 'def', -5, '5931301024.jpg', '2019-05-02', 'C3', 1, '5931301024', 'Pannathorn', 90),
(6, 111111, 'Examination regulations', 'deteetw', -10, '5931301024.jpg', '2019-05-01', 'D1', 1, '5931301024', 'Pannathorn', 85);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schoolId` int(255) NOT NULL,
  `schoolName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolId`, `schoolName`) VALUES
(1, 'Information Technology '),
(2, 'Managemennt'),
(3, 'Liberal Art'),
(4, 'Health Science'),
(5, 'Agro-Industry'),
(6, 'Anti-Aging and Regenerative Medicine '),
(7, 'Cosmetic Science'),
(8, 'Dentistry'),
(9, 'Law'),
(10, 'Medicine'),
(11, 'Nursing'),
(12, 'Science'),
(13, 'Sinology'),
(14, 'Social Innovation');

-- --------------------------------------------------------

--
-- Table structure for table `std_info`
--

CREATE TABLE `std_info` (
  `std_id` int(11) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `std_sirname` text NOT NULL,
  `std_major` varchar(250) NOT NULL,
  `std_code` varchar(30) NOT NULL,
  `std_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `std_info`
--

INSERT INTO `std_info` (`std_id`, `std_name`, `std_sirname`, `std_major`, `std_code`, `std_pic`) VALUES
(1, 'Pannathorn', 'Pipathanacom', 'IT', '5931301024', '5931301024.jpg'),
(2, 'Erich', 'Heh', 'IT', '5931301051', '5931301044.jpg'),
(3, 'Pongpol', 'Seprum', 'IT', '5931301023', '5931301023.jpg'),
(4, 'Teerapong', 'Chaiyarungkitrat', 'IT', '5831301051', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_no` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_surname` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_course` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_no`, `student_name`, `student_surname`, `student_id`, `student_course`) VALUES
(1, 'Teerapongg', 'Chaiyarungkirat', '5831301051', 1301011),
(2, 'Pannathorn', 'Pipathanacom', '5931301024', 1301012),
(3, 'Erich', 'heh', '5931301044', 1301013),
(4, 'Eric', 'He', '5931301051', 1301011);

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

CREATE TABLE `student1` (
  `studentID` varchar(10) NOT NULL,
  `studentName` text NOT NULL,
  `major` int(1) NOT NULL,
  `mobile` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `studentScore` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`studentID`, `studentName`, `major`, `mobile`, `email`, `pic`, `password`, `studentScore`) VALUES
('5831301051', 'Teerapong Chaiyarungkitrat', 1, 875886231, '5831301051@lamduan.mfu.ac.th', '', '123456', 100),
('5931301000', 'HESNC', 101, 1594845, 'SWDEW@AAS.COM', '', '123456', 0),
('5931301001', 'B', 101, 1564231, 'uefjn@s2.com', '', '123456', 0),
('5931301002', 'C', 101, 1562131, 'SWDW@de.com', '', '123456', 0),
('5931301004', 'e', 101, 2564652, 'dewfwe@qc.com', '', '123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `teachId` int(255) NOT NULL,
  `teacherId` int(8) NOT NULL,
  `studentId` varchar(10) NOT NULL,
  `classcode` int(7) NOT NULL,
  `status` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`teachId`, `teacherId`, `studentId`, `classcode`, `status`, `semester`) VALUES
(1, 11111110, '5931301001', 1301214, '1', '2018/2'),
(3, 11111110, '5931301000', 1301214, '1', '2018/2');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_no` int(11) NOT NULL,
  `teacherId` varchar(15) NOT NULL,
  `teacherName` varchar(255) NOT NULL,
  `teacherMobile` int(255) NOT NULL,
  `teacherEmail` varchar(255) NOT NULL,
  `teacherPic` varchar(255) NOT NULL,
  `teacherPassword` text NOT NULL,
  `schoolId` int(255) NOT NULL,
  `status` int(1) NOT NULL,
  `member_school` varchar(255) NOT NULL,
  `member_major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_no`, `teacherId`, `teacherName`, `teacherMobile`, `teacherEmail`, `teacherPic`, `teacherPassword`, `schoolId`, `status`, `member_school`, `member_major`) VALUES
(1, '123456', 'susan', 222221, '2222121@lamduan.mfu.ac.th', '', '123456', 6, 1, 'School of information technology', 'Information technology'),
(2, '111111', 'Eric He', 331343, 'Eric@admin.com', '', '123456', 1, 3, 'School of information technology', 'Information technology'),
(7, '222222', 'Tee', 875886231, '5831301051@lamduan.mfu.ac.th', '5831301051.jpg', '123456', 1, 2, '', ''),
(8, '5931301024', 'Pat', 159645, '5931301024@lamduan.mfu.ac.th', '', '123456', 1, 5, 'School of information technology', 'Information technology');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `title_id` int(11) NOT NULL,
  `title_name` varchar(255) NOT NULL,
  `title_score` int(10) NOT NULL,
  `title_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`title_id`, `title_name`, `title_score`, `title_status`) VALUES
(1, 'Student dress code ( in-class )', 5, 1),
(2, 'Student dress code ( out-class )', 5, 2),
(3, 'Student discipline', 10, 2),
(9, 'Rules for class attendance', 5, 1),
(15, 'Examination regulations', 10, 2),
(20, 'Add score for good behavior (in-class)', 10, 1),
(21, 'Add score for good behavior (out-class)', 10, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classCode`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_NO`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`majorID`);

--
-- Indexes for table `reportst`
--
ALTER TABLE `reportst`
  ADD PRIMARY KEY (`rp_reportd`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolId`);

--
-- Indexes for table `std_info`
--
ALTER TABLE `std_info`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_no`);

--
-- Indexes for table `student1`
--
ALTER TABLE `student1`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`teachId`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_no`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`title_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_NO` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `majorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1402;
--
-- AUTO_INCREMENT for table `reportst`
--
ALTER TABLE `reportst`
  MODIFY `rp_reportd` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `schoolId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `std_info`
--
ALTER TABLE `std_info`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `teach`
--
ALTER TABLE `teach`
  MODIFY `teachId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
