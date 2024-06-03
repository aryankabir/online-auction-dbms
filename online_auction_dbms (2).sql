-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 06:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online auction dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` decimal(10,0) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `user_id` decimal(10,0) DEFAULT NULL,
  `user_card_number` decimal(16,0) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `admin_password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `admin_name`, `user_id`, `user_card_number`, `user_email`, `admin_password`) VALUES
(2006, 'Aryan', 3166, 6460121023111123, 'homer.donut@hotmail.', 'ary123'),
(2007, 'Rahi', 3596, 2223333252226222, 'biker.raquib@yahoo.c', 'rahi54321'),
(2007, 'Rahi', 3486, 1111222233334444, 'shadow.ashley@gmail.', 'rahi54321'),
(2007, 'Rahi', 2019, 5575666677778880, 'traveller_jabeen@gma', 'rahi54321'),
(2006, 'Aryan', 2105, 1010202030204040, 'shrek.ogre@yahoo.com', 'ary123'),
(2007, 'Rahi', 3352, 5050606070708080, 'gaara.ofdesert@yahoo', 'rahi54321'),
(2006, 'Aryan', 1035, 9090909080508050, 'md.azim55@gmail.com', 'ary123'),
(2006, 'Aryan', 4320, 1001200230034004, 'heisenberg.german@gm', 'ary123'),
(2007, 'Rahi', 8110, 5005600670078008, 'nezuko.demon@gmail.c', 'rahi54321'),
(2006, 'Aryan', 5133, 9009999988887777, 'raphael.angelo@gmail', 'ary123');

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `auction_id` decimal(10,0) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `auc_status` varchar(10) DEFAULT NULL,
  `reserve_price` decimal(5,0) DEFAULT NULL,
  `winning_bid` decimal(5,0) DEFAULT NULL,
  `item_id` decimal(10,0) DEFAULT NULL,
  `winningbid_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`auction_id`, `start_date`, `end_date`, `auc_status`, `reserve_price`, `winning_bid`, `item_id`, `winningbid_name`) VALUES
(3021, '2023-03-02', '2023-03-06', 'Ended', 700, 950, 1001, 'Jabeen'),
(9022, '2023-03-09', '2023-03-12', 'Ended', 390, 500, 1002, 'Azim'),
(9023, '2023-05-18', '2023-05-22', 'Ended', 750, 900, 1003, 'Heisenberg'),
(9024, '2023-05-20', '2023-05-28', 'Running', 800, NULL, 1004, 'Waiting'),
(9025, '2023-06-09', '2023-06-14', 'Upcoming', 8000, NULL, 1005, 'Waiting');

-- --------------------------------------------------------

--
-- Table structure for table `bidder`
--

CREATE TABLE `bidder` (
  `bidder_id` decimal(10,0) DEFAULT NULL,
  `bidder_name` varchar(20) DEFAULT NULL,
  `item_id` decimal(10,0) DEFAULT NULL,
  `bidder_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidder`
--

INSERT INTO `bidder` (`bidder_id`, `bidder_name`, `item_id`, `bidder_address`) VALUES
(1035, 'Azim', 1002, 'Lagos,Nigeria'),
(2019, 'Jabeen', 1004, 'Mush,Turkey'),
(5133, 'Raphael', 1001, 'Sicily,Italy'),
(8110, 'Nezuko', 1002, 'Hiroshima,Japan'),
(4320, 'Heisenberg', 1003, 'Hamburg,Germany'),
(1035, 'Azim', 1004, 'Lagos,Nigeria'),
(2019, 'Jabeen', 1003, 'Mush,Turkey'),
(2019, 'Jabeen', 1001, 'Mush,Turkey');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `bid_number` decimal(10,0) NOT NULL,
  `item_id` decimal(10,0) DEFAULT NULL,
  `current_bid` decimal(10,0) DEFAULT NULL,
  `auction_id` decimal(10,0) DEFAULT NULL,
  `bidder_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`bid_number`, `item_id`, `current_bid`, `auction_id`, `bidder_id`) VALUES
