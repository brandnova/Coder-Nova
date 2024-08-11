-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2024 at 02:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codernova`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_infocontent`
--

CREATE TABLE `accounts_infocontent` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `section_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_infocontent`
--

INSERT INTO `accounts_infocontent` (`id`, `title`, `content`, `section_id`) VALUES
(1, 'How To Create Posts', '<p>Here&#39;s a descriptions for each field in the Article Upload form:</p>\r\n\r\n<p><br />\r\n<strong>Title</strong>: This is where you enter the title of your post.</p>\r\n\r\n<p><br />\r\n<strong>Slug</strong>: This is the unique, user-friendly URL for your post. It&rsquo;s automatically generated from the title, but you can edit it if needed.</p>\r\n\r\n<p><br />\r\n<strong>Author</strong>: Select your username as the author of the post.</p>\r\n\r\n<p><br />\r\n<strong>Type</strong>: Choose the type of content you&rsquo;re posting. For now, select &quot;Article&quot;. Additional types like &quot;DIY Project&quot; will be added later.</p>\r\n\r\n<p><br />\r\n<strong>Content</strong>: Create the main content of your post here. This field supports rich text formatting, similar to using a word processor like MS Word.</p>\r\n\r\n<p><br />\r\n<strong>Excerpt</strong>: Write a short summary of your content here. This excerpt will be displayed on the homepage where all articles are listed.</p>\r\n\r\n<p><br />\r\n<strong>Image</strong>: Upload a display image for your post. Adding a relevant image is recommended to make your post more visually appealing.</p>\r\n\r\n<p><br />\r\n<strong>Status</strong>: This indicates the publication status of your post. The default is &quot;Draft&quot; so you can edit your post until it&rsquo;s ready. Set it to &quot;Published&quot; when you want it to be publicly visible.</p>\r\n\r\n<p><br />\r\n<strong>Tags</strong>: Add relevant tags to your article to help users find it through filtering. Separate tags with commas and make sure they accurately reflect the content.</p>\r\n\r\n<p><br />\r\n<strong>Category</strong>: Select a category that best fits your content. You can create a new category if needed, but try to use existing ones to avoid too many categories.</p>\r\n\r\n<p><br />\r\n<strong>Frameworks</strong>: Select all the frameworks related to the content you&rsquo;re creating. This helps users filter content by frameworks. Ensure you only select relevant frameworks.</p>\r\n\r\n<p><br />\r\n<strong>Reading Time</strong>: Enter the approximate reading time for your post in minutes. For example, if it takes about 10 minutes to read, enter 10. If it takes more than an hour, convert the time to minutes.</p>\r\n\r\n<p><br />\r\n<strong>Views</strong>: This field is updated automatically as users view your post. No action is needed here.</p>\r\n\r\n<p><br />\r\n<strong>Likes and Dislikes</strong>: These fields are also updated automatically based on user engagement.</p>\r\n\r\n<p><br />\r\n<strong>SEO Title</strong>: This title is used for search engine optimization. It should be similar to your main title and will be displayed when your post is shared on social media.</p>\r\n\r\n<p><br />\r\n<strong>Meta Description</strong>: Write a short description for SEO purposes. This will be visible when your post is shared on social media. Keeping it concise and relevant will improve visibility. Consider using AI for suggestions.</p>\r\n\r\n<p><br />\r\n<strong>Meta Keywords</strong>: Enter keywords separated by commas to help with search engine optimization. These keywords make your post more discoverable on search engines. AI tools can help generate effective keywords.</p>\r\n\r\n<p><br />\r\n<strong>Allow Comments</strong>: Enable or disable comments for your post as desired.</p>\r\n\r\n<p><br />\r\n<strong>Featured</strong>: Mark your post as featured to have it displayed prominently on the sidebar of the homepage. Reserve this for special or trending topics.</p>\r\n\r\n<p><br />\r\n<strong>References</strong>: List any sources you used for research to avoid plagiarism complaints. This is optional but recommended if you reference other works.</p>\r\n\r\n<p><br />\r\n<strong>YouTube URL</strong>: If you have a relevant YouTube video, paste the link here. It will be embedded in the article, allowing users to stream the video directly from the article page. This is optional.</p>\r\n\r\n<p>&nbsp;</p>', 'creating-posts');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint(20) NOT NULL,
  `bio` longtext DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `bio`, `avatar`, `phone`, `user_id`, `cover_image`) VALUES
