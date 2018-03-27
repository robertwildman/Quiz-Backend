-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 03:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Name`) VALUES
(167, 'Entertainment: Musicals & Theatres'),
(168, 'General Knowledge'),
(169, 'History'),
(170, 'History'),
(171, 'Entertainment: Video Games'),
(172, 'Geography'),
(173, 'Science: Computers'),
(174, 'Geography'),
(175, 'Entertainment: Video Games'),
(176, 'History'),
(177, 'Entertainment: Music'),
(178, 'Entertainment: Video Games'),
(179, 'Entertainment: Japanese Anime & Manga'),
(180, 'Geography'),
(181, 'Entertainment: Video Games'),
(182, 'Geography'),
(183, 'Entertainment: Video Games'),
(184, 'History'),
(185, 'Entertainment: Music'),
(186, 'Vehicles'),
(187, 'Entertainment: Film'),
(188, 'Science & Nature'),
(189, 'Science: Gadgets'),
(190, 'Geography'),
(191, 'Entertainment: Comics'),
(192, 'Entertainment: Film'),
(193, 'Entertainment: Music'),
(194, 'Entertainment: Video Games'),
(195, 'Sports'),
(196, 'Entertainment: Video Games'),
(197, 'Entertainment: Television'),
(198, 'Vehicles'),
(199, 'Sports'),
(200, 'Entertainment: Japanese Anime & Manga'),
(201, 'Geography'),
(202, 'Entertainment: Cartoon & Animations'),
(203, 'Entertainment: Video Games'),
(204, 'History'),
(205, 'Science & Nature'),
(206, 'Entertainment: Video Games'),
(207, 'Entertainment: Television'),
(208, 'Entertainment: Film'),
(209, 'Science: Computers'),
(210, 'Celebrities');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questionanswer`
--

CREATE TABLE `questionanswer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `CORRECT_ANSWER` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `QuizID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `QuizName` varchar(235) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quizquestion`
--

CREATE TABLE `quizquestion` (
  `QuizID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `RoleName`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Firstname`, `Lastname`, `Email`, `Username`, `Password`, `RoleID`) VALUES
(1, 'UserOneFirst', 'UserOneLast', 'userone@email.com', 'UserOne', 'UserOne', 1),
(2, 'userTwoFirst', 'userTwoLast', 'usertwo@email.com', 'UserTwo', 'UserTwo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userquestionanswer`
--

CREATE TABLE `userquestionanswer` (
  `UserID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `AnswerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userquiz`
--

CREATE TABLE `userquiz` (
  `UserID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionID`),
  ADD KEY `CATEGORYID_FK` (`CategoryID`) USING BTREE;

--
-- Indexes for table `questionanswer`
--
ALTER TABLE `questionanswer`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `QUESTIONID_FK` (`QuestionID`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `QuizID` (`QuizID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `userquestionanswer`
--
ALTER TABLE `userquestionanswer`
  ADD UNIQUE KEY `USERID_UK` (`UserID`,`QuestionID`),
  ADD KEY `QuestionID` (`QuestionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questionanswer`
--
ALTER TABLE `questionanswer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `CATEGORYID_FK` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE;

--
-- Constraints for table `questionanswer`
--
ALTER TABLE `questionanswer`
  ADD CONSTRAINT `QUESTIONID_FK` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE;

--
-- Constraints for table `userquestionanswer`
--
ALTER TABLE `userquestionanswer`
  ADD CONSTRAINT `QuestionID` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `USERID_UK` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
