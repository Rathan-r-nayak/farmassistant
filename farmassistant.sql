-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 03:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmassistant`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `query_id`, `fid`, `answer`) VALUES
(5, 1, 22, '15/05/2023'),
(6, 3, 22, 'it is a website where you get information about all schemes related to agriculture'),
(8, 1, 21, 'its on 15/05/2023');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add auth group', 7, 'add_authgroup'),
(26, 'Can change auth group', 7, 'change_authgroup'),
(27, 'Can delete auth group', 7, 'delete_authgroup'),
(28, 'Can view auth group', 7, 'view_authgroup'),
(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 9, 'add_authpermission'),
(34, 'Can change auth permission', 9, 'change_authpermission'),
(35, 'Can delete auth permission', 9, 'delete_authpermission'),
(36, 'Can view auth permission', 9, 'view_authpermission'),
(37, 'Can add auth user groups', 10, 'add_authusergroups'),
(38, 'Can change auth user groups', 10, 'change_authusergroups'),
(39, 'Can delete auth user groups', 10, 'delete_authusergroups'),
(40, 'Can view auth user groups', 10, 'view_authusergroups'),
(41, 'Can add auth user user permissions', 11, 'add_authuseruserpermissions'),
(42, 'Can change auth user user permissions', 11, 'change_authuseruserpermissions'),
(43, 'Can delete auth user user permissions', 11, 'delete_authuseruserpermissions'),
(44, 'Can view auth user user permissions', 11, 'view_authuseruserpermissions'),
(45, 'Can add django admin log', 12, 'add_djangoadminlog'),
(46, 'Can change django admin log', 12, 'change_djangoadminlog'),
(47, 'Can delete django admin log', 12, 'delete_djangoadminlog'),
(48, 'Can view django admin log', 12, 'view_djangoadminlog'),
(49, 'Can add django content type', 13, 'add_djangocontenttype'),
(50, 'Can change django content type', 13, 'change_djangocontenttype'),
(51, 'Can delete django content type', 13, 'delete_djangocontenttype'),
(52, 'Can view django content type', 13, 'view_djangocontenttype'),
(53, 'Can add django migrations', 14, 'add_djangomigrations'),
(54, 'Can change django migrations', 14, 'change_djangomigrations'),
(55, 'Can delete django migrations', 14, 'delete_djangomigrations'),
(56, 'Can view django migrations', 14, 'view_djangomigrations'),
(57, 'Can add django session', 15, 'add_djangosession'),
(58, 'Can change django session', 15, 'change_djangosession'),
(59, 'Can delete django session', 15, 'delete_djangosession'),
(60, 'Can view django session', 15, 'view_djangosession'),
(61, 'Can add auth user', 16, 'add_authuser'),
(62, 'Can change auth user', 16, 'change_authuser'),
(63, 'Can delete auth user', 16, 'delete_authuser'),
(64, 'Can view auth user', 16, 'view_authuser'),
(65, 'Can add farmer', 17, 'add_farmer'),
(66, 'Can change farmer', 17, 'change_farmer'),
(67, 'Can delete farmer', 17, 'delete_farmer'),
(68, 'Can view farmer', 17, 'view_farmer'),
(69, 'Can add answers', 18, 'add_answers'),
(70, 'Can change answers', 18, 'change_answers'),
(71, 'Can delete answers', 18, 'delete_answers'),
(72, 'Can view answers', 18, 'view_answers'),
(73, 'Can add questions', 19, 'add_questions'),
(74, 'Can change questions', 19, 'change_questions'),
(75, 'Can delete questions', 19, 'delete_questions'),
(76, 'Can view questions', 19, 'view_questions'),
(77, 'Can add answers', 20, 'add_answers'),
(78, 'Can change answers', 20, 'change_answers'),
(79, 'Can delete answers', 20, 'delete_answers'),
(80, 'Can view answers', 20, 'view_answers'),
(81, 'Can add auth group', 21, 'add_authgroup'),
(82, 'Can change auth group', 21, 'change_authgroup'),
(83, 'Can delete auth group', 21, 'delete_authgroup'),
(84, 'Can view auth group', 21, 'view_authgroup'),
(85, 'Can add auth group permissions', 22, 'add_authgrouppermissions'),
(86, 'Can change auth group permissions', 22, 'change_authgrouppermissions'),
(87, 'Can delete auth group permissions', 22, 'delete_authgrouppermissions'),
(88, 'Can view auth group permissions', 22, 'view_authgrouppermissions'),
(89, 'Can add auth permission', 23, 'add_authpermission'),
(90, 'Can change auth permission', 23, 'change_authpermission'),
(91, 'Can delete auth permission', 23, 'delete_authpermission'),
(92, 'Can view auth permission', 23, 'view_authpermission'),
(93, 'Can add auth user groups', 24, 'add_authusergroups'),
(94, 'Can change auth user groups', 24, 'change_authusergroups'),
(95, 'Can delete auth user groups', 24, 'delete_authusergroups'),
(96, 'Can view auth user groups', 24, 'view_authusergroups'),
(97, 'Can add auth user user permissions', 25, 'add_authuseruserpermissions'),
(98, 'Can change auth user user permissions', 25, 'change_authuseruserpermissions'),
(99, 'Can delete auth user user permissions', 25, 'delete_authuseruserpermissions'),
(100, 'Can view auth user user permissions', 25, 'view_authuseruserpermissions'),
(101, 'Can add django admin log', 26, 'add_djangoadminlog'),
(102, 'Can change django admin log', 26, 'change_djangoadminlog'),
(103, 'Can delete django admin log', 26, 'delete_djangoadminlog'),
(104, 'Can view django admin log', 26, 'view_djangoadminlog'),
(105, 'Can add django content type', 27, 'add_djangocontenttype'),
(106, 'Can change django content type', 27, 'change_djangocontenttype'),
(107, 'Can delete django content type', 27, 'delete_djangocontenttype'),
(108, 'Can view django content type', 27, 'view_djangocontenttype'),
(109, 'Can add django migrations', 28, 'add_djangomigrations'),
(110, 'Can change django migrations', 28, 'change_djangomigrations'),
(111, 'Can delete django migrations', 28, 'delete_djangomigrations'),
(112, 'Can view django migrations', 28, 'view_djangomigrations'),
(113, 'Can add django session', 29, 'add_djangosession'),
(114, 'Can change django session', 29, 'change_djangosession'),
(115, 'Can delete django session', 29, 'delete_djangosession'),
(116, 'Can view django session', 29, 'view_djangosession'),
(117, 'Can add questions', 30, 'add_questions'),
(118, 'Can change questions', 30, 'change_questions'),
(119, 'Can delete questions', 30, 'delete_questions'),
(120, 'Can view questions', 30, 'view_questions'),
(121, 'Can add farmer', 31, 'add_farmer'),
(122, 'Can change farmer', 31, 'change_farmer'),
(123, 'Can delete farmer', 31, 'delete_farmer'),
(124, 'Can view farmer', 31, 'view_farmer'),
(125, 'Can add auth user', 32, 'add_authuser'),
(126, 'Can change auth user', 32, 'change_authuser'),
(127, 'Can delete auth user', 32, 'delete_authuser'),
(128, 'Can view auth user', 32, 'view_authuser'),
(129, 'Can add benifits', 33, 'add_benifits'),
(130, 'Can change benifits', 33, 'change_benifits'),
(131, 'Can delete benifits', 33, 'delete_benifits'),
(132, 'Can view benifits', 33, 'view_benifits'),
(133, 'Can add schemes', 34, 'add_schemes'),
(134, 'Can change schemes', 34, 'change_schemes'),
(135, 'Can delete schemes', 34, 'delete_schemes'),
(136, 'Can view schemes', 34, 'view_schemes'),
(137, 'Can add benifits', 35, 'add_benifits'),
(138, 'Can change benifits', 35, 'change_benifits'),
(139, 'Can delete benifits', 35, 'delete_benifits'),
(140, 'Can view benifits', 35, 'view_benifits'),
(141, 'Can add schemes', 36, 'add_schemes'),
(142, 'Can change schemes', 36, 'change_schemes'),
(143, 'Can delete schemes', 36, 'delete_schemes'),
(144, 'Can view schemes', 36, 'view_schemes'),
(145, 'Can add answers', 37, 'add_answers'),
(146, 'Can change answers', 37, 'change_answers'),
(147, 'Can delete answers', 37, 'delete_answers'),
(148, 'Can view answers', 37, 'view_answers'),
(149, 'Can add auth group', 38, 'add_authgroup'),
(150, 'Can change auth group', 38, 'change_authgroup'),
(151, 'Can delete auth group', 38, 'delete_authgroup'),
(152, 'Can view auth group', 38, 'view_authgroup'),
(153, 'Can add auth group permissions', 39, 'add_authgrouppermissions'),
(154, 'Can change auth group permissions', 39, 'change_authgrouppermissions'),
(155, 'Can delete auth group permissions', 39, 'delete_authgrouppermissions'),
(156, 'Can view auth group permissions', 39, 'view_authgrouppermissions'),
(157, 'Can add auth permission', 40, 'add_authpermission'),
(158, 'Can change auth permission', 40, 'change_authpermission'),
(159, 'Can delete auth permission', 40, 'delete_authpermission'),
(160, 'Can view auth permission', 40, 'view_authpermission'),
(161, 'Can add auth user groups', 41, 'add_authusergroups'),
(162, 'Can change auth user groups', 41, 'change_authusergroups'),
(163, 'Can delete auth user groups', 41, 'delete_authusergroups'),
(164, 'Can view auth user groups', 41, 'view_authusergroups'),
(165, 'Can add auth user user permissions', 42, 'add_authuseruserpermissions'),
(166, 'Can change auth user user permissions', 42, 'change_authuseruserpermissions'),
(167, 'Can delete auth user user permissions', 42, 'delete_authuseruserpermissions'),
(168, 'Can view auth user user permissions', 42, 'view_authuseruserpermissions'),
(169, 'Can add benifits', 43, 'add_benifits'),
(170, 'Can change benifits', 43, 'change_benifits'),
(171, 'Can delete benifits', 43, 'delete_benifits'),
(172, 'Can view benifits', 43, 'view_benifits'),
(173, 'Can add django admin log', 44, 'add_djangoadminlog'),
(174, 'Can change django admin log', 44, 'change_djangoadminlog'),
(175, 'Can delete django admin log', 44, 'delete_djangoadminlog'),
(176, 'Can view django admin log', 44, 'view_djangoadminlog'),
(177, 'Can add django content type', 45, 'add_djangocontenttype'),
(178, 'Can change django content type', 45, 'change_djangocontenttype'),
(179, 'Can delete django content type', 45, 'delete_djangocontenttype'),
(180, 'Can view django content type', 45, 'view_djangocontenttype'),
(181, 'Can add django migrations', 46, 'add_djangomigrations'),
(182, 'Can change django migrations', 46, 'change_djangomigrations'),
(183, 'Can delete django migrations', 46, 'delete_djangomigrations'),
(184, 'Can view django migrations', 46, 'view_djangomigrations'),
(185, 'Can add django session', 47, 'add_djangosession'),
(186, 'Can change django session', 47, 'change_djangosession'),
(187, 'Can delete django session', 47, 'delete_djangosession'),
(188, 'Can view django session', 47, 'view_djangosession'),
(189, 'Can add products', 48, 'add_products'),
(190, 'Can change products', 48, 'change_products'),
(191, 'Can delete products', 48, 'delete_products'),
(192, 'Can view products', 48, 'view_products'),
(193, 'Can add questions', 49, 'add_questions'),
(194, 'Can change questions', 49, 'change_questions'),
(195, 'Can delete questions', 49, 'delete_questions'),
(196, 'Can view questions', 49, 'view_questions'),
(197, 'Can add schemes', 50, 'add_schemes'),
(198, 'Can change schemes', 50, 'change_schemes'),
(199, 'Can delete schemes', 50, 'delete_schemes'),
(200, 'Can view schemes', 50, 'view_schemes'),
(201, 'Can add auth user', 51, 'add_authuser'),
(202, 'Can change auth user', 51, 'change_authuser'),
(203, 'Can delete auth user', 51, 'delete_authuser'),
(204, 'Can view auth user', 51, 'view_authuser'),
(205, 'Can add farmer', 52, 'add_farmer'),
(206, 'Can change farmer', 52, 'change_farmer'),
(207, 'Can delete farmer', 52, 'delete_farmer'),
(208, 'Can view farmer', 52, 'view_farmer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(5, 'pbkdf2_sha256$390000$93Q5xKHE587O7FjDNgscOs$pHAAeROc+qkv9KYmLH/ParGPmct05RZ/oKhLyp+owm8=', '2023-04-26 01:12:22.172144', 1, 'rathan', '', '', 'rathannayak300@gmail.com', 1, 1, '2023-04-20 21:10:42.592761'),
(21, 'pbkdf2_sha256$390000$WnpnUDZoBwBP8gJtaN6IjI$iToQUOdljJc9vtiFqPMkqpg3ysQ31xO4L6L6yL8zM6U=', '2023-04-26 01:12:09.305503', 0, 'pradwin', 'pradwin', 'sherigar', 'pradwin@gmail.com', 0, 1, '2023-04-25 10:15:09.977062'),
(22, 'pbkdf2_sha256$390000$X8l1cfJMoeYoscDm5amvQg$mZk6Oceldgrp8ZDbWin8Gh2CmMeZy1e4gIb0YmAcK1M=', '2023-04-25 12:45:18.663150', 0, 'abcd', 'abcd', 'efgh', 'abcd@gmail.com', 0, 1, '2023-04-25 11:58:17.724842'),
(23, 'pbkdf2_sha256$390000$r9s04xPvNT2PSr8y6yzAXc$cKYQzpxMJiDNzpcLVD9YDtTHABvmn3rZb3uH/B7FOIA=', NULL, 0, 'abc', 'abc', 'efg', 'abc@gmail.com', 0, 1, '2023-04-25 22:26:54.876877'),
(25, 'pbkdf2_sha256$390000$skJk1VPjm83taME0FxGoxz$58imczFTQ0AH3mPYSxAobk1Mg8rMJerNYj5Mqx8miao=', '2023-04-25 22:31:29.237389', 0, 'abcy', 'abc', 'xyz', 'abc@gmail.com', 0, 1, '2023-04-25 22:31:28.071865'),
(26, 'pbkdf2_sha256$390000$0NmiKcJKeZLXxiZpajFMPp$uFrM1U/Jl9xJb7iIKjKVe7XDxY4HZXF8qpl93R7bBdw=', '2023-04-25 22:34:45.407067', 0, 'vijay', 'vijay', 'kumar', 'vijay@gmail.com', 0, 1, '2023-04-25 22:34:44.159297');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `benifits`
--

CREATE TABLE `benifits` (
  `benifit_id` int(11) NOT NULL,
  `stitle` varchar(200) NOT NULL,
  `scheme` text DEFAULT NULL,
  `assistance` text DEFAULT NULL,
  `criteria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `benifits`
