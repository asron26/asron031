-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 09:29 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `room`
--
CREATE DATABASE IF NOT EXISTS `room` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `room`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(25) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'คอนโดมิเนียม', 'https://cdn-images.prod.thinkofliving.com/wp-content/uploads/1/2014/06/Perspective02.jpg'),
(2, 'อพาร์ทเมนท์', 'https://m.thaiware.com/upload_misc/software/2016_03/thumbnails/9445_161026115715vR_81.png'),
(3, 'แมนชั่น', 'https://f.ptcdn.info/720/003/000/1364796517-pic3D-o.jpg'),
(4, 'หอพัก', 'https://m.thaiware.com/upload_misc/software/2016_03/728/9445_160322180513C2_81.png');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_time` time NOT NULL,
  `comment_score` int(5) NOT NULL,
  `rentalroom_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_content`, `comment_date`, `comment_time`, `comment_score`, `rentalroom_id`) VALUES
(1, 'ดีมากเลยครับ', '2020-03-01', '05:22:14', 5, 1),
(2, 'แอร์เย็นไปนิดนึงค่ะ', '2020-03-04', '14:12:12', 4, 2),
(3, 'ห้องเล็กมากกก', '2020-03-03', '13:07:00', 3, 3),
(4, 'วิวสวยมากครับ', '2020-03-11', '10:14:06', 5, 4),
(5, 'บรรยากาศดี ข้างๆมีร้านอาหารด้วยอะ', '2020-03-10', '15:34:05', 5, 5),
(6, 'น่ากลัว นึกว่ามีผี T^T', '2020-03-04', '10:07:14', 3, 6),
(7, ' Wifi ช้ามากคร้าบ', '2020-03-17', '06:33:11', 4, 7),
(8, 'ขนาดห้องพอดี ทุกอย่างโอเค \r\n', '2020-03-04', '14:48:45', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `pic_id` int(255) NOT NULL,
  `picture` text NOT NULL,
  `rentalroom_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`pic_id`, `picture`, `rentalroom_id`) VALUES
