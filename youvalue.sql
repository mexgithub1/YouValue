-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 04:05 PM
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
-- Database: `youvalue`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `file` text NOT NULL,
  `category` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `title`, `file`, `category`, `date_created`) VALUES
(1, 'sdfsdf', 'Icona Pop - All Night (Lyrics).mp3', 'Normal', '2025-03-07 15:25:27'),
(3, 'cvbcvb', 'Jibbs - Chain Hang Low (Official Music Video).mp3', 'Anxiety', '2025-03-07 15:39:57'),
(6, 'Gangsta PAradise', 'gangsta\'s paradise (instrumental) [edit audio].mp3', 'Depressed', '2025-03-21 21:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_audio`
--

CREATE TABLE `bookmark_audio` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `audio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark_audio`
--

INSERT INTO `bookmark_audio` (`id`, `users_id`, `audio_id`) VALUES
(5, 105, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_readables`
--

CREATE TABLE `bookmark_readables` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `readables_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_video`
--

CREATE TABLE `bookmark_video` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark_video`
--

INSERT INTO `bookmark_video` (`id`, `users_id`, `video_id`) VALUES
(6, 106, 1),
(8, 105, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `image` text NOT NULL,
  `time` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `code` text NOT NULL,
  `chat_notif` int(1) NOT NULL DEFAULT 1,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `receiver_id`, `message`, `image`, `time`, `code`, `chat_notif`, `date`) VALUES
(34, 106, 108, 'test', '', '2025-03-11 14:35:55', '37723', 1, '2025-03-11'),
(35, 108, 106, 'hello', '', '2025-03-11 14:36:02', '37723', 1, '2025-03-11'),
(36, 106, 108, 'kamusta', '', '2025-03-11 14:36:10', '37723', 1, '2025-03-11'),
(37, 106, 108, 'asdas', '', '2025-03-11 14:43:56', '37723', 1, '2025-03-11'),
(38, 108, 106, 'heyhey', '', '2025-03-11 14:45:38', '37723', 1, '2025-03-11'),
(39, 105, 108, 'hi im godegkola', '', '2025-03-11 14:51:57', '13957', 1, '2025-03-11'),
(40, 105, 108, 'hello', '', '2025-03-21 21:48:25', '13957', 1, '2025-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `chat_code`
--

CREATE TABLE `chat_code` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `scroll` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_code`
--

INSERT INTO `chat_code` (`id`, `sender_id`, `receiver_id`, `code`, `scroll`) VALUES
(5, 106, 108, 37723, 0),
(6, 105, 108, 13957, 0);

-- --------------------------------------------------------

--
-- Table structure for table `depressed`
--

CREATE TABLE `depressed` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `phone_number` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `depressed`
--

INSERT INTO `depressed` (`id`, `fullname`, `email`, `phone_number`, `age`, `gender`, `date_created`) VALUES
(1, 'juan cruz', 'godegkola@gmail.com', '09999999', '26', 'Male', '2025-04-02 07:47:34'),
(2, 'juan cruz2', 'godegkola@gmail.com', '09999999', '26', 'Male', '2025-04-02 07:47:34'),
(3, 'Lovely Villacorte', 'sorar384@gmail.com', '09999999', '23', 'Male', '2025-04-11 13:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL,
  `choice1` text NOT NULL,
  `choice2` text NOT NULL,
  `choice3` text NOT NULL,
  `choice4` text NOT NULL,
  `answers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `questions`, `choice1`, `choice2`, `choice3`, `choice4`, `answers`) VALUES
(21, 'What is the primary purpose of a firewall?', 'To block websites', 'To filter network traffic', 'To speed up the internet', 'To store passwords', 'To filter network traffic'),
(22, 'Which of the following is an example of two-factor authentication?', 'Password only', 'Face recognition only', 'Password and OTP code', 'Username only', 'Password and OTP code'),
(23, 'Which unit measures electrical resistance?', 'Watt', 'Ohm', 'Volt', 'Ampere', 'Ohm'),
(24, 'Which planet is known as the Red Planet?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'Mars'),
(25, 'What does CPU stand for?', 'Central Processing Unit', 'Control Panel Utility', 'Computer Power Unit', 'Central Print Utility', 'Central Processing Unit'),
(26, 'Which animal is known as the king of the jungle?', 'Tiger', 'Elephant', 'Lion', 'Giraffe', 'Lion'),
(27, 'What gas do plants absorb from the atmosphere?', 'Oxygen', 'Carbon dioxide', 'Nitrogen', 'Hydrogen', 'Carbon dioxide'),
(28, 'Which programming language is known for its use in web development?', 'Python', 'Java', 'JavaScript', 'C++', 'JavaScript'),
(29, 'Who painted the Mona Lisa?', 'Pablo Picasso', 'Vincent van Gogh', 'Leonardo da Vinci', 'Claude Monet', 'Leonardo da Vinci'),
(30, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'Paris'),
(31, 'Which is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean', 'Pacific Ocean'),
(32, 'What is the smallest unit of life?', 'Organ', 'Tissue', 'Cell', 'Molecule', 'Cell'),
(33, 'Which instrument is used to measure temperature?', 'Barometer', 'Thermometer', 'Hygrometer', 'Seismometer', 'Thermometer'),
(34, 'Which gas is essential for human respiration?', 'Oxygen', 'Carbon dioxide', 'Nitrogen', 'Argon', 'Oxygen'),
(35, 'What is the square root of 64?', '6', '7', '8', '9', '8'),
(36, 'Which sport is known as the “king of sports”?', 'Basketball', 'Tennis', 'Football (Soccer)', 'Baseball', 'Football (Soccer)'),
(37, 'Who wrote \"Romeo and Juliet\"?', 'Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Jane Austen', 'William Shakespeare'),
(38, 'What is the chemical symbol for gold?', 'Go', 'Au', 'Ag', 'Pb', 'Au'),
(39, 'Which element is most abundant in Earth’s atmosphere?', 'Oxygen', 'Hydrogen', 'Nitrogen', 'Carbon dioxide', 'Nitrogen'),
(40, 'Which country is famous for sushi?', 'China', 'Japan', 'South Korea', 'Thailand', 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `readables`
--

CREATE TABLE `readables` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `file` text NOT NULL,
  `category` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `readables`
--

INSERT INTO `readables` (`id`, `title`, `file`, `category`, `date_created`) VALUES
(1, 'Firesafezone', 'Chapter 1&5-Firesafezone.docx', 'Anxiety', '2025-04-02 07:35:33'),
(2, 'IM-IPT1', 'IM-IPT.pdf', 'Depressed', '2025-04-02 07:35:49'),
(4, 'two hearts', 'TWO HEARTS.pdf', 'Anxiety', '2025-04-11 13:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(1) NOT NULL,
  `title` text NOT NULL,
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `end_date` date NOT NULL DEFAULT current_timestamp(),
  `hectare` text NOT NULL,
  `type` text NOT NULL,
  `select2` text NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `title`, `start_date`, `end_date`, `hectare`, `type`, `select2`, `total`) VALUES
(9, 'asdasd', '2024-11-17', '2024-11-18', 'Hectare 1', 'Fertilizer', 'Sacks', 0),
(10, 'sdfsdf', '2024-11-17', '2024-11-18', 'Hectare 2', 'Fertilizer', 'Sacks', 0),
(11, 'nnnnnnnnn', '2024-11-21', '2024-11-22', 'Hectare 1', 'Watering', 'Sacks', 6);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `users_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `code`, `users_id`, `score`, `date`) VALUES
(9, '5798879275', 105, 40, '2025-03-21 21:43:23'),
(10, '373501554', 105, 50, '2025-03-21 21:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `take_students`
--

CREATE TABLE `take_students` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `users_id` int(11) NOT NULL,
  `questionnaires_id` int(11) NOT NULL,
  `answers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `middlename` text NOT NULL,
  `phone_number` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `passwordtxt` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `code` int(11) NOT NULL,
  `type` int(1) NOT NULL COMMENT '0=student,1=faculty,2=admin',
  `datetake` date NOT NULL DEFAULT current_timestamp(),
  `totaltake` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `img`, `firstname`, `lastname`, `middlename`, `phone_number`, `age`, `gender`, `email`, `password`, `passwordtxt`, `contact`, `address`, `code`, `type`, `datetake`, `totaltake`) VALUES
(1, 'Barbecued-snags.jpg', 'godeg test', 'kola', '', '', '', '', 'admin@admin.com', '$2y$10$PI0nCdoRms.MjY7epPZVqu67pbH0cyACqwnl3ZGx9qox0R23no0gG', 'admin', '0', '', 22198, 2, '2025-04-11', 0),
(105, 'blank_profile.png', 'godeg1', 'kola2', 'ttest', '9878676675', '33', 'Male', 'godegkola@gmail.com', '$2y$10$HdW.4LTG3RoGCDHv8f1HEe595wbeUZQ4eZUCBTV5aclGWlc.jD.DK', '111', '', '', 0, 0, '2025-04-11', 0),
(106, 'blank_profile.png', 'sorar', 'sorar', 'sorar', '', '', '', 'sorar384@gmail.com', '$2y$10$Y8h1jxlcFHSxFtyjvXB5z.qtIhxWAYqdb5zfHQsiNYAgRci7tpkCu', '123', '', '', 0, 0, '2025-04-11', 0),
(108, 'blank_profile.png', 'faculty 2', 'faculty 2', '', '', '', '', 'faculty2@email.com', '$2y$10$KJcHeneu00gneaDhh5.DQu9AVXldO3UvfexPgVhvTHGoeGg0IQlMy', '123', '', '', 0, 1, '2025-04-11', 0),
(110, '', 'test', 'sdfdsf', 'sdfsdf', '09999999', '34', 'Male', 'test@gmail.com', '$2y$10$d05Pup95JRBQwSl1SN0SHeQcUPC2Wd0gIxSGFek9jedDRxBeul57O', '123', '', '', 0, 0, '2025-04-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `file` text NOT NULL,
  `category` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `file`, `category`, `date_created`) VALUES
(1, 'wasaahgj', 'AQPdg60-6bRfCFdc91LPz-XSsQpCJKF5Y_YhyqDEQLTfjTrPhkgBPrIGA9Z_Jdk5A4W1pQF2QsMdYzfjbYPwUjiL.mp4', 'Normal', '2025-03-07 15:42:27'),
(3, 'cvbcvbcvb', 'AQPw-6BbFMw8VAgxZOXFWpV-UBH05d5-ZVPTY_idzbb4zlcGQMQ17WCpMfincyipRM-o3wJugEGbC0nV3-NnqdYp.mp4', 'Anxiety', '2025-03-07 16:01:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark_audio`
--
ALTER TABLE `bookmark_audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark_readables`
--
ALTER TABLE `bookmark_readables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark_video`
--
ALTER TABLE `bookmark_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_code`
--
ALTER TABLE `chat_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depressed`
--
ALTER TABLE `depressed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `readables`
--
ALTER TABLE `readables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `take_students`
--
ALTER TABLE `take_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookmark_audio`
--
ALTER TABLE `bookmark_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookmark_readables`
--
ALTER TABLE `bookmark_readables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookmark_video`
--
ALTER TABLE `bookmark_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `chat_code`
--
ALTER TABLE `chat_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `depressed`
--
ALTER TABLE `depressed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `readables`
--
ALTER TABLE `readables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `take_students`
--
ALTER TABLE `take_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
