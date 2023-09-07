-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2023 at 01:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uppercut`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(9, 'hi', 'john_appleseed', 'stephen_bennett', '2023-08-14 19:51:45', 'no', 80),
(10, 'how are you?', 'john_appleseed', 'stephen_bennett', '2023-08-14 20:26:54', 'no', 80),
(11, 'yoyo!', 'john_appleseed', 'stephen_bennett', '2023-08-14 20:41:22', 'no', 80),
(12, 'hey', 'john_appleseed', 'john_appleseed', '2023-08-14 23:17:16', 'no', 79),
(13, 'hey man', 'stephen_bennett', 'stephen_bennett', '2023-08-14 23:36:44', 'no', 80),
(14, 'whats up?', 'stephen_bennett', 'stephen_bennett', '2023-08-15 00:18:37', 'no', 84),
(15, 'hey john!', 'stephen_bennett', 'john_appleseed', '2023-08-15 00:20:17', 'no', 85),
(16, 'chillin', 'john_appleseed', 'stephen_bennett', '2023-08-15 00:22:12', 'no', 82),
(17, 'hey', 'john_appleseed', 'stephen_bennett', '2023-08-17 00:59:18', 'no', 86),
(18, 'so cool!', 'adam_devine', 'adam_devine', '2023-08-17 01:16:42', 'no', 88),
(19, 'just kidding', 'billy_bob', 'billy_bob', '2023-08-17 02:59:19', 'no', 89),
(20, 'fheife', 'billy_bob', 'billy_bob', '2023-08-17 02:59:25', 'no', 89),
(21, 'IDIOT', 'john_appleseed', 'john_appleseed', '2023-09-01 01:27:19', 'no', 91),
(22, 'frfr', 'john_appleseed', 'john_appleseed', '2023-09-08 00:06:56', 'no', 92);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(10, 'stephen_bennett', 'john_appleseed');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(33, 'john_appleseed', 79),
(35, 'stephen_bennett', 80),
(36, 'stephen_bennett', 81),
(37, 'stephen_bennett', 84),
(39, 'stephen_bennett', 85),
(43, 'john_appleseed', 86),
(44, 'adam_devine', 88),
(46, 'john_appleseed', 91),
(49, 'john_appleseed', 92);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(66, 'This is a post test!', 'john_appleseed', 'none', '2023-08-14 05:00:39', 'no', 'no', 0, ''),
(67, 'This is a post test!', 'john_appleseed', 'none', '2023-08-14 05:04:47', 'no', 'no', 0, ''),
(68, 'another test!', 'john_appleseed', 'none', '2023-08-14 05:07:46', 'no', 'no', 0, ''),
(69, 'heyo', 'john_appleseed', 'none', '2023-08-14 16:35:37', 'no', 'no', 0, ''),
(70, '1', 'john_appleseed', 'none', '2023-08-14 16:35:43', 'no', 'no', 0, ''),
(71, 'blahahaha', 'john_appleseed', 'none', '2023-08-14 16:35:47', 'no', 'no', 0, ''),
(72, 'yoyoyo', 'john_appleseed', 'none', '2023-08-14 16:35:51', 'no', 'no', 0, ''),
(73, 'hey you1', 'john_appleseed', 'none', '2023-08-14 16:35:55', 'no', 'no', 0, ''),
(74, 'sdsdsd', 'john_appleseed', 'none', '2023-08-14 16:35:57', 'no', 'no', 0, ''),
(75, 'bfgbfb', 'john_appleseed', 'none', '2023-08-14 16:35:59', 'no', 'no', 0, ''),
(76, 'fefefe', 'john_appleseed', 'none', '2023-08-14 16:36:01', 'no', 'no', 0, ''),
(77, 'ededed', 'john_appleseed', 'none', '2023-08-14 16:36:10', 'no', 'no', 0, ''),
(78, 'dededed', 'john_appleseed', 'none', '2023-08-14 16:36:11', 'no', 'no', 0, ''),
(79, 'sdsds', 'john_appleseed', 'none', '2023-08-14 16:36:13', 'no', 'no', 1, ''),
(80, 'hey', 'stephen_bennett', 'none', '2023-08-14 18:33:35', 'no', 'no', 1, ''),
(81, 'hey guys', 'stephen_bennett', 'none', '2023-08-14 23:36:55', 'no', 'no', 1, ''),
(82, 'Capy', 'stephen_bennett', 'none', '2023-08-15 00:04:07', 'no', 'no', 0, 'assets/images/posts/64dab2e7a7fd1Capture.PNG'),
(83, 'dobbyis a free elf', 'stephen_bennett', 'none', '2023-08-15 00:14:07', 'no', 'no', 0, 'assets/images/posts/64dab53f6d975DOBBY2.jpg'),
(84, 'hey guys!', 'stephen_bennett', 'none', '2023-08-15 00:18:28', 'no', 'no', 1, ''),
(85, 'steve', 'john_appleseed', 'none', '2023-08-15 00:19:47', 'no', 'no', 1, ''),
(86, 'hey john!', 'stephen_bennett', 'none', '2023-08-15 00:21:24', 'no', 'no', 1, ''),
(87, 'hey!', 'adam_devine', 'none', '2023-08-17 01:16:21', 'no', 'no', 0, ''),
(88, 'Picture!', 'adam_devine', 'none', '2023-08-17 01:16:35', 'no', 'no', 1, 'assets/images/posts/64dd66e39d8bea5853302b7cb45a8cd6a0e9f126c9291--tyler-the-creator-fashion-ofwgkta.jpg'),
(89, 'Hello', 'billy_bob', 'none', '2023-08-17 02:59:07', 'no', 'no', 0, ''),
(90, 'benimaru', 'billy_bob', 'none', '2023-08-17 02:59:40', 'no', 'no', 0, 'assets/images/posts/64dd7f0cd5de70115ec136600877003c77198efdbfec0.jpg'),
(91, 'AYE YO', 'john_appleseed', 'none', '2023-09-01 01:27:14', 'no', 'no', 1, ''),
(92, 'bennny', 'john_appleseed', 'none', '2023-09-01 01:27:34', 'no', 'no', 1, 'assets/images/posts/64f12ff65a4e80115ec136600877003c77198efdbfec0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(11, 'Steve', 'Bennett', 'sbennett', 'steve@aol.com', 'applesauce', '2023-08-13', 'qwqwqwqw', 0, 0, 'no', ''),
(12, 'John', 'Appleseed', 'john_appleseed', 'John@aol.com', '404a6e35ea5384667d3527e6bd89f3a8', '2023-08-13', 'assets/images/profile_pics/defaults/head_deep_blue.png', 17, 4, 'no', ','),
(13, 'Stephen', 'Bennett', 'stephen_bennett', 'Stevie@gmail.com', '38b22a99b14f0c66e65d386c30bd9ad0', '2023-08-14', 'assets/images/profile_pics/defaults/head_emerald.png', 6, 4, 'no', ',wendy_letty,'),
(14, 'Wendy', 'Letty', 'wendy_letty', 'Wedy@aol.com', '73c442ef8f7ea1fab4141a890e868545', '2023-08-14', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',stephen_bennett,'),
(15, 'Adam', 'Devine', 'adam_devine', 'Adam@aol.com', '33da7a40473c1637f1a2e142f4925194', '2023-08-17', 'assets/images/profile_pics/defaults/head_deep_blue.png', 2, 1, 'no', ','),
(16, 'Billy', 'Bob', 'billy_bob', 'Billy@aol.com', '33da7a40473c1637f1a2e142f4925194', '2023-08-17', 'assets/images/profile_pics/defaults/head_deep_blue.png', 2, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
