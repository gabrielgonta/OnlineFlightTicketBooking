-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 09:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `ofbms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2a$12$ELyomcHh6./uCryoxxNgOu7ytXGYbzSM6Xtuke6b1S/iQ7WGTRAyu');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Delta Air Lines', 200),
(2, 'Emirates', 350),
(3, 'Qatar Airways', 180),
(4, 'Singapore Airlines', 250),
(5, 'British Airways', 300),
(6, 'Lufthansa', 240),
(7, 'United Airlines', 220),
(8, 'Air France', 260),
(9, 'Cathay Pacific', 230),
(10, 'KLM Royal Dutch Airlines', 210),
(11, 'American Airlines', 280),
(12, 'Southwest Airlines', 190),
(13, 'Turkish Airlines', 270),
(14, 'Swiss International Air Lines', 250),
(15, 'Japan Airlines', 240);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Paris'),
('New York'),
('Tokyo'),
('Sydney'),
('Rome'),
('Berlin'),
('Dubai'),
('Singapore'),
('Hong Kong'),
('Istanbul'),
('Toronto'),
('London'),
('Amsterdam'),
('Los Angeles'),
('São Paulo');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT 20,
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
-- Example flights with different airlines and destinations
(1, 1, '2024-09-01 07:00:00', '2024-09-01 06:00:00', 'Paris', 'New York', 'Delta Air Lines', '200', '7 Hours', 8000, '', '', '', 20, ''),
(2, 1, '2024-09-02 08:30:00', '2024-09-02 07:30:00', 'Tokyo', 'New York', 'Emirates', '350', '14 Hours', 12000, '', '', '22C', 20, ''),
(3, 1, '2024-09-03 16:00:00', '2024-09-03 15:00:00', 'Sydney', 'New York', 'Qatar Airways', '180', '21 Hours', 15000, '', 'solved', '', 20, ''),
(4, 1, '2024-09-04 15:30:00', '2024-09-04 14:30:00', 'Rome', 'New York', 'Singapore Airlines', '250', '8 Hours', 9000, 'arr', '', '21E', 20, ''),
(5, 1, '2024-09-05 17:00:00', '2024-09-05 16:00:00', 'Berlin', 'New York', 'British Airways', '300', '9 Hours', 9500, 'issue', '60', '22B', 20, ''),
(6, 1, '2024-09-06 19:00:00', '2024-09-06 18:00:00', 'Dubai', 'New York', 'Lufthansa', '240', '12 Hours', 11000, '', '', '', 20, ''),
(7, 1, '2024-09-07 20:00:00', '2024-09-07 19:00:00', 'Singapore', 'New York', 'United Airlines', '220', '15 Hours', 13000, '', '', '', 20, ''),
(8, 1, '2024-09-08 10:00:00', '2024-09-08 09:00:00', 'Hong Kong', 'New York', 'Air France', '260', '16 Hours', 14000, '', '', '', 20, ''),
(9, 1, '2024-09-09 12:00:00', '2024-09-09 11:00:00', 'Istanbul', 'New York', 'Cathay Pacific', '230', '11 Hours', 9500, '', '', '', 20, ''),
(10, 1, '2024-09-10 14:00:00', '2024-09-10 13:00:00', 'Toronto', 'New York', 'KLM Royal Dutch Airlines', '210', '1 Hour', 4000, '', '', '', 20, ''),
(11, 1, '2024-09-11 16:00:00', '2024-09-11 15:00:00', 'London', 'New York', 'American Airlines', '280', '7 Hours', 8000, '', '', '', 20, ''),
(12, 1, '2024-09-12 18:00:00', '2024-09-12 17:00:00', 'Amsterdam', 'New York', 'Southwest Airlines', '190', '8 Hours', 8500, '', '', '', 20, ''),
(13, 1, '2024-09-13 20:00:00', '2024-09-13 19:00:00', 'Los Angeles', 'New York', 'Turkish Airlines', '270', '6 Hours', 6000, '', '', '', 20, ''),
(14, 1, '2024-09-14 22:00:00', '2024-09-14 21:00:00', 'São Paulo', 'New York', 'Swiss International Air Lines', '250', '10 Hours', 10000, '', '', '', 20, ''),
(15, 1, '2024-09-15 23:00:00', '2024-09-15 22:00:00', 'Paris', 'New York', 'Japan Airlines', '240', '7 Hours', 8000, '', '', '', 20, ''),
-- Continue adding 35 more flights with different combinations
(16, 1, '2024-09-16 09:00:00', '2024-09-16 08:00:00', 'Rome', 'Paris', 'Delta Air Lines', '200', '2 Hours', 3000, '', '', '', 20, ''),
(17, 1, '2024-09-17 11:00:00', '2024-09-17 10:00:00', 'Berlin', 'Paris', 'Emirates', '350', '2.5 Hours', 3200, '', '', '', 20, ''),
(18, 1, '2024-09-18 13:00:00', '2024-09-18 12:00:00', 'Sydney', 'Paris', 'Qatar Airways', '180', '4 Hours', 3400, '', '', '', 20, ''),
(19, 1, '2024-09-19 15:00:00', '2024-09-19 14:00:00', 'Tokyo', 'Paris', 'Singapore Airlines', '250', '7 Hours', 3500, '', '', '', 20, ''),
(20, 1, '2024-09-20 17:00:00', '2024-09-20 16:00:00', 'Dubai', 'Paris', 'British Airways', '300', '10 Hours', 3600, '', '', '', 20, ''),
(21, 1, '2024-09-21 19:00:00', '2024-09-21 18:00:00', 'Hong Kong', 'Paris', 'Lufthansa', '240', '12 Hours', 3700, '', '', '', 20, ''),
(22, 1, '2024-09-22 21:00:00', '2024-09-22 20:00:00', 'Toronto', 'Paris', 'United Airlines', '220', '8 Hours', 3800, '', '', '', 20, ''),
(23, 1, '2024-09-23 23:00:00', '2024-09-23 22:00:00', 'Amsterdam', 'Paris', 'Air France', '260', '2 Hours', 2900, '', '', '', 20, ''),
(24, 1, '2024-09-24 09:00:00', '2024-09-24 08:00:00', 'Los Angeles', 'Paris', 'Cathay Pacific', '230', '11 Hours', 3900, '', '', '', 20, ''),
(25, 1, '2024-09-25 11:00:00', '2024-09-25 10:00:00', 'Istanbul', 'Paris', 'KLM Royal Dutch Airlines', '210', '3 Hours', 3000, '', '', '', 20, ''),
(26, 1, '2024-09-26 13:00:00', '2024-09-26 12:00:00', 'São Paulo', 'Paris', 'American Airlines', '280', '10 Hours', 3200, '', '', '', 20, ''),
(27, 1, '2024-09-27 15:00:00', '2024-09-27 14:00:00', 'Toronto', 'Sydney', 'Southwest Airlines', '190', '15 Hours', 3300, '', '', '', 20, ''),
(28, 1, '2024-09-28 17:00:00', '2024-09-28 16:00:00', 'Los Angeles', 'Sydney', 'Turkish Airlines', '270', '20 Hours', 3400, '', '', '', 20, ''),
(29, 1, '2024-09-29 19:00:00', '2024-09-29 18:00:00', 'Dubai', 'Sydney', 'Swiss International Air Lines', '250', '17 Hours', 3500, '', '', '', 20, ''),
(30, 1, '2024-09-30 21:00:00', '2024-09-30 20:00:00', 'Singapore', 'Sydney', 'Japan Airlines', '240', '19 Hours', 3600, '', '', '', 20, ''),
(31, 1, '2024-10-01 23:00:00', '2024-10-01 22:00:00', 'Tokyo', 'Sydney', 'Delta Air Lines', '200', '8 Hours', 3700, '', '', '', 20, ''),
(32, 1, '2024-10-02 01:00:00', '2024-10-02 00:00:00', 'Paris', 'Tokyo', 'Emirates', '350', '14 Hours', 3800, '', '', '', 20, ''),
(33, 1, '2024-10-03 03:00:00', '2024-10-03 02:00:00', 'Rome', 'Tokyo', 'Qatar Airways', '180', '16 Hours', 3900, '', '', '', 20, ''),
(34, 1, '2024-10-04 05:00:00', '2024-10-04 04:00:00', 'Berlin', 'Tokyo', 'Singapore Airlines', '250', '11 Hours', 4000, '', '', '', 20, ''),
(35, 1, '2024-10-05 07:00:00', '2024-10-05 06:00:00', 'Sydney', 'Tokyo', 'British Airways', '300', '14 Hours', 4100, '', '', '', 20, ''),
(36, 1, '2024-10-06 09:00:00', '2024-10-06 08:00:00', 'Dubai', 'Tokyo', 'Lufthansa', '240', '12 Hours', 4200, '', '', '', 20, ''),
(37, 1, '2024-10-07 11:00:00', '2024-10-07 10:00:00', 'Hong Kong', 'Tokyo', 'United Airlines', '220', '6 Hours', 4300, '', '', '', 20, ''),
(38, 1, '2024-10-08 13:00:00', '2024-10-08 12:00:00', 'Istanbul', 'Tokyo', 'Air France', '260', '7 Hours', 4400, '', '', '', 20, ''),
(39, 1, '2024-10-09 15:00:00', '2024-10-09 14:00:00', 'Toronto', 'Tokyo', 'Cathay Pacific', '230', '14 Hours', 4500, '', '', '', 20, ''),
(40, 1, '2024-10-10 17:00:00', '2024-10-10 16:00:00', 'Los Angeles', 'Tokyo', 'KLM Royal Dutch Airlines', '210', '10 Hours', 4600, '', '', '', 20, ''),
(41, 1, '2024-10-11 19:00:00', '2024-10-11 18:00:00', 'São Paulo', 'Tokyo', 'American Airlines', '280', '13 Hours', 4700, '', '', '', 20, ''),
(42, 1, '2024-10-12 21:00:00', '2024-10-12 20:00:00', 'London', 'Sydney', 'Southwest Airlines', '190', '21 Hours', 4800, '', '', '', 20, ''),
(43, 1, '2024-10-13 23:00:00', '2024-10-13 22:00:00', 'Amsterdam', 'Sydney', 'Turkish Airlines', '270', '22 Hours', 4900, '', '', '', 20, ''),
(44, 1, '2024-10-14 01:00:00', '2024-10-14 00:00:00', 'New York', 'Sydney', 'Swiss International Air Lines', '250', '24 Hours', 5000, '', '', '', 20, ''),
(45, 1, '2024-10-15 03:00:00', '2024-10-15 02:00:00', 'Paris', 'Sydney', 'Japan Airlines', '240', '20 Hours', 5100, '', '', '', 20, ''),
(46, 1, '2024-10-16 05:00:00', '2024-10-16 04:00:00', 'Tokyo', 'Los Angeles', 'Delta Air Lines', '200', '11 Hours', 5200, '', '', '', 20, ''),
(47, 1, '2024-10-17 07:00:00', '2024-10-17 06:00:00', 'Sydney', 'Los Angeles', 'Emirates', '350', '12 Hours', 5300, '', '', '', 20, ''),
(48, 1, '2024-10-18 09:00:00', '2024-10-18 08:00:00', 'London', 'Los Angeles', 'Qatar Airways', '180', '10 Hours', 5400, '', '', '', 20, ''),
(49, 1, '2024-10-19 11:00:00', '2024-10-19 10:00:00', 'Istanbul', 'Los Angeles', 'Singapore Airlines', '250', '13 Hours', 5500, '', '', '', 20, ''),
(50, 1, '2024-10-20 13:00:00', '2024-10-20 12:00:00', 'Dubai', 'Los Angeles', 'British Airways', '300', '14 Hours', 5600, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 5, 5, '9123564789', '1997-06-23 00:00:00', 'Mark', 'D', 'Cooper'),
(2, 5, 2, '9123654789', '1997-06-23 00:00:00', 'Mark', 'D', 'Cooper'),
(4, 5, 2, '9123564879', '1997-10-14 00:00:00', 'Jane ', 'C', 'Cooper'),
(5, 5, 2, '9654123897', '1990-07-15 00:00:00', 'Mike', 'C', 'Williams');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1234321211112222', 5, 5, '06/27', 2500),
('1234654456455', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('4616182753905953', 5, 2, '06/27', 3500),
('111112333311', 5, 2, '01/25', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 5, '22A', 8000, 'E'),
(2, 2, 2, 5, '21A', 12000, 'E'),
(3, 3, 3, 5, '22B', 15000, 'E'),
(4, 4, 4, 5, '22C', 9000, 'E'),
(5, 5, 5, 5, '23A', 9500, 'E'),
(6, 6, 6, 5, '23B', 11000, 'E'),
(7, 7, 7, 5, '23C', 13000, 'E'),
(8, 8, 8, 5, '24A', 14000, 'E'),
(9, 9, 9, 5, '24B', 9500, 'E'),
(10, 10, 10, 5, '24C', 4000, 'E'),
(11, 11, 11, 5, '25A', 8000, 'E'),
(12, 12, 12, 5, '25B', 8500, 'E'),
(13, 13, 13, 5, '25C', 6000, 'E'),
(14, 14, 14, 5, '26A', 10000, 'E'),
(15, 15, 15, 5, '26B', 8000, 'E'),
-- Continue adding 35 more tickets with different flight IDs
(16, 16, 16, 5, '27A', 3000, 'E'),
(17, 17, 17, 5, '27B', 3200, 'E'),
(18, 18, 18, 5, '28A', 3400, 'E'),
(19, 19, 19, 5, '28B', 3500, 'E'),
(20, 20, 20, 5, '29A', 3600, 'E'),
(21, 21, 21, 5, '29B', 3700, 'E'),
(22, 22, 22, 5, '30A', 3800, 'E'),
(23, 23, 23, 5, '30B', 3900, 'E'),
(24, 24, 24, 5, '31A', 4000, 'E'),
(25, 25, 25, 5, '31B', 4100, 'E'),
(26, 26, 26, 5, '32A', 4200, 'E'),
(27, 27, 27, 5, '32B', 4300, 'E'),
(28, 28, 28, 5, '33A', 4400, 'E'),
(29, 29, 29, 5, '33B', 4500, 'E'),
(30, 30, 30, 5, '34A', 4600, 'E'),
(31, 31, 31, 5, '34B', 4700, 'E'),
(32, 32, 32, 5, '35A', 4800, 'E'),
(33, 33, 33, 5, '35B', 4900, 'E'),
(34, 34, 34, 5, '36A', 5000, 'E'),
(35, 35, 35, 5, '36B', 5100, 'E'),
(36, 36, 36, 5, '37A', 5200, 'E'),
(37, 37, 37, 5, '37B', 5300, 'E'),
(38, 38, 38, 5, '38A', 5400, 'E'),
(39, 39, 39, 5, '38B', 5500, 'E'),
(40, 40, 40, 5, '39A', 5600, 'E'),
(41, 41, 41, 5, '39B', 5700, 'E'),
(42, 42, 42, 5, '40A', 5800, 'E'),
(43, 43, 43, 5, '40B', 5900, 'E'),
(44, 44, 44, 5, '41A', 6000, 'E'),
(45, 45, 45, 5, '41B', 6100, 'E'),
(46, 46, 46, 5, '42A', 6200, 'E'),
(47, 47, 47, 5, '42B', 6300, 'E'),
(48, 48, 48, 5, '43A', 6400, 'E'),
(49, 49, 49, 5, '43B', 6500, 'E'),
(50, 50, 50, 5, '44A', 6600, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(5, 'mcooper', 'mcooper@mail.com', '$2y$10$.FUiqi1YNqPBTxstbratouNEux7TsPPZ8/YOrV.Bd2JbVFD95G1nS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;
