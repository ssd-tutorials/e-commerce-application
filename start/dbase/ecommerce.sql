-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2010 at 09:12 PM
-- Server version: 5.1.44
-- PHP Version: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admins`
--


-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `business`
--


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` VALUES(1, 'Biographies & Autobiographies');
INSERT INTO `categories` VALUES(2, 'Computers & IT');
INSERT INTO `categories` VALUES(3, 'Art & Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `country` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` VALUES(1, 'Afghanistan', 'AF');
INSERT INTO `countries` VALUES(2, 'Ãland Islands', 'AX');
INSERT INTO `countries` VALUES(3, 'Albania', 'AL');
INSERT INTO `countries` VALUES(4, 'Algeria', 'DZ');
INSERT INTO `countries` VALUES(5, 'American Samoa', 'AS');
INSERT INTO `countries` VALUES(6, 'Andorra', 'AD');
INSERT INTO `countries` VALUES(7, 'Angola', 'AO');
INSERT INTO `countries` VALUES(8, 'Anguilla', 'AI');
INSERT INTO `countries` VALUES(9, 'Antarctica', 'AQ');
INSERT INTO `countries` VALUES(10, 'Antigua And Barbuda', 'AG');
INSERT INTO `countries` VALUES(11, 'Argentina', 'AR');
INSERT INTO `countries` VALUES(12, 'Armenia', 'AM');
INSERT INTO `countries` VALUES(13, 'Aruba', 'AW');
INSERT INTO `countries` VALUES(14, 'Australia', 'AU');
INSERT INTO `countries` VALUES(15, 'Austria', 'AT');
INSERT INTO `countries` VALUES(16, 'Azerbaijan', 'AZ');
INSERT INTO `countries` VALUES(17, 'Bahamas', 'BS');
INSERT INTO `countries` VALUES(18, 'Bahrain', 'BH');
INSERT INTO `countries` VALUES(19, 'Bangladesh', 'BD');
INSERT INTO `countries` VALUES(20, 'Barbados', 'BB');
INSERT INTO `countries` VALUES(21, 'Belarus', 'BY');
INSERT INTO `countries` VALUES(22, 'Belgium', 'BE');
INSERT INTO `countries` VALUES(23, 'Belize', 'BZ');
INSERT INTO `countries` VALUES(24, 'Benin', 'BJ');
INSERT INTO `countries` VALUES(25, 'Bermuda', 'BM');
INSERT INTO `countries` VALUES(26, 'Bhutan', 'BT');
INSERT INTO `countries` VALUES(27, 'Bolivia', 'BO');
INSERT INTO `countries` VALUES(28, 'Bosnia And Herzegovina', 'BA');
INSERT INTO `countries` VALUES(29, 'Botswana', 'BW');
INSERT INTO `countries` VALUES(30, 'Bouvet Island', 'BV');
INSERT INTO `countries` VALUES(31, 'Brazil', 'BR');
INSERT INTO `countries` VALUES(32, 'British Indian Ocean Territory', 'IO');
INSERT INTO `countries` VALUES(33, 'Brunei Darussalam', 'BN');
INSERT INTO `countries` VALUES(34, 'Bulgaria', 'BG');
INSERT INTO `countries` VALUES(35, 'Burkina Faso', 'BF');
INSERT INTO `countries` VALUES(36, 'Burundi', 'BI');
INSERT INTO `countries` VALUES(37, 'Cambodia', 'KH');
INSERT INTO `countries` VALUES(38, 'Cameroon', 'CM');
INSERT INTO `countries` VALUES(39, 'Canada', 'CA');
INSERT INTO `countries` VALUES(40, 'Cape Verde', 'CV');
INSERT INTO `countries` VALUES(41, 'Cayman Islands', 'KY');
INSERT INTO `countries` VALUES(42, 'Central African Republic', 'CF');
INSERT INTO `countries` VALUES(43, 'Chad', 'TD');
INSERT INTO `countries` VALUES(44, 'Chile', 'CL');
INSERT INTO `countries` VALUES(45, 'China', 'CN');
INSERT INTO `countries` VALUES(46, 'Christmas Island', 'CX');
INSERT INTO `countries` VALUES(47, 'Cocos (keeling) Islands', 'CC');
INSERT INTO `countries` VALUES(48, 'Colombia', 'CO');
INSERT INTO `countries` VALUES(49, 'Comoros', 'KM');
INSERT INTO `countries` VALUES(50, 'Congo', 'CG');
INSERT INTO `countries` VALUES(51, 'Congo, The Democratic Republic Of', 'CD');
INSERT INTO `countries` VALUES(52, 'Cook Islands', 'CK');
INSERT INTO `countries` VALUES(53, 'Costa Rica', 'CR');
INSERT INTO `countries` VALUES(54, 'Cote D''ivoire', 'CI');
INSERT INTO `countries` VALUES(55, 'Croatia', 'HR');
INSERT INTO `countries` VALUES(56, 'Cuba', 'CU');
INSERT INTO `countries` VALUES(57, 'Cyprus', 'CY');
INSERT INTO `countries` VALUES(58, 'Czech Republic', 'CZ');
INSERT INTO `countries` VALUES(59, 'Denmark', 'DK');
INSERT INTO `countries` VALUES(60, 'Djibouti', 'DJ');
INSERT INTO `countries` VALUES(61, 'Dominica', 'DM');
INSERT INTO `countries` VALUES(62, 'Dominican Republic', 'DO');
INSERT INTO `countries` VALUES(63, 'Ecuador', 'EC');
INSERT INTO `countries` VALUES(64, 'Egypt', 'EG');
INSERT INTO `countries` VALUES(65, 'El Salvador', 'SV');
INSERT INTO `countries` VALUES(66, 'Equatorial Guinea', 'GQ');
INSERT INTO `countries` VALUES(67, 'Eritrea', 'ER');
INSERT INTO `countries` VALUES(68, 'Estonia', 'EE');
INSERT INTO `countries` VALUES(69, 'Ethiopia', 'ET');
INSERT INTO `countries` VALUES(70, 'Falkland Islands (malvinas)', 'FK');
INSERT INTO `countries` VALUES(71, 'Faroe Islands', 'FO');
INSERT INTO `countries` VALUES(72, 'Fiji', 'FJ');
INSERT INTO `countries` VALUES(73, 'Finland', 'FI');
INSERT INTO `countries` VALUES(74, 'France', 'FR');
INSERT INTO `countries` VALUES(75, 'French Guiana', 'GF');
INSERT INTO `countries` VALUES(76, 'French Polynesia', 'PF');
INSERT INTO `countries` VALUES(77, 'French Southern Territories', 'TF');
INSERT INTO `countries` VALUES(78, 'Gabon', 'GA');
INSERT INTO `countries` VALUES(79, 'Gambia', 'GM');
INSERT INTO `countries` VALUES(80, 'Georgia', 'GE');
INSERT INTO `countries` VALUES(81, 'Germany', 'DE');
INSERT INTO `countries` VALUES(82, 'Ghana', 'GH');
INSERT INTO `countries` VALUES(83, 'Gibraltar', 'GI');
INSERT INTO `countries` VALUES(84, 'Greece', 'GR');
INSERT INTO `countries` VALUES(85, 'Greenland', 'GL');
INSERT INTO `countries` VALUES(86, 'Grenada', 'GD');
INSERT INTO `countries` VALUES(87, 'Guadeloupe', 'GP');
INSERT INTO `countries` VALUES(88, 'Guam', 'GU');
INSERT INTO `countries` VALUES(89, 'Guatemala', 'GT');
INSERT INTO `countries` VALUES(90, 'Guernsey', 'GG');
INSERT INTO `countries` VALUES(91, 'Guinea', 'GN');
INSERT INTO `countries` VALUES(92, 'Guinea-bissau', 'GW');
INSERT INTO `countries` VALUES(93, 'Guyana', 'GY');
INSERT INTO `countries` VALUES(94, 'Haiti', 'HT');
INSERT INTO `countries` VALUES(95, 'Heard Island And Mcdonald Islands', 'HM');
INSERT INTO `countries` VALUES(96, 'Holy See (vatican City State)', 'VA');
INSERT INTO `countries` VALUES(97, 'Honduras', 'HN');
INSERT INTO `countries` VALUES(98, 'Hong Kong', 'HK');
INSERT INTO `countries` VALUES(99, 'Hungary', 'HU');
INSERT INTO `countries` VALUES(100, 'Iceland', 'IS');
INSERT INTO `countries` VALUES(101, 'India', 'IN');
INSERT INTO `countries` VALUES(102, 'Indonesia', 'ID');
INSERT INTO `countries` VALUES(103, 'Iran, Islamic Republic Of', 'IR');
INSERT INTO `countries` VALUES(104, 'Iraq', 'IQ');
INSERT INTO `countries` VALUES(105, 'Ireland', 'IE');
INSERT INTO `countries` VALUES(106, 'Isle Of Man', 'IM');
INSERT INTO `countries` VALUES(107, 'Israel', 'IL');
INSERT INTO `countries` VALUES(108, 'Italy', 'IT');
INSERT INTO `countries` VALUES(109, 'Jamaica', 'JM');
INSERT INTO `countries` VALUES(110, 'Japan', 'JP');
INSERT INTO `countries` VALUES(111, 'Jersey', 'JE');
INSERT INTO `countries` VALUES(112, 'Jordan', 'JO');
INSERT INTO `countries` VALUES(113, 'Kazakhstan', 'KZ');
INSERT INTO `countries` VALUES(114, 'Kenya', 'KE');
INSERT INTO `countries` VALUES(115, 'Kiribati', 'KI');
INSERT INTO `countries` VALUES(116, 'Korea, Democratic People''s Republic Of', 'KP');
INSERT INTO `countries` VALUES(117, 'Korea, Republic Of', 'KR');
INSERT INTO `countries` VALUES(118, 'Kuwait', 'KW');
INSERT INTO `countries` VALUES(119, 'Kyrgyzstan', 'KG');
INSERT INTO `countries` VALUES(120, 'Lao People''s Democratic Republic', 'LA');
INSERT INTO `countries` VALUES(121, 'Latvia', 'LV');
INSERT INTO `countries` VALUES(122, 'Lebanon', 'LB');
INSERT INTO `countries` VALUES(123, 'Lesotho', 'LS');
INSERT INTO `countries` VALUES(124, 'Liberia', 'LR');
INSERT INTO `countries` VALUES(125, 'Libyan Arab Jamahiriya', 'LY');
INSERT INTO `countries` VALUES(126, 'Liechtenstein', 'LI');
INSERT INTO `countries` VALUES(127, 'Lithuania', 'LT');
INSERT INTO `countries` VALUES(128, 'Luxembourg', 'LU');
INSERT INTO `countries` VALUES(129, 'Macao', 'MO');
INSERT INTO `countries` VALUES(130, 'Macedonia, The Former Yugoslav Republic Of', 'MK');
INSERT INTO `countries` VALUES(131, 'Madagascar', 'MG');
INSERT INTO `countries` VALUES(132, 'Malawi', 'MW');
INSERT INTO `countries` VALUES(133, 'Malaysia', 'MY');
INSERT INTO `countries` VALUES(134, 'Maldives', 'MV');
INSERT INTO `countries` VALUES(135, 'Mali', 'ML');
INSERT INTO `countries` VALUES(136, 'Malta', 'MT');
INSERT INTO `countries` VALUES(137, 'Marshall Islands', 'MH');
INSERT INTO `countries` VALUES(138, 'Martinique', 'MQ');
INSERT INTO `countries` VALUES(139, 'Mauritania', 'MR');
INSERT INTO `countries` VALUES(140, 'Mauritius', 'MU');
INSERT INTO `countries` VALUES(141, 'Mayotte', 'YT');
INSERT INTO `countries` VALUES(142, 'Mexico', 'MX');
INSERT INTO `countries` VALUES(143, 'Micronesia, Federated States Of', 'FM');
INSERT INTO `countries` VALUES(144, 'Moldova, Republic Of', 'MD');
INSERT INTO `countries` VALUES(145, 'Monaco', 'MC');
INSERT INTO `countries` VALUES(146, 'Mongolia', 'MN');
INSERT INTO `countries` VALUES(147, 'Montserrat', 'MS');
INSERT INTO `countries` VALUES(148, 'Morocco', 'MA');
INSERT INTO `countries` VALUES(149, 'Mozambique', 'MZ');
INSERT INTO `countries` VALUES(150, 'Myanmar', 'MM');
INSERT INTO `countries` VALUES(151, 'Namibia', 'NA');
INSERT INTO `countries` VALUES(152, 'Nauru', 'NR');
INSERT INTO `countries` VALUES(153, 'Nepal', 'NP');
INSERT INTO `countries` VALUES(154, 'Netherlands', 'NL');
INSERT INTO `countries` VALUES(155, 'Netherlands Antilles', 'AN');
INSERT INTO `countries` VALUES(156, 'New Caledonia', 'NC');
INSERT INTO `countries` VALUES(157, 'New Zealand', 'NZ');
INSERT INTO `countries` VALUES(158, 'Nicaragua', 'NI');
INSERT INTO `countries` VALUES(159, 'Niger', 'NE');
INSERT INTO `countries` VALUES(160, 'Nigeria', 'NG');
INSERT INTO `countries` VALUES(161, 'Niue', 'NU');
INSERT INTO `countries` VALUES(162, 'Norfolk Island', 'NF');
INSERT INTO `countries` VALUES(163, 'Northern Mariana Islands', 'MP');
INSERT INTO `countries` VALUES(164, 'Norway', 'NO');
INSERT INTO `countries` VALUES(165, 'Oman', 'OM');
INSERT INTO `countries` VALUES(166, 'Pakistan', 'PK');
INSERT INTO `countries` VALUES(167, 'Palau', 'PW');
INSERT INTO `countries` VALUES(168, 'Palestinian Territory, Occupied', 'PS');
INSERT INTO `countries` VALUES(169, 'Panama', 'PA');
INSERT INTO `countries` VALUES(170, 'Papua New Guinea', 'PG');
INSERT INTO `countries` VALUES(171, 'Paraguay', 'PY');
INSERT INTO `countries` VALUES(172, 'Peru', 'PE');
INSERT INTO `countries` VALUES(173, 'Philippines', 'PH');
INSERT INTO `countries` VALUES(174, 'Pitcairn', 'PN');
INSERT INTO `countries` VALUES(175, 'Poland', 'PL');
INSERT INTO `countries` VALUES(176, 'Portugal', 'PT');
INSERT INTO `countries` VALUES(177, 'Puerto Rico', 'PR');
INSERT INTO `countries` VALUES(178, 'Qatar', 'QA');
INSERT INTO `countries` VALUES(179, 'Reunion', 'RE');
INSERT INTO `countries` VALUES(180, 'Romania', 'RO');
INSERT INTO `countries` VALUES(181, 'Russian Federation', 'RU');
INSERT INTO `countries` VALUES(182, 'Rwanda', 'RW');
INSERT INTO `countries` VALUES(183, 'Saint Helena', 'SH');
INSERT INTO `countries` VALUES(184, 'Saint Kitts And Nevis', 'KN');
INSERT INTO `countries` VALUES(185, 'Saint Lucia', 'LC');
INSERT INTO `countries` VALUES(186, 'Saint Pierre And Miquelon', 'PM');
INSERT INTO `countries` VALUES(187, 'Saint Vincent And The Grenadines', 'VC');
INSERT INTO `countries` VALUES(188, 'Samoa', 'WS');
INSERT INTO `countries` VALUES(189, 'San Marino', 'SM');
INSERT INTO `countries` VALUES(190, 'Sao Tome And Principe', 'ST');
INSERT INTO `countries` VALUES(191, 'Saudi Arabia', 'SA');
INSERT INTO `countries` VALUES(192, 'Senegal', 'SN');
INSERT INTO `countries` VALUES(193, 'Serbia And Montenegro', 'CS');
INSERT INTO `countries` VALUES(194, 'Seychelles', 'SC');
INSERT INTO `countries` VALUES(195, 'Sierra Leone', 'SL');
INSERT INTO `countries` VALUES(196, 'Singapore', 'SG');
INSERT INTO `countries` VALUES(197, 'Slovakia', 'SK');
INSERT INTO `countries` VALUES(198, 'Slovenia', 'SI');
INSERT INTO `countries` VALUES(199, 'Solomon Islands', 'SB');
INSERT INTO `countries` VALUES(200, 'Somalia', 'SO');
INSERT INTO `countries` VALUES(201, 'South Africa', 'ZA');
INSERT INTO `countries` VALUES(202, 'South Georgia And The South Sandwich Islands', 'GS');
INSERT INTO `countries` VALUES(203, 'Spain', 'ES');
INSERT INTO `countries` VALUES(204, 'Sri Lanka', 'LK');
INSERT INTO `countries` VALUES(205, 'Sudan', 'SD');
INSERT INTO `countries` VALUES(206, 'Suriname', 'SR');
INSERT INTO `countries` VALUES(207, 'Svalbard And Jan Mayen', 'SJ');
INSERT INTO `countries` VALUES(208, 'Swaziland', 'SZ');
INSERT INTO `countries` VALUES(209, 'Sweden', 'SE');
INSERT INTO `countries` VALUES(210, 'Switzerland', 'CH');
INSERT INTO `countries` VALUES(211, 'Syrian Arab Republic', 'SY');
INSERT INTO `countries` VALUES(212, 'Taiwan, Province Of China', 'TW');
INSERT INTO `countries` VALUES(213, 'Tajikistan', 'TJ');
INSERT INTO `countries` VALUES(214, 'Tanzania, United Republic Of', 'TZ');
INSERT INTO `countries` VALUES(215, 'Thailand', 'TH');
INSERT INTO `countries` VALUES(216, 'Timor-leste', 'TL');
INSERT INTO `countries` VALUES(217, 'Togo', 'TG');
INSERT INTO `countries` VALUES(218, 'Tokelau', 'TK');
INSERT INTO `countries` VALUES(219, 'Tonga', 'TO');
INSERT INTO `countries` VALUES(220, 'Trinidad And Tobago', 'TT');
INSERT INTO `countries` VALUES(221, 'Tunisia', 'TN');
INSERT INTO `countries` VALUES(222, 'Turkey', 'TR');
INSERT INTO `countries` VALUES(223, 'Turkmenistan', 'TM');
INSERT INTO `countries` VALUES(224, 'Turks And Caicos Islands', 'TC');
INSERT INTO `countries` VALUES(225, 'Tuvalu', 'TV');
INSERT INTO `countries` VALUES(226, 'Uganda', 'UG');
INSERT INTO `countries` VALUES(227, 'Ukraine', 'UA');
INSERT INTO `countries` VALUES(228, 'United Arab Emirates', 'AE');
INSERT INTO `countries` VALUES(229, 'United Kingdom', 'GB');
INSERT INTO `countries` VALUES(230, 'United States', 'US');
INSERT INTO `countries` VALUES(231, 'United States Minor Outlying Islands', 'UM');
INSERT INTO `countries` VALUES(232, 'Uruguay', 'UY');
INSERT INTO `countries` VALUES(233, 'Uzbekistan', 'UZ');
INSERT INTO `countries` VALUES(234, 'Vanuatu', 'VU');
INSERT INTO `countries` VALUES(235, 'Venezuela', 'VE');
INSERT INTO `countries` VALUES(236, 'Viet Nam', 'VN');
INSERT INTO `countries` VALUES(237, 'Virgin Islands, British', 'VG');
INSERT INTO `countries` VALUES(238, 'Virgin Islands, U.S.', 'VI');
INSERT INTO `countries` VALUES(239, 'Wallis And Futuna', 'WF');
INSERT INTO `countries` VALUES(240, 'Western Sahara', 'EH');
INSERT INTO `countries` VALUES(241, 'Yemen', 'YE');
INSERT INTO `countries` VALUES(242, 'Zambia', 'ZM');
INSERT INTO `countries` VALUES(243, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` int(11) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  `vat` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `pp_status` tinyint(1) NOT NULL DEFAULT '0',
  `txn_id` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `fk_stage` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `order` (`order`,`product`),
  KEY `FK_PRODUCT` (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `products`
--


-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` VALUES(1, 'Pending');
INSERT INTO `statuses` VALUES(2, 'Processing');
INSERT INTO `statuses` VALUES(3, 'Dispatched');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
