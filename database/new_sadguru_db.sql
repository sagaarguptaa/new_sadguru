-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 03:37 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_sadguru_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(8, 3, 2, 25, 1, '2023-02-11 01:40:42'),
(9, 3, 5, 1000, 1, '2023-02-11 01:40:47'),
(10, 3, 7, 25, 1, '2023-02-11 01:41:03'),
(11, 4, 11, 20, 1, '2023-02-25 08:47:07'),
(12, 3, 16, 850, 1, '2023-02-25 09:54:32'),
(15, 1, 16, 1, 1, '2023-02-25 11:35:53'),
(18, 1, 9, 15, 1, '2023-02-25 12:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Foods', 'Sample Description', 1, '2023-01-24 10:17:41'),
(2, 'Drink', '&lt;p&gt;Sample Category&lt;/p&gt;', 1, '2023-01-24 16:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'Sagar', 'Gupta', 'Male', '9137953511', 'sagar.guptasmg@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Adarsh chawl no 6 Room no 8\r\nGanesh Nagar Agason Road\r\nDiva East', '2023-01-24 08:04:33'),
(3, 'Sagar', 'Gupta', 'Male', '9876543211', 'sagar@gmail.com', '4399419aaa976a4ced823b2b891c6fad', 'Diva', '2023-02-11 00:22:58'),
(4, 'pranav', 'k', 'Male', '9137953511', 'pranav@gmail.com', '41ed44e3038dbeee7d2ffaa7f51d8a4b', 'dombivli', '2023-02-25 08:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `size` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `size`, `date_created`, `date_updated`) VALUES
(1, 7, '20', 400, 'KG', '2023-02-13 16:01:06', '2023-02-13 16:01:06'),
(2, 1, '50', 25, 'DOUBLE', '2023-02-13 16:09:47', '2023-02-13 16:09:47'),
(3, 1, '50', 15, 'SINGLE', '2023-02-13 16:10:28', '2023-02-13 16:10:28'),
(4, 6, '50', 50, 'DOUBLE', '2023-02-13 16:10:45', '2023-02-13 16:10:45'),
(5, 6, '50', 25, 'SINGLE', '2023-02-13 16:11:00', '2023-02-13 16:11:00'),
(6, 5, '100', 1000, 'KG', '2023-02-13 16:11:31', '2023-02-13 16:11:31'),
(7, 4, '30', 30, 'DOUBLE', '2023-02-13 16:11:57', '2023-02-13 16:11:57'),
(8, 4, '30', 15, 'SINGLE', '2023-02-13 16:12:13', '2023-02-13 16:12:13'),
(9, 3, '100', 15, 'DOUBLE', '2023-02-13 16:12:33', '2023-02-13 16:12:33'),
(10, 3, '100', 7, 'SINGLE', '2023-02-13 16:12:51', '2023-02-13 16:12:51'),
(11, 19, '200', 20, 'LITER', '2023-02-13 16:55:20', '2023-02-13 16:55:20'),
(12, 20, '50', 200, 'LITER', '2023-02-13 16:58:22', '2023-02-13 16:58:22'),
(13, 10, '30', 400, 'KG', '2023-02-13 16:59:34', '2023-02-13 16:59:34'),
(14, 9, '400', 15, 'SINGLE', '2023-02-13 17:00:13', '2023-02-13 17:00:13'),
(15, 9, '400', 25, 'DOUBLE', '2023-02-13 17:00:32', '2023-02-13 17:00:32'),
(16, 8, '20', 1, 'KG', '2023-02-13 17:00:55', '2023-02-13 17:00:55'),
(17, 11, '50', 400, 'KG', '2023-02-13 17:01:23', '2023-02-13 17:01:23'),
(18, 16, '100', 40, 'ML', '2023-02-13 17:02:07', '2023-02-13 17:02:07'),
(19, 13, '100', 250, 'ML', '2023-02-13 17:03:08', '2023-02-13 17:03:08'),
(20, 15, '100', 200, 'ML', '2023-02-13 17:03:44', '2023-02-13 17:03:44'),
(21, 14, '100', 225, 'ML', '2023-02-13 17:04:03', '2023-02-13 17:04:03'),
(22, 12, '200', 20, 'SINGLE', '2023-02-13 17:04:38', '2023-02-13 17:04:38'),
(23, 12, '200', 40, 'DOUBLE', '2023-02-13 17:04:55', '2023-02-13 17:04:55'),
(24, 17, '100', 40, 'ML', '2023-02-13 17:05:24', '2023-02-13 17:05:24'),
(25, 18, '100', 40, 'ML', '2023-02-13 17:05:47', '2023-02-13 17:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(5, 1, '', 'cod', 250, 3, 1, '2023-01-24 20:33:48', '2023-01-24 20:34:34'),
(7, 1, 'Diva', 'cod', 850, 0, 0, '2023-02-25 09:55:57', NULL),
(8, 1, 'Diva', 'cod', 850, 2, 1, '2023-02-25 10:06:07', '2023-02-25 10:06:38'),
(9, 1, 'Diva', 'cod', 16, 0, 1, '2023-02-25 12:07:39', '2023-02-25 12:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(1, 1, 1, 'Chola_Samosa', '', 1, '2023-01-24 11:19:31'),
(3, 1, 1, 'Samosa', '', 1, '2023-01-24 16:48:16'),
(4, 1, 1, 'Paneer_Pakora', '', 1, '2023-01-24 16:49:07'),
(5, 1, 1, 'kaju_namkeen', '', 1, '2023-01-24 16:50:11'),
(6, 1, 1, 'dahi_vada', '', 1, '2023-01-24 15:50:16'),
(7, 1, 2, 'chena_roll', '', 1, '2023-02-13 15:16:03'),
(8, 1, 2, 'kaju_katli', '', 1, '2023-02-13 16:14:08'),
(9, 1, 2, 'gullab_jamun', '', 1, '2023-02-13 16:15:36'),
(10, 1, 2, 'gajar_halwa', '', 1, '2023-02-13 16:16:03'),
(11, 1, 2, 'Motichoor_ladoo', '', 1, '2023-02-13 16:16:30'),
(12, 1, 2, 'Rosogulla', '', 1, '2023-02-13 16:17:00'),
(13, 2, 3, 'Real_apple_juice', '', 1, '2023-02-13 16:18:10'),
(14, 2, 3, 'Real_mango_juice', '', 1, '2023-02-13 16:18:41'),
(15, 2, 3, 'Real_juice', '', 1, '2023-02-13 16:19:23'),
(16, 2, 4, 'Mountain_Dew', '', 1, '2023-02-13 16:46:02'),
(17, 2, 4, 'Sprite', '', 1, '2023-02-13 16:46:30'),
(18, 2, 4, 'thumsUp', '', 1, '2023-02-13 16:47:25'),
(19, 2, 5, 'bisleri', '', 1, '2023-02-13 16:47:52'),
(20, 2, 5, 'Black_water', '', 1, '2023-02-13 16:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(4, 4, 500, '2023-01-24 08:05:45'),
(5, 5, 250, '2023-01-24 20:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(30) NOT NULL,
  `size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`) VALUES
(1, 'Double'),
(2, 'Single'),
(3, 'Kg'),
(4, 'gram'),
(5, 'ml'),
(6, 'None'),
(7, 'liter');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Snacks', '&lt;p&gt;Sample only&lt;/p&gt;', 1, '2023-01-24 10:58:32'),
(2, 1, 'Mithai', '&lt;p&gt;Sample&lt;/p&gt;', 1, '2023-01-24 16:34:59'),
(3, 2, 'Juices ', '&lt;p&gt;Sample&amp;nbsp;&lt;/p&gt;', 1, '2023-01-24 16:35:26'),
(4, 2, 'Cold Drinks', '&lt;p&gt;Sample&lt;/p&gt;', 1, '2023-01-24 16:35:36'),
(5, 2, 'Mineral Water', '&lt;p&gt;Sample&lt;/p&gt;', 1, '2023-01-24 19:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'New Sadguru Misthan Bhandar'),
(6, 'short_name', 'New Sadguru'),
(11, 'logo', 'uploads/1674577320_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1674577320_cover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
