-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 04:26 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weconnect`
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
(1, 'Wake up', 'pavel_khan', 'pavel_khan', '2020-03-24 12:45:59', 'no', 1),
(2, 'Never mind', 'pavel_khan', 'hanif_khan', '2020-03-24 15:53:18', 'no', 7),
(3, 'Never mind', 'pavel_khan', 'pavel_khan', '2020-03-24 15:53:59', 'no', 1),
(4, 'Hello', 'pavel_khan', 'fahad_khan', '2020-03-24 18:07:49', 'no', 5),
(5, 'Where are you all', 'pavel_khan', 'pavel_khan', '2020-03-27 14:32:50', 'no', 1),
(6, 'What is the price', 'rashid_khan', 'pavel_khan', '2020-03-27 14:41:01', 'no', 11),
(7, 'hi', 'rashid_khan', 'pavel_khan', '2020-04-01 13:51:21', 'no', 15),
(8, 'Like me', 'pavel_khan', 'pavel_khan', '2021-11-15 15:57:16', 'no', 31),
(9, 'Where are you now?', 'jhon_philip', 'pavel_khan', '2021-11-15 16:09:40', 'no', 31),
(10, 'yes', 'jhon_philip', 'pavel_khan', '2021-11-15 17:13:08', 'no', 33);

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
(1, 'hanif_khan', 'pavel_khan');

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
(2, 'pavel_khan', 4),
(5, 'pavel_khan', 3),
(6, 'pavel_khan', 1),
(7, 'suny_hasan', 4),
(10, 'piku_khan', 29),
(12, 'jhon_philip', 31),
(13, 'jhon_philip', 33);

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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(24, 'jhon_philip', 'pavel_khan', 'hi', '2021-11-11 12:17:36', 'yes', 'no', 'no'),
(25, 'pavel_khan', 'jhon_philip', 'hi', '2021-11-11 12:22:02', 'yes', 'no', 'no'),
(26, 'jhon_philip', 'pavel_khan', 'where are you', '2021-11-11 12:24:09', 'no', 'no', 'no'),
(27, 'jhon_philip', 'pavel_khan', 'Are you ready?', '2021-11-15 15:59:37', 'no', 'no', 'no');

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(4, 'pavel_khan', 'jhon_philip', 'Jhon Philip liked your post', 'post.php?id=31', '2021-11-14 15:33:00', 'no', 'yes'),
(5, 'pavel_khan', 'jhon_philip', 'Jhon Philip commented on your post', 'post.php?id=31', '2021-11-15 16:09:40', 'no', 'yes'),
(6, 'pavel_khan', 'jhon_philip', 'Jhon Philip liked your post', 'post.php?id=33', '2021-11-15 17:11:11', 'no', 'yes'),
(7, 'pavel_khan', 'jhon_philip', 'Jhon Philip commented on your post', 'post.php?id=33', '2021-11-15 17:13:08', 'no', 'yes');

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
(31, 'hello', 'pavel_khan', 'none', '2021-11-11 12:16:53', 'no', 'no', 1, ''),
(32, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/csnD5EVL5z8\'></iframe><br>', 'pavel_khan', 'none', '2021-11-15 16:57:01', 'no', 'no', 0, ''),
(33, 'Hi, anyone here', 'pavel_khan', 'none', '2021-11-15 16:57:55', 'no', 'no', 1, '');

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
(2, 'Badol', 'Khan', 'badol_khan', 'Badol@gmail.com', '5690dddfa28ae085d23518a035707282', '2020-03-16', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(4, 'Mickey', 'Mouse', 'mickey_mouse', 'Mickey@gmail.com', '4da7629abc2a7610b35684b3eb96fa73', '2020-03-16', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(5, 'Hshsh', 'Ssss', 'hshsh_ssss', 'Zaman@gmail.com', 'e6a5065e3f7bf323ed1da5a98e6185d5', '2020-03-16', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(6, 'Rashed', 'Khan', 'rashed_khan', 'Rashed@gmail.com', '8d2f7954a86bdc5a92fe1780f8162423', '2020-03-16', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(7, 'Rakib', 'Hasan', 'rakib_hasan', 'Rakib@gmail.com', 'ad07fb25aa2d3a9f96ee12f25e0be902', '2020-03-17', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(18, 'Nabil', 'Hasan', 'nabil_hasan', 'Nabil@gmail.com', '64ad3fb166ddb41a2ca24f1803b8b722', '2021-11-09', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',sakib_khan,'),
(19, 'Pavel', 'Khan', 'pavel_khan', 'Pavel@gmail.com', '64ad3fb166ddb41a2ca24f1803b8b722', '2021-11-11', 'assets/images/profile_pics/defaults/head_emerald.png', 3, 2, 'no', ',jhon_philip,'),
(20, 'Jhon', 'Philip', 'jhon_philip', 'Jhon@gmail.com', '64ad3fb166ddb41a2ca24f1803b8b722', '2021-11-11', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',pavel_khan,');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
