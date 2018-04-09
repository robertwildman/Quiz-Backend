-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 05:02 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

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
(308, 'Entertainment: Musicals & Theatres'),
(309, 'General Knowledge'),
(310, 'History'),
(311, 'Entertainment: Video Games'),
(312, 'Geography'),
(313, 'Science: Computers'),
(314, 'Entertainment: Music'),
(315, 'Entertainment: Japanese Anime & Manga'),
(316, 'Vehicles'),
(317, 'Entertainment: Film'),
(318, 'Science & Nature'),
(319, 'Science: Gadgets'),
(320, 'Entertainment: Comics'),
(321, 'Sports'),
(322, 'Entertainment: Television'),
(323, 'Entertainment: Cartoon & Animations'),
(324, 'Celebrities');

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
(2, 'userTwoFirst', 'userTwoLast', 'usertwo@email.com', 'UserTwo', 'UserTwo', 1),
(3, 'Jeremy', 'Knoles', 'jknoles2@dmoz.org', 'jknoles2', '1wkvtEj', 1),
(4, 'Gib', 'Munson', 'gmunson3@techcrunch.com', 'gmunson3', 'HSSOAbjKbhJ', 1),
(5, 'Marco', 'Freckleton', 'mfreckleton4@aol.com', 'mfreckleton4', 'ohY2mUvG', 1),
(6, 'Rolfe', 'Plenderleith', 'rplenderleith5@dell.com', 'rplenderleith5', 'Gp1mFZ', 1),
(7, 'Amelia', 'Gianuzzi', 'agianuzzi6@barnesandnoble.com', 'agianuzzi6', 'SS966G6Brmi', 1),
(8, 'Julee', 'Churms', 'jchurms7@blogs.com', 'jchurms7', 'OayCSWJFArpQ', 1),
(9, 'Lucian', 'Schrir', 'lschrir8@technorati.com', 'lschrir8', 'YTcZCwIeXDo', 1),
(10, 'Ludwig', 'Taylour', 'ltaylour9@addthis.com', 'ltaylour9', 'DEQm0FTqk3IM', 1),
(11, 'Padraig', 'Creeghan', 'pcreeghana@wix.com', 'pcreeghana', 'oFhgt52S6dq7', 1),
(12, 'Penni', 'Rawlings', 'prawlingsb@nifty.com', 'prawlingsb', 'TKZnHO', 1),
(13, 'Lonni', 'Parkhouse', 'lparkhousec@sohu.com', 'lparkhousec', 'UWPV8aqu9Fs', 1),
(14, 'Ashlie', 'Naismith', 'anaismithd@wordpress.com', 'anaismithd', 'GJEoYWaTuIKK', 1),
(15, 'Devin', 'Jackes', 'djackese@nhs.uk', 'djackese', 'wLcoFutd4vF', 1),
(16, 'Ahmad', 'Gromley', 'agromleyf@cnet.com', 'agromleyf', 'CUjNQXN', 1),
(17, 'Base', 'Manning', 'bmanningg@pbs.org', 'bmanningg', '6kL28r', 1),
(18, 'Ailbert', 'Smallpeace', 'asmallpeaceh@livejournal.com', 'asmallpeaceh', 'a1rPlO21C0eX', 1),
(19, 'Rosemaria', 'Gage', 'rgagei@163.com', 'rgagei', 'efxjcrRK4', 1),
(20, 'Teena', 'O\'Dowgaine', 'todowgainej@printfriendly.com', 'todowgainej', 'jxqrq0QfIJk', 1),
(21, 'Bradan', 'Rosenblad', 'brosenbladk@istockphoto.com', 'brosenbladk', 'Kwqpk58UBubF', 1),
(22, 'Ami', 'Ovenell', 'aovenelll@delicious.com', 'aovenelll', 'SfWTk8', 1),
(23, 'Anitra', 'Tures', 'aturesm@hubpages.com', 'aturesm', 'QKNKO4R', 1),
(24, 'Corrine', 'Mathelon', 'cmathelonn@blinklist.com', 'cmathelonn', 'jtEDTw', 1),
(25, 'Hayward', 'Wrintmore', 'hwrintmoreo@skyrock.com', 'hwrintmoreo', '5ppAquW', 1),
(26, 'Murielle', 'Latty', 'mlattyp@theguardian.com', 'mlattyp', 'gvhfJBh', 1),
(27, 'Desiri', 'Bell', 'dbellq@blogger.com', 'dbellq', 'j287qK7', 1),
(28, 'Noel', 'Jullian', 'njullianr@merriam-webster.com', 'njullianr', 'um8ewo', 1),
(29, 'Inesita', 'Djurevic', 'idjurevics@umich.edu', 'idjurevics', 'UGgA99pD', 1),
(30, 'Ninnette', 'Keling', 'nkelingt@php.net', 'nkelingt', 'vuTZRcldkO', 1),
(31, 'Waylon', 'Sargeaunt', 'wsargeauntu@sciencedaily.com', 'wsargeauntu', 'Fq1UaxU', 1),
(32, 'Cherice', 'De Metz', 'cdemetzv@yolasite.com', 'cdemetzv', 'PbyGEsQ', 1),
(33, 'Dennie', 'Caldwell', 'dcaldwellw@salon.com', 'dcaldwellw', 'DQd93g', 1),
(34, 'Waylon', 'Henlon', 'whenlonx@eepurl.com', 'whenlonx', 'S6wNFL3', 1),
(35, 'Gabby', 'Espinay', 'gespinayy@google.nl', 'gespinayy', 'bOdOFWd', 1),
(36, 'Shalna', 'Rigard', 'srigardz@howstuffworks.com', 'srigardz', '5KaCmf', 1),
(37, 'Karita', 'Sloy', 'ksloy10@accuweather.com', 'ksloy10', 'LaCxWuQd', 1),
(38, 'Baron', 'Warmington', 'bwarmington11@tiny.cc', 'bwarmington11', 'jp61XBDA06t', 1),
(39, 'Fabian', 'Salsbury', 'fsalsbury12@tmall.com', 'fsalsbury12', 'WTUAz4c', 1),
(40, 'Bonnibelle', 'Sturges', 'bsturges13@sphinn.com', 'bsturges13', 'a0FubX7jGD', 1),
(41, 'Catherine', 'Acomb', 'cacomb14@google.ru', 'cacomb14', 'd3Jm8HEH9w4', 1),
(42, 'Claribel', 'Juza', 'cjuza15@artisteer.com', 'cjuza15', 'DEyvtAofy', 1),
(43, 'Aurel', 'Doyle', 'adoyle16@timesonline.co.uk', 'adoyle16', 'yhHnFNCeAM', 1),
(44, 'Maxi', 'Quest', 'mquest17@usda.gov', 'mquest17', 'QrcbI100', 1),
(45, 'Latia', 'Ortells', 'lortells18@cdbaby.com', 'lortells18', 'UG1Bqlu1', 1),
(46, 'Correy', 'Geertje', 'cgeertje19@huffingtonpost.com', 'cgeertje19', 'rNEKbwA', 1),
(47, 'Elsworth', 'Romao', 'eromao1a@mlb.com', 'eromao1a', '041bMcHoWA', 1),
(48, 'Hyacinth', 'Beckford', 'hbeckford1b@samsung.com', 'hbeckford1b', 'Hn0lMY3CqWl', 1),
(49, 'Tabbi', 'Sedgmond', 'tsedgmond1c@npr.org', 'tsedgmond1c', 'lAjW0Q', 1),
(50, 'Nathalie', 'Errowe', 'nerrowe1d@mozilla.org', 'nerrowe1d', 'hYZeDFB', 1),
(51, 'Marietta', 'Headford', 'mheadford1e@google.com', 'mheadford1e', 'BYKqMNUkpTC', 1),
(52, 'Joannes', 'Ellwand', 'jellwand1f@sbwire.com', 'jellwand1f', 'tCA8YIv3', 1),
(53, 'Cristabel', 'Mc Faul', 'cmcfaul1g@hugedomains.com', 'cmcfaul1g', 'mqReMuB48M', 1),
(54, 'Helena', 'McClenan', 'hmcclenan1h@psu.edu', 'hmcclenan1h', 'xBCxswZ3vEE', 1),
(55, 'Germaine', 'Royal', 'groyal1i@youtu.be', 'groyal1i', 'uNAqXzZVIJ', 1),
(56, 'Levi', 'Sperrett', 'lsperrett1j@seesaa.net', 'lsperrett1j', 'eOnh8HA2F6', 1),
(57, 'Zarla', 'Godsell', 'zgodsell1k@de.vu', 'zgodsell1k', 'AKeZ4rrI', 1),
(58, 'Kirstin', 'Dow', 'kdow1l@usa.gov', 'kdow1l', 'JBVf3x', 1),
(59, 'Beverly', 'Biagi', 'bbiagi1m@skyrock.com', 'bbiagi1m', 'wmQ9192boH', 1),
(60, 'Cosme', 'Seabrooke', 'cseabrooke1n@addtoany.com', 'cseabrooke1n', 'mwSKWdoHy1l', 1),
(61, 'Haywood', 'Father', 'hfather1o@homestead.com', 'hfather1o', 'wor46umWUe', 1),
(62, 'Blane', 'Lear', 'blear1p@timesonline.co.uk', 'blear1p', 'Y1BftYns', 1),
(63, 'Brod', 'Chazelle', 'bchazelle1q@google.es', 'bchazelle1q', 'mr6JEkh1XeL0', 1),
(64, 'Torrie', 'Wager', 'twager1r@infoseek.co.jp', 'twager1r', '5lAGjT', 1),
(65, 'Pattie', 'Chartres', 'pchartres1s@123-reg.co.uk', 'pchartres1s', 'w6pF1Burut90', 1),
(66, 'Fay', 'Feighney', 'ffeighney1t@rediff.com', 'ffeighney1t', 'vbDShK1K2ZI', 1),
(67, 'Leonhard', 'Willbond', 'lwillbond1u@mysql.com', 'lwillbond1u', 'Pl7Xl6P5Ee2U', 1),
(68, 'Octavius', 'Barwell', 'obarwell1v@infoseek.co.jp', 'obarwell1v', 'UwgQuoffLi9', 1),
(69, 'Trent', 'Player', 'tplayer1w@census.gov', 'tplayer1w', 'QidH8upF18Zg', 1),
(70, 'Grayce', 'Witherspoon', 'gwitherspoon1x@joomla.org', 'gwitherspoon1x', 'vrzB5a0Ck', 1),
(71, 'Margaret', 'Synan', 'msynan1y@noaa.gov', 'msynan1y', 'NHjjEtNHIyo', 1),
(72, 'Angela', 'Hambridge', 'ahambridge1z@bravesites.com', 'ahambridge1z', 'DzE0BuBZxP', 1),
(73, 'Iolande', 'Sturror', 'isturror20@usnews.com', 'isturror20', 'dXoInOl', 1),
(74, 'Lurleen', 'Fortnam', 'lfortnam21@exblog.jp', 'lfortnam21', 'jQH11jXv', 1),
(75, 'Katalin', 'Klulicek', 'kklulicek22@wikispaces.com', 'kklulicek22', 'jlkdZGu', 1),
(76, 'Alina', 'Orrett', 'aorrett23@squidoo.com', 'aorrett23', 'DGTA71l', 1),
(77, 'Byran', 'Miliffe', 'bmiliffe24@mlb.com', 'bmiliffe24', 'fzhqfqFvYQcM', 1),
(78, 'Hart', 'Eagleston', 'heagleston25@issuu.com', 'heagleston25', 'uGefJy', 1),
(79, 'Aurora', 'Plumridege', 'aplumridege26@wufoo.com', 'aplumridege26', 'ouv9cOVR02', 1),
(80, 'Polly', 'Hentzer', 'phentzer27@sciencedirect.com', 'phentzer27', '5VeZjJtpm', 1),
(81, 'Rebecca', 'Strangward', 'rstrangward28@istockphoto.com', 'rstrangward28', '250UdtVNTUDp', 1),
(82, 'Camellia', 'De La Hay', 'cdelahay29@google.com.hk', 'cdelahay29', 'XNofVclJZf', 1),
(83, 'Dasya', 'Allred', 'dallred2a@aol.com', 'dallred2a', 'HsZe3fGAvD7', 1),
(84, 'Luce', 'Troop', 'ltroop2b@boston.com', 'ltroop2b', 'fzbPHRY', 1),
(85, 'Raviv', 'Aves', 'raves2c@bigcartel.com', 'raves2c', 'N1zXaqpjQ', 1),
(86, 'Leodora', 'O\'Tierney', 'lotierney2d@yolasite.com', 'lotierney2d', 'jbGvPPJZ', 1),
(87, 'George', 'Napolione', 'gnapolione2e@360.cn', 'gnapolione2e', '7UZhyvzN07YV', 1),
(88, 'Brett', 'Maron', 'bmaron2f@sitemeter.com', 'bmaron2f', 'yRuuoiorM', 1),
(89, 'Tabatha', 'Danilov', 'tdanilov2g@independent.co.uk', 'tdanilov2g', 'kPihLmCiNy', 1),
(90, 'Bo', 'Bonwell', 'bbonwell2h@fema.gov', 'bbonwell2h', 'DC7kifH', 1),
(91, 'Gilberta', 'Langfat', 'glangfat2i@oakley.com', 'glangfat2i', 'jRoxQ7', 1),
(92, 'Judye', 'Birmingham', 'jbirmingham2j@miitbeian.gov.cn', 'jbirmingham2j', 'FopT8GWGcG', 1),
(93, 'Janot', 'Ferrettini', 'jferrettini2k@comsenz.com', 'jferrettini2k', 'fpQTB3yTHjw', 1),
(94, 'Erda', 'Cords', 'ecords2l@discovery.com', 'ecords2l', 'uxYnrgzfB', 1),
(95, 'Shurlock', 'Simmig', 'ssimmig2m@oracle.com', 'ssimmig2m', 'aiTvv4SK', 1),
(96, 'Ora', 'Geram', 'ogeram2n@sohu.com', 'ogeram2n', 'i29v5LA', 1),
(97, 'Rafael', 'McRorie', 'rmcrorie2o@howstuffworks.com', 'rmcrorie2o', 'Ywt1joXiVyBq', 1),
(98, 'Dudley', 'Wharmby', 'dwharmby2p@fotki.com', 'dwharmby2p', 'ydx6hvPdib', 1),
(99, 'Hayden', 'Goldsworthy', 'hgoldsworthy2q@gnu.org', 'hgoldsworthy2q', 'TkruYp8X', 1),
(100, 'Aaren', 'Dukes', 'adukes2r@amazonaws.com', 'adukes2r', 'NBaC61Aw2', 1);

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
  `QuizID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Score` int(11) NOT NULL
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
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `Cat_FK` (`CategoryID`);

