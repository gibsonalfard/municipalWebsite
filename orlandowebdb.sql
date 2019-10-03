-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 06:00 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orlandowebdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-02 00:41:31', '2019-10-02 00:41:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/orlandoweb', 'yes'),
(2, 'home', 'http://localhost/orlandoweb', 'yes'),
(3, 'blogname', 'Orlando Website', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ilhamgibran.am@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'orlandotheme', 'yes'),
(41, 'stylesheet', 'orlandotheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1569987696;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570020096;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570020097;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570063294;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570063344;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570063403;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"last_checked\";i:1569976897;}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1569977069;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1569976917;}', 'no'),
(117, '_site_transient_timeout_theme_roots', '1569978784', 'no'),
(118, '_site_transient_theme_roots', 'a:4:{s:12:\"orlandotheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1569977070;}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(121, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1570020159', 'no'),
(122, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10016 milliseconds</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div>', 'no'),
(126, 'current_theme', 'Start Wordpress', 'yes'),
(127, 'theme_mods_orlandotheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(128, 'theme_switched', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1569976904:1'),
(6, 7, '_edit_lock', '1569981735:1'),
(9, 9, '_wp_attached_file', '2019/10/mayor-dyer-official-portrait-2018.jpg'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:267;s:4:\"file\";s:45:\"2019/10/mayor-dyer-official-portrait-2018.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"mayor-dyer-official-portrait-2018-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 12, '_wp_attached_file', '2019/10/mayor-dyer-official-portrait-2018-1.jpg'),
(14, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:267;s:4:\"file\";s:47:\"2019/10/mayor-dyer-official-portrait-2018-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"mayor-dyer-official-portrait-2018-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 13, '_wp_attached_file', '2019/10/commissioner-jim-gray.jpg'),
(16, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:270;s:4:\"file\";s:33:\"2019/10/commissioner-jim-gray.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"commissioner-jim-gray-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 1, '_edit_lock', '1569979664:1'),
(26, 5, '_wp_trash_meta_status', 'publish'),
(27, 5, '_wp_trash_meta_time', '1569979825'),
(28, 5, '_wp_desired_post_slug', 'hall-of-fame'),
(29, 1, '_wp_trash_meta_status', 'publish'),
(30, 1, '_wp_trash_meta_time', '1569979825'),
(31, 1, '_wp_desired_post_slug', 'hello-world'),
(32, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(35, 21, '_edit_lock', '1569982463:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-02 00:41:31', '2019-10-02 00:41:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-10-02 01:30:25', '2019-10-02 01:30:25', '', 0, 'http://localhost/orlandoweb/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-02 00:41:31', '2019-10-02 00:41:31', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/orlandoweb/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-02 00:41:31', '2019-10-02 00:41:31', '', 0, 'http://localhost/orlandoweb/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-02 00:41:31', '2019-10-02 00:41:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/orlandoweb.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-02 00:41:31', '2019-10-02 00:41:31', '', 0, 'http://localhost/orlandoweb/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-02 00:42:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-02 00:42:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/orlandoweb/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-02 00:43:52', '2019-10-02 00:43:52', '<!-- wp:paragraph -->\n<p>\nYeah, you could be the greatest<br>You can be the best<br>You can be the King Kong banging on your chestYou could beat the world<br>You could beat the war<br>You could talk to God, go banging on his doorYou can throw your hands up<br>You can beat the clock<br>You can move a mountain<br>You can break rocks<br>You can be a master<br>Don\'t wait for luck<br>Dedicate yourself and you can find yourselfStanding in the hall of fame<br>And the world\'s gonna know your name<br>\'Cause you burn with the brightest flame<br>And the world\'s gonna know your name<br>And you\'ll be on the walls of the hall of fameYou could go the distance<br>You could run the mile<br>You could walk straight through hell with a smileYou could be the hero<br>You could get the gold<br>Breaking all the records that thought, never could be brokeDo it… \n\n</p>\n<!-- /wp:paragraph -->', 'Hall of Fame', '', 'trash', 'open', 'open', '', 'hall-of-fame__trashed', '', '', '2019-10-02 01:30:25', '2019-10-02 01:30:25', '', 0, 'http://localhost/orlandoweb/?p=5', 0, 'post', '', 0),
(6, 1, '2019-10-02 00:43:52', '2019-10-02 00:43:52', '<!-- wp:paragraph -->\n<p>\nYeah, you could be the greatest<br>You can be the best<br>You can be the King Kong banging on your chestYou could beat the world<br>You could beat the war<br>You could talk to God, go banging on his doorYou can throw your hands up<br>You can beat the clock<br>You can move a mountain<br>You can break rocks<br>You can be a master<br>Don\'t wait for luck<br>Dedicate yourself and you can find yourselfStanding in the hall of fame<br>And the world\'s gonna know your name<br>\'Cause you burn with the brightest flame<br>And the world\'s gonna know your name<br>And you\'ll be on the walls of the hall of fameYou could go the distance<br>You could run the mile<br>You could walk straight through hell with a smileYou could be the hero<br>You could get the gold<br>Breaking all the records that thought, never could be brokeDo it… \n\n</p>\n<!-- /wp:paragraph -->', 'Hall of Fame', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-10-02 00:43:52', '2019-10-02 00:43:52', '', 5, 'http://localhost/orlandoweb/2019/10/02/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-10-02 00:46:36', '2019-10-02 00:46:36', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mayor & City Council', '', 'publish', 'open', 'open', '', 'mayor-city-council', '', '', '2019-10-02 01:31:20', '2019-10-02 01:31:20', '', 0, 'http://localhost/orlandoweb/?p=7', 0, 'post', '', 0),
(8, 1, '2019-10-02 00:46:23', '2019-10-02 00:46:23', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a>\n				Mayor\n			\n			</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.orlando.gov/files/sharedassets/public/council/mayor-dyer-official-portrait-2018.jpg?dimension=userprofile&amp;w=180\" alt=\"Mayor Dyer Official Portrait 2018\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:list -->\n<ul><li>Telephone<a href=\"tel:4072462842\">407.246.2842</a></li><li>Email\n<a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a>\n</li><li>ProfileBuddy\n Dyer has served as Mayor of the City of Orlando since 2003, and from \nhis first day in office, he has worked tirelessly to advance the \ncommunity’s shared vision for Orlando as America’s 21st Century City.</li></ul>\n<!-- /wp:list -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 00:46:23', '2019-10-02 00:46:23', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-10-02 01:14:14', '2019-10-02 01:14:14', '', 'mayor-dyer-official-portrait-2018', '', 'inherit', 'open', 'closed', '', 'mayor-dyer-official-portrait-2018', '', '', '2019-10-02 01:14:14', '2019-10-02 01:14:14', '', 7, 'http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-10-02 01:14:26', '2019-10-02 01:14:26', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:list -->\n<ul><li><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a></li><li><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a> </li><li><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City.<br></li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":9} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018.jpg\" alt=\"\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 01:14:26', '2019-10-02 01:14:26', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-10-02 01:18:36', '2019-10-02 01:18:36', '', 'mayor-dyer-official-portrait-2018-1', '', 'inherit', 'open', 'closed', '', 'mayor-dyer-official-portrait-2018-1', '', '', '2019-10-02 01:18:36', '2019-10-02 01:18:36', '', 7, 'http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2019-10-02 01:23:36', '2019-10-02 01:23:36', '', 'commissioner-jim-gray', '', 'inherit', 'open', 'closed', '', 'commissioner-jim-gray', '', '', '2019-10-02 01:23:36', '2019-10-02 01:23:36', '', 7, 'http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-10-02 01:23:38', '2019-10-02 01:23:38', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Telephone<br><a href=\"tel:4072462001\">407.246.2001</a></li><li>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </li><li>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </li><li>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 01:23:38', '2019-10-02 01:23:38', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-10-02 01:25:53', '2019-10-02 01:25:53', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br><a href=\"tel:4072462001\">407.246.2001</a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 01:25:53', '2019-10-02 01:25:53', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-10-02 01:26:48', '2019-10-02 01:26:48', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br><a href=\"tel:4072462001\"><code>407.246.2001</code></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 01:26:48', '2019-10-02 01:26:48', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-10-02 01:28:09', '2019-10-02 01:28:09', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 01:28:09', '2019-10-02 01:28:09', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-10-02 01:30:25', '2019-10-02 01:30:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-02 01:30:25', '2019-10-02 01:30:25', '', 1, 'http://localhost/orlandoweb/2019/10/02/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-10-02 01:31:20', '2019-10-02 01:31:20', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-02 01:31:20', '2019-10-02 01:31:20', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-10-02 01:47:08', '2019-10-02 01:47:08', '<!-- wp:paragraph -->\n<p> Members of the Orlando City Council are the Mayor, elected at-large, and  six City Commissioners who are elected from respective districts. All  are elected for four-year terms. <a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/City-Council-Meetings\">Click here for information on the City Council meetings.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:html -->\n<h5>Buddy Dyer</h5>\n<h6>Mayor</h6>\n<p><a href=\"https://www.orlando.gov/Our-Government/Mayor-City-Council/Buddy-Dyer\">Buddy Dyer</a> <br>Mayor  <br><strong>Telephone</strong><br><a href=\"tel:4072462842\">407.246.2842</a><br><strong>Email </strong><a href=\"mailto:buddy.dyer@orlando.gov\">buddy.dyer@orlando.gov</a><br><strong>Profile</strong><br>Buddy  Dyer has served as Mayor of the City of Orlando since 2003, and from  his first day in office, he has worked tirelessly to advance the  community’s shared vision for Orlando as America’s 21st Century City. </p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":12} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/mayor-dyer-official-portrait-2018-1.jpg\" alt=\"\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":5} -->\n<h5><strong>Jim Gray - District 1</strong></h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":6} -->\n<h6>\nCommissioner, District 1\n</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Telephone<br> <a href=\"tel:4072462001\">407.246.2001</a> <a href=\"tel:4072462001\"></a><br>Commissioner\'s AideDiane Wilhelm<br><a href=\"mailto:diane.wilhelm@orlando.gov\">diane.wilhelm@orlando.gov</a><br><br>Jennifer Wagner - Lake Nona Aide<br><a href=\"mailto:jennifer.wagner@orlando.gov\">jennifer.wagner@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Email <a href=\"mailto:jim.gray@orlando.gov\">jim.gray@orlando.gov</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ProfileCommissioner Gray was elected to the Orlando City Commission on June 1, 2012.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":13} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/orlandoweb/wp-content/uploads/2019/10/commissioner-jim-gray.jpg\" alt=\"\" class=\"wp-image-13\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mayor & City Council', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2019-10-02 01:47:08', '2019-10-02 01:47:08', '', 7, 'http://localhost/orlandoweb/2019/10/02/7-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2019-10-02 02:13:52', '2019-10-02 02:13:52', '<!-- wp:paragraph -->\n<p>\nSo this ain\'t the end, I saw you again, today<br>I had to turn my heart away<br>Smiled like the sun, kisses for everyone<br>And tales, it never failsYou lying so low in the weeds<br>I bet you gonna ambush me<br>You\'d have me down, down, down on my knees<br>Now wouldn\'t you, Barracuda? OhBack over time we were all trying for free<br>You met the porpoise and me<br>No right, no wrong you\'re selling a song, a name<br>Whisper gameIf the real thing don\'t do the trick<br>You better make up something quick<br>You gonna burn, burn, burn, burn, burn to the wick<br>Oooo, Barracuda, oh yeah\"Sell me, sell you\" the porpoise said<br>Dive down deep to save my head<br>You, I think you got the blues tooAll that night and all the next<br>Swam without looking back<br>Made for the western pools, silly, silly foolsIf the real thing don\'t do the trick, no<br>You better make up something quick<br>You gonna burn, burn, burn, burn, burn it to the wick<br>Oooo, barra-barracuda\n\n</p>\n<!-- /wp:paragraph -->', 'Barracuda - Heart', '', 'publish', 'open', 'open', '', 'barracuda-heart', '', '', '2019-10-02 02:13:52', '2019-10-02 02:13:52', '', 0, 'http://localhost/orlandoweb/?p=21', 0, 'post', '', 0),
(22, 1, '2019-10-02 02:13:52', '2019-10-02 02:13:52', '<!-- wp:paragraph -->\n<p>\nSo this ain\'t the end, I saw you again, today<br>I had to turn my heart away<br>Smiled like the sun, kisses for everyone<br>And tales, it never failsYou lying so low in the weeds<br>I bet you gonna ambush me<br>You\'d have me down, down, down on my knees<br>Now wouldn\'t you, Barracuda? OhBack over time we were all trying for free<br>You met the porpoise and me<br>No right, no wrong you\'re selling a song, a name<br>Whisper gameIf the real thing don\'t do the trick<br>You better make up something quick<br>You gonna burn, burn, burn, burn, burn to the wick<br>Oooo, Barracuda, oh yeah\"Sell me, sell you\" the porpoise said<br>Dive down deep to save my head<br>You, I think you got the blues tooAll that night and all the next<br>Swam without looking back<br>Made for the western pools, silly, silly foolsIf the real thing don\'t do the trick, no<br>You better make up something quick<br>You gonna burn, burn, burn, burn, burn it to the wick<br>Oooo, barra-barracuda\n\n</p>\n<!-- /wp:paragraph -->', 'Barracuda - Heart', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-10-02 02:13:52', '2019-10-02 02:13:52', '', 21, 'http://localhost/orlandoweb/2019/10/02/21-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(7, 1, 0),
(21, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sunakun'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:9:{s:64:\"f9aef402ef2443be02040f06e2840d919a6d2de6ebbd2d990259e6e6a235800a\";a:4:{s:10:\"expiration\";i:1570149712;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569976912;}s:64:\"40f2c84e058768913026be43fe65928b6d0a239b10db8ac8560aaaf36a7f7338\";a:4:{s:10:\"expiration\";i:1570157912;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985112;}s:64:\"9dc11ab40208b51b95487120953241c4405162e1c2458a049a678cd218ddf465\";a:4:{s:10:\"expiration\";i:1570157920;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985120;}s:64:\"9c105be93450912ebee5c0b90a8cbf65b349ad07a95a3035db5cb8ead8307cfa\";a:4:{s:10:\"expiration\";i:1570157936;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985136;}s:64:\"e354abb5f9d20b6acd6b6a2c9bb0cee73b4684e51899c7df4d0bf1c1ebb12567\";a:4:{s:10:\"expiration\";i:1570157998;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985198;}s:64:\"04a2a407f02e609eac8added9a3bdfc9675a64521db73742e5d2e088b47a13b4\";a:4:{s:10:\"expiration\";i:1570158010;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985210;}s:64:\"dc2bdc489241130dd0829977a728f7a0fbe786607e44066407a93941e9fd7ee8\";a:4:{s:10:\"expiration\";i:1570158593;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985793;}s:64:\"5567670643fb4f6f88bbd3d5863bd1790a45259c0ffca75ba235253ebe714f38\";a:4:{s:10:\"expiration\";i:1570158622;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985822;}s:64:\"279adc219f314819d9ddc2dc2938e93c8e406fbfcdfa91b05ec010358b896670\";a:4:{s:10:\"expiration\";i:1570158650;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1569985850;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o'),
(19, 1, 'wp_user-settings-time', '1569979928');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sunakun', '$P$B0UNdFL2gM530JcAWl.yBBazfX1.BU.', 'sunakun', 'ilhamgibran.am@gmail.com', '', '2019-10-02 00:41:29', '', 0, 'sunakun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