(1, 'https://r-cf.bstatic.com/images/hotel/max1024x768/705/70548233.jpg', 1),
(2, 'https://cdn.renthub.in.th/images/uploaded/201806/20180615/apartment_pictures/normal/3c31d742a419a789035964be59df05cc.jpg?1529064046', 2),
(3, 'https://res.cloudinary.com/baanfinder/image/private/t_project_gallery_size/fsnmmbsmqro4njjdhwuk.jpg', 3),
(4, 'https://res.cloudinary.com/baanfinder/image/private/t_project_gallery_size/s0uxbcselghrluncaszc.jpg', 4),
(5, 'https://4.bp.blogspot.com/-P2EAjZCCec8/VyLh5ri5BrI/AAAAAAAABpQ/iYbUUHpbicYVUww3xtfUhjDxCMNKDPZkgCLcB/s400/PP-Mansion-Songkhla.jpg', 5),
(6, 'https://lh3.googleusercontent.com/proxy/UNPrHADzIsp0pPhlOMc2VNuwulF7n_RP_wcsQEkWmgaBduwnSomo9LTpCVF_KPFf-ZoJIt9QTwffZqmgGvZ1PPRdwcQ0HPOnyY_9RJEymNrJ9qOgiEYqmy6rSGk4eYqWkLkL3Gc', 6),
(7, 'data:image/jpeg;base64,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', 7),
(8, 'https://f.hongpak.in.th/media/rooms/thbs3x/18/0621/071635_4534.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `rentalroom`
--

DROP TABLE IF EXISTS `rentalroom`;
CREATE TABLE `rentalroom` (
  `rentalroom_id` int(255) NOT NULL,
  `rentalroom_name` varchar(255) NOT NULL,
  `rentalroom_price` int(10) NOT NULL,
  `rentalroom_name_location` varchar(255) NOT NULL,
  `rentalroom_latitude` text NOT NULL,
  `rentalroom_longitude` text NOT NULL,
  `rentalroom_phone` varchar(25) NOT NULL,
  `rentalroom_limitedroom_sex` varchar(25) NOT NULL,
  `rentalroom_approve` int(1) NOT NULL,
  `rentalroom_facilities` text NOT NULL,
  `category_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentalroom`
--

INSERT INTO `rentalroom` (`rentalroom_id`, `rentalroom_name`, `rentalroom_price`, `rentalroom_name_location`, `rentalroom_latitude`, `rentalroom_longitude`, `rentalroom_phone`, `rentalroom_limitedroom_sex`, `rentalroom_approve`, `rentalroom_facilities`, `category_id`) VALUES
(1, 'Tanatip Apartment', 4000, '91/52 ถนน กาญจนวนิช ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.15965', '100.6050207', '086 461 5176', 'หอรวม', 1, 'รายเดือน', 2),
(2, 'ลายจันทร์ อพาร์ทเมนท์', 350, '91/117 หมู่ที่ 10 ถนน กาญจนวนิช ซอย 25 ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1606551', '100.6043782', '081 766 2400', 'หอรวม', 1, 'รายวัน', 2),
(3, 'พลัสคอนโด', 65000, '682 ถ.เพชรเกษม หาดใหญ่ สงขลา 90110', '7.0380776', '100.4609588', '098 453 5659', 'หอรวม', 1, 'รายเดือน', 1),
(4, 'หงส์ฟ้าคอนโดเทล', 35000, '19 ถนน เพชรเกษม ซอย 2 ตำบล คอหงส์ อำเภอหาดใหญ่ สงขลา 90110', '7.0216201', '100.4866327', '081 990 1554', 'หอหญิง', 1, 'รายเดือน', 1),
(5, 'พีพี แมนชั่น', 4500, 'ถนน กาญจนวนิช ซอย 13 ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1700205', '100.5733243', '093 576 2980', 'หอรวม', 2, 'รายเดือน', 3),
(6, 'วชิรวิชญ์ แมนชั่น', 3500, 'ถนน กาญจนวนิช ซอย 5 ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1749998', '100.6053005', '094 526 3359', 'หอชาย', 2, 'รายเดือน', 3),
(7, 'หอพักสตรอิ่มอุ่น', 2500, 'เยื้อง ม ราชภัฏ, สงขลา', '7.1750177', '100.6053005', '091 983 2698', 'หอหญิง', 1, 'รายเดือน', 4),
(8, 'หอพักหญิงโมกข์-มุข', 3500, 'ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1700097', '100.6086354', '0640323350', 'หอหญิง', 1, 'รายเดือน', 4);

-- --------------------------------------------------------

--
-- Table structure for table `scorerentalroom`
--

DROP TABLE IF EXISTS `scorerentalroom`;
CREATE TABLE `scorerentalroom` (
  `score_id` int(255) NOT NULL,
  `score` int(5) NOT NULL,
  `rentalroom_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scorerentalroom`
--

INSERT INTO `scorerentalroom` (`score_id`, `score`, `rentalroom_id`) VALUES
(1, 4, 1),
(2, 5, 2),
(3, 5, 3),
(4, 4, 4),
(5, 5, 5),
(6, 4, 6),
(7, 5, 7),
(8, 4, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `rentalroom_id` (`rentalroom_id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`pic_id`),
  ADD KEY `rentalroom_id` (`rentalroom_id`);

--
-- Indexes for table `rentalroom`
--
ALTER TABLE `rentalroom`
  ADD PRIMARY KEY (`rentalroom_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `scorerentalroom`
--
ALTER TABLE `scorerentalroom`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `rentalroom_id` (`rentalroom_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`rentalroom_id`) REFERENCES `rentalroom` (`rentalroom_id`);

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`rentalroom_id`) REFERENCES `rentalroom` (`rentalroom_id`);

--
-- Constraints for table `rentalroom`
--
ALTER TABLE `rentalroom`
  ADD CONSTRAINT `rentalroom_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `scorerentalroom`
--
ALTER TABLE `scorerentalroom`
  ADD CONSTRAINT `scorerentalroom_ibfk_2` FOREIGN KEY (`rentalroom_id`) REFERENCES `rentalroom` (`rentalroom_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