--

INSERT INTO `benifits` (`benifit_id`, `stitle`, `scheme`, `assistance`, `criteria`) VALUES
(3, 'AGRICULTURAL INSURANCE', 'Pradhan Mantri Fasal  Bima Yojana (PMFBY)', 'Insurance protection for food crops, oilseeds and annual horticultural/\r\ncommercial crops notified by state government.\r\ny Uniform maximum premium for all farmers :\r\ni) Kharif season - 2% of sum insured.\r\nii) Rabi Season 1.5% of sum insured.\r\niii) Annual commercial/horticultural crops - 5% of sum insured.\r\n The difference between actual premium and the rate of Insurance \r\npayable by farmers shall be shared equally by the Centre and State.\r\n Claims of full Sum Insured (SI), without capping or reduction in SI.\r\n If the sowing is not done due to adverse weather/climate, claims upto \r\n25% of sum insured will be paid for prevented sowing/planting risk.\r\n When the crop yield is less than the guaranteed yield of notified crops, \r\nthe claim payment equal to shortfall in yield is payable to all insured \r\nfarmers.\r\n If 50% loss in mid season of crop then on account advance payment, up \r\nto 25% of likely claims will be paid as immediate relief.\r\n Losses caused by inundation, hailstorm and landslide would be assessed \r\nat individual farm level.\r\n Post harvest losses assessment for damage to crops in cut and spread in \r\nthe field up to 14 days on account of cyclonic rain and unseasonal rain in \r\nthe entire country .\r\n Use of Remote Sensing Technology and drones to supplement Crop \r\nCutting Experiments for faster settlement of claims.\r\n Implementing agency will be selected by the State Government through \r\nbid', ''),
(4, 'AGRICULTURAL INSURANCE', 'Weather Based Crop  Insurance Scheme  (WBCIS)', 'y Insurance protection for notified food crops, oilseeds and annual \r\nhorticultural/commercial crops.\r\ny Uniform maximum premium for all farmers like PMFBY :\r\na) Kharif season - 2% of sum insured.\r\nb) Rabi Season 1.5% of sum insured.\r\nc) Commercial/horticultural crops 5% of sum insured.\r\ny The difference between actual premium and the rate of Insurance \r\npayable by farmers shall be shared equally by the Centre and State.\r\ny When the weather indices (rainfall/ temperature/relative humidity/wind \r\nspeed etc.) is different (less or higher) from the Guaranteed Weather \r\nIndex of notified crops, the claim payment equal to deviation/shortfall is \r\npayable to all insured farmers of notified area.\r\ny Provision for assessment of losses caused by hailstorm and cloudburst at \r\nindividual farm level.\r\ny Implementing agency will be selected by the State Government through \r\nbid.', ''),
(5, 'AGRICULTURAL INSURANCE', 'Coconut Palm \r\nInsurance Scheme \r\n(CPIS)', 'Insurance protection for Coconut Palm growers.\r\ny Premium rate per palm ranges from Rs. 9.00 (in the plant age group of 4 \r\nto 15 years) to Rs. 14.00 (in the plant age group of 16-60 years).\r\ny 50-75% subsidy of premium is provided to all types of farmers.\r\ny When the palm damaged, the claim payment equal to input cost loss \r\ndamage is payable to the insured in notified areas.', ''),
(6, 'AGRICULTURAL INSURANCE', 'Unified Package \r\nInsurance Scheme \r\n(UPIS) as pilot in \r\nnotified districts.', 'To provide financial protection & comprehensive risk coverage of crops, \r\nassets, life, and student safety to farmers.\r\ny Pilot will include seven section Viz., crop Insurance (PMFBY/WBCIS), Loss \r\nof Life (PMJJBY), Accidental Death & Disability (PMSBY), Student Safety, \r\nHousehold, Agriculture implements & Tractor.\r\ny Crop Insurance will be compulsory. However, farmers can choose at least \r\ntwo section from remaining.\r\ny Farmers may be able to get all requisite insurance products for farmers \r\nthrough one simple proposal/ application Form and through single \r\nwindow.\r\ny Two flagship schemes of the Government viz PMSBY & PMJJBY have been \r\nincluded apart from insurance of assets.\r\ny Pilot scheme will be implemented through single window.\r\ny Processing of claims (other than Crop Insurance) on the basis of individual \r\nclaim report.', ''),
(7, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Distribution of \r\nMicronutrients & soil \r\nameliorants.', 'Soil Health Card scheme', 'Rs. 2500/ha'),
(8, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Soil Health Card scheme', '50 % cost of the material + \r\ntransportation limited to Rs. 750 per \r\nhectare', 'National Food Security \r\nMission (Oil Seed & Oil Palm)'),
(9, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Supply of gypsum \r\nphosphogypsum / \r\nbentonite sulphur. Wheat \r\n& Pulses', 'National Food Security \r\nMission (NFSM), BGREI', '50% of the cost limited to Rs. 750/ - per \r\nhectare'),
(10, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Micronutrients (Rice, \r\nWheat, Pulses & NutriCereals)', 'NFSM & BGREI', '50% of the cost limited to Rs. 500/-per ha.'),
(11, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Lime/liming materials (Rice \r\n& Pulses)', 'NFSM & BGREI', '50% of the cost of the material limited to \r\nRs.1000/ha.'),
(12, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Bio-fertilizers (Pulses NurtiCereals)', 'BGREI/ NFSM', '50 % of the cost limited to Rs. 300 per ha'),
(13, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Adoption of Organic \r\nFarming', 'National Horticulture \r\nMission(NHM)/ Horticulture \r\nMission for North-East and \r\nHimalayan States (HMNEH) - \r\nSub schemes under Mission \r\nfor Integrated Development \r\nof Horticulture (MIDH)', 'Rs. 10,000 per hectare for maximum area \r\nof 4 ha per beneficiary spread over a \r\nperiod of 3 years involving assistance of \r\nRs. 4000 in first year and Rs. 3000 each in \r\nsecond and third year.'),
(14, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Vermi-Compost Unit \r\n(dimension of permanent \r\nstructure to be \r\nadministered on)', 'NHM/HMNEH Sub schemes \r\nunder MIDH', 'Rs. 50,000 /- per unit (having dimension \r\nof 30 ft x 8 ft x 2.5 ft or 600 cft, on \r\nprorata basis'),
(15, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'High Density Poly Ethylene \r\n(HDPE) Vermi Bed', 'NHM/HMNEH Sub schemes \r\nunder MIDH', 'Rs. 8,000 /- per unit (having dimension \r\nof 12 ft x 4 ft x 2 ft or 96 cu ft, on \r\nprorata basis and is 15907:2010 to be \r\nadministered on)'),
(16, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Promotion of Integrated \r\nNutrient Management', 'NHM/HMNEH Sub schemes \r\nunder MIDH', 'Rs. 1,200 /- per hectare (upto an area of 4 \r\nhectares)'),
(17, 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Setting up of new \r\nMobile/Static Soil Testing \r\nLaboratories (MSTL/SSTL)', 'NMSA', '33% of cost limited to Rs 25 lakh/lab \r\nfor individual/private agencies through \r\nNABARD as capital investment for 10,000 \r\nsamples per annum analysing capacity.'),
(18, 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', 'Drip Irrigation', 'Financial assistance up to 55% for small & marginal \r\nfarmers and 45% for other farmers.\r\nIndicative cost of drip Irrigation system ranges \r\nfrom Rs. 21643 to Rs. 112237 per hectare \r\ndepending upon the spacing of drip lateral pipes \r\nand land size.\r\nMaximum permissible assistance will be restricted \r\nto 5 hectare per beneficiary.', 'Per Drop More \r\nCrop component \r\nof Pradhan Mantri \r\nKrishi Sinchayee \r\nYojana (PMKSY)'),
(19, 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', 'Sprinkler Irrigation \r\n(Portable, mini, micro, \r\nsemi, permanent, large \r\nvolume/Raingun etc.)', 'Financial assistance up to 55% for small & marginal \r\nfarmers and 45% for other farmers.\r\nIndicative cost of sprinkler irrigation system \r\nranges from Rs. 19542 to Rs. 94028 per hectare \r\ndepending upon the spacing of sprinkler pipes, \r\ntype of sprinkler system and land size.\r\nMaximum permissible assistance will be restricted \r\nto 5 hectare per beneficiary', ''),
(20, 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', 'Water Harvesting System \r\nfor individuals', '50% of cost (Construction cost Rs. 125/- for plane \r\nand Rs. 150/- per cu m for hilly areas) limited to Rs. \r\n75,000/-, for plane areas and Rs. 90,000/- for hilly \r\nareas including lining. \r\nFor smaller size of the ponds/dug wells, cost \r\nadmissible on pro rata basis. Cost for non-lined \r\nponds/tanks will be 30% less.', 'RAD component of \r\nNMSA'),
(21, 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', 'Lining of Tanks/ Ponds \r\nconstructed under \r\nMNREGA/WSDP etc', '50% cost of plastic/RCC lining limited to Rs. \r\n25,000/- per pond/tank/well.', ''),
(22, 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', 'Water Harvesting System \r\nfor communities:\r\nConstruction of \r\nCommunity tanks/onfarm ponds/check dams/\r\nreservoirs with use of \r\nplastic/RCC lining on \r\npublic land.', '100% of the cost limited to Rs. 20 lakhs/unit in \r\nplain areas, Rs.25 lakhs/unit in hilly areas, for 10 ha \r\nof command area or any other smaller size on pro \r\nrata basis depending upon the command areas. \r\nCost for non-lined ponds/tanks will be 30% less.', ''),
(23, 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', '(i) Construction of \r\nSecondary Storage \r\nStructures with Poly lining, \r\nprotective fence at fesible \r\nlocations', '50% of cost limited to Rs. 100 per cum of storage \r\ncapacity. Maximum permissible assistance will be \r\nrestricted to Rs. 2 lakh per beneficiary', 'RAD component of \r\nNMSA'),
(24, 'HORTICULTURE', 'Open pollinated \r\ncrops', 'For public sector 100%, for private sector 35% \r\nin general area, 50% in NE & Himalayan States, TSP \r\nareas, A&N and Lakshadweep Islands limited to \r\n5 ha. Output target of seed for each crop will be \r\nfixed by the individual state', 'Rs. 35,000/- per ha for \r\nopen pollinated crops.'),
(25, 'HORTICULTURE', 'Hybrid seeds', 'For public sector 100%, for private sector 35% \r\nin general area and 50% in NE & Himalayan States, \r\nTSP areas, A&N and Lakshadweep Islands limited \r\nto 5 ha. Output target of seed for each crop will be \r\nfixed by the individual states for each beneficiary, \r\nbefore releasing funds.', 'Rs. 1.50 lakh /- per ha.'),
(26, 'HORTICULTURE', 'Hi-tech Nursery \r\n(4 ha/unit)', '100% to public sector limited to Rs. 100 lakh/ \r\nunit and in case of private sector, credit linked \r\nback-ended subsidy @40% of cost, subject to a \r\nmaximum of Rs. 40 lakh/unit, for a maximum of \r\n4 ha. as project based activity on prorate basis. \r\nEach nursery will produce a minimum of 50,000 \r\nnumbers per hectare of mandated perennial \r\nfruit crops/ tree spices/ aromatic trees/plantation \r\ncrops per year, duly certified for its quality', 'Rs. 25.00 lakh per ha'),
(27, 'HORTICULTURE', 'Small Nursery (1ha \r\nunit)', '100% to public sector and in case of private \r\nsector, credit linked back-ended subsidy of cost, \r\nsubject to a maximum of Rs. 7.50 lakh/unit, as \r\nproject based activity. Each nursery will produce \r\na minimum of 25,000 numbers of mandated \r\nperennial vegetatively propagated fruits plants \r\n/ tree spices/ aromatic trees/plantation crops per \r\nyear, duly certified for its quality.', 'Rs. 15.00 lakh per ha'),
(28, 'Seeds', 'Oilseeds \r\n(groundnut, \r\nsoybean \r\nsunflower, toria, \r\nsafflower, sesame, \r\nniger,mustard, \r\nrapeseed, linseed \r\nand castor', 'Assistance @ 50% of cost limited to Rs. 4000/qtl for varieties of \r\noilseeds not older than 15 years except Sesame. Assistance for \r\ndistribution of hybrid seeds and variety of sesame is Rs. 8000/qtl.', 'National Mission \r\non Oilseed & Oil \r\nPalm (NMOOP)'),
(29, 'Seeds', 'For all crops,\r\ndistribution of \r\nfoundation/\r\ncertified seeds \r\nfor production \r\nof quality seeds \r\nto improve \r\nthe quality of \r\nfarm-saved \r\nseeds (GOI Share \r\n60% and State \r\nShare 40% and \r\nfor Himalayan \r\nstates and North \r\nEastern states \r\nGOI share 90% \r\nand these states \r\nshae 10%)', '50% cost of seeds of cereals, 60% of the cost of seeds of oilseeds, \r\npulses, fodder, green manure crops etc. required for a one-acre \r\narea per farmer.', 'Sub- Mission \r\non Seed and \r\nPlanting Material \r\n(SMSP) under \r\nthe component \r\nSeed Village \r\nProgramme.'),
(30, 'Seeds', 'Distribution of \r\nfoundation/\r\ncertified seeds of \r\noilseeds, pulses, \r\nfodder, and green \r\nmanure crops \r\netc. for farmers, \r\nSHGs, FPOs \r\netc. (GOI Share \r\n60% and State \r\nShare 40% and \r\nfor Himalayan \r\nstates and North \r\nEastern states \r\nGOI share 90% \r\nand these states \r\nshae 10%)', '75% cost of seeds of oilseeds, pulses, fodder, green manure crops', '. Sub Mission \r\non Seeds and \r\nPlanting Material \r\nunder certified \r\nproduction of \r\noilseeds, pulses, \r\nfodder and \r\ngreen manure \r\ncrops through \r\nSeed Village \r\nProgramme.'),
(31, 'Seeds', 'Cultivation/\r\nmaintenance \r\ncost as \r\nassistance/ \r\nmaintenance for \r\ngestation period \r\nfor oil palm', '50% of cost during gestation period for four years with a ceiling of \r\nRs. 20,000/- per hectare@ Rs. 5000/ha/year up to 25 ha', ''),
(32, 'Seeds', 'Jute and Mesta \r\nSeed village \r\nprogramme', 'Rs. 5,500 per quintal of certified seed produced', 'NFSM \r\nCommercial \r\nCrops (Jute)'),
(33, 'TRAINING AND EXTENSION FOR FARMERS', 'Seed Village Programme \r\n(SMSP)', 'Training of groups of 50-150 \r\nfarmers on seed production and \r\nseed technology aspect.', 'Rs. 15,000/- per group'),
(34, 'TRAINING AND EXTENSION FOR FARMERS', 'Training of Farmers in \r\nrecognized institutes (stipend, \r\nboarding, lodging and to & fro \r\ntransportation cost would be \r\nprovided to farmers).', 'Rs. 5200/- per farmer per month', 'Post Harvest Technology \r\nManagement'),
(35, 'TRAINING AND EXTENSION FOR FARMERS', 'Farmers’ training', 'NMOOP', 'Rs. 24,000/- per training for 2 days for \r\n30 farmers per batch (@ Rs. 400/- per \r\nfarmer per day).'),
(36, 'TRAINING AND EXTENSION FOR FARMERS', 'Promotion of Farmers’ \r\nAssociations/ Groups of 15-20 \r\nfarmers and tie up with Financial \r\nInstitutions and Aggregators', 'VIUC', 'Rs. 4075/- per farmer in three \r\ninstallments spread over 3 years'),
(37, 'TRAINING AND EXTENSION FOR FARMERS', 'Organization of awareness \r\nprogramme for the farmers on \r\nthe Gramin Bhandaran Yojana by \r\nNational Institute of Agricultural \r\nMarketing (NIAM),Jaipur (for 3 \r\ndays duration)', 'Gramin Bhandaran \r\nYojana', 'Rs. 30,000/ programme'),
(38, 'TRAINING AND EXTENSION FOR FARMERS', 'Training of farmers outside the \r\nstate upto 50 man-days / block', 'ATMA Scheme, Sub \r\nschemes NHM/HMNEH \r\nunder MIDH', 'Rs. 1250/ farmer per day which \r\nincludes transportation, boarding and \r\nlodging of farmers'),
(39, 'TRAINING AND EXTENSION FOR FARMERS', 'Training of farmers within the \r\nState(100 man-days / block)', 'ATMA Scheme', 'Rs. 1000 /- per farmer per day which \r\nincludes transportation, boarding and \r\nlodging of farmers'),
(40, 'TRAINING AND EXTENSION FOR FARMERS', 'Exposure Visit of farmers outside \r\nthe state for 7 days \r\n(4 farmers per block)', 'ATMA Scheme', 'Rs. 1000/- farmer per day which \r\nincludes transportation, boarding and \r\nlodging of farmers'),
(41, 'PLANT PROTECTION', 'Green Revolution \r\n(Krishonnati Yojana) \r\nSub Mission on Plant \r\nProtection and Plant \r\nQuarantine (SMPP)', 'Two days training programme for \r\nfarmers, NGOs, pesticide dealers \r\nheld under the supervision of \r\nCIPMC in villages, towns and \r\ncities.', 'Rs. 71,000/- per training'),
(42, 'PLANT PROTECTION', 'Green Revolution \r\n(Krishonnati Yojana) \r\nSub Mission on Plant \r\nProtection and Plant \r\nQuarantine (SMPP)', 'Five days training programme \r\nfor progressive farmers and \r\nextension officers held under the \r\nsupervision of CIPMC in Staterun institutions.', 'Rs. 3,30,600/- per training programme'),
(43, 'PLANT PROTECTION', 'Green Revolution \r\n(Krishonnati Yojana) \r\nSub Mission on Plant \r\nProtection and Plant \r\nQuarantine (SMPP)', 'Farmers Field School organized \r\nthrough various Central \r\nIntegrated Pest Management \r\nCentres(CIPMC)', 'Rs. 85,900/- per field school'),
(44, 'PLANT PROTECTION', 'Green Revolution \r\n(Krishonnati Yojana) \r\nSub Mission on Plant \r\nProtection and Plant \r\nQuarantine (SMPP)', 'Farmers Field School through \r\nKrishi Vigyan Kendras (KVK)', 'Rs. 90,800/- per field school'),
(45, 'PLANT PROTECTION', 'National Food Security \r\nMission & BRREI', 'Weedicides', 'Rs. 500 – per ha or 50% of the cost \r\nwhichever is less'),
(46, 'PLANT PROTECTION', 'NHM/HMNEH Sub \r\nschemes under MIDH', 'Integrated Pest Management in \r\nHorticultural Crops', 'Limited to 4 hectares per beneficiary @ \r\nRs. 1000 per hectare.'),
(47, 'SUSTAINABLE AGRICULTURE', 'RAD component of \r\nNational Mission for \r\nSustainable Agriculture \r\n(NMSA)', 'Cropping System (CS) with rice, \r\nwheat, coarse cereal/oil-seed/\r\nfibre/pulse based two crops.', '50% of input cost limited to Rs. 10,000/-\r\nper ha with permissible assistance of \r\nmaximum 2 ha per beneficiary.'),
(48, 'SUSTAINABLE AGRICULTURE', 'National Mission for \r\nSustainable Agriculture \r\n(NMSA)', 'Cross Breed Cows + Mixed \r\nfarming + Fodder Buffalo \r\n+Mixed farming +Fodder Cow/\r\nbuffalo+dairy+fodder cow/\r\nbuffalo + small ruminants', '50% of input cost of Cropping System \r\n(CS) including cost of animals with one \r\nyear concentrated food limited to Rs. \r\n40,000/- per ha (2 milch animals + 1 \r\nha CS)with permissible assistance of \r\nmaximum 2 ha/beneficiaryary'),
(49, 'SUSTAINABLE AGRICULTURE', 'National Mission for \r\nSustainable Agriculture \r\n(NMSA)', 'ational Mission for \r\nSustainable Agriculture \r\n(NMSA)', 'Construction of silo Pit of 2100-2500 \r\ncubic feet with brick and cement \r\nmortar (either below ground or above \r\nground ) with provision of Chaff Cutter \r\nand Weighing Balance \r\n100 % assistance for silage making unit \r\nconsisting of Silo Pit Chaff cutter and \r\nWeighing Balance limited to Rs. 1.25 \r\nlakh per farm family');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-20 21:15:57.779073', 'Pradhan Mantri Fasal Bima Yojana (PMFBY)', 'Schemes object (Pradhan Mantri Fasal Bima Yojana (PMFBY))', 1, '[{\"added\": {}}]', 34, 5),
(2, '2023-04-20 21:16:49.734786', 'SOIL CONSERVATION AND MICRONUTRIENTS', 'Schemes object (SOIL CONSERVATION AND MICRONUTRIENTS)', 1, '[{\"added\": {}}]', 34, 5),
(3, '2023-04-20 21:21:18.553470', 'IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', 'Schemes object (IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes)', 1, '[{\"added\": {}}]', 34, 5),
(4, '2023-04-20 21:25:24.654559', '1', 'Benifits object (1)', 1, '[{\"added\": {}}]', 33, 5),
(5, '2023-04-20 21:25:30.634365', '1', 'Benifits object (1)', 2, '[]', 33, 5),
(6, '2023-04-22 10:49:27.167710', '2', 'Benifits object (2)', 1, '[{\"added\": {}}]', 33, 5),
(7, '2023-04-22 10:55:01.553764', '3', 'Benifits object (3)', 1, '[{\"added\": {}}]', 33, 5),
(8, '2023-04-22 11:09:47.705557', '4', 'Benifits object (4)', 1, '[{\"added\": {}}]', 33, 5),
(9, '2023-04-22 19:13:49.275249', 'Agricultural Marketing', 'Schemes object (Agricultural Marketing)', 1, '[{\"added\": {}}]', 34, 5),
(10, '2023-04-22 19:15:14.105600', '5', 'Benifits object (5)', 1, '[{\"added\": {}}]', 33, 5),
(11, '2023-04-22 19:16:57.816494', 'AGRICULTURAL INSURANCE', 'Schemes object (AGRICULTURAL INSURANCE)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 34, 5),
(12, '2023-04-22 19:17:48.048233', '5', 'Benifits object (5)', 2, '[{\"changed\": {\"fields\": [\"Stitle\"]}}]', 33, 5),
(13, '2023-04-22 19:17:57.965577', '4', 'Benifits object (4)', 2, '[{\"changed\": {\"fields\": [\"Stitle\"]}}]', 33, 5),
(14, '2023-04-22 19:18:02.927357', '3', 'Benifits object (3)', 2, '[{\"changed\": {\"fields\": [\"Stitle\"]}}]', 33, 5),
(15, '2023-04-22 19:18:18.178361', 'Pradhan Mantri Fasal Bima Yojana (PMFBY)', 'Schemes object (Pradhan Mantri Fasal Bima Yojana (PMFBY))', 3, '', 34, 5),
(16, '2023-04-22 19:19:22.425682', '6', 'Benifits object (6)', 1, '[{\"added\": {}}]', 33, 5),
(17, '2023-04-25 20:04:35.441340', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 53, 5),
(18, '2023-04-25 21:44:55.156130', '4', 'Questions object (4)', 3, '', 19, 5),
(19, '2023-04-26 00:00:08.154066', '7', 'Answers object (7)', 3, '', 18, 5),
(20, '2023-04-26 00:00:08.163263', '2', 'Answers object (2)', 3, '', 18, 5),
(21, '2023-04-26 00:19:55.868950', 'ORGANIC FARMING', 'Schemes object (ORGANIC FARMING)', 1, '[{\"added\": {}}]', 34, 5),
(22, '2023-04-26 00:19:58.059409', 'ORGANIC FARMING', 'Schemes object (ORGANIC FARMING)', 2, '[]', 34, 5),
(23, '2023-04-26 00:21:25.310464', 'HORTICULTURE', 'Schemes object (HORTICULTURE)', 1, '[{\"added\": {}}]', 34, 5),
(24, '2023-04-26 00:21:55.637311', 'Beekeeping', 'Schemes object (Beekeeping)', 1, '[{\"added\": {}}]', 34, 5),
(25, '2023-04-26 00:22:31.960251', 'Seeds', 'Schemes object (Seeds)', 1, '[{\"added\": {}}]', 34, 5),
(26, '2023-04-26 00:24:02.369868', 'ection of Plant Varieties and  Farmers’ Rights', 'Schemes object (ection of Plant Varieties and  Farmers’ Rights)', 1, '[{\"added\": {}}]', 34, 5),
(27, '2023-04-26 00:24:54.064947', 'MECHANIZATION AND TECHNOLOGY', 'Schemes object (MECHANIZATION AND TECHNOLOGY)', 1, '[{\"added\": {}}]', 34, 5),
(28, '2023-04-26 00:25:50.458919', 'TRAINING AND EXTENSION FOR FARMERS', 'Schemes object (TRAINING AND EXTENSION FOR FARMERS)', 1, '[{\"added\": {}}]', 34, 5),
(29, '2023-04-26 00:26:53.397280', 'AGRICULTURAL CREDIT', 'Schemes object (AGRICULTURAL CREDIT)', 1, '[{\"added\": {}}]', 34, 5),
(30, '2023-04-26 00:27:41.293291', 'AGRICULTURAL CREDIT', 'Schemes object (AGRICULTURAL CREDIT)', 2, '[{\"changed\": {\"fields\": [\"Tocontact\"]}}]', 34, 5),
(31, '2023-04-26 00:28:11.812293', 'PLANT PROTECTION', 'Schemes object (PLANT PROTECTION)', 1, '[{\"added\": {}}]', 34, 5),
(32, '2023-04-26 00:28:53.622414', 'SUSTAINABLE AGRICULTURE', 'Schemes object (SUSTAINABLE AGRICULTURE)', 1, '[{\"added\": {}}]', 34, 5),
(33, '2023-04-26 00:29:36.127651', 'Model Contract Farming Act 2018', 'Schemes object (Model Contract Farming Act 2018)', 1, '[{\"added\": {}}]', 34, 5),
(34, '2023-04-26 00:30:35.171697', 'Model Agriculture land  leasing Act 2016', 'Schemes object (Model Agriculture land  leasing Act 2016)', 1, '[{\"added\": {}}]', 34, 5),
(35, '2023-04-26 00:34:27.174386', '7', 'Benifits object (7)', 1, '[{\"added\": {}}]', 33, 5),
(36, '2023-04-26 00:35:06.870357', '8', 'Benifits object (8)', 1, '[{\"added\": {}}]', 33, 5),
(37, '2023-04-26 00:35:30.943236', '9', 'Benifits object (9)', 1, '[{\"added\": {}}]', 33, 5),
(38, '2023-04-26 00:35:53.699812', '10', 'Benifits object (10)', 1, '[{\"added\": {}}]', 33, 5),
(39, '2023-04-26 00:36:32.173419', '11', 'Benifits object (11)', 1, '[{\"added\": {}}]', 33, 5),
(40, '2023-04-26 00:36:54.071262', '12', 'Benifits object (12)', 1, '[{\"added\": {}}]', 33, 5),
(41, '2023-04-26 00:37:25.147110', '13', 'Benifits object (13)', 1, '[{\"added\": {}}]', 33, 5),
(42, '2023-04-26 00:38:22.305858', '14', 'Benifits object (14)', 1, '[{\"added\": {}}]', 33, 5),
(43, '2023-04-26 00:38:54.967240', '15', 'Benifits object (15)', 1, '[{\"added\": {}}]', 33, 5),
(44, '2023-04-26 00:39:19.466254', '16', 'Benifits object (16)', 1, '[{\"added\": {}}]', 33, 5),
(45, '2023-04-26 00:39:45.440432', '17', 'Benifits object (17)', 1, '[{\"added\": {}}]', 33, 5),
(46, '2023-04-26 00:40:41.487820', '18', 'Benifits object (18)', 1, '[{\"added\": {}}]', 33, 5),
(47, '2023-04-26 00:41:08.787258', '19', 'Benifits object (19)', 1, '[{\"added\": {}}]', 33, 5),
(48, '2023-04-26 00:41:33.468352', '20', 'Benifits object (20)', 1, '[{\"added\": {}}]', 33, 5),
(49, '2023-04-26 00:41:52.451037', '21', 'Benifits object (21)', 1, '[{\"added\": {}}]', 33, 5),
(50, '2023-04-26 00:42:24.496038', '22', 'Benifits object (22)', 1, '[{\"added\": {}}]', 33, 5),
(51, '2023-04-26 00:42:44.082097', '23', 'Benifits object (23)', 1, '[{\"added\": {}}]', 33, 5),
(52, '2023-04-26 00:44:35.455353', '24', 'Benifits object (24)', 1, '[{\"added\": {}}]', 33, 5),
(53, '2023-04-26 00:45:23.184258', '25', 'Benifits object (25)', 1, '[{\"added\": {}}]', 33, 5),
(54, '2023-04-26 00:45:46.470050', '24', 'Benifits object (24)', 2, '[{\"changed\": {\"fields\": [\"Assistance\"]}}]', 33, 5),
(55, '2023-04-26 00:46:19.207747', '26', 'Benifits object (26)', 1, '[{\"added\": {}}]', 33, 5),
(56, '2023-04-26 00:46:59.092624', '27', 'Benifits object (27)', 1, '[{\"added\": {}}]', 33, 5),
(57, '2023-04-26 00:48:40.775306', '28', 'Benifits object (28)', 1, '[{\"added\": {}}]', 33, 5),
(58, '2023-04-26 00:49:24.186233', '29', 'Benifits object (29)', 1, '[{\"added\": {}}]', 33, 5),
(59, '2023-04-26 00:49:45.564081', '30', 'Benifits object (30)', 1, '[{\"added\": {}}]', 33, 5),
(60, '2023-04-26 00:50:08.746247', '31', 'Benifits object (31)', 1, '[{\"added\": {}}]', 33, 5),
(61, '2023-04-26 00:50:39.087828', '32', 'Benifits object (32)', 1, '[{\"added\": {}}]', 33, 5),
(62, '2023-04-26 00:52:01.997549', '33', 'Benifits object (33)', 1, '[{\"added\": {}}]', 33, 5),
(63, '2023-04-26 00:52:27.198190', '34', 'Benifits object (34)', 1, '[{\"added\": {}}]', 33, 5),
(64, '2023-04-26 00:52:56.665784', '35', 'Benifits object (35)', 1, '[{\"added\": {}}]', 33, 5),
(65, '2023-04-26 00:53:16.710612', '36', 'Benifits object (36)', 1, '[{\"added\": {}}]', 33, 5),
(66, '2023-04-26 00:53:32.570035', '35', 'Benifits object (35)', 2, '[{\"changed\": {\"fields\": [\"Assistance\", \"Criteria\"]}}]', 33, 5),
(67, '2023-04-26 00:54:06.702675', '37', 'Benifits object (37)', 1, '[{\"added\": {}}]', 33, 5),
(68, '2023-04-26 00:54:28.106028', '38', 'Benifits object (38)', 1, '[{\"added\": {}}]', 33, 5),
(69, '2023-04-26 00:54:54.850588', '39', 'Benifits object (39)', 1, '[{\"added\": {}}]', 33, 5),
(70, '2023-04-26 00:55:22.749287', '40', 'Benifits object (40)', 1, '[{\"added\": {}}]', 33, 5),
(71, '2023-04-26 00:56:25.466115', '41', 'Benifits object (41)', 1, '[{\"added\": {}}]', 33, 5),
(72, '2023-04-26 00:56:53.330015', '42', 'Benifits object (42)', 1, '[{\"added\": {}}]', 33, 5),
(73, '2023-04-26 00:57:13.378254', '43', 'Benifits object (43)', 1, '[{\"added\": {}}]', 33, 5),
(74, '2023-04-26 00:57:45.099015', '44', 'Benifits object (44)', 1, '[{\"added\": {}}]', 33, 5),
(75, '2023-04-26 00:58:10.791513', '45', 'Benifits object (45)', 1, '[{\"added\": {}}]', 33, 5),
(76, '2023-04-26 00:58:36.979936', '46', 'Benifits object (46)', 1, '[{\"added\": {}}]', 33, 5),
(77, '2023-04-26 00:59:36.213256', '47', 'Benifits object (47)', 1, '[{\"added\": {}}]', 33, 5),
(78, '2023-04-26 01:00:54.573397', '48', 'Benifits object (48)', 1, '[{\"added\": {}}]', 33, 5),
(79, '2023-04-26 01:01:24.186199', '49', 'Benifits object (49)', 1, '[{\"added\": {}}]', 33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(20, 'discussapp', 'answers'),
(21, 'discussapp', 'authgroup'),
(22, 'discussapp', 'authgrouppermissions'),
(23, 'discussapp', 'authpermission'),
(32, 'discussapp', 'authuser'),
(24, 'discussapp', 'authusergroups'),
(25, 'discussapp', 'authuseruserpermissions'),
(35, 'discussapp', 'benifits'),
(26, 'discussapp', 'djangoadminlog'),
(27, 'discussapp', 'djangocontenttype'),
(28, 'discussapp', 'djangomigrations'),
(29, 'discussapp', 'djangosession'),
(31, 'discussapp', 'farmer'),
(30, 'discussapp', 'questions'),
(36, 'discussapp', 'schemes'),
(37, 'Ecommerceapp', 'answers'),
(38, 'Ecommerceapp', 'authgroup'),
(39, 'Ecommerceapp', 'authgrouppermissions'),
(40, 'Ecommerceapp', 'authpermission'),
(51, 'Ecommerceapp', 'authuser'),
(41, 'Ecommerceapp', 'authusergroups'),
(42, 'Ecommerceapp', 'authuseruserpermissions'),
(43, 'Ecommerceapp', 'benifits'),
(44, 'Ecommerceapp', 'djangoadminlog'),
(45, 'Ecommerceapp', 'djangocontenttype'),
(46, 'Ecommerceapp', 'djangomigrations'),
(47, 'Ecommerceapp', 'djangosession'),
(52, 'Ecommerceapp', 'farmer'),
(48, 'Ecommerceapp', 'products'),
(49, 'Ecommerceapp', 'questions'),
(50, 'Ecommerceapp', 'schemes'),
(6, 'sessions', 'session'),
(18, 'welcomeapp', 'answers'),
(7, 'welcomeapp', 'authgroup'),
(8, 'welcomeapp', 'authgrouppermissions'),
(9, 'welcomeapp', 'authpermission'),
(16, 'welcomeapp', 'authuser'),
(10, 'welcomeapp', 'authusergroups'),
(11, 'welcomeapp', 'authuseruserpermissions'),
(33, 'welcomeapp', 'benifits'),
(12, 'welcomeapp', 'djangoadminlog'),
(13, 'welcomeapp', 'djangocontenttype'),
(14, 'welcomeapp', 'djangomigrations'),
(15, 'welcomeapp', 'djangosession'),
(17, 'welcomeapp', 'farmer'),
(53, 'welcomeapp', 'products'),
(19, 'welcomeapp', 'questions'),
(34, 'welcomeapp', 'schemes');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-18 17:26:40.074320'),
(2, 'auth', '0001_initial', '2023-04-18 17:26:40.815786'),
(3, 'admin', '0001_initial', '2023-04-18 17:26:41.000164'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-18 17:26:41.051334'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-18 17:26:41.065023'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-18 17:26:41.159942'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-18 17:26:41.242400'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-18 17:26:41.270055'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-18 17:26:41.283269'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-18 17:26:41.341303'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-18 17:26:41.349514'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-18 17:26:41.367598'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-18 17:26:41.402225'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-18 17:26:41.442697'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-18 17:26:41.482273'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-18 17:26:41.498273'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-18 17:26:41.554484'),
(18, 'sessions', '0001_initial', '2023-04-18 17:26:41.622167'),
(19, 'welcomeapp', '0001_initial', '2023-04-18 17:58:31.953548'),
(20, 'discussapp', '0001_initial', '2023-04-18 18:40:19.929963'),
(21, 'welcomeapp', '0002_answers_questions', '2023-04-18 18:40:19.935908'),
(22, 'discussapp', '0002_benifits_schemes', '2023-04-20 21:12:46.639063'),
(23, 'welcomeapp', '0003_benifits_schemes', '2023-04-20 21:12:46.643098'),
(24, 'Ecommerceapp', '0001_initial', '2023-04-25 19:54:20.247610');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('krrrdjrwxtut6vyt9na5wsz7w6zxwhtk', '.eJxVjEEOwiAQRe_C2hAGpiAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtQUeNmtlYa4xCmyg5dS7gYPCWHXuXVNYEVBB1RF08IFpwhk32YIp4fwC-Zjba:1prOqA:wXXo-tcg17KbroXtWHHoG-GmHQDzoLpBb77ZbJxjeKg', '2023-05-09 20:00:42.649202'),
('ymanv6nsjrpbvodh1pq4khnw05n7jg86', '.eJxVjEEOwiAQRe_C2hAGpiAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtQUeNmtlYa4xCmyg5dS7gYPCWHXuXVNYEVBB1RF08IFpwhk32YIp4fwC-Zjba:1prThm:SPeJKxbLsinPxHbovhUgM-NYKr2W_N-byortC43pHYk', '2023-05-10 01:12:22.180552');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `name`, `age`, `email`, `address`) VALUES
(21, 'pradwin sherigar', 21, 'pradwin@gmail.com', 'udupi'),
(22, 'abcd efgh', 59, 'abcd@gmail.com', 'mangalore'),
(25, 'abc xyz', 55, 'abc@gmail.com', 'mangalore'),
(26, 'vijay kumar', 47, 'vijay@gmail.com', 'bantakal');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `query_id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`query_id`, `fid`, `question`) VALUES
(1, 21, 'what is the last date of Pradhan Mantri Fasal  Bima Yojana (PMFBY)'),
(3, 21, 'what is farmassistant website');

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `title` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `tocontact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`title`, `about`, `tocontact`) VALUES
('AGRICULTURAL CREDIT', ' To save themselves from the clutches of money lenders, \r\nfarmers can avail loan facility from banks.\r\n Loan facility is available through a large network of \r\nCommercial Banks, Regional Rural Banks (RRBs) and \r\nCooperative Credit Institutions in the country to fulfill \r\nthe crop loan and term loan needs of the farmers.\r\n Ensure timely repayment of bank loan.\r\n Proper record of loan should be maintained by farmer.\r\n Utilize the bank loan for actual purpose for which bank loan is taken.', '1. Joint Secretary (Cooperation), Department of Agriculture Cooperation and Farmers Welfare, \r\nKrishi Bhawan, New Delhi.\r\n2. Regional Offices of NAFED & SFAC located in State Capitals. \r\n3. District Level Offices of Cooperative Marketing/Commodities Federations.\r\n4. Marketing Cooperative Societies at Tehsil Level and FPOs /FPCs at Block Level.'),
('AGRICULTURAL INSURANCE', ' Safeguard yourself financially against natural risks like  natural disasters/ calamities, insect, pests & diseases and  adverse weather conditions.   Take benefit of appropriate crop insurance scheme  applicable in your area.   Four insurance schemes are being implemented namely,  Pradhan Mantri Fasal Bima Yojana (PMFBY), Weather Based Crop Insurance Scheme (WBCIS),  Coconut Palm Insurance Scheme (CPIS) and Pilot Unified Package Insurance Scheme (UPIS) (45  districts).   Coverage under PMFBY/WBCIS/CPIS/UPIS is compulsory, if you avail crop loan for notified crops.   Coverage is voluntary for non-loanee farmers.   Contact District Agriculture officers of State Govt./nearest branch of bank/PACS Common  Service Centre (CSC) or crop insurance company operating in your area for availing the benefits  under the Crop Insurance Scheme.', 'Nearest branches of Bank/ PACS/Cooperative Banks/ Common Service Centre (CSC) Empanelled  General Insurance Companies notified for the area and District Agriculture Officer/Block  Development Officer may be contacted or visit web portal www.pmfby.gov.in.'),
('Agricultural Marketing', 'Farmer can get the price information of their produce which is available on Agmarknet\r\nwebsite (www.agmarknet.nic.in) or through Kisan Call Centres or SMS.\r\n Pull SMS to get information as and when you need is also available. \r\n Harvesting and threshing should be done at appropriate time.\r\n Proper grading, packing and labeling should be done before sale, for better prices.\r\n Transport of produce to proper market/mandi for getting remunerative price.\r\n Storage of produce should be done, for sale during off season, for maximum profit.\r\n Avoid distress sale.\r\n Farmers in a group may form marketing cooperatives and FPOs for better marketing reach.\r\n Marketing cooperatives may open retail and wholesale outlets.\r\n Farmers may also operate cold storages and warehouses to store the produce in order to avoid \r\ndistress sale\r\n\r\nTo develop Agricultural Marketing Infrastructure including Storage infrastructure, Ministry of \r\nAgriculture & Farmers Welfare is implementing capital investment subsidy sub-scheme \"Agricultural \r\nMarketing Infrastructure (AMI)\" of Integrated Scheme for Agricultural Marketing (ISAM). The \r\nerstwhile two schemes viz. (i) Grameen Bhandaran Yojana (GBY) implemented since 01.04.2001, \r\nand (ii) Scheme for Strengthening/Development of Agricultural Marketing Infrastructure, Grading \r\n& Standardization (AMIGS) implemented since 20.10.2004 have been subsumed into one scheme \r\nknown as Agricultural Marketing Infrastructure (AMI) w.e.f. 01.04.2014. The AMI sub-scheme of ISAM \r\nwas sanctioned for the XII plan Period (2012-17). At present the scheme is not available for any \r\ncategory of beneficiaries.\r\nFurther, to create additional Agricultural Marketing infrastructure projects including storage \r\nprojects across the country, the Government has approved relaunch of AMI sub-scheme for the \r\nperiod coterminous with 14th Finance Commission.', 'Dy. Agricultural Marketing Advisor (AMI), Directorate of Marketing & Inspection (DMI), CGO \r\nComplex, NH-IV, Faridabad (Haryana) Tel.: 0129-2434348; E-mail: rgs.agri@nic.in'),
('Beekeeping', ' Beekeeping is an agro-based rural activity practiced by poor/landless labourers/farmers/rural \r\nyouths/women, etc.\r\n Diversified agro climatic conditions of India provides great potential and opportunities for \r\nbeekeeping.\r\n Beekeeping generates income and employment without disturbing natural resources.\r\n Beekeeping/Honeybees converts nector and pollen (otherwise go waste) into food by producing \r\nhoney and other beehive products.\r\n Beekeeping also produces high value beehive products i.e. royal jelly, propolis, bee pollen, bee \r\nvenom, bee bread etc.\r\n Honey bees help in increasing yield of various horticultural crops (fruits and vegetables) and \r\nagricultural crops (oilseeds, pulses, etc.) by providing pollination support.\r\n Manyfold enhancement in the yield of various crops through pollination support by Beekeeping \r\nhas been recorded.', ' District Horticlture Officer\r\n Director Horticlture of the State Government\r\n Executiv Director, National Bee Board, B wing, 2nd Floor, Janpath Bhawan, Janpath Road, New \r\nDelhi, Ph. No. 011-23325265, E-mail: nationalbeeboard.2006@gmail.com'),
('ection of Plant Varieties and  Farmers’ Rights', 'The Protection of Plant Varieties and Farmers’ Rights (PPV&FR) Authority has been established \r\nunder PPV&FR Act, 2001 to grant Intellectual Property Rights to plant breeders, researchers and \r\nfarmers who have developed plant varieties (new and extant). The PPV&FR Authority registers \r\nfarmer’s varieties and also confers awards/rewards/recognitions to farming communities and \r\nfarmers engaged in conservation of plant genetic resources.\r\nA farmer also is a person engaged in agriculture, raising living organisms for food or raw \r\nmaterials. The term usually applies to people who do some combination of raising field crops, \r\norchards, vineyards, poultry, or other livestock.\r\n A farmer who engaged in agriculture and bred, developed or rising crops or other livestock for \r\na new variety shall be entitled for registration and other protection in like manner as a breeder \r\nof a variety. \r\n A farmer who is engaged in the conservation of genetic resources of landraces and wild relatives \r\nof economic plants and their improvement through selection and preservation shall be entitled \r\nin the prescribed manner for recognition and reward from the Gene Fund. Provided that material \r\nso selected and preserved has been used as donors of genes in varieties registrable.', 'District Agriculture Officer / Agriculture Block Development Office / Project Director ATMA/State \r\nSeed Corporation'),
('HORTICULTURE', ' Grow Horticultural Crops for higher income from lesser \r\narea.\r\n For healthy crop use high quality planting material.\r\n To keep fruits and vegetables fresh for longer period, use \r\ncold storage facility/cool houses.\r\n Earn maximum profit by adopting correct method of \r\nharvesting, cleaning, grading, processing and packaging.\r\n Produce off-season vegetables and flowers in poly-houses, low tunnels', 'District Horticulture Officer/Dy. Director (Horticulture) and Director, \r\nHorticulture at State level.'),
('IRRIGATION-Pradhan Mantri Krishi Sinchai Yojana & Other Schemes', ' Conserve soil and water through good Agricultural  Practices.  Harvest rain water through construction of check dams  and ponds.  Adopt crop diversification, seed production and nursery  raising in water logged areas.  Adopt drip and sprinkler irrigation system to save 30-37% water and enhance crop quality and  productivity.  Pradhan Mantri Krishi Sinchai Yojana (PMKSY) : PMKSY was approved by the Cabinet  Committee on Economic Affairs on 01.07.2015 with an outlay of Rs. 50,000 crore for a period of 5  years (2015-16 to 2019-20).  The vision of PMKSY is to ensure access to some means of protective irrigation to all agricultural  farms in the country - to produce ‘per drop more crop. Thus bringing much desired rural prosperity.  PMKSY is strategized by focusing on end-to end solution in irrigation supply chain, viz. water sources,  distribution network, efficient farm level applications, extension services on new technologies &  information etc. based on comprehensive planning process at district/State level', 'District Agriculture Officer / District Soil Conservation Officer / Project Director ATMA /District  Horticulture Officer'),
('MECHANIZATION AND TECHNOLOGY', ' Procure appropriate machinery/ equipment as per land \r\nholding size and crop. \r\n Machinery & equipment can be used by Custom Hiring/ \r\nsharing by groups of farmers. \r\n Conserve Resources - Use Zero-till Seed Drill, Laser \r\nLeveler, Happy Seeder, Rotavator, etc.\r\n Training is provided on proper use of Farm Machinery and its routine maintenance and servicing \r\nthrough Farm Machinery Training &Testing Institutes (FMTTIs), KVKs & State Agricultural \r\nUniversities.', 'District Agriculture Officer / District Horticulture Officer / Project Director ATMA'),
('Model Agriculture land  leasing Act 2016', ' This is very important step for land reforms through which needs of landlord as well as lease \r\nholder have been taken care.\r\n Through this act, the landlord can legally lease the land with mutual consent for agriculture and \r\nallied activities. In this act, it has been taken care that in any circumstances the leased holders\' \r\nclaim on land will not be valid.\r\n Lease holder may receive institutional loan, insurance and disaster relief so that he may invest \r\nmore and more in agriculture. \r\n In order to resolve the dispute between the landlord and lease holder, the provision of “Special \r\nLand Tribunal” has been made in the Civil Court.\r\n(NITI Aayog, Govt. of India has circulated draft Model Agriculture Land Leasing Act 2016 to all \r\nthe States for its adoption on dated Feb. 13, 2017 and Feb 23 2017)', 'District Agriculture Officer / District Horticulture Officer / Project Director ATMA'),
('Model Contract Farming Act 2018', ' Farmers and agriculture based industries has been linked for the first time by Government of \r\nIndia.\r\n Farmers will fetch better price for agriculture commodities and post harvest losses will be \r\nminimized due to this act. This act will create avenues for new employment in rural areas.\r\n Permanent structures could not be constructed in the land of farmers.\r\n Farmers Producer Organization (FPO) / Farmers Producer Companies (FPC) would be promoted \r\nso that farmers can be organized.\r\n If authorized by farmers then FPO/FPC can be a contract party.\r\n Contract farming sponsors will not have rights to transfer and dispossess possession of land, \r\ntitle & owners.\r\n According to the contract, the purchase of whole quantity of one or more agricultural produce, \r\nlivestock or contract agricultural product, at the pre-agreed rate is ensured.\r\n Provision of Contract Farming Facility (CFF) has been made to promote contract farming and \r\nservices at the village / Panchayat level.\r\n The provision of dispute settlement has been done at the lowest level so that it may be possible \r\nto reach there and the disputes can be handled as early as possible.', 'District Agriculture Officer / District Forest Officer'),
('ORGANIC FARMING', 'Promote Paramparagat Krishi Vikas Yojana (PKVY) for different crop/cropping system suitable to agroclimatic conditions\r\nIn organic farming use more bio-chemicals, bio-pesticides and bio-fertilizers.', 'At the state level : Director (Horticulture/ Agriculture) of States.\r\nAt District level : District Horticulture Officers, District Agricultural Officers/Project Director of \r\nStates.'),
('PLANT PROTECTION', ' Bio-pesticides should be given priority over chemical \r\npesticides.\r\n Pest Defender ratio to be assessed by farmers before \r\nusing any pesticide. Agro Eco System Analysis (AESA) \r\nbased Integrated Pest Management should be adopted.\r\n Grow such crops surrounding/near the main crop (inter \r\ncropping/border cropping) which attract farmer friendly \r\ninsects which can manage/kill harmful insects.\r\n Resort to deep ploughing during summer season.\r\n Use pest resistant varieties of crops and manage pests by adopting crop rotation, inter cropping \r\nand trap-cropping.\r\n Use light trap/sticky trap/pheromone trap for monitoring and mass trapping of the pests.\r\n Use parasitoids and predators for biological control of the insects/pests and antagonists for \r\ndiseases and bioagents for weed managements.\r\n Use chemical pesticides only if the above listed measures are not effective, that too as per the \r\nrecommendation of the experts.\r\nFollowing precautions should be taken while using pesticides.\r\n Follow all the prescribed safety precautions while using pesticides.\r\n While spraying the pesticides, always wear safety gadgets like mask, hand-gloves etc.\r\n Always spray in the direction of wind and keep yourself safe from the spray drift.\r\n Always keep pesticides, plant protection equipment etc. under lock and key away from children \r\nand pets.\r\n While purchasing pesticides, you must see the packing and validity date of the chemical.\r\n In case of any pesticide poisoning, immediately contact a doctor, also carry the empty container \r\nand information booklet of the pesticide used.\r\n Pesticides should be used as per the instructions on the label.\r\n Disposal of used containers should be as per the instructions given in leaflet', 'District Agriculture Officer / Project Director ATMA'),
('Seeds', ' Always use recommended variety of seeds as per local \r\nclimate and adopt recommended seed rate and other \r\npackage of practices.\r\n Replace seeds of wheat, paddy, barley, pulses (except \r\narhar), oilseeds (except rapeseed, mustard and \r\nsunflower) once in three years, seeds of maize, bajra, \r\njowar, arhar, rapeseed, mustard and sunflower once in \r\ntwo years and hybrid seeds every year.\r\n Always purchase certified quality seeds from authorized agencies and store the seeds in a cool, \r\ndry and clean place.\r\n Always use treated seeds for sowing and test for quality parameters like purity, germination, \r\nfree from weed seed etc. before sowing.', 'District Agriculture Officer / Agriculture Block Development Office / Project Director ATMA/State \r\nSeed Corporation'),
('SOIL CONSERVATION AND MICRONUTRIENTS', ' Always use appropriate quantity of fertilizer based on  soil test.  Use organic manures to maintain the fertility of soil.  In order to get maximum benefit of the fertilizers, always  apply in root zone instead of broadcasting.  Resort to judicious and efficient use of Phosphatic  Fertilizers for proper development of roots/shoots and timely maturity of crops, particularly the  legumes which fix atmospheric Nitrogen for enrichment of soil.  Farmers desirous of adopting Participatory Organic Guarantee System (PGS – India) Certification  system may form a group of at least 5 farmers and get it registered with the nearest Regional  Centre of Organic Farming. Soil Health Card: Soil health card has been launched on 19th February 2015. Under the scheme,  Soil health card will be provided to all farm holdings in the country at an interval of 2 years so as to  enable the farmers to apply appropriate recommended dosages of nutrients for crop production  and improving soil health and its fertility.', 'District Agriculture Officer / District Horticulture Officer / Project Director ATMA'),
('SUSTAINABLE AGRICULTURE', ' Promote crop / cropping system suitable to agro–\r\nclimatic conditions\r\n Diversify crop / cropping system adopting livestock, \r\nfisheries, horticulture, dairy, agro- forestry etc.\r\n Create source for protective irrigation through check \r\ndams, tanks, farm ponds, shallow / medium tube wells, \r\ndug wells etc. \r\n Technologies for improving water use and moisture conservation measures like efficient water \r\napplication system, land leveling , field bunding , contour bunding , trenches, mulching , ridge \r\nand furrow method etc . to be adopted.', 'District Agriculture Officer / District Horticulture Officer / Project Director ATMA'),
('TRAINING AND EXTENSION FOR FARMERS', ' 24,000 @ per block (1 BTM+ 3ATM) Extension \r\nfunctionaries dedicated for agricultural extension are \r\nbeing provided at the Block level and below, under \r\nthe Extension Reforms scheme ATMA. Contact them \r\nor any other functionary of the State Government in \r\nagriculture and allied departments to get answers \r\nfor your queries, information about any Programme/ \r\nScheme and appropriate technologies for the area or \r\nindividual farmer.\r\n Set up or participate in Farm School or Demonstration Plot.\r\n Get exact information from the web and get your farm registered through hand-held device. \r\n Tune in to agriculture related programmes on Doordarshan (18 Regional, 1 National, 180 Low \r\nPower Transmitters), FM Radio Stations (96) kisan channel or even some private channels to get \r\nlatest knowledge and information.\r\n Contact the nearest Kisan Call Centre (KCC) on toll free number 1800-180-1551 for answers to \r\nyour specific queries through the KCC agents or through senior experts from 6 AM to 10 PM on \r\nall 365 days in a year. \r\n Students with agriculture qualification can get 2 months training free of cost and can establish \r\nAgri-Clinic/Agri-Business Centre with the help of bank loan alongwith36% Subsidy (44% in case \r\nof SC/ST/ North East and Hill Regions/Women).\r\n Participate in exposure visits and trainings for progressive farmers.\r\n Get selected information & services from the web through interactive SMS (USSD) without \r\ninternet on your mobile.\r\n Access Farmers’ Portal directly or through an Internet Kiosk/a Common Service Centre to get \r\nlocation specific information (including package of practices, list of dealers, crop advisories etc.)\r\nBenefit from SMS Portal for Farmers by getting registered through Kisan Call Centre or Common \r\nService Centre or Pull SMS (KISAAN REG <Your Name>,<first four characters of State>,<first four \r\ncharacters of District>,<first four characters of block>) at 51969 or 9212357123', 'District Agriculture Officer / District Horticulture Officer / Project Director ATMA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `query_id` (`query_id`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `benifits`
--
ALTER TABLE `benifits`
  ADD PRIMARY KEY (`benifit_id`),
  ADD KEY `stitle` (`stitle`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benifits`
--
ALTER TABLE `benifits`
  MODIFY `benifit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`query_id`) REFERENCES `questions` (`query_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `farmer` (`fid`) ON DELETE CASCADE;

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `benifits`
--
ALTER TABLE `benifits`
  ADD CONSTRAINT `benifits_ibfk_1` FOREIGN KEY (`stitle`) REFERENCES `schemes` (`title`) ON DELETE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `farmer`
--
ALTER TABLE `farmer`
  ADD CONSTRAINT `farmer_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `farmer` (`fid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
