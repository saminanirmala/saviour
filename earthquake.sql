-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2014 at 08:02 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `earthquake`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datas`
--

CREATE TABLE IF NOT EXISTS `tbl_datas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lon` varchar(100) NOT NULL,
  `magnitude` varchar(100) NOT NULL,
  `epicenter` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=386 ;

--
-- Dumping data for table `tbl_datas`
--

INSERT INTO `tbl_datas` (`id`, `date`, `time`, `lat`, `lon`, `magnitude`, `epicenter`, `year`) VALUES
(3, '2014/12/18', '15:32:13.60', '27.73', '86.52', '5.9', 'Solukhumbu', '2014'),
(4, '2014/11/25', '15:49:03.94', '28.25', '84.94', '4.5', 'Gorkha', '2014'),
(5, '2014/09/17', '10:29:13.45', '27.76', '88.05', '4.5', 'Taplejung', '2014'),
(6, '2014/08/03', '05:57:23.99', '29.45', '85.64', '5.9', 'Tibet', '2014'),
(7, '2014/07/07', '16:37:13.24', '29.73', '80.93', '4.2', 'Bajhang-Darchula border', '2014'),
(8, '2014/07/04', '05:58:43.39', '27.83', '87.91', '4.6', 'Taplejung', '2014'),
(9, '2014/05/25', '02:46:47.32', '28.23', '84.09', '4.1', 'Kaski', '2014'),
(10, '2014/05/20', '18:36:02.30', '28.32', '84.73', '4.3', 'Gorkha', '2014'),
(11, '2014/04/23', '07:14:10.95', '27.30', '87.62', '4.0', 'Taplejung', '2014'),
(12, '2014/04/11', '17:22:12.69', '29.29', '81.26', '4.2', 'Achham', '2014'),
(13, '2014/03/31', '07:51:41.19', '30.11', '81.93', '4.4', 'Humla', '2014'),
(14, '2013/11/03', '06:47:21.47', '29.56', '81.68', '4.3', 'Bajura', '2013'),
(15, '2013/10/28', '01:37:44.72', '27.36', '87.37', '4.3', 'Sankhuwasava', '2013'),
(16, '2013/10/13', '21:43:23.16', '30.08', '81.74', '4.5', 'Humla', '2013'),
(17, '2013/10/03', '06:12:41.70', '27.14', '88.51', '5.7', 'Sikkim', '2013'),
(18, '2013/09/22', '14:35:58.59', '30.25', '81.55', '4.4', 'Humla', '2013'),
(19, '2013/09/12', '04:29:12.67', '26.96', '87.34', '4.5', 'Dhankuta', '2013'),
(20, '2013/08/30', '17:48:43.30', '28.43', '86.03', '6.0', 'Tibet', '2013'),
(21, '2013/06/28', '11:40:46.91', '28.76', '82.40', '5.5', 'Rukum', '2013'),
(22, '2013/06/27', '06:20:57.81', '30.05', '80.80', '4.4', 'Darchula', '2013'),
(23, '2013/06/26', '22:22:13.40', '26.85', '85.96', '4.4', 'Dhanusha', '2013'),
(24, '2013/06/09', '16:11:21.88', '27.31', '86.70', '4.2', 'Northern Khotang', '2013'),
(25, '2013/05/31', '06:04:33.33', '29.74', '81.60', '4.5', 'Northern Bajura', '2013'),
(26, '2013/05/26', '17:38:56.31', '27.72', '85.91', '4.2', 'Sindhupalchok', '2013'),
(27, '2013/05/14', '09:59:19.69', '29.65', '81.98', '4.5', 'Western Mugu', '2013'),
(28, '2013/05/14', '03:18:25.49', '29.68', '82.00', '4.4', 'Mugu', '2013'),
(29, '2013/05/14', '03:13:03.35', '29.56', '82.00', '4.3', 'Mugu', '2013'),
(30, '2013/04/28', '18:28:12.38', '29.87', '81.26', '4.9', 'Northern Bajhang', '2013'),
(31, '2013/03/17', '11:59:18.91', '26.74', '86.08', '4.2', 'Dhanusha', '2013'),
(32, '2013/03/06', '16:49:49.77', '28.57', '82.27', '5.4', 'Rukum', '2013'),
(33, '2013/02/22', '02:41:00.19', '28.39', '83.18', '4.1', 'Baglung', '2013'),
(34, '2013/02/07', '01:08:45.05', '29.42', '81.05', '4.0', 'Bajhang', '2013'),
(35, '2013/01/18', '20:59:49.86', '29.48', '81.26', '4.5', 'Bajhang', '2013'),
(36, '2013/01/13', '17:35:56.14', '26.84', '86.22', '4.0', 'Siraha', '2013'),
(37, '2013/01/09', '07:44:20.07', '29.82', '81.70', '5.5', 'Northern part of Bajura', '2013'),
(38, '2013/01/02', '17:42:17.51', '29.41', '81.00', '4.7', 'Bajhang and Doti border', '2013'),
(39, '2012/12/22', '6:05:16.19', '28.27', '82.84', '4.5', 'Rolpa and Pyuthan border', '2012'),
(40, '2012/12/04', '03:01:10.52', '28.88', '82.34', '4.0', 'North East Jajarkot', '2012'),
(41, '2012/11/12', '12:42:23.98', '29.55', '81.31', '4.5', 'Bajhang', '2012'),
(42, '2012/11/11', '18:39:19.19', '29.51', '81.13', '5.6', 'Southern Bajhang', '2012'),
(43, '2012/10/22', '06:56:52.27', '27.95', '87.86', '4.5', 'Around Kanchanjunga', '2012'),
(44, '2012/09/17', '09:45:52.62', '28.59', '82.41', '4.4', 'Southern Rukum', '2012'),
(45, '2012/08/30', '14:11:15.16', '28.61', '82.43', '4.5', 'Southern Rukum', '2012'),
(46, '2012/08/29', '19:54:20.61', '28.40', '82.79', '4.3', 'Northern Rolpa', '2012'),
(47, '2012/08/28', '08:31:26.96', '28.73', '81.81', '4.4', 'Southeastern Dailekh ', '2012'),
(48, '2012/08/24', '03:55:53.92', '28.42', '82.75', '5.2', 'Rolpa-Rukum border region', '2012'),
(49, '2012/08/24', '00:17:13.74', '28.38', '82.66', '4.4', 'Rolpa', '2012'),
(50, '2012/08/23', '16:42:01.95', '28.39', '82.73', '4.4', 'Rolpa', '2012'),
(51, '2012/08/23', '16:30:23.69', '28.38', '82.84', '5.6', 'Rolpa - Rukum border region', '2012'),
(52, '2012/08/06', '01:53:55.90', '27.77', '88.13', '4.2', 'Northern Taplejung', '2012'),
(53, '2012/07/31', '12:05:14.62', '28.55', '82.37', '4.2', 'Southern Rukum', '2012'),
(54, '2012/07/31', '11:58:33.15', '28.53', '82.42', '4.8', 'Southern Rukum', '2012'),
(55, '2012/07/31', '11:50:56.23', '28.58', '82.48', '5.0', 'Southern Rukum', '2012'),
(56, '2012/07/28', '05:48:07.90', '30.12', '80.54', '5.0', 'India (close to Darchula)', '2012'),
(57, '2012/07/11', '17:23:28.78', '29.43', '81.03', '4.9', 'Southern Bajhang', '2012'),
(58, '2012/07/01', '07:54:26.75', '27.27', '88.05', '4.0', 'Panchthar - Sikkim border', '2012'),
(59, '2012/06/15', '16:15:02.86', '28.99', '81.58', '4.2', 'Dailekh', '2012'),
(60, '2012/06/11', '04:35:59.21', '27.25', '88.00', '4.5', 'Panchthar - Sikkim border', '2012'),
(61, '2012/06/09', '07:54:10.02', '28.32', '84.17', '5.1', 'Kaski', '2012'),
(62, '2012/05/30', '09:34:35.64', '27.31', '87.88', '4.2', 'Taplejung', '2012'),
(63, '2012/04/17', '23:13:59.20', '28.50', '82.06', '4.2', 'Salyan', '2012'),
(64, '2012/04/11', '02:52:49.77', '29.55', '81.24', '4.3', 'Bajhang', '2012'),
(65, '2012/03/27', '23:40:15.27', '26.12', '87.87', '5.2', 'Jhapa-India Border Region', '2012'),
(66, '2012/03/19', '20:36:21.55', '28.70', '82.02', '4.7', 'Karkigaun-Jajarkot', '2012'),
(67, '2012/02/26', '23:08:45.98', '29.86', '81.05', '4.9', 'Bajhang-Darchula border', '2012'),
(68, '2012/02/26', '22:56:59.05', '29.71', '81.02', '4.4', 'Bajhang-Darchula border', '2012'),
(69, '2012/02/14', '13:48:40.79', '27.33', '88.03', '4.4', 'Taplejung', '2012'),
(70, '2012/02/14', '13:41:19.38', '27.38', '88.11', '4.5', 'Taplejung-Sikkim Border', '2012'),
(71, '2012/02/05', '20:06:02.05', '27.25', '88.07', '4.0', 'Panchthar', '2012'),
(72, '2012/01/24', '04:07:22.71', '26.84', '86.43', '4.0', 'Siraha', '2012'),
(73, '2012/01/19', '00:46:50.25', '29.73', '81.91', '4.6', 'Humla', '2012'),
(74, '2012/01/18', '11:16:29.91', '26.63', '86.40', '4.5', 'Siraha', '2012'),
(75, '2012/01/11', '08:59:46.71', '28.89', '81.89', '4.2', 'Dailekh', '2012'),
(76, '2011/12/30', '02:10:06.59', '29.62', '81.53', '4.0', 'Bajura', '2011'),
(77, '2011/12/18', '21:35:26.83', '27.73', '88.16', '4.6', 'Taplejung', '2011'),
(78, '2011/12/14', '20:20:57.97', '27.72', '88.09', '4.9', 'Taplejung', '2011'),
(79, '2011/12/09', '22:56:59.74', '27.83', '88.13', '4.2', 'Taplejung', '2011'),
(80, '2011/12/08', '17:40:36.91', '27.97', '82.86', '4.0', 'Pyuthan', '2011'),
(81, '2011/12/02', '', '28.05', '85.34', '4.2', 'Rasuwa', '2011'),
(82, '2011/11/23', '', '28.91', '81.68', '4.2', 'Dailekh', '2011'),
(83, '2011/11/19', '', '27.70', '86.10', '4.1', 'Dolakha', '2011'),
(84, '2011/11/13', '', '28.20', '84.93', '5.0', 'Gorkha', '2011'),
(85, '2011/11/08', '', '27.94', '85.55', '4.1', 'Sindhupalchowk', '2011'),
(86, '2011/11/04', '', '28.34', '83.66', '4.0', 'Parbat', '2011'),
(87, '2011/10/02', '', '29.55', '81.68', '4.2', 'Bajura', '2011'),
(88, '2011/10/01', '', '30.16', '81.81', '4.7', 'Humla', '2011'),
(89, '2011/09/18', '', '27.78', '88.32', '6.8', 'Taplejung-Sikkim Border', '2011'),
(90, '2011/08/27', '', '26.94', '86.60', '5.0', 'Udayapur', '2011'),
(91, '2011/08/25', '', '28.15', '82.53', '4.4', 'Rolpa', '2011'),
(92, '2011/08/22', '', '28.29', '83.96', '4.0', 'Kaski', '2011'),
(93, '2011/08/19', '', '29.70', '81.34', '4.9', 'Bajhang', '2011'),
(94, '2011/08/18', '', '28.21', '84.31', '4.0', 'Lamjung', '2011'),
(95, '2011/08/15', '', '27.44', '86.27', '5.0', 'Ramechhap', '2011'),
(96, '2011/08/09', '', '29.90', '81.31', '4.3', 'Bajhang', '2011'),
(97, '2011/08/02', '', '27.35', '86.35', '4.0', 'Khotang', '2011'),
(98, '2011/07/29', '', '27.19', '86.76', '4.2', 'Khotang', '2011'),
(99, '2011/07/15', '', '27.28', '87.30', '4.5', 'Sankhuwasabha', '2011'),
(100, '2011/06/18', '', '27.83', '87.35', '4.3', 'Sankhuwasabha', '2011'),
(101, '2011/06/17', '', '30.24', '81.48', '4.2', 'Humla', '2011'),
(102, '2011/06/11', '', '28.40', '82.55', '4.1', 'Rolpa', '2011'),
(103, '2011/06/11', '', '28.41', '82.66', '4.2', 'Rolpa', '2011'),
(104, '2011/06/03', '', '27.60', '88.03', '5.2', 'Taplejung', '2011'),
(105, '2011/04/07', '', '27.93', '85.61', '4.1', 'Sindhupalchowk', '2011'),
(106, '2011/04/05', '', '29.74', '80.37', '4.1', 'Darchula', '2011'),
(107, '2011/04/04', '', '30.00', '80.81', '4.1', 'Darchula', '2011'),
(108, '2011/04/04', '', '29.92', '80.54', '5.7', 'Darchula', '2011'),
(109, '2011/03/22', '', '28.35', '83.96', '4.0', 'Kaski', '2011'),
(110, '2011/03/22', '', '28.11', '82.74', '4.2', 'Pyuthan', '2011'),
(111, '2011/03/12', '', '28.31', '83.78', '4.4', 'Kaski', '2011'),
(112, '2011/03/11', '', '28.31', '83.8', '4.3', 'Kaski', '2011'),
(113, '2011/03/10', '', '28.02', '85.24', '4.3', 'Rasuwa', '2011'),
(114, '2011/02/22', '', '27.57', '87.01', '4.2', 'Sankhuwasabha', '2011'),
(115, '2011/02/13', '', '27.47', '87.01', '4.7', 'Bhojpur-Sankhuwasabha border', '2011'),
(116, '2011/01/18', '', '30.03', '81.97', '4.1', 'Humla', '2011'),
(117, '2011/01/18', '', '27.80', '85.94', '4.3', 'Sindhupalchowk', '2011'),
(118, '2010/12/18', '', '28.18', '84.79', '4.1', 'Gorkha', '2010'),
(119, '2010/12/05', '', '29.57', '81.699', '4.2', 'Bajura', '2010'),
(120, '2010/11/30', '', '26.93', '85.79', '4.4', 'Mahottari', '2010'),
(121, '2010/11/25', '', '28.38', '82.32', '4.5', 'Salyan', '2010'),
(122, '2010/11/25', '', '28.44', '83.17', '4.7', 'Baglung', '2010'),
(123, '2010/10/17', '', '28.64', '85.71', '5.0', 'Tibet', '2010'),
(124, '2010/09/01', '', '28.23', '84.37', '4.0', 'Lamjung', '2010'),
(125, '2010/06/13', '', '29.4', '81.38', '4.5', 'Bajura', '2010'),
(126, '2010/06/13', '', '29.6', '81.65', '4.8', 'Bajura', '2010'),
(127, '2010/06/13', '', '28.01', '86.77', '4.0', 'Solukhumbu', '2010'),
(128, '2010/05/13', '', '28.30', '84.51', '4.2', 'Lamjung', '2010'),
(129, '2010/04/30', '', '27.75', '86.36', '  4.0', 'Dolakha', '2010'),
(130, '2010/04/14', '', '28.31', '83.09', '4.2', 'Baglung', '2010'),
(131, '2010/04/13', '', '29.37', '81.34', '4.5', 'Bajura', '2010'),
(132, '2010/03/01', '', '29.76', '83.11', '4.3', 'Bajura', '2010'),
(133, '2010/02/28', '', '28.40', '81.52', '4.1', 'Baglung', '2010'),
(134, '2010/02/25', '', '29.78', '81.52', '4.6', 'Bajhang', '2010'),
(135, '2010/02/17', '', '26.79', '86.08', '4.1', 'Dhanusa', '2010'),
(136, '2010/01/18', '', '28.37', '83.97', '4.1', 'Kaski', '2010'),
(137, '2009/12/16', '', '29.60', '81.51', '4.6', 'Bajura', '2009'),
(138, '2009/12/15', '', '28.28', '84.40', '4.1', 'Lamjung', '2009'),
(139, '2009/11/22', '', '29.02', '82.15', '4.5', 'Jajarkot', '2009'),
(140, '2009/11/08', '', '30.11', '81.91', '4.3', 'Humla', '2009'),
(141, '2009/11/02', '', '27.87', '87.94', '4.0', 'Taplejung', '2009'),
(142, '2009/11/01', '', '30.10', '81.81', '4.5', 'Humla', '2009'),
(143, '2009/10/29', '', '28.73', '83.11', '4.1', 'Rukum', '2009'),
(144, '2009/09/26', '', '29.81', '82.05', '4.3', 'Humla', '2009'),
(145, '2009/08/02', '', '28.12', '85.18', '4.0', 'Rasuwa', '2009'),
(146, '2009/07/12', '', '27.71', '86.36', '4.3', 'Dolakha', '2009'),
(147, '2009/05/14', '', '27.43', '87.35', '4.2', 'Sankhuwasava', '2009'),
(148, '2009/05/14', '', '27.48', '87.36', '4.6', 'Sankhuwasava', '2009'),
(149, '2009/04/13', '', '28.25', '84.54', '4.3', 'Lamjung', '2009'),
(150, '2009/04/13', '', '28.30', '84.55', '4.0', 'Lamjung', '2009'),
(151, '2009/03/12', '', '28.43', '84.42', '4.1', 'Lamjung', '2009'),
(152, '2009/03/08', '', '27.41', '87.80', '4.5', 'Taplejung', '2009'),
(153, '2009/01/23', '', '29.05', '81.40', '4.2', 'Achham', '2009'),
(154, '2009/01/10', '', '27.90', '88.04', '4.2', 'Taplejung', '2009'),
(155, '2008/12/29', '', '30.13', '82.03', '4.0', 'Humla', '2008'),
(156, '2008/12/26', '', '30.09', '81.90', '4.5', 'Humla', '2008'),
(157, '2008/12/23', '', '28.19', '84.39', '4.4', 'Lamjung', '2008'),
(158, '2008/12/19', '', 'Â 30.10', '81.91', '4.4', 'Humla', '2008'),
(159, '2008/12/08', '', 'Â 30.15', '81.86', '6.0', 'Humla', '2008'),
(160, '2008/12/02', '', '27.32', '  87.99', '5.4', 'Taplejung', '2008'),
(161, '2008/12/02', '', '27.30', '  87.99', '4.0', 'Taplejung', '2008'),
(162, '2008/12/02', '', '27.29', '87.92', '4.3', 'Taplejung', '2008'),
(163, '2008/12/02', '', '27.34', '87.92', '4.1', 'Taplejung', '2008'),
(164, '2008/12/02', '', '27.30', '  88.03', '4.0', 'Taplejung', '2008'),
(165, '2008/12/01', '', '28.18', '  85.29', '4.8', 'Rasuwa', '2008'),
(166, '2008/10/07', '', '27.47', '  87.71', '4.5', 'Taplejung', '2008'),
(167, '2008/09/10', '', '28.40', '  83.01', '4.1', 'Baglung', '2008'),
(168, '2008/08/02', '', '28.18', '85.29', '4.4', 'Bajura', '2008'),
(169, '2008/06/20', '', '27.98', '85.73', '4.8', 'Sindhupalchowk', '2008'),
(170, '2008/06/15', '', '29.73', '80.96', '5.0', 'Darchula', '2008'),
(171, '2008/06/02', '', '27.80', '85.91', '4.1', 'Sindhupalchowk', '2008'),
(172, '2008/05/20', '', '28.33', '83.33', '4.3', 'Baglung', '2008'),
(173, '2008/05/08', '', '27.50', '87.52', '4.2', 'Taplejung', '2008'),
(174, '2008/03/17', '', '29.76', '81.53', '4.6', 'Bajhang-Bajura border', '2008'),
(175, '2008/03/02', '', '29.69', '81.76', 'Â 4.4', 'Humla', '2008'),
(176, '2008/02/16', '', '26.80', '86.25', '4.2', 'Siraha', '2008'),
(177, '2008/02/14', '', '27.80', '86.53', '4.1', 'Taplejung', '2008'),
(178, '2008/01/15', '', '27.37', '86.53', '4.1', 'Okhaldhunga', '2008'),
(179, '2007/12/01', '', '28.05', '85.28', '4.1', 'Rasuwa', '2007'),
(180, '2007/11/05', '', '28.20', '84.45', '4.5', 'Lamjung', '2007'),
(181, '2007/10/29', '', '27.90', '85.45', '5.0', 'Nuwakot', '2007'),
(182, '2007/10/12', '', '27.75', '86.12', '4.0', 'Dolakha', '2007'),
(183, '2007/09/07', '', '28.05', '85.33', '4.2', 'Rasuwa', '2007'),
(184, '2007/09/07', '', '27.72', '86.26', '4.1', 'Dolakha', '2007'),
(185, '2007/08/11', '', '27.28', '87.90', '5.2', 'Taplejung', '2007'),
(186, '2007/08/06', '', '27.84', '85.69', '4.1', 'Sindhupalchowk', '2007'),
(187, '2007/08/03', '', '27.21', '87.97', '4.4', 'Panchthar', '2007'),
(188, '2007/08/03', '', '27.24', '87.02', '4.0', 'Bhojpur', '2007'),
(189, '2007/08/03', '', '27.20', '87.04', '4.3', 'Bhojpur', '2007'),
(190, '2007/08/03', '', '27.24', '87.03', '4.5', 'Bhojpur', '2007'),
(191, '2007/08/01', '', '29.49', '81.91', '4.6', 'Mugu', '2007'),
(192, '2007/07/30', '', '27.27', '87.02', '4.1', 'Bhojpur', '2007'),
(193, '2007/07/07', '', '28.08', '85.30', '4.0', 'Rasuwa', '2007'),
(194, '2007/06/17', '', '27.83', '84.91', '4.3', 'Dhading', '2007'),
(195, '2007/06/04', '', '27.44', '83.89', '4.2', 'Nepal-India Border', '2007'),
(196, '2007/05/16', '', '27.50', '88.08', '4.6', 'Nepal-India Border', '2007'),
(197, '2007/03/10', '', '29.47', '81.73', '4.5', 'Bajhang', '2007'),
(198, '2007/02/15', '', '29.83', '81.45', '5.0', 'Bajhang', '2007'),
(199, '2007/02/06', '', '28.36', '83.43', '4.2', 'Myagdi', '2007'),
(200, '2007/02/06', '', '28.35', '83.43', '4.1', 'Myagdi', '2007'),
(201, '2007/02/05', '', '30.10', '81.05', '4.2', 'Darchula', '2007'),
(202, '2006/11/11', '', '27.21', '87.63', '4.2', 'Tehrathum', '2006'),
(203, '2006/09/26', '', '30.10', '80.83', '4.5', 'Darchula', '2006'),
(204, '2006/09/19', '', '29.62', '81.54', '5.0', 'Bajura', '2006'),
(205, '2006/09/17', '', '26.98', '87.80', '4.2', 'Illam', '2006'),
(206, '2006/08/30', '', '29.05', '83.60', '4.3', 'Mustang', '2006'),
(207, '2006/08/15', '', '27.89', '85.70', '4.3', 'Sindhupalchowk', '2006'),
(208, '2006/05/05', '', '29.43', '81.26', '4.8', 'Bajhang', '2006'),
(209, '2006/04/04', '', '27.91', '85.83', '4.6', 'Sindhupalchowk', '2006'),
(210, '2006/02/19', '', '28.24', '83.89', '4.7', 'Baglung', '2006'),
(211, '2006/02/03', '', '27.18', '86.80', '5.4', 'Khotang', '2006'),
(212, '2005/11/06', '', '29.61', '82.02', '5.1', 'Mugu', '2005'),
(213, '2005/10/31', '', '28.65', '84.83', '4.5', 'Gorkha', '2005'),
(214, '2005/10/31', '', '29.64', '82.06', '5.1', 'Mugu', '2005'),
(215, '2005/10/29', '', '29.50', '81.88', '5.1', 'Mugu', '2005'),
(216, '2005/08/28', '', '27.31', '87.22', '5.3', 'Sankhuwasava', '2005'),
(217, '2005/08/08', '', '27.98', '85.51', '4.2', 'Sindhupalchowk', '2005'),
(218, '2005/07/27', '', '27.47', '68.88', '4.3', 'Solukhumbu', '2005'),
(219, '2005/06/14', '', '27.28', '87.89', '4.5', 'Tibet', '2005'),
(220, '2005/05/05', '', '27.69', '87.70', '4.1', 'Taplejung', '2005'),
(221, '2005/04/15', '', '27.92', '85.71', '4.1', 'Sindhupalchowk', '2005'),
(222, '2005/04/07', '', '29.35', '81.88', '4.2', 'Kalikot', '2005'),
(223, '2005/04/04', '', '28.54', '83.31', '4.1', 'Myagdi', '2005'),
(224, '2005/04/04', '', '28.56', '83.18', '4.1', 'Myagdi', '2005'),
(225, '2005/03/29', '', '28.11', '84.77', '4.4', 'Gorkha', '2005'),
(226, '2005/03/29', '', '28.14', '84.80', '4.1', 'Gorkha', '2005'),
(227, '2005/03/29', '', '28.04', '84.74', '4.0', 'Gorkha', '2005'),
(228, '2005/03/29', '', '28.15', '84.37', '4.0', 'Lamjung', '2005'),
(229, '2005/03/19', '', '28.25', '84.39', '5.4', 'Lamjung', '2005'),
(230, '2005/03/05', '', '28.27', '84.39', '5.0', 'Lamjung', '2005'),
(231, '2005/02/08', '', '27.76', '86.07', '5.0', 'Dolakha', '2005'),
(232, '2005/01/16', '', '29.68', '81.14', '5.0', 'Bajhang', '2005'),
(233, '2005/01/16', '', '29.81', '81.04', '4.5', 'Bajhang', '2005'),
(234, '2004/12/27', '', '27.76', '86.20', '4.2', 'Nagpa, Dolakaha', '2004'),
(235, '2004/12/26', '', '29.90', '81.63', '4.3', 'Sain, Bajura', '2004'),
(236, '2004/11/17', '', '28.26', '84.67', '4.1', 'Kharibot, Lamjung', '2004'),
(237, '2004/11/09', '', '28.77', '82.95', '4.4', 'RahalGaun/Rukum ', '2004'),
(238, '2004/10/05', '', '26.83', '86.55', '4.1', 'Simle, Udayapur', '2004'),
(239, '2004/09/12', '', '29.51', '81.84', '4.4', 'Shirkot, Mugu', '2004'),
(240, '2004/09/02', '', '27.87', '85.93', '4.2', 'Listikot, Sindhupalchowk', '2004'),
(241, '2004/08/22', '', '28.03', '85.24', '4.1', 'Kaseri, Rasuwa', '2004'),
(242, '2004/07/20', '', '27.96', '85.88', '4.5', 'Listikot, Sindhupalchok', '2004'),
(243, '2004/07/16', '', '28.32 ', '84.06', '4.6', 'Ghalegaun, Kaski', '2004'),
(244, '2004/05/29', '', '28.58', '89.97', '4.3', 'Niseldhar, Baglung', '2004'),
(245, '2004/05/29', '', '28.55', '82.96', '4.9', 'Niseldhar, Baglung', '2004'),
(246, '2004/05/29', '', '28.59', '82.98', '4.3', 'Niseldhar, Baglung', '2004'),
(247, '2004/03/31', '', '27.18', '87.63', '4.6', 'Isabun,Terathum', '2004'),
(248, '2004/03/17', '', '27.67', '87.82', '4.1', 'Amjilesa, Taplejung', '2004'),
(249, '2004/02/22 	', '', '29.32', '81.53', '4.1', 'Tolideval, Bajura', '2004'),
(250, '2004/02/18', '', '27.61', '87.80', '4.7', 'Amjilesa, Taplejung', '2004'),
(251, '2004/02/14', '', '29.67 ', '80.88', '4.3', 'Brahmajali, Bhajhang', '2004'),
(252, '2004/01/07', '', '28.07', '85.0', '4.0', 'Darkha, Dhading', '2004'),
(253, '2004/01/03', '', '27.76', '86.07', '4.5', 'Listikot, Sindhupalchok', '2004'),
(254, '2004/01/03', '', '27.87', '86.06', '5.5', 'Listikot, Sindhupalchok', '2004'),
(255, '2003/12/19', '', '27.06', '87.97', '4.2', 'Illam', '2003'),
(256, '2003/12/11', '', '29.85', '80.54', '4.1', 'Darchula', '2003'),
(257, '2003/12/05', '', '28.40', '83.93', '4.0', 'Kaski', '2003'),
(258, '2003/11/23', '', '28.41', '83.97', '3.6', 'Kaski', '2003'),
(259, '2003/11/23', '', '28.45', '83.94', '4.5', 'Kaski', '2003'),
(260, '2003/11/23', '', '28.30', '83.88', '4.4', 'Kaski', '2003'),
(261, '2003/11/22', '', '28.47', '83.91', '5.0', 'Kaski', '2003'),
(262, '2003/11/05', '', '27.78', '86.16', '4.1', 'Dolakha', '2003'),
(263, '2003/10/29', '', '27.26', '86.69', '4.0', 'Khotang', '2003'),
(264, '2003/09/29', '', '27.52', '87.86', '4.6', 'Taplejung', '2003'),
(265, '2003/09/24', '', '28.99', '81.96', '4.3', 'Dailekh', '2003'),
(266, '2003/08/05', '', '27.99', '86.03', '4.2', 'Sidhupalchowk', '2003'),
(267, '2003/08/02', '', '29.51', '82.10', '4.4', 'Mugu', '2003'),
(268, '2003/07/28', '', '28.75', '82.52', '4.5', 'Rukum', '2003'),
(269, '2003/06/23', '', '27.79', '87.97', '4.8', 'Taplejung', '2003'),
(270, '2003/04/04', '', '30.10', '80.39', '5.0', 'Pithoragarh', '2003'),
(271, '2003/03/29', '', '27.46', '86.63', '4.0', 'Tibet', '2003'),
(272, '2003/03/25', '', '27.18', '89.59', '5.7', 'Bhutan', '2003'),
(273, '2003/02/26', '', '28.47', '86.01', '5.0', 'Tibet', '2003'),
(274, '2002/11/20', '', '29.61', '81.56', '4.4', 'Bajura', '2002'),
(275, '2002/10/11', '', '28.28', '83.94', '4.0', 'Kaski', '2002'),
(276, '2002/10/09', '', '28.18', '83.90', '4.1', 'Kaski', '2002'),
(277, '2002/09/09', '', '28.98', '28.98', '4.1', 'Kailali', '2002'),
(278, '2002/08/11', '', '26.97', '86.40', '4.1', 'Udayapur', '2002'),
(279, '2002/07/16', '', '27.75', '87.36', '4.3', 'Sankhuwasava', '2002'),
(280, '2002/07/02', '', '27.17', '84.82', '4.1', 'Parsa', '2002'),
(281, '2002/06/20', '', '25.63', '88.38', '5.5', 'Bangladesh', '2002'),
(282, '2002/06/13', '', '28.23', '84.86', '4.0', 'Dhading', '2002'),
(283, '2002/06/07', '', '28.77', '81.12', '4.0', 'Kailali', '2002'),
(284, '2002/06/05', '', '28.86', '80.75', '4.0', 'Kailali', '2002'),
(285, '2002/06/04', '', '30.71', '81.34', '6.0', 'Tibet', '2002'),
(286, '2002/06/04', '', '28.79', '80.53', '4.0', 'Kanchanpur', '2002'),
(287, '2002/05/02', '', '27.67', '86.67', '5.2', 'Solukhumbu', '2002'),
(288, '2002/04/15', '', '26.87', '86.31', '4.0', 'Udayapur', '2002'),
(289, '2002/04/09', '', '27.46', '86.174', '4.0', 'Ramechhap', '2002'),
(290, '2002/02/03', '', '27.72', '86.37', '4.1', 'Dolakha', '2002'),
(291, '2001/12/19', '', '23.83', '89.88', '4.8', 'Bangaladesh', '2001'),
(292, '2001/12/18', '', '29.58', '81.80', '4.8', 'Mugu', '2001'),
(293, '2001/11/28', '', '29.59', '81.77', '4.5', 'Mugu', '2001'),
(294, '2001/11/27', '', '29.52', '81.99', '5.2', 'Mugu', '2001'),
(295, '2001/11/27', '', '29.63', '81.79', '5.7', 'Mugu', '2001'),
(296, '2001/11/27', '', '29.53', '81.81', '5.8', 'Mugu', '2001'),
(297, '2001/10/27', '', '29.56', '81.46', '4.7', 'Humla', '2001'),
(298, '2001/09/27', '', '26.98', '87.78', '4.8', 'Udayapur', '2001'),
(299, '2001/09/13', '', '29.821', '80.644', '5.0', 'Darchula', '2001'),
(300, '2001/07/16', '', '28.290', '84.270', '4.8', 'Lamjung', '2001'),
(301, '2001/07/16', '', '27.970', '84.680', '5.9', 'Gorkha', '2001'),
(302, '2001/07/11', '', '29.507', '81.394', '4.3', 'Bajhang', '2001'),
(303, '2001/04/15', '', '29.458', '81.400', '4.4', 'Bajura', '2001'),
(304, '2001/04/04', '', '27.806', '86.171', '4.8', 'Dolakha', '2001'),
(305, '2001/01/26', '', '24.173', '69.853', '7.0', 'Bhuj/India', '2001'),
(306, '2000/12/31', '', '27.840', '87.710', '4.1', 'Taplejung', '2000'),
(307, '2000/09/02', '', '28.071', '85.334', '4.5', 'Nuwakot', '2000'),
(308, '2000/06/02', '', '28.070', '83.290', '4.2', 'Arghanchi', '2000'),
(309, '2000/03/17', '', '27.760', '87.550', '4.2', 'Sankhuwasabha', '2000'),
(310, '2000/03/13', '', '27.990', '87.420', '5.0', 'Taplejung', '2000'),
(311, '2000/03/13', '', '27.730', '87.710', '5.1', 'Sankhuwasabha', '2000'),
(312, '2000/03/13', '', '29.770', '81.410', '4.2', 'Bajhang', '2000'),
(313, '2000/02/26', '', '28.617', '82.314', '5.1', 'Jajarkot', '2000'),
(314, '2000/01/25', '', '27.378', '88.059', '4.6', 'Taplejung', '2000'),
(315, '2000/01/20', '', '27.928', '86.060', '4.8', 'Sindhupalchowk', '2000'),
(316, '1999/12/11', '', '30.159', '81.563', '4.6', 'Humla', '1999'),
(317, '1999/09/20', '', '27.380', '87.897', '4.5', 'Taplejung 	', '1999'),
(318, '1999/08/25', '', '28.157', '84.742', '4.5', 'Gorkha', '1999'),
(319, '1999/08/10', '', '27.795', '86.208', '5.7', 'Dolakha', '1999'),
(320, '1999/04/07', '', '29.596', '81.226', '4.4', 'Bajhang', '1999'),
(321, '1999/03/28', '', '30.498', '79.257', '6.5', 'Chamauli/India', '1999'),
(322, '1999/03/19', '', '27.934', '85.834', '4.8', 'Sindhupalchowk', '1999'),
(323, '1999/02/19', '', '29.867', '80.618', '4.6', 'Darchula', '1999'),
(324, '1999/02/11', '', '28.610', '83.348', '4.7', 'Myagdi', '1999'),
(325, '1998/11/26', '', '27.859', '87.814', '5.4', 'Taplejung', '1998'),
(326, '1998/10/16', '', '28.077', '85.660', '4.9', 'Sindhupalchowk', '1998'),
(327, '1998/09/10', '', '27.444', '88.330', '5.0', 'Taplejung', '1998'),
(328, '1998/09/06', '', '27.797', '87.015', '4.7', 'Solukhumbu', '1998'),
(329, '1998/09/03', '', '27.873', '86.964', '5.6', 'Solukhumbu', '1998'),
(330, '1998/07/15', '', '29.551', '81.247', '5.1', 'Bajhang', '1998'),
(331, '1998/06/27', '', '27.866', '85.812', '5.0', 'Sankhuwasabha', '1998'),
(332, '1998/05/16', '', '26.760', '84.817', '4.8', 'Parsa', '1998'),
(333, '1998/05/10', '', '29.410', '82.380', '4.7', 'Jumla', '1998'),
(334, '1998/02/28', '', '27.150', '87.860', '5.0', 'Panchthar', '1998'),
(335, '1998/02/22', '', '28.720', '85.520', '5.5', 'Tibet', '1998'),
(336, '1998/02/12', '', '27.590', '88.190', '4.6', 'Taplejung', '1998'),
(337, '1997/12/08', '', '27.190', '86.850', '5.0', 'Khotang', '1997'),
(338, '1997/11/27', '', '27.740', '87.000', '5.5', 'Solukhumbu', '1997'),
(339, '1997/11/26', '', '27.750', '86.000', '4.3', 'Dolakha', '1997'),
(340, '1997/10/24', '', '28.660', '82.540', '5.2', 'Rukum', '1997'),
(341, '1997/10/11', '', '27.650', '86.410', '4.8', 'Ramechhap', '1997'),
(342, '1997/05/28', '', '28.680', '82.580', '4.5', 'Rukum', '1997'),
(343, '1997/05/21', '', '23.710', '80.470', '6.0', 'India', '1997'),
(344, '1997/04/07', '', '27.500', '87.746', '4.6', 'Solukhumbu', '1997'),
(345, '1997/03/24', '', '28.060', '85.280', '5.0', 'Rasuwa', '1997'),
(346, '1997/02/18', '', '29.520', '81.330', '4.4', 'Bajhang', '1997'),
(347, '1997/02/10', '', '28.120', '85.330', '4.2', 'Rasuwa', '1997'),
(348, '1997/02/03', '', '28.090', '85.290', '4.7', 'Rasuwa', '1997'),
(349, '1997/02/03', '', '28.020', '85.330', '5.0', 'Rasuwa', '1997'),
(350, '1997/02/01', '', '28.000', '85.303', '4.7', 'Rasuwa', '1997'),
(351, '1997/01/31', '', '28.078', '85.286', '5.8', 'Rasuwa', '1997'),
(352, '1997/01/31', '', '28.015', '85.301', '5.0', 'Rasuwa', '1997'),
(353, '1997/01/05', '', '29.785', '80.588', '5.6', 'Darchula', '1997'),
(354, '1997/01/01', '', '27.005', '86.561', '4.5', 'Udayapur', '1997'),
(355, '1996/12/29', '', '29.750', '81.828', '5.2', 'Humla', '1996'),
(356, '1996/12/22', '', '29.012', '81.726', '4.4', 'Dailekh', '1996'),
(357, '1996/12/03', '', '27.390', '86.842', '5.3', 'Solukhumbu', '1996'),
(358, '1996/11/08', '', '29.667', '81.699', '4.9', 'Humla', '1996'),
(359, '1996/11/04', '', '29.630', '81.859', '4.9', 'Mugu', '1996'),
(360, '1996/10/16', '', '28.778', '79.951', '4.4', '', '1996'),
(361, '1996/07/10', '', '29.616', '81.981', '4.6', 'Mugu', '1996'),
(362, '1996/04/26', '', '27.935', '87.705', '5.3', 'Taplejung', '1996'),
(363, '1996/02/28', '', '27.122', '86.766', '4.8', 'Udayapur', '1996'),
(364, '1995/10/04', '', '28.27', '84.44', '4.7', 'Lamjung', '1995'),
(365, '1995/08/07', '', '25.75', '86.24', '4.5', 'India', '1995'),
(366, '1995/08/07', '', '29.88', '81.63', '5.0', 'Bajura', '1995'),
(367, '1995/08/03', '', '30.04', '81.54', '4.8', 'Humla', '1995'),
(368, '1995/06/21', '', '21.81', '85.27', '6.0', 'India', '1995'),
(369, '1995/06/11', '', '27.22', '87.95', '4.2', 'Taplejung', '1995'),
(370, '1995/04/17', '', '29.51', '81.71', '4.7', 'Bajura', '1995'),
(371, '1995/02/18', '', '27.74', '85.88', '4.6', 'Kavrepalanchowk', '1995'),
(372, '1995/01/30', '', '29.32', '82.19', '4.3', 'Jumla', '1995'),
(373, '1995/01/30', '', '29.38', '82.30', '4.2', 'Jumla', '1995'),
(374, '1995/01/29', '', '26.85', '86.11', '4.5', 'Dhanusa', '1995'),
(375, '1995/01/19', '', '28.35', '83.44', '4.3', 'Magdi', '1995'),
(376, '1994/12/13', '', '28.70', '82.88', '4.6', 'Rukum', '1994'),
(377, '1994/12/12', '', '29.84', '80.69', '4.6', 'Darchula', '1994'),
(378, '1994/11/27', '', '29.72', '81.56', '4.5', 'Bajura', '1994'),
(379, '1994/11/21', '', '29.54', '81.15', '4.2', 'Bajhang', '1994'),
(380, '1994/10/24', '', '28.92', '82.00', '4.7', 'Jajarkot', '1994'),
(381, '1994/10/22', '', '29.00', '82.26', '4.6', 'Jajarkot', '1994'),
(382, '1994/09/25', '', '28.34', '87.35', '4.8', 'Sankhuwasabha', '1994'),
(383, '1994/08/31', '', '26.09', '79.51', '6.0', 'India', '1994'),
(384, '1994/07/17', '', '29.37', '81.52', '5.5', 'Bajura', '1994'),
(385, '1994/06/25', '', '27.75', '86.16', '5.1', 'Dolakha', '1994');