--
-- Indexes for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD KEY `QUESTION_FK` (`QuestionID`),
  ADD KEY `QUIZID_FK` (`QuizID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `ROLE_FK` (`RoleID`);

--
-- Indexes for table `userquestionanswer`
--
ALTER TABLE `userquestionanswer`
  ADD UNIQUE KEY `USERID_UK` (`UserID`,`QuestionID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `ANSWERID_FK` (`AnswerID`),
  ADD KEY `QUIZ_ID_FK` (`QuizID`);

--
-- Indexes for table `userquiz`
--
ALTER TABLE `userquiz`
  ADD KEY `USERID_FK` (`UserID`),
  ADD KEY `QUIZFK` (`QuizID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionanswer`
--
ALTER TABLE `questionanswer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `Cat_FK` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Constraints for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD CONSTRAINT `QUESTION_FK` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUIZID_FK` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `ROLE_FK` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`) ON DELETE CASCADE;

--
-- Constraints for table `userquestionanswer`
--
ALTER TABLE `userquestionanswer`
  ADD CONSTRAINT `ANSWERID_FK` FOREIGN KEY (`AnswerID`) REFERENCES `questionanswer` (`AnswerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUIZ_ID_FK` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`),
  ADD CONSTRAINT `QuestionID` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `USERID_UK` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `userquiz`
--
ALTER TABLE `userquiz`
  ADD CONSTRAINT `QUIZFK` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`),
  ADD CONSTRAINT `USERID_FK` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
