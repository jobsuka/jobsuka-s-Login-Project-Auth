-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2023 at 07:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi`
--

-- --------------------------------------------------------

--
-- Table structure for table `es_images`
--

CREATE TABLE `es_images` (
  `no` int(11) NOT NULL,
  `userid` int(6) DEFAULT NULL,
  `no_img` int(10) DEFAULT NULL,
  `img_name` varchar(100) NOT NULL,
  `img_file` varchar(100) NOT NULL,
  `dateup` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `es_images`
--

INSERT INTO `es_images` (`no`, `userid`, `no_img`, `img_name`, `img_file`, `dateup`) VALUES
(5130, 405022, 1, 'น่ารักไหม', '70097611320230109_040815.jpg', '2023-01-08 21:08:15'),
(5132, 405021, 1, 'asdasdsad', '125482049620230109_050720.jpg', '2023-01-08 22:07:20'),
(5133, 405020, 1, 'จ๊ะจ๋า', '37913806220230109_050947.jpg', '2023-01-08 22:09:47'),
(5134, 405020, 2, 'จ๋าน่ารักม๊ากเลย', '192707686120230109_051422.jpg', '2023-01-08 22:14:22'),
(5135, 405020, 3, 'มีใครจะสวยกว่านี้อีกไหม', '13722129920230109_055230.jpg', '2023-01-08 22:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `masterlogin`
--

CREATE TABLE `masterlogin` (
  `no_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `images_no` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'image1,image2,image3,image4,image5,image6,image7,image8,image9,image10,image11,image12'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `masterlogin`
--

INSERT INTO `masterlogin` (`no_id`, `username`, `email`, `password`, `role`, `images_no`) VALUES
(411, 'clubtest', 'clubtest@gmail.com', '027498472', 'club', NULL),
(412, 'agen1234', 'agent@gmail.com', '027498472', 'agency', NULL),
(414, 'aredclub', 'aredclub@gmail.com', '027498472', 'club', NULL),
(405019, 'josdaad', 'jobngt@gmail.com', '027498472', 'member', '1'),
(405020, 'job02', 'job02@gmail.com', '027498472', 'model', '5133,5134,5135'),
(405021, 'admin', 'admin@gmail.com', '027498472', 'admin', NULL),
(405022, 'kouy2', 'kuoy2@gmail.com', '027498472', 'agency', NULL),
(405023, 'mung2', 'mung2@gmail.com', '027498472', 'agency', NULL),
(405024, 'muait2', 'muait2@gmail.com', '027498472', 'agency', NULL),
(405025, 'job05465d', 'job05465d@gmail.com', '027498472', 'agency', NULL),
(405422, 'housemo', 'housemo@gmail.com', '027498472', 'club', 'image1,image2,image3,image4,image5,image6,image7,image8,image9,image10,image11,image12'),
(405423, 'kilo', 'kilo@gmail.com', '027498472', 'admin', 'image1,image2,image3,image4,image5,image6,image7,image8,image9,image10,image11,image12');

-- --------------------------------------------------------

--
-- Table structure for table `profile_escort`
--

CREATE TABLE `profile_escort` (
  `no` int(5) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aboutme` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eyes` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hair_color` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hair_length` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hair_public` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bust_size` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bust_type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `travel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weight` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ethnicity` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orientation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tattoo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `piercing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `languages` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `services` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `available_for` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meeting_with` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `smoker` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateup` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profile_escort`
--

INSERT INTO `profile_escort` (`no`, `userid`, `name`, `aboutme`, `gender`, `age`, `eyes`, `hair_color`, `hair_length`, `hair_public`, `bust_size`, `bust_type`, `travel`, `weight`, `height`, `ethnicity`, `orientation`, `tattoo`, `piercing`, `nationality`, `languages`, `services`, `available_for`, `meeting_with`, `smoker`, `location`, `district`, `dateup`) VALUES
(1, 405022, 'jaha', 'Hi I am Jocelyn Mae, a dinner date companion and international travel companion originally from Manhattan NYC, now based full-time in Lisbon Portugal. To learn more about me and verify my photos are real, visit the link below to read my website and browse my social media (Twitter, Instagram, Tiktok, OnlyFans).\r\n\r\n\r\nMINIMUM BOOKING:\r\nthe shortest experience I offer begins at €2000 for a dinner date, up to 4 hours (1-4 hours is the same rate).\r\n\r\nTRAVEL BOOKINGS:\r\nrates for Travel / Fly Me To You bookings listed on my website (link below).\r\n\r\nMONTHLY ARRANGEMENTS:\r\nSemi-exclusive monthly arrangements are available to established friends only, starting at €10.000+ per month. details on my website (link below).\r\n\r\n\r\n\r\nNO bookings through WhatsApp.\r\nNO calls.', ' Female', ' 37', ' blue', ' brown', ' long', ' trimmed', ' G', 'Natural', 'Worldwide', ' 90 kg / 198 lbs', '168 cm / 5\'6\'\'', 'Caucasian (white)', 'bisexual', ' yes', ' yes', 'American', 'English', 'Companion', 'Outcall + Incall', ' both (man+woman)', 'yes', 'bangkok', 'bangna', '2023-01-10 09:29:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `es_images`
--
ALTER TABLE `es_images`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `masterlogin`
--
ALTER TABLE `masterlogin`
  ADD PRIMARY KEY (`no_id`);

--
-- Indexes for table `profile_escort`
--
ALTER TABLE `profile_escort`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `es_images`
--
ALTER TABLE `es_images`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5137;

--
-- AUTO_INCREMENT for table `masterlogin`
--
ALTER TABLE `masterlogin`
  MODIFY `no_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405424;

--
-- AUTO_INCREMENT for table `profile_escort`
--
ALTER TABLE `profile_escort`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
