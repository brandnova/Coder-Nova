-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2024 at 12:16 PM
-- Server version: 8.0.39
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursear_codernova`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_infocontent`
--

CREATE TABLE `accounts_infocontent` (
  `id` bigint NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `section_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_infocontent`
--

INSERT INTO `accounts_infocontent` (`id`, `title`, `content`, `section_id`) VALUES
(1, 'How To Create Posts', '<p>Here&#39;s a descriptions for each field in the Article Upload form:</p>\r\n\r\n<p><br />\r\n<strong>Title</strong>: This is where you enter the title of your post.</p>\r\n\r\n<p><br />\r\n<strong>Slug</strong>: This is the unique, user-friendly URL for your post. It&rsquo;s automatically generated from the title, but you can edit it if needed.</p>\r\n\r\n<p><br />\r\n<strong>Author</strong>: Select your username as the author of the post.</p>\r\n\r\n<p><br />\r\n<strong>Type</strong>: Choose the type of content you&rsquo;re posting. For now, select &quot;Article&quot;. Additional types like &quot;DIY Project&quot; will be added later.</p>\r\n\r\n<p><br />\r\n<strong>Content</strong>: Create the main content of your post here. This field supports rich text formatting, similar to using a word processor like MS Word.</p>\r\n\r\n<p><br />\r\n<strong>Excerpt</strong>: Write a short summary of your content here. This excerpt will be displayed on the homepage where all articles are listed.</p>\r\n\r\n<p><br />\r\n<strong>Image</strong>: Upload a display image for your post. Adding a relevant image is recommended to make your post more visually appealing.</p>\r\n\r\n<p><br />\r\n<strong>Status</strong>: This indicates the publication status of your post. The default is &quot;Draft&quot; so you can edit your post until it&rsquo;s ready. Set it to &quot;Published&quot; when you want it to be publicly visible.</p>\r\n\r\n<p><br />\r\n<strong>Tags</strong>: Add relevant tags to your article to help users find it through filtering. Separate tags with commas and make sure they accurately reflect the content.</p>\r\n\r\n<p><br />\r\n<strong>Category</strong>: Select a category that best fits your content. You can create a new category if needed, but try to use existing ones to avoid too many categories.</p>\r\n\r\n<p><br />\r\n<strong>Frameworks</strong>: Select all the frameworks related to the content you&rsquo;re creating. This helps users filter content by frameworks. Ensure you only select relevant frameworks.</p>\r\n\r\n<p><br />\r\n<strong>Reading Time</strong>: Enter the approximate reading time for your post in minutes. For example, if it takes about 10 minutes to read, enter 10. If it takes more than an hour, convert the time to minutes.</p>\r\n\r\n<p><br />\r\n<strong>Views</strong>: This field is updated automatically as users view your post. No action is needed here.</p>\r\n\r\n<p><br />\r\n<strong>Likes and Dislikes</strong>: These fields are also updated automatically based on user engagement.</p>\r\n\r\n<p><br />\r\n<strong>SEO Title</strong>: This title is used for search engine optimization. It should be similar to your main title and will be displayed when your post is shared on social media.</p>\r\n\r\n<p><br />\r\n<strong>Meta Description</strong>: Write a short description for SEO purposes. This will be visible when your post is shared on social media. Keeping it concise and relevant will improve visibility. Consider using AI for suggestions.</p>\r\n\r\n<p><br />\r\n<strong>Meta Keywords</strong>: Enter keywords separated by commas to help with search engine optimization. These keywords make your post more discoverable on search engines. AI tools can help generate effective keywords.</p>\r\n\r\n<p><br />\r\n<strong>Allow Comments</strong>: Enable or disable comments for your post as desired.</p>\r\n\r\n<p><br />\r\n<strong>Featured</strong>: Mark your post as featured to have it displayed prominently on the sidebar of the homepage. Reserve this for special or trending topics.</p>\r\n\r\n<p><br />\r\n<strong>References</strong>: List any sources you used for research to avoid plagiarism complaints. This is optional but recommended if you reference other works.</p>\r\n\r\n<p><br />\r\n<strong>YouTube URL</strong>: If you have a relevant YouTube video, paste the link here. It will be embedded in the article, allowing users to stream the video directly from the article page. This is optional.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'creating-posts');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint NOT NULL,
  `bio` longtext COLLATE utf8mb4_general_ci,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover_image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `bio`, `title`, `avatar`, `cover_image`, `phone`, `location`, `user_id`) VALUES
(2, 'Cool coder', 'Web Developer, Python Programmer', 'profile_images/IMG_2642_2.jpeg', 'cover_images/Linkedin_Cover_new.png', '08141941192', 'Delta State, Nigeria', 1),
(13, NULL, NULL, 'default.jpg', 'default.jpg', NULL, NULL, 13),
(20, 'Full Stack web dev, using Ejs and Express', NULL, 'profile_images/IMG-20240212-WA0018.jpg', 'default.jpg', NULL, NULL, 20),
(21, NULL, NULL, 'default.jpg', 'default.jpg', NULL, NULL, 21),
(22, NULL, NULL, 'default.jpg', 'default.jpg', NULL, NULL, 22),
(23, NULL, NULL, 'default.jpg', 'default.jpg', NULL, NULL, 23);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile_bookmarks`
--

CREATE TABLE `accounts_profile_bookmarks` (
  `id` bigint NOT NULL,
  `profile_id` bigint NOT NULL,
  `article_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_profile_bookmarks`
--

INSERT INTO `accounts_profile_bookmarks` (`id`, `profile_id`, `article_id`) VALUES
(2, 2, 1),
(6, 2, 4),
(5, 2, 5),
(4, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ads_ad`
--

CREATE TABLE `ads_ad` (
  `id` bigint NOT NULL,
  `code` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads_ad`
--

INSERT INTO `ads_ad` (`id`, `code`, `start_date`, `end_date`, `active`, `location`) VALUES
(1, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'homepage_sidebar'),
(2, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- CodaNova2 -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"6379884823\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'homepage_top'),
(3, '<section class=\" \">\r\n<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>\r\n</section>', '2024-08-03', '2024-08-31', 1, 'articlepage_bottom'),
(4, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 0, 'staticpage_top'),
(5, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'staticpage_bottom'),
(7, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-03', '2024-08-31', 1, 'uploadspage_sidebar'),
(8, '<section class=\" \">\r\n<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>\r\n</section>', '2024-08-03', '2024-08-31', 1, 'articlepage_top'),
(9, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-11', '2024-08-31', 1, 'projectpage_left'),
(10, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-11', '2024-08-31', 1, 'projectpage_right'),
(11, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- CodaNova2 -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"6379884823\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-11', '2024-08-31', 1, 'projectpage_top'),
(12, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block; text-align:center;\"\r\n     data-ad-layout=\"in-article\"\r\n     data-ad-format=\"fluid\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"8945672139\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-16', '2024-08-31', 1, 'articlepage_inner'),
(13, '<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4110794837764395\"\r\n     crossorigin=\"anonymous\"></script>\r\n<!-- Blog -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-4110794837764395\"\r\n     data-ad-slot=\"7709899510\"\r\n     data-ad-format=\"auto\"\r\n     data-full-width-responsive=\"true\"></ins>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '2024-08-17', '2024-08-31', 1, 'articlepage_sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
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
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 33),
(16, 1, 34),
(4, 1, 36),
(5, 1, 37),
(6, 1, 40),
(7, 1, 41),
(8, 1, 42),
(9, 1, 44),
(10, 1, 45),
(11, 1, 48),
(13, 1, 49),
(15, 1, 52);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
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
(45, 'Can add tag', 12, 'add_tag'),
(46, 'Can change tag', 12, 'change_tag'),
(47, 'Can delete tag', 12, 'delete_tag'),
(48, 'Can view tag', 12, 'view_tag'),
(49, 'Can add tagged item', 13, 'add_taggeditem'),
(50, 'Can change tagged item', 13, 'change_taggeditem'),
(51, 'Can delete tagged item', 13, 'delete_taggeditem'),
(52, 'Can view tagged item', 13, 'view_taggeditem'),
(53, 'Can add comment', 14, 'add_comment'),
(54, 'Can change comment', 14, 'change_comment'),
(55, 'Can delete comment', 14, 'delete_comment'),
(56, 'Can view comment', 14, 'view_comment'),
(57, 'Can add profile', 15, 'add_profile'),
(58, 'Can change profile', 15, 'change_profile'),
(59, 'Can delete profile', 15, 'delete_profile'),
(60, 'Can view profile', 15, 'view_profile'),
(61, 'Can add bookmark', 16, 'add_bookmark'),
(62, 'Can change bookmark', 16, 'change_bookmark'),
(63, 'Can delete bookmark', 16, 'delete_bookmark'),
(64, 'Can view bookmark', 16, 'view_bookmark'),
(65, 'Can add subscriber', 17, 'add_subscriber'),
(66, 'Can change subscriber', 17, 'change_subscriber'),
(67, 'Can delete subscriber', 17, 'delete_subscriber'),
(68, 'Can view subscriber', 17, 'view_subscriber'),
(69, 'Can add bulk email', 18, 'add_bulkemail'),
(70, 'Can change bulk email', 18, 'change_bulkemail'),
(71, 'Can delete bulk email', 18, 'delete_bulkemail'),
(72, 'Can view bulk email', 18, 'view_bulkemail'),
(73, 'Can add ad', 19, 'add_ad'),
(74, 'Can change ad', 19, 'change_ad'),
(75, 'Can delete ad', 19, 'delete_ad'),
(76, 'Can view ad', 19, 'view_ad'),
(77, 'Can add article view', 20, 'add_articleview'),
(78, 'Can change article view', 20, 'change_articleview'),
(79, 'Can delete article view', 20, 'delete_articleview'),
(80, 'Can view article view', 20, 'view_articleview'),
(81, 'Can add info content', 21, 'add_infocontent'),
(82, 'Can change info content', 21, 'change_infocontent'),
(83, 'Can delete info content', 21, 'delete_infocontent'),
(84, 'Can view info content', 21, 'view_infocontent'),
(85, 'Can add reaction', 22, 'add_reaction'),
(86, 'Can change reaction', 22, 'change_reaction'),
(87, 'Can delete reaction', 22, 'delete_reaction'),
(88, 'Can view reaction', 22, 'view_reaction'),
(89, 'Can add social link', 23, 'add_sociallink'),
(90, 'Can change social link', 23, 'change_sociallink'),
(91, 'Can delete social link', 23, 'delete_sociallink'),
(92, 'Can view social link', 23, 'view_sociallink');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$mBb40eNhWvc4vHA9F4MHub$IYEBAgw4eDNogTs/LDIk5Tgl2a7U0/6EujELN2agZsI=', '2024-08-21 16:06:24.842688', 1, 'admin', 'Ijeoma', 'Jahsway', 'uchennamebijay@gmail.com', 1, 1, '2024-07-28 12:11:06.000000'),
(13, 'pbkdf2_sha256$720000$QCR5ndG7hR1cYYRLqtbNpo$+4EH7MWGoBdXlMDQVlNi5G4OKh7r7UXv3zC/XqwpIzU=', '2024-08-05 14:57:19.413186', 0, 'SpiderShani007', 'Muhammad', 'Usman', 'us888276@gmail.com', 1, 1, '2024-08-05 12:14:10.000000'),
(20, 'pbkdf2_sha256$720000$ZcqvOb1UFmsrBd3rCuWtd1$yvuOfntoymuIi7NnSlknFXkWUkfOwEa9HgvksD0jh9U=', '2024-08-10 18:15:28.902227', 0, 'BlackStar54213', 'Okeme', 'Izu', 'izuokeme@gmail.com', 0, 1, '2024-08-10 18:15:18.864823'),
(21, 'pbkdf2_sha256$720000$WVwCTHxeV6FjsQasXjaTvN$A2lDmJU2QEhzpLz2HQKHLh4Yv4knRkm25ydfb0XxE9o=', '2024-08-11 07:40:59.823266', 0, 'brandnova89@gmail.com', 'Jahsway', 'Ijeoma', 'brandnova89@gmail.com', 0, 1, '2024-08-11 07:24:27.270849'),
(22, 'pbkdf2_sha256$720000$KumfUKHsNazdA6lzQy5rdt$Xn854aIG18bgc10ZQqZ5qGpUe29kp/E32dyCDdaglps=', '2024-08-16 10:06:46.831940', 0, 'Joshdev', 'Joshua', 'Oluchukwu', 'joshuaoluchukwu215@gmail.com', 0, 1, '2024-08-16 10:06:44.781815'),
(23, 'pbkdf2_sha256$600000$hQ05I071SWP8ojZ9asU122$1GxlH+SPAteUDvU+7a6hwL66whKYRcqGPEUaTQjLvjw=', '2024-08-17 12:13:03.892161', 0, 'Stcymll', 'Ijeoma', 'JahsWay', 's99229812@gmail.com', 0, 1, '2024-08-17 12:13:02.086132');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_sitesettings`
--

CREATE TABLE `core_sitesettings` (
  `id` bigint NOT NULL,
  `site_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `site_description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `favicon` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_author` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `og_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `og_image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `og_url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_sitesettings`
--

INSERT INTO `core_sitesettings` (`id`, `site_name`, `site_description`, `favicon`, `logo`, `address`, `contact_email`, `phone_number`, `meta_keywords`, `meta_description`, `meta_author`, `og_title`, `og_description`, `og_image`, `og_url`) VALUES
(1, 'Coder Nova', 'Coder Nova is your ultimate destination for coding tutorials, tips, and industry news. Dive into our comprehensive articles and become a coding wizard with our expertly crafted content.', 'Site_images/Coder_Nova_YSZWWZY.jpeg', 'Site_images/Coder_Nova.jpeg', '5678 Developer Drive, Code City, Techland', 'brandnova89@gmail.com', '+234 8141 9411 92', 'coding, programming, software development, coding tutorials, coding tips', 'Coder Nova provides the latest coding tutorials, tips, and industry news. Learn to code and stay updated with our comprehensive and easy-to-follow articles.', 'Mr Nova', 'Welcome to Coder Nova - Your Ultimate Coding Resource', 'Discover the best coding tutorials, tips, and industry news at Coder Nova. Become a coding expert with our detailed and insightful articles.', 'meta_images/Coder_Nova.jpeg', 'https://cn.coursearena.com.ng');

-- --------------------------------------------------------

--
-- Table structure for table `core_sitesettings_social_links`
--

CREATE TABLE `core_sitesettings_social_links` (
  `id` bigint NOT NULL,
  `sitesettings_id` bigint NOT NULL,
  `sociallink_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_sitesettings_social_links`
--

INSERT INTO `core_sitesettings_social_links` (`id`, `sitesettings_id`, `sociallink_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_sociallink`
--

CREATE TABLE `core_sociallink` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `order` int UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ;

--
-- Dumping data for table `core_sociallink`
--

INSERT INTO `core_sociallink` (`id`, `name`, `url`, `icon_class`, `order`, `is_active`) VALUES
(1, 'GitHub', 'https://github.com/brandnova', 'bi bi-github', 1, 1),
(2, 'LinkedIn', 'http://www.linkedin.com/in/ijeoma-jahsway', 'bi bi-linkedin', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_staticpage`
--

CREATE TABLE `core_staticpage` (
  `id` bigint NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_staticpage`
--

INSERT INTO `core_staticpage` (`id`, `title`, `slug`, `content`) VALUES
(1, 'About Us', 'about-us', '<div class=\"m-auto max-w-6xl mt-10 p-12\">\n<div class=\"flex flex-col md:flex-row\">\n<div class=\"flex flex-col justify-center max-w-md md:w-1/2\">\n<div class=\"font-black md:text-5xl text-2xl uppercase\">Discover Coder Nova: Your Ultimate Tech Resource</div>\n\n<div class=\"mt-4 text-xl\">Welcome to Coder Nova, a dynamic blog designed for coding enthusiasts and professionals alike. Explore insightful articles, hands-on tutorials, and the latest trends in Tech. Join our growing community to enhance your coding journey with high-quality resources tailored for all skill levels.</div>\n\n<div class=\"mt-4 text-xl\">&nbsp;</div>\n</div>\n\n<div class=\"-mt-5 flex md:justify-end md:w-1/2 w-full\">\n<div class=\"bg-dots\">\n<div class=\"max-w-md ml-4 mt-6 shadow-2xl z-10\"><img alt=\"Coder Nova\" class=\"rounded-t\" src=\"/media/media/2024/08/07/gemini_launch.jpeg\" />\n<div class=\"bg-opacity-30 bg-white p-10 rounded-b-xl text-2xl\">&quot; Welcome to Coder Nova - Your Ultimate Coding Resource.<br />\nDiscover the best coding tutorials, tips, and industry news at Coder Nova. Elevate your reach with our detailed and insightful articles. &quot;</div>\n</div>\n</div>\n</div>\n</div>\n\n<div class=\"flex flex-col gap-4 my-5\">\n<h2>Welcome to Coder Nova</h2>\n\n<p>Welcome to Coder Nova, your premier destination for top-tier coding resources. Our blog features a diverse range of content, from beginner tutorials to advanced coding techniques. Keep up with the latest in technology and get inspired to create your next big project.</p>\n\n<p>Subscribe to our newsletter to receive notifications about new posts and upcoming events.</p>\n\n<h2>Engage with Our Posts</h2>\n\n<p>Our posts are meticulously researched and derived from personal experience. Each tutorial and DIY guide is crafted to ensure you can achieve the results demonstrated. Follow along with our step-by-step instructions and feel free to click on any code snippet to easily copy its content.</p>\n\n<p>Our goal is to provide you with practical knowledge that you can apply directly to your projects. Whether you&#39;re troubleshooting a problem or seeking new techniques, our detailed articles will support your development journey.</p>\n\n<h3>Join Our Community</h3>\n\n<p>Coder Nova is more than just a blog; it&#39;s a community of passionate developers. Share your thoughts, ask questions, and connect with like-minded individuals. Together, we can learn, grow, and innovate.</p>\n</div>\n</div>'),
(3, 'Terms and Conditions', 'terms-and-conditions', '<div class=\"container lg:px-8 mx-auto px-4 py-12 sm:px-6\">\r\n<h1>Terms and Conditions</h1>\r\n\r\n<p>Welcome to Coder Nova. These terms and conditions outline the rules and regulations for the use of our website.</p>\r\n\r\n<h2>1. Introduction</h2>\r\n\r\n<p>By accessing this website, we assume you accept these terms and conditions in full. Do not continue to use Coder Nova if you do not accept all of the terms and conditions stated on this page.</p>\r\n\r\n<h2>2. Intellectual Property Rights</h2>\r\n\r\n<p>Other than the content you own, under these Terms, Coder Nova and/or its licensors own all the intellectual property rights and materials contained in this Website. You are granted limited license only for purposes of viewing the material contained on this Website.</p>\r\n\r\n<h2>3. Restrictions</h2>\r\n\r\n<ul>\r\n	<li>You are specifically restricted from all of the following: publishing any Website material in any other media; selling, sublicensing, and/or otherwise commercializing any Website material; publicly performing and/or showing any Website material; using this Website in any way that is or may be damaging to this Website; using this Website in any way that impacts user access to this Website.</li>\r\n	<li>Certain areas of this Website are restricted from being accessed by you and Coder Nova may further restrict access by you to any areas of this Website, at any time, in absolute discretion.</li>\r\n</ul>\r\n\r\n<h2>4. Limitation of Liability</h2>\r\n\r\n<p>In no event shall Coder Nova, nor any of its officers, directors, and employees, be liable to you for anything arising out of or in any way connected with your use of this Website, whether such liability is under contract, tort, or otherwise, and Coder Nova, including its officers, directors, and employees, shall not be liable for any indirect, consequential, or special liability arising out of or in any way related to your use of this Website.</p>\r\n\r\n<h2>5. Indemnification</h2>\r\n\r\n<p>You hereby indemnify to the fullest extent Coder Nova from and against any and/or all liabilities, costs, demands, causes of action, damages, and expenses arising in any way related to your breach of any of the provisions of these Terms.</p>\r\n\r\n<h2>6. Changes to Terms</h2>\r\n\r\n<p>Coder Nova reserves the right to revise these Terms at any time as it sees fit, and by using this Website you are expected to review such Terms on a regular basis to ensure you understand all terms and conditions governing use of this Website.</p>\r\n\r\n<h2>7. Contact Information</h2>\r\n\r\n<p>If you have any questions about these Terms, please contact us at <a class=\"text-blue-500 hover:underline\" href=\"mailto:support@cn.coursearena.com.ng\">support@cn.coursearena.com.ng</a>.</p>\r\n</div>'),
(4, 'Privacy Policy', 'privacy-policy', '<div class=\"container lg:px-8 mx-auto px-4 py-12 sm:px-6\">\r\n<h1>Privacy Policy</h1>\r\n\r\n<p>At Coder Nova, we are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and disclose your personal information when you visit and interact with our website.</p>\r\n\r\n<h2>1. Information We Collect</h2>\r\n\r\n<p>We may collect the following types of information when you use our website:</p>\r\n\r\n<ul>\r\n	<li><strong>Personal Identification Information:</strong> Name, email address, phone number, etc.</li>\r\n	<li><strong>Technical Information:</strong> IP address, browser type, operating system, and other technical data related to your visit.</li>\r\n	<li><strong>Usage Data:</strong> Information about how you use our website and services.</li>\r\n</ul>\r\n\r\n<h2>2. How We Use Your Information</h2>\r\n\r\n<p>We use your information to:</p>\r\n\r\n<ul>\r\n	<li>Provide and improve our services.</li>\r\n	<li>Send you newsletters, updates, and other communications related to our services.</li>\r\n	<li>Respond to your inquiries and provide customer support.</li>\r\n	<li>Analyze usage patterns to enhance user experience.</li>\r\n</ul>\r\n\r\n<h2>3. How We Share Your Information</h2>\r\n\r\n<p>We do not sell or rent your personal information to third parties. However, we may share your information with:</p>\r\n\r\n<ul>\r\n	<li><strong>Service Providers:</strong> Third parties who assist us in operating our website and providing services.</li>\r\n	<li><strong>Legal Requirements:</strong> If required by law or to protect the rights, property, or safety of our users and our company.</li>\r\n</ul>\r\n\r\n<h2>4. Your Choices</h2>\r\n\r\n<p>You have the right to:</p>\r\n\r\n<ul>\r\n	<li>Access, update, or delete your personal information.</li>\r\n	<li>Opt-out of receiving promotional emails from us.</li>\r\n	<li>Set your browser to refuse cookies or alert you when cookies are being sent.</li>\r\n</ul>\r\n\r\n<h2>5. Security</h2>\r\n\r\n<p>We implement security measures to protect your information. However, no method of transmission over the Internet or electronic storage is 100% secure.</p>\r\n\r\n<h2>6. Changes to This Privacy Policy</h2>\r\n\r\n<p>We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on our website.</p>\r\n\r\n<h2>7. Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, please contact us at <a class=\"text-blue-500 hover:underline\" href=\"mailto:support@cn.coursearena.com.ng\">support@cn.coursearena.com.ng</a>.</p>\r\n</div>'),
(5, 'Contact', 'contact', '<div class=\"relative flex min-h-screen flex-col justify-center overflow-hidden py-6 sm:py-12\">\n    <div class=\"max-w-4xl mx-auto w-full\">\n      <div class=\"grid grid-cols-6 h-full\">\n        <div class=\"bg-blue-900 p-10 col-span-2\">\n          <h2 class=\"mb-10 font-bold text-2xl text-blue-100 before:block before:absolute before:bg-sky-300 before:content[\'\'] relative before:w-20 before:h-1 before:-skew-y-3 before:-bottom-4\">Contact Info</h2>\n          <p class=\"font-bold text-blue-100 py-8 border-b border-blue-700\">\n            Location:\n            <span class=\"font-normal text-xs text-blue-300 block\">Delta State, Nigeria</span>\n          </p>\n          <p class=\"font-bold text-blue-100 py-8 border-b border-blue-700\">\n            Phone Number:\n            <a href=\"tel:+2348141941192\" class=\"font-normal text-xs text-blue-300 block\">+234 8141 9411 92</a>\n          </p>\n          <p class=\"font-bold text-blue-100 py-8 border-b border-blue-700\">\n            Email Address:\n            <a href=\"mailto:brandnova89@gmail.com\" class=\"font-normal text-xs text-blue-300 block\">brandnova89@gmail.com</a>\n          </p>\n          <p class=\"font-bold text-blue-100 py-8 border-b border-blue-700\">\n            Web Address:\n            <a href=\"https://brandnova.github.io\" target=\"_blank\" class=\"font-normal text-xs text-blue-300 block\">brandnova.github.io</a>\n          </p>\n  \n        </div>\n        <div class=\"p-14 col-span-4 overflow-x-hidden hide-scrollbar\">\n            <div>\n                <div class=\"relative z-0 flex min-h-[calc(100vh-30vh)] items-center   \">\n        \n        \n                    <div class=\"mx-auto px-5 py-20 text-center relative    w-full \">\n                        <div class=\"absolute -z-10 h-full w-full fill-w/20 text-white/20 text-center    bottom-[120%] left-0  \">\n                            \n                        <svg class=\"w-screen h-screen\"\n                        \n                        xml:space=\"preserve\"\n                        enable-background=\"new 0 0 540 320\"\n                        viewBox=\"0 0 540 315\"\n                        height=\"315\"\n                        width=\"540\"\n                        y=\"0px\"\n                        x=\"0px\"\n                        id=\"Layer_1\"\n                        version=\"1.1\">\n                        <path\n                        id=\"path4138\"\n                        d=\"m 300.9453,298.64083 c -23.37618,-13.6244 17.86393,-37.48781 18.80284,-10.31891 -0.67459,8.65286 -11.18614,14.44492 -18.80284,10.31891 z M 59.34323,290.53866 c -29.494036,-21.34577 30.358608,-40.09295 17.928619,-5.46996 -3.381834,6.06943 -11.765428,8.78257 -17.928619,5.46996 z m 375.75851,-4.12342 c -25.95787,-15.30914 20.01815,-40.72851 21.79974,-11.53243 -0.44837,10.32897 -13.16846,16.2851 -21.79974,11.53243 z m -202.97183,-0.76715 c -25.67347,-24.89047 35.85662,-25.00819 10.09385,-0.0259 -3.09896,1.84318 -7.00205,1.9577 -10.09385,0.0259 z M 114.50408,249.09872 c 1.56731,-12.95612 -20.259932,-8.53287 -21.983974,4.5823 -1.898082,14.43909 -30.764225,6.75674 -24.529661,-4.30634 8.680173,-15.40271 20.613749,-51.84225 2.16715,-43.77661 -17.625216,7.70649 -30.694029,-0.28748 -22.175378,-15.17289 3.97628,-4.90705 13.099788,-7.75319 10.124521,-15.44361 1.138637,-11.2312 -2.402365,-13.9853 -13.267712,-13.2466 -12.725303,-0.70153 -16.105057,-24.44778 -3.79905,-26.28338 14.472405,1.82206 11.25524,-18.97492 21.02176,-20.53489 14.657784,1.05316 32.247126,14.39057 29.554398,-10.63192 -13.387213,-4.730729 2.630199,-27.219205 11.609006,-17.096636 l 27.74654,15.526306 c 9.73215,5.44588 18.56779,-6.557556 12.10867,-20.320063 -2.15577,-10.809476 2.09144,-18.442459 12.58138,-19.982537 11.41323,-1.149219 13.61563,15.248578 16.53588,24.205727 -1.99141,11.288574 22.18462,8.649303 12.44451,-1.834976 -9.20631,-9.753929 11.41595,-27.086763 19.48499,-15.084604 11.38528,7.627332 13.97403,40.078763 31.37878,20.589981 10.63072,-4.217377 24.39627,4.951041 20.84841,-12.185657 -4.02392,-20.431699 14.001,-16.640215 26.861,-26.349305 22.08916,-16.676954 26.9738,22.570455 10.9782,35.003397 0.83695,11.913828 30.08218,-6.468125 30.8698,15.489497 10.57125,9.00105 8.28106,-22.631005 17.42804,-28.144446 15.69993,-19.935363 26.17692,9.096345 21.02454,23.397875 3.22273,22.947931 12.34017,-14.179563 23.74754,-15.714104 5.44518,-3.204836 13.39071,2.586473 18.91246,0.202265 6.68336,-12.160855 27.54209,-15.365751 28.6369,2.003776 5.07943,4.898204 23.22297,4.327109 17.32425,19.882594 -0.74805,6.4757 -10.39706,8.25783 -14.69554,12.86134 5.21009,9.76668 31.33722,5.87424 41.49519,-1.64219 9.87192,-0.27681 11.57259,22.49394 2.59271,27.75604 -8.7737,9.88143 -36.99794,5.29612 -20.94582,22.24798 12.93692,25.7192 -38.1165,15.78287 -25.29982,33.64573 17.43326,1.78042 42.61292,21.04259 18.08206,34.35587 -12.17569,-2.26891 -11.33703,-1.52145 -12.85129,11.30594 -2.74446,23.2486 -57.58093,-38.28097 -68.46134,-13.94677 -6.58963,6.4653 -23.37855,7.98754 -26.18481,-2.79002 -10.17153,-17.0969 -4.98224,45.10827 -27.71626,21.93395 -0.42884,-7.93283 -2.95898,-31.90785 -10.445,-14.81456 5.55501,14.28352 2.68154,43.2969 -17.52303,33.78978 -3.88393,-13.28109 -5.63074,-29.67532 -23.24445,-23.45379 -13.70328,2.20093 -6.85493,-14.72983 -10.70845,-22.611 -13.71457,6.63819 -16.20583,20.67731 -19.82458,32.86259 -12.34746,14.62368 -16.19947,-16.13085 -25.15017,-2.26043 -10.19484,13.00553 -29.87137,7.60395 -21.80293,-10.20384 0.71397,-12.28461 -8.44609,-21.47384 -13.63083,-5.89098 -3.88686,18.14931 -20.07516,15.62805 -33.46077,18.93726 -7.46937,7.41431 -14.43953,15.40461 -27.00006,15.32355 -12.56054,-0.0811 -2.76272,-12.60244 -0.85776,-22.1816 z m 365.58874,-7.50008 c -25.04175,-18.43569 21.36958,-43.62453 19.80864,-10.96527 -0.675,9.10084 -11.68522,17.1551 -19.80864,10.96527 z M 23.268496,221.01627 c -29.4940383,-21.34577 30.358613,-40.09295 17.92862,-5.46996 -3.381835,6.06944 -11.765428,8.78258 -17.92862,5.46996 z M 505.24757,140.03314 c -26.91656,-10.9819 9.16815,-46.386399 19.05004,-18.2654 3.79106,11.03905 -8.50824,22.28992 -19.05004,18.2654 z M 36.77878,121.44699 C 4.9069424,98.129961 72.188756,80.673158 53.699309,117.42018 49.732106,122.2089 42.465005,124.62303 36.77878,121.44699 Z M 433.59862,67.618603 c -25.39564,-12.417376 13.32444,-42.188295 17.45629,-13.516808 0.53543,8.777713 -8.91292,17.132263 -17.45629,13.516808 z M 240.71897,62.773336 c -27.96067,-17.83361 24.87151,-40.236042 20.11976,-8.404404 -2.48082,8.298941 -12.48547,12.830428 -20.11976,8.404404 z m -98.31632,-6.602551 c -31.2725,-25.698578 40.23833,-36.044815 18.61133,-2.470153 -4.99792,4.686927 -12.62289,6.314521 -18.61133,2.470153 z M 298.22949,43.489046 c -26.92982,-16.385526 17.92765,-46.854267 20.63144,-13.558779 -0.22102,9.592899 -11.47908,19.476479 -20.63144,13.558779 z\"\n                        style=\"fill:#21b04b\" />\n                        </svg>\n                        </div>\n                        <h1 class=\"text-brand-primary mb-3 mt-2 text-7xl font-semibold tracking-tight lg:leading-tight varien\">\n                            Contact Us</h1>\n        \n                    </div>\n                </div>\n            </div> \n        </div>\n      </div>\n    </div>\n  </div>');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-28 14:06:48.488429', '1', 'Terms and Conditions', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-07-28 15:02:01.963679', '1', 'Education', 1, '[{\"added\": {}}]', 9, 1),
(3, '2024-07-28 15:03:03.770978', '1', 'Python', 1, '[{\"added\": {}}]', 10, 1),
(4, '2024-07-28 15:03:12.279688', '2', 'Django', 1, '[{\"added\": {}}]', 10, 1),
(5, '2024-07-28 15:03:18.932800', '3', 'HTML', 1, '[{\"added\": {}}]', 10, 1),
(6, '2024-07-28 15:03:25.703381', '4', 'CSS', 1, '[{\"added\": {}}]', 10, 1),
(7, '2024-07-28 15:04:02.322246', '5', 'JavaScript', 1, '[{\"added\": {}}]', 10, 1),
(8, '2024-07-28 15:04:14.232553', '6', 'Bootstrap', 1, '[{\"added\": {}}]', 10, 1),
(9, '2024-07-28 15:04:32.234476', '7', 'Tailwind', 1, '[{\"added\": {}}]', 10, 1),
(10, '2024-07-28 15:07:17.683074', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 1, '[{\"added\": {}}]', 11, 1),
(11, '2024-07-28 15:13:43.569122', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Seo title\", \"Meta description\", \"Meta keywords\", \"References\"]}}]', 11, 1),
(12, '2024-07-28 16:29:24.863387', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(13, '2024-07-28 16:53:35.342015', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[]', 11, 1),
(14, '2024-07-28 17:05:06.182494', '2', 'Comment by Mr nova on Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Approved\"]}}]', 14, 1),
(16, '2024-07-28 18:22:41.271505', '1', 'nova\'s Profile', 3, '', 15, 1),
(17, '2024-07-28 18:22:53.494890', '2', 'nova', 3, '', 4, 1),
(18, '2024-07-28 18:23:36.141855', '2', 'admin\'s Profile', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 15, 1),
(19, '2024-07-28 20:19:07.996641', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Allow comments\"]}}]', 11, 1),
(20, '2024-07-28 20:21:22.319290', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Allow comments\"]}}]', 11, 1),
(21, '2024-07-28 20:37:14.360588', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(22, '2024-07-28 21:53:56.440192', '2', 'admin\'s Profile', 2, '[{\"changed\": {\"fields\": [\"Bookmarks\"]}}]', 15, 1),
(23, '2024-07-28 22:32:59.815641', '2', 'Mobile Development', 1, '[{\"added\": {}}]', 9, 1),
(24, '2024-07-28 22:33:13.726799', '3', 'Database Management', 1, '[{\"added\": {}}]', 9, 1),
(25, '2024-07-28 22:33:27.704704', '4', 'Tools & Libraries', 1, '[{\"added\": {}}]', 9, 1),
(26, '2024-07-28 22:33:37.247858', '5', 'Career & Industry', 1, '[{\"added\": {}}]', 9, 1),
(27, '2024-07-28 22:33:50.450574', '6', 'Project Showcases', 1, '[{\"added\": {}}]', 9, 1),
(28, '2024-07-28 22:34:00.111761', '7', 'Coding Challenges', 1, '[{\"added\": {}}]', 9, 1),
(29, '2024-07-28 22:34:09.211014', '8', 'Community & Events', 1, '[{\"added\": {}}]', 9, 1),
(30, '2024-07-28 22:49:48.184155', '8', 'Java', 1, '[{\"added\": {}}]', 10, 1),
(31, '2024-07-28 22:50:10.558376', '9', 'C++', 1, '[{\"added\": {}}]', 10, 1),
(32, '2024-07-28 22:50:16.955971', '10', 'Ruby', 1, '[{\"added\": {}}]', 10, 1),
(33, '2024-07-28 22:50:27.443096', '11', 'Go', 1, '[{\"added\": {}}]', 10, 1),
(34, '2024-07-28 22:50:32.383875', '12', 'Rust', 1, '[{\"added\": {}}]', 10, 1),
(35, '2024-07-28 22:50:36.031655', '13', 'Dart', 1, '[{\"added\": {}}]', 10, 1),
(36, '2024-07-29 00:32:51.965439', '2', 'Introduction to RESTful APIs with Django REST Framework', 1, '[{\"added\": {}}]', 11, 1),
(37, '2024-07-29 00:38:20.933257', '1', 'uchennamebijay@gmail.com', 1, '[{\"added\": {}}]', 17, 1),
(38, '2024-07-29 00:38:27.597406', '2', 'brandnova89@gmail.com', 1, '[{\"added\": {}}]', 17, 1),
(39, '2024-07-29 00:40:31.360263', '2', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Status\"]}}]', 11, 1),
(40, '2024-07-29 00:40:42.094396', '2', 'Introduction to RESTful APIs with Django REST Framework', 3, '', 11, 1),
(41, '2024-07-29 00:42:37.240192', '3', 'Introduction to RESTful APIs with Django REST Framework', 1, '[{\"added\": {}}]', 11, 1),
(42, '2024-07-29 00:49:20.428023', '3', 'user@gmail.com', 3, '', 17, 1),
(43, '2024-07-29 01:25:26.188020', '1', 'Coder Nova', 1, '[{\"added\": {}}]', 7, 1),
(44, '2024-07-29 01:25:43.396088', '3', 'user123', 3, '', 4, 1),
(45, '2024-07-29 01:29:51.246768', '4', 'tstusr', 3, '', 4, 1),
(46, '2024-07-29 01:31:26.795943', '5', 'tstusr', 3, '', 4, 1),
(47, '2024-07-29 01:33:17.221044', '6', 'tstusr', 3, '', 4, 1),
(48, '2024-07-29 01:36:24.014090', '1', 'Coder Nova', 2, '[{\"changed\": {\"fields\": [\"Contact email\"]}}]', 7, 1),
(49, '2024-07-29 01:37:03.853962', '7', 'tstusr', 3, '', 4, 1),
(50, '2024-07-29 01:50:48.102224', '8', 'tstusr', 3, '', 4, 1),
(51, '2024-07-29 02:06:45.256421', '9', 'Tutorials', 1, '[{\"added\": {}}]', 9, 1),
(52, '2024-07-29 02:08:00.621591', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 1, '[{\"added\": {}}]', 11, 1),
(53, '2024-07-29 02:10:21.270022', '10', 'Python Tutorials', 1, '[{\"added\": {}}]', 9, 1),
(54, '2024-07-29 02:13:13.741872', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 1, '[{\"added\": {}}]', 11, 1),
(55, '2024-07-29 02:20:07.530065', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(56, '2024-07-29 02:22:28.073030', '11', 'Machine Learning', 1, '[{\"added\": {}}]', 9, 1),
(57, '2024-07-29 02:22:50.158412', '14', 'Scikit-Learn', 1, '[{\"added\": {}}]', 10, 1),
(58, '2024-07-29 02:23:45.175815', '6', 'Introduction to Machine Learning with Scikit-Learn', 1, '[{\"added\": {}}]', 11, 1),
(59, '2024-07-29 02:29:19.044155', '12', 'Web Development', 1, '[{\"added\": {}}]', 9, 1),
(60, '2024-07-29 02:29:39.735483', '15', 'Django REST Framework', 1, '[{\"added\": {}}]', 10, 1),
(61, '2024-07-29 02:44:21.657825', '7', 'Understanding REST APIs in Django', 1, '[{\"added\": {}}]', 11, 1),
(62, '2024-07-29 03:19:18.633644', '1', 'Hello Dear users', 1, '[{\"added\": {}}]', 18, 1),
(63, '2024-07-29 03:23:08.059854', '2', 'Yo', 1, '[{\"added\": {}}]', 18, 1),
(64, '2024-07-29 03:32:06.044801', '3', 'New one', 1, '[{\"added\": {}}]', 18, 1),
(65, '2024-07-29 18:15:39.595832', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 11, 1),
(66, '2024-07-29 20:41:16.414988', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(67, '2024-07-29 20:41:53.815892', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(68, '2024-07-29 20:42:46.701834', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(69, '2024-07-29 20:54:22.303923', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(70, '2024-07-29 20:55:58.535341', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(71, '2024-07-29 20:58:59.500987', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(72, '2024-07-29 21:01:53.843379', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(73, '2024-07-29 21:03:56.735712', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Featured\"]}}]', 11, 1),
(74, '2024-07-29 21:04:26.895235', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(75, '2024-07-29 21:05:15.578983', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 11, 1),
(76, '2024-07-29 21:05:25.267059', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 11, 1),
(77, '2024-07-29 21:05:37.568750', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 11, 1),
(78, '2024-07-29 21:18:30.348786', '4', 'user@gmail.com', 3, '', 17, 1),
(79, '2024-07-30 10:37:00.122833', '2', 'admin\'s Profile', 2, '[{\"changed\": {\"fields\": [\"Bio\", \"Cover image\"]}}]', 15, 1),
(80, '2024-07-30 10:41:35.310239', '9', 'user123', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(81, '2024-07-30 15:15:58.173104', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Youtube url\"]}}]', 11, 1),
(82, '2024-07-30 15:35:08.451180', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"References\"]}}]', 11, 1),
(83, '2024-07-30 15:41:26.020071', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"References\"]}}]', 11, 1),
(84, '2024-07-30 16:03:51.391484', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(85, '2024-07-30 16:37:45.811865', '2', 'About Us', 1, '[{\"added\": {}}]', 8, 1),
(86, '2024-07-30 16:38:59.254395', '1', 'Coder Nova', 2, '[{\"changed\": {\"fields\": [\"Favicon\", \"Logo\"]}}]', 7, 1),
(87, '2024-07-30 16:42:01.431436', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(88, '2024-07-30 16:43:11.858214', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(89, '2024-07-30 16:45:24.622674', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(90, '2024-07-30 16:49:19.119576', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(91, '2024-07-30 16:50:16.246448', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(92, '2024-07-30 16:50:47.279545', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(93, '2024-07-30 16:51:44.734230', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(94, '2024-07-30 16:54:11.039439', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(95, '2024-07-30 16:56:34.000194', '2', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(96, '2024-07-30 16:56:46.143098', '1', 'Terms and Conditions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(97, '2024-07-30 16:57:15.651949', '3', 'Privacy Policy', 1, '[{\"added\": {}}]', 8, 1),
(98, '2024-07-30 16:58:28.088399', '2', 'About Us', 3, '', 8, 1),
(99, '2024-07-30 16:58:48.821580', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 8, 1),
(100, '2024-07-30 16:59:29.044278', '3', 'Terms and Conditions', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 8, 1),
(101, '2024-07-30 16:59:50.567699', '4', 'Privacy Policy', 1, '[{\"added\": {}}]', 8, 1),
(102, '2024-07-30 17:11:28.466024', '5', 'uchennamebijay@gmail.com', 1, '[{\"added\": {}}]', 17, 1),
(103, '2024-07-30 17:12:17.552183', '6', 'uchennamebijay@gmail.com', 1, '[{\"added\": {}}]', 17, 1),
(104, '2024-07-30 22:03:20.845227', '9', 'user123', 3, '', 4, 1),
(105, '2024-07-30 22:05:51.656596', '10', 'user123', 3, '', 4, 1),
(106, '2024-07-30 22:11:26.007992', '1', 'Hello Dear users', 2, '[{\"changed\": {\"fields\": [\"Message\"]}}]', 18, 1),
(107, '2024-07-30 22:11:36.538554', '1', 'Hello Dear user', 2, '[{\"changed\": {\"fields\": [\"Subject\"]}}]', 18, 1),
(108, '2024-07-30 22:14:12.873554', '3', 'New one', 3, '', 18, 1),
(109, '2024-07-30 22:14:12.890787', '2', 'Yo', 3, '', 18, 1),
(110, '2024-07-30 23:00:54.472814', '8', 'A Comprehensive Guide to Django Models', 1, '[{\"added\": {}}]', 11, 1),
(111, '2024-07-31 18:42:11.679290', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[]', 11, 1),
(112, '2024-07-31 18:42:32.749139', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(113, '2024-07-31 18:43:09.481885', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(114, '2024-07-31 18:43:30.621828', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(115, '2024-08-01 09:47:47.627948', '9', 'Test Post', 1, '[{\"added\": {}}]', 11, 1),
(116, '2024-08-01 09:52:04.614559', '15', 'uchennamebijay@gmail.com', 3, '', 17, 1),
(117, '2024-08-01 09:52:04.630181', '12', 'jahswayijeoma@gmail.com', 3, '', 17, 1),
(118, '2024-08-01 09:52:37.340598', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(119, '2024-08-01 10:06:55.412093', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(120, '2024-08-01 10:07:19.216884', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(121, '2024-08-01 10:18:34.527230', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(122, '2024-08-01 10:18:52.660904', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(123, '2024-08-01 10:21:05.615170', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(124, '2024-08-01 10:21:22.810107', '9', 'Test Post', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(125, '2024-08-01 12:06:26.835208', '4', 'Bulk email', 1, '[{\"added\": {}}]', 18, 1),
(126, '2024-08-01 12:07:13.083964', '1', 'Hello Dear user', 3, '', 18, 1),
(127, '2024-08-01 12:33:44.047691', '1', 'Ad for index_sidebar (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(128, '2024-08-01 12:34:52.669931', '2', 'Ad for homepage_top (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(129, '2024-08-01 12:35:05.416344', '1', 'Ad for homepage_sidebar (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Location\"]}}]', 19, 1),
(130, '2024-08-01 12:35:47.794175', '2', 'Ad for homepage_top (Active: False)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(131, '2024-08-01 12:36:00.051668', '2', 'Ad for homepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(132, '2024-08-01 12:36:06.834702', '1', 'Ad for homepage_sidebar (Active: False)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(133, '2024-08-01 12:36:16.745050', '1', 'Ad for homepage_sidebar (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(134, '2024-08-01 12:37:44.678894', '3', 'Ad for articlepage_bottom (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(135, '2024-08-01 12:38:05.117084', '4', 'Ad for staticpage_top (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(136, '2024-08-01 12:38:24.570275', '5', 'Ad for staticpage_bottom (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(137, '2024-08-01 12:43:57.513933', '6', 'Ad for searchpage_top (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(138, '2024-08-01 12:45:17.973188', '7', 'Ad for uploadspage_sidebar (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(139, '2024-08-01 14:36:25.183409', '5', 'Random Mail', 1, '[{\"added\": {}}]', 18, 1),
(140, '2024-08-01 14:37:45.478271', '5', 'Random Mail', 3, '', 18, 1),
(141, '2024-08-01 19:43:42.313345', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 1, '[{\"added\": {}}]', 11, 1),
(142, '2024-08-01 21:14:23.272549', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(143, '2024-08-01 21:17:21.562784', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(144, '2024-08-01 21:23:48.948849', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[]', 11, 1),
(145, '2024-08-01 21:35:04.546965', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[]', 11, 1),
(146, '2024-08-01 21:35:12.857050', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(147, '2024-08-01 21:41:41.265900', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Type\", \"Content\", \"Excerpt\", \"Image\", \"Tags\", \"Category\", \"Frameworks\", \"Reading time\", \"Seo title\", \"Meta description\", \"Meta keywords\", \"Featured\"]}}]', 11, 1),
(148, '2024-08-01 21:44:01.556727', '1', 'Introduction to Django: A Comprehensive Guide Part 1', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 11, 1),
(149, '2024-08-02 18:35:21.998301', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(150, '2024-08-02 18:40:51.781421', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(151, '2024-08-03 06:56:12.208357', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(152, '2024-08-03 07:43:28.054851', '13', 'Top Frameworks', 1, '[{\"added\": {}}]', 9, 1),
(153, '2024-08-03 07:44:02.169412', '16', 'ReactJS', 1, '[{\"added\": {}}]', 10, 1),
(154, '2024-08-03 07:44:24.600863', '17', 'React', 1, '[{\"added\": {}}]', 10, 1),
(155, '2024-08-03 07:44:32.812382', '18', 'Angular', 1, '[{\"added\": {}}]', 10, 1),
(156, '2024-08-03 07:44:45.736123', '19', 'Vue.js', 1, '[{\"added\": {}}]', 10, 1),
(157, '2024-08-03 07:44:52.929788', '20', 'Svelte', 1, '[{\"added\": {}}]', 10, 1),
(158, '2024-08-03 07:45:03.885601', '21', 'Next.js', 1, '[{\"added\": {}}]', 10, 1),
(159, '2024-08-03 07:45:13.760720', '22', 'Express.js', 1, '[{\"added\": {}}]', 10, 1),
(160, '2024-08-03 07:45:22.070917', '23', 'NestJS', 1, '[{\"added\": {}}]', 10, 1),
(161, '2024-08-03 07:45:36.838582', '24', 'Ember.js', 1, '[{\"added\": {}}]', 10, 1),
(162, '2024-08-03 07:47:04.167499', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 1, '[{\"added\": {}}]', 11, 1),
(163, '2024-08-03 10:12:40.072807', '25', 'Git', 1, '[{\"added\": {}}]', 10, 1),
(164, '2024-08-03 10:14:10.522286', '2', 'Software Development', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 9, 1),
(165, '2024-08-03 10:14:28.272647', '12', 'Essential Git Commands Every Developer Should Know', 1, '[{\"added\": {}}]', 11, 1),
(166, '2024-08-03 10:21:48.799251', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(167, '2024-08-03 12:42:18.917427', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(168, '2024-08-03 13:11:31.056863', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(169, '2024-08-03 14:22:32.487161', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(170, '2024-08-03 14:27:22.069378', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(171, '2024-08-03 14:43:40.314787', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Reading time\"]}}]', 11, 1),
(172, '2024-08-03 14:54:37.193125', '13', 'How to Build a REST API with Django and Django REST Framework', 1, '[{\"added\": {}}]', 11, 1),
(173, '2024-08-03 16:08:29.585022', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(174, '2024-08-03 16:09:02.897781', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(175, '2024-08-03 16:30:52.899629', '14', 'LLMs', 1, '[{\"added\": {}}]', 9, 1),
(176, '2024-08-03 16:33:07.115633', '26', 'AI', 1, '[{\"added\": {}}]', 10, 1),
(177, '2024-08-03 16:33:20.275606', '15', 'Technology', 1, '[{\"added\": {}}]', 9, 1),
(178, '2024-08-03 16:35:08.356303', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 1, '[{\"added\": {}}]', 11, 1),
(179, '2024-08-03 18:28:13.641392', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 2, '[]', 11, 1),
(180, '2024-08-03 18:38:09.101532', '15', 'Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 1, '[{\"added\": {}}]', 11, 1),
(181, '2024-08-03 18:43:14.431965', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(182, '2024-08-03 18:44:09.929845', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(183, '2024-08-03 18:50:16.841780', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(184, '2024-08-03 18:50:25.827003', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(185, '2024-08-03 18:50:36.725685', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(186, '2024-08-03 18:51:48.646733', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(187, '2024-08-03 18:52:05.702581', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(188, '2024-08-03 18:52:15.096312', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(189, '2024-08-03 19:05:21.691305', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[]', 19, 1),
(190, '2024-08-03 19:05:47.684681', '8', 'Ad for articlepage_top (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(191, '2024-08-03 19:06:47.661782', '1', 'Ad for homepage_sidebar (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(192, '2024-08-03 19:06:56.136768', '2', 'Ad for homepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(193, '2024-08-03 19:07:04.598021', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(194, '2024-08-03 19:07:13.198814', '4', 'Ad for staticpage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(195, '2024-08-03 19:07:35.069350', '4', 'Ad for staticpage_top (Active: True)', 2, '[]', 19, 1),
(196, '2024-08-03 19:07:43.776518', '5', 'Ad for staticpage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(197, '2024-08-03 19:07:54.133548', '6', 'Ad for searchpage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(198, '2024-08-03 19:08:03.883650', '7', 'Ad for uploadspage_sidebar (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Start date\", \"End date\"]}}]', 19, 1),
(199, '2024-08-04 08:25:43.758766', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Seo title\", \"Meta keywords\"]}}]', 11, 1),
(200, '2024-08-04 08:43:56.210768', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(201, '2024-08-04 10:02:55.661025', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(202, '2024-08-04 10:35:13.869315', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(203, '2024-08-04 11:15:02.213753', '14', 'How to Install and Run ChatGPT Locally on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Meta keywords\"]}}]', 11, 1),
(204, '2024-08-04 11:35:15.382700', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\", \"Seo title\"]}}]', 11, 1),
(205, '2024-08-04 11:37:31.368658', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(206, '2024-08-04 11:38:03.974654', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(207, '2024-08-04 12:02:03.824759', '7', 'Understanding REST APIs in Django', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(208, '2024-08-04 12:03:17.678975', '7', 'Understanding REST APIs in Django', 2, '[]', 11, 1),
(209, '2024-08-04 12:04:40.465507', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(210, '2024-08-04 12:06:35.004258', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(211, '2024-08-04 12:08:01.569387', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[]', 11, 1),
(212, '2024-08-04 12:09:12.163527', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(213, '2024-08-04 12:11:54.915696', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(214, '2024-08-04 12:13:18.157926', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(215, '2024-08-04 12:15:14.734667', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 11, 1),
(216, '2024-08-04 12:20:08.964798', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(217, '2024-08-04 12:20:43.607404', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Youtube url\"]}}]', 11, 1),
(218, '2024-08-04 12:21:13.241221', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(219, '2024-08-04 12:43:12.774672', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(220, '2024-08-04 12:56:45.702282', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(221, '2024-08-04 18:57:51.318578', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(222, '2024-08-04 18:58:02.680585', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(223, '2024-08-04 18:58:21.717472', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(224, '2024-08-04 18:58:30.520955', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(225, '2024-08-04 21:00:09.003964', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(226, '2024-08-04 21:02:10.559685', '7', 'Understanding REST APIs in Django', 3, '', 11, 1),
(227, '2024-08-04 21:02:49.545146', '8', 'A Comprehensive Guide to Django Models', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Image\"]}}]', 11, 1),
(228, '2024-08-04 21:05:13.265494', '8', 'A Comprehensive Guide to Django Models', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(229, '2024-08-04 21:05:25.881536', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(230, '2024-08-04 21:05:34.610372', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(231, '2024-08-04 21:05:46.530785', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(232, '2024-08-04 21:05:54.843367', '5', 'Exploring Python\'s Asyncio for Concurrent Programming', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(233, '2024-08-04 21:06:07.546776', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(234, '2024-08-04 21:06:20.174356', '4', 'Understanding Django\'s ORM: A Beginner\'s Guide', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(235, '2024-08-04 21:06:33.984835', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(236, '2024-08-04 21:07:08.178741', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(237, '2024-08-04 21:08:43.600648', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(238, '2024-08-04 21:08:54.279741', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(239, '2024-08-04 22:02:52.347817', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(240, '2024-08-04 22:13:58.951679', '11', 'user123', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(241, '2024-08-04 22:14:47.280908', '11', 'user123', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(242, '2024-08-05 06:48:03.290234', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(243, '2024-08-05 06:50:37.106793', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(244, '2024-08-05 06:55:12.835337', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[{\"changed\": {\"fields\": [\"Reading time\"]}}]', 11, 1),
(245, '2024-08-05 06:55:38.931382', '7', 'Comment by Ijeoma Jahsway on A Comprehensive Guide to Django Models', 3, '', 14, 1),
(246, '2024-08-05 06:55:38.937332', '6', 'Comment by Mr Nova on Introduction to Django: A Comprehensive Guide', 3, '', 14, 1),
(247, '2024-08-05 06:55:38.938725', '4', 'Comment by Anonymous on Introduction to Django: A Comprehensive Guide', 3, '', 14, 1),
(248, '2024-08-05 06:55:38.940265', '3', 'Comment by Anonymous on Introduction to Django: A Comprehensive Guide', 3, '', 14, 1),
(249, '2024-08-05 06:55:38.941359', '2', 'Comment by Mr nova on Introduction to Django: A Comprehensive Guide', 3, '', 14, 1),
(250, '2024-08-05 06:55:38.942317', '1', 'Comment by Anonymous on Introduction to Django: A Comprehensive Guide', 3, '', 14, 1),
(251, '2024-08-05 07:02:05.413461', '8', 'Ad for articlepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(252, '2024-08-05 07:02:56.802452', '7', 'Ad for uploadspage_sidebar (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(253, '2024-08-05 07:04:39.762673', '2', 'Ad for homepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(254, '2024-08-05 07:05:35.523600', '4', 'Ad for staticpage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(255, '2024-08-05 07:06:27.759710', '6', 'Ad for searchpage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(256, '2024-08-05 07:06:48.380582', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(257, '2024-08-05 07:07:54.303348', '1', 'Ad for homepage_sidebar (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(258, '2024-08-05 07:08:15.986364', '5', 'Ad for staticpage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\", \"End date\"]}}]', 19, 1),
(259, '2024-08-05 07:24:18.349792', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(260, '2024-08-05 07:26:13.738729', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(261, '2024-08-05 07:26:59.089939', '4', 'Ad for staticpage_top (Active: False)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(262, '2024-08-05 07:31:43.999296', '2', 'Ad for homepage_top (Active: False)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(263, '2024-08-05 07:35:23.934537', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(264, '2024-08-05 07:36:04.094752', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Frameworks\"]}}]', 11, 1),
(265, '2024-08-05 07:36:27.702123', '1', 'Introduction to Django: A Comprehensive Guide', 2, '[{\"changed\": {\"fields\": [\"Reading time\"]}}]', 11, 1),
(266, '2024-08-05 07:37:50.101943', '2', 'Ad for homepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 19, 1),
(267, '2024-08-05 07:46:47.565166', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(268, '2024-08-05 07:47:19.714514', '8', 'Ad for articlepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(269, '2024-08-05 07:48:07.649918', '8', 'Ad for articlepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(270, '2024-08-05 07:48:18.762369', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(271, '2024-08-05 07:51:12.182894', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[]', 19, 1),
(272, '2024-08-05 07:52:10.788964', '8', 'Ad for articlepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(273, '2024-08-05 07:52:19.531149', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(274, '2024-08-05 07:53:56.377338', '8', 'Ad for articlepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(275, '2024-08-05 07:54:06.058938', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(276, '2024-08-05 07:55:31.749718', '8', 'Ad for articlepage_top (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(277, '2024-08-05 07:55:43.491858', '3', 'Ad for articlepage_bottom (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(278, '2024-08-05 08:13:51.235904', '9', 'uchennamebijay@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Email\"]}}]', 17, 1),
(279, '2024-08-05 08:23:37.886348', '1', 'Coder Nova', 2, '[{\"changed\": {\"fields\": [\"Contact email\"]}}]', 7, 1),
(280, '2024-08-05 08:26:18.030214', '3', 'Terms and Conditions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(281, '2024-08-05 08:26:45.507805', '4', 'Privacy Policy', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(282, '2024-08-05 08:30:32.242149', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(283, '2024-08-05 08:35:29.777371', '1', 'Coder Nova', 2, '[{\"changed\": {\"fields\": [\"Og url\"]}}]', 7, 1),
(284, '2024-08-05 08:44:08.821257', '14', 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(285, '2024-08-05 12:22:07.999753', '11', 'user123', 3, '', 4, 1),
(286, '2024-08-05 12:24:37.675702', '15', 'Stcymll', 3, '', 4, 1),
(287, '2024-08-05 13:52:10.042101', '14', 'Muhammad', 3, '', 4, 1),
(288, '2024-08-05 13:52:10.053820', '12', 'Spidershani', 3, '', 4, 1),
(289, '2024-08-05 13:52:10.066108', '16', 'stcymll', 3, '', 4, 1),
(290, '2024-08-05 13:52:43.520337', '13', 'SpiderShani007', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(291, '2024-08-05 13:56:09.913180', '1', 'Author', 1, '[{\"added\": {}}]', 3, 1),
(292, '2024-08-05 14:00:29.333810', '13', 'SpiderShani007', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(293, '2024-08-05 19:32:40.403115', '1', 'Author', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 1),
(294, '2024-08-05 19:33:44.649789', '17', 'Stcymll', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(295, '2024-08-05 21:28:44.244791', '1', 'How To Create Posts', 1, '[{\"added\": {}}]', 21, 1),
(296, '2024-08-06 16:10:15.457066', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(297, '2024-08-06 16:10:58.722816', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(298, '2024-08-06 18:52:40.805608', '10', 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 2, '[]', 11, 1),
(299, '2024-08-06 18:55:03.626256', '9', 'Web Dev Fundamentals: HTML Basics', 2, '[]', 11, 1),
(300, '2024-08-06 19:04:34.096486', '6', 'Introduction to Machine Learning with Scikit-Learn', 2, '[]', 11, 1),
(301, '2024-08-06 19:16:20.870046', '3', 'Introduction to RESTful APIs with Django REST Framework', 2, '[]', 11, 1),
(302, '2024-08-07 02:18:37.957353', '9', 'uchennamebijay@gmail.com', 3, '', 17, 1),
(303, '2024-08-07 02:18:52.944568', '16', 'brandnova89@gmail.com', 1, '[{\"added\": {}}]', 17, 1),
(304, '2024-08-07 06:46:32.350045', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(305, '2024-08-07 06:55:18.323758', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(306, '2024-08-07 07:10:50.359809', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(307, '2024-08-07 09:11:19.016587', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(308, '2024-08-07 09:13:44.563740', '13', 'How to Build a REST API with Django and Django REST Framework', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(309, '2024-08-07 09:55:21.464076', '15', 'Technology/Programming', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 9, 1),
(310, '2024-08-07 10:13:08.803985', '16', 'Top Programming Languages to Dominate the Tech Industry in 2025', 1, '[{\"added\": {}}]', 11, 1),
(311, '2024-08-07 10:29:33.661790', '16', 'Top Programming Languages to Dominate the Tech Industry in 2025', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(312, '2024-08-07 22:39:26.769453', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(313, '2024-08-08 01:20:46.628819', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(314, '2024-08-08 01:43:42.215061', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(315, '2024-08-08 02:16:27.505310', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(316, '2024-08-08 07:56:49.055021', '16', 'Top Programming Languages to Dominate the Tech Industry in 2025', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(317, '2024-08-08 08:10:37.266321', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(318, '2024-08-08 08:23:55.244323', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(319, '2024-08-08 08:25:37.452342', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(320, '2024-08-08 08:39:07.976993', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(321, '2024-08-08 08:45:14.497988', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(322, '2024-08-08 08:54:49.996874', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(323, '2024-08-08 09:14:51.614985', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(324, '2024-08-08 09:30:52.362227', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(325, '2024-08-08 16:53:04.620213', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(326, '2024-08-08 16:55:08.560364', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"References\"]}}]', 11, 1),
(327, '2024-08-08 17:03:36.106354', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"References\"]}}]', 11, 1),
(328, '2024-08-08 17:07:18.105386', '11', 'Top 10 JavaScript Frameworks to Learn in 2024', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(329, '2024-08-08 18:12:00.692287', '11', 'Top 10 JavaScript Frameworks to Learn in 2025', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\", \"Excerpt\", \"Tags\", \"Meta description\"]}}]', 11, 1),
(330, '2024-08-08 18:17:26.459148', '17', 'Step-by-Step Guide: Building a Django Website with Pre-Built HTML Template (Beginner-Friendly)', 1, '[{\"added\": {}}]', 11, 1),
(331, '2024-08-08 18:52:58.756002', '17', 'Step-by-Step Guide: Building a Django Website with Pre-Built HTML Template (Beginner-Friendly)', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(332, '2024-08-08 19:36:26.584611', '18', 'Top 10 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 1, '[{\"added\": {}}]', 11, 1),
(333, '2024-08-08 20:06:42.675458', '11', 'Top 10 JavaScript Frameworks for Modern Web Development', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\", \"Excerpt\", \"Status\", \"Tags\", \"Seo title\", \"Meta description\"]}}]', 11, 1),
(334, '2024-08-09 06:45:10.663116', '11', 'Top 10 JavaScript Frameworks for Modern Web Development', 2, '[{\"changed\": {\"fields\": [\"Reading time\"]}}]', 11, 1),
(335, '2024-08-09 06:47:22.527298', '11', 'Top 10 JavaScript Frameworks for Modern Web Development', 2, '[{\"changed\": {\"fields\": [\"Views\", \"References\"]}}]', 11, 1),
(336, '2024-08-09 06:49:01.570729', '11', 'Top 10 JavaScript Frameworks for Modern Web Development', 2, '[{\"changed\": {\"fields\": [\"References\"]}}]', 11, 1),
(337, '2024-08-09 06:51:17.989344', '17', 'uchennamebijay@gmail.com', 3, '', 17, 1),
(338, '2024-08-10 07:34:14.815024', '19', 'Simplicity Wins: How HTML-Only Websites Can Improve Performance', 1, '[{\"added\": {}}]', 11, 1),
(339, '2024-08-10 08:23:04.496297', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\", \"Excerpt\", \"Tags\", \"Reading time\", \"Seo title\", \"Meta description\", \"Meta keywords\", \"References\"]}}]', 11, 1),
(340, '2024-08-10 08:28:07.211271', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(341, '2024-08-10 08:54:39.478348', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(342, '2024-08-10 10:17:24.276491', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(343, '2024-08-10 10:25:19.996562', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[]', 11, 1),
(344, '2024-08-10 10:26:33.274571', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(345, '2024-08-10 13:27:36.792289', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(346, '2024-08-10 13:29:07.873935', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(347, '2024-08-10 13:53:14.691543', '5', 'Contact', 1, '[{\"added\": {}}]', 8, 1),
(348, '2024-08-10 16:28:32.223386', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(349, '2024-08-10 16:28:51.635837', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(350, '2024-08-10 16:33:53.798797', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(351, '2024-08-11 07:28:15.389433', '18', 'Black-Star', 3, '', 4, 1),
(352, '2024-08-11 07:28:15.449184', '19', 'BlackStar', 3, '', 4, 1),
(353, '2024-08-11 07:28:15.461743', '17', 'Stcymll', 3, '', 4, 1),
(354, '2024-08-11 09:32:12.651475', '1', 'Coder Nova', 2, '[{\"changed\": {\"fields\": [\"Favicon\"]}}]', 7, 1),
(355, '2024-08-11 09:52:18.014323', '1', 'Coder Nova', 2, '[{\"changed\": {\"fields\": [\"Favicon\", \"Contact email\", \"Phone number\"]}}]', 7, 1),
(356, '2024-08-11 23:15:11.948633', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\", \"Content\"]}}]', 11, 1),
(357, '2024-08-11 23:28:33.726974', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[]', 11, 1),
(358, '2024-08-11 23:36:56.022640', '7', 'Ad for uploadspage_sidebar (Active: True)', 2, '[]', 19, 1),
(359, '2024-08-11 23:37:17.179111', '7', 'Ad for uploadspage_sidebar (Active: True)', 2, '[]', 19, 1),
(360, '2024-08-11 23:37:41.785819', '9', 'Ad for projectpage_left (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(361, '2024-08-11 23:38:06.091237', '10', 'Ad for projectpage_right (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(362, '2024-08-11 23:39:27.790112', '6', 'Ad for searchpage_top (Active: True)', 3, '', 19, 1),
(363, '2024-08-11 23:39:45.850097', '11', 'Ad for projectpage_top (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(364, '2024-08-11 23:59:20.697620', '15', 'Tech/Programming', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Slug\"]}}]', 9, 1),
(365, '2024-08-15 05:34:58.469547', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Reading time\"]}}]', 11, 1),
(366, '2024-08-15 05:54:23.716814', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(367, '2024-08-15 06:36:35.988675', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(368, '2024-08-15 06:43:32.986274', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(369, '2024-08-15 07:17:33.549699', '7', 'Ad for uploadspage_sidebar (Active: True)', 2, '[]', 19, 1),
(370, '2024-08-15 09:26:52.336093', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(371, '2024-08-15 09:30:56.125236', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(372, '2024-08-15 10:02:45.760744', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(373, '2024-08-15 10:21:13.195723', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(374, '2024-08-15 16:59:16.142348', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Frameworks\"]}}]', 11, 1),
(375, '2024-08-16 07:03:52.393039', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(376, '2024-08-16 07:04:29.371890', '16', 'uchennamebijay@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Email\"]}}]', 17, 1),
(377, '2024-08-16 08:59:47.573643', '12', 'Ad for articlepage_inner (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(378, '2024-08-16 09:00:53.433109', '12', 'Ad for articlepage_inner (Active: True)', 2, '[{\"changed\": {\"fields\": [\"Code\"]}}]', 19, 1),
(379, '2024-08-16 09:06:44.466727', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Image\"]}}]', 11, 1),
(380, '2024-08-16 09:09:27.263925', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(381, '2024-08-16 09:10:17.848147', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(382, '2024-08-16 23:59:57.419220', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Seo title\", \"Meta description\"]}}]', 11, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(383, '2024-08-17 04:00:02.886147', '2', 'admin\'s Profile', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Location\"]}}]', 15, 1),
(384, '2024-08-17 04:01:37.660718', '13', 'Ad for articlepage_sidebar (Active: True)', 1, '[{\"added\": {}}]', 19, 1),
(385, '2024-08-17 14:40:55.815655', '16', 'uchennamebijay@gmail.com', 3, '', 17, 1),
(386, '2024-08-17 14:41:32.549197', '5', 'UI Updates', 1, '[{\"added\": {}}]', 18, 1),
(387, '2024-08-17 15:07:41.249543', '17', 'uchennamebijay@gmail.com', 1, '[{\"added\": {}}]', 17, 1),
(388, '2024-08-17 15:23:38.019754', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(389, '2024-08-17 15:40:16.235810', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(390, '2024-08-17 16:13:15.557131', '1', 'GitHub', 1, '[{\"added\": {}}]', 23, 1),
(391, '2024-08-17 16:13:52.095505', '2', 'LinkedIn', 1, '[{\"added\": {}}]', 23, 1),
(392, '2024-08-17 16:13:55.894943', '1', 'Coder Nova', 2, '[{\"added\": {\"name\": \"sitesettings-sociallink relationship\", \"object\": \"SiteSettings_social_links object (1)\"}}, {\"added\": {\"name\": \"sitesettings-sociallink relationship\", \"object\": \"SiteSettings_social_links object (2)\"}}]', 7, 1),
(393, '2024-08-17 16:16:22.502586', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Tags\", \"Frameworks\", \"Reading time\", \"Meta description\", \"Meta keywords\"]}}]', 11, 1),
(394, '2024-08-18 07:02:34.645666', '1', 'How To Create Posts', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 21, 1),
(395, '2024-08-19 08:54:11.250355', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(396, '2024-08-19 09:47:01.114505', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(397, '2024-08-19 09:47:16.896116', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(398, '2024-08-19 10:29:39.154626', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(399, '2024-08-19 15:17:01.914869', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(400, '2024-08-20 07:23:34.356330', '12', 'Essential Git Commands Every Developer Should Know', 2, '[{\"changed\": {\"fields\": [\"Frameworks\", \"Content\"]}}]', 11, 1),
(401, '2024-08-20 08:46:37.760994', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(402, '2024-08-20 09:02:17.173512', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(403, '2024-08-20 09:05:28.860808', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(404, '2024-08-20 09:06:00.784505', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(405, '2024-08-20 09:10:53.012166', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(406, '2024-08-20 09:16:23.637136', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(407, '2024-08-20 09:47:59.305510', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(408, '2024-08-20 09:54:05.866923', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(409, '2024-08-20 09:57:58.791169', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(410, '2024-08-20 10:07:52.231046', '18', 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 11, 1),
(411, '2024-08-21 16:10:42.497824', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1),
(412, '2024-08-21 16:12:04.461029', '19', 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(21, 'accounts', 'infocontent'),
(15, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(19, 'ads', 'ad'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'core', 'sitesettings'),
(23, 'core', 'sociallink'),
(8, 'core', 'staticpage'),
(18, 'newsletter', 'bulkemail'),
(17, 'newsletter', 'subscriber'),
(11, 'posts', 'article'),
(20, 'posts', 'articleview'),
(16, 'posts', 'bookmark'),
(9, 'posts', 'category'),
(14, 'posts', 'comment'),
(10, 'posts', 'framework'),
(22, 'posts', 'reaction'),
(6, 'sessions', 'session'),
(12, 'taggit', 'tag'),
(13, 'taggit', 'taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-28 12:10:37.625128'),
(2, 'auth', '0001_initial', '2024-07-28 12:10:37.711363'),
(3, 'admin', '0001_initial', '2024-07-28 12:10:37.740429'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-28 12:10:37.771476'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-28 12:10:37.785185'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-28 12:10:37.849804'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-28 12:10:37.904467'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-28 12:10:37.933942'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-28 12:10:37.967346'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-28 12:10:37.997231'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-28 12:10:38.014116'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-28 12:10:38.036114'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-28 12:10:38.090224'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-28 12:10:38.128161'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-28 12:10:38.165934'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-28 12:10:38.183439'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-28 12:10:38.214227'),
(18, 'sessions', '0001_initial', '2024-07-28 12:10:38.246373'),
(19, 'core', '0001_initial', '2024-07-28 12:50:10.371170'),
(20, 'taggit', '0001_initial', '2024-07-28 14:36:01.011622'),
(21, 'taggit', '0002_auto_20150616_2121', '2024-07-28 14:36:01.029296'),
(22, 'taggit', '0003_taggeditem_add_unique_index', '2024-07-28 14:36:01.063680'),
(23, 'taggit', '0004_alter_taggeditem_content_type_alter_taggeditem_tag', '2024-07-28 14:36:01.113257'),
(24, 'taggit', '0005_auto_20220424_2025', '2024-07-28 14:36:01.130888'),
(25, 'taggit', '0006_rename_taggeditem_content_type_object_id_taggit_tagg_content_8fc721_idx', '2024-07-28 14:36:01.196358'),
(26, 'posts', '0001_initial', '2024-07-28 14:36:01.245631'),
(27, 'posts', '0002_remove_article_dislikes_remove_article_likes_comment_and_more', '2024-07-28 16:44:24.453307'),
(28, 'posts', '0003_alter_article_dislikes_alter_article_likes', '2024-07-28 16:52:59.538690'),
(29, 'posts', '0004_alter_article_dislikes_alter_article_likes', '2024-07-28 17:12:36.331560'),
(30, 'accounts', '0001_initial', '2024-07-28 18:16:06.051958'),
(31, 'posts', '0005_bookmark', '2024-07-28 21:09:20.620086'),
(32, 'posts', '0006_rename_featured_image_article_image_and_more', '2024-07-28 21:27:47.907557'),
(33, 'posts', '0007_remove_article_bookmarks', '2024-07-28 21:53:15.611612'),
(34, 'accounts', '0002_profile_bookmarks', '2024-07-28 21:53:15.689079'),
(35, 'posts', '0008_article_type', '2024-07-28 22:45:54.889608'),
(36, 'posts', '0009_alter_article_type', '2024-07-28 22:47:09.885237'),
(37, 'newsletter', '0001_initial', '2024-07-29 00:21:35.459383'),
(38, 'newsletter', '0002_remove_subscriber_date_subscribed_and_more', '2024-07-29 00:37:57.095199'),
(39, 'newsletter', '0003_bulkemail', '2024-07-29 03:15:57.753035'),
(40, 'newsletter', '0004_remove_bulkemail_site_settings', '2024-07-29 03:30:50.602781'),
(41, 'accounts', '0003_profile_cover_image', '2024-07-30 10:25:48.647629'),
(42, 'posts', '0010_article_youtube_url', '2024-07-30 15:02:52.445695'),
(43, 'ads', '0001_initial', '2024-08-01 12:23:58.265272'),
(44, 'posts', '0011_articleview', '2024-08-05 09:13:22.271671'),
(45, 'posts', '0012_articleview_referrer_articleview_user_agent_and_more', '2024-08-05 09:59:19.479405'),
(46, 'accounts', '0004_infocontent', '2024-08-05 21:25:30.200229'),
(47, 'posts', '0013_article_file_alter_article_frameworks', '2024-08-11 23:03:14.369746'),
(48, 'posts', '0014_remove_article_file_article_file_url_and_more', '2024-08-11 23:08:59.209163'),
(49, 'newsletter', '0002_subscriber_fullname', '2024-08-17 15:06:52.504413'),
(50, 'core', '0002_sociallink_alter_sitesettings_options_and_more', '2024-08-17 16:11:51.947626');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01h8pg2700gq4kaklxmrg871szefla44', '.eJxVjMsOwiAUBf-FtSFQ3l269xvIBS4WNWBKm2iM_65NutDtmTnzIh7WZfJrx9mXREbCyeF3CxCvWDeQLlDPjcZWl7kEuil0p52eWsLbcXf_AhP06fsWTnHOnclBJGOHmAewqIxlDkLUQwgKjQAlmZY8M5U008jBSSusjRryFu3Ye2nV4-Ne5icZ2fsDZeY-iQ:1sd6aO:v7ikTXhHvBHkx9PXbbUEFml63SdgFEX7RCGDFsoWgKw', '2024-08-25 11:18:08.603463'),
('0stne218nrkpass6372b9m6uschojhqx', '.eJxVjMsOwiAQRf-FtSG8GVy69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlJdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rfWwUopg69JFw8qV4VA1oMImLJTKVnyGq0RzsgqbHHCkcRgQANkh5W9P8mgN0w:1saFZz:rm3acbYgZyBqxjOhbmzciJ0VHyxjKJDKSV6a3-jLc7M', '2024-08-17 14:17:55.674752'),
('36p3j1npa12qazyc00g1loh9h69kmcws', '.eJxVjMsOgjAURP-la9P0AdKydO83NPdRpGpaQyHRGP9dSFjocmbOnLcIsMxjWGqcQmLRCy0Ovx0C3WLeBr5CvhRJJc9TQrkhcl-rPBeO99PO_glGqOP69g2RI8PgO0OkGJ0-OmWGhnDQSNrYto2oPXtn0bBRoK3rnAVqTbPmTVpjrankEJ-PNL1Erz5flVA--g:1sghGg:tDDp7959RKoJDzv8ZTlfIUS7lozNj9KeISqsIc_ZE30', '2024-09-04 09:04:38.552603'),
('4dda1xfjxzkbklostg5y5msn8473gh7w', '.eJxVjMsKwjAQRf8lawlp87JduvcbwsxkaqOSSNOCIv67BLrQ7T3nnrcIsK1z2CovIUUxir4Th98RgW6cG4lXyJciqeR1SSibInda5blEvp929y8wQ53bG7224DVqxd6TNaZj5_oBSYGNvSHURBatVdMUvXLO03AEF9kiMBvdopVrTSUHfj7S8hKj-nwBwKU_zA:1sd3CF:6nInF2YtxjgBrbXlj1Y5CW8UEs8zgOhUx14pDEhaa9w', '2024-08-25 07:40:59.919387'),
('6cenlcrmz7basfle92fyusyxly9qh6zs', '.eJxVjM0OwiAQhN-FsyH8yFI8evcZyMJupWpoUtqT8d2lSQ96m8x837xFxG0tcWu8xInERWgrTr9lwvzkui_0wHqfZZ7rukxJ7og81iZvM_HrerB_BwVb6faQIBhLznmH2lMXe3LgNHtl0Culx8CjRtAZ6ex9GhwwgbE2gAoQxOcL7eg3JA:1saz9D:cZQ0jze4pfqh51c-SA92yI0I0pDi7Ye22Zt29LvcuJM', '2024-08-19 14:57:19.200683'),
('6f5cd46s1impxq4un4fqfsfmyk8ki272', '.eJxVjMsOgjAURP-la9P0AdKydO83NPdRpGpaQyHRGP9dSFjocmbOnLcIsMxjWGqcQmLRCy0Ovx0C3WLeBr5CvhRJJc9TQrkhcl-rPBeO99PO_glGqOP69g2RI8PgO0OkGJ0-OmWGhnDQSNrYto2oPXtn0bBRoK3rnAVqTbPmTVpjrankEJ-PNL1Erz5flVA--g:1sg3R8:4G_uGBd1Ke4k9KjB1HHVYVjXdG4Qol00cnz7nCJG7GM', '2024-09-02 14:32:46.050193'),
('83ceavocp8p2ehm00dkt4euovg1t6ue0', '.eJxVjMsOgjAURP-la9P0AdKydO83NPdRpGpaQyHRGP9dSFjocmbOnLcIsMxjWGqcQmLRCy0Ovx0C3WLeBr5CvhRJJc9TQrkhcl-rPBeO99PO_glGqOP69g2RI8PgO0OkGJ0-OmWGhnDQSNrYto2oPXtn0bBRoK3rnAVqTbPmTVpjrankEJ-PNL1Erz5flVA--g:1sgnqq:u5wgUg4cuA8rjNi7gi_LeNFunvB9Evh9TflrvFC2B7w', '2024-09-04 16:06:24.851360'),
('au91ibm54dkfum3jt8gi5u9cn6qkas9m', '.eJxVjMsOwiAQRf-FtSG8GVy69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlJdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rfWwUopg69JFw8qV4VA1oMImLJTKVnyGq0RzsgqbHHCkcRgQANkh5W9P8mgN0w:1sf9pY:EuN8hBpXiJO9kEg4zHQ8HvAVgQ-vnx-dameVubeKpIs', '2024-08-31 03:10:16.714576'),
('bp5o4ietbmw142fltqmyh06rk9jn1vw5', '.eJxVjM0OwiAQhN-FsyH8yFI8evcZyMJupWpoUtqT8d2lSQ96m8x837xFxG0tcWu8xInERWgrTr9lwvzkui_0wHqfZZ7rukxJ7og81iZvM_HrerB_BwVb6faQIBhLznmH2lMXe3LgNHtl0Culx8CjRtAZ6ex9GhwwgbE2gAoQxOcL7eg3JA:1saz9D:cZQ0jze4pfqh51c-SA92yI0I0pDi7Ye22Zt29LvcuJM', '2024-08-19 14:57:19.417697'),
('c8ru7tnsopieutdvvv5lhpieczv6oyem', '.eJxVjMsOgjAURP-la9P0AdKydO83NPdRpGpaQyHRGP9dSFjocmbOnLcIsMxjWGqcQmLRCy0Ovx0C3WLeBr5CvhRJJc9TQrkhcl-rPBeO99PO_glGqOP69g2RI8PgO0OkGJ0-OmWGhnDQSNrYto2oPXtn0bBRoK3rnAVqTbPmTVpjrankEJ-PNL1Erz5flVA--g:1sfHnH:jS7S3cqgdCEGbDR5UEZ9oL82yEHVJSFMyK58A6zmZwc', '2024-08-31 11:40:27.737154'),
('d0rmh18vu6ok3jkt3ys4xcbxj81qtn8b', '.eJxVjMsOwiAQRf-FtSG8GVy69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlJdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rfWwUopg69JFw8qV4VA1oMImLJTKVnyGq0RzsgqbHHCkcRgQANkh5W9P8mgN0w:1saWYA:Idrf198bg2e-DIf3aXIoLe_jqh5i-VaHpsB2LKQN2sA', '2024-08-18 08:25:10.050290'),
('frcsif2m4dib289v2vokcxuoto9zuzci', 'e30:1sY8VM:O9_S01PlA-F-G1sBQ_SnsL7xw2TenzRtEpbRLejPZg4', '2024-08-11 18:20:24.987068'),
('i07z5f8x6pzehfip6k7eg649h1m9n5rs', '.eJxVjMsOwiAQRf-FtSG8GVy69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlJdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rfWwUopg69JFw8qV4VA1oMImLJTKVnyGq0RzsgqbHHCkcRgQANkh5W9P8mgN0w:1sajUv:dIvxz4b-S2LAKG94X4brVIVFLeld9W7cLD7HQOC-pO0', '2024-08-18 22:14:41.327480'),
('oekkodizeqpbhu10jw32yrctl63z986q', '.eJxVjMsOwiAUBf-FtSFQ3l269xvIBS4WNWBKm2iM_65NutDtmTnzIh7WZfJrx9mXREbCyeF3CxCvWDeQLlDPjcZWl7kEuil0p52eWsLbcXf_AhP06fsWTnHOnclBJGOHmAewqIxlDkLUQwgKjQAlmZY8M5U008jBSSusjRryFu3Ye2nV4-Ne5icZ2fsDZeY-iQ:1sbEYe:q-NoP83UpCKptfjp5zukddFqB_0YR64vC6Y2sXF1JJY', '2024-08-20 07:24:36.334771'),
('pr600e8479jyn12jaxtukmy85tjh04lq', '.eJxVjMsOwiAQRf-FtSG8GVy69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlJdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rfWwUopg69JFw8qV4VA1oMImLJTKVnyGq0RzsgqbHHCkcRgQANkh5W9P8mgN0w:1sb3gl:v2lr2hzTFTYOKBJSSbIvyh2fGOFg-J_Czc8yLacwR2g', '2024-08-19 19:48:15.463467'),
('qk4vtbxnlmfzoochkknohp5d1w4rsoea', '.eJxVjMsOwiAQRf-FtSG8GVy69xvIAINUDU1KuzL-uzbpQrf3nHNfLOK2trgNWuJU2JlJdvrdEuYH9R2UO_bbzPPc12VKfFf4QQe_zoWel8P9O2g42rfWwUopg69JFw8qV4VA1oMImLJTKVnyGq0RzsgqbHHCkcRgQANkh5W9P8mgN0w:1sbUpq:OYvRK54dj6P6Sr_WQltfRqeOF8MsuqflHyKTAeledqI', '2024-08-21 00:47:26.625070'),
('s96qer3v6h7c0j3ke70w6k1g01w4qg2b', '.eJxVjEEOwiAQRe_C2hAGaEtduvcMZJgZpGpoUtqV8e7apAvd_vfef6mI21ri1mSJE6uzskadfseE9JC6E75jvc2a5rouU9K7og_a9HVmeV4O9--gYCvfGgZANELBiEuj62DIxBAEyDpjghXsvQMHefQMHWdLWdj0QBJ8ygzq_QEApThF:1scqci:92JMZ4aJc3Md-mToL2zUpomG0esIRpGaJvDS5-7mkdQ', '2024-08-24 18:15:28.944956'),
('tink6jlp1nzl7xt28n65coovpixf3sh1', '.eJxVjMsOwiAQRf-FtSHAyMul-34DGWCQqoGktCvjv2uTLnR7zzn3xQJuaw3boCXMmV2YUuz0O0ZMD2o7yXdst85Tb-syR74r_KCDTz3T83q4fwcVR_3WRQqUIEl4L8laDVgKRQuenACVwKBzYBUaUBgFQdExZ8zuTCZpLT17fwD8pjgB:1setr4:SvPRjf7YJgpiKzt0srO7Bhyxe1vBEqs25CNBBdL_S74', '2024-08-30 10:06:46.837405'),
('w9k01ngxawbc03grwy5t0bgv0airpfnu', '.eJxVjMsOwiAURP-FtSFwKRZcuvcbyH1QqRpI-lgZ_9026UKXM-fMvFXCdSlpnfOURlEXZdXptyPkZ647kAfWe9Pc6jKNpHdFH3TWtyb5dT3cv4OCc9nWsWMODIKxB2YjFOw5GBg6psESW3DeZ7JRYnAEAgatC31wyB66LavPF_A2N70:1sfKbg:UntY58y-i1hWMhcqzzNcRXiplNcbWVeq6lCuDE7pGeA', '2024-08-31 14:40:40.743579'),
('wabcf8rw5pw568ftqq3y8rrznzbq98wv', '.eJxVjM0OwiAQhN-FsyGw9Ad69O4zkN0FLWrAlDbRGN_dNulBjzPzzfcWHpd59EuNk09BDEKLw29HyLeYtyFcMV-K5JLnKZHcELmvVZ5KiPfjzv4JRqzj-nYNs2UI6HpgVoGs7qyCc8N01sQaTNtG0i44awgCKNTG9tYgt9CseZPWWGsq2cfnI00vMWhQrlPq8wURx0As:1sfa4D:nsKAqPCzJnQLWFUDLnlOsLA2s8h8IF7ljX4v1z5huBc', '2024-09-01 07:11:09.753088');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_bulkemail`
--

CREATE TABLE `newsletter_bulkemail` (
  `id` bigint NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_bulkemail`
--

INSERT INTO `newsletter_bulkemail` (`id`, `subject`, `message`, `created_at`) VALUES
(4, 'Bulk email', 'This is an email sent to all subscribers of the Coder Nova blog. It is a test email, please do no reply this mail.', '2024-08-01 12:06:26.835208'),
(5, 'UI Updates', 'Hello dear subscriber. This is to notify you of our upcoming UI update which is due on 21 August 2024. Thank you.', '2024-08-17 14:41:32.546148');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` bigint NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `subscribed_at` datetime(6) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_subscriber`
--

INSERT INTO `newsletter_subscriber` (`id`, `email`, `subscribed_at`, `fullname`) VALUES
(17, 'uchennamebijay@gmail.com', '2024-08-17 15:07:41.239189', 'Ijeoma JahsWay');

-- --------------------------------------------------------

--
-- Table structure for table `posts_article`
--

CREATE TABLE `posts_article` (
  `id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `excerpt` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `published_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `file_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `reading_time` int UNSIGNED DEFAULT NULL,
  `views` int UNSIGNED NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `references` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `youtube_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author_id` int NOT NULL,
  `category_id` bigint NOT NULL
) ;

--
-- Dumping data for table `posts_article`
--

INSERT INTO `posts_article` (`id`, `title`, `slug`, `type`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `file_url`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `youtube_url`, `author_id`, `category_id`) VALUES
(1, 'Introduction to Django: A Comprehensive Guide', 'introduction-to-django-a-comprehensive-guide', 'article', '<p>Django is a high-level Python web framework that enables rapid development of secure and maintainable websites. It was designed to help developers take applications from concept to completion as quickly as possible. In this guide, we&#39;ll cover the basics of Django, including how to set up your environment, create a new project, and build your first web application.</p>\r\n\r\n<p><strong>Table of Contents</strong></p>\r\n\r\n<ol>\r\n	<li>Setting Up Your Environment</li>\r\n	<li>Creating a New Django Project</li>\r\n	<li>Understanding Django&#39;s Project Structure</li>\r\n	<li>Creating Your First Django App</li>\r\n	<li>Configuring Your Database</li>\r\n	<li>Creating Models and Migrations</li>\r\n	<li>Building Views and Templates</li>\r\n	<li>Handling URLs and Routing</li>\r\n	<li>Working with Forms</li>\r\n	<li>Implementing User Authentication</li>\r\n	<li>Deploying Your Django Application</li>\r\n</ol>\r\n\r\n<h3>1. Setting Up Your Environment</h3>\r\n\r\n<p>Before you start, ensure you have Python installed on your system. Django is compatible with Python 3.6 and later.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\"># Install Django using pip\r\npip install django</code></pre>\r\n\r\n<h3>2. Creating a New Django Project</h3>\r\n\r\n<p>Once Django is installed, you can create a new project using the <code>django-admin</code> command.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\"># Create a new Django project named \'myproject\'\r\ndjango-admin startproject myproject</code></pre>\r\n\r\n<p>Navigate to the project directory:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">cd myproject</code></pre>\r\n\r\n<h3>3. Understanding Django&#39;s Project Structure</h3>\r\n\r\n<p>Your new Django project will have the following structure:</p>\r\n\r\n<pre>\r\n<code class=\"language-markdown\">myproject/\r\n    manage.py\r\n    myproject/\r\n        __init__.py\r\n        settings.py\r\n        urls.py\r\n        wsgi.py</code></pre>\r\n\r\n<ul>\r\n	<li><code>manage.py</code>: A command-line utility for interacting with your project.</li>\r\n	<li><code>settings.py</code>: Configuration for your Django project.</li>\r\n	<li><code>urls.py</code>: URL declarations for your project.</li>\r\n	<li><code>wsgi.py</code>: An entry-point for WSGI-compatible web servers to serve your project.</li>\r\n</ul>\r\n\r\n<h3>4. Creating Your First Django App</h3>\r\n\r\n<p>Django projects are composed of multiple apps, which are modules that handle specific functionalities. Let&#39;s create a simple app called &#39;blog&#39;.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\"># Create a new app named \'blog\'\r\npython manage.py startapp blog</code></pre>\r\n\r\n<p>Add the &#39;blog&#39; app to your <code>INSTALLED_APPS</code> in <code>settings.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">INSTALLED_APPS = [\r\n    ...\r\n    \'blog\',\r\n]</code></pre>\r\n\r\n<h3>5. Configuring Your Database</h3>\r\n\r\n<p>Django supports several databases, including SQLite, PostgreSQL, MySQL, and Oracle. By default, Django uses SQLite.</p>\r\n\r\n<p>In <code>settings.py</code>, configure your database settings:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">DATABASES = {\r\n    \'default\': {\r\n        \'ENGINE\': \'django.db.backends.sqlite3\',\r\n        \'NAME\': BASE_DIR / \'db.sqlite3\',\r\n    }\r\n}</code></pre>\r\n\r\n<h3>6. Creating Models and Migrations</h3>\r\n\r\n<p>Models are Python classes that represent database tables. Let&#39;s create a simple <code>Post</code> model for our blog app.</p>\r\n\r\n<p>In <code>blog/models.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.db import models\r\n\r\nclass Post(models.Model):\r\n    title = models.CharField(max_length=200)\r\n    content = models.TextField()\r\n    published_date = models.DateTimeField(auto_now_add=True)\r\n\r\n    def __str__(self):\r\n        return self.title</code></pre>\r\n\r\n<p>Generate and apply migrations to create the database table:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py makemigrations</code></pre>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py migrate</code></pre>\r\n\r\n<h3>7. Building Views and Templates</h3>\r\n\r\n<p>Views handle the logic for your application and return responses to the user. Templates define how the data is presented.</p>\r\n\r\n<p>In <code>blog/views.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.shortcuts import render\r\nfrom .models import Post\r\n\r\ndef home(request):\r\n    posts = Post.objects.all()\r\n    return render(request, \'blog/home.html\', {\'posts\': posts})</code></pre>\r\n\r\n<p>Create a template for the home view in <code>blog/templates/blog/home.html</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;Blog Home&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Blog Posts&lt;/h1&gt;\r\n    {% for post in posts %}\r\n        &lt;h2&gt;{{ post.title }}&lt;/h2&gt;\r\n        &lt;p&gt;{{ post.content }}&lt;/p&gt;\r\n        &lt;p&gt;&lt;em&gt;Published on: {{ post.published_date }}&lt;/em&gt;&lt;/p&gt;\r\n    {% endfor %}\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<h3>8. Handling URLs and Routing</h3>\r\n\r\n<p>Map URLs to views in <code>blog/urls.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.urls import path\r\nfrom . import views\r\n\r\nurlpatterns = [\r\n    path(\'\', views.home, name=\'home\'),\r\n]</code></pre>\r\n\r\n<p>Include the <code>blog</code> app&#39;s URLs in the project&rsquo;s main <code>urls.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.contrib import admin\r\nfrom django.urls import include, path\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'\', include(\'blog.urls\')),\r\n]</code></pre>\r\n\r\n<h3>9. Working with Forms</h3>\r\n\r\n<p>Django simplifies form handling with its forms framework. Let&#39;s create a form for adding new posts.</p>\r\n\r\n<p>In <code>blog/forms.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django import forms\r\nfrom .models import Post\r\n\r\nclass PostForm(forms.ModelForm):\r\n    class Meta:\r\n        model = Post\r\n        fields = [\'title\', \'content\']</code></pre>\r\n\r\n<p>Create a view to handle form submissions in <code>blog/views.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.shortcuts import redirect\r\nfrom .forms import PostForm\r\n\r\ndef new_post(request):\r\n    if request.method == \'POST\':\r\n        form = PostForm(request.POST)\r\n        if form.is_valid():\r\n            form.save()\r\n            return redirect(\'home\')\r\n    else:\r\n        form = PostForm()\r\n    return render(request, \'blog/new_post.html\', {\'form\': form})</code></pre>\r\n\r\n<p>Add a template for the new post form in <code>blog/templates/blog/new_post.html</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n    &lt;title&gt;New Post&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Create a New Post&lt;/h1&gt;\r\n    &lt;form method=\"post\"&gt;\r\n        {% csrf_token %}\r\n        {{ form.as_p }}\r\n        &lt;button type=\"submit\"&gt;Save&lt;/button&gt;\r\n    &lt;/form&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<h3>10. Implementing User Authentication</h3>\r\n\r\n<p>Django includes an authentication system for handling users. Enable the authentication URLs in the project&rsquo;s main <code>urls.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">urlpatterns = [\r\n    ...\r\n    path(\'accounts/\', include(\'django.contrib.auth.urls\')),\r\n]</code></pre>\r\n\r\n<p>Create a custom signup view and form in <code>blog/views.py</code> and <code>blog/forms.py</code> respectively.</p>\r\n\r\n<h3>11. Deploying Your Django Application</h3>\r\n\r\n<p>When you&#39;re ready to deploy your Django project, you can use various hosting services like Heroku, AWS, or DigitalOcean. Make sure to configure your settings for production, including database settings, static files, and security settings.</p>\r\n\r\n<p><strong>Conclusion</strong></p>\r\n\r\n<p>Django is a powerful framework that streamlines web development with its built-in features and flexibility. This guide covers the basics to get you started, but there&#39;s much more to explore, including advanced features and third-party packages. Happy coding!</p>\r\n\r\n<hr />\r\n<p>By following this guide, you should have a good foundation to build and deploy Django applications. Stay tuned for more in-depth tutorials and tips on leveraging Django for your web development projects.</p>', 'Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. This guide will walk you through the basics of getting started with Django.', 'articles/WhatsApp_Image_2024-07-28_at_15.59.59_640a5b99.jpg', '2024-07-28 15:07:17.650063', '2024-08-05 07:36:27.696140', NULL, 'draft', 10, 0, 'Introduction to Django - Comprehensive Guide for Beginners', 'Learn the basics of Django, a high-level Python web framework, in this comprehensive guide. Ideal for beginners in web development.', 'Django, Python, Web Development, Framework, Tutorial, Beginner Guide', 1, 0, 'https://www.djangoproject.com/start   https://realpython.com/tutorials/django', NULL, 1, 12),
(3, 'Introduction to RESTful APIs with Django REST Framework', 'introduction-to-restful-apis-with-django-rest-framework', 'article', '<div>\r\n<h2>Introduction to RESTful APIs with Django REST Framework</h2>\r\n\r\n<p>Django REST Framework (DRF) is a powerful and flexible toolkit for building Web APIs in Django. It makes it easy to build robust and scalable APIs by providing features such as serialization, authentication, and viewsets.</p>\r\n\r\n<h3>Step 1: Install Django and Django REST Framework</h3>\r\n\r\n<p>First, ensure you have Python and Django installed. Then, install Django REST Framework using pip:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">pip install djangorestframework</code>\r\n    </pre>\r\n\r\n<h3>Step 2: Create a Django Project</h3>\r\n\r\n<p>Create a new Django project by running the following command:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">django-admin startproject myapi</code>\r\n    </pre>\r\n\r\n<h3>Step 3: Create a Django App</h3>\r\n\r\n<p>Navigate to your project directory and create a new app:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">cd myapi\r\npython manage.py startapp blog</code>\r\n    </pre>\r\n\r\n<h3>Step 4: Set Up Your Models</h3>\r\n\r\n<p>Define your models in <code>blog/models.py</code>. For example, you can create a simple <code>Post</code> model:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\">from django.db import models\r\n\r\nclass Post(models.Model):\r\n    title = models.CharField(max_length=255)\r\n    content = models.TextField()\r\n    created_at = models.DateTimeField(auto_now_add=True)\r\n    updated_at = models.DateTimeField(auto_now=True)\r\n\r\n    def __str__(self):\r\n        return self.title</code>\r\n    </pre>\r\n\r\n<h3>Step 5: Create Serializers</h3>\r\n\r\n<p>Serializers define the API representation. Create a serializer for your <code>Post</code> model in <code>blog/serializers.py</code>:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\">from rest_framework import serializers\r\nfrom .models import Post\r\n\r\nclass PostSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model = Post\r\n        fields = \'__all__\'</code>\r\n    </pre>\r\n\r\n<h3>Step 6: Create Views</h3>\r\n\r\n<p>Create API views to handle HTTP requests. Use Django REST Framework&#39;s viewsets to simplify this process. Define your views in <code>blog/views.py</code>:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\">from rest_framework import viewsets\r\nfrom .models import Post\r\nfrom .serializers import PostSerializer\r\n\r\nclass PostViewSet(viewsets.ModelViewSet):\r\n    queryset = Post.objects.all()\r\n    serializer_class = PostSerializer</code>\r\n    </pre>\r\n\r\n<h3>Step 7: Configure URLs</h3>\r\n\r\n<p>Set up your API URLs in <code>blog/urls.py</code> and include them in your project&#39;s <code>urls.py</code>:</p>\r\n\r\n<pre>\r\n        <code class=\"language-python\"># blog/urls.py\r\nfrom django.urls import path, include\r\nfrom rest_framework.routers import DefaultRouter\r\nfrom .views import PostViewSet\r\n\r\nrouter = DefaultRouter()\r\nrouter.register(r\'posts\', PostViewSet)\r\n\r\nurlpatterns = [\r\n    path(\'\', include(router.urls)),\r\n]</code>\r\n    </pre>\r\n\r\n<pre>\r\n        <code class=\"language-python\"># myapi/urls.py\r\nfrom django.contrib import admin\r\nfrom django.urls import path, include\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'api/\', include(\'blog.urls\')),\r\n]</code>\r\n    </pre>\r\n\r\n<h3>Step 8: Run the Development Server</h3>\r\n\r\n<p>Finally, run the development server to see your API in action:</p>\r\n\r\n<pre>\r\n        <code class=\"language-bash\">python manage.py runserver</code>\r\n    </pre>\r\n\r\n<p>Visit <code>http://127.0.0.1:8000/api/posts/</code> in your browser to interact with the API.</p>\r\n\r\n<p>Congratulations! You&#39;ve created a RESTful API using Django REST Framework. From here, you can explore more advanced features like authentication, permissions, and pagination.</p>\r\n</div>', 'Learn how to create a RESTful API using Django REST Framework, a powerful and flexible toolkit for building Web APIs in Django.', 'articles/20240804_215703.jpg', '2024-07-29 00:42:37.203656', '2024-08-06 19:16:20.836658', NULL, 'published', 3, 3, 'Introduction to RESTful APIs with Django REST Framework', 'Learn how to create a RESTful API using Django REST Framework with this step-by-step guide. Build robust and scalable APIs in Django.', 'django, django rest framework, rest api, web development, tutorial, python', 1, 1, '', NULL, 1, 4),
(4, 'Understanding Django\'s ORM: A Beginner\'s Guide', 'understanding-djangos-orm-a-beginners-guide', 'article', '<h2>Introduction</h2>\r\n\r\n<p>When working with Django, one of the most powerful features you&#39;ll encounter is the Object-Relational Mapping (ORM) system. The ORM allows you to interact with your database using Python code instead of writing raw SQL queries. This article will guide you through the basics of Django&#39;s ORM and how to use it effectively.</p>\r\n\r\n<h2>What is an ORM?</h2>\r\n\r\n<p>An ORM, or Object-Relational Mapper, is a programming technique used to convert data between incompatible type systems in object-oriented programming languages. In simple terms, it allows you to work with database records as if they were regular Python objects.</p>\r\n\r\n<h2>Setting Up Models</h2>\r\n\r\n<p>In Django, models are the single, definitive source of information about your data. Each model maps to a single database table. Here&rsquo;s a simple example:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.db import models\r\n\r\nclass Author(models.Model):\r\n    name = models.CharField(max_length=100)\r\n    email = models.EmailField()\r\n\r\nclass Book(models.Model):\r\n    title = models.CharField(max_length=200)\r\n    author = models.ForeignKey(Author, on_delete=models.CASCADE)\r\n    published_date = models.DateField()</code>\r\n</pre>\r\n\r\n<h2>Performing Database Operations</h2>\r\n\r\n<p>Once you have defined your models, Django provides a rich API to create, retrieve, update, and delete records. Here are some examples:</p>\r\n\r\n<ul>\r\n	<li><strong>Creating a record:</strong> <code>author = Author.objects.create(name=&#39;John Doe&#39;, email=&#39;john@example.com&#39;)</code></li>\r\n	<li><strong>Retrieving records:</strong> <code>all_books = Book.objects.all()</code></li>\r\n	<li><strong>Updating a record:</strong> <code>author.name = &#39;Jane Doe&#39;; author.save()</code></li>\r\n	<li><strong>Deleting a record:</strong> <code>author.delete()</code></li>\r\n</ul>\r\n\r\n<h2>QuerySet API</h2>\r\n\r\n<p>Django&rsquo;s QuerySet API provides a way to retrieve data from your database, filter it, and perform various operations. For instance:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># Get all authors\r\nauthors = Author.objects.all()\r\n\r\n# Filter authors by name\r\njohn_doe = Author.objects.filter(name=\'John Doe\')\r\n\r\n# Get a single author by ID\r\nauthor = Author.objects.get(id=1)</code>\r\n</pre>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Django&#39;s ORM is a powerful tool that can simplify your interactions with the database, making your code cleaner and more maintainable. By leveraging models and the QuerySet API, you can perform complex database operations with ease. Happy coding!</p>', 'Learn the basics of Django\'s ORM and how to use it to interact with your database using Python code instead of writing raw SQL queries.', 'articles/20240804_205207.jpg', '2024-07-29 02:08:00.581343', '2024-08-04 21:06:20.155931', NULL, 'published', 10, 5, 'Understanding Django\'s ORM: A Beginner\'s Guide', 'Learn the basics of Django\'s ORM and how to use it effectively to interact with your database in this beginner\'s guide.', 'Django, ORM, Django ORM, tutorial, beginner\'s guide', 1, 1, '', NULL, 1, 9),
(5, 'Exploring Python\'s Asyncio for Concurrent Programming', 'exploring-pythons-asyncio-for-concurrent-programming', 'article', '<h2>Introduction</h2>\r\n\r\n<p>Concurrent programming is essential for building efficient and scalable applications. In Python, the <code>asyncio</code> library provides a powerful framework for writing asynchronous code. This article will explore the basics of <code>asyncio</code> and how it can be used for concurrent programming in Python.</p>\r\n\r\n<h2>What is Asyncio?</h2>\r\n\r\n<p><code>asyncio</code> is a library to write concurrent code using the async/await syntax. It is ideal for I/O-bound and high-level structured network code. It enables you to run multiple operations concurrently and handle asynchronous events without writing complex threading or multiprocessing code.</p>\r\n\r\n<h2>Basic Concepts</h2>\r\n\r\n<p>Before diving into <code>asyncio</code>, it&#39;s important to understand a few basic concepts:</p>\r\n\r\n<ul>\r\n	<li><strong>Event Loop:</strong> The core of <code>asyncio</code>. It runs asynchronous tasks and callbacks, performs network I/O operations, and manages subprocesses.</li>\r\n	<li><strong>Coroutine:</strong> A special type of function that can be paused and resumed, allowing other code to run during the pause.</li>\r\n	<li><strong>Task:</strong> A wrapper for a coroutine that allows it to be executed by the event loop.</li>\r\n</ul>\r\n\r\n<h2>Getting Started with Asyncio</h2>\r\n\r\n<p>Here&rsquo;s a simple example to illustrate the use of <code>asyncio</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">import asyncio\r\n\r\nasync def say_hello():\r\n    print(\"Hello\")\r\n    await asyncio.sleep(1)\r\n    print(\"World\")\r\n\r\nasync def main():\r\n    await asyncio.gather(say_hello(), say_hello(), say_hello())\r\n\r\nasyncio.run(main())</code>\r\n</pre>\r\n\r\n<p>In this example, the <code>say_hello</code> coroutine is called three times concurrently, thanks to <code>asyncio.gather</code>.</p>\r\n\r\n<h2>Real-world Example: Fetching URLs</h2>\r\n\r\n<p>Let&#39;s look at a more practical example: fetching multiple URLs concurrently using <code>asyncio</code> and the <code>aiohttp</code> library:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">import asyncio\r\nimport aiohttp\r\n\r\nasync def fetch(session, url):\r\n    async with session.get(url) as response:\r\n        return await response.text()\r\n\r\nasync def main():\r\n    urls = [\r\n        \"https://www.example.com\",\r\n        \"https://www.python.org\",\r\n        \"https://www.github.com\"\r\n    ]\r\n    async with aiohttp.ClientSession() as session:\r\n        tasks = [fetch(session, url) for url in urls]\r\n        results = await asyncio.gather(*tasks)\r\n        for result in results:\r\n            print(result[:100])  # Print the first 100 characters of each result\r\n\r\nasyncio.run(main())</code>\r\n</pre>\r\n\r\n<p>In this example, the <code>fetch</code> coroutine retrieves the content of each URL concurrently. The <code>aiohttp.ClientSession</code> is used to handle HTTP requests asynchronously.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Using <code>asyncio</code>, you can write concurrent code that is more readable and maintainable compared to traditional threading and multiprocessing approaches. By leveraging the async/await syntax, you can build efficient and scalable applications that handle multiple tasks concurrently. Happy coding!</p>', 'Learn the basics of Python\'s asyncio library for concurrent programming and how to use it for handling asynchronous tasks effectively.', 'articles/20240804_215023.jpg', '2024-07-29 02:13:06.469003', '2024-08-04 21:05:54.812691', NULL, 'published', 10, 8, 'Exploring Python\'s Asyncio for Concurrent Programming', 'Discover how to use Python\'s asyncio library for concurrent programming in this tutorial. Learn the basics and practical examples for handling asynchronous task', 'Python, asyncio, concurrent programming, async/await, tutorial', 1, 1, '', NULL, 1, 10),
(6, 'Introduction to Machine Learning with Scikit-Learn', 'introduction-to-machine-learning-with-scikit-learn', 'article', '<h2>Introduction</h2>\r\n\r\n<p>Machine learning is a rapidly evolving field that allows computers to learn from data and make predictions or decisions. Scikit-Learn is one of the most popular libraries in Python for implementing machine learning algorithms. In this article, we&#39;ll provide an overview of machine learning and show you how to get started with Scikit-Learn.</p>\r\n\r\n<h2>What is Machine Learning?</h2>\r\n\r\n<p>Machine learning is a branch of artificial intelligence that focuses on building systems that can learn from data. It involves training algorithms on data so that they can make accurate predictions or decisions based on new data. Machine learning is used in a wide range of applications, from image and speech recognition to recommendation systems and predictive analytics.</p>\r\n\r\n<h2>Getting Started with Scikit-Learn</h2>\r\n\r\n<p>Scikit-Learn is a powerful and easy-to-use library for machine learning in Python. It provides simple and efficient tools for data mining and data analysis. Let&#39;s start by installing Scikit-Learn:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">pip install scikit-learn</code>\r\n</pre>\r\n\r\n<h2>Loading a Dataset</h2>\r\n\r\n<p>Scikit-Learn comes with several built-in datasets, such as the Iris dataset. Let&#39;s load and explore the Iris dataset:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from sklearn.datasets import load_iris\r\nimport pandas as pd\r\n\r\n# Load the dataset\r\niris = load_iris()\r\ndf = pd.DataFrame(data=iris.data, columns=iris.feature_names)\r\ndf[\'target\'] = iris.target\r\nprint(df.head())</code>\r\n</pre>\r\n\r\n<h2>Training a Machine Learning Model</h2>\r\n\r\n<p>Next, we&#39;ll train a machine learning model to classify the Iris flowers. We&#39;ll use a simple decision tree classifier for this task:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from sklearn.model_selection import train_test_split\r\nfrom sklearn.tree import DecisionTreeClassifier\r\nfrom sklearn.metrics import accuracy_score\r\n\r\n# Split the dataset into training and testing sets\r\nX_train, X_test, y_train, y_test = train_test_split(iris.data, iris.target, test_size=0.3, random_state=42)\r\n\r\n# Initialize the classifier\r\nclf = DecisionTreeClassifier()\r\n\r\n# Train the classifier\r\nclf.fit(X_train, y_train)\r\n\r\n# Make predictions\r\ny_pred = clf.predict(X_test)\r\n\r\n# Calculate the accuracy\r\naccuracy = accuracy_score(y_test, y_pred)\r\nprint(f\'Accuracy: {accuracy * 100:.2f}%\')</code>\r\n</pre>\r\n\r\n<h2>Evaluating the Model</h2>\r\n\r\n<p>It&#39;s important to evaluate the performance of your model to ensure it generalizes well to new data. The accuracy score is one way to evaluate the model, but there are other metrics you can use depending on your specific task, such as precision, recall, and F1 score.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>In this article, we provided a brief introduction to machine learning and showed you how to get started with Scikit-Learn. We covered loading a dataset, training a model, and evaluating its performance. Scikit-Learn is a versatile and powerful library that makes it easy to implement a wide range of machine learning algorithms. Happy coding!</p>', 'Get started with machine learning using Scikit-Learn, a powerful Python library. Learn how to load datasets, train models, and evaluate their performance.', 'articles/20240804_212608.jpg', '2024-07-29 02:23:37.745285', '2024-08-06 19:04:34.064905', NULL, 'published', 10, 5, 'Introduction to Machine Learning with Scikit-Learn', 'Learn the basics of machine learning with Scikit-Learn. This tutorial covers loading datasets, training models, and evaluating performance using Scikit-Learn in', 'machine learning, scikit-learn, python, tutorial, data analysis, decision tree, model evaluation', 1, 1, '', NULL, 1, 11),
(8, 'A Comprehensive Guide to Django Models', 'a-comprehensive-guide-to-django-models', 'article', '<h2>A Comprehensive Guide to Django Models</h2>\r\n\r\n<p>Django models are a powerful way to interact with a relational database. They provide a high-level abstraction for database operations, allowing developers to work with data in Pythonic ways.</p>\r\n\r\n<h3>Understanding the Basics</h3>\r\n\r\n<p>A Django model is a Python class that subclasses <code>django.db.models.Model</code>. Each attribute of the model represents a database field.</p>\r\n\r\n<p>Here&#39;s a simple example:</p>\r\n\r\n<pre>\r\n<code>from django.db import models\r\n\r\nclass Book(models.Model):\r\n    title = models.CharField(max_length=255)\r\n    author = models.CharField(max_length=255)\r\n    published_date = models.DateField()\r\n    isbn = models.CharField(max_length=13, unique=True)\r\n    pages = models.PositiveIntegerField()\r\n\r\n    def __str__(self):\r\n        return self.title\r\n</code></pre>\r\n\r\n<p>In this example:</p>\r\n\r\n<ul>\r\n	<li><code>title</code>, <code>author</code>, and <code>isbn</code> are character fields.</li>\r\n	<li><code>published_date</code> is a date field.</li>\r\n	<li><code>pages</code> is a positive integer field.</li>\r\n</ul>\r\n\r\n<h3>Field Options</h3>\r\n\r\n<p>Django offers a variety of field types and options to customize the database schema:</p>\r\n\r\n<ul>\r\n	<li><code>CharField</code> for short-to-mid-sized strings.</li>\r\n	<li><code>TextField</code> for large text fields.</li>\r\n	<li><code>IntegerField</code>, <code>PositiveIntegerField</code>, <code>FloatField</code>, and <code>DecimalField</code> for numbers.</li>\r\n	<li><code>DateField</code> and <code>DateTimeField</code> for date and time values.</li>\r\n	<li><code>ForeignKey</code>, <code>OneToOneField</code>, and <code>ManyToManyField</code> for relationships.</li>\r\n</ul>\r\n\r\n<p>Here&rsquo;s how you can define relationships:</p>\r\n\r\n<pre>\r\n<code>class Author(models.Model):\r\n    name = models.CharField(max_length=255)\r\n\r\n    def __str__(self):\r\n        return self.name\r\n\r\nclass Book(models.Model):\r\n    title = models.CharField(max_length=255)\r\n    author = models.ForeignKey(Author, on_delete=models.CASCADE)\r\n    published_date = models.DateField()\r\n\r\n    def __str__(self):\r\n        return self.title\r\n</code></pre>\r\n\r\n<h3>Model Methods</h3>\r\n\r\n<p>You can add custom methods to your models. For example, you might want a method that returns the full name of an author:</p>\r\n\r\n<pre>\r\n<code>class Author(models.Model):\r\n    first_name = models.CharField(max_length=30)\r\n    last_name = models.CharField(max_length=30)\r\n\r\n    def full_name(self):\r\n        return f\"{self.first_name} {self.last_name}\"\r\n</code></pre>\r\n\r\n<h3>Admin Interface</h3>\r\n\r\n<p>Django&rsquo;s admin interface is a powerful tool for managing data. To make your model available in the admin interface, you need to register it:</p>\r\n\r\n<pre>\r\n<code>from django.contrib import admin\r\nfrom .models import Book\r\n\r\nadmin.site.register(Book)\r\n</code></pre>\r\n\r\n<p>For more customized admin behavior, you can create a model admin class:</p>\r\n\r\n<pre>\r\n<code>class BookAdmin(admin.ModelAdmin):\r\n    list_display = (\'title\', \'author\', \'published_date\')\r\n    search_fields = (\'title\', \'author__name\')\r\n\r\nadmin.site.register(Book, BookAdmin)\r\n</code></pre>\r\n\r\n<h3>Conclusion</h3>\r\n\r\n<p>Django models provide a powerful and flexible way to interact with your database. By understanding the basics and utilizing the various field types and options, you can create robust and efficient data models for your Django applications.</p>\r\n\r\n<p>Happy coding!</p>', 'This guide explores the fundamentals of Django models, including field types, relationships, and methods, offering a comprehensive understanding for beginners and advanced users alike.', 'articles/20240804_211411.jpg', '2024-07-30 23:00:07.456154', '2024-08-04 21:05:13.255397', NULL, 'published', 10, 4, 'Comprehensive Guide to Django Models', 'Learn the essentials of Django models, including field types, relationships, and methods, to build robust and efficient data models for your Django applications', 'django, models, python, web development, django tutorial', 1, 0, 'https://docs.djangoproject.com/en/stable/\r\nhttps://www.twoscoopspress.com/products/two-scoops-of-django-3-x', NULL, 1, 12);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `type`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `file_url`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `youtube_url`, `author_id`, `category_id`) VALUES
(9, 'Web Dev Fundamentals: HTML Basics', 'web-dev-fundamentals-html-basics', 'article', '<div class=\"max-w-4xl mx-auto\">\r\n<h1><strong>HTML Basics</strong></h1>\r\n\r\n<p>Welcome to the HTML Basics section of Coder Nova! Here, we&#39;ll explore the fundamental concepts of HTML, the backbone of web development. HTML (HyperText Markup Language) is the standard markup language used to create web pages. Let&#39;s dive into the basics together!</p>\r\n\r\n<h2><strong>Structure of an HTML Document</strong></h2>\r\n\r\n<h3>The HTML Skeleton</h3>\r\n\r\n<p>To start, every HTML document has a standard structure known as the HTML skeleton. It&#39;s the foundation upon which we build our web pages. Here&#39;s what it looks like:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;My First Webpage&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Welcome to Coder Nova!&lt;/h1&gt;\r\n    &lt;p&gt;This is my first webpage.&lt;/p&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p>Let&rsquo;s break it down:</p>\r\n\r\n<ul>\r\n	<li><tt><code>&lt;!DOCTYPE html&gt;</code></tt>: This line tells the browser that we are using HTML5.</li>\r\n	<li><code>&lt;html lang=&quot;en&quot;&gt;</code>: The <code>&lt;html&gt;</code> tag is the root element of an HTML page, and the <code>lang</code> attribute specifies the language.</li>\r\n	<li><code>&lt;head&gt;</code>: Contains meta-information about the HTML document, like the character encoding and the title.</li>\r\n	<li><code>&lt;meta charset=&quot;UTF-8&quot;&gt;</code>: Sets the character encoding to UTF-8.</li>\r\n	<li><code>&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;</code>: Ensures proper rendering and touch zooming on mobile devices.</li>\r\n	<li><code>&lt;title&gt;</code>: Sets the title of the webpage, which appears in the browser tab.</li>\r\n	<li><code>&lt;body&gt;</code>: Contains the content of the webpage, such as headings, paragraphs, links, images, and more.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/html-basic-structure.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><strong>Common HTML Tags and Attributes</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>HTML uses tags to define the position, and function of elements within a document. Here is a list of HTML tags along with a brief description of their functions and use cases:</p>\r\n\r\n<h3>Document Structure</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;!DOCTYPE&gt;</code></strong>: Defines the document type and version of HTML.</li>\r\n	<li><strong><code>&lt;html&gt;</code></strong>: Root element of an HTML document.</li>\r\n	<li><strong><code>&lt;head&gt;</code></strong>: Contains metadata, links to scripts and stylesheets.</li>\r\n	<li><strong><code>&lt;title&gt;</code></strong>: Sets the title of the webpage (shown in the browser tab).</li>\r\n	<li><strong><code>&lt;body&gt;</code></strong>: Contains the content of the HTML document.</li>\r\n</ol>\r\n\r\n<h3>Metadata</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;meta&gt;</code></strong>: Provides metadata such as character set, description, keywords.</li>\r\n	<li><strong><code>&lt;link&gt;</code></strong>: Links to external resources like stylesheets.</li>\r\n	<li><strong><code>&lt;style&gt;</code></strong>: Embeds CSS styles within an HTML document.</li>\r\n	<li><strong><code>&lt;script&gt;</code></strong>: Embeds or references JavaScript code.</li>\r\n</ol>\r\n\r\n<h3>Content Sectioning</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;header&gt;</code></strong>: Defines a header for a section or page.</li>\r\n	<li><strong><code>&lt;nav&gt;</code></strong>: Defines navigation links.</li>\r\n	<li><strong><code>&lt;main&gt;</code></strong>: Specifies the main content of the document.</li>\r\n	<li><strong><code>&lt;section&gt;</code></strong>: Defines a section in a document.</li>\r\n	<li><strong><code>&lt;article&gt;</code></strong>: Specifies independent, self-contained content.</li>\r\n	<li><strong><code>&lt;aside&gt;</code></strong>: Defines content aside from the main content.</li>\r\n	<li><strong><code>&lt;footer&gt;</code></strong>: Defines a footer for a section or page.</li>\r\n</ol>\r\n\r\n<h3>Text Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;h1&gt;</code> to <code>&lt;h6&gt;</code></strong>: Define headings from level 1 to 6.</li>\r\n	<li><strong><code>&lt;p&gt;</code></strong>: Defines a paragraph.</li>\r\n	<li><strong><code>&lt;a&gt;</code></strong>: Defines a hyperlink.</li>\r\n	<li><strong><code>&lt;ul&gt;</code></strong>: Defines an unordered list.</li>\r\n	<li><strong><code>&lt;ol&gt;</code></strong>: Defines an ordered list.</li>\r\n	<li><strong><code>&lt;li&gt;</code></strong>: Defines a list item.</li>\r\n	<li><strong><code>&lt;dl&gt;</code></strong>: Defines a description list.</li>\r\n	<li><strong><code>&lt;dt&gt;</code></strong>: Defines a term/name in a description list.</li>\r\n	<li><strong><code>&lt;dd&gt;</code></strong>: Describes a term/name in a description list.</li>\r\n	<li><strong><code>&lt;div&gt;</code></strong>: Defines a division or section.</li>\r\n	<li><strong><code>&lt;span&gt;</code></strong>: Defines a span of text.</li>\r\n</ol>\r\n\r\n<h3>Inline Text Semantics</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;b&gt;</code></strong>: Defines bold text.</li>\r\n	<li><strong><code>&lt;i&gt;</code></strong>: Defines italic text.</li>\r\n	<li><strong><code>&lt;strong&gt;</code></strong>: Defines important text.</li>\r\n	<li><strong><code>&lt;em&gt;</code></strong>: Defines emphasized text.</li>\r\n	<li><strong><code>&lt;mark&gt;</code></strong>: Defines marked/highlighted text.</li>\r\n	<li><strong><code>&lt;small&gt;</code></strong>: Defines smaller text.</li>\r\n	<li><strong><code>&lt;del&gt;</code></strong>: Defines deleted text.</li>\r\n	<li><strong><code>&lt;ins&gt;</code></strong>: Defines inserted text.</li>\r\n	<li><strong><code>&lt;sub&gt;</code></strong>: Defines subscripted text.</li>\r\n	<li><strong><code>&lt;sup&gt;</code></strong>: Defines superscripted text.</li>\r\n	<li><strong><code>&lt;br&gt;</code></strong>: Inserts a line break.</li>\r\n	<li><strong><code>&lt;hr&gt;</code></strong>: Defines a thematic change or break in the content.</li>\r\n</ol>\r\n\r\n<h3>Media Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;img&gt;</code></strong>: Embeds an image.</li>\r\n	<li><strong><code>&lt;audio&gt;</code></strong>: Embeds audio content.</li>\r\n	<li><strong><code>&lt;video&gt;</code></strong>: Embeds video content.</li>\r\n	<li><strong><code>&lt;source&gt;</code></strong>: Specifies multiple media resources.</li>\r\n	<li><strong><code>&lt;track&gt;</code></strong>: Defines text tracks for <code>&lt;video&gt;</code> and <code>&lt;audio&gt;</code> elements.</li>\r\n	<li><strong><code>&lt;picture&gt;</code></strong>: Contains multiple <code>&lt;source&gt;</code> elements for different media types.</li>\r\n</ol>\r\n\r\n<h3>Embedded Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;iframe&gt;</code></strong>: Embeds another HTML page within the current page.</li>\r\n	<li><strong><code>&lt;embed&gt;</code></strong>: Embeds external content or application.</li>\r\n	<li><strong><code>&lt;object&gt;</code></strong>: Embeds an external resource.</li>\r\n	<li><strong><code>&lt;param&gt;</code></strong>: Defines parameters for <code>&lt;object&gt;</code>.</li>\r\n</ol>\r\n\r\n<h3>Form Elements</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;form&gt;</code></strong>: Defines an HTML form for user input.</li>\r\n	<li><strong><code>&lt;input&gt;</code></strong>: Defines an input control.</li>\r\n	<li><strong><code>&lt;textarea&gt;</code></strong>: Defines a multiline text input control.</li>\r\n	<li><strong><code>&lt;button&gt;</code></strong>: Defines a clickable button.</li>\r\n	<li><strong><code>&lt;select&gt;</code></strong>: Defines a drop-down list.</li>\r\n	<li><strong><code>&lt;option&gt;</code></strong>: Defines an option in a drop-down list.</li>\r\n	<li><strong><code>&lt;label&gt;</code></strong>: Defines a label for an input element.</li>\r\n	<li><strong><code>&lt;fieldset&gt;</code></strong>: Groups related elements in a form.</li>\r\n	<li><strong><code>&lt;legend&gt;</code></strong>: Defines a caption for a <code>&lt;fieldset&gt;</code>.</li>\r\n	<li><strong><code>&lt;datalist&gt;</code></strong>: Specifies a list of pre-defined options for an <code>&lt;input&gt;</code> element.</li>\r\n	<li><strong><code>&lt;output&gt;</code></strong>: Represents the result of a calculation.</li>\r\n</ol>\r\n\r\n<h3>Table Content</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;table&gt;</code></strong>: Defines a table.</li>\r\n	<li><strong><code>&lt;caption&gt;</code></strong>: Defines a table caption.</li>\r\n	<li><strong><code>&lt;tr&gt;</code></strong>: Defines a table row.</li>\r\n	<li><strong><code>&lt;th&gt;</code></strong>: Defines a header cell in a table.</li>\r\n	<li><strong><code>&lt;td&gt;</code></strong>: Defines a standard cell in a table.</li>\r\n	<li><strong><code>&lt;thead&gt;</code></strong>: Groups the header content in a table.</li>\r\n	<li><strong><code>&lt;tbody&gt;</code></strong>: Groups the body content in a table.</li>\r\n	<li><strong><code>&lt;tfoot&gt;</code></strong>: Groups the footer content in a table.</li>\r\n	<li><strong><code>&lt;col&gt;</code></strong>: Specifies column properties for each column within a <code>&lt;colgroup&gt;</code>.</li>\r\n	<li><strong><code>&lt;colgroup&gt;</code></strong>: Specifies a group of one or more columns in a table for formatting.</li>\r\n</ol>\r\n\r\n<h3>Scripting</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;script&gt;</code></strong>: Embeds or references executable code.</li>\r\n	<li><strong><code>&lt;noscript&gt;</code></strong>: Defines alternate content for users who do not support client-side scripting.</li>\r\n</ol>\r\n\r\n<h3>Interactive Elements</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;details&gt;</code></strong>: Specifies additional details the user can view or hide.</li>\r\n	<li><strong><code>&lt;summary&gt;</code></strong>: Defines a visible heading for the <code>&lt;details&gt;</code> element.</li>\r\n	<li><strong><code>&lt;dialog&gt;</code></strong>: Defines a dialog box or window.</li>\r\n	<li><strong><code>&lt;menu&gt;</code></strong>: Defines a list/menu of commands.</li>\r\n</ol>\r\n\r\n<h3>Deprecated/Obsolete Elements (Not recommended for use)</h3>\r\n\r\n<ol>\r\n	<li><strong><code>&lt;applet&gt;</code></strong>: Embeds a Java applet.</li>\r\n	<li><strong><code>&lt;basefont&gt;</code></strong>: Sets default font size, color, and face.</li>\r\n	<li><strong><code>&lt;center&gt;</code></strong>: Centers text.</li>\r\n	<li><strong><code>&lt;font&gt;</code></strong>: Specifies the font face, size, and color of text.</li>\r\n	<li><strong><code>&lt;frame&gt;</code></strong>: Defines a window (a frame) in a frameset.</li>\r\n	<li><strong><code>&lt;frameset&gt;</code></strong>: Defines a set of frames.</li>\r\n	<li><strong><code>&lt;noframes&gt;</code></strong>: Provides alternative content for browsers that do not support frames.</li>\r\n</ol>\r\n\r\n<p>This list covers the most common HTML tags and their functions. Each tag serves a specific purpose, allowing web developers to structure and present web content effectively. But don&#39;t be overwhelmed just yet... Like Bruce Lee said.</p>\r\n\r\n<blockquote>\r\n<p>I fear not the man who has practiced 10,000 kicks once, but I fear the man who has practiced one kick 10,000 times.</p>\r\n</blockquote>\r\n\r\n<p>You only need to choose your weapons and master them efficiently. Let&rsquo;s go through some of the most commonly used tags and their attributes.</p>\r\n\r\n<h2>Headings</h2>\r\n\r\n<p>Headings are used to define the titles and subtitles in your content. HTML provides six levels of headings, from <code>&lt;h1&gt;</code> to <code>&lt;h6&gt;</code>, where <code>&lt;h1&gt;</code> is the highest level.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;h1&gt;Welcome to my website!&lt;/h1&gt;\r\n&lt;h2&gt;Welcome to my website!&lt;/h2&gt;\r\n&lt;h3&gt;Welcome to my website!&lt;/h3&gt;\r\n&lt;h4&gt;Welcome to my website!&lt;/h4&gt;\r\n&lt;h5&gt;Welcome to my website!&lt;/h5&gt;\r\n&lt;h6&gt;Welcome to my website!&lt;/h6&gt;</code></pre>\r\n\r\n<h3><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-226.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></h3>\r\n\r\n<h3>Paragraphs and Text</h3>\r\n\r\n<p>Paragraphs are used to define blocks of text. Additionally, HTML provides tags to emphasize text.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;p&gt;This is a paragraph.&lt;/p&gt;\r\n&lt;strong&gt;Bold text&lt;/strong&gt;\r\n&lt;em&gt;Italic text&lt;/em&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;p&gt;</code>: Defines a paragraph.</li>\r\n	<li><code>&lt;strong&gt;</code>: Makes text bold.</li>\r\n	<li><code>&lt;em&gt;</code>: Makes text italic.</li>\r\n</ul>\r\n\r\n<h3>Links and Images</h3>\r\n\r\n<p>Links and images are essential for creating interactive and visually appealing web pages.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n&lt;img src=\"image.jpg\" alt=\"Description of image\"&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;a&gt;</code>: Defines a hyperlink. The <code>href</code> attribute specifies the URL.</li>\r\n	<li><code>&lt;img&gt;</code>: Embeds an image. The <code>src</code> attribute specifies the image source, and <code>alt</code> provides alternative text for the image.</li>\r\n</ul>\r\n\r\n<h3><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-227.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></h3>\r\n\r\n<h3>Lists</h3>\r\n\r\n<p>Lists are used to group related items. There are two types of lists: unordered lists and ordered lists.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;ul&gt;\r\n    &lt;li&gt;Item 1&lt;/li&gt;\r\n    &lt;li&gt;Item 2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n    \r\n&lt;ol&gt;\r\n    &lt;li&gt;First item&lt;/li&gt;\r\n    &lt;li&gt;Second item&lt;/li&gt;\r\n&lt;/ol&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;ul&gt;</code>: Defines an unordered (bulleted) list.</li>\r\n	<li><code>&lt;ol&gt;</code>: Defines an ordered (numbered) list.</li>\r\n	<li><code>&lt;li&gt;</code>: Defines a list item</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-229.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h3>Tables</h3>\r\n\r\n<p>Tables are used to display data in a tabular format.</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;table&gt;\r\n    &lt;tr&gt;\r\n        &lt;th&gt;Header 1&lt;/th&gt;\r\n        &lt;th&gt;Header 2&lt;/th&gt;\r\n    &lt;/tr&gt;\r\n    &lt;tr&gt;\r\n        &lt;td&gt;Cell 1&lt;/td&gt;\r\n        &lt;td&gt;Cell 2&lt;/td&gt;\r\n    &lt;/tr&gt;\r\n\r\n&lt;/table&gt;</code></pre>\r\n\r\n<ul>\r\n	<li><code>&lt;table&gt;</code>: Defines a table.</li>\r\n	<li><code>&lt;tr&gt;</code>: Defines a table row.</li>\r\n	<li><code>&lt;th&gt;</code>: Defines a table header cell.</li>\r\n	<li><code>&lt;td&gt;</code>: Defines a table data cell.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-230.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><strong>Creating a Simple Webpage</strong></h2>\r\n\r\n<p>Now that we&#39;ve covered the basics, let&#39;s create a simple webpage together. Follow these steps:</p>\r\n\r\n<h3>Step-by-Step Guide</h3>\r\n\r\n<h4>1. Set Up the Document Structure</h4>\r\n\r\n<p>Start with the HTML skeleton:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;My Simple Webpage&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<h4>2. Add Content to the Body</h4>\r\n\r\n<p>Add a heading and a paragraph:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h4>3. Insert a Link and an Image</h4>\r\n\r\n<p>Add a hyperlink and an image:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" alt=\"Example image\"&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h4>4. Create a List</h4>\r\n\r\n<p>Add an unordered list:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" alt=\"Example image\"&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;First item&lt;/li&gt;\r\n        &lt;li&gt;Second item&lt;/li&gt;\r\n        &lt;li&gt;Third item&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h4>5. Add a Table</h4>\r\n\r\n<p>Insert a simple table:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" alt=\"Example image\"&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;First item&lt;/li&gt;\r\n        &lt;li&gt;Second item&lt;/li&gt;\r\n        &lt;li&gt;Third item&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n    &lt;table&gt;\r\n        &lt;tr&gt;\r\n            &lt;th&gt;Header 1&lt;/th&gt;\r\n            &lt;th&gt;Header 2&lt;/th&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr&gt;\r\n            &lt;td&gt;Cell 1&lt;/td&gt;\r\n            &lt;td&gt;Cell 2&lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/table&gt;\r\n&lt;/body&gt;</code></pre>\r\n\r\n<h3>Final Code</h3>\r\n\r\n<p>Here&#39;s the complete HTML code for our simple webpage:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n    &lt;meta charset=\"UTF-8\"&gt;\r\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n    &lt;title&gt;My Simple Webpage&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n    &lt;h1&gt;Welcome to My Simple Webpage&lt;/h1&gt;\r\n    &lt;p&gt;This is a paragraph describing my webpage.&lt;/p&gt;\r\n    &lt;a href=\"https://www.example.com\"&gt;Visit Example&lt;/a&gt;\r\n    &lt;img src=\"image.jpg\" height=\"200\" alt=\"Example image\"&gt;\r\n    &lt;ul&gt;\r\n        &lt;li&gt;First item&lt;/li&gt;\r\n        &lt;li&gt;Second item&lt;/li&gt;\r\n        &lt;li&gt;Third item&lt;/li&gt;\r\n    &lt;/ul&gt;\r\n    &lt;table&gt;\r\n        &lt;tr&gt;\r\n            &lt;th&gt;Header 1&lt;/th&gt;\r\n            &lt;th&gt;Header 2&lt;/th&gt;\r\n        &lt;/tr&gt;\r\n        &lt;tr&gt;\r\n            &lt;td&gt;Cell 1&lt;/td&gt;\r\n            &lt;td&gt;Cell 2&lt;/td&gt;\r\n        &lt;/tr&gt;\r\n    &lt;/table&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;</code></pre>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-231.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><strong>Conclusion</strong></h2>\r\n\r\n<p>In this section, we&#39;ve covered the basics of HTML, including the structure of an HTML document, common tags and attributes, and how to create a simple webpage. With this foundation, you&#39;re ready to move on to CSS Basics, where we&#39;ll learn how to style our webpage and make it visually appealing. Stay tuned!</p>\r\n\r\n<p>Feel free to experiment with different tags and attributes to see how they change your webpage!</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'Learn the basics of HTML in this Web Development tutorial for beginners. Get familiar with different tags and how to use and place then to structure your ideal website', 'articles/Html_baics.jpg', '2024-08-01 09:47:47.571952', '2024-08-06 18:55:03.605402', NULL, 'published', 15, 19, 'Learn HTML Basics A Beginner\'s Guide to Building Websites', 'Get started with HTML basics and learn how to build a website from scratch. Understand HTML structure, tags, and attributes with our easy-to-follow guide.', 'HTML basics, learn HTML, HTML tutorial, HTML structure, HTML tags, HTML attributes, web development, beginner\'s guide, HTML basics for beginners', 1, 1, '', NULL, 1, 12),
(10, 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 'getting-started-with-python-programming-a-comprehensive-guide-for-beginners', 'article', '<p>Python, one of the most popular programming languages today, is known for its simplicity and versatility. In fact, it is so versatile that it is widely applied in fields like web development, data science, artificial intelligence, and automation, Python is perfect for newbies in programming, and this comprehensive guide is meant to walk you through the basics and help you build a strong foundation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Why Python?</h2>\r\n\r\n<p>Before we start, let&#39;s understand why Python stands out:</p>\r\n\r\n<ol>\r\n	<li><strong>Easy to Learn and Use</strong>: Python&#39;s syntax is clean and straightforward making it an excellent choice for beginners. The synthax is basically written and read like plane English, and that makes it easier for beginners on catch on pretty quickly.</li>\r\n	<li><strong>Versatile</strong>: Like I&#39;ve mentioned before, Python is used in various domains, including web development, data analysis, artificial intelligence, scientific computing, and more. Its extensive libraries and frameworks support a wide range of fields and applications.</li>\r\n	<li><strong>Community Support</strong>: Python has a vast and active community. This means that many developers around the world build packages that are useful in any and every aspect of development you can think of, and if you could think of one where Python hasn&#39;t been applied yet, then it&#39;s only a matter of time before someone plugs that hole, it&#39;s exciting knowing that you&#39;ll have access to numerous resources, tutorials like this one, and forums to help you solve problems and learn new skills.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Requirements</h2>\r\n\r\n<p>To learn python, you&#39;ll need 240 IQ, a minimum of 50k in your account, and all the time you could squeezes out of your day... Just kidding 😂, you only need a PC and internet connection. Easy right? Now let&#39;s jump into it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Setting Up Python</h2>\r\n\r\n<h3>Installation</h3>\r\n\r\n<p>First, you&#39;ll need to install Python on your computer. Python is available for all major operating systems, including Windows, macOS, and Linux.</p>\r\n\r\n<ol>\r\n	<li><strong>Windows</strong>: Download the installer from the <a href=\"https://www.python.org/downloads/\" rel=\"noreferrer\" target=\"_new\">official Python website</a>. Run the installer and follow the prompts (Remember to check the box that says &quot;Add Python to PATH.&quot;).</li>\r\n	<li><strong>macOS</strong>: macOS comes with Python pre-installed, but it&#39;s usually an older version. Download the latest version from the <a href=\"https://www.python.org/downloads/\" rel=\"noreferrer\" target=\"_new\">official Python website</a>. Open the downloaded file and follow the installation instructions.</li>\r\n	<li><strong>Linux</strong>: Most Linux distributions come with Python pre-installed. You can check the version by opening a terminal and typing <code>python3 --version</code>. If you need to install or update Python, use your package manager. For example, on Ubuntu, you can use <code>sudo apt-get install python3</code>.</li>\r\n</ol>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/media/media/2024/08/01/screenshot-233.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /><span style=\"font-size:10px\">Official Python Website</span></p>\r\n\r\n<h3>Integrated Development Environment (IDE)</h3>\r\n\r\n<p>An IDE can make your coding experience more pleasant and efficient, otherwise you could just run your code through your systems text editor. It&#39;s boring, but hey, it still works. The popular IDE&#39;s are:</p>\r\n\r\n<ul>\r\n	<li><strong>PyCharm</strong>: A powerful IDE with a rich feature set, Its built specifically for python development and has no dedicated terminal, so you can&#39;t run commands directly from PyCharm.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/01/screenshot-234.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Visual Studio Code</strong>: A lightweight, customizable editor with excellent Python support. It has built in terminal, version control support, Jupyter notebook support, and lots of extensions for various programming languages, code beautifier and name it. They&#39;d probably have extensions for your hopes and dreams... I don&#39;t know, look it up. 😅</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/01/screenshot-235.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Jupyter Notebook</strong>: Ideal for data analysis and scientific computing, allowing you to run code in an interactive notebook format.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/01/featured_hub1daa031c2af6888ff37bd93eb033a1a_71549_720x0_resize_lanczos_3.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>Not sure which one to go with? That&#39;s fine, as a beginner, I&#39;d advise you go with Visual Studio Code. It&#39;s very functional, user friendly and super easy to set up. And the best part is, you have extended support for whichever field or programming language you want to dive into.</p>\r\n\r\n<h2>Writing Your First Python Program</h2>\r\n\r\n<p>Now that you have Python installed and your IDE set up, it&#39;s time to write some code. Open your IDE and create a new file. You can name it whatever you like, but let&#39;s start with &quot;<code>hello.py</code>&quot;. (The &#39;.py&#39; extension is important cuz that&#39;s how your system knows it&#39;s a python file. ) In this file, type the following code:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">print(\"Hello, World!\")</code></pre>\r\n\r\n<p>Save the file and run it (You could activate the auto save feature in VsCode by clicking the &#39;file&#39; dropdown, and selecting Auto Save. When you&#39;re done, there should be a &quot;Run&quot; button, icon or option, click it to run your code. You can use VsCode terminal, but if you&#39;re using your systems terminal, whichever, navigate to the directory where your file is saved and type:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">python3 hello.py\r\n\r\n# Or py hello.py</code></pre>\r\n\r\n<p>You should see the output:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">Hello, World!</code></pre>\r\n\r\n<p>Congratulations! You&#39;ve just written and executed Python program. That&#39;s it. You&#39;re ready. Apply for jobs and conquer the corporate world. I mean it, go, you&#39;re done.</p>\r\n\r\n<p>I&#39;m joking again, c&#39;mon, can&#39;t you take a joke? 😁 You still have allot more to learn if you really want to join the moving train, but don&#39;t worry, we&#39;ll take it one line of code at a time. Now lets move on. Try running the examples as we go along, so you see the results.</p>\r\n\r\n<h2>Understanding Basic Concepts</h2>\r\n\r\n<h3>Variables and Data Types</h3>\r\n\r\n<p>Variables are used to store data. Python supports various data types, including integers, floats, strings, and booleans. Think of variables as names given to specific data tpes or entire lines of logic. We&#39;ll get to that in a bit, Let&#39;s look into the various data types in Python.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># Integer (Simply a number without decimal points)\r\nx = 5\r\nprint(x)\r\n\r\n# Float (A number with decimal points)\r\ny = 3.14\r\nprint(y)\r\n\r\n# String (An alphabet, a text an entire sentence, or basically anything. As long as it is enclosed in quotes)\r\nname = \"Alice\"\r\nprint(name)\r\n\r\n# Boolean (Ah, the one and zero. Yes or No, Black or White. \"True or False\")\r\nis_student = True\r\nprint(is_student)</code></pre>\r\n\r\n<h3>Lists</h3>\r\n\r\n<p>Lists are used to store multiple items in a single variable. They are ordered and mutable (This means they can be changed). Hey, don&#39;t get intimated by these little terminologies, when you start coding python, you&#39;ll start using some of them yourself.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">fruits = [\"apple\", \"banana\", \"cherry\"] # (Storing the list of fruits in a variable \'fruits\')\r\nprint(fruits)\r\n\r\n# Accessing an element in the list\r\nprint(fruits[0])  # apple\r\n# (This is called indexing, we\'ll get to that later)\r\n\r\n# Adding an element to the list\r\nfruits.append(\"orange\")\r\nprint(fruits)\r\n\r\n# Removing an element from the list\r\nfruits.remove(\"banana\")\r\nprint(fruits)</code></pre>\r\n\r\n<h3>Dictionaries</h3>\r\n\r\n<p>Dictionaries store data in key-value pairs, you set a key, then you give that key a value. They are unordered and mutable. (Remember this term?)</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">person = {\r\n    \"name\": \"Alice\",\r\n    \"age\": 25,\r\n    \"city\": \"New York\"\r\n}\r\nprint(person)\r\n\r\n# Accessing values\r\nprint(person[\"name\"])  # Alice\r\n\r\n# Adding key-value pairs\r\nperson[\"email\"] = \"alice@example.com\"\r\nprint(person)\r\n\r\n# Removing key-value pairs\r\ndel person[\"age\"]\r\nprint(person)</code></pre>\r\n\r\n<h3>Loops</h3>\r\n\r\n<p>Loops allow you to execute a block of code repeatedly.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># For loop\r\nfor i in range(5):\r\n    print(i)\r\n\r\n# This block of code will \'i\' for whatever number of units are in the number 5\r\n\r\n\r\n# While loop\r\ncount = 0\r\nwhile count &lt; 5:\r\n    print(count)\r\n    count += 1 # A short way of saying \"Keep adding one to the present result\"\r\n\r\n# This block of code will keep displaying the word \'count\' until the value of count reaches five\r\n\r\n</code></pre>\r\n\r\n<h3>Functions</h3>\r\n\r\n<p>Functions are blocks of code that perform a specific task. They help make your code more modular and reusable. Meaning you can declare a function that performs a specific task and call it later in your code whenever you want to perform that task.</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># Define a function\r\ndef greet(name):\r\n    print(f\"Hello, {name}!\")\r\n\r\n\r\n# Call it later when you want to greet Alice and Bob\r\ngreet(\"Alice\")\r\ngreet(\"Bob\")\r\n</code></pre>\r\n\r\n<h2>Next Steps</h2>\r\n\r\n<h4>Practice, Practice, Practice</h4>\r\n\r\n<p>Keep on coding until you&#39;re comfortable with the basics.</p>\r\n\r\n<p>The best way to learn programming is by doing. Now i know you already have some exciting things you want to try with what you&#39;ve learned so far. Well go ahead. Don&#39;t be scared if you run into any error, just start over. The more you practice, the more you&#39;ll get comfortable with writing eack line of code.</p>\r\n\r\n<h3>Join a Community</h3>\r\n\r\n<p>Engage with the Python community through forums, social media, and local meetups. Sites like Stack Overflow, Reddit, and Python.org have active communities where you can ask questions, share knowledge, and collaborate with others.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Python is a powerful and beginner-friendly programming language that opens up a world of possibilities. By following this guide and practicing regularly, you&#39;ll be well on your way to becoming proficient in Python. Leave a comment to share insights or ask whatever questions you might have on the topic. We&#39;ll meet again later to cover more advanced topics in Python programming.&nbsp; Happy coding!</p>', 'Python is one of the most popular programming languages today, renowned for its simplicity and versatility. This comprehensive guide will walk you through the basics of Python programming, helping you build a strong foundation for a successful coding journey. Whether you\'re a complete novice or looking to brush up on your skills, this article provides everything you need to get started with confidence.', 'articles/Getting_Started_with_Python_Programming.jpeg', '2024-08-01 19:43:42.245216', '2024-08-06 18:52:40.771447', NULL, 'published', 20, 50, 'Getting Started with Python Programming: A Comprehensive Guide for Beginners', 'Discover the essentials of Python programming with our comprehensive guide for beginners. Start your programming journey with confidence today!', 'Python programming, learn Python, Python for beginners, Python tutorial, introduction to Python, Python basics, coding in Python, beginner programming guide, Python setup, Python development', 1, 1, '', NULL, 1, 10);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `type`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `file_url`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `youtube_url`, `author_id`, `category_id`) VALUES
(11, 'Top 10 JavaScript Frameworks for Modern Web Development', 'top-10-javascript-frameworks-for-modern-web-development', 'article', '<p>JavaScript, A powerful programming language widely used for making website frontend components lively and dynamic. but unlike most newbies to web development might think, it&#39;s reach doesn&#39;t end there, JavaScript&#39;s prowess also extends to backend functionality as well, with a wide verity of frameworks built to help developers assimilate all areas of web development, be it frontend, backend, small or large scale web applications, 2d and 3d web interface creation and design, API integration and many more. In no particular order, we&#39;re going to examine 10 JavaScript frameworks built with love and consideration for all&nbsp; JS enthusiasts in the web development industry.&nbsp;</p>\r\n\r\n<p>We&#39;re going to discuss a number of subheadings under each framework to help you get a good grasp on the it.&nbsp;</p>\r\n\r\n<p>Here are some areas we would discuss under each framework:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Overview and Key Features</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Use Cases</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Learning Curve</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Performance and Scalability</strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Now that you know what to expect, lets get us started.</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">1.</span></span></span> <strong>React</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>React</strong> is a powerful JavaScript library that has revolutionized the way we build user interfaces (UIs). Created by Facebook, it has become a cornerstone of modern web development, particularly for crafting dynamic and interactive single-page applications (SPAs).</p>\r\n\r\n<p>At its core, React excels at rendering complex UIs efficiently. Unlike traditional web development where the entire page is reloaded with every change, React employs a <strong>virtual DOM</strong>. This is a JavaScript representation of the actual DOM (Document Object Model), the structure that represents your HTML page. Whenever data changes, React updates the virtual DOM and then efficiently calculates the minimal set of changes required to update the real DOM. This optimization dramatically improves performance and user experience.</p>\r\n\r\n<p>Another key strength of React is its <strong>component-based architecture</strong>. Components are reusable pieces of code that encapsulate specific UI elements and their logic. Think of them as building blocks; you can combine and nest components to create intricate UIs. This approach promotes code reusability, modularity, and maintainability, making it easier to manage large-scale applications.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Virtual DOM</li>\r\n	<li>JSX syntax</li>\r\n	<li>Component-based architecture</li>\r\n	<li>Unidirectional data flow</li>\r\n	<li>Extensive ecosystem (e.g., React Router, Redux)</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>React is ideal for building dynamic, high-performance web applications. It&rsquo;s commonly used for single-page applications (SPAs) and mobile apps (using React Native). Major companies like Facebook, Instagram, Airbnb, and Netflix use React in their tech stacks, showcasing its robustness and scalability.</p>\r\n\r\n<p>Examples of projects suited for React:</p>\r\n\r\n<ul>\r\n	<li>Social media platforms</li>\r\n	<li>E-commerce sites</li>\r\n	<li>Content management systems</li>\r\n	<li>Dashboards and data visualization tools</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>React has a relatively gentle learning curve for developers familiar with JavaScript. Its ecosystem is well-documented, with a wealth of tutorials, guides, and courses available. The React community is large and active, providing extensive support through forums, blogs, and open-source contributions.</p>\r\n\r\n<p>Resources for learning React:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://react.dev/learn\" target=\"_blank\">Official React documentation</a></li>\r\n	<li>Online courses (e.g., Udemy, Coursera, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Stack Overflow, Reddit)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>React&#39;s virtual DOM significantly boosts performance by minimizing costly DOM manipulations. This makes it suitable for applications that require high performance and responsiveness. React&rsquo;s component-based architecture also aids in scalability, allowing developers to build and maintain large applications more efficiently.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use React&rsquo;s built-in tools like React Profiler</li>\r\n	<li>Implement code-splitting and lazy loading</li>\r\n	<li>Optimize component rendering with PureComponent or React.memo</li>\r\n</ul>\r\n\r\n<p>Sample website built with React js.</p>\r\n\r\n<p><a href=\"https://www.cavai.com/\" target=\"_blank\">Cavai.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/634036c8ce22c549520238.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">2.</span></span></span> <strong>Angular</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Angular</strong> is a robust and full-featured JavaScript framework developed and maintained by Google. Unlike React, which primarily focuses on the view layer, Angular offers a comprehensive solution for building complex web applications from the ground up. It provides a structured approach, incorporating tools and libraries to handle various aspects of development, such as routing, form management, and HTTP communication.</p>\r\n\r\n<p>At its core, Angular also adopts a <strong>component-based architecture</strong> similar to React, enabling you to break down your application into reusable building blocks. However, Angular goes beyond this by introducing concepts like <strong>dependency injection</strong> and leveraging <strong>RxJS</strong> for reactive programming. Dependency injection simplifies managing dependencies within components, while RxJS allows you to handle asynchronous data streams and events in a declarative and observable manner.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Two-way data binding</li>\r\n	<li>Dependency injection</li>\r\n	<li>RxJS for reactive programming</li>\r\n	<li>TypeScript support</li>\r\n	<li>Angular CLI for streamlined development</li>\r\n	<li>Built-in routing and form validation</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Angular is well-suited for large-scale enterprise applications due to its robust architecture and powerful features. It is often used for developing complex, data-intensive applications that require real-time updates and extensive user interactions. Companies like Google, Microsoft, and IBM leverage Angular for various projects.</p>\r\n\r\n<p>Examples of projects suited for Angular:</p>\r\n\r\n<ul>\r\n	<li>Enterprise resource planning (ERP) systems</li>\r\n	<li>Customer relationship management (CRM) systems</li>\r\n	<li>E-commerce platforms</li>\r\n	<li>Progressive Web Apps (PWAs)</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Angular has a steeper learning curve compared to other frameworks like React or Vue.js, mainly due to its extensive features and reliance on TypeScript. However, the comprehensive official documentation and abundant online resources make it accessible to determined learners. The Angular community is also quite active, offering ample support and sharing best practices.</p>\r\n\r\n<p>Resources for learning Angular:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://v17.angular.io/docs\" target=\"_blank\">Official Angular documentation</a></li>\r\n	<li>Online courses (e.g., Pluralsight, Udemy, Angular University)</li>\r\n	<li>Community forums and discussion groups (e.g., Angular Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Angular&rsquo;s performance is generally excellent, thanks to features like Ahead-of-Time (AOT) compilation, which compiles the application during the build process, reducing runtime overhead. The framework also supports lazy loading, which helps improve load times by loading only the necessary modules when needed. Angular&rsquo;s modular structure aids in scaling applications efficiently.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Utilize AOT compilation</li>\r\n	<li>Implement lazy loading for modules</li>\r\n	<li>Use OnPush change detection strategy for improved performance</li>\r\n	<li>Optimize template expressions to avoid unnecessary computations</li>\r\n</ul>\r\n\r\n<p>Sample website built with Angular:</p>\r\n\r\n<p><a href=\"https://webflow.com/ai?utm_source=awwwards&amp;utm_medium=referral&amp;utm_campaign=partnerships&amp;utm_content=lists\" target=\"_blank\">Webflow.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/6699f7aa134ac208633981.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">3.</span></span></span> <strong>Vue.js</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Vue.js</strong> is a progressive JavaScript framework that has gained significant popularity for its flexibility and ease of use. Unlike Angular, which offers a comprehensive solution, Vue takes a more modular approach, allowing developers to adopt it incrementally based on project needs. This means you can start small by using Vue for specific UI components and gradually expand its usage as your application grows.</p>\r\n\r\n<p>Vue&#39;s core library focuses on the view layer, making it efficient for building user interfaces. It incorporates a component-based architecture, similar to React and Angular, to promote code reusability and maintainability. However, Vue distinguishes itself with its simplicity and gentle learning curve. Its syntax is often described as being closer to vanilla JavaScript, making it accessible to developers with varying experience levels.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Reactive data binding</li>\r\n	<li>Component-based architecture</li>\r\n	<li>Virtual DOM</li>\r\n	<li>Directives for extending HTML capabilities</li>\r\n	<li>Vue CLI for project scaffolding and tooling</li>\r\n	<li>Single-file components (SFCs) with scoped styles</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Vue.js is highly versatile and can be used for various types of applications, from simple single-page applications (SPAs) to complex enterprise systems. It is particularly popular for its ease of integration into existing projects and its gentle learning curve, making it a favorite among both beginners and experienced developers. Companies like Alibaba, Xiaomi, and GitLab use Vue.js in their projects.</p>\r\n\r\n<p>Examples of projects suited for Vue.js:</p>\r\n\r\n<ul>\r\n	<li>SPAs and PWAs</li>\r\n	<li>Interactive web interfaces</li>\r\n	<li>E-commerce platforms</li>\r\n	<li>Content management systems</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Vue.js is often praised for its gentle learning curve, especially when compared to Angular. Its simplicity and clear documentation make it accessible for developers of all skill levels. The Vue.js community is active and supportive, with numerous tutorials, guides, and resources available online.</p>\r\n\r\n<p>Resources for learning Vue.js:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://vuejs.org/guide/introduction.html\" target=\"_blank\">Official Vue.js documentation</a></li>\r\n	<li>Online courses (e.g., Vue Mastery, Udemy, Scrimba)</li>\r\n	<li>Community forums and discussion groups (e.g., Vue Land Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Vue.js offers excellent performance due to its efficient reactivity system and virtual DOM. The framework is designed to be lightweight and fast, making it suitable for both small and large-scale applications. Vue&#39;s modular architecture allows developers to scale applications efficiently by organizing the codebase into reusable components.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use the Vue Devtools for performance monitoring</li>\r\n	<li>Implement lazy loading for components and routes</li>\r\n	<li>Optimize component reactivity with computed properties and watchers</li>\r\n	<li>Minimize the use of inline styles and bindings</li>\r\n</ul>\r\n\r\n<p>Sample website built with Vue JS&nbsp;</p>\r\n\r\n<p><a href=\"https://www.poool.cc/\" target=\"_blank\">Poool.cc</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/6322e48009284971959838.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">4.</span></span></span> <strong>Svelte</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Svelte</strong> represents a fresh approach to building user interfaces. Unlike its contemporaries, React, Vue, and Angular, which primarily execute logic in the browser, Svelte performs most of the heavy lifting during the build process. This paradigm shift results in significantly smaller and more efficient applications.</p>\r\n\r\n<p>When you write Svelte components, you&#39;re essentially describing the desired UI to the compiler. During the build process, Svelte transforms your code into highly optimized JavaScript that directly manipulates the DOM, eliminating the need for a virtual DOM or complex runtime. This compilation step produces leaner code that runs faster and requires less memory.</p>\r\n\r\n<p>By shifting the workload to the build step, Svelte empowers developers to create responsive and performant applications without sacrificing development experience or flexibility.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Compile-time optimizations</li>\r\n	<li>No virtual DOM</li>\r\n	<li>Reactive declarations</li>\r\n	<li>Simplicity and minimal boilerplate</li>\r\n	<li>SvelteKit for building full-stack applications</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Svelte is well-suited for applications where performance is critical, such as real-time applications and SPAs. Its simplicity also makes it an excellent choice for smaller projects or prototypes. Companies like The New York Times and Spotify have utilized Svelte in their projects, demonstrating its capability to handle production-level applications.</p>\r\n\r\n<p>Examples of projects suited for Svelte:</p>\r\n\r\n<ul>\r\n	<li>Real-time applications (e.g., chat apps, live updates)</li>\r\n	<li>SPAs and PWAs</li>\r\n	<li>Interactive dashboards and data visualizations</li>\r\n	<li>Prototypes and small-to-medium-sized web applications</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Svelte&rsquo;s learning curve is relatively gentle, especially for developers who are already familiar with JavaScript. Its syntax is straightforward and easy to understand, with minimal boilerplate code. The official Svelte documentation is comprehensive and well-organized, and the community is growing rapidly, providing plenty of resources for learners.</p>\r\n\r\n<p>Resources for learning Svelte:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://svelte.dev/docs\" target=\"_blank\">Official Svelte.js Documentation</a></li>\r\n	<li>Online courses (e.g., Svelte Mastery, Udemy)</li>\r\n	<li>Community forums and discussion groups (e.g., Svelte Society Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Svelte offers exceptional performance due to its compile-time optimizations and lack of a virtual DOM. This approach results in smaller bundle sizes and faster runtime performance. Svelte&rsquo;s reactive programming model also contributes to its efficiency. While Svelte is relatively new, its growing ecosystem and tools like SvelteKit make it increasingly capable of handling scalable applications.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Utilize Svelte&rsquo;s built-in performance monitoring tools</li>\r\n	<li>Optimize reactive declarations to minimize unnecessary updates</li>\r\n	<li>Leverage SvelteKit for building and optimizing full-stack applications</li>\r\n	<li>Use code-splitting and lazy loading to improve initial load times</li>\r\n</ul>\r\n\r\n<p>Sample website built with Svelte JS&nbsp;</p>\r\n\r\n<p><a href=\"https://www.rebel-co.com/\" target=\"_blank\">Rebel-co.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/628baab6bd5fd098732084.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">5.</span></span></span> <strong>Next.js</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Next.js</strong> is a popular React framework that has gained significant traction for its ability to streamline the development of high-performance web applications. Built on top of React, it offers a structured approach to crafting applications with features like Server-Side Rendering (SSR) and Static Site Generation (SSG).</p>\r\n\r\n<p>SSR is a technique where the server renders the initial HTML of a page, improving SEO, initial page load speed, and user experience. SSG, on the other hand, pre-renders entire pages at build time, resulting in incredibly fast load times and optimal performance. Next.js provides a flexible environment for developers to choose between these rendering strategies based on their application&#39;s requirements.</p>\r\n\r\n<p>Beyond rendering, Next.js offers a rich set of features including built-in routing, API routes, image optimization, and more, making it a comprehensive solution for building robust and scalable web applications.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Server-side rendering (SSR)</li>\r\n	<li>Static site generation (SSG)</li>\r\n	<li>API routes</li>\r\n	<li>Automatic code splitting</li>\r\n	<li>File-based routing</li>\r\n	<li>Built-in CSS and Sass support</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Next.js is ideal for applications that require fast load times and improved SEO, such as content-heavy websites, e-commerce platforms, and marketing sites. Its ability to handle server-side rendering makes it suitable for applications where dynamic content needs to be rendered on the server to improve performance and SEO. Companies like Netflix, Hulu, and TikTok use Next.js in their production environments.</p>\r\n\r\n<p>Examples of projects suited for Next.js:</p>\r\n\r\n<ul>\r\n	<li>E-commerce websites</li>\r\n	<li>News and content-heavy websites</li>\r\n	<li>Blogs and marketing sites</li>\r\n	<li>Complex web applications requiring both SSR and SSG</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Next.js has a moderate learning curve, especially for developers already familiar with React. The framework&rsquo;s conventions and built-in features simplify many aspects of web development, making it easier to get started. The official documentation is detailed and provides numerous examples and tutorials. Additionally, the Next.js community is active and supportive, with many resources available for learning.</p>\r\n\r\n<p>Resources for learning Next.js:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://nextjs.org/docs\" target=\"_blank\">Official Next.js Documentation</a></li>\r\n	<li>Online courses (e.g., Udemy, Egghead.io, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Next.js Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Next.js excels in performance, thanks to its ability to pre-render pages at build time (SSG) and on-demand (SSR). This results in faster load times and improved SEO. Next.js also supports automatic code splitting, ensuring that only the necessary code is loaded for each page. The framework&rsquo;s flexibility allows developers to scale applications efficiently, combining static and dynamic content as needed.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use static site generation (SSG) for pages that don&rsquo;t require frequent updates</li>\r\n	<li>Implement server-side rendering (SSR) for dynamic content</li>\r\n	<li>Leverage Next.js API routes for serverless functions</li>\r\n	<li>Optimize images and use built-in image optimization features</li>\r\n</ul>\r\n\r\n<p>Sample website built with Next JS&nbsp;</p>\r\n\r\n<p><a href=\"https://www.totem-configurator.com/\" target=\"_blank\">Totem-configurator.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/666083293bf83494862294.jpg\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">6.</span></span></span> <strong>Nuxt.js</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Nuxt.js</strong> is a higher-level framework built on top of Vue.js that simplifies the development of universal applications. It provides a structured approach to building web applications by offering features and conventions that streamline common tasks.</p>\r\n\r\n<p>One of Nuxt.js&#39;s core strengths is its support for <strong>Server-Side Rendering (SSR)</strong>, which improves SEO, initial load times, and overall user experience. However, it also allows for <strong>Static Site Generation (SSG)</strong>, generating HTML files at build time for optimal performance, and <strong>Single Page Applications (SPA)</strong> for dynamic, interactive experiences. This flexibility empowers developers to choose the best rendering strategy for their specific project.</p>\r\n\r\n<p>Nuxt.js goes beyond rendering by providing automatic routing, state management, and other essential features out of the box. This allows developers to focus on building the application&#39;s core logic rather than spending time on infrastructure setup.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Server-side rendering (SSR)</li>\r\n	<li>Static site generation (SSG)</li>\r\n	<li>Automatic code splitting</li>\r\n	<li>File-based routing</li>\r\n	<li>Vuex integration for state management</li>\r\n	<li>Modular architecture with over 50 modules</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Nuxt.js is ideal for building high-performance web applications that require improved SEO and fast load times. It is particularly well-suited for content-heavy websites, blogs, and e-commerce platforms. Companies like Xiaomi, Alibaba, and Vice use Nuxt.js for their web applications, highlighting its reliability and scalability.</p>\r\n\r\n<p>Examples of projects suited for Nuxt.js:</p>\r\n\r\n<ul>\r\n	<li>E-commerce platforms</li>\r\n	<li>Blogs and content-heavy websites</li>\r\n	<li>Corporate websites</li>\r\n	<li>Complex web applications requiring SSR and SSG</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Nuxt.js has a moderate learning curve, especially for developers familiar with Vue.js. The framework&rsquo;s conventions and built-in features simplify many aspects of web development, making it easier to get started. The official documentation is comprehensive and provides numerous examples and tutorials. Additionally, the Nuxt.js community is active and supportive, with many resources available for learning.</p>\r\n\r\n<p>Resources for learning Nuxt.js:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://nuxt.com\" target=\"_blank\">Official Nuxt.js website</a></li>\r\n	<li><a href=\"https://michaelnthiessen.com/nuxt-tips-collection?aff=J0Emk\" target=\"_blank\">Nuxt Tips Collection</a></li>\r\n	<li>Online courses (e.g., Udemy, Vue School, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Nuxt.js Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Nuxt.js offers excellent performance through its server-side rendering and static site generation capabilities. This results in faster load times and improved SEO. Nuxt.js also supports automatic code splitting, ensuring that only the necessary code is loaded for each page. The framework&rsquo;s modular architecture allows developers to scale applications efficiently by adding and configuring modules as needed.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use static site generation (SSG) for pages that don&rsquo;t require frequent updates</li>\r\n	<li>Implement server-side rendering (SSR) for dynamic content</li>\r\n	<li>Optimize images and use built-in image optimization features</li>\r\n	<li>Leverage Nuxt.js modules for caching and performance improvements</li>\r\n</ul>\r\n\r\n<p>Sample website built with Nuxt JS&nbsp;</p>\r\n\r\n<p><a href=\"https://fresh.anytype.io/en\" target=\"_blank\">Fresh.anytype.io</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/6203a8dd7125b613988818.jpg\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">7.</span></span></span> <strong>Express.js</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Express.js</strong>&nbsp;is a foundational framework for building web applications and APIs with Node.js. It provides a streamlined approach to handling HTTP requests and responses, making it a popular choice for developers seeking flexibility and performance. &nbsp;&nbsp;</p>\r\n\r\n<p>Unlike full-stack frameworks that offer a comprehensive set of features, Express is designed to be minimal, allowing developers to choose and incorporate the tools and libraries they need. This flexibility is a key advantage, as it enables tailored solutions for various project requirements. &nbsp;&nbsp;</p>\r\n\r\n<p>By handling routing, middleware, and server configuration efficiently, Express frees developers to focus on the core logic of their application. This minimalism, coupled with its performance and scalability, has solidified Express&#39;s position as a go-to choice for Node.js developers building a wide range of applications.&nbsp;</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Middleware support</li>\r\n	<li>Routing</li>\r\n	<li>Template engines</li>\r\n	<li>Robust API development</li>\r\n	<li>Flexibility and minimalism</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Express.js is ideal for building RESTful APIs and server-side applications. It is commonly used for developing single-page applications (SPAs), RESTful APIs, and web applications that require a fast, scalable, and flexible backend. Companies like IBM, Uber, and Accenture use Express.js in their tech stacks.</p>\r\n\r\n<p>Examples of projects suited for Express.js:</p>\r\n\r\n<ul>\r\n	<li>RESTful APIs</li>\r\n	<li>Single-page applications (SPAs)</li>\r\n	<li>Web applications requiring server-side logic</li>\r\n	<li>Microservices architectures</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Express.js has a gentle learning curve, especially for developers familiar with JavaScript and Node.js. Its minimalistic and unopinionated nature makes it easy to get started, while still offering powerful features through middleware and plugins. The official documentation is concise and well-organized, and there are numerous tutorials and resources available online.</p>\r\n\r\n<p>Resources for learning Express.js:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://expressjs.com/en/starter/installing.html\" target=\"_blank\">Official Express.js Documentation</a></li>\r\n	<li>Online courses (e.g., Udemy, freeCodeCamp, Pluralsight)</li>\r\n	<li>Community forums and discussion groups (e.g., Stack Overflow, Reddit)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Express.js offers excellent performance due to its lightweight nature and efficient handling of HTTP requests and responses. Its middleware architecture allows for the efficient management of request handling, enabling the development of high-performance web applications. Express.js is highly scalable, making it suitable for both small projects and large-scale applications.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use middleware effectively to manage request handling</li>\r\n	<li>Implement caching strategies to reduce server load</li>\r\n	<li>Optimize database queries and use connection pooling</li>\r\n	<li>Leverage load balancing and clustering for high-traffic applications</li>\r\n</ul>\r\n\r\n<p>Sample website built with Express.js (Node.Js)</p>\r\n\r\n<p><a href=\"https://avocode.com/sdk\" target=\"_blank\">Avocode.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/5c5305348537d431672306.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">8.</span></span></span> <strong>NestJS</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>NestJS</strong> is a progressive Node.js framework that has gained significant popularity for building scalable and maintainable server-side applications. Inspired by Angular&#39;s architecture, NestJS brings a structured approach to Node.js development, emphasizing modularity, testability, and reusability.</p>\r\n\r\n<p>By leveraging TypeScript, NestJS provides strong type checking, improving code quality and reducing errors. Its modular architecture allows for the organization of code into well-defined components, making it easier to manage complex applications. NestJS also offers a command-line interface (CLI) to streamline development and a rich ecosystem of plugins and modules.</p>\r\n\r\n<p>This framework is well-suited for building a wide range of applications, from RESTful APIs to microservices. Its emphasis on best practices and its ability to handle large-scale projects make it a compelling choice for many developers.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Modular architecture</li>\r\n	<li>Dependency injection</li>\r\n	<li>Built-in support for TypeScript</li>\r\n	<li>Middleware and guards</li>\r\n	<li>Microservices architecture support</li>\r\n	<li>Comprehensive CLI</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>NestJS is ideal for developing enterprise-level applications, RESTful APIs, and microservices architectures. Its modular and scalable design makes it well-suited for complex applications requiring maintainability and scalability. Companies like Adidas, Roche, and Capgemini use NestJS for their server-side applications.</p>\r\n\r\n<p>Examples of projects suited for NestJS:</p>\r\n\r\n<ul>\r\n	<li>Enterprise-level applications</li>\r\n	<li>RESTful APIs</li>\r\n	<li>Microservices architectures</li>\r\n	<li>Real-time applications (e.g., chat apps, live updates)</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>NestJS has a moderate learning curve, especially for developers familiar with TypeScript and object-oriented programming. Its similarity to Angular&#39;s architecture can make it easier for developers experienced with Angular to transition to NestJS. The official documentation is extensive and provides numerous examples and tutorials. The NestJS community is also active and supportive, offering plenty of resources for learners.</p>\r\n\r\n<p>Resources for learning NestJS:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://docs.nestjs.com/\" target=\"_blank\">Official NestJS Documentation </a></li>\r\n	<li>Online courses (e.g., Udemy, Pluralsight, NestJS courses)</li>\r\n	<li>Community forums and discussion groups (e.g., NestJS Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>NestJS is designed for performance and scalability, leveraging Node.js&#39;s non-blocking I/O model. Its modular architecture and dependency injection system enable developers to build highly scalable applications. NestJS also supports microservices architectures, making it suitable for large-scale, distributed systems.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use middleware and guards effectively to manage request handling</li>\r\n	<li>Implement caching strategies to reduce server load</li>\r\n	<li>Optimize database queries and use connection pooling</li>\r\n	<li>Leverage microservices architecture for scalability and fault tolerance</li>\r\n</ul>\r\n\r\n<p>Sample website built with NestJs</p>\r\n\r\n<p><a href=\"https://feedr-three.vercel.app/\" target=\"_blank\">Feedr-three.vercel.app</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/screenshot-266.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">9.</span></span></span><strong> Ember.js</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Ember.js</strong> is a robust and opinionated JavaScript framework designed for crafting large-scale, feature-rich web applications. It prioritizes developer productivity and application performance by providing a comprehensive set of tools and conventions. Unlike some frameworks that offer flexibility over structure, Ember leans towards a convention-over-configuration approach, guiding developers towards best practices and reducing decision fatigue.</p>\r\n\r\n<p>Ember&#39;s core philosophy revolves around creating a stable and predictable development environment. It offers a rich feature set including:</p>\r\n\r\n<ul>\r\n	<li><strong>Component-based architecture:</strong> For building reusable UI elements.</li>\r\n	<li><strong>Data management:</strong> With Ember Data for interacting with backend APIs.</li>\r\n	<li><strong>Routing:</strong> For handling navigation within the application.</li>\r\n	<li><strong>Testing:</strong> With built-in support for unit and integration tests.</li>\r\n</ul>\r\n\r\n<p>By adhering to its conventions, Ember empowers developers to focus on building application features rather than spending excessive time on infrastructure setup. This results in faster development cycles and more maintainable codebases.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Convention-over-configuration</li>\r\n	<li>Two-way data binding</li>\r\n	<li>Ember CLI for project scaffolding and tooling</li>\r\n	<li>Ember Data for data management</li>\r\n	<li>Built-in router with nested routes</li>\r\n	<li>Component-based architecture</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Ember.js is well-suited for large-scale web applications that require a strong convention-based structure and a comprehensive set of tools. It excels in projects that need to be built quickly and maintained over time, making it ideal for enterprise-level applications and long-term projects. Companies like Discourse, LinkedIn, and Apple use Ember.js for their web applications.</p>\r\n\r\n<p>Examples of projects suited for Ember.js:</p>\r\n\r\n<ul>\r\n	<li>Large-scale enterprise applications</li>\r\n	<li>CRM systems</li>\r\n	<li>Collaborative platforms</li>\r\n	<li>Content management systems</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Ember.js has a steeper learning curve compared to some other frameworks due to its opinionated nature and extensive feature set. However, its convention-over-configuration approach can simplify development once the initial learning curve is overcome. The official documentation is detailed and includes a variety of tutorials and guides. The Ember.js community is active and provides valuable support through forums and discussions.</p>\r\n\r\n<p>Resources for learning Ember.js:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://guides.emberjs.com/release/\" target=\"_blank\">Official Ember.Js Documentation</a></li>\r\n	<li>Online courses (e.g., Ember Learning, Udemy)</li>\r\n	<li>Community forums and discussion groups (e.g., Ember Discord, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Ember.js is designed for performance and scalability, with features like the Ember CLI and Ember Data optimizing development workflows and data management. Its built-in router and component-based architecture help in building scalable applications with efficient performance. Ember.js applications can be scaled effectively through its modular design and best practices.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use Ember CLI to manage and optimize builds</li>\r\n	<li>Implement lazy loading for routes and components</li>\r\n	<li>Optimize data management with Ember Data</li>\r\n	<li>Use performance monitoring tools to identify and address bottlenecks</li>\r\n</ul>\r\n\r\n<p>Sample website built using Ember.Js</p>\r\n\r\n<p><a href=\"https://digitalocean.com/\" target=\"_blank\">Digitalocean.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/screenshot-267.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:36px\"><span style=\"color:#e74c3c\">10.</span></span></span> <strong>Meteor.js</strong></h2>\r\n\r\n<h4>Overview</h4>\r\n\r\n<p><strong>Meteor.js</strong> is a comprehensive JavaScript platform designed to streamline the creation of real-time web and mobile applications. It offers a unified environment for both front-end and back-end development, allowing developers to build applications using a single language: JavaScript.</p>\r\n\r\n<p>Meteor&#39;s core strength lies in its ability to handle real-time data synchronization effortlessly. With Meteor, changes made on the server are instantly reflected on the client, without requiring manual updates or complex coding. This makes it ideal for applications like chat apps, collaborative tools, and online gaming.</p>\r\n\r\n<p>Beyond real-time capabilities, Meteor provides a rich set of features including:</p>\r\n\r\n<ul>\r\n	<li><strong>Isomorphic code:</strong> Write JavaScript code that runs both on the client and server.</li>\r\n	<li><strong>Reactive patterns:</strong> Build applications that automatically update as data changes.</li>\r\n	<li><strong>Built-in accounts system:</strong> Easily implement user authentication and authorization.</li>\r\n	<li><strong>Extensive package ecosystem:</strong> Access a wide range of community-contributed packages.</li>\r\n</ul>\r\n\r\n<p>Meteor&#39;s focus on rapid development and developer experience has made it a popular choice for building prototypes and MVPs. However, it&#39;s essential to consider the trade-offs, such as potential performance implications for large-scale applications, when making technology choices.</p>\r\n\r\n<p>Key features include:</p>\r\n\r\n<ul>\r\n	<li>Real-time data updates</li>\r\n	<li>Full-stack integration</li>\r\n	<li>Simple API for working with MongoDB</li>\r\n	<li>Built-in user authentication</li>\r\n	<li>Meteor packages for adding functionality</li>\r\n	<li>Reactive programming model</li>\r\n</ul>\r\n\r\n<h4>Use Cases</h4>\r\n\r\n<p>Meteor.js is particularly well-suited for applications that require real-time data synchronization, such as chat applications, collaborative tools, and live data dashboards. Its ease of use and integrated environment make it a good choice for rapid prototyping and MVP (minimum viable product) development. Companies like Xiaomi and Roche have used Meteor.js in their projects.</p>\r\n\r\n<p>Examples of projects suited for Meteor.js:</p>\r\n\r\n<ul>\r\n	<li>Real-time chat applications</li>\r\n	<li>Collaborative platforms (e.g., project management tools)</li>\r\n	<li>Live data dashboards</li>\r\n	<li>Prototyping and MVPs</li>\r\n</ul>\r\n\r\n<h4>Learning Curve</h4>\r\n\r\n<p>Meteor.js has a relatively gentle learning curve, especially for developers familiar with JavaScript. Its integrated approach and simplicity allow developers to get up and running quickly. The official documentation provides a clear guide to getting started, and the Meteor community offers additional resources and support.</p>\r\n\r\n<p>Resources for learning Meteor.js:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://docs.meteor.com/\" target=\"_blank\">Official Meteor.js Documentation </a></li>\r\n	<li>Online courses (e.g., Meteor Tutorials on Udemy, freeCodeCamp)</li>\r\n	<li>Community forums and discussion groups (e.g., Meteor Forum, Stack Overflow)</li>\r\n</ul>\r\n\r\n<h4>Performance and Scalability</h4>\r\n\r\n<p>Meteor.js is designed for real-time performance, with features like live data updates and reactive programming enhancing responsiveness. However, its all-in-one approach can sometimes lead to performance bottlenecks for very large applications. To ensure scalability, developers should carefully manage database interactions and optimize the use of Meteor&rsquo;s features.</p>\r\n\r\n<p>Performance optimization tips:</p>\r\n\r\n<ul>\r\n	<li>Use Meteor&rsquo;s pub/sub system efficiently to minimize data transfer</li>\r\n	<li>Optimize database queries and use indexes effectively</li>\r\n	<li>Implement server-side caching and load balancing</li>\r\n	<li>Modularize code and use Meteor packages wisely to manage dependencies</li>\r\n</ul>\r\n\r\n<p>Sample website built using Meteor.Js</p>\r\n\r\n<p><a href=\"https://dockercon.com\" target=\"_blank\">Dockercon.com</a></p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/08/screenshot-268.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>Choosing the best JavaScript framework depends largely on the specific needs of your project and your familiarity with the technology. Each of the frameworks discussed has its strengths and ideal use cases:</p>\r\n\r\n<ul>\r\n	<li><strong>React</strong> is highly versatile and excellent for building interactive user interfaces with a large ecosystem of tools and libraries.</li>\r\n	<li><strong>Angular</strong> provides a comprehensive solution with strong support for enterprise-level applications and robust features like dependency injection and a powerful CLI.</li>\r\n	<li><strong>Vue.js</strong> stands out for its simplicity and ease of integration, making it a great choice for both beginners and advanced users looking for flexibility.</li>\r\n	<li><strong>Svelte</strong> offers a unique approach by compiling code at build time, resulting in highly optimized and performant applications with less browser overhead.</li>\r\n	<li><strong>Next.js</strong> excels in server-side rendering and static site generation, making it perfect for SEO-focused and performance-sensitive applications.</li>\r\n	<li><strong>Nuxt.js</strong> provides similar benefits to Next.js but for Vue.js applications, with a focus on server-side rendering and static generation.</li>\r\n	<li><strong>Express.js</strong> is a lightweight and flexible choice for server-side applications and APIs, renowned for its simplicity and scalability.</li>\r\n	<li><strong>NestJS</strong> combines TypeScript with a modular architecture, making it suitable for building enterprise-grade applications and microservices.</li>\r\n	<li><strong>Ember.js</strong> offers a convention-over-configuration approach, which can speed up development for complex applications but requires a steeper learning curve.</li>\r\n	<li><strong>Meteor.js</strong> provides a full-stack solution with built-in real-time capabilities, ideal for rapid development of real-time applications and prototypes.</li>\r\n</ul>\r\n\r\n<p>Ultimately, the &quot;best&quot; framework is the one that aligns with your project&#39;s requirements and your development preferences. Consider factors such as the complexity of your application, performance needs, and your team&#39;s expertise when making your choice. Experimenting with different frameworks and exploring their documentation and communities can also help you make an informed decision that best suits your needs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This concludes our Top 10 JavaScript Frameworks for Modern Web Development. Share your thought and opinions on the frameworks that caught your interest in the comments and subscribe to our newsletter to get notified when we post new contents.</p>', 'In the scope of web development, staying updated with the latest tools and frameworks is crucial. As a beginner or a JavaScript enthusiast, we bring you an in-depth look at the top 10 JavaScript frameworks that should be on your radar. Whether you\'re building dynamic UIs, robust backends, or real-time applications, these frameworks offer the features and capabilities to streamline your development process and enhance your projects.', 'articles/20240806_170802.jpg', '2024-08-03 07:47:04.008672', '2024-08-09 06:49:01.557888', NULL, 'published', 15, 69, 'Top 10 JavaScript Frameworks To Learn For Modern Web Development', 'Discover the top 10 JavaScript frameworks to learn for modern development. Enhance your web projects with our in-depth analysis of some JavaScript frameworks,', 'JavaScript, frameworks, web development, React, Angular, Vue.js, Svelte, Next.js, Nuxt.js, Express.js, NestJS, Ember.js, Meteor.js, 2024 trends, programming', 1, 0, '-- https://www.reddit.com/ --\r\n-- https://www.awwwards.com/websites --  \r\n-- https://hunter.io/technologies --', NULL, 1, 12);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `type`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `file_url`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `youtube_url`, `author_id`, `category_id`) VALUES
(12, 'Essential Git Commands Every Developer Should Know', 'essential-git-commands-every-developer-should-know', 'article', '<p>Git, a distributed version control system used primarily in software development. It is used to track changes in files, allowing multiple people to work on projects simultaneously. Git enables developers to manage different versions of their code, collaborate effectively, and revert changes when necessary.</p><p>Git has become an essential part of modern software development, easing the process of how developers manage and collaborate on code projects. Whether you\'re a solo programmer or part of a large team, mastering Git can significantly enhance your workflow, making it more efficient and less prone to errors and file loss. This version control system allows you to track changes, revert to previous stages, and work on different features simultaneously without fear of losing progress.</p><p>To get a better grasp of this powerful version control tool, we\'ll explore some of the most crucial Git commands that every developer should know. We will discuss their practical applications in real-world scenarios, helping you understand not just the how, but also the why behind each command. By the end, you\'ll have a solid understanding for using Git effectively in your projects, whether you\'re working on a personal hobby or a large-scale professional application.</p><p>&nbsp;</p><h2>The Essentials&nbsp;</h2><p>At is core, Git functions through it\'s commands, each serving a specific purpose in the development process. From initializing a repository with \'git init\' to pushing your changes to a remote server with \'git push\', these commands form the backbone of version control. Understanding when and how to use commands like \'git commit\', \'git branch\', and \'git merge\' can make the difference between a smooth development process and a chaotic one filled with bugs and gut wrenching errors.</p><p>&nbsp;</p><h3>1. <code>git init</code></h3><p><strong>Use Case:</strong></p><ul><li>Starting a new project and want to keep track of changes from the beginning.</li></ul><p><strong>Description:</strong> The <code>git init</code> command is used to create a new Git repository. This sets up the necessary files and directories that Git uses to keep track of changes in your project.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git init</code></pre><p><strong>Real-Life Benefit:</strong> By initializing a Git repository at the start of your project, you ensure that every change is tracked from the very beginning, making it easier to manage and revert changes if needed.</p><h3>2. <code>git clone</code></h3><p><strong>Use Case:</strong></p><ul><li>Downloading an existing repository from a remote source.</li></ul><p><strong>Description:</strong> The <code>git clone</code> command is used to create a copy of an existing remote Git repository. This is commonly used to clone repositories from platforms like GitHub, GitLab, or Bitbucket.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git clone https://github.com/user/repo.git</code></pre><p><strong>Real-Life Benefit:</strong> Cloning repositories allows you to easily collaborate on projects by working on a local copy of the repository, making it easy to contribute to open-source projects or share your own work.</p><h3>3. <code>git add</code></h3><p><strong>Use Case:</strong></p><ul><li>Staging changes to be committed to the repository.</li></ul><p><strong>Description:</strong> The <code>git add</code> command is used to stage changes for the next commit. This can be used to add individual files or entire directories.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git add file.txt\r\ngit add .</code></pre><p><strong>Real-Life Benefit:</strong> Staging changes before committing allows you to review what will be included in your next commit, ensuring that only the necessary changes are recorded.</p><h3>4. <code>git commit</code></h3><p><strong>Use Case:</strong></p><ul><li>Saving changes to the repository with a message describing the changes.</li></ul><p><strong>Description:</strong> The <code>git commit</code> command is used to save your staged changes to the repository. Each commit should include a message that describes the changes made.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git commit -m \"Add new feature to user login\"</code></pre><p><strong>Real-Life Benefit:</strong> Committing changes with descriptive messages creates a clear history of your project\'s development, making it easier to understand the evolution of your codebase.</p><h3>5. <code>git status</code></h3><p><strong>Use Case:</strong></p><ul><li>Checking the status of your working directory and staging area.</li></ul><p><strong>Description:</strong> The <code>git status</code> command provides information about the current state of your working directory and staging area. It shows which files are modified, staged for commit, or untracked.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git status</code></pre><p><strong>Real-Life Benefit:</strong> Regularly checking the status of your repository helps you keep track of your changes and ensures that you don\'t accidentally miss any important updates before committing. This is especially useful in large scale projects where little changes can make huge difference.</p><h3>6. <code>git push</code></h3><p><strong>Use Case:</strong></p><ul><li>Uploading your local changes to a remote repository.</li></ul><p><strong>Description:</strong> The <code>git push</code> command is used to upload your local commits to a remote repository. This is typically used to share your changes with collaborators or back up your work, depending on the structure of your project, you can either push to the main branch or the master branch.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git push origin main # or origin master</code></pre><p><strong>Real-Life Benefit:</strong> Pushing changes to a remote repository ensures that your work is safely backed up and available to others who need access to the project.</p><h3>7. <code>git pull</code></h3><p><strong>Use Case:</strong></p><ul><li>Fetching and merging changes from a remote repository.</li></ul><p><strong>Description:</strong> The <code>git pull</code> command is used to fetch changes from a remote repository and merge them into your local branch. This ensures that your local repository is up-to-date with the remote repository.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git pull origin main</code></pre><p><strong>Real-Life Benefit:</strong> Pulling changes regularly keeps your local repository synchronized and up to date with the remote repository, preventing conflicts and ensuring you have the latest updates. It is especially useful if you\'ve had any issues with your local repository or somehow lost your files, just a quick pull will get you back on track.</p><h3>8. <code>git branch</code></h3><p><strong>Use Case:</strong></p><ul><li>Creating and managing branches in your repository.</li></ul><p><strong>Description:</strong> The <code>git branch</code> command is used to create, list, and/or delete branches in your repository. Branches are used to develop features, fix bugs, or experiment with new ideas without affecting the main codebase.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git branch new-feature\r\ngit branch -d old-feature</code></pre><p><strong>Real-Life Benefit:</strong> Using branches allows you to work on multiple features or fixes simultaneously without interfering with the main codebase, promoting a clean and organized development workflow.</p><h3>9. <code>git merge</code></h3><p><strong>Use Case:</strong></p><ul><li>Combining changes from different branches.</li></ul><p><strong>Description:</strong> The <code>git merge</code> command is used to combine changes from one branch into another. This is typically done to integrate new features or fixes into the main branch.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git merge new-feature</code></pre><p><strong>Real-Life Benefit:</strong> Merging branches allows you to integrate and test changes in isolation before incorporating them into the main codebase, ensuring stability and reducing the risk of introducing bugs.</p><h3>10. <code>git log</code></h3><p><strong>Use Case:</strong></p><ul><li>Viewing the commit history of the repository.</li></ul><p><strong>Description:</strong> The <code>git log</code> command displays the commit history of your repository, showing information about each commit, including the commit message, author, and date.</p><p><strong>Example:</strong></p><pre><code class=\"language-plaintext\">git log</code></pre><p><strong>Real-Life Benefit:</strong> Reviewing the commit history helps you understand the evolution of your project, track down when specific changes were made, see who made what changes, and identify the cause of issues.</p><p>&nbsp;</p><h2>Conclusion</h2><p>Mastering these essential Git commands is invaluable for developers, regardless of whether you\'re flying solo or working as part of a team. By employing Git\'s powerful version control capabilities into your projects, you\'ll be able to manage codebase more effectively, track changes with precision, and collaborate seamlessly with others and ensure that you\'re better equipped to handle complex projects, easily revert changes when needed, and maintain a clear history of your workflow. This leads to a more organized, efficient, and error-resistant development process. Ultimately, investing time in learning and utilizing Git pays dividends in the form of smoother development cycles and more convenient code management, giving you the freedom to explore possibilities in your project and making it an indispensable tool in any developer\'s arsenal.</p><p>&nbsp;</p>', 'Git is an essential tool for developers, providing powerful version control capabilities to manage code changes effectively. This guide covers the most important Git commands, offering use cases and real-life benefits to enhance your development workflow.', 'articles/20240804_152815.jpg', '2024-08-03 10:14:28.183846', '2024-08-20 07:23:34.346362', NULL, 'published', 5, 53, 'Essential Git Commands Every Developer Should Know: A Comprehensive Guide', 'Discover the essential Git commands every developer should know. Learn how to use Git effectively with real-life examples and benefits for your development work', 'Git, Git commands, version control, software development, programming, coding, developer tools, Git tutorial, GitHub, coding best practices, learn Git, Git guide, Git tips', 1, 0, '', NULL, 1, 2),
(13, 'How to Build a REST API with Django and Django REST Framework', 'how-to-build-a-rest-api-with-django-and-django-rest-framework', 'article', '<p>Picture this: You&#39;re at a fancy restaurant, and you&rsquo;re the hungry customer. The kitchen is where the magic happens, but you can&#39;t go back there yourself. Instead, you tell the waiter your order, and they deliver it to the kitchen. After a while, the waiter returns with your delicious meal. In the world of tech, an API (Application Programming Interface) is just like that waiter! It takes your requests, tells the system what you need, and brings back the goodies.</p>\r\n\r\n<p>Although you can build your own API directly from a programming language of your choice, namely;</p>\r\n\r\n<p>1. Python</p>\r\n\r\n<p>2. JavaScript (Node.js)</p>\r\n\r\n<p>3. Java</p>\r\n\r\n<p>4. C#</p>\r\n\r\n<p>5. PHP</p>\r\n\r\n<p>There are various frameworks built specifically for creating robust APIs, here are a few of them</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. <strong>Django</strong> <strong>REST</strong> <strong>Framework</strong>: Django in a superhero cape, ready to build robust APIs.</p>\r\n\r\n<p>2. <strong>Express.j</strong><strong>s</strong>: A quick and nimble node.js framework, like a speedy waiter on roller skates.</p>\r\n\r\n<p>3. <strong>Flask</strong>: A lightweight and flexible Python framework, like a friendly neighborhood diner.</p>\r\n\r\n<p>4. <strong>Spring</strong> <strong>Boot</strong>: Java-powered and reliable, like a top-notch butler.</p>\r\n\r\n<p>In this article, we&#39;ll walk through the steps of creating a simple REST API using Django and Django REST Framework (DRF). We&#39;ll create a basic API for a to-do list application. By the end of this guide, you&#39;ll understand how to set up a Django project, configure Django REST Framework, and create CRUD operations for a to-do list. Let&#39;s get started!</p>\r\n\r\n<h2>Prerequisites</h2>\r\n\r\n<p>Before we start, make sure you have the following installed:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://python.org/download\" target=\"_blank\">Python</a> (version 3.7 or higher)</li>\r\n	<li>Django (version 3.0 or higher)</li>\r\n	<li>Django REST Framework</li>\r\n	<li>Basic understanding of Django framework and it&#39;s structure and setup.</li>\r\n</ul>\r\n\r\n<p>You can install Django and DRF from your terminal using pip:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">pip install django\r\npip install djangorestframework</code></pre>\r\n\r\n<h2>Step 1: Set Up the Django Project</h2>\r\n\r\n<p>First, let&#39;s create a new Django project. Open your terminal and run the following commands:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">django-admin startproject todo_project\r\n\r\n# Change directory into the new project\r\ncd todo_project</code></pre>\r\n\r\n<p>Next, create a new app called <code>todos</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py startapp todos</code></pre>\r\n\r\n<p>Add the new app and Django REST Framework to your <code>INSTALLED_APPS</code> in <code>todo_project/settings.py</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todo_project/settings.py\r\n\r\nINSTALLED_APPS = [\r\n    ...\r\n    \'rest_framework\',\r\n    \'todos\',\r\n]</code></pre>\r\n\r\n<h2>Step 2: Create the To-Do Model</h2>\r\n\r\n<p>In the <code>todos</code> app, create a simple model for the to-do items. Open <code>todos/models.py</code> and define the model:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/models.py\r\n\r\nfrom django.db import models\r\n\r\nclass Todo(models.Model):\r\n    title = models.CharField(max_length=100)\r\n    description = models.TextField(blank=True, null=True)\r\n    completed = models.BooleanField(default=False)\r\n\r\n    def __str__(self):\r\n        return self.title</code></pre>\r\n\r\n<p>After defining the model, create and apply the migrations:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py makemigrations\r\npython manage.py migrate</code></pre>\r\n\r\n<h2>Step 3: Create the Serializers</h2>\r\n\r\n<p>Serializers in Django REST Framework convert complex data types (like Django models) into JSON and vice versa.</p>\r\n\r\n<p>Imagine you&#39;re writing a letter to a friend who speaks another language. You need a translator to convert your message so they can understand it. Here, serializers are those translators! They take complex data from your application (like Python objects and in this case, your Django models) and convert it into a format that can be easily sent over the internet (like JSON). And when data comes back, serializers translate it back into a form your app can understand.</p>\r\n\r\n<p>Now let&#39;s create a new file <code>todos/serializers.py</code> and define a serializer for the <code>Todo</code> model:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/serializers.py\r\n\r\nfrom rest_framework import serializers\r\nfrom .models import Todo\r\n\r\nclass TodoSerializer(serializers.ModelSerializer):\r\n    class Meta:\r\n        model = Todo\r\n        fields = \'__all__\'</code></pre>\r\n\r\n<h2>Step 4: Create the Views</h2>\r\n\r\n<p>Next, create views to handle the API endpoints. Open <code>todos/views.py</code> and define the views using Django REST Framework&#39;s generic views:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/views.py\r\n\r\nfrom rest_framework import generics\r\nfrom .models import Todo\r\nfrom .serializers import TodoSerializer\r\n\r\nclass TodoListCreate(generics.ListCreateAPIView):\r\n    queryset = Todo.objects.all()\r\n    serializer_class = TodoSerializer\r\n\r\nclass TodoRetrieveUpdateDestroy(generics.RetrieveUpdateDestroyAPIView):\r\n    queryset = Todo.objects.all()\r\n    serializer_class = TodoSerializer</code></pre>\r\n\r\n<h2>Step 5: Define the URLs</h2>\r\n\r\n<p>Now, let&#39;s define the URLs for the API endpoints. Create a new file <code>todos/urls.py</code> and add the following code:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todos/urls.py\r\n\r\nfrom django.urls import path\r\nfrom .views import TodoListCreate, TodoRetrieveUpdateDestroy\r\n\r\nurlpatterns = [\r\n    path(\'todos/\', TodoListCreate.as_view(), name=\'todo-list-create\'),\r\n    path(\'todos/&lt;int:pk&gt;/\', TodoRetrieveUpdateDestroy.as_view(), name=\'todo-retrieve-update-destroy\'),\r\n]</code></pre>\r\n\r\n<p>Include the <code>todos</code> URLs in the main project&#39;s URL configuration. Open <code>todo_project/urls.py</code> and modify it as follows:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\"># todo_project/urls.py\r\n\r\nfrom django.contrib import admin\r\nfrom django.urls import path, include\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'api/\', include(\'todos.urls\')),\r\n]</code></pre>\r\n\r\n<h2>Step 6: Test the API</h2>\r\n\r\n<p>With everything set up, you can now run the Django development server and test the API:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py runserver</code></pre>\r\n\r\n<p>You can use tools like Postman or curl to interact with the API endpoints. Here are some examples using curl:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Create a new to-do item</strong>:</p>\r\n	</li>\r\n</ol>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl -X POST -H \"Content-Type: application/json\" -d \'{\"title\": \"Buy groceries\", \"description\": \"Milk, Eggs, Bread\"}\' http://127.0.0.1:8000/api/todos/</code></pre>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong>2.<strong> List all to-do items</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl http://127.0.0.1:8000/api/todos/</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 3.<strong> Retrieve a specific to-do item</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl http://127.0.0.1:8000/api/todos/1/</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 4.<strong> Update a to-do item</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl -X PUT -H \"Content-Type: application/json\" -d \'{\"title\": \"Buy groceries\", \"description\": \"Milk, Eggs, Bread, Cheese\", \"completed\": true}\' http://127.0.0.1:8000/api/todos/1/</code></pre>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 5.<strong> Delete a to-do item</strong>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">curl -X DELETE http://127.0.0.1:8000/api/todos/1/</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>In this guide, we&#39;ve covered some interesting things like how to set up a Django project, how to create a model, and how touse Django REST Framework to build a REST API. This basic setup can be extended and customized to fit more complex requirements, such as user authentication, permissions, and more sophisticated data handling.</p>\r\n\r\n<p>Subscribe to our newsletter to get notified when new articles are uploaded so you don&#39;t miss out on the next steps for creating a more robust API.&nbsp;</p>\r\n\r\n<p>Feel free to engage in the comments and share you thoughts, opinion and any questions you might have concerning the topic. Thank you.</p>\r\n\r\n<p>&nbsp;</p>', 'Learn how to build a simple REST API using Django and Django REST Framework in this comprehensive tutorial. We cover setting up a Django project, creating models, serializers, views, and configuring URLs to handle CRUD operations for a to-do list application.', 'articles/20240804_202057.jpg', '2024-08-03 14:54:37.093464', '2024-08-07 09:13:36.796249', NULL, 'published', 10, 30, 'Building a REST API with Django and Django REST Framework: A Step-by-Step Guide', 'Discover how to create a REST API with Django and Django REST Framework in this detailed guide. Learn to set up models, serializers, views, and URLs for a to-do', 'Django, Django REST Framework, REST API, Web Development, Python, API Tutorial, Django Tutorial, CRUD Operations, To-Do List API, Backend Development', 1, 0, '', NULL, 1, 12),
(14, 'How to Install and Run Uncensored ChatGPT on Your PC (Offline): A Step-by-Step Guide', 'how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide', 'article', '<p>Hey, I know you&#39;ve heard of Chat GPT, y&#39;know, the super intelligent AI from Open AI... Yeah, that one, What if I told you that you could have it running on your PC completely offline... Pretty crazy right? But it&#39;s true, allot of people and companies have put in allot of time, resources and energy into making this possible, and I am going to show you how you can download and run these LLMs (Large Language Models) on you PC completely offline.</p>\r\n\r\n<p>If you&#39;re interested in experimenting with Large Language Models (LLMs) locally on your PC, or you just want to have the power of artificial intelligence at your disposal, then you&#39;re in the right place. In this guide, I will show you how to install Ollama and AnythingLLM, configure your environment, and get your model up and running. This guide is tailored for Windows users but can be adapted for other operating systems.</p>\r\n\r\n<h2>Requirements</h2>\r\n\r\n<ul>\r\n	<li>You&#39;ll need a PC...Obviously.</li>\r\n	<li>Fast and stable internet connection</li>\r\n	<li>Ollama running on your PC</li>\r\n	<li>An LLM</li>\r\n	<li>And AnythingLLM</li>\r\n</ul>\r\n\r\n<p>Let&#39;s move on.</p>\r\n\r\n<h2>Steps</h2>\r\n\r\n<h3>1. Installing Ollama and Adding it to Your Environmental Path (For Windows).</h3>\r\n\r\n<p>This is so you can run Ollama commands directly from your command line.</p>\r\n\r\n<p><strong>Step 1: Download Ollama</strong></p>\r\n\r\n<ol>\r\n	<li>Visit the <a href=\"https://ollama.com\" rel=\"noreferrer\" target=\"_blank\">Ollama website</a> and navigate to the downloads section.</li>\r\n	<li>Choose the Windows installer and download it to your PC.</li>\r\n</ol>\r\n\r\n<p><strong>Step 2: Install Ollama</strong></p>\r\n\r\n<ol>\r\n	<li>Run the downloaded installer.</li>\r\n	<li>Follow the installation wizard to complete the setup.</li>\r\n</ol>\r\n\r\n<p>Once installed, open the file installation location in your file manager. Just search for Ollama, then open file location. Once you&#39;re there, you should see a folder or file named Ollama, if you do, you&#39;re in the right place. Just copy the path to the directory you&#39;re currently in and move on to the next step.</p>\r\n\r\n<p><strong>Step 3: Add Ollama to Your Environmental Path</strong></p>\r\n\r\n<ol>\r\n	<li>Open the Start Menu and search for &quot;Environment Variables.&quot;</li>\r\n	<li>Select &quot;Edit the system environment variables.&quot;</li>\r\n	<li>In the System Properties window, click on &quot;Environment Variables.&quot;</li>\r\n	<li>In the Environment Variables window, find and select the &quot;Path&quot; variable under System variables, then click &quot;Edit.&quot;</li>\r\n	<li>Click &quot;New&quot; and add the path to the Ollama installation directory which you copied previously&nbsp;(e.g., <code>C:\\User\\Program Files\\Programs</code>). This means the Ollama file or folder is in this directory.</li>\r\n	<li>Click &quot;OK&quot; to close all windows.</li>\r\n</ol>\r\n\r\n<p><strong>Step 4: Verify Installation</strong></p>\r\n\r\n<ol>\r\n	<li>Open Command Prompt and type <code>ollama --version</code> to ensure Ollama is installed correctly and is accessible from any directory.</li>\r\n</ol>\r\n\r\n<p>Alright. You have Ollama installed, and you system now recognizes <code>ollama</code> as a valid system command. It&#39;s now time to download an LLM. Yeah that&#39;s right, we&#39;re about to download our own preferred GPT. Yeah, you heard that right. &quot;Preferred&quot;.</p>\r\n\r\n<p>We all know how most AIs available through Open AI, Gemini, Bing, Copilot and others have this guideline that prevents them from y&#39;know, going all out. These guidlines are programmed into them by their creators so they can&#39;t be used for illegal and criminal acts. And though this is good, it greatly limits the extent to which you can use the power of AI. Plus, not everyone would want to use AI for illegal stuff, that&#39;s why I am going to show you how to get an Uncensored LLM.These&nbsp;Uncensored LLMs have been trained with all those guidelines removed, and won&#39;t hold back when responding to your prompts. And the one we&#39;re going to install is called <code>Dolphin-llama3</code>. Although there are many others, including <code>LLama3</code>, which is trained by Meta on an insane amount of data and of course, it&#39;s censored. So whichever your preference is, just go with it. But where&#39;s the fun in have guidelines tell you what and what not to do, and that&#39;s why we&#39;re going with Dolphin.</p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-251.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h3>&nbsp;2. Downloading Dolphin-llama3&nbsp;</h3>\r\n\r\n<ol>\r\n	<li>Go to the <a href=\"http://ollama.com\" target=\"_blank\">Ollama Website</a>.</li>\r\n	<li>Look to the upper right and clock on Models.</li>\r\n	<li>Search for Dolphin-llama3&nbsp;</li>\r\n	<li>Click it and copy the ollama run command for dolphin-llama3. (Note that depending on your systems capabilities, you could either run the 8B data size model, 70B and others. Unless you have a really powerful computer, let&#39;s just stick with the 8B model.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-250.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. Open your command line and type <code>ollama run dolphin-llama3</code>. You&#39;ll see the installation start so just wait for it to finish.</p>\r\n\r\n<p>Is your LLM done downloading? Congratulations! You now have your own personal <u>Uncensored</u>&nbsp;AI to do your bidding. Try it. Type in a prompt and get the response of your dreams.</p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-245_ECpYzsg.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<h2>Disclaimer: I do not recommend any of the actions listed in this image...</h2>\r\n\r\n<p>But you get the point. No limitations. In comparison to Other Censored models...</p>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-252.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>Now that you have your LLM up and running, you&#39;re good to go right? Not quite. You see, not everyone will be comfortable with running their LLM fron the command line. Well, that&#39;s why we have AnythingLLM. They have provided us with a means of running arioud kinds of LLMs including Open AI&#39;s Chat GPT, But we want to run our own local model, so let&#39;s download and install AnythingLLM.</p>\r\n\r\n<h3>3. Downloading and Installing AnythingLLM</h3>\r\n\r\n<p><strong>Step 1: Download AnythingLLM</strong></p>\r\n\r\n<ol>\r\n	<li>Visit the <a href=\"https://useanything.com/download\" target=\"_blank\">AnythingLLM Official website</a>.</li>\r\n	<li>Download the latest release suitable for your operating system.</li>\r\n</ol>\r\n\r\n<p><strong>Step 2: Install AnythingLLM</strong></p>\r\n\r\n<ol>\r\n	<li>Follow the installation prompts and have it installed.</li>\r\n</ol>\r\n\r\n<p><strong>Step 3: Configuration</strong></p>\r\n\r\n<ol>\r\n	<li>After installation, configure AnythingLLM according to your preferences.&nbsp;</li>\r\n	<li>Open AnythingLLM and click on Get Started.</li>\r\n	<li>We&#39;re running a local LLM through Ollama, so scroll through the list and click on Ollama</li>\r\n	<li>The setup should automatically detect the running Ollama model in your PC so just click the right arrow to continue.</li>\r\n	<li>Follow the prompts and name your workspace whatever you want, I&#39;ll name mine <code>Dolphin-llama3&nbsp;</code></li>\r\n	<li>Proceed until you see a chat interface.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2024/08/04/screenshot-243.png\" style=\"margin-bottom:30px; margin-top:30px; width:100%\" /></p>\r\n\r\n<p>Nice right, you now have a chat interface where you can communicate with your LLM just like Open AIs Chat GPT, or Gemini. Your personal assistant. And the best part...It&#39;s completely offline.</p>\r\n\r\n<h2>Conclusion</h2>\r\n\r\n<p>By following these steps, you should have Ollama and AnythingLLM installed and running your local LLM on your PC. This setup allows you to explore and interact with LLMs directly from your PC, offering a great way to experiment with AI models without relying on cloud services. I hope you enjoyed this guide and you arre able to explore the capabilities of an Uncensored LLM.</p>\r\n\r\n<p>Feel free to leave a comment if you encounter any issues during the setup process or have any questions! And Subscribe to our newsletter to get notified on more posts like these.</p>', 'Learn how to set up a Large Language Model (LLM) on your PC with this detailed guide. We\'ll walk you through the installation of Ollama and AnythingLLM, configure your system, and get your model up and running locally.', 'articles/20240804_160128.jpg', '2024-08-03 16:35:08.220302', '2024-08-05 08:44:08.797286', NULL, 'published', 10, 92, 'How to Install and Run Uncensored Chat GPT Locally on Your PC: Ollama & AnythingLLM Setup', 'Discover how to install and configure a Large Language Model (LLM) on your PC. This guide covers the installation of Ollama, adding it to your environmental pat', 'LLM installation, Ollama setup, AnythingLLM installation, local AI models, chat gpt on PC, AI setup guide, Install chat gpt on pc', 1, 1, '', NULL, 1, 15),
(15, 'Mastering CSS Grid Layout: Tips and Tricks for Web Developers', 'mastering-css-grid-layout-tips-and-tricks-for-web-developers', 'article', '<p>CSS Grid Layout is a powerful layout system that allows web developers to create complex, two-dimensional grid-based layouts with ease. While it may seem intimidating at first, mastering CSS Grid can greatly improve your skills as a web developer. In this post, we&rsquo;ll cover some tips and tricks to help you get the most out of CSS Grid.</p>\r\n\r\n<p><strong>Understanding the Basics</strong></p>\r\n\r\n<p>Before diving into advanced techniques, let&rsquo;s make sure you have a solid understanding of the basics. A grid container is defined using&nbsp;<code>display: grid</code>, while child elements are placed within the grid using&nbsp;<code>grid-row</code>&nbsp;and&nbsp;<code>grid-column</code>.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n  grid-gap: 10px;\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n}</code></pre>\r\n\r\n<p>In this example, we have a container with three columns and a gap of 10px between each item.</p>\r\n\r\n<p><strong>Flexible Grid Columns</strong></p>\r\n\r\n<p>CSS Grid allows you to create flexible grid columns using the&nbsp;<code>fr</code>&nbsp;unit. This means that the column will automatically adjust its width based on available space.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n  grid-column: span 2;\r\n}</code></pre>\r\n\r\n<p>Here, we&rsquo;ve created a container with three flexible columns and placed an item that spans two columns.</p>\r\n\r\n<p><strong>Auto-Placement</strong></p>\r\n\r\n<p>One of the most powerful features of CSS Grid is auto-placement. This allows you to automatically place items within the grid without specifying their exact position.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n}</code></pre>\r\n\r\n<p>In this example, we&rsquo;ve placed three items within the container and let CSS Grid handle their positioning. Note that you can also use&nbsp;<code>grid-auto-flow</code>&nbsp;to control how items are placed.</p>\r\n\r\n<p><strong>Grid Auto-Flow</strong></p>\r\n\r\n<p>As mentioned earlier, grid auto-flow allows you to specify how items should be automatically placed within the grid. There are two options:&nbsp;<code>row</code>&nbsp;(default) and&nbsp;<code>column</code>.</p>\r\n\r\n<pre>\r\n<code class=\"language-css\">.container {\r\n  display: grid;\r\n  grid-template-columns: repeat(3, 1fr);\r\n  grid-auto-flow: column;\r\n}\r\n\r\n.item {\r\n  background-color: #f0f0f0;\r\n}</code></pre>\r\n\r\n<p>Here, we&rsquo;ve used&nbsp;<code>grid-auto-flow: column</code>&nbsp;to place items horizontally.</p>\r\n\r\n<p>By mastering these tips and tricks, you&rsquo;ll be able to create complex, responsive layouts using CSS Grid. Remember to experiment with different grid configurations and use the browser&rsquo;s built-in debugging tools to visualize your grid layout.</p>\r\n\r\n<p><strong>What&rsquo;s next?</strong></p>\r\n\r\n<p>Want to learn more about CSS Grid Layout? Stay tuned for our upcoming post on advanced CSS Grid techniques!</p>', '', '', '2024-08-03 18:38:09.024513', '2024-08-03 18:38:09.024513', NULL, 'draft', NULL, 0, '', '', '', 1, 0, '', NULL, 1, 12),
(16, 'Top Programming Languages to Dominate the Tech Industry in 2025', 'top-programming-languages-to-dominate-the-tech-industry-in-2025', 'article', '<p>The tech industry is constantly evolving, and with it, the programming languages that are in demand. In this blog post, we will take a look at the top programming languages that are expected to dominate the tech industry in 2025.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>What are the top programming languages for 2025?</p>\r\n\r\n<p>There are many different programming languages that are popular in the tech industry, but some are more in demand than others. Here are some of the top programming languages for 2025:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* **Python:** Python is a versatile language that is used for a variety of purposes, including web development, data science, and machine learning. It is also easy to learn, which makes it a popular choice for beginners.</p>\r\n\r\n<p>* **Java:** Java is a widely used language that is known for its stability and performance. It is used for a variety of purposes, including enterprise applications, Android app development, and big data processing.</p>\r\n\r\n<p>* **JavaScript:** JavaScript is the language of the web, and it is used for a variety of purposes, including front-end development, back-end development, and game development.</p>\r\n\r\n<p>* **C#:** C# is a language that is used for a variety of purposes, including game development, web development, and enterprise applications. It is known for its performance and scalability.</p>\r\n\r\n<p>* **C++:** C++ is a powerful language that is used for a variety of purposes, including system programming, game development, and scientific computing. It is known for its speed and efficiency.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>**Why are these programming languages so popular?**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There are a number of reasons why these programming languages are so popular. First, they are all very versatile and can be used for a variety of purposes. Second, they are all well-supported by a large community of developers. Third, they are all constantly being updated and improved.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>**How to learn these programming languages**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you are interested in learning one of these programming languages, there are a number of resources available to you. You can find tutorials, courses, and books on a variety of websites and platforms. You can also find a number of online communities where you can ask questions and get help from other developers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>**Conclusion**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The tech industry is constantly changing, and it is important to stay up-to-date on the latest trends. By learning one of the top programming languages for 2025, you can increase your chances of success in the tech industry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>**Additional tips for learning programming languages**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* **Start with a language that you are interested in.** There are a number of different programming languages available, so it is important to choose one that you are interested in learning.</p>\r\n\r\n<p>* **Set realistic goals.** Don&#39;t try to learn everything at once. Start with the basics and gradually build your knowledge.</p>\r\n\r\n<p>* **Practice regularly.** The best way to learn a programming language is to practice regularly.</p>\r\n\r\n<p>* **Don&#39;t be afraid to ask for help.** There are a number of online communities where you can ask questions and get help from other developers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I hope this blog post has been helpful. If you have any questions, please feel free to leave a comment below.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>**Additional resources**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>* [Python tutorial](https://www.python.org/about/gettingstarted/)</p>\r\n\r\n<p>* [Java tutorial](https://docs.oracle.com/javase/tutorial/)</p>\r\n\r\n<p>* [JavaScript tutorial](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)</p>\r\n\r\n<p>* [C# tutorial](https://docs.microsoft.com/en-us/dotnet/csharp/getting-started/)</p>\r\n\r\n<p>* [C++ tutorial](https://www.tutorialspoint.com/cplusplus/index.htm)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>### Introduction</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The tech industry is constantly evolving, and with it, the programming languages that are in demand. In this blog post, we will take a look at the top programming languages that are expected to dominate the tech industry in 2025. Staying updated with these languages can give developers a competitive edge in their careers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>### The Rise of Programming Languages in 2025</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#### 1. **Python**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Python has been one of the most popular programming languages for several years, and its dominance is expected to continue in 2025. Known for its simplicity and readability, Python is widely used in web development, data science, artificial intelligence, and more.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- **Web Development**: Frameworks like Django and Flask make web development quick and efficient.</p>\r\n\r\n<p>- **Data Science and AI**: Libraries such as Pandas, NumPy, and TensorFlow are crucial for data analysis and machine learning.</p>\r\n\r\n<p>- **Community Support**: Python&#39;s large and active community ensures continuous improvement and support.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#### 2. **JavaScript**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>JavaScript remains the backbone of web development, and its importance is not diminishing any time soon. With the rise of frameworks and libraries like React, Angular, and Vue.js, JavaScript continues to be a critical skill for front-end developers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- **Front-End Development**: Essential for creating interactive and dynamic web pages.</p>\r\n\r\n<p>- **Back-End Development**: With Node.js, JavaScript can also be used for server-side programming.</p>\r\n\r\n<p>- **Versatility**: JavaScript is used in various domains, including mobile app development with React Native.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#### 3. **Java**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Java has been a reliable and robust programming language for decades, and it remains a staple in the tech industry. Its use in enterprise-level applications and Android app development ensures its continued relevance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- **Enterprise Applications**: Java is commonly used in large-scale enterprise environments due to its stability and scalability.</p>\r\n\r\n<p>- **Android Development**: As the primary language for Android app development, Java remains crucial for mobile developers.</p>\r\n\r\n<p>- **Platform Independence**: Java&#39;s &quot;write once, run anywhere&quot; capability makes it versatile across different platforms.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#### 4. **C++**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C++ continues to be a powerful language, especially in system programming, game development, and performance-critical applications. Its performance and efficiency make it a preferred choice for developing high-performance software.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- **System Programming**: C++ is used for developing operating systems, browsers, and other system-level software.</p>\r\n\r\n<p>- **Game Development**: Many game engines, such as Unreal Engine, rely on C++ for performance-intensive tasks.</p>\r\n\r\n<p>- **Performance**: C++ offers fine-grained control over system resources, making it ideal for performance-critical applications.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#### 5. **Go**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Go, also known as Golang, has gained popularity for its simplicity and efficiency in building scalable and high-performance applications. Developed by Google, Go is particularly well-suited for cloud services and backend development.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- **Cloud Services**: Go&#39;s concurrency model makes it ideal for cloud-native applications and microservices.</p>\r\n\r\n<p>- **Performance**: Go compiles to machine code, offering excellent performance with fast execution times.</p>\r\n\r\n<p>- **Simplicity**: The language is designed to be simple and easy to learn, reducing the complexity of development.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#### 6. **Rust**</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rust has been gaining traction for its emphasis on safety and performance. It is particularly popular in systems programming and is known for preventing memory leaks and other common bugs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- **Safety**: Rust&rsquo;s ownership system ensures memory safety without a garbage collector.</p>\r\n\r\n<p>- **Concurrency**: Rust makes it easier to write concurrent programs without data races.</p>\r\n\r\n<p>- **Performance**: Rust is as fast as C++ but offers safer abstractions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>### Conclusion</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As we look towards 2025, staying ahead in the tech industry means keeping up with the languages that will drive innovation and development. Python, JavaScript, Java, C++, Go, and Rust are poised to dominate the industry. By mastering these languages, developers can ensure they remain relevant and competitive in a rapidly evolving field.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>---</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>### SEO Tips:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. **Use Long-Tail Keywords**: Include phrases like &quot;best programming languages 2025,&quot; &quot;top coding languages for developers,&quot; and &quot;future of programming.&quot;</p>\r\n\r\n<p>2. **Optimize Headings and Subheadings**: Use descriptive, keyword-rich headings and subheadings.</p>\r\n\r\n<p>3. **Internal Linking**: Link to other relevant articles on your blog.</p>\r\n\r\n<p>4. **External Linking**: Link to authoritative sources for credibility.</p>\r\n\r\n<p>5. **Meta Descriptions**: Write a compelling meta description for your post.</p>\r\n\r\n<p>6. **Image Alt Text**: Use descriptive alt text for any images you include.</p>\r\n\r\n<p>7. **Mobile Optimization**: Ensure your blog is mobile-friendly.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Let me know if you need any more sections or additional improvements!</p>', 'The tech landscape is in constant flux, with new programming languages emerging and existing ones evolving. To stay ahead in this dynamic environment, it\'s crucial to identify the languages poised to dominate the industry in the coming years. This post delves into the top programming languages predicted to be in high demand in 2025, exploring their key features, applications, and reasons for their projected prominence.', '', '2024-08-07 10:13:08.717008', '2024-08-08 07:56:49.031087', NULL, 'draft', 10, 0, 'Top Programming Languages to Master in 2025: Future-Proof Your Career', 'Discover the most in-demand programming languages for 2025. Learn about Python, Java, JavaScript, C#, C++ and more. Stay ahead of the curve and build a successf', 'programming languages, tech trends, 2025, Python, Java, JavaScript, C#, C++, software development, coding, web development, mobile development, data science, artificial intelligence, machine learning', 1, 0, '', NULL, 1, 15);
INSERT INTO `posts_article` (`id`, `title`, `slug`, `type`, `content`, `excerpt`, `image`, `published_date`, `updated_date`, `file_url`, `status`, `reading_time`, `views`, `seo_title`, `meta_description`, `meta_keywords`, `allow_comments`, `featured`, `references`, `youtube_url`, `author_id`, `category_id`) VALUES
(17, 'Step-by-Step Guide: Building a Django Website with Pre-Built HTML Template (Beginner-Friendly)', 'step-by-step-guide-building-a-django-website-with-pre-built-html-template-beginner-friendly', 'article', '<p><strong>Introduction</strong></p>\r\n\r\n<p>Creating a website from scratch can be overwhelming, especially if you&#39;re new to web development. However, with Django, a powerful Python web framework, and a pre-built HTML template, you can quickly set up a professional-looking website. In this tutorial, I&#39;ll walk you through the process of building a simple Django website using a pre-built HTML template, perfect for beginners or those looking to speed up their development process.</p>\r\n\r\n<p><strong>What You&rsquo;ll Need</strong></p>\r\n\r\n<ul>\r\n	<li>Basic knowledge of Python and Django</li>\r\n	<li>A pre-built HTML template (you can find free templates on sites like <a href=\"https://html5up.net/\" rel=\"noreferrer\" target=\"_new\">HTML5 UP</a> or <a href=\"https://bootstrapmade.com/\" rel=\"noreferrer\" target=\"_blank\">BootstrapMade</a>)</li>\r\n	<li>Python installed on your computer</li>\r\n	<li>A code editor (like VSCode)</li>\r\n</ul>\r\n\r\n<p><strong>Step 1: Set Up Your Django Project</strong></p>\r\n\r\n<p>First, ensure you have Django installed. If you haven&rsquo;t installed Django yet, you can do so with the following command:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">pip install django</code></pre>\r\n\r\n<p>Now, create a new Django project:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">django-admin startproject mysite\r\ncd mysite</code></pre>\r\n\r\n<p>This will create a new directory called <code>mysite</code> with the necessary files and folders for a Django project.</p>\r\n\r\n<p><strong>Step 2: Create a Django App</strong></p>\r\n\r\n<p>Within your project, you&rsquo;ll need to create an app. Django projects are split into apps, which are like modules or components of your project.</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py startapp core</code></pre>\r\n\r\n<p>This creates a new app called <code>core</code> where we&rsquo;ll handle the core functionalities of our website.</p>\r\n\r\n<p><strong>Step 3: Set Up the HTML Template</strong></p>\r\n\r\n<p>Next, download a pre-built HTML template. For this example, let&#39;s say you&#39;ve downloaded a template named <code>simple-website</code>.</p>\r\n\r\n<p>Create a directory within your <code>core</code> app called <code>templates</code>:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">mkdir -p core/templates/core</code></pre>\r\n\r\n<p>Move the HTML files from your template into this directory. If your template has assets like CSS and JavaScript, create a <code>static</code> directory to store them:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">mkdir -p static</code></pre>\r\n\r\n<p>Place the CSS, JavaScript, and image files from your template into the <code>static/main</code> folder.</p>\r\n\r\n<p><strong>Step 4: Configure Django to Use the Template</strong></p>\r\n\r\n<p>In the <code>mysite/settings.py</code> file, add your <code>core</code> app to the <code>INSTALLED_APPS</code> list:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">INSTALLED_APPS = [\r\n    ...\r\n    \'main\',\r\n]</code></pre>\r\n\r\n<p>Now, tell Django where to look for static files by adding the following settings:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">STATIC_URL = \'/static/\'\r\nSTATICFILES_DIRS = [BASE_DIR / \"static\"]</code></pre>\r\n\r\n<p>Next, create a view in the <code>main/views.py</code> file to render the template:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.shortcuts import render\r\n\r\ndef home(request):\r\n    return render(request, \'core/index.html\')</code></pre>\r\n\r\n<p>Here, <code>index.html</code> is the main HTML file from your pre-built template.</p>\r\n\r\n<p><strong>Step 5: Set Up URL Routing</strong></p>\r\n\r\n<p>To make sure Django knows which view to display, set up URL routing, create the <code>core/urls.py</code> file:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.urls import path\r\nfrom . import views\r\n\r\nurlpatterns = [\r\n    path(\'\', views.home, name=\'home\'),\r\n]</code></pre>\r\n\r\n<p>Then, include this in your main <code>mysite/urls.py</code> file:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">from django.contrib import admin\r\nfrom django.urls import include, path\r\n\r\nurlpatterns = [\r\n    path(\'admin/\', admin.site.urls),\r\n    path(\'\', include(\'core.urls\')),\r\n]</code></pre>\r\n\r\n<p><strong>Step 6: Run the Server</strong></p>\r\n\r\n<p>You&#39;re now ready to see your website in action! Run the Django development server with the following command:</p>\r\n\r\n<pre>\r\n<code class=\"language-bash\">python manage.py runserver</code></pre>\r\n\r\n<p>Visit <code>http://127.0.0.1:8000/</code> in your web browser, and you should see your HTML template rendered as a Django website.</p>\r\n\r\n<p><strong>Step 7: Customize the Template</strong></p>\r\n\r\n<p>Now that your template is integrated with Django, you can start customizing it. Replace static content with dynamic content from your database, add forms, or even set up user authentication.</p>\r\n\r\n<p>For example, to display dynamic content, you can pass context data from your view to the template:</p>\r\n\r\n<pre>\r\n<code class=\"language-python\">def home(request):\r\n    context = {\r\n        \'title\': \'Welcome to My Site\',\r\n        \'content\': \'This is a simple website built with Django.\',\r\n    }\r\n    return render(request, \'core/index.html\', context)</code></pre>\r\n\r\n<p>In your <code>index.html</code> file, you can use Django&#39;s template language to display this data:</p>\r\n\r\n<pre>\r\n<code class=\"language-html\">&lt;h1&gt;{{ title }}&lt;/h1&gt;\r\n&lt;p&gt;{{ content }}&lt;/p&gt;</code></pre>\r\n\r\n<p><strong>Conclusion</strong></p>\r\n\r\n<p>And that&#39;s it! You&#39;ve successfully built a Django website using a pre-built HTML template. From here, you can explore more Django features to enhance your site, such as adding forms, handling user authentication, or setting up a database.</p>\r\n\r\n<p>Building websites with Django doesn&rsquo;t have to be complicated, especially when you start with a pre-built template. This approach saves time and lets you focus on adding the unique features that make your site stand out.</p>\r\n\r\n<p>Happy coding!</p>\r\n\r\n<hr />\r\n<p><strong>Call to Action</strong></p>\r\n\r\n<p>If you found this guide helpful, be sure to subscribe to our newsletter for more tutorials and updates. And don&rsquo;t forget to leave a comment below if you have any questions or need further assistance!</p>', 'Learn how to build a simple Django website using a pre-built HTML template in this step-by-step guide. Perfect for beginners, this tutorial will help you quickly set up a professional-looking website with Django, saving time and effort.', '', '2024-08-08 18:17:26.419892', '2024-08-08 18:52:58.744484', NULL, 'draft', NULL, 0, 'How to Build a Django Website Using Pre-Built HTML Template: Step-by-Step Guide for Beginners', 'Discover how to build a simple Django website using a pre-built HTML template with this step-by-step tutorial. Get started quickly and efficiently!', 'Django website tutorial, build website with Django, Django HTML template, Django beginner guide, web development, Python Django, HTML templates, Django project setup', 1, 0, '', NULL, 1, 12),
(18, 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 'top-5-must-have-vscode-extensions-for-web-developers-to-boost-productivity', 'article', '<p>As a web developer, your choice of code editor is the first and most important decision to make as it will be the most crucial tool throughout your development journey. Visual Studio Code (Vscode by Microsoft) has become the primary choice for many developers due to its lightweight nature, robust features, and the ability to extend your coding capabilities through extensions. To help you make the most out of Vscode , below is a compiled a list of the top 5 must-have extensions that can significantly boost your productivity. This list has been crafted to fit web development specifically, but some of them have more general applications which are fit for other aspects of programming. So get your code editor ready as we explore each extension one by one.</p><p>&nbsp;</p><h2>What Are Extensions?</h2><p>In Vscode extensions are additional software modules or packages that enhance the functionality of Vscode. They &nbsp;allow you as a developer to extend the capabilities of Vscode to better suit your development needs. They generally offer feature and functions that can...</p><p>- Improve coding efficiency</p><p>- Enhance code quality</p><p>- Support new programming languages with extra features&nbsp;</p><p>- Integrate with other tools and services</p><p>- Customize the editor\'s appearance and behavior</p><p>And so on.</p><p>&nbsp;</p><p>&nbsp;</p><hr><h2>Top Five Extensions&nbsp;</h2><h3>&nbsp;</h3><h3>1. <strong>Prettier – Code Formatter</strong></h3><p>Maintaining a consistent coding style is crucial for enhancing readability within software development projects. Prettier is an opinionated code formatter that automates the process of ensuring consistent formatting by analyzing and reformatting code according to its predefined rules. This extension supports a wide range of programming languages, including JavaScript, JSX, Angular, TypeScript, CSS, HTML,, JSON, GraphQL, Markdown, and more. By eliminating the need for manual formatting, Prettier significantly improves the development workflow and contributes to a more consistent and maintainable codebase. Much better than manual code formatting right?</p><p><strong>Key Features:</strong></p><ul><li>Automatic code formatting on save.</li><li>Support for a wide range of languages.</li><li>Easy configuration through <code>.prettierrc</code> files.</li></ul><p><strong>Why You Need It:</strong> Prettier saves time and eliminates debates about code style, allowing you to focus more on coding and less on formatting.</p><p><strong>Preview:</strong></p><figure class=\"image\"><img style=\"aspect-ratio:1600/866;\" src=\"/media/Screenshot%20(282).png\" width=\"1600\" height=\"866\"></figure><hr><h3>2. <strong>CodeSnap</strong></h3><p>Ever tried to share a code snippet with someone and ended up with a boring screenshot of plain text? It\'s like trying to show off a delicious cake by just describing it – you need to see it to really appreciate it! That\'s what CodeSnap does. It\'s a tool that turns your code into a fancy little picture. Think of it as a code makeover!&nbsp;</p><figure class=\"image image-style-align-center image_resized\" style=\"width:64.91%;\"><img style=\"aspect-ratio:1250/558;\" src=\"/media/code.png\" alt=\"codesnap example\" width=\"1250\" height=\"558\"></figure><p>&nbsp;</p><p>Now you can share your code on social media, blogs, or even in presentations and make it look super cool and professional.</p><p><strong>Key Features:</strong></p><ul><li>Easily select and capture code snippets.</li><li>Customizable themes and settings.</li><li>Option to add a background color or remove it entirely.</li></ul><p><strong>Why You Need It:</strong> Whether you\'re sharing code snippets on Twitter or adding them to your blog, CodeSnap makes your code look professional and visually appealing, it\'s that simple. Sharing content that look visually appealing will tell greatly on your credibility.</p><p><strong>Preview:</strong></p><figure class=\"image\"><img style=\"aspect-ratio:1600/866;\" src=\"/media/Screenshot%20(281).png\" alt=\"Codesnap Preview\" width=\"1600\" height=\"866\"></figure><hr><h3>3. <strong>Live Server</strong></h3><p>It is always a hassle to go back to your browser and refresh every time you make changes to your code just so you can see the result. Ever wished you could see your website changes instantly as you typed them? It\'s like having a magic mirror that shows you your new look as soon as you put it on! That\'s what the Live Server extension does. It\'s a tool that creates a little private website on your computer, and every time you save a change, it updates the website automatically. So you can see how your website looks without having to manually refresh the page a million times.</p><p><strong>Key Features:</strong></p><ul><li>Real-time browser updates as you code.</li><li>Support for both static and dynamic content.</li><li>Integrated with Vscode for easy setup.</li></ul><p><strong>Why You Need It:</strong> Live Server eliminates the need to manually refresh your browser, speeding up your development process and allowing you to see the impact of your changes immediately. Pretty awesome right?</p><p><strong>Preview:&nbsp;</strong></p><figure class=\"image\"><img style=\"aspect-ratio:1600/870;\" src=\"/media/Screenshot%20(283).png\" width=\"1600\" height=\"870\"></figure><hr><h3>4. <strong>Auto Rename Tag</strong></h3><p>Ever spent ages renaming tags in your HTML or XML code? It\'s like trying to change all the \'e\'s to \'a\'s in a long book – it\'s tedious and easy to make mistakes. With regards to that, Auto Rename Tag is a lifesaver! It\'s a tool that automatically updates the closing tag when you change the opening one, and vice versa. So you don\'t have to worry about forgetting or typing the wrong tag name anymore.</p><p><strong>Key Features:</strong></p><ul><li>Real-time tag renaming.</li><li>Support for HTML, XML, and JSX.</li><li>No configuration needed—just install and use.</li></ul><p><strong>Why You Need It:</strong> This extension reduces the chances of mismatched tags and speeds up your workflow, especially when dealing with complex nested structures.</p><p><strong>Preview:</strong></p><figure class=\"image\"><img style=\"aspect-ratio:1600/868;\" src=\"/media/Screenshot%20(307).png\" width=\"1600\" height=\"868\"></figure><hr><h3>5. <strong>Tabnine</strong></h3><p>Tabnine is a powerful AI-powered code completion tool designed to significantly enhance your coding productivity. By analyzing your coding patterns and utilizing advanced machine learning algorithms, Tabnine provides intelligent code suggestions that seamlessly integrate into your development workflow. Mostly. Sometimes, it\'s almost as if it reads your mind and predicts exactly what code block you\'d like to add next.</p><blockquote><p><strong>You</strong>: Okay, what code should I type next?</p><p><strong>Tabnine</strong>: It\'s alright, don\'t think much, I got you. Just get lazy &nbsp;; )</p></blockquote><p>&nbsp;Whether you\'re working on a small script or a large-scale project, Tabnine’s ability to predict and suggest relevant code snippets can save you valuable time and reduce the likelihood of errors. As you continue to use Tabnine, its suggestions become increasingly tailored to your specific coding style and preferences, making it an indispensable asset for developers of all levels.</p><p>It also comes with a chat feature where you can chat with the AI and ask it questions related to your code.</p><figure class=\"image image_resized\" style=\"width:69.65%;\"><img style=\"aspect-ratio:1280/375;\" src=\"/media/Screenshot%20(309).png\" width=\"1280\" height=\"375\"></figure><p>&nbsp;</p><p><strong>Key Features:</strong></p><ul><li>AI-driven code completion.</li><li>Support for multiple languages and frameworks.</li><li>Context-aware suggestions that improve over time.</li><li>Chat feature</li></ul><p><strong>Why You Need It:</strong> Tabnine enhances your coding efficiency by predicting and suggesting entire lines of code, reducing the amount of typing you need to do and helping you avoid common mistakes and bugs.</p><p><strong>Preview:</strong></p><figure class=\"image\"><img style=\"aspect-ratio:1600/868;\" src=\"/media/Screenshot%20(285).png\" width=\"1600\" height=\"868\"></figure><hr><h3>Conclusion</h3><p>Incorporating these five Vscode extensions into your workflow can greatly enhance your productivity as a web developer. Whether you\'re looking to maintain clean and consistent code with Prettier, capture beautiful code snippets with CodeSnap, or speed up your development process with Live Server, Auto Rename Tag, and Tabnine, these tools are sure to make your coding experience smoother and more efficient.</p><p>There you have it. Our top five Vscode extensions to boost your productivity. If you\'ve enjoyed this post please be kind to leave a comment expressing your thoughts or questions you might have on the topic.</p>', 'Discover the top 10 VSCode extensions that every web developer should have to boost productivity. From code formatting to live server and Git integration, these extensions will streamline your workflow and enhance your coding experience.', 'articles/20240819_104455.jpg', '2024-08-08 19:36:26.515347', '2024-08-20 10:07:50.780722', NULL, 'published', 5, 33, 'Top 5 Must-Have VSCode Extensions for Web Developers to Boost Productivity', 'Boost your productivity as a web developer with these top 5 VSCode extensions. Learn how Prettier, CodeSnap, Live Server, Auto Rename Tag, and Tabnine can strea', 'VSCode extensions, web development tools, Prettier, CodeSnap, Live Server, Auto Rename Tag, Tabnine, productivity, code formatting', 1, 0, '', NULL, 1, 4),
(19, 'Reviewing 3 HTML-Only Websites: Developer Insights on Speed Optimization and Minimalist Design', 'reviewing-3-html-only-websites-developer-insights-on-speed-optimization-and-minimalist-design', 'article', '<p>With the popularity of visually complex, feature-rich and animated websites today, it’s easy to forget the power and efficiency of a well-structured HTML-only website owing&nbsp;to the face that everyone ants to build something beautiful and visually appealing. After all, the best marketing&nbsp;strategies are those that can appeal to what the user can see. As a beginner web developer with decent skills, you might have fallen pery to that trend, but good designs are often the simplest and most applicable. I\'ve taken the time to review three websites that stick to the basics, relying solely on HTML. In this post, I’ll rate each website based on key performance metrics, highlight the advantages of minimalist design, and offer advice to aspiring web developers on how to maximize website speed and load time by focusing on what truly matters.</p><h2>Why HTML-Only Websites?</h2><p>Before we continue, it’s important to understand why someone might choose to create an HTML-only website in the first place. HTML-only websites are stripped of the complexities of JavaScript, CSS frameworks, and heavy images or videos. This makes them incredibly fast to load, easy to maintain, responsive by default and highly efficient. These websites are often used for quick-loading pages, landing pages, or situations where content is prioritized over esthetics.</p><h2>Website 1: <a href=\"https://info.cern.ch/hypertext/WWW/TheProject.html\">WWW/TheProject.html</a></h2><p><img class=\"image_resized\" style=\"width:100%;\" src=\"/media/media/2024/08/10/screenshot-273.png\" alt=\"\"></p><h3><strong>Overview</strong>:</h3><p>The first website on the list is the first ever website on the internet, The WWW Project. The site uses basic HTML tags to structure its content, with no external stylesheets or scripts owing to the fact that those didn\'t exist at the time. Published by Tim Bernes Lee in 1991.</p><h3><strong>Performance:</strong></h3><ul><li><strong>Load Time:</strong> 402&nbsp;ms (0.4&nbsp;Milliseconds)</li><li><strong>Page Size:</strong> 196&nbsp;B</li><li><strong>SEO:</strong> Well-structured, with appropriate use of headings and links.</li></ul><p><strong>Rating:</strong> 4.0/5<br><strong>Review:</strong><br>I don\'t mean to exaggerate my fondness for the site, but considering the time it was made and the existence of no other means of styling, Tim Bernes did a pretty good job of keeping the contents in order. The load time is almost instantaneous, and the minimalist design ensures that the reader\'s attention is solely on the content. However, a slight downside is the lack of visual appeal, which might deter some users. For its purpose, though, this site excels.</p><p>&nbsp;</p><h2>Website 2: <a href=\"https://fatih-erikli.com/\">fatih-erikli.com</a></h2><p><img class=\"image_resized\" style=\"width:100%;\" src=\"/media/media/2024/08/10/screenshot-275.png\" alt=\"\"></p><h3><strong>Overview</strong>:</h3><p>The second site is a portfolio for a freelancer. It includes only a name, skill, and a call to action button to send a mail if you want to hire, all built with just HTML.</p><h3><strong>Performance:</strong></h3><ul><li><strong>Load Time:</strong> 1.87&nbsp;s</li><li><strong>Page Size:</strong>&nbsp;2.3&nbsp;KB</li><li><strong>SEO:</strong> The only media on the site is a favicon.</li></ul><p><strong>Rating:</strong>&nbsp;2.5/5<br><strong>Review:</strong><br>I am rating it this low because I really believe the creator could have done more for content. The site is practically empty containing only a name and a button, and not even up to ten words yet it took almost two seconds to load. Definitely contradicts the idea of a fast loading website with minimal design. It\'s a good one though.</p><p>&nbsp;</p><h2>Website 3: <a href=\"https://motherfuckingwebsite.com/\">You Really Need To Check This One Out</a>&nbsp;.</h2><p><img class=\"image_resized\" style=\"width:100%;\" src=\"/media/media/2024/08/10/screenshot-274_zFvuTqG.png\" alt=\"\"></p><h2><strong>Overview</strong>:</h2><p>The final site is a m***********g website ?. it features a single page with no links, no images and just some headers, paragraphs and lists. It\'s main selling point though is it\'s aggressive use of strong language, definitely got the point through.</p><h2><strong>Performance:</strong></h2><ul><li><strong>Load Time:</strong> 799&nbsp;ms (0.7 Milliseconds)</li><li><strong>Page Size:</strong> 215&nbsp;B</li><li><strong>SEO:</strong> Plenty of content, but strong language... Really strong language.&nbsp;It gets about 1600 visitors per day.</li></ul><p><strong>Rating:</strong>&nbsp;4.5/5<br><strong>Review:</strong><br>This landing page does its job effectively, Despite the intense language, it still manages to prove the point of effective communication and site efficiency. It has quite the content yet it managed to turn a blind eye to the temptation of adding even a single media or styling. The creator definitely deserves an award ?</p><p>&nbsp;</p><h2>Tips for Aspiring Web Developers</h2><p>If you’re an aspiring or an established web developer, here are some key takeaways from these HTML-only websites:</p><ol><li><strong>Prioritize Speed:</strong><br>The less you load, the faster your site will be. Stick to the essentials and avoid unnecessary code or assets. It might be difficult to ignore the temptation of designing beautiful website, but the most important thing is getting your message across, and slow loading websites will discourage some people.</li><li><strong>Optimize for SEO:</strong><br>Even with limited content, ensure your HTML is well-structured. Use appropriate headings, meta tags, and alt text for any images. For&nbsp;those already into building complex web apps, this is a good point to take note of.</li><li><strong>Minimalist Design:</strong><br>Focus on delivering the core message or functionality of your site. Minimalist design is not about stripping everything away but about emphasizing what’s truly necessary.Over complicating designs and site functions just confuses the majority of you visitors. Keep it simple</li><li><strong>Consider User Experience:</strong><br>While speed is crucial, don’t neglect the user experience. A touch of styling, even if minimal, can enhance readability and engagement.&nbsp;</li><li><strong>Testing and Iteration:</strong><br>Test your site across different devices and browsers to ensure consistent performance.</li></ol><p>&nbsp;</p><h2>Conclusion</h2><p>HTML-only websites may seem outdated in a world filled with dynamic, interactive sites, but they still hold a significant place in web development.&nbsp;Build a fast-loading landing page, a minimalist blog, or a simple portfolio, keeping your design and code minimal can lead to excellent performance and user satisfaction. Remember, it’s not always about the number of features you can pack into a site; sometimes, less truly is more.</p><blockquote><p>\"Good Design Is As Little Design As Possible.\"</p><p>--&nbsp;Dieter Rams</p></blockquote><p>If you\'ve gained valuable insight from this post, or have a question or remark, please leave a comment below and share your thoughts. Be sure to subscribe to our newsletter to get notified on new interesting contents like this one. Share this post to friends and others you feel will gain from it as you have.</p>', 'Explore the power of simplicity with our review of three HTML-only websites. Discover how minimalist design can enhance website speed and performance, and learn tips for building fast, efficient websites that prioritize user experience.', 'articles/3_HTML-Only_Websites.png', '2024-08-10 07:34:14.792839', '2024-08-21 16:12:04.454120', NULL, 'published', 5, 96, 'Top 3 HTML-Only Websites Reviewed: Speed, Performance & Minimalist Design Tips', 'Discover how HTML-only websites can maximize speed and performance with our review of three minimalist sites. Learn tips for building fast, efficient websites.', 'HTML websites, minimalist design, website speed, load time optimization, web development tips, SEO optimization, website performance, web developer advice', 1, 0, 'https://devpractical.com/html-only-websites/', NULL, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `posts_articleview`
--

CREATE TABLE `posts_articleview` (
  `id` bigint NOT NULL,
  `ip_address` char(39) COLLATE utf8mb4_general_ci NOT NULL,
  `user_agent` longtext COLLATE utf8mb4_general_ci,
  `referrer` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `viewed_on` datetime(6) NOT NULL,
  `article_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_articleview`
--

INSERT INTO `posts_articleview` (`id`, `ip_address`, `user_agent`, `referrer`, `viewed_on`, `article_id`) VALUES
(1, '105.113.90.118', NULL, NULL, '2024-08-05 09:39:38.204787', 14),
(2, '102.90.65.165', NULL, NULL, '2024-08-05 09:40:47.908750', 9),
(3, '74.125.216.64', NULL, NULL, '2024-08-05 09:42:46.451750', 9),
(4, '102.90.66.35', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '', '2024-08-05 10:24:02.217406', 9),
(5, '102.90.57.249', 'WhatsApp/2.23.20.0', '', '2024-08-05 11:33:50.719600', 14),
(6, '102.90.65.6', 'WhatsApp/2.23.20.0', '', '2024-08-05 11:34:09.031987', 14),
(7, '105.113.63.80', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-05 11:35:07.419657', 14),
(8, '37.111.164.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-05 11:48:06.159121', 14),
(9, '178.250.7.69', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-05 11:49:35.819364', 14),
(10, '100.24.66.143', 'Opera/9.80 (Macintosh; Intel Mac OS X 10_14_5; U; en) Presto/2.7.62 Version/11.00', 'https://www.google.com/', '2024-08-05 12:04:51.852842', 14),
(11, '105.119.6.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', '', '2024-08-05 15:11:18.750840', 14),
(12, '197.210.55.118', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-05 15:18:09.079621', 14),
(13, '152.67.138.180', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-05 15:19:48.316604', 14),
(14, '132.145.9.5', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-05 15:19:48.650453', 14),
(15, '105.113.104.250', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '', '2024-08-05 15:37:01.545910', 14),
(16, '102.90.44.132', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-05 16:04:52.250858', 14),
(17, '129.205.113.169', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', '2024-08-05 16:05:41.327601', 10),
(18, '102.90.65.161', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', '2024-08-05 16:16:30.547815', 14),
(19, '102.90.47.120', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', '2024-08-05 17:26:29.905397', 14),
(20, '44.226.39.139', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-05 17:26:58.820829', 14),
(21, '197.210.79.102', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', '2024-08-05 17:46:11.354692', 14),
(22, '102.90.58.222', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', '2024-08-05 18:20:41.024485', 14),
(23, '102.88.82.5', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.5 Mobile/15E148 Safari/604.1', '', '2024-08-05 18:30:38.375743', 14),
(24, '102.90.65.143', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', '2024-08-05 18:58:22.566088', 14),
(25, '102.90.58.167', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-05 18:59:59.220399', 5),
(26, '66.249.92.160', 'Mediapartners-Google', '', '2024-08-05 19:02:04.015813', 5),
(27, '152.67.137.35', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-05 19:03:37.633497', 5),
(28, '102.90.58.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-05 22:56:55.456931', 10),
(29, '140.238.94.137', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-05 23:00:48.536087', 10),
(30, '132.145.66.116', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-05 23:00:48.756072', 10),
(31, '31.13.127.16', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:37.602973', 14),
(32, '173.252.107.9', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:43.710415', 14),
(33, '173.252.107.15', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:43.857618', 14),
(34, '31.13.127.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:45.190542', 14),
(35, '31.13.127.12', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:48.923642', 14),
(36, '69.171.230.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:49.284994', 14),
(37, '69.171.230.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:25:49.527649', 14),
(38, '31.13.127.17', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:26:02.611243', 14),
(39, '31.13.127.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:26:02.749932', 14),
(40, '173.252.127.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-05 23:26:10.099964', 14),
(41, '173.252.107.112', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:26:42.867574', 14),
(42, '31.13.103.115', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:27:17.865180', 14),
(43, '66.249.92.160', 'Mediapartners-Google', '', '2024-08-05 23:28:00.052097', 14),
(44, '69.171.231.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:33:16.302837', 14),
(45, '31.13.127.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:33:37.318273', 14),
(46, '31.13.127.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-05 23:33:41.568922', 14),
(47, '102.89.47.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-06 04:34:49.181678', 14),
(48, '102.89.46.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-06 05:07:43.833582', 14),
(49, '197.210.79.90', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-06 07:21:13.612476', 14),
(50, '149.154.161.212', 'TelegramBot (like TwitterBot)', '', '2024-08-06 07:59:58.990730', 14),
(51, '105.113.70.209', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-06 08:01:55.843057', 14),
(52, '132.145.11.125', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-06 08:14:06.819043', 14),
(53, '132.145.66.116', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-06 08:14:07.307703', 14),
(54, '197.210.79.90', 'Mozilla/5.0 (Linux; Android 9; K) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/127.0.6533.84 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', '2024-08-06 08:44:05.513810', 10),
(55, '102.90.47.162', 'Mozilla/5.0 (Linux; Android 13; 2201116TG Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/127.0.6533.81 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/475.1.0.46.82;]', 'https://lm.facebook.com/', '2024-08-06 08:45:16.754792', 14),
(56, '69.171.249.12', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-06 08:47:42.011153', 14),
(57, '102.90.64.250', 'WhatsApp/2.23.20.0', '', '2024-08-06 10:36:21.167714', 14),
(58, '102.90.57.145', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-06 10:38:52.737717', 10),
(59, '178.250.1.79', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-06 10:39:58.413335', 10),
(60, '102.90.66.59', 'WhatsApp/2.23.20.0', '', '2024-08-06 10:40:32.184884', 10),
(61, '102.88.68.33', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-06 10:59:17.331828', 10),
(62, '129.205.124.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/25.0 Chrome/121.0.0.0 Mobile Safari/537.36', '', '2024-08-06 11:34:29.246701', 14),
(63, '197.210.84.148', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-06 12:18:55.130256', 14),
(64, '212.100.80.208', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-06 15:08:35.973190', 14),
(65, '197.210.55.185', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-06 16:09:05.681112', 10),
(66, '102.90.45.84', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-06 18:28:21.285125', 14),
(67, '197.211.58.219', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-07 03:05:11.257798', 14),
(68, '66.249.89.39', 'Mediapartners-Google', '', '2024-08-07 03:05:52.668151', 14),
(69, '74.119.117.141', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-07 03:06:04.900209', 14),
(70, '197.211.58.219', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', '2024-08-07 03:07:03.376754', 9),
(71, '66.249.89.38', 'Mediapartners-Google', '', '2024-08-07 03:07:52.766662', 9),
(72, '74.119.117.141', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-07 03:09:57.069885', 9),
(73, '148.72.152.38', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-07 09:17:06.067150', 14),
(74, '188.138.17.213', 'ias-ie/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-07 10:19:45.108994', 10),
(75, '102.90.57.7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-07 10:31:02.905169', 13),
(76, '102.90.65.9', 'WhatsApp/2.23.20.0', '', '2024-08-07 10:32:59.147498', 13),
(77, '66.249.89.32', 'Mediapartners-Google', '', '2024-08-07 10:33:20.071707', 13),
(78, '102.90.66.191', 'WhatsApp/2.23.20.0', '', '2024-08-07 10:34:39.744724', 13),
(79, '149.154.161.235', 'TelegramBot (like TwitterBot)', '', '2024-08-07 10:37:23.019620', 13),
(80, '154.113.101.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '', '2024-08-07 10:37:43.088488', 14),
(81, '154.113.101.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '', '2024-08-07 10:39:41.686807', 10),
(82, '140.238.95.47', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-07 10:41:22.907103', 10),
(83, '102.90.64.12', 'WhatsApp/2.23.20.0', '', '2024-08-07 10:42:30.226124', 13),
(84, '102.90.64.12', 'WhatsApp/2.23.20.0', '', '2024-08-07 10:42:37.444015', 14),
(85, '140.238.83.181', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-07 10:45:12.397008', 13),
(86, '102.90.66.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-07 10:52:18.205645', 13),
(87, '209.126.110.106', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-07 10:52:29.030294', 13),
(88, '178.250.7.70', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-07 10:53:20.772871', 13),
(89, '102.90.57.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5.1 Mobile/21F90 Safari/604.1', '', '2024-08-07 11:01:45.171828', 13),
(90, '140.238.81.78', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-07 11:33:06.971052', 14),
(91, '102.90.64.241', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-07 12:22:45.243705', 13),
(92, '34.1.29.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', '', '2024-08-07 13:28:08.568273', 14),
(93, '102.89.22.236', 'Mozilla/5.0 (Linux; Android 10; Infinix X657B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.6045.193 Mobile Safari/537.36 OPR/79.2.4195.76518', 'https://cn.coursearena.com.ng/', '2024-08-07 19:43:01.244818', 10),
(94, '74.125.216.71', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:05.362624', 10),
(95, '74.125.216.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:06.242541', 9),
(96, '74.125.216.64', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:06.581831', 14),
(97, '74.125.216.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:06.937982', 10),
(98, '74.125.216.64', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:07.123855', 5),
(99, '74.125.216.71', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:07.142830', 9),
(100, '74.125.216.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-07 22:44:07.307092', 5),
(101, '74.125.216.64', 'Mediapartners-Google', '', '2024-08-07 22:46:31.664357', 10),
(102, '74.125.216.71', 'Mediapartners-Google', '', '2024-08-07 22:46:32.256786', 5),
(103, '197.210.79.118', 'WhatsApp/2.23.20.0', '', '2024-08-08 00:38:27.372225', 13),
(104, '197.210.79.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-08 00:48:11.169130', 14),
(105, '178.250.1.83', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-08 00:48:16.645411', 14),
(106, '197.210.79.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', '2024-08-08 01:03:38.020238', 9),
(107, '197.210.79.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-08 01:52:23.752732', 10),
(108, '31.13.127.5', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 01:52:36.527156', 10),
(109, '31.13.127.112', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 01:52:38.837685', 10),
(110, '31.13.127.8', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 01:52:38.977336', 10),
(111, '173.252.79.113', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 01:52:49.583715', 10),
(112, '31.13.127.3', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 01:59:01.364243', 10),
(113, '69.171.231.112', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:00:54.922329', 10),
(114, '69.171.231.3', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:00:55.222318', 10),
(115, '31.13.127.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:00:58.125269', 10),
(116, '173.252.95.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-08 02:01:20.158799', 10),
(117, '69.171.249.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:01:54.683170', 10),
(118, '69.63.184.13', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:01:54.770473', 10),
(119, '173.252.87.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:02:19.733536', 10),
(120, '31.13.115.10', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 02:08:27.031412', 10),
(121, '197.210.78.223', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', '', '2024-08-08 04:01:58.769526', 10),
(122, '132.145.67.248', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-08 04:34:08.543035', 10),
(123, '152.67.138.180', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-08 04:34:09.148476', 10),
(124, '102.89.47.172', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-08 05:08:47.909866', 10),
(125, '197.210.79.109', 'Mozilla/5.0 (Linux; Android 11; Infinix X6511B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36', '', '2024-08-08 05:30:58.058702', 10),
(126, '197.211.61.139', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', '2024-08-08 07:23:37.255856', 9),
(127, '197.210.78.200', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-08 07:40:27.403496', 13),
(128, '152.67.128.219', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-08 07:46:48.619164', 13),
(129, '197.210.76.147', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-08 09:02:52.884202', 10),
(130, '62.138.14.139', 'ias-ie/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-08 10:18:20.948698', 14),
(131, '207.38.88.80', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-08 12:41:51.507175', 10),
(132, '102.90.66.177', 'Mozilla/5.0 (Linux; Android 11; Infinix X6511B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36', '', '2024-08-08 16:11:18.329347', 10),
(133, '35.212.115.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'https://www.google.com', '2024-08-08 16:36:55.622801', 14),
(134, '102.90.66.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-08 20:28:26.556833', 6),
(135, '66.249.92.162', 'Mediapartners-Google', '', '2024-08-08 20:29:05.001575', 6),
(136, '102.90.66.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-08 20:29:29.725565', 11),
(137, '66.249.92.160', 'Mediapartners-Google', '', '2024-08-08 20:31:04.678337', 11),
(138, '31.13.127.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 20:34:30.876310', 11),
(139, '31.13.127.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 20:34:34.858630', 11),
(140, '31.13.127.25', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 20:34:35.087426', 11),
(141, '173.252.79.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-08 20:34:45.248517', 11),
(142, '178.250.7.65', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-09 04:16:39.721156', 14),
(143, '102.89.33.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-09 05:59:26.085554', 14),
(144, '102.90.57.146', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-09 06:43:08.851470', 11),
(145, '102.90.67.98', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-09 06:45:37.915425', 11),
(146, '148.72.153.55', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-09 06:45:41.224302', 11),
(147, '132.145.11.125', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-09 06:47:34.374038', 11),
(148, '102.90.64.202', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-09 06:47:44.014767', 11),
(149, '178.250.1.66', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-09 06:50:28.896968', 11),
(150, '197.210.85.40', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-09 07:02:21.901575', 11),
(151, '102.88.81.54', 'Mozilla/5.0 (Linux; Android 11; TECNO BD1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '', '2024-08-09 07:02:55.029973', 11),
(152, '102.90.65.173', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-09 10:34:12.185568', 11),
(153, '102.90.64.24', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-09 10:43:09.675042', 11),
(154, '102.88.68.121', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-09 10:47:42.327064', 11),
(155, '140.238.83.181', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-09 10:54:52.588647', 11),
(156, '102.91.92.136', 'Mozilla/5.0 (Linux; Android 11; TECNO BD1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '', '2024-08-09 11:58:14.255787', 11),
(157, '102.90.64.68', 'WhatsApp/2.23.20.0', '', '2024-08-09 12:30:50.394641', 11),
(158, '148.72.152.245', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-09 13:54:33.253290', 14),
(159, '197.211.58.211', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-09 16:22:37.263925', 11),
(160, '132.145.64.33', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-09 17:26:54.115196', 11),
(161, '140.238.81.78', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-09 17:26:54.160942', 11),
(162, '197.211.59.166', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-09 21:40:03.691763', 11),
(163, '154.113.101.4', 'WhatsApp/2.2429.10 W', '', '2024-08-10 07:08:08.709768', 11),
(164, '154.113.101.4', 'WhatsApp/2.2429.10 W', '', '2024-08-10 07:08:23.467315', 10),
(165, '154.113.101.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-10 16:34:30.874903', 19),
(166, '66.249.92.161', 'Mediapartners-Google', '', '2024-08-10 16:35:51.180665', 19),
(167, '102.90.65.144', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 16:47:05.608333', 19),
(168, '140.238.94.137', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-10 16:52:19.946284', 19),
(169, '102.90.64.79', 'WhatsApp/2.23.20.0', '', '2024-08-10 17:07:06.869752', 19),
(170, '102.90.57.95', 'WhatsApp/2.23.20.0', '', '2024-08-10 17:09:40.375629', 19),
(171, '31.13.127.21', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:09.809832', 19),
(172, '31.13.127.18', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:17.050301', 19),
(173, '31.13.127.26', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:17.415331', 19),
(174, '173.252.107.115', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:17.780236', 19),
(175, '173.252.79.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:18.022249', 19),
(176, '173.252.107.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:18.206356', 19),
(177, '173.252.79.8', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:18.411867', 19),
(178, '31.13.103.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:19.071323', 19),
(179, '31.13.103.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:19.222480', 19),
(180, '173.252.83.43', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:20.795871', 19),
(181, '69.171.231.115', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:21.289310', 19),
(182, '173.252.87.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', '2024-08-10 17:16:25.181565', 19),
(183, '69.171.249.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:26.131628', 19),
(184, '173.252.95.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:27.797682', 19),
(185, '66.220.149.20', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:27.842242', 19),
(186, '31.13.127.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:34.169221', 19),
(187, '31.13.127.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:34.277986', 19),
(188, '31.13.127.5', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:34.399303', 19),
(189, '31.13.127.22', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:34.534190', 19),
(190, '31.13.115.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', '', '2024-08-10 17:16:45.461200', 19),
(191, '69.171.234.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:16:58.496840', 19),
(192, '31.13.127.14', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-10 17:17:18.484229', 19),
(193, '66.249.92.162', 'Mediapartners-Google', '', '2024-08-10 17:17:52.461346', 19),
(194, '105.112.217.252', 'WhatsApp/2.23.20.0', '', '2024-08-10 17:24:34.722636', 19),
(195, '35.212.115.150', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/116.0.5845.177 Mobile/15E148 Safari/604.1', 'https://www.google.com', '2024-08-10 17:31:07.235926', 13),
(196, '197.210.78.66', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-10 17:34:39.106896', 19),
(197, '129.205.113.177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-10 17:35:56.294544', 19),
(198, '102.90.64.41', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-10 17:41:32.237142', 19),
(199, '197.210.227.73', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 17:42:49.244260', 19),
(200, '102.91.4.230', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/109.0.5414.83 Mobile/15E148 Safari/604.1', '', '2024-08-10 17:50:06.506784', 19),
(201, '149.154.161.234', 'TelegramBot (like TwitterBot)', '', '2024-08-10 17:50:09.810086', 19),
(202, '178.250.7.64', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-10 17:51:23.740318', 19),
(203, '102.88.71.204', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 17:58:45.181118', 19),
(204, '66.249.93.11', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', '', '2024-08-10 17:58:52.918471', 19),
(205, '66.249.83.129', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', '', '2024-08-10 17:58:53.721984', 19),
(206, '66.102.8.38', 'Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', '', '2024-08-10 17:58:53.827863', 19),
(207, '102.90.64.33', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 18:07:25.055864', 19),
(208, '197.210.71.164', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.92 Mobile Safari/537.36', '', '2024-08-10 18:13:33.725495', 19),
(209, '102.90.58.83', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-10 18:20:24.594861', 19),
(210, '105.113.71.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 18:44:10.719084', 19),
(211, '197.210.55.95', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 18:45:06.908843', 19),
(212, '197.210.227.63', 'WhatsApp/2.23.20.0', '', '2024-08-10 18:45:31.567905', 11),
(213, '102.90.65.151', 'WhatsApp/2.23.20.0', '', '2024-08-10 19:00:52.286800', 11),
(214, '102.89.33.111', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 19:07:29.046427', 11),
(215, '197.210.227.63', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-10 19:08:54.274249', 19),
(216, '105.112.235.117', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-10 19:30:49.887913', 19),
(217, '105.113.30.152', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', '', '2024-08-10 19:40:56.749030', 19),
(218, '105.112.123.212', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36', '', '2024-08-10 19:43:35.391567', 19),
(219, '129.205.124.170', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-10 19:57:32.665335', 19),
(220, '132.145.15.209', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-10 20:20:59.189875', 19),
(221, '132.145.64.33', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-10 20:20:59.309290', 19),
(222, '102.90.45.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 20:34:44.190147', 19),
(223, '102.88.83.56', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-10 20:39:51.472708', 11),
(224, '105.112.224.103', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-10 20:47:16.048095', 19),
(225, '178.250.7.71', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-10 20:48:41.078629', 11),
(226, '152.67.137.35', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-10 20:50:15.994524', 11),
(227, '132.145.14.70', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-10 20:50:16.366127', 11),
(228, '105.113.71.199', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '', '2024-08-10 21:55:01.904523', 19),
(229, '85.25.237.54', 'ias-ie/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-10 22:16:19.519437', 19),
(230, '66.249.92.160', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-10 22:45:36.983984', 10),
(231, '66.249.92.160', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-10 22:45:37.029431', 13),
(232, '66.249.92.162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-10 22:45:37.160048', 10),
(233, '66.249.92.161', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-10 22:45:37.645082', 14),
(234, '66.249.92.162', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-10 22:45:37.806382', 11),
(235, '197.211.63.124', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-10 23:15:20.172459', 19),
(236, '102.90.44.31', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/reviewing-3-html-only-websites-developer-insights-on-speed-optimization-and-minimalist-design/', '2024-08-11 06:10:46.945925', 11),
(237, '31.13.127.20', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 06:42:45.143696', 19),
(238, '102.90.44.31', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-11 07:23:25.483315', 19),
(239, '197.210.226.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-11 09:52:29.782563', 19),
(240, '197.210.226.38', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-11 11:19:22.897697', 11),
(241, '31.13.127.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 11:47:53.588328', 19),
(242, '31.13.127.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 11:58:27.482691', 19),
(243, '102.88.81.175', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'https://l.facebook.com/', '2024-08-11 11:58:27.511851', 19),
(244, '31.13.127.12', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 11:58:29.495635', 19),
(245, '31.13.127.9', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 11:58:29.651980', 19),
(246, '102.90.66.13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-11 16:24:22.314121', 11),
(247, '102.90.64.177', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-11 16:25:41.753467', 11),
(248, '31.13.127.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:26.863439', 11),
(249, '69.171.249.112', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.008592', 11),
(250, '173.252.127.3', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.096495', 11),
(251, '69.171.249.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.166678', 11),
(252, '173.252.127.12', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.434570', 11),
(253, '173.252.95.20', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.593514', 11),
(254, '31.13.103.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.649060', 11),
(255, '31.13.103.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:35.813279', 11),
(256, '173.252.95.16', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:36.266027', 11),
(257, '31.13.127.13', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:42.480319', 11),
(258, '31.13.127.5', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:29:42.506573', 11),
(259, '69.171.231.8', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:30:08.949923', 11),
(260, '173.252.95.112', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:30:33.695521', 11),
(261, '173.252.83.15', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:30:58.926696', 11),
(262, '31.13.115.3', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:33:08.396819', 11),
(263, '173.252.79.5', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 16:37:00.376604', 11),
(264, '31.13.127.3', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:09:00.207964', 11),
(265, '31.13.127.27', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:09:16.058883', 11),
(266, '31.13.127.17', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:09:18.175822', 11),
(267, '173.252.107.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:09:36.094696', 11),
(268, '31.13.103.113', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:10:11.986509', 11),
(269, '66.220.149.112', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:10:35.995978', 11),
(270, '173.252.79.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:11:16.329938', 11),
(271, '173.252.87.12', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-11 17:12:28.896653', 11),
(272, '197.210.84.238', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-11 19:23:31.086034', 11),
(273, '129.205.114.27', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/25.0 Chrome/121.0.0.0 Mobile Safari/537.36', '', '2024-08-11 22:51:20.005740', 14),
(274, '197.210.85.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-12 00:19:02.674992', 14),
(275, '66.102.8.32', 'Google', '', '2024-08-12 00:37:15.566915', 13),
(276, '66.102.8.38', 'Google', '', '2024-08-12 00:37:15.889358', 8),
(277, '66.102.8.38', 'Google', '', '2024-08-12 00:37:16.155718', 5),
(278, '66.102.8.38', 'Google', '', '2024-08-12 00:37:16.278353', 10),
(279, '66.102.8.32', 'Google', '', '2024-08-12 00:37:16.423087', 11),
(280, '66.102.8.38', 'Google', '', '2024-08-12 00:37:16.695255', 6),
(281, '66.102.8.39', 'Google', '', '2024-08-12 00:37:16.779119', 4),
(282, '66.102.8.32', 'Google', '', '2024-08-12 00:37:17.023682', 19),
(283, '66.102.8.38', 'Google', '', '2024-08-12 00:37:19.313619', 9),
(284, '66.102.8.38', 'Google', '', '2024-08-12 00:37:20.129240', 14),
(285, '66.102.8.32', 'Google', '', '2024-08-12 00:37:21.877315', 9),
(286, '66.102.8.32', 'Google', '', '2024-08-12 00:37:22.020914', 8),
(287, '66.102.8.39', 'Google', '', '2024-08-12 00:37:22.088626', 11),
(288, '66.102.8.32', 'Google', '', '2024-08-12 00:37:22.192870', 5),
(289, '66.102.8.32', 'Google', '', '2024-08-12 00:37:22.304089', 6),
(290, '66.102.8.38', 'Google', '', '2024-08-12 00:37:22.400641', 13),
(291, '66.102.8.39', 'Google', '', '2024-08-12 00:37:22.525949', 8),
(292, '66.102.8.39', 'Google', '', '2024-08-12 00:37:22.610767', 14),
(293, '66.102.8.38', 'Google', '', '2024-08-12 00:37:22.664537', 3),
(294, '66.102.8.39', 'Google', '', '2024-08-12 00:37:22.745853', 3),
(295, '66.102.8.32', 'Google', '', '2024-08-12 00:37:23.078678', 10),
(296, '66.102.8.32', 'Google', '', '2024-08-12 00:37:26.350265', 4),
(297, '66.102.8.38', 'Google', '', '2024-08-12 00:37:26.401540', 4),
(298, '217.172.190.15', 'ias-ie/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-12 01:27:50.846843', 19),
(299, '102.89.22.210', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-12 06:46:59.500297', 19),
(300, '209.126.120.47', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-12 09:10:55.539405', 11),
(301, '35.212.115.150', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/78.0.3904.108 Chrome/78.0.3904.108 Safari/537.36', 'https://www.google.com', '2024-08-12 10:17:23.068576', 11),
(302, '197.210.55.248', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-12 12:05:05.785270', 9),
(303, '178.250.1.70', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-12 12:06:30.885711', 9),
(304, '66.249.92.160', 'Mediapartners-Google', '', '2024-08-12 12:07:38.005901', 9),
(305, '152.67.128.219', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-12 12:13:22.759833', 9),
(306, '197.210.226.246', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-12 12:28:49.744481', 19),
(307, '178.250.1.83', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-12 12:29:53.002636', 19),
(308, '152.67.128.219', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-12 12:31:34.514567', 19),
(309, '132.145.11.125', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-12 12:31:35.083720', 19),
(310, '105.113.96.59', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-12 14:08:03.878320', 19),
(311, '197.210.55.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-12 16:00:54.564784', 19),
(312, '197.210.55.193', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-12 16:00:54.618154', 19),
(313, '197.210.79.68', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-12 16:11:59.478775', 9),
(314, '105.116.6.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-13 04:59:26.015772', 14),
(315, '34.195.212.30', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-13 05:40:49.847988', 19),
(316, '102.88.82.62', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-13 09:23:57.501944', 19),
(317, '197.210.84.119', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-13 10:29:21.652647', 19),
(318, '152.67.137.35', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-13 11:20:02.797508', 19),
(319, '102.90.46.70', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-13 14:26:58.735191', 9);
INSERT INTO `posts_articleview` (`id`, `ip_address`, `user_agent`, `referrer`, `viewed_on`, `article_id`) VALUES
(320, '102.90.66.207', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-13 17:29:05.937573', 19),
(321, '178.250.1.78', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-13 17:32:35.087050', 19),
(322, '197.211.53.9', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/25.0 Chrome/121.0.0.0 Mobile Safari/537.36', '', '2024-08-13 19:51:07.546371', 14),
(323, '66.249.92.164', 'Mediapartners-Google', '', '2024-08-13 19:53:29.808960', 14),
(324, '66.249.92.163', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-13 22:47:10.122358', 19),
(325, '66.249.92.163', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-13 22:47:10.212870', 14),
(326, '66.249.92.164', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-13 22:47:10.251692', 10),
(327, '66.249.92.163', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-13 22:47:10.296223', 11),
(328, '66.249.92.162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-13 22:47:10.345769', 14),
(329, '197.210.79.51', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-14 06:20:08.904892', 19),
(330, '188.138.9.53', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-14 06:34:49.066599', 19),
(331, '197.210.78.23', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-14 12:42:48.837853', 19),
(332, '197.210.78.12', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-15 05:30:18.563329', 19),
(333, '188.138.9.101', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-15 09:42:15.321347', 19),
(334, '102.89.46.131', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '', '2024-08-15 13:40:12.535706', 10),
(335, '102.90.45.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-16 01:32:42.996866', 19),
(336, '102.90.58.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-16 07:05:26.875129', 12),
(337, '66.249.92.162', 'Mediapartners-Google', '', '2024-08-16 07:07:50.541323', 12),
(338, '132.145.14.70', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-16 07:15:36.280298', 12),
(339, '31.13.127.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:42.139630', 12),
(340, '31.13.127.14', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:50.306957', 12),
(341, '31.13.127.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:50.496225', 12),
(342, '69.171.249.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:52.170106', 12),
(343, '69.171.249.17', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:52.247070', 12),
(344, '31.13.103.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:52.504627', 12),
(345, '69.171.230.19', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:52.552163', 12),
(346, '69.171.230.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:52.616687', 12),
(347, '31.13.103.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:25:52.837190', 12),
(348, '69.171.251.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '', '2024-08-16 07:25:53.942192', 12),
(349, '74.119.117.140', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-16 07:25:59.510944', 12),
(350, '148.72.152.225', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-16 07:25:59.630501', 12),
(351, '31.13.127.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:26:04.198297', 12),
(352, '69.171.231.5', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:26:16.077971', 12),
(353, '69.171.249.8', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:26:28.690709', 12),
(354, '173.252.95.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:27:13.607215', 12),
(355, '66.249.92.163', 'Mediapartners-Google', '', '2024-08-16 07:27:17.030312', 12),
(356, '173.252.83.27', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:28:46.079760', 12),
(357, '173.252.79.6', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:28:46.390732', 12),
(358, '66.220.149.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:29:14.342906', 12),
(359, '105.112.203.102', 'Mozilla/5.0 (Linux; Android 12; V2120) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', '', '2024-08-16 07:32:48.615691', 12),
(360, '31.13.115.113', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:33:16.202749', 12),
(361, '173.252.87.4', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:33:55.616757', 12),
(362, '173.252.79.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 07:37:15.180830', 12),
(363, '102.90.66.248', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-16 07:51:19.808884', 12),
(364, '197.211.59.22', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-16 07:54:17.017425', 10),
(365, '132.145.9.5', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-16 07:56:10.609770', 10),
(366, '102.90.58.215', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-16 08:52:11.008453', 13),
(367, '69.171.251.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 08:52:59.134406', 12),
(368, '66.249.92.162', 'Mediapartners-Google', '', '2024-08-16 08:53:26.649372', 13),
(369, '217.117.14.22', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '', '2024-08-16 08:54:33.327920', 12),
(370, '105.112.182.81', 'Mozilla/5.0 (Linux; Android 12; V2120) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', '', '2024-08-16 09:28:16.941814', 12),
(371, '102.90.57.240', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-16 10:03:32.444230', 12),
(372, '152.67.137.35', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-16 10:05:22.975645', 12),
(373, '102.90.57.203', 'WhatsApp/2.23.20.0', '', '2024-08-16 10:23:24.715896', 12),
(374, '69.63.189.113', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 10:52:49.729383', 12),
(375, '102.215.57.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', '', '2024-08-16 14:47:23.191467', 12),
(376, '178.250.1.71', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-16 14:48:33.087865', 12),
(377, '173.252.95.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 16:36:00.814003', 12),
(378, '197.211.58.135', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/25.0 Chrome/121.0.0.0 Mobile Safari/537.36', '', '2024-08-16 17:53:03.969785', 12),
(379, '66.220.149.38', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-16 19:49:11.800164', 12),
(380, '102.90.42.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-16 22:35:23.729597', 19),
(381, '209.239.121.73', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-16 22:35:29.926797', 19),
(382, '66.249.92.164', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-16 22:48:39.840573', 13),
(383, '66.249.92.163', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-16 22:48:40.212237', 13),
(384, '66.249.92.164', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-16 22:48:40.324441', 11),
(385, '140.238.83.181', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-17 01:03:38.023573', 19),
(386, '197.210.55.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-17 03:58:40.311097', 13),
(387, '178.250.7.71', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-17 03:58:45.258815', 13),
(388, '152.67.137.35', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-17 04:00:22.447182', 13),
(389, '207.38.88.75', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-17 04:01:47.026492', 13),
(390, '197.210.55.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-17 04:08:44.820829', 14),
(391, '188.138.57.86', 'ias-ie/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-17 04:08:47.738557', 14),
(392, '152.67.137.35', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-17 04:10:23.263987', 14),
(393, '197.210.54.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/how-to-install-and-run-uncensored-chatgpt-on-your-pc-offline-a-step-by-step-guide/', '2024-08-17 04:35:07.344741', 14),
(394, '102.90.64.252', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-17 11:14:02.661632', 12),
(395, '207.38.88.21', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-17 11:16:18.033477', 12),
(396, '140.238.83.181', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-17 11:24:54.881588', 12),
(397, '197.210.227.99', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/127.0.6533.107 Mobile/15E148 Safari/604.1', 'https://cn.coursearena.com.ng/', '2024-08-17 11:39:21.004065', 19),
(398, '204.15.208.28', 'peer39_crawler/1.0', '', '2024-08-17 13:38:19.749870', 12),
(399, '102.90.64.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-17 13:48:24.761997', 12),
(400, '66.249.92.164', 'Mediapartners-Google', '', '2024-08-17 14:34:18.742031', 12),
(401, '197.210.55.82', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-17 21:18:48.120143', 12),
(402, '152.67.128.219', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-17 23:49:24.072847', 12),
(403, '188.138.102.88', 'ias-va/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-18 14:03:17.036773', 12),
(404, '66.249.65.107', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 08:26:45.447618', 4),
(405, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 09:11:46.359278', 19),
(406, '66.249.65.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 10:00:52.899576', 12),
(407, '66.249.65.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 10:44:18.397577', 6),
(408, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 11:00:40.159526', 9),
(409, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 11:08:50.985587', 11),
(410, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 11:22:41.026118', 3),
(411, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 13:17:14.711977', 13),
(412, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 14:22:42.114481', 8),
(413, '66.249.65.109', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 14:48:24.943635', 10),
(414, '173.252.95.115', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-19 14:50:13.262493', 11),
(415, '173.252.95.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-19 14:50:13.331443', 11),
(416, '66.249.65.107', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; GoogleOther)', '', '2024-08-19 15:14:06.882173', 14),
(417, '188.138.102.214', 'ias-ie/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-19 17:59:46.657489', 12),
(418, '66.249.89.38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-19 22:50:15.195442', 13),
(419, '66.249.89.39', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-19 22:50:15.680304', 12),
(420, '66.249.89.32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]', '', '2024-08-19 22:50:15.922722', 19),
(421, '66.249.89.38', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-19 22:50:16.071185', 19),
(422, '66.249.89.32', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko; Mediapartners-Google) Chrome/[CHROME_VERSION] Mobile Safari/[WEBKIT_VERSION]', '', '2024-08-19 22:50:16.163820', 14),
(423, '66.249.89.39', 'Mediapartners-Google', '', '2024-08-19 23:03:39.383492', 13),
(424, '154.113.101.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-20 10:09:41.290963', 18),
(425, '148.72.152.70', 'ias-or/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-20 10:09:51.710381', 18),
(426, '132.145.11.125', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-20 10:11:25.454391', 18),
(427, '149.154.161.233', 'TelegramBot (like TwitterBot)', '', '2024-08-20 10:12:19.915282', 18),
(428, '108.174.2.216', 'LinkedInBot/1.0 (compatible; Mozilla/5.0; Apache-HttpClient +http://www.linkedin.com)', '', '2024-08-20 10:13:21.204527', 18),
(429, '108.174.2.215', 'LinkedInBot/1.0 (compatible; Mozilla/5.0; Apache-HttpClient +http://www.linkedin.com)', '', '2024-08-20 10:19:35.251477', 18),
(430, '197.210.55.135', 'WhatsApp/2.23.20.0', '', '2024-08-20 10:27:04.209819', 18),
(431, '31.13.127.16', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:47.102050', 18),
(432, '31.13.127.9', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:55.492620', 18),
(433, '173.252.79.114', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:57.812750', 18),
(434, '66.220.149.37', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:57.835498', 18),
(435, '173.252.83.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:57.888071', 18),
(436, '173.252.79.10', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:57.945771', 18),
(437, '66.220.149.2', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:57.950227', 18),
(438, '173.252.83.12', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:33:58.209850', 18),
(439, '31.13.127.8', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:34:08.204533', 18),
(440, '173.252.127.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '', '2024-08-20 10:34:18.315201', 18),
(441, '69.171.249.3', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:34:54.005685', 18),
(442, '74.125.216.71', 'Mediapartners-Google', '', '2024-08-20 10:34:57.577644', 18),
(443, '69.171.231.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:35:57.610616', 18),
(444, '31.13.103.115', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:36:05.581694', 18),
(445, '74.125.216.64', 'Mediapartners-Google', '', '2024-08-20 10:37:06.407542', 18),
(446, '173.252.87.15', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:42:01.490219', 18),
(447, '173.252.107.10', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:42:02.066418', 18),
(448, '173.252.95.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:45:24.228247', 18),
(449, '173.252.95.13', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:45:24.324361', 18),
(450, '173.252.95.19', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 10:45:24.602169', 18),
(451, '197.211.52.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-20 10:46:53.019415', 14),
(452, '178.250.7.64', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-20 10:47:55.920854', 14),
(453, '132.145.66.156', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-20 12:17:49.062736', 18),
(454, '132.145.14.70', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-20 12:17:49.087676', 18),
(455, '108.174.2.215', 'LinkedInBot/1.0 (compatible; Mozilla/5.0; Apache-HttpClient +http://www.linkedin.com)', '', '2024-08-20 15:53:11.521890', 14),
(456, '108.174.2.216', 'LinkedInBot/1.0 (compatible; Mozilla/5.0; Apache-HttpClient +http://www.linkedin.com)', '', '2024-08-20 15:53:25.206904', 14),
(457, '102.244.222.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-20 16:17:00.258006', 10),
(458, '102.244.222.129', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/posts/article/getting-started-with-python-programming-a-comprehensive-guide-for-beginners/', '2024-08-20 16:17:41.708927', 4),
(459, '31.13.127.25', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 16:20:03.009209', 14),
(460, '31.13.127.21', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-20 16:20:03.347700', 14),
(461, '188.138.41.7', 'ias-jp/3.3 (former https://www.admantx.com + https://integralads.com/about-ias/)', '', '2024-08-20 20:13:44.935079', 12),
(462, '102.90.57.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'https://cn.coursearena.com.ng/accounts/profile/', '2024-08-20 21:27:53.303692', 14),
(463, '173.252.95.9', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-21 00:04:09.550233', 18),
(464, '129.0.99.15', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '', '2024-08-21 02:16:42.978902', 4),
(465, '140.238.95.47', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-21 09:11:38.787403', 18),
(466, '102.90.43.31', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', '', '2024-08-21 10:43:57.946604', 18),
(467, '178.250.1.83', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-21 10:45:03.155946', 18),
(468, '129.205.113.172', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-21 16:07:44.060745', 19),
(469, '132.145.67.248', 'Mozilla/5.0 (compatible; GrapeshotCrawler/2.0; +http://www.grapeshot.co.uk/crawler.php)', '', '2024-08-21 16:14:00.832945', 19),
(470, '129.205.113.172', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'https://cn.coursearena.com.ng/', '2024-08-21 16:17:42.710437', 14),
(471, '178.250.1.66', 'CriteoBot/0.1 (+https://www.criteo.com/criteo-crawler/)', '', '2024-08-21 16:18:45.557679', 14),
(472, '66.249.89.38', 'Mediapartners-Google', '', '2024-08-21 16:19:59.301231', 14),
(473, '31.13.115.115', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', '2024-08-22 03:48:42.978842', 18);

-- --------------------------------------------------------

--
-- Table structure for table `posts_article_frameworks`
--

CREATE TABLE `posts_article_frameworks` (
  `id` bigint NOT NULL,
  `article_id` bigint NOT NULL,
  `framework_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_article_frameworks`
--

INSERT INTO `posts_article_frameworks` (`id`, `article_id`, `framework_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(8, 3, 1),
(9, 3, 2),
(10, 4, 1),
(11, 4, 2),
(12, 5, 1),
(13, 6, 1),
(14, 6, 14),
(17, 8, 1),
(18, 8, 2),
(21, 9, 3),
(20, 10, 1),
(22, 11, 5),
(23, 11, 17),
(24, 11, 18),
(25, 11, 19),
(26, 11, 20),
(27, 11, 21),
(28, 11, 22),
(29, 11, 23),
(30, 11, 24),
(50, 12, 25),
(32, 13, 2),
(33, 13, 15),
(34, 14, 26),
(35, 15, 4),
(37, 16, 1),
(38, 16, 5),
(36, 16, 8),
(39, 16, 9),
(40, 17, 1),
(41, 17, 2),
(42, 17, 3),
(43, 17, 6),
(44, 18, 3),
(45, 18, 4),
(46, 18, 5),
(49, 19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts_bookmark`
--

CREATE TABLE `posts_bookmark` (
  `id` bigint NOT NULL,
  `article_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`id`, `name`, `slug`) VALUES
(1, 'Education', 'education'),
(2, 'Software Development', 'software-development'),
(3, 'Database Management', 'database-management'),
(4, 'Tools & Libraries', 'tools-libraries'),
(5, 'Career & Industry', 'career-industry'),
(6, 'Project Showcases', 'project-showcases'),
(7, 'Coding Challenges', 'coding-challenges'),
(8, 'Community & Events', 'community-events'),
(9, 'Tutorials', 'tutorials'),
(10, 'Python Tutorials', 'python-tutorials'),
(11, 'Machine Learning', 'machine-learning'),
(12, 'Web Development', 'web-development'),
(13, 'Top Frameworks', 'top-frameworks'),
(14, 'LLMs', 'llms'),
(15, 'Tech/Programming', 'tech-programming');

-- --------------------------------------------------------

--
-- Table structure for table `posts_comment`
--

CREATE TABLE `posts_comment` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `article_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts_framework`
--

CREATE TABLE `posts_framework` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_framework`
--

INSERT INTO `posts_framework` (`id`, `name`, `slug`) VALUES
(1, 'Python', 'python'),
(2, 'Django', 'django'),
(3, 'HTML', 'html'),
(4, 'CSS', 'css'),
(5, 'JavaScript', 'javascript'),
(6, 'Bootstrap', 'bootstrap'),
(7, 'Tailwind', 'tailwind'),
(8, 'Java', 'java'),
(9, 'C++', 'c-plus-plus'),
(10, 'Ruby', 'ruby'),
(11, 'Go', 'go'),
(12, 'Rust', 'rust'),
(13, 'Dart', 'dart'),
(14, 'Scikit-Learn', 'scikit-learn'),
(15, 'Django REST Framework', 'django-rest-framework'),
(16, 'ReactJS', 'reactjs'),
(17, 'React', 'react'),
(18, 'Angular', 'angular'),
(19, 'Vue.js', 'vuejs'),
(20, 'Svelte', 'svelte'),
(21, 'Next.js', 'nextjs'),
(22, 'Express.js', 'expressjs'),
(23, 'NestJS', 'nestjs'),
(24, 'Ember.js', 'emberjs'),
(25, 'Git', 'git'),
(26, 'AI', 'ai');

-- --------------------------------------------------------

--
-- Table structure for table `posts_reaction`
--

CREATE TABLE `posts_reaction` (
  `id` bigint NOT NULL,
  `reaction_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `article_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_reaction`
--

INSERT INTO `posts_reaction` (`id`, `reaction_type`, `created_at`, `article_id`, `user_id`) VALUES
(1, 'love', '2024-08-17 04:05:46.546664', 13, 1),
(2, 'laugh', '2024-08-17 04:12:40.827515', 14, 1),
(3, 'love', '2024-08-17 12:13:47.884315', 12, 23);

-- --------------------------------------------------------

--
-- Table structure for table `taggit_tag`
--

CREATE TABLE `taggit_tag` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taggit_tag`
--

INSERT INTO `taggit_tag` (`id`, `name`, `slug`) VALUES
(1, 'Insight', 'insight'),
(2, 'Education', 'education'),
(5, 'orm', 'orm'),
(6, 'tutorial', 'tutorial_1'),
(7, 'beginners', 'beginners'),
(8, 'concurrent programming', 'concurrent-programming'),
(10, 'asyncio', 'asyncio'),
(11, 'scikit-learn', 'scikit-learn'),
(15, 'models', 'models'),
(17, 'DIY', 'diy'),
(18, 'Python programming', 'python-programming'),
(19, 'Beginner programming guide', 'beginner-programming-guide'),
(20, 'Learn Python', 'learn-python'),
(21, 'Python setup', 'python-setup'),
(22, 'Coding in Python', 'coding-in-python'),
(23, 'Python tutorial', 'python-tutorial'),
(24, 'Introduction to Python', 'introduction-to-python'),
(25, 'Python development', 'python-development'),
(26, 'Python for beginners', 'python-for-beginners'),
(27, 'Python basics', 'python-basics'),
(28, 'Web design basics', 'web-design-basics'),
(29, 'HTML fundamentals', 'html-fundamentals'),
(30, 'Front-end development basics', 'front-end-development-basics'),
(31, 'Learn to code HTML', 'learn-to-code-html'),
(32, 'HTML syntax', 'html-syntax'),
(33, 'HTML basics tutorial', 'html-basics-tutorial'),
(34, 'HTML elements', 'html-elements'),
(35, 'HTML coding basics', 'html-coding-basics'),
(36, '2024 trends', '2024-trends'),
(38, 'Vue.js', 'vuejs'),
(39, 'Express.js', 'expressjs'),
(40, 'JavaScript', 'javascript'),
(41, 'Nuxt.js', 'nuxtjs'),
(42, 'Angular', 'angular'),
(43, 'Svelte', 'svelte'),
(44, 'frameworks', 'frameworks'),
(45, 'NestJS', 'nestjs'),
(46, 'React', 'react'),
(47, 'Next.js', 'nextjs'),
(48, 'Meteor.js', 'meteorjs'),
(49, 'Ember.js', 'emberjs'),
(50, 'Git', 'git'),
(52, 'version control', 'version-control'),
(53, 'coding best practices', 'coding-best-practices'),
(54, 'software development', 'software-development'),
(55, 'GitHub', 'github'),
(56, 'Git commands', 'git-commands'),
(57, 'developer tools', 'developer-tools'),
(58, 'Git tutorial', 'git-tutorial'),
(59, 'Python', 'python_1'),
(60, 'API Development', 'api-development'),
(61, 'Django Tutorial', 'django-tutorial'),
(62, 'REST API', 'rest-api_1'),
(63, 'Django', 'django_1'),
(64, 'Web Development', 'web-development_1'),
(65, 'Django REST Framework', 'django-rest-framework_1'),
(66, 'PC Setup', 'pc-setup'),
(67, 'Local Model Deployment', 'local-model-deployment'),
(68, 'Ollama', 'ollama'),
(69, 'Machine Learning', 'machine-learning_1'),
(70, 'Local AI', 'local-ai'),
(71, 'AI Installation', 'ai-installation'),
(72, 'LLM', 'llm'),
(73, 'AnythingLLM', 'anythingllm'),
(75, '2025 tech predictions', '2025-tech-predictions'),
(76, 'mobile development', 'mobile-development'),
(77, 'data science', 'data-science'),
(78, 'programming languages', 'programming-languages'),
(79, 'artificial intelligence', 'artificial-intelligence'),
(80, 'tech trends', 'tech-trends'),
(81, 'C#', 'c'),
(82, 'C++', 'c_1'),
(83, 'Java', 'java'),
(84, '2025 trends', '2025-trends'),
(85, 'Website Building', 'website-building'),
(86, 'Programming', 'programming_1'),
(87, 'HTML Templates', 'html-templates'),
(88, 'Beginner Web Development', 'beginner-web-development'),
(89, 'Python Framework', 'python-framework'),
(90, 'Coding', 'coding_1'),
(91, 'productivity', 'productivity'),
(92, 'Visual Studio Code', 'visual-studio-code'),
(93, 'CSS', 'css_1'),
(94, 'API testing', 'api-testing'),
(95, 'HTML', 'html'),
(96, 'code formatting', 'code-formatting'),
(97, 'debugging', 'debugging'),
(98, 'extensions', 'extensions'),
(99, 'VSCode', 'vscode'),
(100, 'linting', 'linting'),
(101, 'live server', 'live-server'),
(102, 'modern web development', 'modern-web-development'),
(103, 'Only', 'only'),
(104, 'load time optimization', 'load-time-optimization'),
(105, 'HTML-only websites', 'html-only-websites'),
(106, 'coding tips', 'coding-tips'),
(107, 'website performance', 'website-performance'),
(108, 'minimalist design', 'minimalist-design'),
(109, 'SEO', 'seo'),
(110, 'website speed', 'website-speed'),
(111, 'web developer advice', 'web-developer-advice'),
(112, 'Auto Rename Tag', 'auto-rename-tag'),
(113, 'Prettier', 'prettier'),
(114, 'Tabnine', 'tabnine'),
(115, 'productivity tools', 'productivity-tools'),
(116, 'CodeSnap', 'codesnap');

-- --------------------------------------------------------

--
-- Table structure for table `taggit_taggeditem`
--

CREATE TABLE `taggit_taggeditem` (
  `id` int NOT NULL,
  `object_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taggit_taggeditem`
--

INSERT INTO `taggit_taggeditem` (`id`, `object_id`, `content_type_id`, `tag_id`) VALUES
(1, 1, 11, 1),
(2, 1, 11, 2),
(3, 1, 11, 3),
(7, 3, 11, 1),
(8, 3, 11, 2),
(9, 3, 11, 3),
(10, 4, 11, 4),
(11, 4, 11, 5),
(12, 4, 11, 6),
(13, 4, 11, 7),
(17, 5, 11, 6),
(14, 5, 11, 8),
(15, 5, 11, 9),
(16, 5, 11, 10),
(21, 6, 11, 6),
(18, 6, 11, 9),
(19, 6, 11, 11),
(20, 6, 11, 12),
(29, 8, 11, 4),
(28, 8, 11, 9),
(30, 8, 11, 15),
(27, 8, 11, 16),
(46, 9, 11, 28),
(47, 9, 11, 29),
(48, 9, 11, 30),
(49, 9, 11, 31),
(42, 9, 11, 32),
(43, 9, 11, 33),
(44, 9, 11, 34),
(45, 9, 11, 35),
(32, 10, 11, 18),
(33, 10, 11, 19),
(34, 10, 11, 20),
(35, 10, 11, 21),
(36, 10, 11, 22),
(37, 10, 11, 23),
(38, 10, 11, 24),
(39, 10, 11, 25),
(40, 10, 11, 26),
(41, 10, 11, 27),
(62, 11, 11, 16),
(51, 11, 11, 37),
(52, 11, 11, 38),
(53, 11, 11, 39),
(54, 11, 11, 40),
(55, 11, 11, 41),
(56, 11, 11, 42),
(57, 11, 11, 43),
(58, 11, 11, 44),
(59, 11, 11, 45),
(60, 11, 11, 46),
(61, 11, 11, 47),
(63, 11, 11, 48),
(64, 11, 11, 49),
(131, 11, 11, 102),
(65, 12, 11, 37),
(66, 12, 11, 50),
(67, 12, 11, 51),
(68, 12, 11, 52),
(69, 12, 11, 53),
(70, 12, 11, 54),
(71, 12, 11, 55),
(72, 12, 11, 56),
(73, 12, 11, 57),
(74, 12, 11, 58),
(77, 13, 11, 59),
(78, 13, 11, 60),
(79, 13, 11, 61),
(80, 13, 11, 62),
(81, 13, 11, 63),
(75, 13, 11, 64),
(76, 13, 11, 65),
(82, 14, 11, 66),
(83, 14, 11, 67),
(84, 14, 11, 68),
(85, 14, 11, 69),
(86, 14, 11, 70),
(87, 14, 11, 71),
(88, 14, 11, 72),
(89, 14, 11, 73),
(90, 15, 11, 74),
(93, 16, 11, 12),
(97, 16, 11, 16),
(91, 16, 11, 40),
(100, 16, 11, 51),
(103, 16, 11, 54),
(105, 16, 11, 59),
(92, 16, 11, 75),
(95, 16, 11, 76),
(94, 16, 11, 77),
(96, 16, 11, 78),
(98, 16, 11, 79),
(99, 16, 11, 80),
(101, 16, 11, 81),
(102, 16, 11, 82),
(104, 16, 11, 83),
(114, 17, 11, 59),
(115, 17, 11, 61),
(116, 17, 11, 63),
(107, 17, 11, 64),
(108, 17, 11, 85),
(109, 17, 11, 86),
(110, 17, 11, 87),
(111, 17, 11, 88),
(112, 17, 11, 89),
(113, 17, 11, 90),
(124, 18, 11, 16),
(143, 18, 11, 64),
(117, 18, 11, 96),
(119, 18, 11, 98),
(120, 18, 11, 99),
(122, 18, 11, 101),
(144, 18, 11, 112),
(145, 18, 11, 113),
(146, 18, 11, 114),
(147, 18, 11, 115),
(148, 18, 11, 116),
(142, 19, 11, 16),
(132, 19, 11, 95),
(134, 19, 11, 104),
(135, 19, 11, 105),
(136, 19, 11, 106),
(137, 19, 11, 107),
(138, 19, 11, 108),
(139, 19, 11, 109),
(140, 19, 11, 110),
(141, 19, 11, 111);

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
-- Indexes for table `core_sitesettings_social_links`
--
ALTER TABLE `core_sitesettings_social_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_sitesettings_social_sitesettings_id_socialli_bf7a25cc_uniq` (`sitesettings_id`,`sociallink_id`),
  ADD KEY `core_sitesettings_so_sociallink_id_b517d4b7_fk_core_soci` (`sociallink_id`);

--
-- Indexes for table `core_sociallink`
--
ALTER TABLE `core_sociallink`
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
-- Indexes for table `posts_article_frameworks`
--
ALTER TABLE `posts_article_frameworks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_article_frameworks_article_id_framework_id_629af985_uniq` (`article_id`,`framework_id`),
  ADD KEY `posts_article_framew_framework_id_763bf269_fk_posts_fra` (`framework_id`);

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
-- Indexes for table `posts_reaction`
--
ALTER TABLE `posts_reaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_reaction_user_id_article_id_reaction_type_006a1132_uniq` (`user_id`,`article_id`,`reaction_type`),
  ADD KEY `posts_reaction_article_id_729a7966_fk_posts_article_id` (`article_id`);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `accounts_profile_bookmarks`
--
ALTER TABLE `accounts_profile_bookmarks`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ads_ad`
--
ALTER TABLE `ads_ad`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_sitesettings`
--
ALTER TABLE `core_sitesettings`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_sitesettings_social_links`
--
ALTER TABLE `core_sitesettings_social_links`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_sociallink`
--
ALTER TABLE `core_sociallink`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_staticpage`
--
ALTER TABLE `core_staticpage`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `newsletter_bulkemail`
--
ALTER TABLE `newsletter_bulkemail`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts_article`
--
ALTER TABLE `posts_article`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_articleview`
--
ALTER TABLE `posts_articleview`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `posts_article_frameworks`
--
ALTER TABLE `posts_article_frameworks`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `posts_bookmark`
--
ALTER TABLE `posts_bookmark`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_category`
--
ALTER TABLE `posts_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts_comment`
--
ALTER TABLE `posts_comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts_framework`
--
ALTER TABLE `posts_framework`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts_reaction`
--
ALTER TABLE `posts_reaction`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

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
-- Constraints for table `core_sitesettings_social_links`
--
ALTER TABLE `core_sitesettings_social_links`
  ADD CONSTRAINT `core_sitesettings_so_sitesettings_id_019b2105_fk_core_site` FOREIGN KEY (`sitesettings_id`) REFERENCES `core_sitesettings` (`id`),
  ADD CONSTRAINT `core_sitesettings_so_sociallink_id_b517d4b7_fk_core_soci` FOREIGN KEY (`sociallink_id`) REFERENCES `core_sociallink` (`id`);

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
-- Constraints for table `posts_article_frameworks`
--
ALTER TABLE `posts_article_frameworks`
  ADD CONSTRAINT `posts_article_framew_framework_id_763bf269_fk_posts_fra` FOREIGN KEY (`framework_id`) REFERENCES `posts_framework` (`id`),
  ADD CONSTRAINT `posts_article_frameworks_article_id_116be9ad_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`);

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
-- Constraints for table `posts_reaction`
--
ALTER TABLE `posts_reaction`
  ADD CONSTRAINT `posts_reaction_article_id_729a7966_fk_posts_article_id` FOREIGN KEY (`article_id`) REFERENCES `posts_article` (`id`),
  ADD CONSTRAINT `posts_reaction_user_id_286f6cba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
