-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2020 at 10:29 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phx`
--

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` int(4) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `ship_time` time NOT NULL,
  `truckloads` varchar(100) NOT NULL,
  `plt_qty` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_num`, `customer`, `carrier`, `city`, `status`, `ship_time`, `truckloads`, `plt_qty`, `created_on`, `IsDeleted`) VALUES
(2, 45512, 'DMTD-5688', 'UPS', 'Atlanta, GA', 'NOT STAGED', '07:00:00', 'LTL', '12 plt', '2020-07-24 13:22:30', b'0'),
(3, 45642, 'FMH-AR', 'Worldwide Express', 'Jonesboro, GA', 'STAGED', '09:00:00', 'Truck', '3 plt', '2020-07-24 13:22:30', b'0'),
(4, 45730, 'LSW', 'Call When Ready', 'Corsicana, TX', 'NOT STAGED', '00:00:00', 'LTL', '5 plt', '2020-07-24 13:22:30', b'0'),
(5, 45918, 'QT-FL', 'American Group', 'Plant City, FL', 'NOT STAGED', '00:00:00', 'Truck', '1 plt', '2020-07-24 13:22:30', b'0'),
(6, 45931, 'TC', 'CH Robinson', 'Ocala, FL', 'SHIPPED', '00:00:00', 'Truck', '6 plt', '2020-07-24 13:22:30', b'0'),
(7, 45942, 'MT-AL', 'Freight Shakers', 'Birmingham, AL', 'STAGED', '02:30:00', 'Truck', '7 plt', '2020-07-24 13:22:30', b'0'),
(8, 45988, 'PJ-MX', 'CPU', 'Lauderale, FL', 'NOT STAGED', '00:00:00', 'Truck', '8 plt', '2020-07-22 13:22:30', b'0'),
(9, 46034, 'DM-TN', 'American Group', 'Winchester, VA', 'NOT STAGED', '00:00:00', 'Truck', '11 plt', '2020-07-22 13:22:30', b'0'),
(10, 46063, 'ATA-TX01', 'Transplace', 'Lindale, TX', 'SHIPPED', '05:00:00', 'Truck', '2 plt', '2020-07-22 13:22:30', b'0'),
(11, 46070, 'BTT', 'FedEx Economy', 'Mount Pleasant, SC', 'NOT STAGED', '12:00:00', 'LTL', '16 plt', '2020-07-22 13:22:30', b'0'),
(12, 46078, 'QTCW-TX', 'Coyote', 'Azle, TX', 'STAGED', '12:00:00', 'Truck', '2 plt', '2020-07-22 13:22:30', b'0'),
(13, 46089, 'BTT-GA', 'FedEx Economy', 'Cordele, GA', 'NOT STAGED', '07:00:00', 'LTL', '12 plt', '2020-07-24 13:22:30', b'0'),
(14, 46144, 'ES', 'Epes/Freight Shakers', 'Monroe, GA', 'SHIPPED', '05:00:00', 'Truck', '4 plt', '2020-07-22 13:22:30', b'0'),
(15, 46187, 'CB-GA', 'Conway/XPO Logistics', 'Suwanee, GA', 'STAGED', '02:00:00', 'Truck', '21 plt', '2020-07-24 13:22:30', b'0'),
(16, 47000, 'FMH-AR', 'Worldwide Express', 'Jonesboro, GA', 'NOT STAGED', '07:00:00', 'Truck', '27 plt', '2020-07-24 13:22:30', b'0'),
(18, 199989, 'CB-GA', 'Conway', 'Clearwater, FL', 'STAGED', '12:00:00', 'Truck', '2 plt', '2020-07-24 13:22:30', b'0'),
(21, 89202, 'FMH-AR', 'UPS', 'Jonesboro, GA', 'NOT STAGED', '02:30:00', 'Truck', '11 plt', '2020-07-22 13:22:30', b'0'),
(22, 28989, 'BTT', 'CPU', 'Salt Lake, UT', 'SHIPPED', '12:00:00', 'Truck', '21 plt', '2020-07-22 13:22:30', b'0'),
(23, 54000, 'BTT-GA', 'UPS', 'Springfield, MO', 'SHIPPED', '11:00:00', 'Truck', '6 plt', '2020-07-24 13:22:30', b'0'),
(24, 54002, 'RN', 'SET Logistics', 'Houston, TX', 'SHIPPED', '09:00:00', 'Truck', '4 plt', '2020-07-24 13:22:30', b'0'),
(25, 54004, 'FMH-AR', 'Call When Ready', 'Jonesboro, GA', 'STAGED', '02:30:00', 'LTL', '9 plt', '2020-07-24 13:22:30', b'0'),
(26, 54006, 'UNARCO', 'Conway/XPO Logistics', 'Springfield, TN', 'STAGED', '06:00:00', 'Truck', '22 plt', '2020-07-24 13:22:30', b'0'),
(27, 54010, 'ATA-TX01', 'Transplace', 'Sumner, TX', 'SHIPPED', '05:00:00', 'Truck', '26 plt', '2020-07-24 13:22:30', b'0'),
(28, 54012, 'CB-GA', 'American Group', 'Atlanta, GA', 'STAGED', '11:00:00', 'Truck', '31 plt', '2020-07-22 13:22:30', b'0'),
(29, 54016, 'UNARCO', 'FedEx', 'Phoenix, AZ', 'STAGED', '07:00:00', 'Truck', '18 plt', '2020-07-24 13:22:30', b'0'),
(30, 54018, 'LSW', 'Call When Ready', 'Mount Pleasant, TX', 'STAGED', '07:00:00', 'LTL', '24 plt', '2020-07-24 13:22:30', b'0'),
(31, 54020, 'ATA-TX01', 'Transplace', 'Lindale, TX', 'SHIPPED', '05:00:00', 'Truck', '24', '2020-07-24 13:22:30', b'0'),
(32, 54022, 'BTT-GA', 'Call When Ready', 'Lithonia, GA', 'STAGED', '02:30:00', 'LTL', '16 plt', '2020-07-24 13:22:30', b'0'),
(33, 54024, 'FMH-AR', 'FedEx Economy', 'Lewisville, GA', 'STAGED', '09:00:00', 'Truck', '22 plt', '2020-07-24 13:22:30', b'0'),
(34, 46739, 'EZ-WA / EZ Loader', 'Conway/XPO', 'Spokane, WA', 'SHIPPED', '02:00:00', 'LTL', '1 plt', '2020-07-22 13:37:46', b'0'),
(35, 46548, 'Storage Increase', 'TBD', 'Lithonia, GA', 'STAGED', '11:00:00', 'LTL', '1 plt', '2020-07-22 14:02:48', b'0'),
(36, 46393, 'DMTD-5600 / Dexter Marine', 'CPU', 'Atlanta, GA', 'SHIPPED', '11:00:00', 'Truck', '21 plt', '2020-07-22 14:09:45', b'0'),
(37, 46455, 'RN / Redneck Trl', 'SET Log', 'Springfield, MO', 'STAGED', '02:00:00', 'Truck', '1 plt', '2020-07-22 14:14:03', b'0'),
(38, 46387, 'RN / Redneck Trl', 'SET Log', 'Springfield, MO', 'STAGED', '11:00:00', 'Truck', '20 plt', '2020-07-22 14:14:52', b'0'),
(39, 46470, 'TT-UT', 'eShipping', 'West Valley City, UT', 'NOT STAGED', '11:00:00', 'Truck', '2 plt', '2020-07-22 14:21:39', b'0'),
(40, 46181, 'MT-FL / Magic Tilt', 'AG', 'Clearwater, FL', 'SHIPPED', '09:00:00', 'LTL', '3 plt', '2020-07-22 15:54:53', b'0'),
(41, 46272, 'SPK-CS / Heartland Steel', 'Coyote', 'Marysville, MI', 'NOT STAGED', '10:00:00', 'Truck', '?', '2020-07-24 13:52:32', b'0'),
(42, 46530, 'SPK-CSC / Heartland Steel', 'Coyote', 'Marysville, MI', 'STAGED', '10:00:00', 'Truck', '?', '2020-07-24 13:53:22', b'0'),
(43, 45732, 'HMH-LA / Hannibal Material', 'Coyote Rail', 'Los Angeles', 'SHIPPED', '11:00:00', 'Truck', '16 plt', '2020-07-24 14:02:21', b'0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