(8010, 1001, 750, 9021, 5133),
(8011, 1001, 950, 9021, 2019),
(8012, 1002, 460, 9022, 8110),
(8013, 1002, 500, 9022, 1035),
(8014, 1003, 880, 9023, 2019),
(8015, 1003, 900, 9023, 4320),
(8016, 1004, 900, 9024, 2019),
(8017, 1004, 950, 9024, 1035);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` decimal(10,0) NOT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `item_condition` varchar(20) DEFAULT NULL,
  `item_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_condition`, `item_type`) VALUES
(1001, 'Fazer V2', 'Very Good', 'Bike'),
(1002, 'Kawai GX', 'Pristine', 'Piano'),
(1003, 'Phoenix 1860', 'Refurbished', 'Gramophone'),
(1004, '1986 Junkerola', 'Needs Repair', 'Car(Sedan)');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(10) DEFAULT NULL,
  `total_payment` decimal(10,0) DEFAULT NULL,
  `item_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_date`, `payment_method`, `total_payment`, `item_id`) VALUES
('2023-03-07', 'Card', 1200, 1001),
('2023-03-13', 'Card', 700, 1002),
('2023-05-23', 'Card', 965, 1003);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` decimal(10,0) NOT NULL,
  `seller_name` varchar(20) DEFAULT NULL,
  `item_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `item_id`) VALUES
(2105, 'Shrek', 1003),
(3166, 'Homer', 1005),
(3352, 'Gaara', 1004),
(3486, 'Samiha', 1002),
(3596, 'Raquib', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `shipment_id` decimal(10,0) NOT NULL,
  `shipment_date` date DEFAULT NULL,
  `shipment_cost` decimal(5,0) DEFAULT NULL,
  `shipment_status` varchar(20) DEFAULT NULL,
  `item_id` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`shipment_id`, `shipment_date`, `shipment_cost`, `shipment_status`, `item_id`) VALUES
(3516, '2023-05-23', 65, 'Dispatched', 1003),
(5919, '2023-09-09', 1250, 'Reached', 1001),
(8613, '2023-03-14', 200, 'On its way', 1002);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` decimal(10,0) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `user_card_number` decimal(16,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `designation`, `user_card_number`) VALUES
(1035, 'Azim', 'md.azim55@yahoo.com', 'azimmiza123', 'Bidder', 9090909080508050),
(2006, 'Aryan', 'aryankabirsis@gmail.', 'ary123', 'Administrator', NULL),
(2007, 'Rahi', 'rahimaimun@gmail.com', 'rahi54321', 'Administrator', NULL),
(2019, 'Jabeen', 'traveller_jabeen@gma', 'traveltravel', 'Bidder', 5575666677778880),
(2105, 'Shrek', 'shrek.ogre@yahoo.com', 'greenogre22', 'Seller', 1010202030204040),
(3166, 'Homer', 'homer.donut@gmail.co', 'donut123donut', 'Seller', 6460121023111123),
(3352, 'Gaara', 'gaara.ofdesert@yahoo', 'lonelyboy123', 'Seller', 5050606070708080),
(3486, 'Samiha', 'shadow.ashley@gmail.', 'samsam123', 'Seller', 1111222233334444),
(3596, 'Raquib', 'biker.raquib@gmail.c', 'raqraq321', 'Seller', 2223333252226222),
(4320, 'Heisenberg', 'heisenberg.german@gm', 'HeilHitler321', 'Bidder', 1001200230034004),
(5133, 'Raphael', 'raphael.angelo@gmail', 'TMNT123', 'Bidder', 9009999988887777),
(8110, 'Nezuko', 'nezuko.demon@gmail.c', 'humanflesh78', 'Bidder', 5005600670078008);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auction_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`bid_number`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`shipment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
