-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 11:19 AM
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
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
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

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionID`, `CategoryID`, `Question`) VALUES
(15, 308, 'When was the play &#039;Macbeth&#039; written?'),
(16, 309, 'Virgin Trains, Virgin Atlantic and Virgin Racing, are all companies owned by which famous entrepreneur?   '),
(17, 313, 'The Harvard architecture for micro-controllers added which additional bus?'),
(18, 313, 'What does CPU stand for?'),
(19, 313, 'What does the &quot;MP&quot; stand for in MP3?'),
(20, 313, 'How many bytes are in a kilobyte of RAM?'),
(21, 313, 'What was the name of the security vulnerability found in Bash in 2014?'),
(22, 313, 'When Gmail first launched, how much storage did it provide for your email?'),
(23, 313, 'Moore&#039;s law originally stated that the number of transistors on a microprocessor chip would double every...'),
(24, 313, 'What does GHz stand for?'),
(25, 313, 'When was the programming language &quot;C#&quot; released?'),
(26, 313, 'The programming language &#039;Swift&#039; was created to replace what other programming language?'),
(27, 313, 'What amount of bits commonly equals one byte?'),
(28, 313, 'How many Hz does the video standard PAL support?'),
(29, 313, 'Which of the following languages is used as a scripting language in the Unity 3D game engine?'),
(30, 313, 'What does the Prt Sc button do?'),
(31, 313, 'All of the following programs are classified as raster graphics editors EXCEPT:'),
(32, 313, 'The series of the Intel HD graphics generation succeeding that of the 5000 and 6000 series (Broadwell) is called:'),
(33, 313, 'Nvidia&#039;s headquarters are based in which Silicon Valley city?'),
(34, 313, 'What was the name given to Android 4.3?'),
(35, 313, 'On which day did the World Wide Web go online?'),
(36, 313, 'What is the code name for the mobile operating system Android 7.0?'),
(37, 313, 'What does the acronym CDN stand for in terms of networking?'),
(38, 313, 'How many kilobytes in one gigabyte?'),
(39, 313, 'Generally, which component of a computer draws the most power?'),
(40, 313, 'How many cores does the Intel i7-6950X have?'),
(41, 313, 'Which one of these is not an official development name for a Ubuntu release?'),
(42, 313, 'In the server hosting industry IaaS stands for...'),
(43, 313, 'Which of these names was an actual codename for a cancelled Microsoft project?'),
(44, 313, 'On Twitter, what is the character limit for a Tweet?'),
(45, 313, 'In HTML, which non-standard tag used to be be used to make elements scroll across the viewport?'),
(46, 313, 'Which of these was the name of a bug found in April 2014 in the publicly available OpenSSL cryptography library?'),
(47, 313, 'What is the correct term for the metal object in between the CPU and the CPU fan within a computer system?'),
(48, 313, 'In programming, the ternary operator is mostly defined with what symbol(s)?'),
(49, 313, 'What does LTS stand for in the software market?'),
(50, 313, 'What does &quot;LCD&quot; stand for?'),
(51, 313, 'Which operating system was released first?'),
(52, 313, 'Which of the following is a personal computer made by the Japanese company Fujitsu?'),
(53, 313, 'The numbering system with a radix of 16 is more commonly referred to as '),
(54, 313, 'What internet protocol was documented in RFC 1459?'),
(55, 313, 'Which of these is not a key value of Agile software development?'),
(56, 313, 'What is the main CPU is the Sega Mega Drive / Sega Genesis?'),
(57, 313, 'What does the International System of Quantities refer 1024 bytes as?'),
(58, 313, 'Which RAID array type is associated with data mirroring?'),
(59, 313, 'When did the online streaming service &quot;Mixer&quot; launch?'),
(60, 313, 'Laserjet and inkjet printers are both examples of what type of printer?'),
(61, 313, 'What does the term MIME stand for, in regards to computing?'),
(62, 313, 'Which programming language was developed by Sun Microsystems in 1995?'),
(63, 313, 'The name of technology company HP stands for what?'),
(64, 313, 'What is the name given to layer 4 of the Open Systems Interconnection (ISO) model?'),
(65, 313, 'Who invented the &quot;Spanning Tree Protocol&quot;?'),
(66, 313, 'Approximately how many Apple I personal computers were created?'),
(67, 314, 'What French artist/band is known for playing on the midi instrument &quot;Launchpad&quot;?'),
(68, 314, 'Who had a 1973 hit with the song &#039;Hocus Pocus&#039;?'),
(69, 314, 'Who had a 1976 hit with the song &#039;You Make Me Feel Like Dancing&#039;?'),
(70, 314, 'How many studio albums have the duo Daft Punk released?'),
(71, 314, 'Who is the lead singer of the band Coldplay?'),
(72, 314, 'Which popular rock band has a one-armed drummer?'),
(73, 314, 'Which country is singer Kyary Pamyu Pamyu from?'),
(74, 314, 'Which band released songs such as &quot;Electric Feel&quot;, &quot;Kids&quot;, and &quot;Time to Pretend&quot;?'),
(75, 314, 'Which M83 album is the song &quot;Midnight City&quot; featured in?'),
(76, 314, 'How many members are there in the idol group &quot;&micro;&#039;s&quot;?'),
(77, 314, 'Which Queen song was covered by Brittany Murphy in the 2006 film &quot;Happy Feet&quot;?'),
(78, 314, 'Which Toronto landmark was featured on the cover art of Canadian rapper Drake&#039;s 2016 album &quot;Views&quot;?'),
(79, 314, 'Which of these is NOT the name of an album released by Miami-based producer DJ Khaled?'),
(80, 314, 'Who won the 1989 Drum Corps International championships?'),
(81, 314, 'Who is the lead singer of the British pop rock band Coldplay?'),
(82, 314, 'What animal is featured on the cover of English electronic music group The Prodigy&#039;s album, &quot;The Fat of the Land&quot;?'),
(83, 314, 'Which of these is NOT the name of an album released by English singer-songwriter Adele?'),
(84, 314, 'Which of the following is NOT a real song from the band Thousand Foot Krutch?'),
(85, 314, 'Which country does the power metal band &quot;Sabaton&quot; originate from?'),
(86, 314, 'What was the title of Sakamoto Kyu&#039;s song &quot;Ue o Muite Arukou&quot; (I Look Up As I Walk) changed to in the United States?'),
(87, 314, 'This album, now considered to be one of the greatest of all time, was a commercial failure when it was released.'),
(88, 314, 'According to a song by Belinda Carlisle, Heaven is a place on what?'),
(89, 314, 'Who recorded the album called &quot;Down to the Moon&quot; in 1986?'),
(90, 314, 'Who designed the album cover for True Romance, an album by Estelle?'),
(91, 314, 'What is the last song on the first Panic! At the Disco album?'),
(92, 314, 'Who wrote the song &quot;You Know You Like It&quot;?'),
(93, 314, 'When was Gangnam Style uploaded to YouTube?'),
(94, 314, 'What was the name of the hip hop group Kanye West was a member of in the late 90s?'),
(95, 314, 'Which of these songs did Jimi Hendrix cover?'),
(96, 314, 'When was the 3rd album &quot;Notes from the Underground&quot; of the band &quot;Hollywood Undead&quot; released?'),
(97, 314, 'Which French duo had UK hits in 1998 with the songs &#039;Sexy Boy&#039;, &#039;Kelly Watch The Stars&#039; &amp; &#039;All I Need&#039;?'),
(98, 314, 'According to their 1974 hit, what were Brownsville Station doing &quot;In The Boys&#039; Room&quot;?'),
(99, 314, 'Who had a 1969 top 5 hit with the song,  &#039;A Boy Named Sue&#039;?'),
(100, 314, '&quot;Some people call me the space cowboy&quot; is the first line from what song?'),
(101, 314, 'Typically, how many keys are on a piano?'),
(102, 314, 'Which rap group released the album &quot;Straight Outta Compton&quot;?'),
(103, 314, 'The Red Hot Chili Pepper song &quot;Give It Away&quot; is from what album?'),
(104, 314, 'How many studio albums have the duo Daft Punk released?'),
(105, 314, 'Which country does the band Rammstein hail from?'),
(106, 314, 'Where does the Mac part of the name Fleetwood Mac come from?'),
(107, 314, 'How many members are there in the band Nirvana?'),
(108, 314, 'Which popular rock band has a one-armed drummer?'),
(109, 314, 'In 2015, David Hasselhof released a single called...'),
(110, 314, 'Which of these is NOT the name of an album released by Miami-based producer DJ Khaled?'),
(111, 314, 'Who won the 1989 Drum Corps International championships?'),
(112, 314, 'Who is the lead singer of the British pop rock band Coldplay?'),
(113, 314, 'Which of these is the name of an American psychedelic rock band formed in 2002 by Benjamin Goldwasser and Andrew VanWyngarden?'),
(114, 314, 'What is the name of the 2016 studio album by the French electronic music duo Justice?'),
(115, 314, 'Which of these bands are NOT from Australia?'),
(116, 314, 'What is the name of French electronic music producer Madeon&#039;s 2015 debut studio album?'),
(117, 314, 'Who is the frontman of Muse?'),
(118, 314, 'From which country did the song &quot;Gangnam Style&quot; originate from?'),
(119, 314, 'What is Brian May&#039;s guitar called?'),
(120, 314, 'Which of these is not an Ed Sheeran album?'),
(121, 314, '&quot;All the Boys&quot; by Panic! At the Disco was released as a bonus track on what album?'),
(122, 314, 'In what film was the Michael Jackson song &quot;Will You Be There&quot; featured?'),
(123, 314, 'Which song on Daft Punk&#039;s &quot;Random Access Memories&quot; features Pharrell Williams?'),
(124, 314, 'How many copies have Metallica album &quot;Metallica&quot; (A.K.A The Black Album) sold worldwide (in Millions of Copies)?'),
(125, 314, 'Which of these is NOT a song by Pegboard Nerds?'),
(126, 314, 'From which album is the Gorillaz song, &quot;On Melancholy Hill&quot; featured in?'),
(127, 314, 'When was the 3rd album &quot;Notes from the Underground&quot; of the band &quot;Hollywood Undead&quot; released?');

-- --------------------------------------------------------

--
-- Table structure for table `questionanswer`
--

DROP TABLE IF EXISTS `questionanswer`;
CREATE TABLE `questionanswer` (
  `AnswerID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `CORRECT_ANSWER` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionanswer`
--

INSERT INTO `questionanswer` (`AnswerID`, `QuestionID`, `Answer`, `CORRECT_ANSWER`) VALUES
(16, 15, '1606', 1),
(17, 15, '1605', 0),
(18, 15, '1723', 0),
(19, 15, '1628', 0),
(20, 16, 'Richard Branson', 1),
(21, 16, 'Alan Sugar', 0),
(22, 16, 'Donald Trump', 0),
(23, 16, 'Bill Gates', 0),
(24, 17, 'Instruction', 1),
(25, 17, 'Address', 0),
(26, 17, 'Data', 0),
(27, 17, 'Control', 0),
(28, 18, 'Central Processing Unit', 1),
(29, 18, 'Central Process Unit', 0),
(30, 18, 'Computer Personal Unit', 0),
(31, 18, 'Central Processor Unit', 0),
(32, 19, 'Moving Picture', 1),
(33, 19, 'Music Player', 0),
(34, 19, 'Multi Pass', 0),
(35, 19, 'Micro Point', 0),
(36, 20, '1024', 1),
(37, 20, '512', 0),
(38, 20, '1000', 0),
(39, 20, '500', 0),
(40, 21, 'Shellshock', 1),
(41, 21, 'Heartbleed', 0),
(42, 21, 'Bashbug', 0),
(43, 21, 'Stagefright', 0),
(44, 22, '1GB', 1),
(45, 22, '512MB', 0),
(46, 22, '5GB', 0),
(47, 22, 'Unlimited', 0),
(48, 23, 'Year', 1),
(49, 23, 'Four Years', 0),
(50, 23, 'Two Years', 0),
(51, 23, 'Eight Years', 0),
(52, 24, 'Gigahertz', 1),
(53, 24, 'Gigahotz', 0),
(54, 24, 'Gigahetz', 0),
(55, 24, 'Gigahatz', 0),
(56, 25, '2000', 1),
(57, 25, '1998', 0),
(58, 25, '1999', 0),
(59, 25, '2001', 0),
(60, 26, 'Objective-C', 1),
(61, 26, 'C#', 0),
(62, 26, 'Ruby', 0),
(63, 26, 'C++', 0),
(64, 27, '8', 1),
(65, 27, '1', 0),
(66, 27, '2', 0),
(67, 27, '64', 0),
(68, 28, '50', 1),
(69, 28, '59', 0),
(70, 28, '60', 0),
(71, 28, '25', 0),
(72, 29, 'C#', 1),
(73, 29, 'Java', 0),
(74, 29, 'C++', 0),
(75, 29, 'Objective-C', 0),
(76, 30, 'Captures what&#039;s on the screen and copies it to your clipboard', 1),
(77, 30, 'Nothing', 0),
(78, 30, 'Saves a .png file of what&#039;s on the screen in your screenshots folder in photos', 0),
(79, 30, 'Closes all windows', 0),
(80, 31, 'Inkscape', 1),
(81, 31, 'Paint.NET', 0),
(82, 31, 'GIMP', 0),
(83, 31, 'Adobe Photoshop', 0),
(84, 32, 'HD Graphics 500', 1),
(85, 32, 'HD Graphics 700 ', 0),
(86, 32, 'HD Graphics 600', 0),
(87, 32, 'HD Graphics 7000', 0),
(88, 33, 'Santa Clara', 1),
(89, 33, 'Palo Alto', 0),
(90, 33, 'Cupertino', 0),
(91, 33, 'Mountain View', 0),
(92, 34, 'Jelly Bean', 1),
(93, 34, 'Lollipop', 0),
(94, 34, 'Nutella', 0),
(95, 34, 'Froyo', 0),
(96, 35, 'December 20, 1990', 1),
(97, 35, 'December 17, 1996', 0),
(98, 35, 'November 12, 1990', 0),
(99, 35, 'November 24, 1995', 0),
(100, 36, 'Nougat', 1),
(101, 36, 'Ice Cream Sandwich', 0),
(102, 36, 'Jelly Bean', 0),
(103, 36, 'Marshmallow', 0),
(104, 37, 'Content Delivery Network', 1),
(105, 37, 'Content Distribution Network', 0),
(106, 37, 'Computational Data Network', 0),
(107, 37, 'Compressed Data Network', 0),
(108, 38, '1048576', 1),
(109, 38, '1024', 0),
(110, 38, '1000', 0),
(111, 38, '1000000', 0),
(112, 39, 'Video Card', 1),
(113, 39, 'Hard Drive', 0),
(114, 39, 'Processor', 0),
(115, 39, 'Power Supply', 0),
(116, 40, '10', 1),
(117, 40, '12', 0),
(118, 40, '8', 0),
(119, 40, '4', 0),
(120, 41, 'Mystic Mansion', 1),
(121, 41, 'Trusty Tahr', 0),
(122, 41, 'Utopic Unicorn', 0),
(123, 41, 'Wily Werewolf', 0),
(124, 42, 'Infrastructure as a Service', 1),
(125, 42, 'Internet as a Service', 0),
(126, 42, 'Internet and a Server', 0),
(127, 42, 'Infrastructure as a Server', 0),
(128, 43, 'Neptune', 1),
(129, 43, 'Enceladus', 0),
(130, 43, 'Pollux', 0),
(131, 43, 'Saturn', 0),
(132, 44, '140', 1),
(133, 44, '120', 0),
(134, 44, '160', 0),
(135, 44, '100', 0),
(136, 45, '&lt;marquee&gt;&lt;/marquee&gt;', 1),
(137, 45, '&lt;scroll&gt;&lt;/scroll&gt;', 0),
(138, 45, '&lt;move&gt;&lt;/move&gt;', 0),
(139, 45, '&lt;slide&gt;&lt;/slide&gt;', 0),
(140, 46, 'Heartbleed', 1),
(141, 46, 'Shellshock', 0),
(142, 46, 'Corrupted Blood', 0),
(143, 46, 'Shellscript', 0),
(144, 47, 'Heat Sink', 1),
(145, 47, 'CPU Vent', 0),
(146, 47, 'Temperature Decipator', 0),
(147, 47, 'Heat Vent', 0),
(148, 48, '?:', 1),
(149, 48, '??', 0),
(150, 48, 'if then', 0),
(151, 48, '?', 0),
(152, 49, 'Long Term Support', 1),
(153, 49, 'Long Taco Service', 0),
(154, 49, 'Ludicrous Transfer Speed', 0),
(155, 49, 'Ludicrous Turbo Speed', 0),
(156, 50, 'Liquid Crystal Display', 1),
(157, 50, 'Language Control Design', 0),
(158, 50, 'Last Common Difference', 0),
(159, 50, 'Long Continuous Design', 0),
(160, 51, 'Mac OS', 1),
(161, 51, 'Windows', 0),
(162, 51, 'Linux', 0),
(163, 51, 'OS/2', 0),
(164, 52, 'FM-7', 1),
(165, 52, 'PC-9801', 0),
(166, 52, 'Xmillennium ', 0),
(167, 52, 'MSX', 0),
(168, 53, 'Hexidecimal', 1),
(169, 53, 'Binary', 0),
(170, 53, 'Duodecimal', 0),
(171, 53, 'Octal', 0),
(172, 54, 'IRC', 1),
(173, 54, 'HTTP', 0),
(174, 54, 'HTTPS', 0),
(175, 54, 'FTP', 0),
(176, 55, 'Comprehensive documentation', 1),
(177, 55, 'Individuals and interactions', 0),
(178, 55, 'Customer collaboration', 0),
(179, 55, 'Responding to change', 0),
(180, 56, 'Motorola 68000', 1),
(181, 56, 'Zilog Z80', 0),
(182, 56, 'Yamaha YM2612', 0),
(183, 56, 'Intel 8088', 0),
(184, 57, 'Kibibyte', 1),
(185, 57, 'Kylobyte', 0),
(186, 57, 'Kilobyte', 0),
(187, 57, 'Kelobyte', 0),
(188, 58, 'RAID 1', 1),
(189, 58, 'RAID 0', 0),
(190, 58, 'RAID 10', 0),
(191, 58, 'RAID 5', 0),
(192, 59, '2016', 1),
(193, 59, '2013', 0),
(194, 59, '2009', 0),
(195, 59, '2011', 0),
(196, 60, 'Non-impact printer', 1),
(197, 60, 'Impact printer', 0),
(198, 60, 'Daisywheel printer', 0),
(199, 60, 'Dot matrix printer', 0),
(200, 61, 'Multipurpose Internet Mail Extensions', 1),
(201, 61, 'Mail Internet Mail Exchange', 0),
(202, 61, 'Multipurpose Interleave Mail Exchange', 0),
(203, 61, 'Mail Interleave Method Exchange', 0),
(204, 62, 'Java', 1),
(205, 62, 'Python', 0),
(206, 62, 'Solaris OS', 0),
(207, 62, 'C++', 0),
(208, 63, 'Hewlett-Packard', 1),
(209, 63, 'Howard Packmann', 0),
(210, 63, 'Husker-Pollosk', 0),
(211, 63, 'Hellman-Pohl', 0),
(212, 64, 'Transport', 1),
(213, 64, 'Session', 0),
(214, 64, 'Data link', 0),
(215, 64, 'Network', 0),
(216, 65, 'Radia Perlman', 1),
(217, 65, 'Paul Vixie', 0),
(218, 65, 'Vint Cerf', 0),
(219, 65, 'Michael Roberts', 0),
(220, 66, '200', 1),
(221, 66, '100', 0),
(222, 66, '500', 0),
(223, 66, '1000', 0),
(224, 67, 'Madeon', 1),
(225, 67, 'Daft Punk ', 0),
(226, 67, 'Disclosure', 0),
(227, 67, 'David Guetta', 0),
(228, 68, 'Focus', 1),
(229, 68, 'Pilot', 0),
(230, 68, 'Rush', 0),
(231, 68, 'AC/DC', 0),
(232, 69, 'Leo Sayer', 1),
(233, 69, 'Elton John', 0),
(234, 69, 'Billy Joel', 0),
(235, 69, 'Andy Gibb', 0),
(236, 70, '4', 1),
(237, 70, '1', 0),
(238, 70, '5', 0),
(239, 70, '2', 0),
(240, 71, 'Chris Martin', 1),
(241, 71, 'Chris Isaak', 0),
(242, 71, 'Chris Wallace', 0),
(243, 71, 'Chris Connelly', 0),
(244, 72, 'Def Leppard', 1),
(245, 72, 'The Beatles', 0),
(246, 72, 'Lynyrd Skynyrd', 0),
(247, 72, 'Foreigner', 0),
(248, 73, 'Japan', 1),
(249, 73, 'South Korea', 0),
(250, 73, 'China', 0),
(251, 73, 'Vietnam', 0),
(252, 74, 'MGMT', 1),
(253, 74, 'Passion Pit', 0),
(254, 74, 'Phoenix', 0),
(255, 74, 'Franz Ferdinand', 0),
(256, 75, 'Hurry Up, We&#039;re Dreaming', 1),
(257, 75, 'Saturdays = Youth', 0),
(258, 75, 'Before the Dawn Heals Us', 0),
(259, 75, 'Junk', 0),
(260, 76, '9', 1),
(261, 76, '48', 0),
(262, 76, '6', 0),
(263, 76, '3', 0),
(264, 77, 'Somebody to Love', 1),
(265, 77, 'Under Pressure', 0),
(266, 77, 'Flash', 0),
(267, 77, 'Bohemian Rhapsody', 0),
(268, 78, 'CN Tower', 1),
(269, 78, 'Allan Gardens', 0),
(270, 78, 'Union Station', 0),
(271, 78, 'Prince of Wales Theatre', 0),
(272, 79, 'Don&#039;t Ever Play Yourself', 1),
(273, 79, 'Major Key', 0),
(274, 79, 'Suffering From Success', 0),
(275, 79, 'I Changed A Lot', 0),
(276, 80, 'Santa Clara Vanguard', 1),
(277, 80, 'Blue Devils', 0),
(278, 80, 'The Academy', 0),
(279, 80, 'The Bluecoats', 0),
(280, 81, 'Chris Martin', 1),
(281, 81, 'Jonny Buckland', 0),
(282, 81, 'Guy Berryman', 0),
(283, 81, 'Will Champion', 0),
(284, 82, 'Crab', 1),
(285, 82, 'Fox', 0),
(286, 82, 'Elephant', 0),
(287, 82, 'Tiger', 0),
(288, 83, '12', 1),
(289, 83, '19', 0),
(290, 83, '21', 0),
(291, 83, '25', 0),
(292, 84, 'Limitless Fury', 1),
(293, 84, 'Let The Sparks Fly', 0),
(294, 84, 'Down', 0),
(295, 84, 'Give Up The Ghost', 0),
(296, 85, 'Sweden', 1),
(297, 85, 'Germany', 0),
(298, 85, 'United States', 0),
(299, 85, 'Finland', 0),
(300, 86, 'Sukiyaki', 1),
(301, 86, 'Takoyaki', 0),
(302, 86, 'Sushi', 0),
(303, 86, 'Oden', 0),
(304, 87, 'The Velvet Underground and Nico', 1),
(305, 87, 'Abbey Road', 0),
(306, 87, 'Led Zeppelin IV', 0),
(307, 87, 'Pet Sounds', 0),
(308, 88, 'Earth', 1),
(309, 88, 'Venus', 0),
(310, 88, 'Mars', 0),
(311, 88, 'Uranus', 0),
(312, 89, 'Andreas Vollenweider', 1),
(313, 89, 'Jean-Michel Jarre', 0),
(314, 89, 'Bing Crosby', 0),
(315, 89, 'Enya', 0),
(316, 90, 'Rebecca Sugar', 1),
(317, 90, 'Matt Burnett', 0),
(318, 90, 'Ian Jones Quartey', 0),
(319, 90, 'Ben Leven', 0),
(320, 91, 'Build God, Then We&#039;ll Talk', 1),
(321, 91, 'Nails for Breakfast, Tacks for Snacks', 0),
(322, 91, 'I Write Sins Not Tragedies', 0),
(323, 91, 'Lying Is The Most Fun A Girl Can Have Without Taking Her Clothes Off', 0),
(324, 92, 'AlunaGeorge', 1),
(325, 92, 'DJ Snake', 0),
(326, 92, 'Steve Aoki', 0),
(327, 92, 'Major Lazer', 0),
(328, 93, '2012', 1),
(329, 93, '2013', 0),
(330, 93, '2014', 0),
(331, 93, '2011', 0),
(332, 94, 'The Go-Getters', 1),
(333, 94, 'The Jumpers', 0),
(334, 94, 'The Kickstarters', 0),
(335, 94, 'The Beat-Busters', 0),
(336, 95, 'All of these songs', 1),
(337, 95, 'Sgt. Pepper&#039;s Lonely Hearts Club Band', 0),
(338, 95, 'All Along the Watchtower', 0),
(339, 95, 'House of the Rising Sun', 0),
(340, 96, '2013', 1),
(341, 96, '2011', 0),
(342, 96, '2014', 0),
(343, 96, '2009', 0),
(344, 97, 'Air', 1),
(345, 97, 'Fire', 0),
(346, 97, 'Earth', 0),
(347, 97, 'Water', 0),
(348, 98, 'Smokin&#039;', 1),
(349, 98, 'Hangin&#039;', 0),
(350, 98, 'Lovin&#039;', 0),
(351, 98, 'Peein&#039;', 0),
(352, 99, 'Johnny Cash', 1),
(353, 99, 'Bob Dylan', 0),
(354, 99, 'Willie Nelson', 0),
(355, 99, 'Kris Kristofferson', 0),
(356, 100, 'The Joker', 1),
(357, 100, 'Fandango', 0),
(358, 100, 'Take The Money and Run', 0),
(359, 100, 'Fly Like an Eagle', 0),
(360, 101, '88', 1),
(361, 101, '24', 0),
(362, 101, '12', 0),
(363, 101, '96', 0),
(364, 102, 'N.W.A', 1),
(365, 102, 'Wu-Tang Clan', 0),
(366, 102, 'Run-D.M.C.', 0),
(367, 102, 'Beastie Boys', 0),
(368, 103, 'Blood Sugar Sex Magik', 1),
(369, 103, 'One Hot Minute', 0),
(370, 103, 'By the Way', 0),
(371, 103, 'Stadium Arcadium', 0),
(372, 70, '4', 1),
(373, 70, '1', 0),
(374, 70, '5', 0),
(375, 70, '2', 0),
(376, 105, 'Germany', 1),
(377, 105, 'Austria', 0),
(378, 105, 'Armenia', 0),
(379, 105, 'Belgium', 0),
(380, 106, 'John McVie', 1),
(381, 106, 'Christine McVie', 0),
(382, 106, 'Mac McAnally', 0),
(383, 106, 'David Tennant', 0),
(384, 107, 'Three', 1),
(385, 107, 'Two', 0),
(386, 107, 'Four', 0),
(387, 107, 'Five', 0),
(388, 72, 'Def Leppard', 1),
(389, 72, 'The Beatles', 0),
(390, 72, 'Lynyrd Skynyrd', 0),
(391, 72, 'Foreigner', 0),
(392, 109, 'True Survivor', 1),
(393, 109, 'True Fighter', 0),
(394, 109, 'Real Kung-Fury', 0),
(395, 109, 'Real Warrior', 0),
(396, 79, 'Don&#039;t Ever Play Yourself', 1),
(397, 79, 'Major Key', 0),
(398, 79, 'Suffering From Success', 0),
(399, 79, 'I Changed A Lot', 0),
(400, 80, 'Santa Clara Vanguard', 1),
(401, 80, 'Blue Devils', 0),
(402, 80, 'The Academy', 0),
(403, 80, 'The Bluecoats', 0),
(404, 81, 'Chris Martin', 1),
(405, 81, 'Jonny Buckland', 0),
(406, 81, 'Guy Berryman', 0),
(407, 81, 'Will Champion', 0),
(408, 113, 'MGMT', 1),
(409, 113, 'MSTRKRFT', 0),
(410, 113, 'STRFKR', 0),
(411, 113, 'SBTRKT', 0),
(412, 114, 'Woman', 1),
(413, 114, 'Randy', 0),
(414, 114, 'Safe and Sound', 0),
(415, 114, 'Pleasure', 0),
(416, 115, 'The Naked and Famous', 1),
(417, 115, 'Cut Copy', 0),
(418, 115, 'Empire of the Sun', 0),
(419, 115, 'Tame Impala', 0),
(420, 116, 'Adventure', 1),
(421, 116, 'The City', 0),
(422, 116, 'Icarus', 0),
(423, 116, 'Pop Culture', 0),
(424, 117, 'Matt Bellamy', 1),
(425, 117, 'Dominic Howard', 0),
(426, 117, 'Thom Yorke', 0),
(427, 117, 'Jonny Greenwood', 0),
(428, 118, 'South Korea', 1),
(429, 118, 'Japan', 0),
(430, 118, 'North Korea', 0),
(431, 118, 'China', 0),
(432, 119, 'Red Special', 1),
(433, 119, 'Blue Special', 0),
(434, 119, 'Green Special', 0),
(435, 119, 'Yellow Special', 0),
(436, 120, '-', 1),
(437, 120, '+', 0),
(438, 120, 'X', 0),
(439, 120, '&divide;', 0),
(440, 121, 'Too Weird To Live, Too Rare To Die!', 1),
(441, 121, 'A Fever You Can&#039;t Sweat Out', 0),
(442, 121, 'Death Of A Bachelor', 0),
(443, 121, 'Vices &amp; Virtues', 0),
(444, 122, 'Free Willy', 1),
(445, 122, 'Sleepless in Seattle', 0),
(446, 122, 'Men in Black', 0),
(447, 122, 'Bad Boys', 0),
(448, 123, 'Get Lucky', 1),
(449, 123, 'Doin&#039; It Right', 0),
(450, 123, 'Instant Crush', 0),
(451, 123, 'The Game of Love', 0),
(452, 124, '20.5', 1),
(453, 124, '19.5', 0),
(454, 124, '22.5', 0),
(455, 124, '25.5', 0),
(456, 125, 'WiFi Tears', 1),
(457, 125, 'Swamp Thing', 0),
(458, 125, 'Emoji', 0),
(459, 125, 'BAMF', 0),
(460, 126, 'Plastic Beach', 1),
(461, 126, 'Demon Days', 0),
(462, 126, 'Humanz', 0),
(463, 126, 'The Fall', 0),
(464, 96, '2013', 1),
(465, 96, '2011', 0),
(466, 96, '2014', 0),
(467, 96, '2009', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `QuizID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `QuizName` varchar(235) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`QuizID`, `CategoryID`, `QuizName`) VALUES
(1, 313, 'Computing'),
(2, 314, 'Music Quiz');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestion`
--

DROP TABLE IF EXISTS `quizquestion`;
CREATE TABLE `quizquestion` (
  `QuizID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizquestion`
--

INSERT INTO `quizquestion` (`QuizID`, `QuestionID`) VALUES
(1, 31),
(1, 20),
(1, 40),
(1, 28),
(1, 38),
(1, 45),
(1, 42),
(1, 23),
(1, 33),
(1, 44),
(1, 35),
(2, 126),
(2, 121),
(2, 120),
(2, 122),
(2, 123);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
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

DROP TABLE IF EXISTS `user`;
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
(100, 'Aaren', 'Dukes', 'adukes2r@amazonaws.com', 'adukes2r', 'NBaC61Aw2', 1),
(102, 'Robert', 'Wildman', 'robertwildman4@gmail.com', 'Wildman', 'dunblane', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userquestionanswer`
--

DROP TABLE IF EXISTS `userquestionanswer`;
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

DROP TABLE IF EXISTS `userquiz`;
CREATE TABLE `userquiz` (
  `QuizID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userquiz`
--

INSERT INTO `userquiz` (`QuizID`, `UserID`, `Score`) VALUES
(1, 102, NULL),
(2, 102, NULL);

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
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `questionanswer`
--
ALTER TABLE `questionanswer`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `QuizID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
  ADD CONSTRAINT `QUESTION_FK` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizquestion_ibfk_1` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`);

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
  ADD CONSTRAINT `QuestionID` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE,
  ADD CONSTRAINT `USERID_UK` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `userquestionanswer_ibfk_1` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`);

--
-- Constraints for table `userquiz`
--
ALTER TABLE `userquiz`
  ADD CONSTRAINT `USERID_FK` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `userquiz_ibfk_1` FOREIGN KEY (`QuizID`) REFERENCES `quiz` (`QuizID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