(1, 'Cool Coder', 'profile_images/IMG_2642_2_q9sy2TN.jpeg', '08141941192', 1, 'cover_images/Linkedin_Cover_new_CsdgxLT.png'),
(2, NULL, 'default.jpg', NULL, 2, 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile_bookmarks`
--

CREATE TABLE `accounts_profile_bookmarks` (
  `id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_ad`
--

CREATE TABLE `ads_ad` (
  `id` bigint(20) NOT NULL,
  `code` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_ad`
--

INSERT INTO `ads_ad` (`id`, `code`, `start_date`, `end_date`, `active`, `location`) VALUES
(1, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'homepage_sidebar'),
(2, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- CodaNova2 -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"6379884823\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'homepage_top'),
(3, '<section class=\" \">\r\n<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>\r\n</section>', '2024-08-03', '2024-08-31', 1, 'articlepage_bottom'),
(4, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'staticpage_top'),
(5, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'staticpage_bottom'),
(6, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- CodaNova2 -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"6379884823\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'searchpage_top'),
(7, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'uploadspage_sidebar'),
(8, 'uploadspage_sidebar', '2024-08-03', '2024-08-31', 1, 'articlepage_top');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Author');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 13),
(2, 1, 16),
(3, 1, 17),
(4, 1, 20),
(5, 1, 33),
(6, 1, 34),
(7, 1, 36),
(8, 1, 37),
(9, 1, 38),
(10, 1, 40),
(11, 1, 41),
(12, 1, 42),
(13, 1, 44),
(14, 1, 45),
(15, 1, 46),
(16, 1, 48),
(17, 1, 49),
(18, 1, 50),
(19, 1, 52),
(20, 1, 57),
(21, 1, 58),
(22, 1, 60),
(23, 1, 61),
(24, 1, 62),
(25, 1, 64),
(26, 1, 69),
(27, 1, 70),
(28, 1, 72),
(29, 1, 73),
(30, 1, 74),
(31, 1, 76);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add site settings', 7, 'add_sitesettings'),
(26, 'Can change site settings', 7, 'change_sitesettings'),
(27, 'Can delete site settings', 7, 'delete_sitesettings'),
(28, 'Can view site settings', 7, 'view_sitesettings'),
(29, 'Can add static page', 8, 'add_staticpage'),
(30, 'Can change static page', 8, 'change_staticpage'),
(31, 'Can delete static page', 8, 'delete_staticpage'),
(32, 'Can view static page', 8, 'view_staticpage'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add framework', 10, 'add_framework'),
(38, 'Can change framework', 10, 'change_framework'),
(39, 'Can delete framework', 10, 'delete_framework'),
(40, 'Can view framework', 10, 'view_framework'),
(41, 'Can add article', 11, 'add_article'),
(42, 'Can change article', 11, 'change_article'),
(43, 'Can delete article', 11, 'delete_article'),
(44, 'Can view article', 11, 'view_article'),
(45, 'Can add comment', 12, 'add_comment'),
(46, 'Can change comment', 12, 'change_comment'),
(47, 'Can delete comment', 12, 'delete_comment'),
(48, 'Can view comment', 12, 'view_comment'),
(49, 'Can add bookmark', 13, 'add_bookmark'),
(50, 'Can change bookmark', 13, 'change_bookmark'),
(51, 'Can delete bookmark', 13, 'delete_bookmark'),
(52, 'Can view bookmark', 13, 'view_bookmark'),
(53, 'Can add article view', 14, 'add_articleview'),
(54, 'Can change article view', 14, 'change_articleview'),
(55, 'Can delete article view', 14, 'delete_articleview'),
(56, 'Can view article view', 14, 'view_articleview'),
(57, 'Can add tag', 15, 'add_tag'),
(58, 'Can change tag', 15, 'change_tag'),
(59, 'Can delete tag', 15, 'delete_tag'),
(60, 'Can view tag', 15, 'view_tag'),
(61, 'Can add tagged item', 16, 'add_taggeditem'),
(62, 'Can change tagged item', 16, 'change_taggeditem'),
(63, 'Can delete tagged item', 16, 'delete_taggeditem'),
(64, 'Can view tagged item', 16, 'view_taggeditem'),
(65, 'Can add profile', 17, 'add_profile'),
(66, 'Can change profile', 17, 'change_profile'),
(67, 'Can delete profile', 17, 'delete_profile'),
(68, 'Can view profile', 17, 'view_profile'),
(69, 'Can add info content', 18, 'add_infocontent'),
(70, 'Can change info content', 18, 'change_infocontent'),
(71, 'Can delete info content', 18, 'delete_infocontent'),
(72, 'Can view info content', 18, 'view_infocontent'),
(73, 'Can add subscriber', 19, 'add_subscriber'),
(74, 'Can change subscriber', 19, 'change_subscriber'),
(75, 'Can delete subscriber', 19, 'delete_subscriber'),
(76, 'Can view subscriber', 19, 'view_subscriber'),
(77, 'Can add bulk email', 20, 'add_bulkemail'),
(78, 'Can change bulk email', 20, 'change_bulkemail'),
(79, 'Can delete bulk email', 20, 'delete_bulkemail'),
(80, 'Can view bulk email', 20, 'view_bulkemail'),
(81, 'Can add ad', 21, 'add_ad'),
(82, 'Can change ad', 21, 'change_ad'),
(83, 'Can delete ad', 21, 'delete_ad'),
(84, 'Can view ad', 21, 'view_ad');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$qMBN83mawI8XrAVjPLjWyJ$65MKgFnMo99lGGN5I7iwJZWTxJ0YAyn5y3UrwblfHMs=', '2024-08-06 23:45:09.000000', 1, 'admin', 'Ijeoma', 'JahsWay', 'uchennamebijay@gmail.com', 1, 1, '2024-08-06 18:23:54.000000'),
(2, 'pbkdf2_sha256$720000$XhqfOwSI4ViRTqV7ISHPKB$+nqg5kVvhwwizqnssaQeY/mI0ykL6MGJbRhcq5IbPtQ=', '2024-08-05 14:57:19.000000', 0, 'SpiderShani007', 'Muhammad', 'Usman', 'us888276@gmail.com', 1, 1, '2024-08-05 12:14:10.000000'),
(17, 'pbkdf2_sha256$720000$ewJWpbDv0EtyvtKw65eI5v$9mXGFOlA63KYW/1379d9N78lLXeBvjWWvced6V3xtJs=', '2024-08-06 07:24:02.485313', 0, 'Stcymll', 'Stacy', 'Mills', 's99229812@gmail.com', 1, 1, '2024-08-05 19:07:39.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_sitesettings`
--

CREATE TABLE `core_sitesettings` (
  `id` bigint(20) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_description` longtext NOT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_email` varchar(254) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_author` varchar(100) NOT NULL,
  `og_title` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `og_image` varchar(100) DEFAULT NULL,
  `og_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_sitesettings`
--

INSERT INTO `core_sitesettings` (`id`, `site_name`, `site_description`, `favicon`, `logo`, `address`, `contact_email`, `phone_number`, `meta_keywords`, `meta_description`, `meta_author`, `og_title`, `og_description`, `og_image`, `og_url`) VALUES
(1, 'Coder Nova', 'Coder Nova is your ultimate destination for coding tutorials, tips, and industry news. Dive into our comprehensive articles and become a coding wizard with our expertly crafted content.', 'Site_images/CN_Rmv_5DcX8cQ.png', 'Site_images/Coder_Nova_B5sswAg.jpeg', '5678 Developer Drive, Code City, Techland', 'support@cn.coursearena.com.ng', '+234 8141 9411 92', 'coding, programming, software development, coding tutorials, coding tips, tech info, tech news', 'Coder Nova provides the latest coding tutorials, tips, and industry news. Learn to code and stay updated with our comprehensive and easy-to-follow articles.', 'Mr Nova', 'Welcome to Coder Nova - Your Ultimate Coding Resource', 'Discover the best coding tutorials, tips, and industry news at Coder Nova. Become a coding expert with our detailed and insightful articles.', 'meta_images/Coder_Nova_NRnmgTk.jpeg', 'https://cn.coursearena.com.ng');

-- --------------------------------------------------------

--
-- Table structure for table `core_staticpage`
--

CREATE TABLE `core_staticpage` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_staticpage`
--

INSERT INTO `core_staticpage` (`id`, `title`, `slug`, `content`) VALUES
(1, 'About Us', 'about-us', '<div class=\"m-auto max-w-6xl mt-10 p-12\">\r\n<div class=\"flex flex-col md:flex-row\">\r\n<div class=\"flex flex-col justify-center max-w-md md:w-1/2\">\r\n<div class=\"font-black md:text-5xl text-2xl uppercase\">Discover Coder Nova: Your Ultimate Tech Resource</div>\r\n\r\n<div class=\"mt-4 text-xl\">Welcome to Coder Nova, a dynamic blog designed for coding enthusiasts and professionals alike. Explore insightful articles, hands-on tutorials, and the latest trends in Tech. Join our growing community to enhance your coding journey with high-quality resources tailored for all skill levels.</div>\r\n</div>\r\n\r\n<div class=\"-mt-5 flex md:justify-end md:w-1/2 w-full\">\r\n<div class=\"bg-dots\">\r\n<div class=\"max-w-md ml-4 mt-6 shadow-2xl z-10\">\r\n<div class=\"bg-opacity-30 bg-white p-10 rounded-b-xl text-2xl\">&quot; Dive into Coder Nova to stay current with comprehensive guides, expert tips, and industry news. Whether you&#39;re a beginner or a seasoned developer, our content is crafted to provide valuable insights and practical solutions. There&#39;s something here for everyone, making Coder Nova your go-to source for coding inspiration and knowledge. &quot;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"flex flex-col gap-4 my-5\">\r\n<h2>Welcome to Coder Nova</h2>\r\n\r\n<p>Welcome to Coder Nova, your premier destination for top-tier coding resources. Our blog features a diverse range of content, from beginner tutorials to advanced coding techniques. Keep up with the latest in technology and get inspired to create your next big project.</p>\r\n\r\n<p>Subscribe to our newsletter to receive notifications about new posts and upcoming events.</p>\r\n\r\n<h2>Engage with Our Posts</h2>\r\n\r\n<p>Our posts are meticulously researched and derived from personal experience. Each tutorial and DIY guide is crafted to ensure you can achieve the results demonstrated. Follow along with our step-by-step instructions and feel free to click on any code snippet to easily copy its content.</p>\r\n\r\n<p>Our goal is to provide you with practical knowledge that you can apply directly to your projects. Whether you&#39;re troubleshooting a problem or seeking new techniques, our detailed articles will support your development journey.</p>\r\n\r\n<h3>Join Our Community</h3>\r\n\r\n<p>Coder Nova is more than just a blog; it&#39;s a community of passionate developers. Share your thoughts, ask questions, and connect with like-minded individuals. Together, we can learn, grow, and innovate.</p>\r\n</div>\r\n</div>'),
(2, 'Terms and Conditions', 'terms-and-conditions', '<div class=\"container lg:px-8 mx-auto px-4 py-12 sm:px-6\">\r\n<h1>Terms and Conditions</h1>\r\n\r\n<p>Welcome to Coder Nova. These terms and conditions outline the rules and regulations for the use of our website.</p>\r\n\r\n<h2>1. Introduction</h2>\r\n\r\n<p>By accessing this website, we assume you accept these terms and conditions in full. Do not continue to use Coder Nova if you do not accept all of the terms and conditions stated on this page.</p>\r\n\r\n<h2>2. Intellectual Property Rights</h2>\r\n\r\n<p>Other than the content you own, under these Terms, Coder Nova and/or its licensors own all the intellectual property rights and materials contained in this Website. You are granted limited license only for purposes of viewing the material contained on this Website.</p>\r\n\r\n<h2>3. Restrictions</h2>\r\n\r\n<ul>\r\n	<li>You are specifically restricted from all of the following: publishing any Website material in any other media; selling, sublicensing, and/or otherwise commercializing any Website material; publicly performing and/or showing any Website material; using this Website in any way that is or may be damaging to this Website; using this Website in any way that impacts user access to this Website.</li>\r\n	<li>Certain areas of this Website are restricted from being accessed by you and Coder Nova may further restrict access by you to any areas of this Website, at any time, in absolute discretion.</li>\r\n</ul>\r\n\r\n<h2>4. Limitation of Liability</h2>\r\n\r\n<p>In no event shall Coder Nova, nor any of its officers, directors, and employees, be liable to you for anything arising out of or in any way connected with your use of this Website, whether such liability is under contract, tort, or otherwise, and Coder Nova, including its officers, directors, and employees, shall not be liable for any indirect, consequential, or special liability arising out of or in any way related to your use of this Website.</p>\r\n\r\n<h2>5. Indemnification</h2>\r\n\r\n<p>You hereby indemnify to the fullest extent Coder Nova from and against any and/or all liabilities, costs, demands, causes of action, damages, and expenses arising in any way related to your breach of any of the provisions of these Terms.</p>\r\n\r\n<h2>6. Changes to Terms</h2>\r\n\r\n<p>Coder Nova reserves the right to revise these Terms at any time as it sees fit, and by using this Website you are expected to review such Terms on a regular basis to ensure you understand all terms and conditions governing use of this Website.</p>\r\n\r\n<h2>7. Contact Information</h2>\r\n\r\n<p>If you have any questions about these Terms, please contact us at <a class=\"text-blue-500 hover:underline\" href=\"mailto:support@cn.coursearena.com.ng\">support@cn.coursearena.com.ng</a>.</p>\r\n</div>'),
(3, 'Privacy Policy', 'privacy-policy', '<div class=\"container lg:px-8 mx-auto px-4 py-12 sm:px-6\">\r\n<h1>Privacy Policy</h1>\r\n\r\n<p>At Coder Nova, we are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and disclose your personal information when you visit and interact with our website.</p>\r\n\r\n<h2>1. Information We Collect</h2>\r\n\r\n<p>We may collect the following types of information when you use our website:</p>\r\n\r\n<ul>\r\n	<li><strong>Personal Identification Information:</strong> Name, email address, phone number, etc.</li>\r\n	<li><strong>Technical Information:</strong> IP address, browser type, operating system, and other technical data related to your visit.</li>\r\n	<li><strong>Usage Data:</strong> Information about how you use our website and services.</li>\r\n</ul>\r\n\r\n<h2>2. How We Use Your Information</h2>\r\n\r\n<p>We use your information to:</p>\r\n\r\n<ul>\r\n	<li>Provide and improve our services.</li>\r\n	<li>Send you newsletters, updates, and other communications related to our services.</li>\r\n	<li>Respond to your inquiries and provide customer support.</li>\r\n	<li>Analyze usage patterns to enhance user experience.</li>\r\n</ul>\r\n\r\n<h2>3. How We Share Your Information</h2>\r\n\r\n<p>We do not sell or rent your personal information to third parties. However, we may share your information with:</p>\r\n\r\n<ul>\r\n	<li><strong>Service Providers:</strong> Third parties who assist us in operating our website and providing services.</li>\r\n	<li><strong>Legal Requirements:</strong> If required by law or to protect the rights, property, or safety of our users and our company.</li>\r\n</ul>\r\n\r\n<h2>4. Your Choices</h2>\r\n\r\n<p>You have the right to:</p>\r\n\r\n<ul>\r\n	<li>Access, update, or delete your personal information.</li>\r\n	<li>Opt-out of receiving promotional emails from us.</li>\r\n	<li>Set your browser to refuse cookies or alert you when cookies are being sent.</li>\r\n</ul>\r\n\r\n<h2>5. Security</h2>\r\n\r\n<p>We implement security measures to protect your information. However, no method of transmission over the Internet or electronic storage is 100% secure.</p>\r\n\r\n<h2>6. Changes to This Privacy Policy</h2>\r\n\r\n<p>We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on our website.</p>\r\n\r\n<h2>7. Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, please contact us at <a class=\"text-blue-500 hover:underline\" href=\"mailto:support@cn.coursearena.com.ng\">support@cn.coursearena.com.ng</a>.</p>\r\n</div>');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-08-06 18:27:54.444285', '1', 'How To Create Posts', 1, '[{\"added\": {}}]', 18, 1),
(2, '2024-08-06 18:39:26.083099', '1', 'Technology', 1, '[{\"added\": {}}]', 9, 1),
(3, '2024-08-06 18:39:41.956950', '1', 'AI', 1, '[{\"added\": {}}]', 10, 1),
(4, '2024-08-06 18:41:29.033851', '1', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 1, '[{\"added\": {}}]', 11, 1),
(5, '2024-08-06 18:42:22.396083', '2', 'Software Development', 1, '[{\"added\": {}}]', 9, 1),
(6, '2024-08-06 18:42:33.250488', '3', 'Database Management', 1, '[{\"added\": {}}]', 9, 1),
(7, '2024-08-06 18:42:49.733618', '4', 'Tools & Libraries', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-08-06 18:43:11.045999', '5', 'Career & Industry', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-08-06 18:43:26.849236', '6', 'Project Showcase', 1, '[{\"added\": {}}]', 9, 1),
(10, '2024-08-06 18:43:44.855611', '7', 'Coding Challenges', 1, '[{\"added\": {}}]', 9, 1),
(11, '2024-08-06 18:43:57.858335', '8', 'Tutorials', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-08-06 18:44:14.981339', '9', 'Machine Learning', 1, '[{\"added\": {}}]', 9, 1),
(13, '2024-08-06 18:44:26.856018', '10', 'Web Development', 1, '[{\"added\": {}}]', 9, 1),
(14, '2024-08-06 18:44:33.711618', '11', 'Top Frameworks', 1, '[{\"added\": {}}]', 9, 1),
(15, '2024-08-06 18:44:41.521752', '12', 'LLMs', 1, '[{\"added\": {}}]', 9, 1),
(16, '2024-08-06 18:45:13.468489', '2', 'Python', 1, '[{\"added\": {}}]', 10, 1),
(17, '2024-08-06 18:45:17.483339', '3', 'Django', 1, '[{\"added\": {}}]', 10, 1),
(18, '2024-08-06 18:45:25.517272', '4', 'HTML', 1, '[{\"added\": {}}]', 10, 1),
(19, '2024-08-06 18:45:28.732194', '5', 'CSS', 1, '[{\"added\": {}}]', 10, 1),
(20, '2024-08-06 18:45:36.890859', '6', 'JavaScript', 1, '[{\"added\": {}}]', 10, 1),
(21, '2024-08-06 18:45:42.155863', '7', 'Bootstrap', 1, '[{\"added\": {}}]', 10, 1),
(22, '2024-08-06 18:45:46.472388', '8', 'Tailwind', 1, '[{\"added\": {}}]', 10, 1),
(23, '2024-08-06 18:45:56.349647', '9', 'Java', 1, '[{\"added\": {}}]', 10, 1),
(24, '2024-08-06 18:45:58.674626', '10', 'C', 1, '[{\"added\": {}}]', 10, 1),
(25, '2024-08-06 18:46:02.286244', '11', 'Ruby', 1, '[{\"added\": {}}]', 10, 1),
(26, '2024-08-06 18:46:05.407553', '12', 'Go', 1, '[{\"added\": {}}]', 10, 1),
(27, '2024-08-06 18:46:54.215971', '13', 'Rust', 1, '[{\"added\": {}}]', 10, 1),
(28, '2024-08-06 18:46:57.768006', '14', 'Dart', 1, '[{\"added\": {}}]', 10, 1),
(29, '2024-08-06 18:47:13.336677', '15', 'Scikit-Learn', 1, '[{\"added\": {}}]', 10, 1),
(30, '2024-08-06 18:47:22.611809', '16', 'Django Rest Framework', 1, '[{\"added\": {}}]', 10, 1),
(31, '2024-08-06 18:47:41.082363', '17', 'React Js', 1, '[{\"added\": {}}]', 10, 1),
(32, '2024-08-06 18:47:46.759670', '18', 'Angular Js', 1, '[{\"added\": {}}]', 10, 1),
(33, '2024-08-06 18:47:55.476306', '19', 'Vue Js', 1, '[{\"added\": {}}]', 10, 1),
(34, '2024-08-06 18:48:16.757119', '20', 'Svelte Js', 1, '[{\"added\": {}}]', 10, 1),
(35, '2024-08-06 18:48:20.796973', '21', 'Next Js', 1, '[{\"added\": {}}]', 10, 1),
(36, '2024-08-06 18:48:26.618734', '22', 'Express Js', 1, '[{\"added\": {}}]', 10, 1),
(37, '2024-08-06 18:48:31.958133', '23', 'Nest Js', 1, '[{\"added\": {}}]', 10, 1),
(38, '2024-08-06 18:48:44.851660', '24', 'Ember Js', 1, '[{\"added\": {}}]', 10, 1),
(39, '2024-08-06 18:48:49.406583', '25', 'GIT', 1, '[{\"added\": {}}]', 10, 1),
(40, '2024-08-06 18:52:33.021716', '2', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 1, '[{\"added\": {}}]', 11, 1),
(41, '2024-08-06 18:54:53.652245', '3', 'Web Dev Fundamentals: HTML Basics', 1, '[{\"added\": {}}]', 11, 1),
(42, '2024-08-06 18:58:21.252067', '4', 'A Comprehensive Guide to Django Models', 1, '[{\"added\": {}}]', 11, 1),
(43, '2024-08-06 18:59:11.819357', '2', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(44, '2024-08-06 18:59:23.314861', '8', 'Tutorials', 3, '', 9, 1),
(45, '2024-08-06 19:02:03.050562', '5', 'Introduction to Machine Learning with Scikit-Learn', 1, '[{\"added\": {}}]', 11, 1),
(46, '2024-08-06 19:06:54.946021', '13', 'Tips & Tricks', 1, '[{\"added\": {}}]', 9, 1),
(47, '2024-08-06 19:07:41.017044', '6', 'Exploring Python\'s Asyncio for Concurrent Programming', 1, '[{\"added\": {}}]', 11, 1),
(48, '2024-08-06 19:13:11.495228', '7', 'Understanding Django\'s ORM: A Beginner\'s Guide', 1, '[{\"added\": {}}]', 11, 1),
(49, '2024-08-06 19:16:06.384583', '8', 'Introduction to RESTful APIs with Django REST Framework', 1, '[{\"added\": {}}]', 11, 1),
(50, '2024-08-06 19:17:42.512339', '9', 'Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 1, '[{\"added\": {}}]', 11, 1),
(51, '2024-08-06 19:19:49.596632', '10', 'How to Build a REST API with Django and Django REST Framework', 1, '[{\"added\": {}}]', 11, 1),
(52, '2024-08-06 19:21:45.811899', '11', 'Essential Git Commands Every Developer Should Know', 1, '[{\"added\": {}}]', 11, 1),
(53, '2024-08-06 19:29:01.397624', '12', 'Top 10 JavaScript Frameworks to Learn in 2024', 1, '[{\"added\": {}}]', 11, 1),
(54, '2024-08-06 19:31:47.513563', '13', 'Introduction to Django: A Comprehensive Guide', 1, '[{\"added\": {}}]', 11, 1),
(55, '2024-08-06 19:33:19.388868', '1', 'uchennamebijay@gmail.com', 1, '[{\"added\": {}}]', 19, 1),
(56, '2024-08-06 19:34:01.931383', '1', 'About Us', 1, '[{\"added\": {}}]', 8, 1),
(57, '2024-08-06 19:34:37.123386', '2', 'Terms and Conditions', 1, '[{\"added\": {}}]', 8, 1),
(58, '2024-08-06 19:35:12.462505', '3', 'Privacy Policy', 1, '[{\"added\": {}}]', 8, 1),
(59, '2024-08-06 19:38:35.464800', '1', 'Coder Nova', 1, '[{\"added\": {}}]', 7, 1),
(60, '2024-08-06 19:40:49.064684', '1', 'Author', 1, '[{\"added\": {}}]', 3, 1),
(61, '2024-08-06 19:42:33.337677', '2', 'SpiderShani007', 1, '[{\"added\": {}}]', 4, 1),
(62, '2024-08-06 19:43:54.418961', '2', 'SpiderShani007', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"Last login\", \"Date joined\"]}}]', 4, 1),
(63, '2024-08-06 19:44:48.948195', '1', 'Ad for homepage_sidebar (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(64, '2024-08-06 19:45:37.129016', '2', 'Ad for homepage_top (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(65, '2024-08-06 19:46:09.407582', '3', 'Ad for articlepage_bottom (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(66, '2024-08-06 19:46:54.761032', '4', 'Ad for staticpage_top (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(67, '2024-08-06 19:47:35.406808', '5', 'Ad for staticpage_bottom (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(68, '2024-08-06 19:48:21.047911', '6', 'Ad for searchpage_top (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(69, '2024-08-06 19:48:54.282417', '7', 'Ad for uploadspage_sidebar (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(70, '2024-08-06 19:49:13.030941', '8', 'Ad for articlepage_top (Active: True)', 1, '[{\"added\": {}}]', 21, 1),
(71, '2024-08-06 19:51:03.520790', '1', 'admin\'s Profile', 2, '[{\"changed\": {\"fields\": [\"Bio\", \"Avatar\", \"Cover image\", \"Phone\", \"Bookmarks\"]}}]', 17, 1),
(72, '2024-08-06 23:47:58.167016', '1', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(73, '2024-08-06 23:49:16.486455', '9', 'Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(74, '2024-08-06 23:49:29.373950', '10', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(75, '2024-08-06 23:49:39.258616', '11', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(76, '2024-08-06 23:49:49.446374', '12', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(77, '2024-08-06 23:49:57.487090', '13', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(78, '2024-08-06 23:51:17.303630', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(79, '2024-08-06 23:51:35.311760', '2', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(80, '2024-08-06 23:51:44.783864', '3', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(81, '2024-08-06 23:51:55.941032', '4', 'A Comprehensive Guide to Django Models', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(82, '2024-08-06 23:52:11.121338', '5', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(83, '2024-08-06 23:52:21.505480', '6', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(84, '2024-08-06 23:52:39.176374', '7', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(85, '2024-08-06 23:52:48.736406', '8', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(86, '2024-08-06 23:55:09.508216', '65', '197.210.55.185 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(87, '2024-08-06 23:55:09.513216', '61', '102.88.68.33 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(88, '2024-08-06 23:55:09.515216', '60', '102.90.66.59 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(89, '2024-08-06 23:55:09.518215', '59', '178.250.1.79 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(90, '2024-08-06 23:55:09.520215', '58', '102.90.57.145 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(91, '2024-08-06 23:55:09.522214', '54', '197.210.79.90 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(92, '2024-08-06 23:55:09.527479', '30', '132.145.66.116 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(93, '2024-08-06 23:55:09.530481', '29', '140.238.94.137 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(94, '2024-08-06 23:55:09.538737', '28', '102.90.58.158 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(95, '2024-08-06 23:55:09.543325', '27', '152.67.137.35 viewed Introduction to Machine Learning with Scikit-Learn', 3, '', 14, 1),
(96, '2024-08-06 23:55:09.545853', '26', '66.249.92.160 viewed Introduction to Machine Learning with Scikit-Learn', 3, '', 14, 1),
(97, '2024-08-06 23:55:09.547854', '25', '102.90.58.167 viewed Introduction to Machine Learning with Scikit-Learn', 3, '', 14, 1),
(98, '2024-08-06 23:55:09.550850', '17', '129.205.113.169 viewed How to Build a REST API with Django and Django REST Framework', 3, '', 14, 1),
(99, '2024-08-06 23:55:09.553816', '4', '102.90.66.35 viewed Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 3, '', 14, 1),
(100, '2024-08-06 23:55:09.555816', '3', '74.125.216.64 viewed Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 3, '', 14, 1),
(101, '2024-08-06 23:55:09.560819', '2', '102.90.65.165 viewed Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 3, '', 14, 1),
(102, '2024-08-07 00:05:33.046416', '15', 'Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 2, '[{\"changed\": {\"fields\": [\"Tags\", \"Frameworks\"]}}]', 11, 1),
(103, '2024-08-07 00:05:57.621620', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(104, '2024-08-07 00:06:11.556402', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(105, '2024-08-07 00:06:40.926371', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(106, '2024-08-07 00:06:58.552458', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(107, '2024-08-07 00:07:34.838998', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(108, '2024-08-07 00:07:45.718274', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(109, '2024-08-07 00:07:57.004258', '8', 'A Comprehensive Guide to Django Models', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(110, '2024-08-07 00:08:32.088634', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(111, '2024-08-07 00:08:44.958501', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(112, '2024-08-07 00:08:58.357301', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(113, '2024-08-07 00:09:56.040165', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(114, '2024-08-07 00:11:09.848305', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(115, '2024-08-07 00:11:45.940826', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(116, '2024-08-07 00:12:43.302442', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(117, '2024-08-07 00:12:59.760092', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(118, '2024-08-07 00:13:39.081617', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(119, '2024-08-07 00:14:28.728162', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[]', 11, 1),
(120, '2024-08-07 00:15:09.743250', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(121, '2024-08-07 00:15:42.974611', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(122, '2024-08-07 00:16:14.354984', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(123, '2024-08-07 00:16:47.569052', '8', 'A Comprehensive Guide to Django Models', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(124, '2024-08-07 00:17:15.859150', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(125, '2024-08-07 00:17:30.704650', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(126, '2024-08-07 00:17:57.326755', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Tags\"]}}]', 11, 1),
(127, '2024-08-07 00:28:03.149083', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(18, 'accounts', 'infocontent'),
(17, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(21, 'ads', 'ad'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'core', 'sitesettings'),
(8, 'core', 'staticpage'),
(20, 'newsletter', 'bulkemail'),
(19, 'newsletter', 'subscriber'),
(11, 'posts', 'article'),
(14, 'posts', 'articleview'),
(13, 'posts', 'bookmark'),
(9, 'posts', 'category'),
(12, 'posts', 'comment'),
(10, 'posts', 'framework'),
(6, 'sessions', 'session'),
(15, 'taggit', 'tag'),
(16, 'taggit', 'taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-06 18:21:19.476305'),
(2, 'taggit', '0001_initial', '2024-08-06 18:21:19.709022'),
(3, 'taggit', '0002_auto_20150616_2121', '2024-08-06 18:21:19.755268'),
(4, 'contenttypes', '0002_remove_content_type_name', '2024-08-06 18:21:19.899595'),
(5, 'taggit', '0003_taggeditem_add_unique_index', '2024-08-06 18:21:19.923566'),
(6, 'taggit', '0004_alter_taggeditem_content_type_alter_taggeditem_tag', '2024-08-06 18:21:19.952648'),
(7, 'taggit', '0005_auto_20220424_2025', '2024-08-06 18:21:19.960664'),
(8, 'taggit', '0006_rename_taggeditem_content_type_object_id_taggit_tagg_content_8fc721_idx', '2024-08-06 18:21:21.084102'),
(9, 'auth', '0001_initial', '2024-08-06 18:21:21.706105'),
(10, 'posts', '0001_initial', '2024-08-06 18:21:22.252916'),
(11, 'posts', '0002_remove_article_dislikes_remove_article_likes_comment_and_more', '2024-08-06 18:21:22.792146'),
(12, 'posts', '0003_alter_article_dislikes_alter_article_likes', '2024-08-06 18:21:22.850317'),
(13, 'posts', '0004_alter_article_dislikes_alter_article_likes', '2024-08-06 18:21:22.904504'),
(14, 'posts', '0005_bookmark', '2024-08-06 18:21:23.137011'),
(15, 'posts', '0006_rename_featured_image_article_image_and_more', '2024-08-06 18:21:23.438464'),
(16, 'posts', '0007_remove_article_bookmarks', '2024-08-06 18:21:23.512568'),
(17, 'accounts', '0001_initial', '2024-08-06 18:21:23.690203'),
(18, 'accounts', '0002_profile_bookmarks', '2024-08-06 18:21:23.967439'),
(19, 'accounts', '0003_profile_cover_image', '2024-08-06 18:21:24.016636'),
(20, 'accounts', '0004_infocontent', '2024-08-06 18:21:24.053262'),
(21, 'admin', '0001_initial', '2024-08-06 18:21:24.292584'),
(22, 'admin', '0002_logentry_remove_auto_add', '2024-08-06 18:21:24.336175'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-06 18:21:24.380573'),
(24, 'ads', '0001_initial', '2024-08-06 18:21:24.405425'),
(25, 'auth', '0002_alter_permission_name_max_length', '2024-08-06 18:21:24.541739'),
(26, 'auth', '0003_alter_user_email_max_length', '2024-08-06 18:21:24.584114'),
(27, 'auth', '0004_alter_user_username_opts', '2024-08-06 18:21:24.618395'),
(28, 'auth', '0005_alter_user_last_login_null', '2024-08-06 18:21:24.708144'),
(29, 'auth', '0006_require_contenttypes_0002', '2024-08-06 18:21:24.716147'),
(30, 'auth', '0007_alter_validators_add_error_messages', '2024-08-06 18:21:24.750616'),
(31, 'auth', '0008_alter_user_username_max_length', '2024-08-06 18:21:24.886615'),
(32, 'auth', '0009_alter_user_last_name_max_length', '2024-08-06 18:21:24.988115'),
(33, 'auth', '0010_alter_group_name_max_length', '2024-08-06 18:21:25.048292'),
(34, 'auth', '0011_update_proxy_permissions', '2024-08-06 18:21:25.098248'),
(35, 'auth', '0012_alter_user_first_name_max_length', '2024-08-06 18:21:25.159033'),
(36, 'core', '0001_initial', '2024-08-06 18:21:25.276568'),
(37, 'newsletter', '0001_initial', '2024-08-06 18:21:25.317120'),
(38, 'newsletter', '0002_remove_subscriber_date_subscribed_and_more', '2024-08-06 18:21:25.364234'),
(39, 'newsletter', '0003_bulkemail', '2024-08-06 18:21:25.466566'),
(40, 'newsletter', '0004_remove_bulkemail_site_settings', '2024-08-06 18:21:25.849402'),
(41, 'posts', '0008_article_type', '2024-08-06 18:21:25.907414'),
(42, 'posts', '0009_alter_article_type', '2024-08-06 18:21:25.955671'),
(43, 'posts', '0010_article_youtube_url', '2024-08-06 18:21:26.016889'),
(44, 'posts', '0011_articleview', '2024-08-06 18:21:26.122873'),
(45, 'posts', '0012_articleview_referrer_articleview_user_agent_and_more', '2024-08-06 18:21:26.306573'),
(46, 'sessions', '0001_initial', '2024-08-06 18:21:26.365965'),
(47, 'posts', '0013_alter_article_frameworks', '2024-08-06 23:46:34.203415'),
(48, 'posts', '0014_alter_article_frameworks', '2024-08-06 23:47:45.800117');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('amymvifkklm6poirsuyv9j185hxd4vca', '.eJxVjDsOwjAQRO_iGln-xRtT0ucM1nq9xgGUSHFSIe5OIqWAYpo3b-YtIm5rjVvjJY5ZXIUWl1-WkJ48HUV-4HSfJc3TuoxJHoo82yaHOfPrdrp_BxVb3dcAioAzWQw29IrIeExqj7NdcAjeoCrGdL0qrHUBS9bxDn0HOiGj-HwB23U3vg:1sbOt9:v5sfCzPY-q6LM4Ha-76WEBJBmScSb1ugWwdKmBXmK0o', '2024-08-20 18:26:27.317270'),
('m79soym8l7uh6032uz0uwq649gu2n77k', '.eJxVjDsOwjAQRO_iGln-xRtT0ucM1nq9xgGUSHFSIe5OIqWAYpo3b-YtIm5rjVvjJY5ZXIUWl1-WkJ48HUV-4HSfJc3TuoxJHoo82yaHOfPrdrp_BxVb3dcAioAzWQw29IrIeExqj7NdcAjeoCrGdL0qrHUBS9bxDn0HOiGj-HwB23U3vg:1sbP2D:q5GiSmukqneHlRZdFwPgGa-hZWS9x8lVm1M4mZuHr9I', '2024-08-20 18:35:49.749782'),
('ongtd2ply319sr9echg5llweuhfanygz', '.eJxVjDsOwjAQRO_iGln-xRtT0ucM1nq9xgGUSHFSIe5OIqWAYpo3b-YtIm5rjVvjJY5ZXIUWl1-WkJ48HUV-4HSfJc3TuoxJHoo82yaHOfPrdrp_BxVb3dcAioAzWQw29IrIeExqj7NdcAjeoCrGdL0qrHUBS9bxDn0HOiGj-HwB23U3vg:1sbTrZ:aLgwyzphtxesiK4bTg_xv8dIGR-ZPV3Vg4o4HEB8OMs', '2024-08-20 23:45:09.548866');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_bulkemail`
--

CREATE TABLE `newsletter_bulkemail` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subscribed_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_subscriber`
--

INSERT INTO `newsletter_subscriber` (`id`, `email`, `subscribed_at`) VALUES
(1, 'uchennamebijay@gmail.com', '2024-08-06 19:33:19.377891');

-- --------------------------------------------------------

--
-- Table structure for table `posts_article`
--

CREATE TABLE `posts_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `excerpt` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `published_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `reading_time` int(10) UNSIGNED DEFAULT NULL CHECK (`reading_time` >= 0),
  `views` int(10) UNSIGNED NOT NULL CHECK (`views` >= 0),
  `seo_title` varchar(255) NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `references` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `youtube_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_article`
--

INSERT INTO `posts_article` (`id`, `title`, `slug`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `author_id`, `category_id`, `type`, `youtube_url`) VALUES
(1, 'Introduction to Django: A Comprehensive Guide', 'introduction-to-django-a-comprehensive-guide', '<p>Django is a high-level Python web framework that enables rapid development of secure and maintainable websites. It was designed to help developers take applications from concept to completion as quickly as possible. In this guide, we&#39;ll cover the basics of Django, including how to set up your environment, create a new project, and build your first web application.</p>\r\n\r\n<p><strong>Table of Contents</strong></p>\r\n\r\n<ol>\r\n	<li>Setting Up Your Environment</li>\r\n	<li>Creating a New Django Project</li>\r\n	<li>Understanding Django&#39;s Project Structure</li>\r\n	<li>Creating Your First Django App</li>\r\n	<li>Configuring Your Database</li>\r\n	<li>Creating Models and Migrations</li>\r\n	<li>Building Views and Templates</li>\r\n	<li>Handling URLs and Routing</li>\r\n	<li>Working with Forms</li>\r\n	<li>Implementing User Authentication</li>\r\n	<li>Deploying Your Django Application</li>\r\n</ol>\r\n\r\n<h3>1. Setting Up Your Environment</h3>\r\n\r\n<p>Before you start, ensure you have Python installed on your system. Django is compatible with Python 3.6 and later.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\"># Install Django using pip\r\npip install django</code></pre>\r\n\r\n<h3>2. Creating a New Django Project</h3>\r\n\r\n<p>Once Django is installed, you can create a new project using the <code>django-admin</code> command.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\"># Create a new Django project named \'myproject\'\r\ndjango-admin startproject myproject</code></pre>\r\n\r\n<p>Navigate to the project directory:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">cd myproject</code></pre>\r\n\r\n<h3>3. Understanding Django&#39;s Project Structure</h3>\r\n\r\n<p>Your new Django project will have the following structure:</p>\r\n\r\n<pre>\r\n<code class=\"language-markdown\">myproject/\r\n    manage.py\r\n    myproject/\r\n        __init__.py\r\n        settings.py\r\n        urls.py\r\n        wsgi.py</code></pre>\r\n\r\n<ul>\r\n	<li><code>manage.py</code>: A command-line utility for interacting with your project.</li>\r\n	<li><code>settings.py</code>: Configuration for your Django project.</li>\r\n	<li><code>urls.py</code>: URL declarations for your project.</li>\r\n	<li><code>wsgi.py</code>: An entry-point for WSGI-compatible web servers to serve your project.</li>\r\n</ul>\r\n\r\n<h3>4. Creating Your First Django App</h3>\r\n\r\n<p>Django projects are composed of multiple apps, which are modules that handle specific functionalities. Let&#39;s create a simple app called &#39;blog&#39;.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\"># Create a new app named \'blog\'\r\npython manage.py startapp blog</code></pre>\r\n\r\n<p>Add the &#39;blog&#39; app to your <code>INSTALLED_APPS</code> in <code>settings.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">INSTALLED_APPS = [\r\n    ...\r\n    \'blog\',\r\n]</code></pre>\r\n\r\n<h3>5. Configuring Your Database</h3>\r\n\r\n<p>Django supports several databases, including SQLite, PostgreSQL, MySQL, and Oracle. By default, Django uses SQLite.</p>\r\n\r\n<p>In <code>settings.py</code>, configure your database settings:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">DATABASES = {\r\n    \'default\': {\r\n        \'ENGINE\': \'django.db.backends.sqlite3\',\r\n        \'NAME\': BASE_DIR / \'db.sqlite3\',\r\n    }\r\n}</code></pre>\r\n\r\n<h3>6. Creating Models and Migrations</h3>\r\n\r\n<p>Models are Python classes that represent database tables. Let&#39;s create a simple <code>Post</code> model for our blog app.</p>\r\n\r\n<p>In <code>blog/models.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.db import models\r\n\r\nclass Post(models.Model):\r\n    title = models.CharField(max_length=200)\r\n    content = models.TextField()\r\n    published_date = models.DateTimeField(auto_now_add=True)\r\n\r\n    def __str__(self):\r\n        return self.title</code></pre>\r\n\r\n<p>Generate and apply migrations to create the database table:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py makemigrations</code></pre>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py migrate</code></pre>\r\n\r\n<h3>7. Building Views and Templates</h3>\r\n\r\n<p>Views handle the logic for your application and return responses to the user. Templates define how the data is presented.</p>\r\n\r\n<p>In <code>blog/views.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.shortcuts import render\r\nfrom .models import Post\r\n\r\ndef home(request):\r\n    posts = Post.objects.all()\r\n    return render(request, \'blog/home.html\', {\'posts\': posts})</code></pre>\r\n\r\n<p>Create a template for the home view in <code>blog/templates/blog/home.html</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;Blog Home&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Blog Posts&lt;/h1&gt;\r\n    {% for post in posts %}\r\n        &lt;h2&gt;{{ post.title }}&lt;/h2&gt;\r\n        &lt;p&gt;{{ post.content }}&lt;/p&gt;\r\n        &lt;p&gt;&lt;em&gt;Published on: {{ post.published_date }}&lt;/em&gt;&lt;/p&gt;\r\n    {% endfor %}\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<h3>8. Handling URLs and Routing</h3>\r\n\r\n<p>Map URLs to views in <code>blog/urls.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.urls import path\r\nfrom . import views\r\n\r\nurlpatterns = [\r\n    path(\'\', views.home, name=\'home\'),\r\n]</code></pre>\r\n\r\n<p>Include the <code>blog</code> app&#39;s URLs in the project&rsquo;s main <code>urls.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.contrib import admin\r\nfrom django.urls import include, path\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'\', include(\'blog.urls\')),\r\n]</code></pre>\r\n\r\n<h3>9. Working with Forms</h3>\r\n\r\n<p>Django simplifies form handling with its forms framework. Let&#39;s create a form for adding new posts.</p>\r\n\r\n<p>In <code>blog/forms.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django import forms\r\nfrom .models import Post\r\n\r\nclass PostForm(forms.ModelForm):\r\n    class Meta:\r\n        model = Post\r\n        fields = [\'title\', \'content\']</code></pre>\r\n\r\n<p>Create a view to handle form submissions in <code>blog/views.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.shortcuts import redirect\r\nfrom .forms import PostForm\r\n\r\ndef new_post(request):\r\n    if request.method == \'POST\':\r\n        form = PostForm(request.POST)\r\n        if form.is_valid():\r\n            form.save()\r\n            return redirect(\'home\')\r\n    else:\r\n        form = PostForm()\r\n    return render(request, \'blog/new_post.html\', {\'form\': form})</code></pre>\r\n\r\n<p>Add a template for the new post form in <code>blog/templates/blog/new_post.html</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;New Post&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Create a New Post&lt;/h1&gt;\r\n    &lt;form method=\"post\"&gt;\r\n        {% csrf_token %}\r\n        {{ form.as_p }}\r\n        &lt;button type=\"submit\"&gt;Save&lt;/button&gt;\r\n    &lt;/form&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<h3>10. Implementing User Authentication</h3>\r\n\r\n<p>Django includes an authentication system for handling users. Enable the authentication URLs in the project&rsquo;s main <code>urls.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">urlpatterns = [\r\n    ...\r\n    path(\'accounts/\', include(\'django.contrib.auth.urls\')),\r\n]</code></pre>\r\n\r\n<p>Create a custom signup view and form in <code>blog/views.py</code> and <code>blog/forms.py</code> respectively.</p>\r\n\r\n<h3>11. Deploying Your Django Application</h3>\r\n\r\n<p>When you&#39;re ready to deploy your Django project, you can use various hosting services like Heroku, AWS, or DigitalOcean. Make sure to configure your settings for production, including database settings, static files, and security settings.</p>\r\n\r\n<p><strong>Conclusion</strong></p>\r\n\r\n<p>Django is a powerful framework that streamlines web development with its built-in features and flexibility. This guide covers the basics to get you started, but there&#39;s much more to explore, including advanced features and third-party packages. Happy coding!</p>\r\n\r\n<hr />\r\n<p>By following this guide, you should have a good foundation to build and deploy Django applications. Stay tuned for more in-depth tutorials and tips on leveraging Django for your web development projects.</p>', 'Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. This guide will walk you through the basics of getting started with Django.', '', '2024-07-28 15:07:17.650063', '2024-08-07 00:13:39.042220', 'draft', 10, 0, 'Introduction to Django - Comprehensive Guide for Beginners', 'Learn the basics of Django, a high-level Python web framework, in this comprehensive guide. Ideal for beginners in web development.', 'Django, Python, Web Development, Framework, Tutorial, Beginner Guide', 1, 0, 'https://www.djangoproject.com/start   https://realpython.com/tutorials/django', 1, 10, 'article', NULL),
(3, 'Introduction to RESTful APIs with Django REST Framework', 'introduction-to-restful-apis-with-django-rest-framework', '<div>\r\n<h2>Introduction to RESTful APIs with Django REST Framework</h2>\r\n\r\n<p>Django REST Framework (DRF) is a powerful and flexible toolkit for building Web APIs in Django. It makes it easy to build robust and scalable APIs by providing features such as serialization, authentication, and viewsets.</p>\r\n\r\n<h3>Step 1: Install Django and Django REST Framework</h3>\r\n\r\n<p>First, ensure you have Python and Django installed. Then, install Django REST Framework using pip:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">pip install djangorestframework</code>\r\n    </pre>\r\n\r\n<h3>Step 2: Create a Django Project</h3>\r\n\r\n<p>Create a new Django project by running the following command:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">django-admin startproject myapi</code>\r\n    </pre>\r\n\r\n<h3>Step 3: Create a Django App</h3>\r\n\r\n<p>Navigate to your project directory and create a new app:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">cd myapi\r\npython manage.py startapp blog</code>\r\n    </pre>\r\n\r\n<h3>Step 4: Set Up Your Models</h3>\r\n\r\n<p>Define your models in <code>blog/models.py</code>. For example, you can create a simple <code>Post</code> model:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\">from django.db import models\r\n\r\nclass Post(models.Model):\r\n    title = models.CharField(max_length=255)\r\n    content = models.TextField()\r\n    created_at = models.DateTimeField(auto_now_add=True)\r\n    updated_at = models.DateTimeField(auto_now=True)\r\n\r\n    def __str__(self):\r\n        return self.title</code>\r\n    </pre>\r\n\r\n<h3>Step 5: Create Serializers</h3>\r\n\r\n<p>Serializers define the API representation. Create a serializer for your <code>Post</code> model in <code>blog/serializers.py</code>:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\">from rest_framework import serializers\r\nfrom .models import Post\r\n\r\nclass PostSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model = Post\r\n        fields = \'__all__\'</code>\r\n    </pre>\r\n\r\n<h3>Step 6: Create Views</h3>\r\n\r\n<p>Create API views to handle HTTP requests. Use Django REST Framework&#39;s viewsets to simplify this process. Define your views in <code>blog/views.py</code>:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\">from rest_framework import viewsets\r\nfrom .models import Post\r\nfrom .serializers import PostSerializer\r\n\r\nclass PostViewSet(viewsets.ModelViewSet):\r\n    queryset = Post.objects.all()\r\n    serializer_class = PostSerializer</code>\r\n    </pre>\r\n\r\n<h3>Step 7: Configure URLs</h3>\r\n\r\n<p>Set up your API URLs in <code>blog/urls.py</code> and include them in your project&#39;s <code>urls.py</code>:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\"># blog/urls.py\r\nfrom django.urls import path, include\r\nfrom rest_framework.routers import DefaultRouter\r\nfrom .views import PostViewSet\r\n\r\nrouter = DefaultRouter()\r\nrouter.register(r\'posts\', PostViewSet)\r\n\r\nurlpatterns = [\r\n    path(\'\', include(router.urls)),\r\n]</code>\r\n    </pre>\r\n\r\n<pre>\r\n        <code class=\"language-python\"># myapi/urls.py\r\nfrom django.contrib import admin\r\nfrom django.urls import path, include\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'api/\', include(\'blog.urls\')),\r\n]</code>\r\n    </pre>\r\n\r\n<h3>Step 8: Run the Development Server</h3>\r\n\r\n<p>Finally, run the development server to see your API in action:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">python manage.py runserver</code>\r\n    </pre>\r\n\r\n<p>Visit <code>http://127.0.0.1:8000/api/posts/</code> in your browser to interact with the API.</p>\r\n\r\n<p>Congratulations! You&#39;ve created a RESTful API using Django REST Framework. From here, you can explore more advanced features like authentication, permissions, and pagination.</p>\r\n</div>', 'Learn how to create a RESTful API using Django REST Framework, a powerful and flexible toolkit for building Web APIs in Django.', 'articles/20240804_215703.jpg', '2024-07-29 00:42:37.203656', '2024-08-07 00:15:42.929962', 'published', 5, 0, 'Introduction to RESTful APIs with Django REST Framework', 'Learn how to create a RESTful API using Django REST Framework with this step-by-step guide. Build robust and scalable APIs in Django.', '', 1, 0, '', 1, 4, 'article', NULL),
(4, 'Understanding Django\'s ORM: A Beginner\'s Guide', 'understanding-djangos-orm-a-beginners-guide', '<h2>Introduction</h2>\r\n\r\n<p>When working with Django, one of the most powerful features you&#39;ll encounter is the Object-Relational Mapping (ORM) system. The ORM allows you to interact with your database using Python code instead of writing raw SQL queries. This article will guide you through the basics of Django&#39;s ORM and how to use it effectively.</p>\r\n\r\n<h2>What is an ORM?</h2>\r\n\r\n<p>An ORM, or Object-Relational Mapper, is a programming technique used to convert data between incompatible type systems in object-oriented programming languages. In simple terms, it allows you to work with database records as if they were regular Python objects.</p>\r\n\r\n<h2>Setting Up Models</h2>\r\n\r\n<p>In Django, models are the single, definitive source of information about your data. Each model maps to a single database table. Here&rsquo;s a simple example:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.db import models\r\n\r\nclass Author(models.Model):\r\n    name = models.CharField(max_length=100)\r\n    email = models.EmailField()\r\n\r\nclass Book(models.Model):\r\n    title = models.CharField(max_length=200)\r\n    author = models.ForeignKey(Author, on_delete=models.CASCADE)\r\n    published_date = models.DateField()</code>\r\n</pre>\r\n\r\n<h2>Performing Database Operations</h2>\r\n\r\n<p>Once you have defined your models, Django provides a rich API to create, retrieve, update, and delete records. Here are some examples:</p>\r\n\r\n<ul>\r\n	<li><strong>Creating a record:</strong> <code>author = Author.objects.create(name=&#39;John Doe&#39;, email=&#39;john@example.com&#39;)</code></li>\r\n	<li><strong>Retrieving records:</strong> <code>all_books = Book.objects.all()</code></li>\r\n	<li><strong>Updating a record:</strong> <code>author.name = &#39;Jane Doe&#39;; author.save()</code></li>\r\n	<li><strong>Deleting a record:</strong> <code>author.delete()</code></li>\r\n</ul>\r\n\r\n<h2>QuerySet API</h2>\r\n\r\n<p>Django&rsquo;s QuerySet API provides a way to retrieve data from your database, filter it, and perform various operations. For instance:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># Get all authors\r\nauthors = Author.objects.all()\r\n\r\n# Filter authors by name\r\njohn_doe = Author.objects.filter(name=\'John Doe\')\r\n\r\n# Get a single author by ID\r\nauthor = Author.objects.get(id=1)</code>\r\n</pre>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Django&#39;s ORM is a powerful tool that can simplify your interactions with the database, making your code cleaner and more maintainable. By leveraging models and the QuerySet API, you can perform complex database operations with ease. Happy coding!</p>', 'Learn the basics of Django\'s ORM and how to use it to interact with your database using Python code instead of writing raw SQL queries.', 'articles/20240804_205207.jpg', '2024-07-29 02:08:00.581343', '2024-08-07 00:17:57.286604', 'published', 10, 1, 'Understanding Django\'s ORM: A Beginner\'s Guide', 'Learn the basics of Django\'s ORM and how to use it effectively to interact with your database in this beginner\'s guide.', 'Django, ORM, Django ORM, tutorial, beginner\'s guide', 1, 0, '', 1, 13, 'article', NULL),
(5, 'Exploring Python\'s Asyncio for Concurrent Programming', 'exploring-pythons-asyncio-for-concurrent-programming', '<h2>Introduction</h2>\r\n\r\n<p>Concurrent programming is essential for building efficient and scalable applications. In Python, the <code>asyncio</code> library provides a powerful framework for writing asynchronous code. This article will explore the basics of <code>asyncio</code> and how it can be used for concurrent programming in Python.</p>\r\n\r\n<h2>What is Asyncio?</h2>\r\n\r\n<p><code>asyncio</code> is a library to write concurrent code using the async/await syntax. It is ideal for I/O-bound and high-level structured network code. It enables you to run multiple operations concurrently and handle asynchronous events without writing complex threading or multiprocessing code.</p>\r\n\r\n<h2>Basic Concepts</h2>\r\n\r\n<p>Before diving into <code>asyncio</code>, it&#39;s important to understand a few basic concepts:</p>\r\n\r\n<ul>\r\n	<li><strong>Event Loop:</strong> The core of <code>asyncio</code>. It runs asynchronous tasks and callbacks, performs network I/O operations, and manages subprocesses.</li>\r\n	<li><strong>Coroutine:</strong> A special type of function that can be paused and resumed, allowing other code to run during the pause.</li>\r\n	<li><strong>Task:</strong> A wrapper for a coroutine that allows it to be executed by the event loop.</li>\r\n</ul>\r\n\r\n<h2>Getting Started with Asyncio</h2>\r\n\r\n<p>Here&rsquo;s a simple example to illustrate the use of <code>asyncio</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">import asyncio\r\n\r\nasync def say_hello():\r\n    print(\"Hello\")\r\n    await asyncio.sleep(1)\r\n    print(\"World\")\r\n\r\nasync def main():\r\n    await asyncio.gather(say_hello(), say_hello(), say_hello())\r\n\r\nasyncio.run(main())</code>\r\n</pre>\r\n\r\n<p>In this example, the <code>say_hello</code> coroutine is called three times concurrently, thanks to <code>asyncio.gather</code>.</p>\r\n\r\n<h2>Real-world Example: Fetching URLs</h2>\r\n\r\n<p>Let&#39;s look at a more practical example: fetching multiple URLs concurrently using <code>asyncio</code> and the <code>aiohttp</code> library:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">import asyncio\r\nimport aiohttp\r\n\r\nasync def fetch(session, url):\r\n    async with session.get(url) as response:\r\n        return await response.text()\r\n\r\nasync def main():\r\n    urls = [\r\n        \"https://www.example.com\",\r\n        \"https://www.python.org\",\r\n        \"https://www.github.com\"\r\n    ]\r\n    async with aiohttp.ClientSession() as session:\r\n        tasks = [fetch(session, url) for url in urls]\r\n        results = await asyncio.gather(*tasks)\r\n        for result in results:\r\n            print(result[:100])  # Print the first 100 characters of each result\r\n\r\nasyncio.run(main())</code>\r\n</pre>\r\n\r\n<p>In this example, the <code>fetch</code> coroutine retrieves the content of each URL concurrently. The <code>aiohttp.ClientSession</code> is used to handle HTTP requests asynchronously.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Using <code>asyncio</code>, you can write concurrent code that is more readable and maintainable compared to traditional threading and multiprocessing approaches. By leveraging the async/await syntax, you can build efficient and scalable applications that handle multiple tasks concurrently. Happy coding!</p>', 'Learn the basics of Python\'s asyncio library for concurrent programming and how to use it for handling asynchronous tasks effectively.', 'articles/20240804_215023.jpg', '2024-07-29 02:13:06.469003', '2024-08-07 00:17:30.674465', 'published', 10, 3, 'Exploring Python\'s Asyncio for Concurrent Programming', 'Discover how to use Python\'s asyncio library for concurrent programming in this tutorial. Learn the basics and practical examples for handling asynchronous task', 'Python, asyncio, concurrent programming, async/await, tutorial', 1, 1, '', 1, 13, 'article', NULL),
(6, 'Introduction to Machine Learning with Scikit-Learn', 'introduction-to-machine-learning-with-scikit-learn', '<h2>Introduction</h2>\r\n\r\n<p>Machine learning is a rapidly evolving field that allows computers to learn from data and make predictions or decisions. Scikit-Learn is one of the most popular libraries in Python for implementing machine learning algorithms. In this article, we&#39;ll provide an overview of machine learning and show you how to get started with Scikit-Learn.</p>\r\n\r\n<h2>What is Machine Learning?</h2>\r\n\r\n<p>Machine learning is a branch of artificial intelligence that focuses on building systems that can learn from data. It involves training algorithms on data so that they can make accurate predictions or decisions based on new data. Machine learning is used in a wide range of applications, from image and speech recognition to recommendation systems and predictive analytics.</p>\r\n\r\n<h2>Getting Started with Scikit-Learn</h2>\r\n\r\n<p>Scikit-Learn is a powerful and easy-to-use library for machine learning in Python. It provides simple and efficient tools for data mining and data analysis. Let&#39;s start by installing Scikit-Learn:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">pip install scikit-learn</code>\r\n</pre>\r\n\r\n<h2>Loading a Dataset</h2>\r\n\r\n<p>Scikit-Learn comes with several built-in datasets, such as the Iris dataset. Let&#39;s load and explore the Iris dataset:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from sklearn.datasets import load_iris\r\nimport pandas as pd\r\n\r\n# Load the dataset\r\niris = load_iris()\r\ndf = pd.DataFrame(data=iris.data, columns=iris.feature_names)\r\ndf[\'target\'] = iris.target\r\nprint(df.head())</code>\r\n</pre>\r\n\r\n<h2>Training a Machine Learning Model</h2>\r\n\r\n<p>Next, we&#39;ll train a machine learning model to classify the Iris flowers. We&#39;ll use a simple decision tree classifier for this task:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from sklearn.model_selection import train_test_split\r\nfrom sklearn.tree import DecisionTreeClassifier\r\nfrom sklearn.metrics import accuracy_score\r\n\r\n# Split the dataset into training and testing sets\r\nX_train, X_test, y_train, y_test = train_test_split(iris.data, iris.target, test_size=0.3, random_state=42)\r\n\r\n# Initialize the classifier\r\nclf = DecisionTreeClassifier()\r\n\r\n# Train the classifier\r\nclf.fit(X_train, y_train)\r\n\r\n# Make predictions\r\ny_pred = clf.predict(X_test)\r\n\r\n# Calculate the accuracy\r\naccuracy = accuracy_score(y_test, y_pred)\r\nprint(f\'Accuracy: {accuracy * 100:.2f}%\')</code>\r\n</pre>\r\n\r\n<h2>Evaluating the Model</h2>\r\n\r\n<p>It&#39;s important to evaluate the performance of your model to ensure it generalizes well to new data. The accuracy score is one way to evaluate the model, but there are other metrics you can use depending on your specific task, such as precision, recall, and F1 score.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>In this article, we provided a brief introduction to machine learning and showed you how to get started with Scikit-Learn. We covered loading a dataset, training a model, and evaluating its performance. Scikit-Learn is a versatile and powerful library that makes it easy to implement a wide range of machine learning algorithms. Happy coding!</p>', 'Get started with machine learning using Scikit-Learn, a powerful Python library. Learn how to load datasets, train models, and evaluate their performance.', 'articles/20240804_212608_OxRqrqv.jpg', '2024-07-29 02:23:37.745285', '2024-08-07 00:17:15.833363', 'published', 10, 0, 'Introduction to Machine Learning with Scikit-Learn', 'Learn the basics of machine learning with Scikit-Learn. This tutorial covers loading datasets, training models, and evaluating performance using Scikit-Learn in', 'machine learning, scikit-learn, python, tutorial, data analysis, decision tree, model evaluation', 1, 0, '', 1, 9, 'article', NULL),
(8, 'A Comprehensive Guide to Django Models', 'a-comprehensive-guide-to-django-models', '<h2>A Comprehensive Guide to Django Models</h2>\r\n\r\n<p>Django models are a powerful way to interact with a relational database. They provide a high-level abstraction for database operations, allowing developers to work with data in Pythonic ways.</p>\r\n\r\n<h3>Understanding the Basics</h3>\r\n\r\n<p>A Django model is a Python class that subclasses <code>django.db.models.Model</code>. Each attribute of the model represents a database field.</p>\r\n\r\n<p>Here&#39;s a simple example:</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\nclass Book(models.Model):\r\n    title = models.CharField(max_length=255)\r\n    author = models.CharField(max_length=255)\r\n    published_date = models.DateField()\r\n    isbn = models.CharField(max_length=13, unique=True)\r\n    pages = models.PositiveIntegerField()\r\n\r\n    def __str__(self):\r\n        return self.title\r\n</code></pre>\r\n\r\n<p>In this example:</p>\r\n\r\n<ul>\r\n	<li><code>title</code>, <code>author</code>, and <code>isbn</code> are character fields.</li>\r\n	<li><code>published_date</code> is a date field.</li>\r\n	<li><code>pages</code> is a positive integer field.</li>\r\n</ul>\r\n\r\n<h3>Field Options</h3>\r\n\r\n<p>Django offers a variety of field types and options to customize the database schema:</p>\r\n\r\n<ul>\r\n	<li><code>CharField</code> for short-to-mid-sized strings.</li>\r\n	<li><code>TextField</code> for large text fields.</li>\r\n	<li><code>IntegerField</code>, <code>PositiveIntegerField</code>, <code>FloatField</code>, and <code>DecimalField</code> for numbers.</li>\r\n	<li><code>DateField</code> and <code>DateTimeField</code> for date and time values.</li>\r\n	<li><code>ForeignKey</code>, <code>OneToOneField</code>, and <code>ManyToManyField</code> for relationships.</li>\r\n</ul>\r\n\r\n<p>Here&rsquo;s how you can define relationships:</p>\r\n\r\n<pre>\r\n<code>class Author(models.Model):\r\n    name = models.CharField(max_length=255)\r\n\r\n    def __str__(self):\r\n        return self.name\r\n\r\nclass Book(models.Model):\r\n    title = models.CharField(max_length=255)\r\n    author = models.ForeignKey(Author, on_delete=models.CASCADE)\r\n    published_date = models.DateField()\r\n\r\n    def __str__(self):\r\n        return self.title\r\n</code></pre>\r\n\r\n<h3>Model Methods</h3>\r\n\r\n<p>You can add custom methods to your models. For example, you might want a method that returns the full name of an author:</p>\r\n\r\n<pre>\r\n<code>class Author(models.Model):\r\n    first_name = models.CharField(max_length=30)\r\n    last_name = models.CharField(max_length=30)\r\n\r\n    def full_name(self):\r\n        return f\"{self.first_name} {self.last_name}\"\r\n</code></pre>\r\n\r\n<h3>Admin Interface</h3>\r\n\r\n<p>Django&rsquo;s admin interface is a powerful tool for managing data. To make your model available in the admin interface, you need to register it:</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom .models import Book\r\n\r\nadmin.site.register(Book)\r\n</code></pre>\r\n\r\n<p>For more customized admin behavior, you can create a model admin class:</p>\r\n\r\n<pre>\r\n<code>class BookAdmin(admin.ModelAdmin):\r\n    list_display = (\'title\', \'author\', \'published_date\')\r\n    search_fields = (\'title\', \'author__name\')\r\n\r\nadmin.site.register(Book, BookAdmin)\r\n</code></pre>\r\n\r\n<h3>Conclusion</h3>\r\n\r\n<p>Django models provide a powerful and flexible way to interact with your database. By understanding the basics and utilizing the various field types and options, you can create robust and efficient data models for your Django applications.</p>\r\n\r\n<p>Happy coding!</p>', 'This guide explores the fundamentals of Django models, including field types, relationships, and methods, offering a comprehensive understanding for beginners and advanced users alike.', 'articles/20240804_211411_JfQd9Q8.jpg', '2024-07-30 23:00:07.456154', '2024-08-07 00:16:47.537557', 'published', 10, 0, 'Comprehensive Guide to Django Models', 'Learn the essentials of Django models, including field types, relationships, and methods, to build robust and efficient data models for your Django applications', 'django, models, python, web development, django tutorial', 1, 0, 'https://docs.djangoproject.com/en/stable/\r\nhttps://www.twoscoopspress.com/products/two-scoops-of-django-3-x', 1, 10, 'article', NULL);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `author_id`, `category_id`, `type`, `youtube_url`) VALUES
(9, 'Web Dev Fundamentals: HTML Basics', 'web-dev-fundamentals-html-basics', '<div class=\"max-w-4xl mx-auto\">\r\n<h1><strong>HTML Basics</strong></h1>\r\n\r\n<p>Welcome to the HTML Basics section of Coder Nova! Here, we&#39;ll explore the fundamental concepts of HTML, the backbone of web development. HTML (HyperText Markup Language) is the standard markup language used to create web pages. Let&#39;s dive into the basics together!</p>\r\n\r\n<h2><strong>Structure of an HTML Document</strong></h2>\r\n\r\n<h3>The HTML Skeleton</h3>\r\n\r\n<p>To start, every HTML document has a standard structure known as the HTML skeleton. It&#39;s the foundation upon which we build our web pages. Here&#39;s what it looks like:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;My First Webpage&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Welcome to Coder Nova!&lt;/h1&gt;\r\n    &lt;p&gt;This is my first webpage.&lt;/p&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>Let&rsquo;s break it down:</p>\r\n\r\n<ul>\r\n	<li><tt><code>&lt;!DOCTYPE html&gt;</code></tt>: This line tells the browser that we are using HTML5.</li>\r\n	<li><code>&lt;html lang=&quot;en&quot;&gt;</code>: The <code>&lt;html&gt;</code> tag is the root element of an HTML page, and the <code>lang</code> attribute specifies the language.</li>\r\n	<li><code>&lt;head&gt;</code>: Contains meta-information about the HTML document, like the character encoding and the title.</li>\r\n	<li><code>&lt;meta charset=&quot;UTF-8&quot;&gt;</code>: Sets the character encoding to UTF-8.</li>\r\n	<li><code>&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;</code>: Ensures proper rendering and touch zooming on mobile devices.</li>\r\n	<li><code>&lt;title&gt;</code>: Sets the title of the webpage, which appears in the browser tab.</li>\r\n	<li><code>&lt;body&gt;</code>: Contains the content of the webpage, such as headings, paragraphs, links, images, and more.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/html-basic-structure.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><strong>Common HTML Tags and Attributes</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>HTML uses tags to define the position, and function of elements within a document. Here is a list of HTML tags along with a brief description of their functions and use cases:</p>\r\n\r\n<h3>Document Structure</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;!DOCTYPE&gt;</code></strong>: Defines the document type and version of HTML.</li>\r\n	<li><strong><code>&lt;html&gt;</code></strong>: Root element of an HTML document.</li>\r\n	<li><strong><code>&lt;head&gt;</code></strong>: Contains metadata, links to scripts and stylesheets.</li>\r\n	<li><strong><code>&lt;title&gt;</code></strong>: Sets the title of the webpage (shown in the browser tab).</li>\r\n	<li><strong><code>&lt;body&gt;</code></strong>: Contains the content of the HTML document.</li>\r\n</ol>\r\n\r\n<h3>Metadata</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;meta&gt;</code></strong>: Provides metadata such as character set, description, keywords.</li>\r\n	<li><strong><code>&lt;link&gt;</code></strong>: Links to external resources like stylesheets.</li>\r\n	<li><strong><code>&lt;style&gt;</code></strong>: Embeds CSS styles within an HTML document.</li>\r\n	<li><strong><code>&lt;script&gt;</code></strong>: Embeds or references JavaScript code.</li>\r\n</ol>\r\n\r\n<h3>Content Sectioning</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;header&gt;</code></strong>: Defines a header for a section or page.</li>\r\n	<li><strong><code>&lt;nav&gt;</code></strong>: Defines navigation links.</li>\r\n	<li><strong><code>&lt;main&gt;</code></strong>: Specifies the main content of the document.</li>\r\n	<li><strong><code>&lt;section&gt;</code></strong>: Defines a section in a document.</li>\r\n	<li><strong><code>&lt;article&gt;</code></strong>: Specifies independent, self-contained content.</li>\r\n	<li><strong><code>&lt;aside&gt;</code></strong>: Defines content aside from the main content.</li>\r\n	<li><strong><code>&lt;footer&gt;</code></strong>: Defines a footer for a section or page.</li>\r\n</ol>\r\n\r\n<h3>Text Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;h1&gt;</code> to <code>&lt;h6&gt;</code></strong>: Define headings from level 1 to 6.</li>\r\n	<li><strong><code>&lt;p&gt;</code></strong>: Defines a paragraph.</li>\r\n	<li><strong><code>&lt;a&gt;</code></strong>: Defines a hyperlink.</li>\r\n	<li><strong><code>&lt;ul&gt;</code></strong>: Defines an unordered list.</li>\r\n	<li><strong><code>&lt;ol&gt;</code></strong>: Defines an ordered list.</li>\r\n	<li><strong><code>&lt;li&gt;</code></strong>: Defines a list item.</li>\r\n	<li><strong><code>&lt;dl&gt;</code></strong>: Defines a description list.</li>\r\n	<li><strong><code>&lt;dt&gt;</code></strong>: Defines a term/name in a description list.</li>\r\n	<li><strong><code>&lt;dd&gt;</code></strong>: Describes a term/name in a description list.</li>\r\n	<li><strong><code>&lt;div&gt;</code></strong>: Defines a division or section.</li>\r\n	<li><strong><code>&lt;span&gt;</code></strong>: Defines a span of text.</li>\r\n</ol>\r\n\r\n<h3>Inline Text Semantics</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;b&gt;</code></strong>: Defines bold text.</li>\r\n	<li><strong><code>&lt;i&gt;</code></strong>: Defines italic text.</li>\r\n	<li><strong><code>&lt;strong&gt;</code></strong>: Defines important text.</li>\r\n	<li><strong><code>&lt;em&gt;</code></strong>: Defines emphasized text.</li>\r\n	<li><strong><code>&lt;mark&gt;</code></strong>: Defines marked/highlighted text.</li>\r\n	<li><strong><code>&lt;small&gt;</code></strong>: Defines smaller text.</li>\r\n	<li><strong><code>&lt;del&gt;</code></strong>: Defines deleted text.</li>\r\n	<li><strong><code>&lt;ins&gt;</code></strong>: Defines inserted text.</li>\r\n	<li><strong><code>&lt;sub&gt;</code></strong>: Defines subscripted text.</li>\r\n	<li><strong><code>&lt;sup&gt;</code></strong>: Defines superscripted text.</li>\r\n	<li><strong><code>&lt;br&gt;</code></strong>: Inserts a line break.</li>\r\n	<li><strong><code>&lt;hr&gt;</code></strong>: Defines a thematic change or break in the content.</li>\r\n</ol>\r\n\r\n<h3>Media Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;img&gt;</code></strong>: Embeds an image.</li>\r\n	<li><strong><code>&lt;audio&gt;</code></strong>: Embeds audio content.</li>\r\n	<li><strong><code>&lt;video&gt;</code></strong>: Embeds video content.</li>\r\n	<li><strong><code>&lt;source&gt;</code></strong>: Specifies multiple media resources.</li>\r\n	<li><strong><code>&lt;track&gt;</code></strong>: Defines text tracks for <code>&lt;video&gt;</code> and <code>&lt;audio&gt;</code> elements.</li>\r\n	<li><strong><code>&lt;picture&gt;</code></strong>: Contains multiple <code>&lt;source&gt;</code> elements for different media types.</li>\r\n</ol>\r\n\r\n<h3>Embedded Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;iframe&gt;</code></strong>: Embeds another HTML page within the current page.</li>\r\n	<li><strong><code>&lt;embed&gt;</code></strong>: Embeds external content or application.</li>\r\n	<li><strong><code>&lt;object&gt;</code></strong>: Embeds an external resource.</li>\r\n	<li><strong><code>&lt;param&gt;</code></strong>: Defines parameters for <code>&lt;object&gt;</code>.</li>\r\n</ol>\r\n\r\n<h3>Form Elements</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;form&gt;</code></strong>: Defines an HTML form for user input.</li>\r\n	<li><strong><code>&lt;input&gt;</code></strong>: Defines an input control.</li>\r\n	<li><strong><code>&lt;textarea&gt;</code></strong>: Defines a multiline text input control.</li>\r\n	<li><strong><code>&lt;button&gt;</code></strong>: Defines a clickable button.</li>\r\n	<li><strong><code>&lt;select&gt;</code></strong>: Defines a drop-down list.</li>\r\n	<li><strong><code>&lt;option&gt;</code></strong>: Defines an option in a drop-down list.</li>\r\n	<li><strong><code>&lt;label&gt;</code></strong>: Defines a label for an input element.</li>\r\n	<li><strong><code>&lt;fieldset&gt;</code></strong>: Groups related elements in a form.</li>\r\n	<li><strong><code>&lt;legend&gt;</code></strong>: Defines a caption for a <code>&lt;fieldset&gt;</code>.</li>\r\n	<li><strong><code>&lt;datalist&gt;</code></strong>: Specifies a list of pre-defined options for an <code>&lt;input&gt;</code> element.</li>\r\n	<li><strong><code>&lt;output&gt;</code></strong>: Represents the result of a calculation.</li>\r\n</ol>\r\n\r\n<h3>Table Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;table&gt;</code></strong>: Defines a table.</li>\r\n	<li><strong><code>&lt;caption&gt;</code></strong>: Defines a table caption.</li>\r\n	<li><strong><code>&lt;tr&gt;</code></strong>: Defines a table row.</li>\r\n	<li><strong><code>&lt;th&gt;</code></strong>: Defines a header cell in a table.</li>\r\n	<li><strong><code>&lt;td&gt;</code></strong>: Defines a standard cell in a table.</li>\r\n	<li><strong><code>&lt;thead&gt;</code></strong>: Groups the header content in a table.</li>\r\n	<li><strong><code>&lt;tbody&gt;</code></strong>: Groups the body content in a table.</li>\r\n	<li><strong><code>&lt;tfoot&gt;</code></strong>: Groups the footer content in a table.</li>\r\n	<li><strong><code>&lt;col&gt;</code></strong>: Specifies column properties for each column within a <code>&lt;colgroup&gt;</code>.</li>\r\n	<li><strong><code>&lt;colgroup&gt;</code></strong>: Specifies a group of one or more columns in a table for formatting.</li>\r\n</ol>\r\n\r\n<h3>Scripting</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;script&gt;</code></strong>: Embeds or references executable code.</li>\r\n	<li><strong><code>&lt;noscript&gt;</code></strong>: Defines alternate content for users who do not support client-side scripting.</li>\r\n</ol>\r\n\r\n<h3>Interactive Elements</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;details&gt;</code></strong>: Specifies additional details the user can view or hide.</li>\r\n	<li><strong><code>&lt;summary&gt;</code></strong>: Defines a visible heading for the <code>&lt;details&gt;</code> element.</li>\r\n	<li><strong><code>&lt;dialog&gt;</code></strong>: Defines a dialog box or window.</li>\r\n	<li><strong><code>&lt;menu&gt;</code></strong>: Defines a list/menu of commands.</li>\r\n</ol>\r\n\r\n<h3>Deprecated/Obsolete Elements (Not recommended for use)</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;applet&gt;</code></strong>: Embeds a Java applet.</li>\r\n	<li><strong><code>&lt;basefont&gt;</code></strong>: Sets default font size, color, and face.</li>\r\n	<li><strong><code>&lt;center&gt;</code></strong>: Centers text.</li>\r\n	<li><strong><code>&lt;font&gt;</code></strong>: Specifies the font face, size, and color of text.</li>\r\n	<li><strong><code>&lt;frame&gt;</code></strong>: Defines a window (a frame) in a frameset.</li>\r\n	<li><strong><code>&lt;frameset&gt;</code></strong>: Defines a set of frames.</li>\r\n	<li><strong><code>&lt;noframes&gt;</code></strong>: Provides alternative content for browsers that do not support frames.</li>\r\n</ol>\r\n\r\n<p>This list covers the most common HTML tags and their functions. Each tag serves a specific purpose, allowing web developers to structure and present web content effectively. But don&#39;t be overwhelmed just yet... Like Bruce Lee said.</p>\r\n\r\n<blockquote>\r\n<p>I fear not the man who has practiced 10,000 kicks once, but I fear the man who has practiced one kick 10,000 times.</p>\r\n</blockquote>\r\n\r\n<p>You only need to choose your weapons and master them efficiently. Let&rsquo;s go through some of the most commonly used tags and their attributes.</p>\r\n\r\n<h2>Headings</h2>\r\n\r\n<p>Headings are used to define the titles and subtitles in your content. HTML provides six levels of headings, from <code>&lt;h1&gt;</code> to <code>&lt;h6&gt;</code>, where <code>&lt;h1&gt;</code> is the highest level.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;h1&gt;Welcome to my website!&lt;/h1&gt;\r\n&lt;h2&gt;Welcome to my website!&lt;/h2&gt;\r\n&lt;h3&gt;Welcome to my website!&lt;/h3&gt;\r\n&lt;h4&gt;Welcome to my website!&lt;/h4&gt;\r\n&lt;h5&gt;Welcome to my website!&lt;/h5&gt;\r\n&lt;h6&gt;Welcome to my website!&lt;/h6&gt;</code></pre>\r\n\r\n<h3><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-226.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></h3>\r\n\r\n<h3>Paragraphs and Text</h3>\r\n\r\n<p>Paragraphs are used to define blocks of text. Additionally, HTML provides tags to emphasize text.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;p&gt;This is a paragraph.&lt;/p&gt;\r\n&lt;strong&gt;Bold text&lt;/strong&gt;\r\n&lt;em&gt;Italic text&lt;/em&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;p&gt;</code>: Defines a paragraph.</li>\r\n	<li><code>&lt;strong&gt;</code>: Makes text bold.</li>\r\n	<li><code>&lt;em&gt;</code>: Makes text italic.</li>\r\n</ul>\r\n\r\n<h3>Links and Images</h3>\r\n\r\n<p>Links and images are essential for creating interactive and visually appealing web pages.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n&lt;img src=\"image.jpg\" alt=\"Description of image\"&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;a&gt;</code>: Defines a hyperlink. The <code>href</code> attribute specifies the URL.</li>\r\n	<li><code>&lt;img&gt;</code>: Embeds an image. The <code>src</code> attribute specifies the image source, and <code>alt</code> provides alternative text for the image.</li>\r\n</ul>\r\n\r\n<h3><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-227.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></h3>\r\n\r\n<h3>Lists</h3>\r\n\r\n<p>Lists are used to group related items. There are two types of lists: unordered lists and ordered lists.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;ul&gt;\r\n    &lt;li&gt;Item 1&lt;/li&gt;\r\n    &lt;li&gt;Item 2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n    \r\n&lt;ol&gt;\r\n    &lt;li&gt;First item&lt;/li&gt;\r\n    &lt;li&gt;Second item&lt;/li&gt;\r\n&lt;/ol&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;ul&gt;</code>: Defines an unordered (bulleted) list.</li>\r\n	<li><code>&lt;ol&gt;</code>: Defines an ordered (numbered) list.</li>\r\n	<li><code>&lt;li&gt;</code>: Defines a list item</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-229.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h3>Tables</h3>\r\n\r\n<p>Tables are used to display data in a tabular format.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;table&gt;\r\n    &lt;tr&gt;\r\n        &lt;th&gt;Header 1&lt;/th&gt;\r\n        &lt;th&gt;Header 2&lt;/th&gt;\r\n    &lt;/tr&gt;\r\n    &lt;tr&gt;\r\n        &lt;td&gt;Cell 1&lt;/td&gt;\r\n        &lt;td&gt;Cell 2&lt;/td&gt;\r\n    &lt;/tr&gt;\r\n\r\n&lt;/table&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;table&gt;</code>: Defines a table.</li>\r\n	<li><code>&lt;tr&gt;</code>: Defines a table row.</li>\r\n	<li><code>&lt;th&gt;</code>: Defines a table header cell.</li>\r\n	<li><code>&lt;td&gt;</code>: Defines a table data cell.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-230.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><strong>Creating a Simple Webpage</strong></h2>\r\n\r\n<p>Now that we&#39;ve covered the basics, let&#39;s create a simple webpage together. Follow these steps:</p>\r\n\r\n<h3>Step-by-Step Guide</h3>\r\n\r\n<h4>1. Set Up the Document Structure</h4>\r\n\r\n<p>Start with the HTML skeleton:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;My Simple Webpage&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<h4>2. Add Content to the Body</h4>\r\n\r\n<p>Add a heading and a paragraph:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h4>3. Insert a Link and an Image</h4>\r\n\r\n<p>Add a hyperlink and an image:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" alt=\"Example image\"&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h4>4. Create a List</h4>\r\n\r\n<p>Add an unordered list:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" alt=\"Example image\"&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;First item&lt;/li&gt;\r\n        &lt;li&gt;Second item&lt;/li&gt;\r\n        &lt;li&gt;Third item&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h4>5. Add a Table</h4>\r\n\r\n<p>Insert a simple table:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" alt=\"Example image\"&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;First item&lt;/li&gt;\r\n        &lt;li&gt;Second item&lt;/li&gt;\r\n        &lt;li&gt;Third item&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n    &lt;table&gt;\r\n        &lt;tr&gt;\r\n            &lt;th&gt;Header 1&lt;/th&gt;\r\n            &lt;th&gt;Header 2&lt;/th&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr&gt;\r\n            &lt;td&gt;Cell 1&lt;/td&gt;\r\n            &lt;td&gt;Cell 2&lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/table&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h3>Final Code</h3>\r\n\r\n<p>Here&#39;s the complete HTML code for our simple webpage:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;My Simple Webpage&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" height=\"200\" alt=\"Example image\"&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;First item&lt;/li&gt;\r\n        &lt;li&gt;Second item&lt;/li&gt;\r\n        &lt;li&gt;Third item&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n    &lt;table&gt;\r\n        &lt;tr&gt;\r\n            &lt;th&gt;Header 1&lt;/th&gt;\r\n            &lt;th&gt;Header 2&lt;/th&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr&gt;\r\n            &lt;td&gt;Cell 1&lt;/td&gt;\r\n            &lt;td&gt;Cell 2&lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/table&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-231.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><strong>Conclusion</strong></h2>\r\n\r\n<p>In this section, we&#39;ve covered the basics of HTML, including the structure of an HTML document, common tags and attributes, and how to create a simple webpage. With this foundation, you&#39;re ready to move on to CSS Basics, where we&#39;ll learn how to style our webpage and make it visually appealing. Stay tuned!</p>\r\n\r\n<p>Feel free to experiment with different tags and attributes to see how they change your webpage!</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'Learn the basics of HTML in this Web Development tutorial for beginners. Get familiar with different tags and how to use and place then to structure your ideal website', 'articles/Html_baics_ois8mH8.jpg', '2024-08-01 09:47:47.571952', '2024-08-07 00:16:14.302805', 'published', 15, 4, 'Learn HTML Basics A Beginner\'s Guide to Building Websites', 'Get started with HTML basics and learn how to build a website from scratch. Understand HTML structure, tags, and attributes with our easy-to-follow guide.', 'HTML basics, learn HTML, HTML tutorial, HTML structure, HTML tags, HTML attributes, web development, beginner\'s guide, HTML basics for beginners', 1, 1, '', 1, 10, 'article', NULL),
(10, 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 'getting-started-with-python-programming-a-comprehensive-guide-for-beginners', '<p>Python, one of the most popular programming languages today, is known for its simplicity and versatility. In fact, it is so versatile that it is widely applied in fields like web development, data science, artificial intelligence, and automation, Python is perfect for newbies in programming, and this comprehensive guide is meant to walk you through the basics and help you build a strong foundation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Why Python?</h2>\r\n\r\n<p>Before we start, let&#39;s understand why Python stands out:</p>\r\n\r\n<ol>\r\n	<li><strong>Easy to Learn and Use</strong>: Python&#39;s syntax is clean and straightforward making it an excellent choice for beginners. The synthax is basically written and read like plane English, and that makes it easier for beginners on catch on pretty quickly.</li>\r\n	<li><strong>Versatile</strong>: Like I&#39;ve mentioned before, Python is used in various domains, including web development, data analysis, artificial intelligence, scientific computing, and more. Its extensive libraries and frameworks support a wide range of fields and applications.</li>\r\n	<li><strong>Community Support</strong>: Python has a vast and active community. This means that many developers around the world build packages that are useful in any and every aspect of development you can think of, and if you could think of one where Python hasn&#39;t been applied yet, then it&#39;s only a matter of time before someone plugs that hole, it&#39;s exciting knowing that you&#39;ll have access to numerous resources, tutorials like this one, and forums to help you solve problems and learn new skills.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Requirements</h2>\r\n\r\n<p>To learn python, you&#39;ll need 240 IQ, a minimum of 50k in your account, and all the time you could squeezes out of your day... Just kidding ????, you only need a PC and internet connection. Easy right? Now let&#39;s jump into it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Setting Up Python</h2>\r\n\r\n<h3>Installation</h3>\r\n\r\n<p>First, you&#39;ll need to install Python on your computer. Python is available for all major operating systems, including Windows, macOS, and Linux.</p>\r\n\r\n<ol>\r\n	<li><strong>Windows</strong>: Download the installer from the <a href=\"https://www.python.org/downloads/\" rel=\"noreferrer\" target=\"_new\">official Python website</a>. Run the installer and follow the prompts (Remember to check the box that says &quot;Add Python to PATH.&quot;).</li>\r\n	<li><strong>macOS</strong>: macOS comes with Python pre-installed, but it&#39;s usually an older version. Download the latest version from the <a href=\"https://www.python.org/downloads/\" rel=\"noreferrer\" target=\"_new\">official Python website</a>. Open the downloaded file and follow the installation instructions.</li>\r\n	<li><strong>Linux</strong>: Most Linux distributions come with Python pre-installed. You can check the version by opening a terminal and typing <code>python3 --version</code>. If you need to install or update Python, use your package manager. For example, on Ubuntu, you can use <code>sudo apt-get install python3</code>.</li>\r\n</ol>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/media/media/2024/08/01/screenshot-233.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /><span style=\"font-size:10px\">Official Python Website</span></p>\r\n\r\n<h3>Integrated Development Environment (IDE)</h3>\r\n\r\n<p>An IDE can make your coding experience more pleasant and efficient, otherwise you could just run your code through your systems text editor. It&#39;s boring, but hey, it still works. The popular IDE&#39;s are:</p>\r\n\r\n<ul>\r\n	<li><strong>PyCharm</strong>: A powerful IDE with a rich feature set, Its built specifically for python development and has no dedicated terminal, so you can&#39;t run commands directly from PyCharm.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/01/screenshot-234.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Visual Studio Code</strong>: A lightweight, customizable editor with excellent Python support. It has built in terminal, version control support, Jupyter notebook support, and lots of extensions for various programming languages, code beautifier and name it. They&#39;d probably have extensions for your hopes and dreams... I don&#39;t know, look it up. ????</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/01/screenshot-235.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Jupyter Notebook</strong>: Ideal for data analysis and scientific computing, allowing you to run code in an interactive notebook format.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/01/featured_hub1daa031c2af6888ff37bd93eb033a1a_71549_720x0_resize_lanczos_3.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>Not sure which one to go with? That&#39;s fine, as a beginner, I&#39;d advise you go with Visual Studio Code. It&#39;s very functional, user friendly and super easy to set up. And the best part is, you have extended support for whichever field or programming language you want to dive into.</p>\r\n\r\n<h2>Writing Your First Python Program</h2>\r\n\r\n<p>Now that you have Python installed and your IDE set up, it&#39;s time to write some code. Open your IDE and create a new file. You can name it whatever you like, but let&#39;s start with &quot;<code>hello.py</code>&quot;. (The &#39;.py&#39; extension is important cuz that&#39;s how your system knows it&#39;s a python file. ) In this file, type the following code:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">print(\"Hello, World!\")</code></pre>\r\n\r\n<p>Save the file and run it (You could activate the auto save feature in VsCode by clicking the &#39;file&#39; dropdown, and selecting Auto Save. When you&#39;re done, there should be a &quot;Run&quot; button, icon or option, click it to run your code. You can use VsCode terminal, but if you&#39;re using your systems terminal, whichever, navigate to the directory where your file is saved and type:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">python3 hello.py\r\n\r\n# Or py hello.py</code></pre>\r\n\r\n<p>You should see the output:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">Hello, World!</code></pre>\r\n\r\n<p>Congratulations! You&#39;ve just written and executed Python program. That&#39;s it. You&#39;re ready. Apply for jobs and conquer the corporate world. I mean it, go, you&#39;re done.</p>\r\n\r\n<p>I&#39;m joking again, c&#39;mon, can&#39;t you take a joke? ???? You still have allot more to learn if you really want to join the moving train, but don&#39;t worry, we&#39;ll take it one line of code at a time. Now lets move on. Try running the examples as we go along, so you see the results.</p>\r\n\r\n<h2>Understanding Basic Concepts</h2>\r\n\r\n<h3>Variables and Data Types</h3>\r\n\r\n<p>Variables are used to store data. Python supports various data types, including integers, floats, strings, and booleans. Think of variables as names given to specific data tpes or entire lines of logic. We&#39;ll get to that in a bit, Let&#39;s look into the various data types in Python.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># Integer (Simply a number without decimal points)\r\nx = 5\r\nprint(x)\r\n\r\n# Float (A number with decimal points)\r\ny = 3.14\r\nprint(y)\r\n\r\n# String (An alphabet, a text an entire sentence, or basically anything. As long as it is enclosed in quotes)\r\nname = \"Alice\"\r\nprint(name)\r\n\r\n# Boolean (Ah, the one and zero. Yes or No, Black or White. \"True or False\")\r\nis_student = True\r\nprint(is_student)</code></pre>\r\n\r\n<h3>Lists</h3>\r\n\r\n<p>Lists are used to store multiple items in a single variable. They are ordered and mutable (This means they can be changed). Hey, don&#39;t get intimated by these little terminologies, when you start coding python, you&#39;ll start using some of them yourself.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">fruits = [\"apple\", \"banana\", \"cherry\"] # (Storing the list of fruits in a variable \'fruits\')\r\nprint(fruits)\r\n\r\n# Accessing an element in the list\r\nprint(fruits[0])  # apple\r\n# (This is called indexing, we\'ll get to that later)\r\n\r\n# Adding an element to the list\r\nfruits.append(\"orange\")\r\nprint(fruits)\r\n\r\n# Removing an element from the list\r\nfruits.remove(\"banana\")\r\nprint(fruits)</code></pre>\r\n\r\n<h3>Dictionaries</h3>\r\n\r\n<p>Dictionaries store data in key-value pairs, you set a key, then you give that key a value. They are unordered and mutable. (Remember this term?)</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">person = {\r\n    \"name\": \"Alice\",\r\n    \"age\": 25,\r\n    \"city\": \"New York\"\r\n}\r\nprint(person)\r\n\r\n# Accessing values\r\nprint(person[\"name\"])  # Alice\r\n\r\n# Adding key-value pairs\r\nperson[\"email\"] = \"alice@example.com\"\r\nprint(person)\r\n\r\n# Removing key-value pairs\r\ndel person[\"age\"]\r\nprint(person)</code></pre>\r\n\r\n<h3>Loops</h3>\r\n\r\n<p>Loops allow you to execute a block of code repeatedly.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># For loop\r\nfor i in range(5):\r\n    print(i)\r\n\r\n# This block of code will \'i\' for whatever number of units are in the number 5\r\n\r\n\r\n# While loop\r\ncount = 0\r\nwhile count &lt; 5:\r\n    print(count)\r\n    count += 1 # A short way of saying \"Keep adding one to the present result\"\r\n\r\n# This block of code will keep displaying the word \'count\' until the value of count reaches five\r\n\r\n</code></pre>\r\n\r\n<h3>Functions</h3>\r\n\r\n<p>Functions are blocks of code that perform a specific task. They help make your code more modular and reusable. Meaning you can declare a function that performs a specific task and call it later in your code whenever you want to perform that task.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># Define a function\r\ndef greet(name):\r\n    print(f\"Hello, {name}!\")\r\n\r\n\r\n# Call it later when you want to greet Alice and Bob\r\ngreet(\"Alice\")\r\ngreet(\"Bob\")\r\n</code></pre>\r\n\r\n<h2>Next Steps</h2>\r\n\r\n<h4>Practice, Practice, Practice</h4>\r\n\r\n<p>Keep on coding until you&#39;re comfortable with the basics.</p>\r\n\r\n<p>The best way to learn programming is by doing. Now i know you already have some exciting things you want to try with what you&#39;ve learned so far. Well go ahead. Don&#39;t be scared if you run into any error, just start over. The more you practice, the more you&#39;ll get comfortable with writing eack line of code.</p>\r\n\r\n<h3>Join a Community</h3>\r\n\r\n<p>Engage with the Python community through forums, social media, and local meetups. Sites like Stack Overflow, Reddit, and Python.org have active communities where you can ask questions, share knowledge, and collaborate with others.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Python is a powerful and beginner-friendly programming language that opens up a world of possibilities. By following this guide and practicing regularly, you&#39;ll be well on your way to becoming proficient in Python. Leave a comment to share insights or ask whatever questions you might have on the topic. We&#39;ll meet again later to cover more advanced topics in Python programming.&nbsp; Happy coding!</p>', 'Python is one of the most popular programming languages today, renowned for its simplicity and versatility. This comprehensive guide will walk you through the basics of Python programming, helping you build a strong foundation for a successful coding journey. Whether you\'re a complete novice or looking to brush up on your skills, this article provides everything you need to get started with confidence.', 'articles/Getting_Started_with_Python_Programming_8YW1sVp.jpeg', '2024-08-01 19:43:42.245216', '2024-08-07 00:15:09.684304', 'published', 20, 10, 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 'Discover the essentials of Python programming with our comprehensive guide for beginners. Start your programming journey with confidence today!', 'Python programming, learn Python, Python for beginners, Python tutorial, introduction to Python, Python basics, coding in Python, beginner programming guide, Python setup, Python development', 1, 1, '', 1, 10, 'article', NULL);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `author_id`, `category_id`, `type`, `youtube_url`) VALUES
(11, 'Top 10 JavaScript Frameworks to Learn in 2024', 'top-10-javascript-frameworks-to-learn-in-2024', '<p>ure! Here are the top 10 JavaScript frameworks to learn in 2024:</p>\r\n\r\n<ol>\r\n	<li>React</li>\r\n	<li>Angular</li>\r\n	<li>Vue.js</li>\r\n	<li>Svelte</li>\r\n	<li>Next.js</li>\r\n	<li>Nuxt.js</li>\r\n	<li>Express.js</li>\r\n	<li>NestJS</li>\r\n	<li>Ember.js</li>\r\n	<li>Meteor.js</li>\r\n</ol>\r\n\r\n<p>Here are some subheadings to discuss under each framework:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Overview and Key Features</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Brief introduction</li>\r\n		<li>Main features</li>\r\n		<li>Why it&#39;s popular</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Use Cases</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Types of projects it&rsquo;s best suited for</li>\r\n		<li>Examples of companies or projects using it</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Learning Curve</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Ease of learning</li>\r\n		<li>Resources available for learning</li>\r\n		<li>Community support</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Performance and Scalability</strong>:</p>\r\n\r\n	<ul>\r\n		<li>Performance benchmarks</li>\r\n		<li>Scalability considerations</li>\r\n		<li>Best practices for optimizing performance</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>React</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>React is a widely-used JavaScript library developed by Facebook for building user interfaces, particularly single-page applications. React allows developers to create large web applications that can update and render efficiently in response to data changes. One of its key features is the use of a virtual DOM, which enhances performance by minimizing direct manipulation of the actual DOM. React&rsquo;s component-based architecture promotes reusability, making it easier to manage complex UIs.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Virtual DOM</li>\r\n	<li>JSX syntax</li>\r\n	<li>Component-based architecture</li>\r\n	<li>Unidirectional data flow</li>\r\n	<li>Extensive ecosystem (e.g., React Router, Redux)</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>React is ideal for building dynamic, high-performance web applications. It&rsquo;s commonly used for single-page applications (SPAs) and mobile apps (using React Native). Major companies like Facebook, Instagram, Airbnb, and Netflix use React in their tech stacks, showcasing its robustness and scalability.</p>\r\n\r\n<p>Examples of projects suited for React:</p>\r\n\r\n<ul>\r\n	<li>Social media platforms</li>\r\n	<li>E-commerce sites</li>\r\n	<li>Content management systems</li>\r\n	<li>Dashboards and data visualization tools</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>React has a relatively gentle learning curve for developers familiar with JavaScript. Its ecosystem is well-documented, with a wealth of tutorials, guides, and courses available. The React community is large and active, providing extensive support through forums, blogs, and open-source contributions.</p>\r\n\r\n<p>Resources for learning React:</p>\r\n\r\n<ul>\r\n	<li>Official React documentation</li>\r\n	<li>Online courses (e.g., Udemy, Coursera, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Stack Overflow, Reddit)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>React&#39;s virtual DOM significantly boosts performance by minimizing costly DOM manipulations. This makes it suitable for applications that require high performance and responsiveness. React&rsquo;s component-based architecture also aids in scalability, allowing developers to build and maintain large applications more efficiently.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use React&rsquo;s built-in tools like React Profiler</li>\r\n	<li>Implement code-splitting and lazy loading</li>\r\n	<li>Optimize component rendering with PureComponent or React.memo</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Angular</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Angular, developed by Google, is a comprehensive JavaScript framework for building dynamic web applications. It provides a complete solution with tools and features for building client-side applications using HTML, CSS, and JavaScript/TypeScript. Angular uses a component-based architecture similar to React but includes additional functionalities like dependency injection and RxJS for reactive programming.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Two-way data binding</li>\r\n	<li>Dependency injection</li>\r\n	<li>RxJS for reactive programming</li>\r\n	<li>TypeScript support</li>\r\n	<li>Angular CLI for streamlined development</li>\r\n	<li>Built-in routing and form validation</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Angular is well-suited for large-scale enterprise applications due to its robust architecture and powerful features. It is often used for developing complex, data-intensive applications that require real-time updates and extensive user interactions. Companies like Google, Microsoft, and IBM leverage Angular for various projects.</p>\r\n\r\n<p>Examples of projects suited for Angular:</p>\r\n\r\n<ul>\r\n	<li>Enterprise resource planning (ERP) systems</li>\r\n	<li>Customer relationship management (CRM) systems</li>\r\n	<li>E-commerce platforms</li>\r\n	<li>Progressive Web Apps (PWAs)</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Angular has a steeper learning curve compared to other frameworks like React or Vue.js, mainly due to its extensive features and reliance on TypeScript. However, the comprehensive official documentation and abundant online resources make it accessible to determined learners. The Angular community is also quite active, offering ample support and sharing best practices.</p>\r\n\r\n<p>Resources for learning Angular:</p>\r\n\r\n<ul>\r\n	<li>Official Angular documentation</li>\r\n	<li>Online courses (e.g., Pluralsight, Udemy, Angular University)</li>\r\n	<li>Community forums and discussion groups (e.g., Angular Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Angular&rsquo;s performance is generally excellent, thanks to features like Ahead-of-Time (AOT) compilation, which compiles the application during the build process, reducing runtime overhead. The framework also supports lazy loading, which helps improve load times by loading only the necessary modules when needed. Angular&rsquo;s modular structure aids in scaling applications efficiently.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Utilize AOT compilation</li>\r\n	<li>Implement lazy loading for modules</li>\r\n	<li>Use OnPush change detection strategy for improved performance</li>\r\n	<li>Optimize template expressions to avoid unnecessary computations</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Vue.js</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Vue.js is a progressive JavaScript framework for building user interfaces, created by Evan You. It is designed to be incrementally adoptable, meaning you can use as much or as little of the framework as needed. Vue is known for its simplicity, flexibility, and ease of integration with other projects and libraries.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Reactive data binding</li>\r\n	<li>Component-based architecture</li>\r\n	<li>Virtual DOM</li>\r\n	<li>Directives for extending HTML capabilities</li>\r\n	<li>Vue CLI for project scaffolding and tooling</li>\r\n	<li>Single-file components (SFCs) with scoped styles</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Vue.js is highly versatile and can be used for various types of applications, from simple single-page applications (SPAs) to complex enterprise systems. It is particularly popular for its ease of integration into existing projects and its gentle learning curve, making it a favorite among both beginners and experienced developers. Companies like Alibaba, Xiaomi, and GitLab use Vue.js in their projects.</p>\r\n\r\n<p>Examples of projects suited for Vue.js:</p>\r\n\r\n<ul>\r\n	<li>SPAs and PWAs</li>\r\n	<li>Interactive web interfaces</li>\r\n	<li>E-commerce platforms</li>\r\n	<li>Content management systems</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Vue.js is often praised for its gentle learning curve, especially when compared to Angular. Its simplicity and clear documentation make it accessible for developers of all skill levels. The Vue.js community is active and supportive, with numerous tutorials, guides, and resources available online.</p>\r\n\r\n<p>Resources for learning Vue.js:</p>\r\n\r\n<ul>\r\n	<li>Official Vue.js documentation</li>\r\n	<li>Online courses (e.g., Vue Mastery, Udemy, Scrimba)</li>\r\n	<li>Community forums and discussion groups (e.g., Vue Land Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Vue.js offers excellent performance due to its efficient reactivity system and virtual DOM. The framework is designed to be lightweight and fast, making it suitable for both small and large-scale applications. Vue&#39;s modular architecture allows developers to scale applications efficiently by organizing the codebase into reusable components.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use the Vue Devtools for performance monitoring</li>\r\n	<li>Implement lazy loading for components and routes</li>\r\n	<li>Optimize component reactivity with computed properties and watchers</li>\r\n	<li>Minimize the use of inline styles and bindings</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Svelte</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Svelte is a modern JavaScript framework that takes a unique approach to building user interfaces. Unlike traditional frameworks like React or Vue.js, which perform the bulk of their work in the browser, Svelte shifts much of this work to compile time. This means that Svelte applications are highly optimized and require less browser processing power, leading to faster and more efficient apps.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Compile-time optimizations</li>\r\n	<li>No virtual DOM</li>\r\n	<li>Reactive declarations</li>\r\n	<li>Simplicity and minimal boilerplate</li>\r\n	<li>SvelteKit for building full-stack applications</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Svelte is well-suited for applications where performance is critical, such as real-time applications and SPAs. Its simplicity also makes it an excellent choice for smaller projects or prototypes. Companies like The New York Times and Spotify have utilized Svelte in their projects, demonstrating its capability to handle production-level applications.</p>\r\n\r\n<p>Examples of projects suited for Svelte:</p>\r\n\r\n<ul>\r\n	<li>Real-time applications (e.g., chat apps, live updates)</li>\r\n	<li>SPAs and PWAs</li>\r\n	<li>Interactive dashboards and data visualizations</li>\r\n	<li>Prototypes and small-to-medium-sized web applications</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Svelte&rsquo;s learning curve is relatively gentle, especially for developers who are already familiar with JavaScript. Its syntax is straightforward and easy to understand, with minimal boilerplate code. The official Svelte documentation is comprehensive and well-organized, and the community is growing rapidly, providing plenty of resources for learners.</p>\r\n\r\n<p>Resources for learning Svelte:</p>\r\n\r\n<ul>\r\n	<li>Official Svelte documentation</li>\r\n	<li>Online courses (e.g., Svelte Mastery, Udemy)</li>\r\n	<li>Community forums and discussion groups (e.g., Svelte Society Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Svelte offers exceptional performance due to its compile-time optimizations and lack of a virtual DOM. This approach results in smaller bundle sizes and faster runtime performance. Svelte&rsquo;s reactive programming model also contributes to its efficiency. While Svelte is relatively new, its growing ecosystem and tools like SvelteKit make it increasingly capable of handling scalable applications.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Utilize Svelte&rsquo;s built-in performance monitoring tools</li>\r\n	<li>Optimize reactive declarations to minimize unnecessary updates</li>\r\n	<li>Leverage SvelteKit for building and optimizing full-stack applications</li>\r\n	<li>Use code-splitting and lazy loading to improve initial load times</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Next.js</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Next.js is a React framework developed by Vercel that enables server-side rendering and static site generation for React applications. It simplifies the development of complex web applications by providing a set of tools and conventions for building performant, scalable applications. Next.js is known for its flexibility, allowing developers to choose between static and dynamic rendering as needed.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Server-side rendering (SSR)</li>\r\n	<li>Static site generation (SSG)</li>\r\n	<li>API routes</li>\r\n	<li>Automatic code splitting</li>\r\n	<li>File-based routing</li>\r\n	<li>Built-in CSS and Sass support</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Next.js is ideal for applications that require fast load times and improved SEO, such as content-heavy websites, e-commerce platforms, and marketing sites. Its ability to handle server-side rendering makes it suitable for applications where dynamic content needs to be rendered on the server to improve performance and SEO. Companies like Netflix, Hulu, and TikTok use Next.js in their production environments.</p>\r\n\r\n<p>Examples of projects suited for Next.js:</p>\r\n\r\n<ul>\r\n	<li>E-commerce websites</li>\r\n	<li>News and content-heavy websites</li>\r\n	<li>Blogs and marketing sites</li>\r\n	<li>Complex web applications requiring both SSR and SSG</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Next.js has a moderate learning curve, especially for developers already familiar with React. The framework&rsquo;s conventions and built-in features simplify many aspects of web development, making it easier to get started. The official documentation is detailed and provides numerous examples and tutorials. Additionally, the Next.js community is active and supportive, with many resources available for learning.</p>\r\n\r\n<p>Resources for learning Next.js:</p>\r\n\r\n<ul>\r\n	<li>Official Next.js documentation</li>\r\n	<li>Online courses (e.g., Udemy, Egghead.io, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Next.js Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Next.js excels in performance, thanks to its ability to pre-render pages at build time (SSG) and on-demand (SSR). This results in faster load times and improved SEO. Next.js also supports automatic code splitting, ensuring that only the necessary code is loaded for each page. The framework&rsquo;s flexibility allows developers to scale applications efficiently, combining static and dynamic content as needed.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use static site generation (SSG) for pages that don&rsquo;t require frequent updates</li>\r\n	<li>Implement server-side rendering (SSR) for dynamic content</li>\r\n	<li>Leverage Next.js API routes for serverless functions</li>\r\n	<li>Optimize images and use built-in image optimization features</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Nuxt.js</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Nuxt.js is a powerful framework built on top of Vue.js, designed to create universal, server-side rendered (SSR) applications. It provides a robust architecture that simplifies the development of Vue.js applications by offering features like automatic routing, state management, and server-side rendering. Nuxt.js is known for its flexibility, allowing developers to choose between SSR, static site generation (SSG), and single-page applications (SPA).</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Server-side rendering (SSR)</li>\r\n	<li>Static site generation (SSG)</li>\r\n	<li>Automatic code splitting</li>\r\n	<li>File-based routing</li>\r\n	<li>Vuex integration for state management</li>\r\n	<li>Modular architecture with over 50 modules</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Nuxt.js is ideal for building high-performance web applications that require improved SEO and fast load times. It is particularly well-suited for content-heavy websites, blogs, and e-commerce platforms. Companies like Xiaomi, Alibaba, and Vice use Nuxt.js for their web applications, highlighting its reliability and scalability.</p>\r\n\r\n<p>Examples of projects suited for Nuxt.js:</p>\r\n\r\n<ul>\r\n	<li>E-commerce platforms</li>\r\n	<li>Blogs and content-heavy websites</li>\r\n	<li>Corporate websites</li>\r\n	<li>Complex web applications requiring SSR and SSG</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Nuxt.js has a moderate learning curve, especially for developers familiar with Vue.js. The framework&rsquo;s conventions and built-in features simplify many aspects of web development, making it easier to get started. The official documentation is comprehensive and provides numerous examples and tutorials. Additionally, the Nuxt.js community is active and supportive, with many resources available for learning.</p>\r\n\r\n<p>Resources for learning Nuxt.js:</p>\r\n\r\n<ul>\r\n	<li>Official Nuxt.js documentation</li>\r\n	<li>Online courses (e.g., Udemy, Vue School, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Nuxt.js Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Nuxt.js offers excellent performance through its server-side rendering and static site generation capabilities. This results in faster load times and improved SEO. Nuxt.js also supports automatic code splitting, ensuring that only the necessary code is loaded for each page. The framework&rsquo;s modular architecture allows developers to scale applications efficiently by adding and configuring modules as needed.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use static site generation (SSG) for pages that don&rsquo;t require frequent updates</li>\r\n	<li>Implement server-side rendering (SSR) for dynamic content</li>\r\n	<li>Optimize images and use built-in image optimization features</li>\r\n	<li>Leverage Nuxt.js modules for caching and performance improvements</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Express.js</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Express.js, often referred to as Express, is a minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications. It simplifies the development of server-side applications by providing a thin layer of fundamental web application features, without obscuring Node.js features. Express is known for its simplicity, performance, and scalability.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Middleware support</li>\r\n	<li>Routing</li>\r\n	<li>Template engines</li>\r\n	<li>Robust API development</li>\r\n	<li>Flexibility and minimalism</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Express.js is ideal for building RESTful APIs and server-side applications. It is commonly used for developing single-page applications (SPAs), RESTful APIs, and web applications that require a fast, scalable, and flexible backend. Companies like IBM, Uber, and Accenture use Express.js in their tech stacks.</p>\r\n\r\n<p>Examples of projects suited for Express.js:</p>\r\n\r\n<ul>\r\n	<li>RESTful APIs</li>\r\n	<li>Single-page applications (SPAs)</li>\r\n	<li>Web applications requiring server-side logic</li>\r\n	<li>Microservices architectures</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Express.js has a gentle learning curve, especially for developers familiar with JavaScript and Node.js. Its minimalistic and unopinionated nature makes it easy to get started, while still offering powerful features through middleware and plugins. The official documentation is concise and well-organized, and there are numerous tutorials and resources available online.</p>\r\n\r\n<p>Resources for learning Express.js:</p>\r\n\r\n<ul>\r\n	<li>Official Express.js documentation</li>\r\n	<li>Online courses (e.g., Udemy, freeCodeCamp, Pluralsight)</li>\r\n	<li>Community forums and discussion groups (e.g., Stack Overflow, Reddit)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Express.js offers excellent performance due to its lightweight nature and efficient handling of HTTP requests and responses. Its middleware architecture allows for the efficient management of request handling, enabling the development of high-performance web applications. Express.js is highly scalable, making it suitable for both small projects and large-scale applications.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use middleware effectively to manage request handling</li>\r\n	<li>Implement caching strategies to reduce server load</li>\r\n	<li>Optimize database queries and use connection pooling</li>\r\n	<li>Leverage load balancing and clustering for high-traffic applications</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>NestJS</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>NestJS is a progressive Node.js framework built with TypeScript that is designed for building efficient, reliable, and scalable server-side applications. It draws on the concepts of Angular, bringing a modular architecture and strong typing to the backend development world. NestJS leverages TypeScript&#39;s capabilities to provide a highly maintainable codebase and enhances the development experience with a powerful CLI and extensive documentation.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Modular architecture</li>\r\n	<li>Dependency injection</li>\r\n	<li>Built-in support for TypeScript</li>\r\n	<li>Middleware and guards</li>\r\n	<li>Microservices architecture support</li>\r\n	<li>Comprehensive CLI</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>NestJS is ideal for developing enterprise-level applications, RESTful APIs, and microservices architectures. Its modular and scalable design makes it well-suited for complex applications requiring maintainability and scalability. Companies like Adidas, Roche, and Capgemini use NestJS for their server-side applications.</p>\r\n\r\n<p>Examples of projects suited for NestJS:</p>\r\n\r\n<ul>\r\n	<li>Enterprise-level applications</li>\r\n	<li>RESTful APIs</li>\r\n	<li>Microservices architectures</li>\r\n	<li>Real-time applications (e.g., chat apps, live updates)</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>NestJS has a moderate learning curve, especially for developers familiar with TypeScript and object-oriented programming. Its similarity to Angular&#39;s architecture can make it easier for developers experienced with Angular to transition to NestJS. The official documentation is extensive and provides numerous examples and tutorials. The NestJS community is also active and supportive, offering plenty of resources for learners.</p>\r\n\r\n<p>Resources for learning NestJS:</p>\r\n\r\n<ul>\r\n	<li>Official NestJS documentation</li>\r\n	<li>Online courses (e.g., Udemy, Pluralsight, NestJS courses)</li>\r\n	<li>Community forums and discussion groups (e.g., NestJS Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>NestJS is designed for performance and scalability, leveraging Node.js&#39;s non-blocking I/O model. Its modular architecture and dependency injection system enable developers to build highly scalable applications. NestJS also supports microservices architectures, making it suitable for large-scale, distributed systems.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use middleware and guards effectively to manage request handling</li>\r\n	<li>Implement caching strategies to reduce server load</li>\r\n	<li>Optimize database queries and use connection pooling</li>\r\n	<li>Leverage microservices architecture for scalability and fault tolerance</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Ember.js</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Ember.js is a robust JavaScript framework for building ambitious web applications. It provides a comprehensive set of tools and conventions to help developers build scalable and maintainable applications with a focus on productivity and performance. Ember follows the convention-over-configuration principle, offering a structured approach to application development with built-in best practices.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Convention-over-configuration</li>\r\n	<li>Two-way data binding</li>\r\n	<li>Ember CLI for project scaffolding and tooling</li>\r\n	<li>Ember Data for data management</li>\r\n	<li>Built-in router with nested routes</li>\r\n	<li>Component-based architecture</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Ember.js is well-suited for large-scale web applications that require a strong convention-based structure and a comprehensive set of tools. It excels in projects that need to be built quickly and maintained over time, making it ideal for enterprise-level applications and long-term projects. Companies like Discourse, LinkedIn, and Apple use Ember.js for their web applications.</p>\r\n\r\n<p>Examples of projects suited for Ember.js:</p>\r\n\r\n<ul>\r\n	<li>Large-scale enterprise applications</li>\r\n	<li>CRM systems</li>\r\n	<li>Collaborative platforms</li>\r\n	<li>Content management systems</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Ember.js has a steeper learning curve compared to some other frameworks due to its opinionated nature and extensive feature set. However, its convention-over-configuration approach can simplify development once the initial learning curve is overcome. The official documentation is detailed and includes a variety of tutorials and guides. The Ember.js community is active and provides valuable support through forums and discussions.</p>\r\n\r\n<p>Resources for learning Ember.js:</p>\r\n\r\n<ul>\r\n	<li>Official Ember.js documentation</li>\r\n	<li>Online courses (e.g., Ember Learning, Udemy)</li>\r\n	<li>Community forums and discussion groups (e.g., Ember Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Ember.js is designed for performance and scalability, with features like the Ember CLI and Ember Data optimizing development workflows and data management. Its built-in router and component-based architecture help in building scalable applications with efficient performance. Ember.js applications can be scaled effectively through its modular design and best practices.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use Ember CLI to manage and optimize builds</li>\r\n	<li>Implement lazy loading for routes and components</li>\r\n	<li>Optimize data management with Ember Data</li>\r\n	<li>Use performance monitoring tools to identify and address bottlenecks</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Meteor.js</h3>\r\n\r\n<h4>Overview and Key Features</h4>\r\n\r\n<p>Meteor.js is a full-stack JavaScript framework designed to simplify the development of real-time web applications. It provides an integrated environment for building both client-side and server-side applications with minimal configuration. Meteor focuses on rapid development and seamless integration of various technologies and libraries, offering a comprehensive solution for modern web applications.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Real-time data updates</li>\r\n	<li>Full-stack integration</li>\r\n	<li>Simple API for working with MongoDB</li>\r\n	<li>Built-in user authentication</li>\r\n	<li>Meteor packages for adding functionality</li>\r\n	<li>Reactive programming model</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Meteor.js is particularly well-suited for applications that require real-time data synchronization, such as chat applications, collaborative tools, and live data dashboards. Its ease of use and integrated environment make it a good choice for rapid prototyping and MVP (minimum viable product) development. Companies like Xiaomi and Roche have used Meteor.js in their projects.</p>\r\n\r\n<p>Examples of projects suited for Meteor.js:</p>\r\n\r\n<ul>\r\n	<li>Real-time chat applications</li>\r\n	<li>Collaborative platforms (e.g., project management tools)</li>\r\n	<li>Live data dashboards</li>\r\n	<li>Prototyping and MVPs</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Meteor.js has a relatively gentle learning curve, especially for developers familiar with JavaScript. Its integrated approach and simplicity allow developers to get up and running quickly. The official documentation provides a clear guide to getting started, and the Meteor community offers additional resources and support.</p>\r\n\r\n<p>Resources for learning Meteor.js:</p>\r\n\r\n<ul>\r\n	<li>Official Meteor.js documentation</li>\r\n	<li>Online courses (e.g., Meteor Tutorials on Udemy, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Meteor Forum, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Meteor.js is designed for real-time performance, with features like live data updates and reactive programming enhancing responsiveness. However, its all-in-one approach can sometimes lead to performance bottlenecks for very large applications. To ensure scalability, developers should carefully manage database interactions and optimize the use of Meteor&rsquo;s features.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use Meteor&rsquo;s pub/sub system efficiently to minimize data transfer</li>\r\n	<li>Optimize database queries and use indexes effectively</li>\r\n	<li>Implement server-side caching and load balancing</li>\r\n	<li>Modularize code and use Meteor packages wisely to manage dependencies</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Conclusion</h3>\r\n\r\n<p>Choosing the best JavaScript framework depends largely on the specific needs of your project and your familiarity with the technology. Each of the frameworks discussed has its strengths and ideal use cases:</p>\r\n\r\n<ul>\r\n	<li><strong>React</strong> is highly versatile and excellent for building interactive user interfaces with a large ecosystem of tools and libraries.</li>\r\n	<li><strong>Angular</strong> provides a comprehensive solution with strong support for enterprise-level applications and robust features like dependency injection and a powerful CLI.</li>\r\n	<li><strong>Vue.js</strong> stands out for its simplicity and ease of integration, making it a great choice for both beginners and advanced users looking for flexibility.</li>\r\n	<li><strong>Svelte</strong> offers a unique approach by compiling code at build time, resulting in highly optimized and performant applications with less browser overhead.</li>\r\n	<li><strong>Next.js</strong> excels in server-side rendering and static site generation, making it perfect for SEO-focused and performance-sensitive applications.</li>\r\n	<li><strong>Nuxt.js</strong> provides similar benefits to Next.js but for Vue.js applications, with a focus on server-side rendering and static generation.</li>\r\n	<li><strong>Express.js</strong> is a lightweight and flexible choice for server-side applications and APIs, renowned for its simplicity and scalability.</li>\r\n	<li><strong>NestJS</strong> combines TypeScript with a modular architecture, making it suitable for building enterprise-grade applications and microservices.</li>\r\n	<li><strong>Ember.js</strong> offers a convention-over-configuration approach, which can speed up development for complex applications but requires a steeper learning curve.</li>\r\n	<li><strong>Meteor.js</strong> provides a full-stack solution with built-in real-time capabilities, ideal for rapid development of real-time applications and prototypes.</li>\r\n</ul>\r\n\r\n<p>Ultimately, the &quot;best&quot; framework is the one that aligns with your project&#39;s requirements and your development preferences. Consider factors such as the complexity of your application, performance needs, and your team&#39;s expertise when making your choice. Experimenting with different frameworks and exploring their documentation and communities can also help you make an informed decision that best suits your needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'In the ever-evolving landscape of web development, staying updated with the latest tools and frameworks is crucial. As we step into 2024, we bring you an in-depth look at the top 10 JavaScript frameworks that should be on your radar. Whether you\'re building dynamic UIs, robust backends, or real-time applications, these frameworks offer the features and capabilities to streamline your development process and enhance your projects.', 'articles/20240806_170802.jpg', '2024-08-03 07:47:04.008672', '2024-08-07 00:12:59.679824', 'draft', 30, 0, 'Top 10 JavaScript Frameworks to Learn in 2024: Boost Your Web Development Skills', 'Discover the top 10 JavaScript frameworks to learn in 2024. Enhance your web development projects with our in-depth analysis of React, Angular, Vue.js, Svelte,', 'JavaScript, frameworks, web development, React, Angular, Vue.js, Svelte, Next.js, Nuxt.js, Express.js, NestJS, Ember.js, Meteor.js, 2024 trends, programming', 1, 0, '', 1, 4, 'article', NULL),
(12, 'Essential Git Commands Every Developer Should Know', 'essential-git-commands-every-developer-should-know', '<p>Git is an indispensable tool in modern software development. Whether you&#39;re working on a solo project or collaborating with a team, knowing how to effectively use Git can make your workflow more efficient and reliable. Here are some essential Git commands that every developer should know, along with their use cases and benefits in real-life development scenarios.</p>\r\n\r\n<h4>1. <code>git init</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Starting a new project and want to keep track of changes from the beginning.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git init</code> command is used to create a new Git repository. This sets up the necessary files and directories that Git uses to keep track of changes to your project.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git init</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> By initializing a Git repository at the start of your project, you ensure that every change is tracked from the very beginning, making it easier to manage and revert changes if needed.</p>\r\n\r\n<h4>2. <code>git clone</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Downloading an existing repository from a remote source.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git clone</code> command is used to create a copy of an existing Git repository. This is commonly used to clone repositories from platforms like GitHub, GitLab, or Bitbucket.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git clone https://github.com/user/repo.git</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Cloning repositories allows you to easily collaborate on projects by working on a local copy of the repository, making it easy to contribute to open-source projects or share your own work.</p>\r\n\r\n<h4>3. <code>git add</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Staging changes to be committed to the repository.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git add</code> command is used to stage changes for the next commit. This can be used to add individual files or entire directories.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git add file.txt\r\ngit add .</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Staging changes before committing allows you to review what will be included in your next commit, ensuring that only the necessary changes are recorded.</p>\r\n\r\n<h4>4. <code>git commit</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Saving changes to the repository with a message describing the changes.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git commit</code> command is used to save your staged changes to the repository. Each commit should include a message that describes the changes made.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git commit -m \"Add new feature to user login\"</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Committing changes with descriptive messages creates a clear history of your project&#39;s development, making it easier to understand the evolution of your codebase.</p>\r\n\r\n<h4>5. <code>git status</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Checking the status of your working directory and staging area.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git status</code> command provides information about the current state of your working directory and staging area. It shows which files are modified, staged for commit, or untracked.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git status</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Regularly checking the status of your repository helps you keep track of your changes and ensures that you don&#39;t accidentally miss any important updates before committing.</p>\r\n\r\n<h4>6. <code>git push</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Uploading your local changes to a remote repository.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git push</code> command is used to upload your local commits to a remote repository. This is typically used to share your changes with collaborators or back up your work.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git push origin main</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Pushing changes to a remote repository ensures that your work is safely backed up and available to others who need access to the project.</p>\r\n\r\n<h4>7. <code>git pull</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Fetching and merging changes from a remote repository.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git pull</code> command is used to fetch changes from a remote repository and merge them into your local branch. This ensures that your local repository is up-to-date with the remote repository.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git pull origin main</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Pulling changes regularly keeps your local repository synchronized with the remote repository, preventing conflicts and ensuring you have the latest updates.</p>\r\n\r\n<h4>8. <code>git branch</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Creating and managing branches in your repository.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git branch</code> command is used to create, list, and delete branches in your repository. Branches are used to develop features, fix bugs, or experiment with new ideas without affecting the main codebase.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git branch new-feature\r\ngit branch -d old-feature</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Using branches allows you to work on multiple features or fixes simultaneously without interfering with the main codebase, promoting a clean and organized development workflow.</p>\r\n\r\n<h4>9. <code>git merge</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Combining changes from different branches.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git merge</code> command is used to combine changes from one branch into another. This is typically done to integrate new features or fixes into the main branch.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git merge new-feature</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Merging branches allows you to integrate and test changes in isolation before incorporating them into the main codebase, ensuring stability and reducing the risk of introducing bugs.</p>\r\n\r\n<h4>10. <code>git log</code></h4>\r\n\r\n<p><strong>Use Case:</strong></p>\r\n\r\n<ul>\r\n	<li>Viewing the commit history of the repository.</li>\r\n</ul>\r\n\r\n<p><strong>Description:</strong> The <code>git log</code> command displays the commit history of your repository, showing information about each commit, including the commit message, author, and date.</p>\r\n\r\n<p><strong>Example:</strong></p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">git log</code></pre>\r\n\r\n<p><strong>Real-Life Benefit:</strong> Reviewing the commit history helps you understand the evolution of your project, track down when specific changes were made, and identify the cause of issues.</p>\r\n\r\n<h4>Conclusion</h4>\r\n\r\n<p>Mastering these essential Git commands will greatly enhance your development workflow, whether you&#39;re working on solo projects or collaborating with a team. By effectively managing your codebase, tracking changes, and collaborating with others, you can ensure a more organized, efficient, and error-free development process. Git&#39;s powerful version control capabilities are invaluable for any developer, making it a crucial tool to learn and utilize in your daily work.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>1. Git Repository Initialization</h3>\r\n\r\n<p><strong>Description:</strong> A screenshot of a terminal window showing the <code>git init</code> command being executed, with the output indicating that a new repository has been initialized.</p>\r\n\r\n<p><strong>Location:</strong> Place this image right after the description of the <code>git init</code> command.</p>\r\n\r\n<hr />\r\n<h3>2. Cloning a Repository</h3>\r\n\r\n<p><strong>Description:</strong> An image showing the process of cloning a repository from GitHub. This can include the GitHub repository page and the terminal window where the <code>git clone</code> command is run.</p>\r\n\r\n<p><strong>Location:</strong> Insert this image after the explanation of the <code>git clone</code> command.</p>\r\n\r\n<hr />\r\n<h3>3. Staging Changes</h3>\r\n\r\n<p><strong>Description:</strong> A screenshot of the terminal showing files being staged using the <code>git add</code> command, highlighting the changes being added to the staging area.</p>\r\n\r\n<p><strong>Location:</strong> Place this image after the description and example of the <code>git add</code> command.</p>\r\n\r\n<hr />\r\n<h3>4. Committing Changes</h3>\r\n\r\n<p><strong>Description:</strong> A screenshot of the terminal displaying the <code>git commit</code> command with a commit message, showing the successful commit message in the output.</p>\r\n\r\n<p><strong>Location:</strong> Include this image after the explanation of the <code>git commit</code> command.</p>\r\n\r\n<hr />\r\n<h3>5. Checking Status</h3>\r\n\r\n<p><strong>Description:</strong> An image showing the output of the <code>git status</code> command in the terminal, indicating the current state of the working directory and staging area.</p>\r\n\r\n<p><strong>Location:</strong> Insert this image after the description of the <code>git status</code> command.</p>\r\n\r\n<hr />\r\n<h3>6. Pushing to Remote Repository</h3>\r\n\r\n<p><strong>Description:</strong> A screenshot showing the <code>git push</code> command being executed in the terminal, with the output confirming that the changes have been pushed to the remote repository.</p>\r\n\r\n<p><strong>Location:</strong> Place this image after the explanation of the <code>git push</code> command.</p>\r\n\r\n<hr />\r\n<h3>7. Pulling from Remote Repository</h3>\r\n\r\n<p><strong>Description:</strong> An image showing the terminal output of the <code>git pull</code> command, demonstrating the process of fetching and merging changes from the remote repository.</p>\r\n\r\n<p><strong>Location:</strong> Insert this image after the description of the <code>git pull</code> command.</p>\r\n\r\n<hr />\r\n<h3>8. Creating and Managing Branches</h3>\r\n\r\n<p><strong>Description:</strong> A visual representation of branching in Git. This could be a simple diagram showing branches diverging and merging, or a screenshot of the terminal showing <code>git branch</code> commands.</p>\r\n\r\n<p><strong>Location:</strong> Place this image after the explanation of the <code>git branch</code> command.</p>\r\n\r\n<hr />\r\n<h3>9. Merging Branches</h3>\r\n\r\n<p><strong>Description:</strong> A screenshot of the terminal displaying the <code>git merge</code> command and the resulting output, indicating a successful merge.</p>\r\n\r\n<p><strong>Location:</strong> Include this image after the description of the <code>git merge</code> command.</p>\r\n\r\n<hr />\r\n<h3>10. Viewing Commit History</h3>\r\n\r\n<p><strong>Description:</strong> A screenshot showing the <code>git log</code> command in the terminal, highlighting the commit history with commit messages, authors, and dates.</p>\r\n\r\n<p><strong>Location:</strong> Insert this image after the explanation of the <code>git log</code> command.</p>\r\n\r\n<hr />\r\n<h3>General Visual Enhancements</h3>\r\n\r\n<p><strong>Description:</strong> Add a few visually appealing, relevant images such as:</p>\r\n\r\n<ul>\r\n	<li>An infographic summarizing all the essential Git commands.</li>\r\n	<li>Icons or logos representing Git and popular Git hosting services like GitHub, GitLab, or Bitbucket.</li>\r\n</ul>\r\n\r\n<p><strong>Location:</strong> Use these images in the introduction or conclusion to visually break up the text and summarize key points.</p>', 'Git is an essential tool for developers, providing powerful version control capabilities to manage code changes effectively. This guide covers the most important Git commands, offering use cases and real-life benefits to enhance your development workflow.', 'articles/20240804_152815.jpg', '2024-08-03 10:14:28.183846', '2024-08-07 00:12:43.232152', 'draft', 10, 0, 'Essential Git Commands Every Developer Should Know: A Comprehensive Guide', 'Discover the essential Git commands every developer should know. Learn how to use Git effectively with real-life examples and benefits for your development work', 'Git, Git commands, version control, software development, programming, coding, developer tools, Git tutorial, GitHub, coding best practices, learn Git, Git guide, Git tips', 1, 0, '', 1, 4, 'article', NULL);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `author_id`, `category_id`, `type`, `youtube_url`) VALUES
(13, 'How to Build a REST API with Django and Django REST Framework', 'how-to-build-a-rest-api-with-django-and-django-rest-framework', '<p>In this tutorial, we&#39;ll walk through the steps to create a simple REST API using Django and Django REST Framework (DRF). We&#39;ll create a basic API for a to-do list application. By the end of this tutorial, you&#39;ll understand how to set up a Django project, configure Django REST Framework, and create CRUD operations for a to-do list.</p>\r\n\r\n<h2>Prerequisites</h2>\r\n\r\n<p>Before we start, make sure you have the following installed:</p>\r\n\r\n<ul>\r\n	<li>Python (version 3.7 or higher)</li>\r\n	<li>Django (version 3.0 or higher)</li>\r\n	<li>Django REST Framework</li>\r\n</ul>\r\n\r\n<p>You can install Django and DRF using pip:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">pip install django\r\npip install djangorestframework</code></pre>\r\n\r\n<h2>Step 1: Set Up the Django Project</h2>\r\n\r\n<p>First, let&#39;s create a new Django project. Open your terminal and run the following commands:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">django-admin startproject todo_project\r\ncd todo_project</code></pre>\r\n\r\n<p>Next, create a new app called <code>todos</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py startapp todos</code></pre>\r\n\r\n<p>Add the new app and Django REST Framework to your <code>INSTALLED_APPS</code> in <code>todo_project/settings.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todo_project/settings.py\r\n\r\nINSTALLED_APPS = [\r\n    ...\r\n    \'rest_framework\',\r\n    \'todos\',\r\n]</code></pre>\r\n\r\n<h2>Step 2: Create the To-Do Model</h2>\r\n\r\n<p>In the <code>todos</code> app, create a model for the to-do items. Open <code>todos/models.py</code> and define the model:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/models.py\r\n\r\nfrom django.db import models\r\n\r\nclass Todo(models.Model):\r\n    title = models.CharField(max_length=100)\r\n    description = models.TextField(blank=True, null=True)\r\n    completed = models.BooleanField(default=False)\r\n\r\n    def __str__(self):\r\n        return self.title</code></pre>\r\n\r\n<p>After defining the model, create and apply the migrations:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py makemigrations\r\npython manage.py migrate</code></pre>\r\n\r\n<h2>Step 3: Create the Serializers</h2>\r\n\r\n<p>Serializers in Django REST Framework convert complex data types (like Django models) into JSON and vice versa. Create a new file <code>todos/serializers.py</code> and define a serializer for the <code>Todo</code> model:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/serializers.py\r\n\r\nfrom rest_framework import serializers\r\nfrom .models import Todo\r\n\r\nclass TodoSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model = Todo\r\n        fields = \'__all__\'</code></pre>\r\n\r\n<h2>Step 4: Create the Views</h2>\r\n\r\n<p>Next, create views to handle the API endpoints. Open <code>todos/views.py</code> and define the views using Django REST Framework&#39;s generic views:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/views.py\r\n\r\nfrom rest_framework import generics\r\nfrom .models import Todo\r\nfrom .serializers import TodoSerializer\r\n\r\nclass TodoListCreate(generics.ListCreateAPIView):\r\n    queryset = Todo.objects.all()\r\n    serializer_class = TodoSerializer\r\n\r\nclass TodoRetrieveUpdateDestroy(generics.RetrieveUpdateDestroyAPIView):\r\n    queryset = Todo.objects.all()\r\n    serializer_class = TodoSerializer</code></pre>\r\n\r\n<h2>Step 5: Define the URLs</h2>\r\n\r\n<p>Now, let&#39;s define the URLs for the API endpoints. Create a new file <code>todos/urls.py</code> and add the following code:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/urls.py\r\n\r\nfrom django.urls import path\r\nfrom .views import TodoListCreate, TodoRetrieveUpdateDestroy\r\n\r\nurlpatterns = [\r\n    path(\'todos/\', TodoListCreate.as_view(), name=\'todo-list-create\'),\r\n    path(\'todos/&lt;int:pk&gt;/\', TodoRetrieveUpdateDestroy.as_view(), name=\'todo-retrieve-update-destroy\'),\r\n]</code></pre>\r\n\r\n<p>Include the <code>todos</code> URLs in the main project&#39;s URL configuration. Open <code>todo_project/urls.py</code> and modify it as follows:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todo_project/urls.py\r\n\r\nfrom django.contrib import admin\r\nfrom django.urls import path, include\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'api/\', include(\'todos.urls\')),\r\n]</code></pre>\r\n\r\n<h2>Step 6: Test the API</h2>\r\n\r\n<p>With everything set up, you can now run the Django development server and test the API:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py runserver</code></pre>\r\n\r\n<p>You can use tools like Postman or curl to interact with the API endpoints. Here are some examples using curl:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Create a new to-do item</strong>:</p>\r\n	</li>\r\n</ol>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl -X POST -H \"Content-Type: application/json\" -d \'{\"title\": \"Buy groceries\", \"description\": \"Milk, Eggs, Bread\"}\' http://127.0.0.1:8000/api/todos/</code></pre>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>2.<strong> List all to-do items</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl http://127.0.0.1:8000/api/todos/</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 3.<strong> Retrieve a specific to-do item</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl http://127.0.0.1:8000/api/todos/1/</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 4.<strong> Update a to-do item</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl -X PUT -H \"Content-Type: application/json\" -d \'{\"title\": \"Buy groceries\", \"description\": \"Milk, Eggs, Bread, Cheese\", \"completed\": true}\' http://127.0.0.1:8000/api/todos/1/</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 5.<strong> Delete a to-do item</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl -X DELETE http://127.0.0.1:8000/api/todos/1/</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Conclusion</p>\r\n\r\n<p>In this tutorial, we&#39;ve covered how to set up a Django project, create a model, and use Django REST Framework to build a REST API. This basic setup can be extended and customized to fit more complex requirements, such as user authentication, permissions, and more sophisticated data handling.</p>\r\n\r\n<p>&nbsp;</p>', 'Learn how to build a simple REST API using Django and Django REST Framework in this comprehensive tutorial. We cover setting up a Django project, creating models, serializers, views, and configuring URLs to handle CRUD operations for a to-do list application.', 'articles/20240804_202057.jpg', '2024-08-03 14:54:37.093464', '2024-08-07 00:11:45.898034', 'draft', 10, 0, 'Building a REST API with Django and Django REST Framework: A Step-by-Step Guide', 'Discover how to create a REST API with Django and Django REST Framework in this detailed guide. Learn to set up models, serializers, views, and URLs for a to-do', 'Django, Django REST Framework, REST API, Web Development, Python, API Tutorial, Django Tutorial, CRUD Operations, To-Do List API, Backend Development', 1, 0, '', 1, 4, 'article', NULL),
(14, 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 'how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide', '<p>Hey, I know you&#39;ve heard of Chat GPT, y&#39;know, the super intelligent AI from Open AI... Yeah, that one, What if I told you that you could have it running on your PC completely offline... Pretty crazy right? But it&#39;s true, allot of people and companies have put in allot of time, resources and energy into making this possible, and I am going to show you how you can download and run these LLMs (Large Language Models) on you PC completely offline.</p>\r\n\r\n<p>If you&#39;re interested in experimenting with Large Language Models (LLMs) locally on your PC, or you just want to have the power of artificial intelligence at your disposal, then you&#39;re in the right place. In this guide, I will show you how to install Ollama and AnythingLLM, configure your environment, and get your model up and running. This guide is tailored for Windows users but can be adapted for other operating systems.</p>\r\n\r\n<h2>Requirements</h2>\r\n\r\n<ul>\r\n	<li>You&#39;ll need a PC...Obviously.</li>\r\n	<li>Fast and stable internet connection</li>\r\n	<li>Ollama running on your PC</li>\r\n	<li>An LLM</li>\r\n	<li>And AnythingLLM</li>\r\n</ul>\r\n\r\n<p>Let&#39;s move on.</p>\r\n\r\n<h2>Steps</h2>\r\n\r\n<h3>1. Installing Ollama and Adding it to Your Environmental Path (For Windows).</h3>\r\n\r\n<p>This is so you can run Ollama commands directly from your command line.</p>\r\n\r\n<p><strong>Step 1: Download Ollama</strong></p>\r\n\r\n<ol>\r\n	<li>Visit the <a href=\"https://ollama.com\" rel=\"noreferrer\" target=\"_blank\">Ollama website</a> and navigate to the downloads section.</li>\r\n	<li>Choose the Windows installer and download it to your PC.</li>\r\n</ol>\r\n\r\n<p><strong>Step 2: Install Ollama</strong></p>\r\n\r\n<ol>\r\n	<li>Run the downloaded installer.</li>\r\n	<li>Follow the installation wizard to complete the setup.</li>\r\n</ol>\r\n\r\n<p>Once installed, open the file installation location in your file manager. Just search for Ollama, then open file location. Once you&#39;re there, you should see a folder or file named Ollama, if you do, you&#39;re in the right place. Just copy the path to the directory you&#39;re currently in and move on to the next step.</p>\r\n\r\n<p><strong>Step 3: Add Ollama to Your Environmental Path</strong></p>\r\n\r\n<ol>\r\n	<li>Open the Start Menu and search for &quot;Environment Variables.&quot;</li>\r\n	<li>Select &quot;Edit the system environment variables.&quot;</li>\r\n	<li>In the System Properties window, click on &quot;Environment Variables.&quot;</li>\r\n	<li>In the Environment Variables window, find and select the &quot;Path&quot; variable under System variables, then click &quot;Edit.&quot;</li>\r\n	<li>Click &quot;New&quot; and add the path to the Ollama installation directory which you copied previously&nbsp;(e.g., <code>C:\\User\\Program Files\\Programs</code>). This means the Ollama file or folder is in this directory.</li>\r\n	<li>Click &quot;OK&quot; to close all windows.</li>\r\n</ol>\r\n\r\n<p><strong>Step 4: Verify Installation</strong></p>\r\n\r\n<ol>\r\n	<li>Open Command Prompt and type <code>ollama --version</code> to ensure Ollama is installed correctly and is accessible from any directory.</li>\r\n</ol>\r\n\r\n<p>Alright. You have Ollama installed, and you system now recognizes <code>ollama</code> as a valid system command. It&#39;s now time to download an LLM. Yeah that&#39;s right, we&#39;re about to download our own preferred GPT. Yeah, you heard that right. &quot;Preferred&quot;.</p>\r\n\r\n<p>We all know how most AIs available through Open AI, Gemini, Bing, Copilot and others have this guideline that prevents them from y&#39;know, going all out. These guidlines are programmed into them by their creators so they can&#39;t be used for illegal and criminal acts. And though this is good, it greatly limits the extent to which you can use the power of AI. Plus, not everyone would want to use AI for illegal stuff, that&#39;s why I am going to show you how to get an Uncensored LLM.These&nbsp;Uncensored LLMs have been trained with all those guidelines removed, and won&#39;t hold back when responding to your prompts. And the one we&#39;re going to install is called <code>Dolphin-llama3</code>. Although there are many others, including <code>LLama3</code>, which is trained by Meta on an insane amount of data and of course, it&#39;s censored. So whichever your preference is, just go with it. But where&#39;s the fun in have guidelines tell you what and what not to do, and that&#39;s why we&#39;re going with Dolphin.</p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-251.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h3>&nbsp;2. Downloading Dolphin-llama3&nbsp;</h3>\r\n\r\n<ol>\r\n	<li>Go to the <a href=\"http://ollama.com\" target=\"_blank\">Ollama Website</a>.</li>\r\n	<li>Look to the upper right and clock on Models.</li>\r\n	<li>Search for Dolphin-llama3&nbsp;</li>\r\n	<li>Click it and copy the ollama run command for dolphin-llama3. (Note that depending on your systems capabilities, you could either run the 8B data size model, 70B and others. Unless you have a really powerful computer, let&#39;s just stick with the 8B model.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-250.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. Open your command line and type <code>ollama run dolphin-llama3</code>. You&#39;ll see the installation start so just wait for it to finish.</p>\r\n\r\n<p>Is your LLM done downloading? Congratulations! You now have your own personal <u>Uncensored</u>&nbsp;AI to do your bidding. Try it. Type in a prompt and get the response of your dreams.</p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-245_ECpYzsg.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2>Disclaimer: I do not recommend any of the actions listed in this image...</h2>\r\n\r\n<p>But you get the point. No limitations. In comparison to Other Censored models...</p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-252.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>Now that you have your LLM up and running, you&#39;re good to go right? Not quite. You see, not everyone will be comfortable with running their LLM fron the command line. Well, that&#39;s why we have AnythingLLM. They have provided us with a means of running arioud kinds of LLMs including Open AI&#39;s Chat GPT, But we want to run our own local model, so let&#39;s download and install AnythingLLM.</p>\r\n\r\n<h3>3. Downloading and Installing AnythingLLM</h3>\r\n\r\n<p><strong>Step 1: Download AnythingLLM</strong></p>\r\n\r\n<ol>\r\n	<li>Visit the <a href=\"https://useanything.com/download\" target=\"_blank\">AnythingLLM Official website</a>.</li>\r\n	<li>Download the latest release suitable for your operating system.</li>\r\n</ol>\r\n\r\n<p><strong>Step 2: Install AnythingLLM</strong></p>\r\n\r\n<ol>\r\n	<li>Follow the installation prompts and have it installed.</li>\r\n</ol>\r\n\r\n<p><strong>Step 3: Configuration</strong></p>\r\n\r\n<ol>\r\n	<li>After installation, configure AnythingLLM according to your preferences.&nbsp;</li>\r\n	<li>Open AnythingLLM and click on Get Started.</li>\r\n	<li>We&#39;re running a local LLM through Ollama, so scroll through the list and click on Ollama</li>\r\n	<li>The setup should automatically detect the running Ollama model in your PC so just click the right arrow to continue.</li>\r\n	<li>Follow the prompts and name your workspace whatever you want, I&#39;ll name mine <code>Dolphin-llama3&nbsp;</code></li>\r\n	<li>Proceed until you see a chat interface.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-243.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>Nice right, you now have a chat interface where you can communicate with your LLM just like Open AIs Chat GPT, or Gemini. Your personal assistant. And the best part...It&#39;s completely offline.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>By following these steps, you should have Ollama and AnythingLLM installed and running your local LLM on your PC. This setup allows you to explore and interact with LLMs directly from your PC, offering a great way to experiment with AI models without relying on cloud services. I hope you enjoyed this guide and you arre able to explore the capabilities of an Uncensored LLM.</p>\r\n\r\n<p>Feel free to leave a comment if you encounter any issues during the setup process or have any questions! And Subscribe to our newsletter to get notified on more posts like these.</p>', 'Learn how to set up a Large Language Model (LLM) on your PC with this detailed guide. We\'ll walk you through the installation of Ollama and AnythingLLM, configure your system, and get your model up and running locally.', 'articles/20240804_160128_m1wEGv7.jpg', '2024-08-03 16:35:08.220302', '2024-08-07 00:14:28.712748', 'published', 10, 50, 'How to Install and Run Uncensored Chat GPT Locally on Your PC: Ollama & AnythingLLM Setup', 'Discover how to install and configure a Large Language Model (LLM) on your PC. This guide covers the installation of Ollama, adding it to your environmental pat', 'LLM installation, Ollama setup, AnythingLLM installation, local AI models, chat gpt on PC, AI setup guide, Install chat gpt on pc', 1, 1, '', 1, 1, 'article', NULL),
(15, 'Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 'mastering-css-grid-layout-tips-and-tricks-for-web-developers', '<p>CSS Grid Layout is a powerful layout system that allows web developers to create complex, two-dimensional grid-based layouts with ease. While it may seem intimidating at first, mastering CSS Grid can greatly improve your skills as a web developer. In this post, we&rsquo;ll cover some tips and tricks to help you get the most out of CSS Grid.</p>\r\n\r\n<p><strong>Understanding the Basics</strong></p>\r\n\r\n<p>Before diving into advanced techniques, let&rsquo;s make sure you have a solid understanding of the basics. A grid container is defined using&nbsp;<code>display: grid</code>, while child elements are placed within the grid using&nbsp;<code>grid-row</code>&nbsp;and&nbsp;<code>grid-column</code>.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n  grid-gap: 10px;\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n}</code></pre>\r\n\r\n<p>In this example, we have a container with three columns and a gap of 10px between each item.</p>\r\n\r\n<p><strong>Flexible Grid Columns</strong></p>\r\n\r\n<p>CSS Grid allows you to create flexible grid columns using the&nbsp;<code>fr</code>&nbsp;unit. This means that the column will automatically adjust its width based on available space.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n  grid-column: span 2;\r\n}</code></pre>\r\n\r\n<p>Here, we&rsquo;ve created a container with three flexible columns and placed an item that spans two columns.</p>\r\n\r\n<p><strong>Auto-Placement</strong></p>\r\n\r\n<p>One of the most powerful features of CSS Grid is auto-placement. This allows you to automatically place items within the grid without specifying their exact position.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n}</code></pre>\r\n\r\n<p>In this example, we&rsquo;ve placed three items within the container and let CSS Grid handle their positioning. Note that you can also use&nbsp;<code>grid-auto-flow</code>&nbsp;to control how items are placed.</p>\r\n\r\n<p><strong>Grid Auto-Flow</strong></p>\r\n\r\n<p>As mentioned earlier, grid auto-flow allows you to specify how items should be automatically placed within the grid. There are two options:&nbsp;<code>row</code>&nbsp;(default) and&nbsp;<code>column</code>.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n  grid-auto-flow: column;\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n}</code></pre>\r\n\r\n<p>Here, we&rsquo;ve used&nbsp;<code>grid-auto-flow: column</code>&nbsp;to place items horizontally.</p>\r\n\r\n<p>By mastering these tips and tricks, you&rsquo;ll be able to create complex, responsive layouts using CSS Grid. Remember to experiment with different grid configurations and use the browser&rsquo;s built-in debugging tools to visualize your grid layout.</p>\r\n\r\n<p><strong>What&rsquo;s next?</strong></p>\r\n\r\n<p>Want to learn more about CSS Grid Layout? Stay tuned for our upcoming post on advanced CSS Grid techniques!</p>', '', '', '2024-08-03 18:38:09.024513', '2024-08-07 00:05:33.025646', 'draft', NULL, 0, '', '', '', 1, 0, '', 1, 10, 'article', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_articleview`
--

CREATE TABLE `posts_articleview` (
  `id` bigint(20) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `viewed_on` datetime(6) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `referrer` varchar(200) DEFAULT NULL,
  `user_agent` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_articleview`
--

INSERT INTO `posts_articleview` (`id`, `ip_address`, `viewed_on`, `article_id`, `referrer`, `user_agent`) VALUES
(1, '105.113.90.118', '2024-08-05 09:39:38.204787', 14, NULL, NULL),
(2, '102.90.65.165', '2024-08-05 09:40:47.908750', 9, NULL, NULL),
(3, '74.125.216.64', '2024-08-05 09:42:46.451750', 9, NULL, NULL),
(4, '102.90.66.35', '2024-08-05 10:24:02.217406', 9, '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'),
(5, '102.90.57.249', '2024-08-05 11:33:50.719600', 14, '', 'WhatsApp/2.23.20.0'),
(6, '102.90.65.6', '2024-08-05 11:34:09.031987', 14, '', 'WhatsApp/2.23.20.0'),
(7, '105.113.63.80', '2024-08-05 11:35:07.419657', 14, '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36'),
(8, '37.111.164.1', '2024-08-05 11:48:06.159121', 14, '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(9, '178.250.7.69', '2024-08-05 11:49:35.819364', 14, '', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)'),
(10, '100.24.66.143', '2024-08-05 12:04:51.852842', 14, 'https://www.google.com/', 'Opera/9.80 (Macintosh; Intel Mac OS X 10_14_5; U; en) Presto/2.7.62 Version/11.00'),
(11, '105.119.6.7', '2024-08-05 15:11:18.750840', 14, '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1'),
(12, '197.210.55.118', '2024-08-05 15:18:09.079621', 14, 'https://cn.coursearena.com.ng/accounts/profile/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(13, '152.67.138.180', '2024-08-05 15:19:48.316604', 14, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(14, '132.145.9.5', '2024-08-05 15:19:48.650453', 14, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(15, '105.113.104.250', '2024-08-05 15:37:01.545910', 14, '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1'),
(16, '102.90.44.132', '2024-08-05 16:04:52.250858', 14, 'https://cn.coursearena.com.ng/accounts/profile/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(17, '129.205.113.169', '2024-08-05 16:05:41.327601', 10, 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(18, '102.90.65.161', '2024-08-05 16:16:30.547815', 14, 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(19, '102.90.47.120', '2024-08-05 17:26:29.905397', 14, 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(20, '44.226.39.139', '2024-08-05 17:26:58.820829', 14, '', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)'),
(21, '197.210.79.102', '2024-08-05 17:46:11.354692', 14, 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(22, '102.90.58.222', '2024-08-05 18:20:41.024485', 14, 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(23, '102.88.82.5', '2024-08-05 18:30:38.375743', 14, '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1'),
(24, '102.90.65.143', '2024-08-05 18:58:22.566088', 14, 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(25, '102.90.58.167', '2024-08-05 18:59:59.220399', 5, 'https://cn.coursearena.com.ng/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(26, '66.249.92.160', '2024-08-05 19:02:04.015813', 5, '', 'Mediapartners-Google'),
(27, '152.67.137.35', '2024-08-05 19:03:37.633497', 5, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(28, '102.90.58.158', '2024-08-05 22:56:55.456931', 10, 'https://cn.coursearena.com.ng/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(29, '140.238.94.137', '2024-08-05 23:00:48.536087', 10, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(30, '132.145.66.116', '2024-08-05 23:00:48.756072', 10, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(31, '31.13.127.16', '2024-08-05 23:25:37.602973', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(32, '173.252.107.9', '2024-08-05 23:25:43.710415', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(33, '173.252.107.15', '2024-08-05 23:25:43.857618', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(34, '31.13.127.116', '2024-08-05 23:25:45.190542', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(35, '31.13.127.12', '2024-08-05 23:25:48.923642', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(36, '69.171.230.114', '2024-08-05 23:25:49.284994', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(37, '69.171.230.7', '2024-08-05 23:25:49.527649', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(38, '31.13.127.17', '2024-08-05 23:26:02.611243', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(39, '31.13.127.6', '2024-08-05 23:26:02.749932', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(40, '173.252.127.19', '2024-08-05 23:26:10.099964', 14, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(41, '173.252.107.112', '2024-08-05 23:26:42.867574', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(42, '31.13.103.115', '2024-08-05 23:27:17.865180', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(43, '66.249.92.160', '2024-08-05 23:28:00.052097', 14, '', 'Mediapartners-Google'),
(44, '69.171.231.114', '2024-08-05 23:33:16.302837', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(45, '31.13.127.2', '2024-08-05 23:33:37.318273', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(46, '31.13.127.11', '2024-08-05 23:33:41.568922', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(47, '102.89.47.39', '2024-08-06 04:34:49.181678', 14, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(48, '102.89.46.99', '2024-08-06 05:07:43.833582', 14, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(49, '197.210.79.90', '2024-08-06 07:21:13.612476', 14, 'https://cn.coursearena.com.ng/accounts/profile/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(50, '149.154.161.212', '2024-08-06 07:59:58.990730', 14, '', 'TelegramBot (like TwitterBot)'),
(51, '105.113.70.209', '2024-08-06 08:01:55.843057', 14, '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1'),
(52, '132.145.11.125', '2024-08-06 08:14:06.819043', 14, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(53, '132.145.66.116', '2024-08-06 08:14:07.307703', 14, '', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)'),
(54, '197.210.79.90', '2024-08-06 08:44:05.513810', 10, 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', 'Mozilla/5.0 (Linux; Android 9; K) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/127.0.6533.84 Mobile Safari/537.36'),
(55, '102.90.47.162', '2024-08-06 08:45:16.754792', 14, 'https://lm.facebook.com/', 'Mozilla/5.0 (Linux; Android 13; 2201116TG Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/127.0.6533.81 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/475.1.0.46.82;]'),
(56, '69.171.249.12', '2024-08-06 08:47:42.011153', 14, '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'),
(57, '102.90.64.250', '2024-08-06 10:36:21.167714', 14, '', 'WhatsApp/2.23.20.0'),
(58, '102.90.57.145', '2024-08-06 10:38:52.737717', 10, 'https://cn.coursearena.com.ng/accounts/profile/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(59, '178.250.1.79', '2024-08-06 10:39:58.413335', 10, '', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)'),
(60, '102.90.66.59', '2024-08-06 10:40:32.184884', 10, '', 'WhatsApp/2.23.20.0'),
(61, '102.88.68.33', '2024-08-06 10:59:17.331828', 10, '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(62, '129.205.124.193', '2024-08-06 11:34:29.246701', 14, '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/25.0 Chrome/121.0.0.0 Mobile Safari/537.36'),
(63, '197.210.84.148', '2024-08-06 12:18:55.130256', 14, '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(64, '212.100.80.208', '2024-08-06 15:08:35.973190', 14, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36'),
(65, '197.210.55.185', '2024-08-06 16:09:05.681112', 10, 'https://cn.coursearena.com.ng/accounts/profile/', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36'),
(66, '102.90.45.84', '2024-08-06 18:28:21.285125', 14, '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `posts_article_dislikes`
--

CREATE TABLE `posts_article_dislikes` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_article_frameworks`
--

CREATE TABLE `posts_article_frameworks` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `framework_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_article_frameworks`
--

INSERT INTO `posts_article_frameworks` (`id`, `article_id`, `framework_id`) VALUES
(42, 1, 2),
(43, 1, 3),
(52, 3, 2),
(53, 3, 3),
(50, 4, 2),
(51, 4, 3),
(49, 5, 2),
(47, 6, 2),
(48, 6, 15),
(46, 8, 3),
(45, 9, 4),
(44, 10, 2),
(33, 11, 6),
(34, 11, 17),
(35, 11, 18),
(36, 11, 19),
(37, 11, 20),
(38, 11, 21),
(39, 11, 22),
(40, 11, 23),
(41, 11, 24),
(32, 12, 25),
(31, 13, 3),
(30, 13, 16),
(29, 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts_article_likes`
--

CREATE TABLE `posts_article_likes` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_bookmark`
--

CREATE TABLE `posts_bookmark` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`id`, `name`, `slug`) VALUES
(1, 'Technology', 'technology'),
(2, 'Software Development', 'software-development'),
(3, 'Database Management', 'database-management'),
(4, 'Tools & Libraries', 'tools-libraries'),
(5, 'Career & Industry', 'career-industry'),
(6, 'Project Showcase', 'project-showcase'),
(7, 'Coding Challenges', 'coding-challenges'),
(9, 'Machine Learning', 'machine-learning'),
(10, 'Web Development', 'web-development'),
(11, 'Top Frameworks', 'top-frameworks'),
(12, 'LLMs', 'llms'),
(13, 'Tips & Tricks', 'tips-tricks');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comment`
--

CREATE TABLE `posts_comment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `article_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_framework`
--

CREATE TABLE `posts_framework` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_framework`
--

INSERT INTO `posts_framework` (`id`, `name`, `slug`) VALUES
(1, 'AI', 'ai'),
(2, 'Python', 'python'),
(3, 'Django', 'django'),
(4, 'HTML', 'html'),
(5, 'CSS', 'css'),
(6, 'JavaScript', 'javascript'),
(7, 'Bootstrap', 'bootstrap'),
(8, 'Tailwind', 'tailwind'),
(9, 'Java', 'java'),
(10, 'C', 'c'),
(11, 'Ruby', 'ruby'),
(12, 'Go', 'go'),
(13, 'Rust', 'rust'),
(14, 'Dart', 'dart'),
(15, 'Scikit-Learn', 'scikit-learn'),
(16, 'Django Rest Framework', 'django-rest-framework'),
(17, 'React Js', 'react-js'),
(18, 'Angular Js', 'angular-js'),
(19, 'Vue Js', 'vue-js'),
(20, 'Svelte Js', 'svelte-js'),
(21, 'Next Js', 'next-js'),
(22, 'Express Js', 'express-js'),
(23, 'Nest Js', 'nest-js'),
(24, 'Ember Js', 'ember-js'),
(25, 'GIT', 'git');

-- --------------------------------------------------------

--
-- Table structure for table `taggit_tag`
--

CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taggit_tag`
--

INSERT INTO `taggit_tag` (`id`, `name`, `slug`) VALUES
(1, 'Local AI', 'local-ai'),
(2, 'AnythingLLM', 'anythingllm'),
(3, 'AI Installation', 'ai-installation'),
(4, 'Ollama', 'ollama'),
(5, 'Machine Learning', 'machine-learning'),
(6, 'LLM', 'llm'),
(7, 'Local Model Deployment', 'local-model-deployment'),
(8, 'PC Setup', 'pc-setup'),
(9, 'Learn Python', 'learn-python'),
(10, 'Python basics', 'python-basics'),
(11, 'Introduction to Python', 'introduction-to-python'),
(12, 'Coding in Python', 'coding-in-python'),
(13, 'Beginner programming guide', 'beginner-programming-guide'),
(14, 'Python programming', 'python-programming'),
(15, 'Python setup', 'python-setup'),
(16, 'Python for beginners', 'python-for-beginners'),
(17, 'Python tutorial', 'python-tutorial'),
(18, 'Python development', 'python-development'),
(19, 'Web design basics', 'web-design-basics'),
(20, 'Front-end development basics', 'front-end-development-basics'),
(21, 'Learn to code HTML', 'learn-to-code-html'),
(22, 'HTML elements', 'html-elements'),
(23, 'HTML syntax', 'html-syntax'),
(24, 'HTML coding basics', 'html-coding-basics'),
(25, 'HTML fundamentals', 'html-fundamentals'),
(26, 'HTML basics tutorial', 'html-basics-tutorial'),
(27, 'python', 'python'),
(28, 'web development', 'web-development'),
(29, 'django', 'django'),
(30, 'models', 'models'),
(31, 'scikit-learn', 'scikit-learn'),
(32, 'tutorial', 'tutorial'),
(33, 'asyncio', 'asyncio'),
(34, 'concurrent programming', 'concurrent-programming'),
(35, 'beginners', 'beginners'),
(36, 'orm', 'orm'),
(37, 'Insight', 'insight'),
(38, 'Education', 'education'),
(39, 'css', 'css'),
(40, 'REST API', 'rest-api'),
(41, 'API Development', 'api-development'),
(42, 'Django Tutorial', 'django-tutorial'),
(43, 'Django REST Framework', 'django-rest-framework'),
(44, 'Git commands', 'git-commands'),
(45, 'coding', 'coding'),
(46, 'programming', 'programming'),
(47, 'Git', 'git'),
(48, 'coding best practices', 'coding-best-practices'),
(49, 'software development', 'software-development'),
(50, 'developer tools', 'developer-tools'),
(51, 'version control', 'version-control'),
(52, 'GitHub', 'github'),
(53, 'Git tutorial', 'git-tutorial'),
(54, 'Express.js', 'expressjs'),
(55, 'Vue.js', 'vuejs'),
(56, 'Nuxt.js', 'nuxtjs'),
(57, 'Angular', 'angular'),
(58, 'Svelte', 'svelte'),
(59, 'JavaScript', 'javascript'),
(60, 'Meteor.js', 'meteorjs'),
(61, 'Next.js', 'nextjs'),
(62, 'Ember.js', 'emberjs'),
(63, 'frameworks', 'frameworks'),
(64, 'NestJS', 'nestjs'),
(65, 'React', 'react'),
(66, '2024 trends', '2024-trends');

-- --------------------------------------------------------

--
-- Table structure for table `taggit_taggeditem`
--

CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taggit_taggeditem`
--

INSERT INTO `taggit_taggeditem` (`id`, `object_id`, `content_type_id`, `tag_id`) VALUES
(124, 1, 11, 32),
(125, 1, 11, 37),
(126, 1, 11, 38),
(9, 2, 11, 9),
(10, 2, 11, 10),
(11, 2, 11, 11),
(12, 2, 11, 12),
(13, 2, 11, 13),
(14, 2, 11, 14),
(15, 2, 11, 15),
(16, 2, 11, 16),
(17, 2, 11, 17),
(18, 2, 11, 18),
(141, 3, 11, 27),
(142, 3, 11, 28),
(143, 3, 11, 29),
(137, 3, 11, 40),
(138, 3, 11, 41),
(139, 3, 11, 42),
(140, 3, 11, 43),
(29, 4, 11, 29),
(160, 4, 11, 32),
(161, 4, 11, 35),
(162, 4, 11, 36),
(32, 5, 11, 27),
(31, 5, 11, 32),
(158, 5, 11, 33),
(159, 5, 11, 34),
(156, 6, 11, 5),
(38, 6, 11, 27),
(157, 6, 11, 31),
(35, 6, 11, 32),
(42, 7, 11, 29),
(39, 7, 11, 32),
(40, 7, 11, 35),
(41, 7, 11, 36),
(152, 8, 11, 27),
(153, 8, 11, 28),
(154, 8, 11, 29),
(155, 8, 11, 30),
(144, 9, 11, 19),
(145, 9, 11, 20),
(146, 9, 11, 21),
(147, 9, 11, 22),
(148, 9, 11, 23),
(149, 9, 11, 24),
(150, 9, 11, 25),
(151, 9, 11, 26),
(127, 10, 11, 9),
(128, 10, 11, 10),
(129, 10, 11, 11),
(130, 10, 11, 12),
(131, 10, 11, 13),
(132, 10, 11, 14),
(133, 10, 11, 15),
(134, 10, 11, 16),
(135, 10, 11, 17),
(136, 10, 11, 18),
(113, 11, 11, 28),
(56, 11, 11, 46),
(114, 11, 11, 54),
(115, 11, 11, 55),
(116, 11, 11, 56),
(117, 11, 11, 57),
(118, 11, 11, 58),
(119, 11, 11, 59),
(120, 11, 11, 60),
(121, 11, 11, 61),
(122, 11, 11, 62),
(123, 11, 11, 63),
(110, 11, 11, 64),
(111, 11, 11, 65),
(112, 11, 11, 66),
(101, 12, 11, 44),
(102, 12, 11, 45),
(68, 12, 11, 46),
(103, 12, 11, 47),
(104, 12, 11, 48),
(105, 12, 11, 49),
(106, 12, 11, 50),
(107, 12, 11, 51),
(108, 12, 11, 52),
(109, 12, 11, 53),
(98, 13, 11, 27),
(99, 13, 11, 28),
(100, 13, 11, 29),
(94, 13, 11, 40),
(95, 13, 11, 41),
(96, 13, 11, 42),
(97, 13, 11, 43),
(82, 14, 11, 1),
(83, 14, 11, 2),
(84, 14, 11, 3),
(85, 14, 11, 4),
(86, 14, 11, 5),
(87, 14, 11, 6),
(88, 14, 11, 7),
(89, 14, 11, 8),
(90, 15, 11, 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_infocontent`
--
ALTER TABLE `accounts_infocontent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_id` (`section_id`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accounts_profile_bookmarks`
--
ALTER TABLE `accounts_profile_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_profile_bookmarks_profile_id_article_id_5c4bfbdc_uniq` (`profile_id`,`article_id`),
  ADD KEY `accounts_profile_boo_article_id_ce46344e_fk_posts_art` (`article_id`);

--
-- Indexes for table `ads_ad`
--
ALTER TABLE `ads_ad`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `core_sitesettings`
--
ALTER TABLE `core_sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_staticpage`
--
ALTER TABLE `core_staticpage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

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
-- Indexes for table `newsletter_bulkemail`
--
ALTER TABLE `newsletter_bulkemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `posts_article`
--
ALTER TABLE `posts_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `posts_article_author_id_e7a15a55_fk_auth_user_id` (`author_id`),
  ADD KEY `posts_article_category_id_f6c276c0_fk_posts_category_id` (`category_id`);

--
-- Indexes for table `posts_articleview`
--
ALTER TABLE `posts_articleview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_articleview_article_id_771f3885_fk_posts_article_id` (`article_id`);

--
-- Indexes for table `posts_article_dislikes`
--
ALTER TABLE `posts_article_dislikes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_article_dislikes_article_id_user_id_50cc17fb_uniq` (`article_id`,`user_id`),
  ADD KEY `posts_article_dislikes_user_id_70514d84_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `posts_article_frameworks`
--
ALTER TABLE `posts_article_frameworks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_article_frameworks_article_id_framework_id_629af985_uniq` (`article_id`,`framework_id`),
  ADD KEY `posts_article_framew_framework_id_763bf269_fk_posts_fra` (`framework_id`);

--
-- Indexes for table `posts_article_likes`
--
ALTER TABLE `posts_article_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_article_likes_article_id_user_id_46f1a52f_uniq` (`article_id`,`user_id`),
  ADD KEY `posts_article_likes_user_id_faa51f36_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `posts_bookmark`
--
ALTER TABLE `posts_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_bookmark_article_id_fe3d4fbf_fk_posts_article_id` (`article_id`),
  ADD KEY `posts_bookmark_user_id_98497ce1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `posts_comment`
--
ALTER TABLE `posts_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_comment_article_id_73a753fc_fk_posts_article_id` (`article_id`);

--
-- Indexes for table `posts_framework`
--
ALTER TABLE `posts_framework`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  ADD KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  ADD KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  ADD KEY `taggit_tagg_content_8fc721_idx` (`content_type_id`,`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_infocontent`
--
ALTER TABLE `accounts_infocontent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_profile_bookmarks`
--
ALTER TABLE `accounts_profile_bookmarks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ads_ad`
--
ALTER TABLE `ads_ad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_sitesettings`
--
ALTER TABLE `core_sitesettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_staticpage`
--
ALTER TABLE `core_staticpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `newsletter_bulkemail`
--
ALTER TABLE `newsletter_bulkemail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts_article`
--
ALTER TABLE `posts_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts_articleview`
--
ALTER TABLE `posts_articleview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `posts_article_dislikes`
--
ALTER TABLE `posts_article_dislikes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_article_frameworks`
--
ALTER TABLE `posts_article_frameworks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `posts_article_likes`
--
ALTER TABLE `posts_article_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_bookmark`
--
ALTER TABLE `posts_bookmark`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts_comment`
--
ALTER TABLE `posts_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_framework`
--
ALTER TABLE `posts_framework`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_profile_bookmarks`
--
ALTER TABLE `accounts_profile_bookmarks`
  ADD CONSTRAINT `accounts_profile_boo_article_id_ce46344e_fk_posts_art` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`),
  ADD CONSTRAINT `accounts_profile_boo_profile_id_138686f0_fk_accounts_` FOREIGN KEY (`profile_id`) REFERENCES `accounts_profile` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_article`
--
ALTER TABLE `posts_article`
  ADD CONSTRAINT `posts_article_author_id_e7a15a55_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `posts_article_category_id_f6c276c0_fk_posts_category_id` FOREIGN KEY (`category_id`) REFERENCES `posts_category` (`id`);

--
-- Constraints for table `posts_articleview`
--
ALTER TABLE `posts_articleview`
  ADD CONSTRAINT `posts_articleview_article_id_771f3885_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`);

--
-- Constraints for table `posts_article_dislikes`
--
ALTER TABLE `posts_article_dislikes`
  ADD CONSTRAINT `posts_article_dislikes_article_id_82bc0a73_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`),
  ADD CONSTRAINT `posts_article_dislikes_user_id_70514d84_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_article_frameworks`
--
ALTER TABLE `posts_article_frameworks`
  ADD CONSTRAINT `posts_article_framew_framework_id_763bf269_fk_posts_fra` FOREIGN KEY (`framework_id`) REFERENCES `posts_framework` (`id`),
  ADD CONSTRAINT `posts_article_frameworks_article_id_116be9ad_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`);

--
-- Constraints for table `posts_article_likes`
--
ALTER TABLE `posts_article_likes`
  ADD CONSTRAINT `posts_article_likes_article_id_6f5c00de_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`),
  ADD CONSTRAINT `posts_article_likes_user_id_faa51f36_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_bookmark`
--
ALTER TABLE `posts_bookmark`
  ADD CONSTRAINT `posts_bookmark_article_id_fe3d4fbf_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`),
  ADD CONSTRAINT `posts_bookmark_user_id_98497ce1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_comment`
--
ALTER TABLE `posts_comment`
  ADD CONSTRAINT `posts_comment_article_id_73a753fc_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`);

--
-- Constraints for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  ADD CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
