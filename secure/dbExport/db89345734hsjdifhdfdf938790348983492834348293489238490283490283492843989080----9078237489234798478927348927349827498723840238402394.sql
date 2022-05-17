-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 10:55 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u539741389_APMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_jobs` (
  `appID` int(11) NOT NULL,
  `userID` int(10) NOT NULL,
  `coverLetter` varchar(1000) NOT NULL,
  `jobID` int(10) NOT NULL,
  `appliedDate` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batchID` int(10) NOT NULL,
  `batchName` varchar(20) NOT NULL,
  `batchYear` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyID` int(10) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `companyType` varchar(50) NOT NULL,
  `companyWebsite` varchar(100) NOT NULL,
  `companyEmail` varchar(30) NOT NULL,
  `location` varchar(40) NOT NULL,
  `contactPersonName` varchar(50) NOT NULL,
  `contactPersonMobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company_refereer`
--

CREATE TABLE `company_refereer` (
  `companyID` int(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `contactNumber` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `LinkedIn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(10) NOT NULL,
  `company` varchar(20) NOT NULL,
  `jobTitle` varchar(10000) NOT NULL,
  `jobType` varchar(10) NOT NULL,
  `jobDescription` mediumtext NOT NULL,
  `package` varchar(5) NOT NULL,
  `skillsRequired` varchar(60) NOT NULL,
  `status` varchar(10) NOT NULL,
  `lastDate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(10) NOT NULL,
  `token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionID` int(10) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  `questionFrom` varchar(20) NOT NULL,
  `answerFrom` varchar(20) NOT NULL,
  `dateLastModified` varchar(20) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `Tag` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(1) NOT NULL,
  `collegeName` varchar(50) NOT NULL,
  `collegeLogoUrl` varchar(1000) NOT NULL,
  `collegeAddress` varchar(100) NOT NULL,
  `collegeHelplineNo` varchar(200) NOT NULL,
  `collegeURL` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `collegeName`, `collegeLogoUrl`, `collegeAddress`, `collegeHelplineNo`, `collegeURL`) VALUES
(1, 'Institute Of Management & Career Courses', 'https://raw.githubusercontent.com/JustInClicks-com/static-cdn/c55563e318bd0900720675ca86c81dd2655db030/Public%20CDN/IMCC%20Logos/1.svg', ' 131, Mayur Colony, Kothrud,\r\nPune 411 038 MH INDIA', ' +91-020-25466271/ 2', 'https://imcc.mespune.in/');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `userID` int(10) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `rollNo` varchar(10) NOT NULL,
  `contactNo` varchar(15) NOT NULL,
  `alternateContactNo` varchar(15) NOT NULL,
  `altenateContactPerson` varchar(30) NOT NULL,
  `localAddress` varchar(200) NOT NULL,
  `permanentAddress` varchar(200) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `linkedInProfile` varchar(200) NOT NULL,
  `gitHubProfile` varchar(200) NOT NULL,
  `blog` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_academic`
--

CREATE TABLE `student_academic` (
  `ID` int(11) NOT NULL,
  `userID` int(10) NOT NULL,
  `degreeName` varchar(20) NOT NULL,
  `scoredMarks` varchar(5) NOT NULL,
  `totalMarks` varchar(5) NOT NULL,
  `from_date` varchar(7) NOT NULL,
  `to_date` varchar(7) NOT NULL,
  `board` varchar(50) NOT NULL,
  `documentURL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_certification`
--

CREATE TABLE `student_certification` (
  `ID` int(11) NOT NULL,
  `userID` int(10) NOT NULL,
  `certificationName` varchar(40) NOT NULL,
  `certificationURL` varchar(200) NOT NULL,
  `validFrom` text NOT NULL,
  `validTo` varchar(10) NOT NULL,
  `authority` varchar(20) NOT NULL,
  `platform` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_employment`
--

CREATE TABLE `student_employment` (
  `ID` int(11) NOT NULL,
  `userID` int(10) NOT NULL,
  `companyName` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `package` varchar(7) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `joiningDate` varchar(10) NOT NULL,
  `leavingDate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_skills`
--

CREATE TABLE `student_skills` (
  `ID` int(11) NOT NULL,
  `userID` int(10) NOT NULL,
  `skillName` varchar(30) NOT NULL,
  `skillRate` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `email`, `password`, `role`, `status`) VALUES
(1, 'admin', 'kaustubh.kulkarni121@gmail.com', '$2y$10$tiFAVI6IjicoYJWzYEgKG..pS3fyAopRndM451Cc./9B1Xq7udUti', 'ADMIN', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD PRIMARY KEY (`appID`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batchID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `student_academic`
--
ALTER TABLE `student_academic`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_certification`
--
ALTER TABLE `student_certification`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_employment`
--
ALTER TABLE `student_employment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_skills`
--
ALTER TABLE `student_skills`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  MODIFY `appID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batchID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `student_academic`
--
ALTER TABLE `student_academic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_certification`
--
ALTER TABLE `student_certification`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_employment`
--
ALTER TABLE `student_employment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_skills`
--
ALTER TABLE `student_skills`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
