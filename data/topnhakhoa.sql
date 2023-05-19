-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 03:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topnhakhoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost/topnhakhoa', 'yes'),
(2, 'home', 'http://localhost/topnhakhoa', 'yes'),
(3, 'blogname', 'Top Nha Khoa', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'imkay2712@gmail.com', 'yes'),
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
(22, 'posts_per_page', '11', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'topnhakhoa', 'yes'),
(41, 'stylesheet', 'topnhakhoa', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1691803437', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'vi', 'yes'),
(103, 'user_count', '2', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Phản hồi gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Chuyên mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1680575038;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1680614638;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1680614650;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1680657838;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680657850;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680657852;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681176238;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1676251542;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(128, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Xác thực SSL không thành công.\";}}', 'yes'),
(146, 'can_compress_scripts', '1', 'no'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'acf_version', '6.0.7', 'yes'),
(168, 'finished_updating_comment_type', '1', 'yes'),
(169, 'current_theme', 'Eternity Theme', 'yes'),
(170, 'theme_mods_topnhakhoa', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:9:\"main_menu\";i:2;s:13:\"header_mobile\";i:8;s:11:\"menu_mobile\";i:9;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(180, 'recovery_mode_email_last_sent', '1676252015', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(191, 'options_logo', '17', 'no'),
(192, '_options_logo', 'field_63e9b12a47d4c', 'no'),
(229, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":3,\"critical\":2}', 'yes'),
(291, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(637, 'category_children', 'a:0:{}', 'yes'),
(1000, 'options_image_maps_footer', '116', 'no'),
(1001, '_options_image_maps_footer', 'field_63f2f40157152', 'no'),
(1002, 'options_link_maps_footer', 'https://goo.gl/maps/CzR8b6QXZtikicsE8', 'no'),
(1003, '_options_link_maps_footer', 'field_63f2f41d57153', 'no'),
(1004, 'options_title_form_right_footer', 'Always Stay Up to Date', 'no'),
(1005, '_options_title_form_right_footer', 'field_63f2f42657154', 'no'),
(1006, 'options_description_form_right_footer', 'Subscribe to our newsletter to get our newest articles instantly!', 'no'),
(1007, '_options_description_form_right_footer', 'field_63f2f43157155', 'no'),
(1008, 'options_title_social_footer', 'Follow Us', 'no'),
(1009, '_options_title_social_footer', 'field_63f2f44057156', 'no'),
(1010, 'options_list_social_footer', '6', 'no'),
(1011, '_options_list_social_footer', 'field_63f2f45357157', 'no'),
(1012, 'options_list_social_footer_0_icon_social_footer', '<i class=\"fa-brands fa-facebook-f\"></i>', 'no'),
(1013, '_options_list_social_footer_0_icon_social_footer', 'field_63f2f46e57158', 'no'),
(1014, 'options_list_social_footer_0_name_social_footer', 'FACEBOOK', 'no'),
(1015, '_options_list_social_footer_0_name_social_footer', 'field_63f2f49d57159', 'no'),
(1016, 'options_list_social_footer_0_link_social_footer', '#', 'no'),
(1017, '_options_list_social_footer_0_link_social_footer', 'field_63f2f4a75715a', 'no'),
(1018, 'options_list_social_footer_1_icon_social_footer', '<i class=\"fa-brands fa-instagram\"></i>', 'no'),
(1019, '_options_list_social_footer_1_icon_social_footer', 'field_63f2f46e57158', 'no'),
(1020, 'options_list_social_footer_1_name_social_footer', 'INSTAGRAM', 'no'),
(1021, '_options_list_social_footer_1_name_social_footer', 'field_63f2f49d57159', 'no'),
(1022, 'options_list_social_footer_1_link_social_footer', '#', 'no'),
(1023, '_options_list_social_footer_1_link_social_footer', 'field_63f2f4a75715a', 'no'),
(1024, 'options_list_social_footer_2_icon_social_footer', '<i class=\"fa-brands fa-twitter\"></i>', 'no'),
(1025, '_options_list_social_footer_2_icon_social_footer', 'field_63f2f46e57158', 'no'),
(1026, 'options_list_social_footer_2_name_social_footer', 'TWITTER', 'no'),
(1027, '_options_list_social_footer_2_name_social_footer', 'field_63f2f49d57159', 'no'),
(1028, 'options_list_social_footer_2_link_social_footer', '#', 'no'),
(1029, '_options_list_social_footer_2_link_social_footer', 'field_63f2f4a75715a', 'no'),
(1030, 'options_list_social_footer_3_icon_social_footer', '<i class=\"fa-brands fa-youtube\"></i>', 'no'),
(1031, '_options_list_social_footer_3_icon_social_footer', 'field_63f2f46e57158', 'no'),
(1032, 'options_list_social_footer_3_name_social_footer', 'YOUTUBE', 'no'),
(1033, '_options_list_social_footer_3_name_social_footer', 'field_63f2f49d57159', 'no'),
(1034, 'options_list_social_footer_3_link_social_footer', '#', 'no'),
(1035, '_options_list_social_footer_3_link_social_footer', 'field_63f2f4a75715a', 'no'),
(1036, 'options_list_social_footer_4_icon_social_footer', '<i class=\"fa-brands fa-pinterest-p\"></i>', 'no'),
(1037, '_options_list_social_footer_4_icon_social_footer', 'field_63f2f46e57158', 'no'),
(1038, 'options_list_social_footer_4_name_social_footer', 'PINTEREST', 'no'),
(1039, '_options_list_social_footer_4_name_social_footer', 'field_63f2f49d57159', 'no'),
(1040, 'options_list_social_footer_4_link_social_footer', '#', 'no'),
(1041, '_options_list_social_footer_4_link_social_footer', 'field_63f2f4a75715a', 'no'),
(1042, 'options_list_social_footer_5_icon_social_footer', '<i class=\"fa-solid fa-rss\"></i>', 'no'),
(1043, '_options_list_social_footer_5_icon_social_footer', 'field_63f2f46e57158', 'no'),
(1044, 'options_list_social_footer_5_name_social_footer', ' RSS', 'no'),
(1045, '_options_list_social_footer_5_name_social_footer', 'field_63f2f49d57159', 'no'),
(1046, 'options_list_social_footer_5_link_social_footer', '#', 'no'),
(1047, '_options_list_social_footer_5_link_social_footer', 'field_63f2f4a75715a', 'no'),
(1077, 'options_title_maps_sec_7', 'Where We are Now?', 'no'),
(1078, '_options_title_maps_sec_7', 'field_63f2fc29aefcd', 'no'),
(1936, '_transient_timeout_acf_plugin_updates', '1680745899', 'no'),
(1937, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";}}', 'no'),
(1938, '_site_transient_timeout_theme_roots', '1680574900', 'no'),
(1939, '_site_transient_theme_roots', 'a:4:{s:10:\"topnhakhoa\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1941, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-6.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1680573176;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1942, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1680573177;s:7:\"checked\";a:4:{s:10:\"topnhakhoa\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1943, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1680573178;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(1944, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"imkay2712@gmail.com\";s:7:\"version\";s:3:\"6.2\";s:9:\"timestamp\";i:1680573178;}', 'no'),
(1945, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1681177980', 'no'),
(1946, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 8, '_edit_lock', '1677140853:1'),
(12, 8, '_wp_page_template', 'page-templates/home-page.php'),
(24, 13, '_menu_item_type', 'post_type'),
(25, 13, '_menu_item_menu_item_parent', '0'),
(26, 13, '_menu_item_object_id', '8'),
(27, 13, '_menu_item_object', 'page'),
(28, 13, '_menu_item_target', ''),
(29, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 13, '_menu_item_xfn', ''),
(31, 13, '_menu_item_url', ''),
(32, 13, '_menu_item_orphaned', '1676252877'),
(36, 14, '_edit_last', '1'),
(37, 14, '_edit_lock', '1676948000:1'),
(38, 17, '_wp_attached_file', '2023/02/logo.png'),
(39, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:126;s:6:\"height\";i:60;s:4:\"file\";s:16:\"2023/02/logo.png\";s:8:\"filesize\";i:6243;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 18, '_menu_item_type', 'custom'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '18'),
(43, 18, '_menu_item_object', 'custom'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', '#'),
(49, 19, '_menu_item_type', 'custom'),
(50, 19, '_menu_item_menu_item_parent', '0'),
(51, 19, '_menu_item_object_id', '19'),
(52, 19, '_menu_item_object', 'custom'),
(53, 19, '_menu_item_target', ''),
(54, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 19, '_menu_item_xfn', ''),
(56, 19, '_menu_item_url', '#'),
(58, 20, '_menu_item_type', 'custom'),
(59, 20, '_menu_item_menu_item_parent', '0'),
(60, 20, '_menu_item_object_id', '20'),
(61, 20, '_menu_item_object', 'custom'),
(62, 20, '_menu_item_target', ''),
(63, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 20, '_menu_item_xfn', ''),
(65, 20, '_menu_item_url', '#'),
(67, 21, '_menu_item_type', 'custom'),
(68, 21, '_menu_item_menu_item_parent', '0'),
(69, 21, '_menu_item_object_id', '21'),
(70, 21, '_menu_item_object', 'custom'),
(71, 21, '_menu_item_target', ''),
(72, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 21, '_menu_item_xfn', ''),
(74, 21, '_menu_item_url', '#'),
(76, 22, '_menu_item_type', 'post_type'),
(77, 22, '_menu_item_menu_item_parent', '0'),
(78, 22, '_menu_item_object_id', '8'),
(79, 22, '_menu_item_object', 'page'),
(80, 22, '_menu_item_target', ''),
(81, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 22, '_menu_item_xfn', ''),
(83, 22, '_menu_item_url', ''),
(85, 23, '_edit_last', '1'),
(86, 23, '_edit_lock', '1676436421:1'),
(91, 26, '_edit_lock', '1677031563:1'),
(92, 27, '_wp_attached_file', '2023/02/ezgif.com-webp-to-jpg.jpg'),
(93, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:33:\"2023/02/ezgif.com-webp-to-jpg.jpg\";s:8:\"filesize\";i:29146;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 26, '_thumbnail_id', '69'),
(97, 29, '_edit_lock', '1677031559:1'),
(98, 29, '_thumbnail_id', '140'),
(102, 29, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(103, 31, '_edit_lock', '1677031555:1'),
(104, 31, '_thumbnail_id', '71'),
(105, 31, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(108, 31, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(109, 33, '_wp_attached_file', '2023/02/r15-420x280-1.jpg'),
(110, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:25:\"2023/02/r15-420x280-1.jpg\";s:8:\"filesize\";i:29282;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 22, 'select_post_show_in_menu', ''),
(114, 22, '_select_post_show_in_menu', 'field_63eaf6403a66a'),
(115, 18, 'select_post_show_in_menu', 'a:5:{i:0;s:2:\"29\";i:1;s:2:\"31\";i:2;s:2:\"26\";i:3;s:2:\"34\";i:4;s:2:\"38\";}'),
(116, 18, '_select_post_show_in_menu', 'field_63eaf6403a66a'),
(117, 19, 'select_post_show_in_menu', ''),
(118, 19, '_select_post_show_in_menu', 'field_63eaf6403a66a'),
(119, 20, 'select_post_show_in_menu', 'a:5:{i:0;s:2:\"29\";i:1;s:2:\"26\";i:2;s:2:\"31\";i:3;s:2:\"34\";i:4;s:2:\"38\";}'),
(120, 20, '_select_post_show_in_menu', 'field_63eaf6403a66a'),
(121, 21, 'select_post_show_in_menu', ''),
(122, 21, '_select_post_show_in_menu', 'field_63eaf6403a66a'),
(123, 34, '_edit_lock', '1677031610:1'),
(124, 34, '_thumbnail_id', '69'),
(125, 34, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(128, 34, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(129, 22, 'name_menu_item', ''),
(130, 22, '_name_menu_item', 'field_63eb2e71a11b3'),
(131, 22, 'link_show_more', ''),
(132, 22, '_link_show_more', 'field_63eb2e7fa11b4'),
(133, 18, 'name_menu_item', 'Poland'),
(134, 18, '_name_menu_item', 'field_63eb2e71a11b3'),
(135, 18, 'link_show_more', '#'),
(136, 18, '_link_show_more', 'field_63eb2e7fa11b4'),
(137, 19, 'name_menu_item', ''),
(138, 19, '_name_menu_item', 'field_63eb2e71a11b3'),
(139, 19, 'link_show_more', ''),
(140, 19, '_link_show_more', 'field_63eb2e7fa11b4'),
(141, 20, 'name_menu_item', 'Italy'),
(142, 20, '_name_menu_item', 'field_63eb2e71a11b3'),
(143, 20, 'link_show_more', '#'),
(144, 20, '_link_show_more', 'field_63eb2e7fa11b4'),
(145, 21, 'name_menu_item', ''),
(146, 21, '_name_menu_item', 'field_63eb2e71a11b3'),
(147, 21, 'link_show_more', ''),
(148, 21, '_link_show_more', 'field_63eb2e7fa11b4'),
(149, 38, '_edit_lock', '1677031571:1'),
(150, 38, '_thumbnail_id', '33'),
(151, 38, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(152, 38, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(158, 38, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(159, 22, 'mega_1', '0'),
(160, 22, '_mega_1', 'field_63eb382e630e0'),
(161, 22, 'mega_2', '0'),
(162, 22, '_mega_2', 'field_63eb386d630e1'),
(163, 18, 'mega_1', '1'),
(164, 18, '_mega_1', 'field_63eb382e630e0'),
(165, 18, 'mega_2', '0'),
(166, 18, '_mega_2', 'field_63eb386d630e1'),
(167, 19, 'mega_1', '0'),
(168, 19, '_mega_1', 'field_63eb382e630e0'),
(169, 19, 'mega_2', '1'),
(170, 19, '_mega_2', 'field_63eb386d630e1'),
(171, 20, 'mega_1', '1'),
(172, 20, '_mega_1', 'field_63eb382e630e0'),
(173, 20, 'mega_2', '0'),
(174, 20, '_mega_2', 'field_63eb386d630e1'),
(175, 21, 'mega_1', '0'),
(176, 21, '_mega_1', 'field_63eb382e630e0'),
(177, 21, 'mega_2', '0'),
(178, 21, '_mega_2', 'field_63eb386d630e1'),
(179, 42, '_menu_item_type', 'custom'),
(180, 42, '_menu_item_menu_item_parent', '21'),
(181, 42, '_menu_item_object_id', '42'),
(182, 42, '_menu_item_object', 'custom'),
(183, 42, '_menu_item_target', ''),
(184, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 42, '_menu_item_xfn', ''),
(186, 42, '_menu_item_url', '#'),
(188, 43, '_menu_item_type', 'custom'),
(189, 43, '_menu_item_menu_item_parent', '21'),
(190, 43, '_menu_item_object_id', '43'),
(191, 43, '_menu_item_object', 'custom'),
(192, 43, '_menu_item_target', ''),
(193, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 43, '_menu_item_xfn', ''),
(195, 43, '_menu_item_url', '#'),
(197, 44, '_menu_item_type', 'custom'),
(198, 44, '_menu_item_menu_item_parent', '21'),
(199, 44, '_menu_item_object_id', '44'),
(200, 44, '_menu_item_object', 'custom'),
(201, 44, '_menu_item_target', ''),
(202, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(203, 44, '_menu_item_xfn', ''),
(204, 44, '_menu_item_url', '#'),
(206, 45, '_menu_item_type', 'custom'),
(207, 45, '_menu_item_menu_item_parent', '21'),
(208, 45, '_menu_item_object_id', '45'),
(209, 45, '_menu_item_object', 'custom'),
(210, 45, '_menu_item_target', ''),
(211, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 45, '_menu_item_xfn', ''),
(213, 45, '_menu_item_url', '#'),
(215, 42, 'mega_1', '0'),
(216, 42, '_mega_1', 'field_63eb382e630e0'),
(217, 42, 'mega_2', '0'),
(218, 42, '_mega_2', 'field_63eb386d630e1'),
(219, 43, 'mega_1', '0'),
(220, 43, '_mega_1', 'field_63eb382e630e0'),
(221, 43, 'mega_2', '0'),
(222, 43, '_mega_2', 'field_63eb386d630e1'),
(223, 44, 'mega_1', '0'),
(224, 44, '_mega_1', 'field_63eb382e630e0'),
(225, 44, 'mega_2', '0'),
(226, 44, '_mega_2', 'field_63eb386d630e1'),
(227, 45, 'mega_1', '0'),
(228, 45, '_mega_1', 'field_63eb382e630e0'),
(229, 45, 'mega_2', '0'),
(230, 45, '_mega_2', 'field_63eb386d630e1'),
(231, 19, 'column_1', '26'),
(232, 19, '_column_1', 'field_63ec4bb7eb56b'),
(233, 19, 'column_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"31\";i:2;s:2:\"34\";}'),
(234, 19, '_column_2', 'field_63ec4bd3eb56c'),
(235, 19, 'column_3', 'a:4:{i:0;s:2:\"26\";i:1;s:2:\"29\";i:2;s:2:\"31\";i:3;s:2:\"34\";}'),
(236, 19, '_column_3', 'field_63ec4be6eb56d'),
(237, 22, '_wp_old_date', '2023-02-14'),
(238, 18, '_wp_old_date', '2023-02-14'),
(239, 19, '_wp_old_date', '2023-02-14'),
(240, 20, '_wp_old_date', '2023-02-14'),
(241, 21, '_wp_old_date', '2023-02-14'),
(242, 42, '_wp_old_date', '2023-02-14'),
(243, 43, '_wp_old_date', '2023-02-14'),
(244, 44, '_wp_old_date', '2023-02-14'),
(245, 45, '_wp_old_date', '2023-02-14'),
(246, 19, 'lable_mega_2', 'Vietnam'),
(247, 19, '_lable_mega_2', 'field_63ec54fd0a90d'),
(248, 51, '_edit_last', '1'),
(249, 51, '_edit_lock', '1676866394:1'),
(250, 58, '_wp_attached_file', '2023/02/banner-top.png'),
(251, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:618;s:4:\"file\";s:22:\"2023/02/banner-top.png\";s:8:\"filesize\";i:593042;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 8, '_edit_last', '1'),
(253, 8, 'sec_1_banner_left', '58'),
(254, 8, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(255, 8, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(256, 8, '_content_right_sec_1', 'field_63ec91956cbc4'),
(257, 8, 'icon_button_sec_1', ''),
(258, 8, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(259, 8, 'text_button_sec_1', 'Follow us on Youtube'),
(260, 8, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(261, 8, 'link_button_sec_1', '#'),
(262, 8, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(263, 59, 'sec_1_banner_left', '58'),
(264, 59, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(265, 59, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(266, 59, '_content_right_sec_1', 'field_63ec91956cbc4'),
(267, 59, 'icon_button_sec_1', ''),
(268, 59, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(269, 59, 'text_button_sec_1', 'Follow us on Youtube'),
(270, 59, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(271, 59, 'link_button_sec_1', '#'),
(272, 59, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(273, 60, '_edit_lock', '1677031567:1'),
(274, 60, '_thumbnail_id', '27'),
(275, 60, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(276, 60, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(277, 60, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(280, 60, '_edit_last', '1'),
(283, 60, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2'),
(288, 38, '_edit_last', '1'),
(291, 34, '_edit_last', '1'),
(294, 31, '_edit_last', '1'),
(297, 29, '_edit_last', '1'),
(300, 26, '_edit_last', '1'),
(325, 8, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(326, 8, '_select_post_sec_2', 'field_63ed8a4681bec'),
(327, 8, 'title_left_small_sec_2', 'Best time to'),
(328, 8, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(329, 8, 'title_left_big_sec_2', 'Travel?'),
(330, 8, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(331, 66, 'sec_1_banner_left', '58'),
(332, 66, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(333, 66, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(334, 66, '_content_right_sec_1', 'field_63ec91956cbc4'),
(335, 66, 'icon_button_sec_1', ''),
(336, 66, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(337, 66, 'text_button_sec_1', 'Follow us on Youtube'),
(338, 66, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(339, 66, 'link_button_sec_1', '#'),
(340, 66, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(341, 66, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(342, 66, '_select_post_sec_2', 'field_63ed8a4681bec'),
(343, 66, 'title_left_small_sec_2', 'Best time to'),
(344, 66, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(345, 66, 'title_left_big_sec_2', 'Travel?'),
(346, 66, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(347, 67, '_edit_last', '1'),
(348, 67, '_edit_lock', '1676520221:1'),
(349, 69, '_wp_attached_file', '2023/02/cate-1.jpg'),
(350, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:18:\"2023/02/cate-1.jpg\";s:8:\"filesize\";i:23732;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 70, '_wp_attached_file', '2023/02/cate-2.jpg'),
(352, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:18:\"2023/02/cate-2.jpg\";s:8:\"filesize\";i:32920;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 71, '_wp_attached_file', '2023/02/cate-4.jpg'),
(354, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:18:\"2023/02/cate-4.jpg\";s:8:\"filesize\";i:31001;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 8, 'sub_title_sec3', 'Editor\'s Pick'),
(356, 8, '_sub_title_sec3', 'field_63edabc938d5a'),
(357, 8, 'title_sec3', 'Must Read'),
(358, 8, '_title_sec3', 'field_63edabdb38d5b'),
(359, 8, 'select_posts_section_3', 'a:6:{i:0;s:2:\"26\";i:1;s:2:\"31\";i:2;s:2:\"29\";i:3;s:2:\"34\";i:4;s:2:\"38\";i:5;s:2:\"60\";}'),
(360, 8, '_select_posts_section_3', 'field_63edabea38d5c'),
(361, 76, 'sec_1_banner_left', '58'),
(362, 76, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(363, 76, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(364, 76, '_content_right_sec_1', 'field_63ec91956cbc4'),
(365, 76, 'icon_button_sec_1', ''),
(366, 76, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(367, 76, 'text_button_sec_1', 'Follow us on Youtube'),
(368, 76, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(369, 76, 'link_button_sec_1', '#'),
(370, 76, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(371, 76, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(372, 76, '_select_post_sec_2', 'field_63ed8a4681bec'),
(373, 76, 'title_left_small_sec_2', 'Best time to'),
(374, 76, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(375, 76, 'title_left_big_sec_2', 'Travel?'),
(376, 76, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(377, 76, 'sub_title_sec3', 'Editor\'s Pick'),
(378, 76, '_sub_title_sec3', 'field_63edabc938d5a'),
(379, 76, 'title_sec3', 'Must Read'),
(380, 76, '_title_sec3', 'field_63edabdb38d5b'),
(381, 76, 'select_posts_section_3', 'a:6:{i:0;s:2:\"26\";i:1;s:2:\"31\";i:2;s:2:\"29\";i:3;s:2:\"34\";i:4;s:2:\"38\";i:5;s:2:\"60\";}'),
(382, 76, '_select_posts_section_3', 'field_63edabea38d5c'),
(395, 8, 'sub_title_sec_4', 'Explore'),
(396, 8, '_sub_title_sec_4', 'field_63eee3f5ff421'),
(397, 8, 'title_sec_4', 'Vietnam'),
(398, 8, '_title_sec_4', 'field_63eee403ff422'),
(399, 8, 'select_post_sec_4', 'a:1:{i:0;s:1:\"3\";}'),
(400, 8, '_select_post_sec_4', 'field_63eee412ff423'),
(401, 87, 'sec_1_banner_left', '58'),
(402, 87, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(403, 87, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(404, 87, '_content_right_sec_1', 'field_63ec91956cbc4'),
(405, 87, 'icon_button_sec_1', ''),
(406, 87, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(407, 87, 'text_button_sec_1', 'Follow us on Youtube'),
(408, 87, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(409, 87, 'link_button_sec_1', '#'),
(410, 87, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(411, 87, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(412, 87, '_select_post_sec_2', 'field_63ed8a4681bec'),
(413, 87, 'title_left_small_sec_2', 'Best time to'),
(414, 87, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(415, 87, 'title_left_big_sec_2', 'Travel?'),
(416, 87, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(417, 87, 'sub_title_sec3', 'Editor\'s Pick'),
(418, 87, '_sub_title_sec3', 'field_63edabc938d5a'),
(419, 87, 'title_sec3', 'Must Read'),
(420, 87, '_title_sec3', 'field_63edabdb38d5b'),
(421, 87, 'select_posts_section_3', 'a:6:{i:0;s:2:\"26\";i:1;s:2:\"31\";i:2;s:2:\"29\";i:3;s:2:\"34\";i:4;s:2:\"38\";i:5;s:2:\"60\";}'),
(422, 87, '_select_posts_section_3', 'field_63edabea38d5c'),
(423, 87, 'sub_title_sec_4', 'Explore'),
(424, 87, '_sub_title_sec_4', 'field_63eee3f5ff421'),
(425, 87, 'title_sec_4', 'Vietnam'),
(426, 87, '_title_sec_4', 'field_63eee403ff422'),
(427, 87, 'select_post_sec_4', 'a:1:{i:0;s:1:\"3\";}'),
(428, 87, '_select_post_sec_4', 'field_63eee412ff423'),
(429, 8, 'sub_title_sec_5', 'Explore'),
(430, 8, '_sub_title_sec_5', 'field_63eef7474720b'),
(431, 8, 'title_sec_5', 'Morocco'),
(432, 8, '_title_sec_5', 'field_63eef7514720c'),
(433, 8, 'select_category_sec_5', 'a:1:{i:0;s:1:\"4\";}'),
(434, 8, '_select_category_sec_5', 'field_63eef75f4720d'),
(435, 92, 'sec_1_banner_left', '58'),
(436, 92, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(437, 92, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(438, 92, '_content_right_sec_1', 'field_63ec91956cbc4'),
(439, 92, 'icon_button_sec_1', ''),
(440, 92, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(441, 92, 'text_button_sec_1', 'Follow us on Youtube'),
(442, 92, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(443, 92, 'link_button_sec_1', '#'),
(444, 92, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(445, 92, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(446, 92, '_select_post_sec_2', 'field_63ed8a4681bec'),
(447, 92, 'title_left_small_sec_2', 'Best time to'),
(448, 92, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(449, 92, 'title_left_big_sec_2', 'Travel?'),
(450, 92, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(451, 92, 'sub_title_sec3', 'Editor\'s Pick'),
(452, 92, '_sub_title_sec3', 'field_63edabc938d5a'),
(453, 92, 'title_sec3', 'Must Read'),
(454, 92, '_title_sec3', 'field_63edabdb38d5b'),
(455, 92, 'select_posts_section_3', 'a:6:{i:0;s:2:\"26\";i:1;s:2:\"31\";i:2;s:2:\"29\";i:3;s:2:\"34\";i:4;s:2:\"38\";i:5;s:2:\"60\";}'),
(456, 92, '_select_posts_section_3', 'field_63edabea38d5c'),
(457, 92, 'sub_title_sec_4', 'Explore'),
(458, 92, '_sub_title_sec_4', 'field_63eee3f5ff421'),
(459, 92, 'title_sec_4', 'Vietnam'),
(460, 92, '_title_sec_4', 'field_63eee403ff422'),
(461, 92, 'select_post_sec_4', 'a:1:{i:0;s:1:\"3\";}'),
(462, 92, '_select_post_sec_4', 'field_63eee412ff423'),
(463, 92, 'sub_title_sec_5', 'Explore'),
(464, 92, '_sub_title_sec_5', 'field_63eef7474720b'),
(465, 92, 'title_sec_5', 'Morocco'),
(466, 92, '_title_sec_5', 'field_63eef7514720c'),
(467, 92, 'select_category_sec_5', 'a:1:{i:0;s:1:\"4\";}'),
(468, 92, '_select_category_sec_5', 'field_63eef75f4720d'),
(469, 8, 'sub_title_sec_6', 'Explore'),
(470, 8, '_sub_title_sec_6', 'field_63f2d200cfd79'),
(471, 8, 'title_sec_6', 'Europe'),
(472, 8, '_title_sec_6', 'field_63f2d20fcfd7a'),
(473, 8, 'select_category_sec_6', 'a:1:{i:0;s:1:\"5\";}'),
(474, 8, '_select_category_sec_6', 'field_63f2d21ccfd7b'),
(475, 98, 'sec_1_banner_left', '58'),
(476, 98, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(477, 98, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(478, 98, '_content_right_sec_1', 'field_63ec91956cbc4'),
(479, 98, 'icon_button_sec_1', ''),
(480, 98, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(481, 98, 'text_button_sec_1', 'Follow us on Youtube'),
(482, 98, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(483, 98, 'link_button_sec_1', '#'),
(484, 98, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(485, 98, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(486, 98, '_select_post_sec_2', 'field_63ed8a4681bec'),
(487, 98, 'title_left_small_sec_2', 'Best time to'),
(488, 98, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(489, 98, 'title_left_big_sec_2', 'Travel?'),
(490, 98, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(491, 98, 'sub_title_sec3', 'Editor\'s Pick'),
(492, 98, '_sub_title_sec3', 'field_63edabc938d5a'),
(493, 98, 'title_sec3', 'Must Read'),
(494, 98, '_title_sec3', 'field_63edabdb38d5b'),
(495, 98, 'select_posts_section_3', 'a:6:{i:0;s:2:\"26\";i:1;s:2:\"31\";i:2;s:2:\"29\";i:3;s:2:\"34\";i:4;s:2:\"38\";i:5;s:2:\"60\";}'),
(496, 98, '_select_posts_section_3', 'field_63edabea38d5c'),
(497, 98, 'sub_title_sec_4', 'Explore'),
(498, 98, '_sub_title_sec_4', 'field_63eee3f5ff421'),
(499, 98, 'title_sec_4', 'Vietnam'),
(500, 98, '_title_sec_4', 'field_63eee403ff422'),
(501, 98, 'select_post_sec_4', 'a:1:{i:0;s:1:\"3\";}'),
(502, 98, '_select_post_sec_4', 'field_63eee412ff423'),
(503, 98, 'sub_title_sec_5', 'Explore'),
(504, 98, '_sub_title_sec_5', 'field_63eef7474720b'),
(505, 98, 'title_sec_5', 'Morocco'),
(506, 98, '_title_sec_5', 'field_63eef7514720c'),
(507, 98, 'select_category_sec_5', 'a:1:{i:0;s:1:\"4\";}'),
(508, 98, '_select_category_sec_5', 'field_63eef75f4720d'),
(509, 98, 'sub_title_sec_6', 'Explore'),
(510, 98, '_sub_title_sec_6', 'field_63f2d200cfd79'),
(511, 98, 'title_sec_6', 'Europe'),
(512, 98, '_title_sec_6', 'field_63f2d20fcfd7a'),
(513, 98, 'select_category_sec_6', 'a:1:{i:0;s:1:\"5\";}'),
(514, 98, '_select_category_sec_6', 'field_63f2d21ccfd7b'),
(515, 8, 'sub_title_sec_7', 'Latest Blog'),
(516, 8, '_sub_title_sec_7', 'field_63f2ea9989594'),
(517, 8, 'title_sec_7', 'Stories'),
(518, 8, '_title_sec_7', 'field_63f2eaa489595'),
(519, 8, 'text_button_read_more_sec_7', 'Read More'),
(520, 8, '_text_button_read_more_sec_7', 'field_63f2eaaf89596'),
(521, 8, 'link_button_read_more_7', '#'),
(522, 8, '_link_button_read_more_7', 'field_63f2eac289597'),
(523, 104, 'sec_1_banner_left', '58'),
(524, 104, '_sec_1_banner_left', 'field_63ec917b6cbc3'),
(525, 104, 'content_right_sec_1', '<h3>The Roads</h3>\r\nThanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year.\r\n\r\nHere is where you’ll find some of our best travel tips for traveling with family, saving money for travel, planning your trip, and unbelievable destinations.'),
(526, 104, '_content_right_sec_1', 'field_63ec91956cbc4'),
(527, 104, 'icon_button_sec_1', ''),
(528, 104, '_icon_button_sec_1', 'field_63ec91b46cbc5'),
(529, 104, 'text_button_sec_1', 'Follow us on Youtube'),
(530, 104, '_text_button_sec_1', 'field_63ec91ce6cbc6'),
(531, 104, 'link_button_sec_1', '#'),
(532, 104, '_link_button_sec_1', 'field_63ec91d86cbc7'),
(533, 104, 'select_post_sec_2', 'a:3:{i:0;s:2:\"29\";i:1;s:2:\"34\";i:2;s:2:\"38\";}'),
(534, 104, '_select_post_sec_2', 'field_63ed8a4681bec'),
(535, 104, 'title_left_small_sec_2', 'Best time to'),
(536, 104, '_title_left_small_sec_2', 'field_63ed8a7f81bed'),
(537, 104, 'title_left_big_sec_2', 'Travel?'),
(538, 104, '_title_left_big_sec_2', 'field_63ed8a9681bee'),
(539, 104, 'sub_title_sec3', 'Editor\'s Pick'),
(540, 104, '_sub_title_sec3', 'field_63edabc938d5a'),
(541, 104, 'title_sec3', 'Must Read'),
(542, 104, '_title_sec3', 'field_63edabdb38d5b'),
(543, 104, 'select_posts_section_3', 'a:6:{i:0;s:2:\"26\";i:1;s:2:\"31\";i:2;s:2:\"29\";i:3;s:2:\"34\";i:4;s:2:\"38\";i:5;s:2:\"60\";}'),
(544, 104, '_select_posts_section_3', 'field_63edabea38d5c'),
(545, 104, 'sub_title_sec_4', 'Explore'),
(546, 104, '_sub_title_sec_4', 'field_63eee3f5ff421'),
(547, 104, 'title_sec_4', 'Vietnam'),
(548, 104, '_title_sec_4', 'field_63eee403ff422'),
(549, 104, 'select_post_sec_4', 'a:1:{i:0;s:1:\"3\";}'),
(550, 104, '_select_post_sec_4', 'field_63eee412ff423'),
(551, 104, 'sub_title_sec_5', 'Explore'),
(552, 104, '_sub_title_sec_5', 'field_63eef7474720b'),
(553, 104, 'title_sec_5', 'Morocco'),
(554, 104, '_title_sec_5', 'field_63eef7514720c'),
(555, 104, 'select_category_sec_5', 'a:1:{i:0;s:1:\"4\";}'),
(556, 104, '_select_category_sec_5', 'field_63eef75f4720d'),
(557, 104, 'sub_title_sec_6', 'Explore'),
(558, 104, '_sub_title_sec_6', 'field_63f2d200cfd79'),
(559, 104, 'title_sec_6', 'Europe'),
(560, 104, '_title_sec_6', 'field_63f2d20fcfd7a'),
(561, 104, 'select_category_sec_6', 'a:1:{i:0;s:1:\"5\";}'),
(562, 104, '_select_category_sec_6', 'field_63f2d21ccfd7b'),
(563, 104, 'sub_title_sec_7', 'Latest Blog'),
(564, 104, '_sub_title_sec_7', 'field_63f2ea9989594'),
(565, 104, 'title_sec_7', 'Stories'),
(566, 104, '_title_sec_7', 'field_63f2eaa489595'),
(567, 104, 'text_button_read_more_sec_7', 'Read More'),
(568, 104, '_text_button_read_more_sec_7', 'field_63f2eaaf89596'),
(569, 104, 'link_button_read_more_7', '#'),
(570, 104, '_link_button_read_more_7', 'field_63f2eac289597'),
(571, 105, '_edit_last', '1'),
(572, 105, '_edit_lock', '1676972989:1'),
(573, 116, '_wp_attached_file', '2023/02/maps.jpg'),
(574, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:426;s:6:\"height\";i:254;s:4:\"file\";s:16:\"2023/02/maps.jpg\";s:8:\"filesize\";i:30327;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:4:\"user\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1676892006\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 118, '_menu_item_type', 'post_type'),
(576, 118, '_menu_item_menu_item_parent', '0'),
(577, 118, '_menu_item_object_id', '8'),
(578, 118, '_menu_item_object', 'page'),
(579, 118, '_menu_item_target', ''),
(580, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(581, 118, '_menu_item_xfn', ''),
(582, 118, '_menu_item_url', ''),
(584, 119, '_menu_item_type', 'custom'),
(585, 119, '_menu_item_menu_item_parent', '0'),
(586, 119, '_menu_item_object_id', '119'),
(587, 119, '_menu_item_object', 'custom'),
(588, 119, '_menu_item_target', ''),
(589, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(590, 119, '_menu_item_xfn', ''),
(591, 119, '_menu_item_url', '#'),
(593, 120, '_menu_item_type', 'custom'),
(594, 120, '_menu_item_menu_item_parent', '0'),
(595, 120, '_menu_item_object_id', '120'),
(596, 120, '_menu_item_object', 'custom'),
(597, 120, '_menu_item_target', ''),
(598, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(599, 120, '_menu_item_xfn', ''),
(600, 120, '_menu_item_url', '#'),
(602, 121, '_menu_item_type', 'custom'),
(603, 121, '_menu_item_menu_item_parent', '0'),
(604, 121, '_menu_item_object_id', '121'),
(605, 121, '_menu_item_object', 'custom'),
(606, 121, '_menu_item_target', ''),
(607, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(608, 121, '_menu_item_xfn', ''),
(609, 121, '_menu_item_url', '#'),
(611, 122, '_menu_item_type', 'custom'),
(612, 122, '_menu_item_menu_item_parent', '0'),
(613, 122, '_menu_item_object_id', '122'),
(614, 122, '_menu_item_object', 'custom'),
(615, 122, '_menu_item_target', ''),
(616, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(617, 122, '_menu_item_xfn', ''),
(618, 122, '_menu_item_url', '#'),
(620, 123, '_menu_item_type', 'custom'),
(621, 123, '_menu_item_menu_item_parent', '0'),
(622, 123, '_menu_item_object_id', '123'),
(623, 123, '_menu_item_object', 'custom'),
(624, 123, '_menu_item_target', ''),
(625, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(626, 123, '_menu_item_xfn', ''),
(627, 123, '_menu_item_url', '#'),
(629, 124, '_menu_item_type', 'custom'),
(630, 124, '_menu_item_menu_item_parent', '0'),
(631, 124, '_menu_item_object_id', '124'),
(632, 124, '_menu_item_object', 'custom'),
(633, 124, '_menu_item_target', ''),
(634, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(635, 124, '_menu_item_xfn', ''),
(636, 124, '_menu_item_url', '#'),
(638, 125, '_menu_item_type', 'post_type'),
(639, 125, '_menu_item_menu_item_parent', '0'),
(640, 125, '_menu_item_object_id', '8'),
(641, 125, '_menu_item_object', 'page'),
(642, 125, '_menu_item_target', ''),
(643, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(644, 125, '_menu_item_xfn', ''),
(645, 125, '_menu_item_url', ''),
(647, 126, '_menu_item_type', 'custom'),
(648, 126, '_menu_item_menu_item_parent', '0'),
(649, 126, '_menu_item_object_id', '126'),
(650, 126, '_menu_item_object', 'custom'),
(651, 126, '_menu_item_target', ''),
(652, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(653, 126, '_menu_item_xfn', ''),
(654, 126, '_menu_item_url', '#'),
(656, 127, '_menu_item_type', 'taxonomy'),
(657, 127, '_menu_item_menu_item_parent', '126'),
(658, 127, '_menu_item_object_id', '3'),
(659, 127, '_menu_item_object', 'category'),
(660, 127, '_menu_item_target', ''),
(661, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(662, 127, '_menu_item_xfn', ''),
(663, 127, '_menu_item_url', ''),
(665, 128, '_menu_item_type', 'taxonomy'),
(666, 128, '_menu_item_menu_item_parent', '126'),
(667, 128, '_menu_item_object_id', '4'),
(668, 128, '_menu_item_object', 'category'),
(669, 128, '_menu_item_target', ''),
(670, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(671, 128, '_menu_item_xfn', ''),
(672, 128, '_menu_item_url', ''),
(674, 129, '_menu_item_type', 'taxonomy'),
(675, 129, '_menu_item_menu_item_parent', '126'),
(676, 129, '_menu_item_object_id', '5'),
(677, 129, '_menu_item_object', 'category'),
(678, 129, '_menu_item_target', ''),
(679, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(680, 129, '_menu_item_xfn', ''),
(681, 129, '_menu_item_url', ''),
(683, 130, '_menu_item_type', 'taxonomy'),
(684, 130, '_menu_item_menu_item_parent', '126'),
(685, 130, '_menu_item_object_id', '6'),
(686, 130, '_menu_item_object', 'category'),
(687, 130, '_menu_item_target', ''),
(688, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(689, 130, '_menu_item_xfn', ''),
(690, 130, '_menu_item_url', ''),
(692, 131, '_menu_item_type', 'taxonomy'),
(693, 131, '_menu_item_menu_item_parent', '126'),
(694, 131, '_menu_item_object_id', '7'),
(695, 131, '_menu_item_object', 'category'),
(696, 131, '_menu_item_target', ''),
(697, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(698, 131, '_menu_item_xfn', ''),
(699, 131, '_menu_item_url', ''),
(701, 132, '_menu_item_type', 'custom'),
(702, 132, '_menu_item_menu_item_parent', '0'),
(703, 132, '_menu_item_object_id', '132'),
(704, 132, '_menu_item_object', 'custom'),
(705, 132, '_menu_item_target', ''),
(706, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(707, 132, '_menu_item_xfn', ''),
(708, 132, '_menu_item_url', '#'),
(710, 133, '_menu_item_type', 'custom'),
(711, 133, '_menu_item_menu_item_parent', '132'),
(712, 133, '_menu_item_object_id', '133'),
(713, 133, '_menu_item_object', 'custom'),
(714, 133, '_menu_item_target', ''),
(715, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(716, 133, '_menu_item_xfn', ''),
(717, 133, '_menu_item_url', '#'),
(719, 134, '_menu_item_type', 'custom'),
(720, 134, '_menu_item_menu_item_parent', '132'),
(721, 134, '_menu_item_object_id', '134'),
(722, 134, '_menu_item_object', 'custom'),
(723, 134, '_menu_item_target', ''),
(724, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(725, 134, '_menu_item_xfn', ''),
(726, 134, '_menu_item_url', '#'),
(728, 135, '_menu_item_type', 'custom'),
(729, 135, '_menu_item_menu_item_parent', '132'),
(730, 135, '_menu_item_object_id', '135'),
(731, 135, '_menu_item_object', 'custom'),
(732, 135, '_menu_item_target', ''),
(733, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(734, 135, '_menu_item_xfn', ''),
(735, 135, '_menu_item_url', '#'),
(737, 136, '_menu_item_type', 'custom'),
(738, 136, '_menu_item_menu_item_parent', '132'),
(739, 136, '_menu_item_object_id', '136'),
(740, 136, '_menu_item_object', 'custom'),
(741, 136, '_menu_item_target', ''),
(742, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(743, 136, '_menu_item_xfn', ''),
(744, 136, '_menu_item_url', '#'),
(748, 138, '_wp_attached_file', '2023/02/post-3.jpg'),
(749, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:18:\"2023/02/post-3.jpg\";s:8:\"filesize\";i:27010;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(760, 140, '_wp_attached_file', '2023/02/tf2-860x573-1.jpg'),
(761, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:860;s:6:\"height\";i:573;s:4:\"file\";s:25:\"2023/02/tf2-860x573-1.jpg\";s:8:\"filesize\";i:159015;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(768, 141, '_edit_lock', '1677031668:1'),
(769, 141, '_thumbnail_id', '142'),
(770, 141, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(771, 141, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(772, 141, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(773, 141, '_edit_last', '1'),
(774, 141, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2'),
(775, 142, '_wp_attached_file', '2023/02/r9-860x573-1.jpg'),
(776, 142, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:860;s:6:\"height\";i:573;s:4:\"file\";s:24:\"2023/02/r9-860x573-1.jpg\";s:8:\"filesize\";i:134824;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(779, 141, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2'),
(780, 145, '_edit_lock', '1677031708:1'),
(781, 145, '_thumbnail_id', '146'),
(782, 145, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(783, 145, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(784, 145, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(785, 145, '_edit_last', '1'),
(786, 145, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2'),
(787, 145, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2'),
(795, 146, '_wp_attached_file', '2023/02/r25-420x280-1.jpg'),
(796, 146, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:25:\"2023/02/r25-420x280-1.jpg\";s:8:\"filesize\";i:36084;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(799, 145, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2'),
(800, 148, '_edit_lock', '1677031729:1'),
(801, 148, '_thumbnail_id', '149'),
(802, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(803, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(804, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(805, 148, '_edit_last', '1'),
(806, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2'),
(807, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2'),
(808, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2'),
(815, 149, '_wp_attached_file', '2023/02/r48-860x645-1.jpg'),
(816, 149, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:860;s:6:\"height\";i:645;s:4:\"file\";s:25:\"2023/02/r48-860x645-1.jpg\";s:8:\"filesize\";i:138995;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(819, 148, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2'),
(820, 151, '_edit_lock', '1677031752:1'),
(821, 151, '_thumbnail_id', '152'),
(822, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(823, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(824, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(825, 151, '_edit_last', '1'),
(826, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2'),
(827, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2'),
(828, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2'),
(829, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2'),
(835, 152, '_wp_attached_file', '2023/02/r51-420x280-1.jpg'),
(836, 152, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:25:\"2023/02/r51-420x280-1.jpg\";s:8:\"filesize\";i:39898;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(839, 151, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2-2'),
(840, 154, '_edit_lock', '1677484729:1'),
(841, 154, '_thumbnail_id', '155'),
(842, 154, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(843, 154, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(844, 154, '_edit_last', '1'),
(847, 155, '_wp_attached_file', '2023/02/r43-860x573-1.jpg'),
(848, 155, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:860;s:6:\"height\";i:573;s:4:\"file\";s:25:\"2023/02/r43-860x573-1.jpg\";s:8:\"filesize\";i:110075;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(851, 154, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(852, 157, '_edit_lock', '1677489473:1'),
(853, 157, '_thumbnail_id', '158'),
(854, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam'),
(855, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2'),
(856, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3'),
(857, 157, '_edit_last', '1'),
(858, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2'),
(859, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2'),
(860, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2'),
(861, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2'),
(862, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2-2'),
(867, 158, '_wp_attached_file', '2023/02/r42-860x573-1.jpg'),
(868, 158, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:860;s:6:\"height\";i:573;s:4:\"file\";s:25:\"2023/02/r42-860x573-1.jpg\";s:8:\"filesize\";i:100010;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(871, 157, '_wp_old_slug', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2-2-2'),
(896, 160, '_edit_last', '1'),
(897, 160, '_edit_lock', '1677124085:1'),
(898, 160, '_wp_page_template', 'page-templates/contact-us.php'),
(899, 162, '_edit_last', '1'),
(900, 162, '_edit_lock', '1677137451:1'),
(901, 160, 'sub_title_contact_page', 'Get In Touch'),
(902, 160, '_sub_title_contact_page', 'field_63f6c5c2de20a'),
(903, 160, 'title_contact_page', 'Contact US'),
(904, 160, '_title_contact_page', 'field_63f6c5eede20b'),
(905, 160, 'maps_contact_page', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.950217735034!2d106.67065455105092!3d10.815121761396073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175291f023dc9ab%3A0xc4ceb67f48508773!2zMTAzIELhuqFjaCDEkOG6sW5nLCBQaMaw4budbmcgMiwgVMOibiBCw6xuaCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1677117057153!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(906, 160, '_maps_contact_page', 'field_63f6c5f6de20c'),
(907, 160, 'title_form_contact_page', 'General Customer Care & Technical Support'),
(908, 160, '_title_form_contact_page', 'field_63f6c602de20d'),
(909, 160, 'description_form_contact_page', 'As we address the needs of our customers, email wait times may be longer than usual. In an effort to give you the best customer experience possible, we encourage you to take advantage of our phones. In most cases this is the fastest and easiest option.'),
(910, 160, '_description_form_contact_page', 'field_63f6c611de20e'),
(911, 168, 'sub_title_contact_page', 'Get In Touch'),
(912, 168, '_sub_title_contact_page', 'field_63f6c5c2de20a'),
(913, 168, 'title_contact_page', 'Contact US'),
(914, 168, '_title_contact_page', 'field_63f6c5eede20b'),
(915, 168, 'maps_contact_page', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.950217735034!2d106.67065455105092!3d10.815121761396073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175291f023dc9ab%3A0xc4ceb67f48508773!2zMTAzIELhuqFjaCDEkOG6sW5nLCBQaMaw4budbmcgMiwgVMOibiBCw6xuaCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1677117057153!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(916, 168, '_maps_contact_page', 'field_63f6c5f6de20c'),
(917, 168, 'title_form_contact_page', 'General Customer Care & Technical Support'),
(918, 168, '_title_form_contact_page', 'field_63f6c602de20d'),
(919, 168, 'description_form_contact_page', 'As we address the needs of our customers, email wait times may be longer than usual. In an effort to give you the best customer experience possible, we encourage you to take advantage of our phones. In most cases this is the fastest and easiest option.'),
(920, 168, '_description_form_contact_page', 'field_63f6c611de20e'),
(932, 173, '_edit_last', '1'),
(933, 173, '_edit_lock', '1677140711:1'),
(934, 173, '_wp_page_template', 'page-templates/404.php'),
(935, 175, '_wp_attached_file', '2023/02/404.png'),
(936, 175, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:375;s:4:\"file\";s:15:\"2023/02/404.png\";s:8:\"filesize\";i:31873;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 183, '_edit_last', '1'),
(946, 183, '_edit_lock', '1677486907:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2023-02-13 01:26:32', '2023-02-13 01:26:32', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2023-02-20 03:37:26', '2023-02-20 03:37:26', '', 0, 'http://localhost/topnhakhoa/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-02-13 01:26:32', '2023-02-13 01:26:32', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-13 01:26:32', '2023-02-13 01:26:32', '', 8, 'http://localhost/topnhakhoa/?p=9', 0, 'revision', '', 0),
(13, 1, '2023-02-13 01:47:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-02-13 01:47:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/topnhakhoa/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2023-02-13 03:41:09', '2023-02-13 03:41:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme_options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu hình logo và thông tin', 'cau-hinh-logo-va-thong-tin', 'publish', 'closed', 'closed', '', 'group_63e9b0de83b1c', '', '', '2023-02-13 03:41:09', '2023-02-13 03:41:09', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2023-02-13 03:41:09', '2023-02-13 03:41:09', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Logo và thông tin', 'logo', 'publish', 'closed', 'closed', '', 'field_63e9b0de47d4b', '', '', '2023-02-13 03:41:09', '2023-02-13 03:41:09', '', 14, 'http://localhost/topnhakhoa/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2023-02-13 03:41:09', '2023-02-13 03:41:09', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_63e9b12a47d4c', '', '', '2023-02-13 03:41:09', '2023-02-13 03:41:09', '', 14, 'http://localhost/topnhakhoa/?post_type=acf-field&p=16', 1, 'acf-field', '', 0),
(17, 1, '2023-02-13 03:43:10', '2023-02-13 03:43:10', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-02-13 03:43:10', '2023-02-13 03:43:10', '', 0, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/logo.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2023-02-15 04:11:42', '2023-02-14 01:42:40', '', 'Poland', '', 'publish', 'closed', 'closed', '', 'poland', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2023-02-15 04:11:42', '2023-02-14 01:42:40', '', 'VietNam', '', 'publish', 'closed', 'closed', '', 'vietnam', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2023-02-15 04:11:42', '2023-02-14 01:42:40', '', 'Italy', '', 'publish', 'closed', 'closed', '', 'italy', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2023-02-15 04:11:42', '2023-02-14 01:42:40', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2023-02-15 04:11:42', '2023-02-14 01:42:40', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2023-02-14 03:47:01', '2023-02-14 03:47:01', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"location/main_menu\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Customize Mega Menu', 'customize-mega-menu', 'publish', 'closed', 'closed', '', 'group_63eaf640396c2', '', '', '2023-02-15 03:44:14', '2023-02-15 03:44:14', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2023-02-14 03:47:01', '2023-02-14 03:47:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb382e630e0\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:1;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Select Post Show', 'select_post_show_in_menu', 'publish', 'closed', 'closed', '', 'field_63eaf6403a66a', '', '', '2023-02-14 07:32:05', '2023-02-14 07:32:05', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(26, 1, '2023-02-14 03:49:03', '2023-02-14 03:49:03', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=26', 0, 'post', '', 0),
(27, 1, '2023-02-14 03:48:59', '2023-02-14 03:48:59', '', 'ezgif.com-webp-to-jpg', '', 'inherit', 'open', 'closed', '', 'ezgif-com-webp-to-jpg', '', '', '2023-02-14 03:48:59', '2023-02-14 03:48:59', '', 26, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/ezgif.com-webp-to-jpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2023-02-14 03:49:03', '2023-02-14 03:49:03', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-02-14 03:49:03', '2023-02-14 03:49:03', '', 26, 'http://localhost/topnhakhoa/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-02-14 03:49:11', '2023-02-14 03:49:11', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=29', 0, 'post', '', 0),
(30, 1, '2023-02-14 03:49:11', '2023-02-14 03:49:11', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-02-14 03:49:11', '2023-02-14 03:49:11', '', 29, 'http://localhost/topnhakhoa/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-02-14 03:49:18', '2023-02-14 03:49:18', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=31', 0, 'post', '', 0),
(32, 1, '2023-02-14 03:49:18', '2023-02-14 03:49:18', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-02-14 03:49:18', '2023-02-14 03:49:18', '', 31, 'http://localhost/topnhakhoa/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-02-14 03:50:17', '2023-02-14 03:50:17', '', 'r15-420x280', '', 'inherit', 'open', 'closed', '', 'r15-420x280', '', '', '2023-02-14 03:50:17', '2023-02-14 03:50:17', '', 29, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r15-420x280-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2023-02-14 04:41:04', '2023-02-14 04:41:04', '', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=34', 0, 'post', '', 0),
(35, 1, '2023-02-14 04:41:04', '2023-02-14 04:41:04', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-14 04:41:04', '2023-02-14 04:41:04', '', 34, 'http://localhost/topnhakhoa/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-02-14 06:47:36', '2023-02-14 06:47:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb382e630e0\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Name Menu Item', 'name_menu_item', 'publish', 'closed', 'closed', '', 'field_63eb2e71a11b3', '', '', '2023-02-14 07:32:05', '2023-02-14 07:32:05', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=36', 3, 'acf-field', '', 0),
(37, 1, '2023-02-14 06:47:36', '2023-02-14 06:47:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb382e630e0\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link show more', 'link_show_more', 'publish', 'closed', 'closed', '', 'field_63eb2e7fa11b4', '', '', '2023-02-14 07:32:05', '2023-02-14 07:32:05', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=37', 4, 'acf-field', '', 0),
(38, 1, '2023-02-14 07:07:58', '2023-02-14 07:07:58', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=38', 0, 'post', '', 0),
(39, 1, '2023-02-14 07:07:58', '2023-02-14 07:07:58', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-02-14 07:07:58', '2023-02-14 07:07:58', '', 38, 'http://localhost/topnhakhoa/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-02-14 07:30:38', '2023-02-14 07:30:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";s:2:\"ui\";i:1;}', 'Mega 1', 'mega_1', 'publish', 'closed', 'closed', '', 'field_63eb382e630e0', '', '', '2023-02-14 07:32:05', '2023-02-14 07:32:05', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2023-02-14 07:30:38', '2023-02-14 07:30:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";s:2:\"ui\";i:1;}', 'Mega 2', 'mega_2', 'publish', 'closed', 'closed', '', 'field_63eb386d630e1', '', '', '2023-02-14 07:32:05', '2023-02-14 07:32:05', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=41', 1, 'acf-field', '', 0),
(42, 1, '2023-02-15 04:11:42', '2023-02-14 08:25:22', '', 'Block Index', '', 'publish', 'closed', 'closed', '', 'page-1', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=42', 6, 'nav_menu_item', '', 0),
(43, 1, '2023-02-15 04:11:42', '2023-02-14 08:25:22', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'page-2', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=43', 7, 'nav_menu_item', '', 0),
(44, 1, '2023-02-15 04:11:42', '2023-02-14 08:25:22', '', 'Search Page', '', 'publish', 'closed', 'closed', '', 'page-3', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=44', 8, 'nav_menu_item', '', 0),
(45, 1, '2023-02-15 04:11:42', '2023-02-14 08:25:22', '', '404 Page', '', 'publish', 'closed', 'closed', '', 'page-4', '', '', '2023-02-15 04:11:42', '2023-02-15 04:11:42', '', 0, 'http://localhost/topnhakhoa/?p=45', 9, 'nav_menu_item', '', 0),
(46, 1, '2023-02-15 03:05:38', '2023-02-15 03:05:38', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb386d630e1\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Setup Mega 2', 'mega_2', 'publish', 'closed', 'closed', '', 'field_63ec4b9ceb56a', '', '', '2023-02-15 03:05:38', '2023-02-15 03:05:38', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&p=46', 5, 'acf-field', '', 0),
(47, 1, '2023-02-15 03:05:38', '2023-02-15 03:05:38', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb386d630e1\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Column 1', 'column_1', 'publish', 'closed', 'closed', '', 'field_63ec4bb7eb56b', '', '', '2023-02-15 03:05:38', '2023-02-15 03:05:38', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&p=47', 6, 'acf-field', '', 0),
(48, 1, '2023-02-15 03:05:38', '2023-02-15 03:05:38', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb386d630e1\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:1;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Column 2', 'column_2', 'publish', 'closed', 'closed', '', 'field_63ec4bd3eb56c', '', '', '2023-02-15 03:05:38', '2023-02-15 03:05:38', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&p=48', 7, 'acf-field', '', 0),
(49, 1, '2023-02-15 03:05:38', '2023-02-15 03:05:38', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb386d630e1\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:1;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Column 3', 'column_3', 'publish', 'closed', 'closed', '', 'field_63ec4be6eb56d', '', '', '2023-02-15 03:05:38', '2023-02-15 03:05:38', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&p=49', 8, 'acf-field', '', 0),
(50, 1, '2023-02-15 03:44:14', '2023-02-15 03:44:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_63eb386d630e1\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Lable Mega 2', 'lable_mega_2', 'publish', 'closed', 'closed', '', 'field_63ec54fd0a90d', '', '', '2023-02-15 03:44:14', '2023-02-15 03:44:14', '', 23, 'http://localhost/topnhakhoa/?post_type=acf-field&p=50', 9, 'acf-field', '', 0),
(51, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:28:\"page-templates/home-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu hình trang chủ', 'cau-hinh-trang-chu', 'publish', 'closed', 'closed', '', 'group_63ec914e66e21', '', '', '2023-02-20 03:36:47', '2023-02-20 03:36:47', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 1', 'section_1', 'publish', 'closed', 'closed', '', 'field_63ec914e6cbc2', '', '', '2023-02-15 08:03:50', '2023-02-15 08:03:50', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Banner Left', 'sec_1_banner_left', 'publish', 'closed', 'closed', '', 'field_63ec917b6cbc3', '', '', '2023-02-15 08:03:50', '2023-02-15 08:03:50', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=53', 1, 'acf-field', '', 0),
(54, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content Right', 'content_right_sec_1', 'publish', 'closed', 'closed', '', 'field_63ec91956cbc4', '', '', '2023-02-15 08:03:50', '2023-02-15 08:03:50', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=54', 2, 'acf-field', '', 0),
(55, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icon Button', 'icon_button_sec_1', 'publish', 'closed', 'closed', '', 'field_63ec91b46cbc5', '', '', '2023-02-15 08:03:50', '2023-02-15 08:03:50', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=55', 3, 'acf-field', '', 0),
(56, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text Button', 'text_button_sec_1', 'publish', 'closed', 'closed', '', 'field_63ec91ce6cbc6', '', '', '2023-02-15 08:03:50', '2023-02-15 08:03:50', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=56', 4, 'acf-field', '', 0),
(57, 1, '2023-02-15 08:03:50', '2023-02-15 08:03:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link button', 'link_button_sec_1', 'publish', 'closed', 'closed', '', 'field_63ec91d86cbc7', '', '', '2023-02-15 08:03:50', '2023-02-15 08:03:50', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=57', 5, 'acf-field', '', 0),
(58, 1, '2023-02-15 08:04:33', '2023-02-15 08:04:33', '', 'banner-top', '', 'inherit', 'open', 'closed', '', 'banner-top', '', '', '2023-02-15 08:04:33', '2023-02-15 08:04:33', '', 8, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/banner-top.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2023-02-15 08:06:14', '2023-02-15 08:06:14', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-15 08:06:14', '2023-02-15 08:06:14', '', 8, 'http://localhost/topnhakhoa/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-02-16 01:40:26', '2023-02-16 01:40:26', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=60', 0, 'post', '', 0),
(61, 1, '2023-02-16 01:40:26', '2023-02-16 01:40:26', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-02-16 01:40:26', '2023-02-16 01:40:26', '', 60, 'http://localhost/topnhakhoa/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-02-16 01:45:10', '2023-02-16 01:45:10', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 2', 'section_2', 'publish', 'closed', 'closed', '', 'field_63ed8a3681beb', '', '', '2023-02-16 01:45:10', '2023-02-16 01:45:10', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=62', 6, 'acf-field', '', 0),
(63, 1, '2023-02-16 01:45:10', '2023-02-16 01:45:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:1;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Select Post', 'select_post_sec_2', 'publish', 'closed', 'closed', '', 'field_63ed8a4681bec', '', '', '2023-02-16 01:45:10', '2023-02-16 01:45:10', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=63', 7, 'acf-field', '', 0),
(64, 1, '2023-02-16 01:45:10', '2023-02-16 01:45:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title Left Small', 'title_left_small_sec_2', 'publish', 'closed', 'closed', '', 'field_63ed8a7f81bed', '', '', '2023-02-16 01:45:10', '2023-02-16 01:45:10', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=64', 8, 'acf-field', '', 0),
(65, 1, '2023-02-16 01:45:10', '2023-02-16 01:45:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title Left Big', 'title_left_big_sec_2', 'publish', 'closed', 'closed', '', 'field_63ed8a9681bee', '', '', '2023-02-16 01:45:10', '2023-02-16 01:45:10', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=65', 9, 'acf-field', '', 0),
(66, 1, '2023-02-16 01:45:43', '2023-02-16 01:45:43', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-16 01:45:43', '2023-02-16 01:45:43', '', 8, 'http://localhost/topnhakhoa/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-02-16 02:39:55', '2023-02-16 02:39:55', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu hình thumb category', 'cau-hinh-thumb-category', 'publish', 'closed', 'closed', '', 'group_63ed9746c5f97', '', '', '2023-02-16 02:40:22', '2023-02-16 02:40:22', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2023-02-16 02:39:55', '2023-02-16 02:39:55', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Thumb Category', 'thumb_category', 'publish', 'closed', 'closed', '', 'field_63ed974703b42', '', '', '2023-02-16 02:39:55', '2023-02-16 02:39:55', '', 67, 'http://localhost/topnhakhoa/?post_type=acf-field&p=68', 0, 'acf-field', '', 0),
(69, 1, '2023-02-16 02:42:05', '2023-02-16 02:42:05', '', 'cate-1', '', 'inherit', 'open', 'closed', '', 'cate-1', '', '', '2023-02-16 02:42:05', '2023-02-16 02:42:05', '', 0, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/cate-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-02-16 02:42:06', '2023-02-16 02:42:06', '', 'cate-2', '', 'inherit', 'open', 'closed', '', 'cate-2', '', '', '2023-02-16 02:42:06', '2023-02-16 02:42:06', '', 0, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/cate-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2023-02-16 02:42:06', '2023-02-16 02:42:06', '', 'cate-4', '', 'inherit', 'open', 'closed', '', 'cate-4', '', '', '2023-02-16 02:42:06', '2023-02-16 02:42:06', '', 0, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/cate-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2023-02-16 04:07:42', '2023-02-16 04:07:42', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 3', 'section_3', 'publish', 'closed', 'closed', '', 'field_63edabb338d59', '', '', '2023-02-16 04:07:42', '2023-02-16 04:07:42', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=72', 10, 'acf-field', '', 0),
(73, 1, '2023-02-16 04:07:42', '2023-02-16 04:07:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub title', 'sub_title_sec3', 'publish', 'closed', 'closed', '', 'field_63edabc938d5a', '', '', '2023-02-16 04:07:42', '2023-02-16 04:07:42', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=73', 11, 'acf-field', '', 0),
(74, 1, '2023-02-16 04:07:42', '2023-02-16 04:07:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title_sec3', 'publish', 'closed', 'closed', '', 'field_63edabdb38d5b', '', '', '2023-02-16 04:07:42', '2023-02-16 04:07:42', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=74', 12, 'acf-field', '', 0),
(75, 1, '2023-02-16 04:07:42', '2023-02-16 04:07:42', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:1;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Select Posts', 'select_posts_section_3', 'publish', 'closed', 'closed', '', 'field_63edabea38d5c', '', '', '2023-02-16 04:07:42', '2023-02-16 04:07:42', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=75', 13, 'acf-field', '', 0),
(76, 1, '2023-02-16 04:08:46', '2023-02-16 04:08:46', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-16 04:08:46', '2023-02-16 04:08:46', '', 8, 'http://localhost/topnhakhoa/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-02-16 07:14:30', '2023-02-16 07:14:30', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2023-02-16 07:14:30', '2023-02-16 07:14:30', '', 60, 'http://localhost/topnhakhoa/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-02-16 07:14:39', '2023-02-16 07:14:39', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-02-16 07:14:39', '2023-02-16 07:14:39', '', 38, 'http://localhost/topnhakhoa/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-02-16 07:14:46', '2023-02-16 07:14:46', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-16 07:14:46', '2023-02-16 07:14:46', '', 34, 'http://localhost/topnhakhoa/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-02-16 07:14:53', '2023-02-16 07:14:53', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-02-16 07:14:53', '2023-02-16 07:14:53', '', 31, 'http://localhost/topnhakhoa/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-02-16 07:15:05', '2023-02-16 07:15:05', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-02-16 07:15:05', '2023-02-16 07:15:05', '', 29, 'http://localhost/topnhakhoa/?p=81', 0, 'revision', '', 0),
(82, 1, '2023-02-16 07:15:15', '2023-02-16 07:15:15', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-02-16 07:15:15', '2023-02-16 07:15:15', '', 26, 'http://localhost/topnhakhoa/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-02-17 02:19:46', '2023-02-17 02:19:46', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 4', 'section_4', 'publish', 'closed', 'closed', '', 'field_63eee3e6ff420', '', '', '2023-02-17 02:19:46', '2023-02-17 02:19:46', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=83', 14, 'acf-field', '', 0),
(84, 1, '2023-02-17 02:19:46', '2023-02-17 02:19:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'sub_title_sec_4', 'publish', 'closed', 'closed', '', 'field_63eee3f5ff421', '', '', '2023-02-17 02:19:46', '2023-02-17 02:19:46', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=84', 15, 'acf-field', '', 0),
(85, 1, '2023-02-17 02:19:46', '2023-02-17 02:19:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title_sec_4', 'publish', 'closed', 'closed', '', 'field_63eee403ff422', '', '', '2023-02-17 02:19:46', '2023-02-17 02:19:46', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=85', 16, 'acf-field', '', 0),
(86, 1, '2023-02-17 02:19:46', '2023-02-17 02:19:46', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Select Category', 'select_post_sec_4', 'publish', 'closed', 'closed', '', 'field_63eee412ff423', '', '', '2023-02-17 02:20:00', '2023-02-17 02:20:00', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=86', 17, 'acf-field', '', 0),
(87, 1, '2023-02-17 02:21:06', '2023-02-17 02:21:06', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-17 02:21:06', '2023-02-17 02:21:06', '', 8, 'http://localhost/topnhakhoa/?p=87', 0, 'revision', '', 0),
(88, 1, '2023-02-17 03:41:43', '2023-02-17 03:41:43', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 5', 'section_5', 'publish', 'closed', 'closed', '', 'field_63eef73d4720a', '', '', '2023-02-17 03:41:43', '2023-02-17 03:41:43', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=88', 18, 'acf-field', '', 0),
(89, 1, '2023-02-17 03:41:43', '2023-02-17 03:41:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'sub_title_sec_5', 'publish', 'closed', 'closed', '', 'field_63eef7474720b', '', '', '2023-02-17 03:41:43', '2023-02-17 03:41:43', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=89', 19, 'acf-field', '', 0),
(90, 1, '2023-02-17 03:41:43', '2023-02-17 03:41:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title_sec_5', 'publish', 'closed', 'closed', '', 'field_63eef7514720c', '', '', '2023-02-17 03:41:43', '2023-02-17 03:41:43', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=90', 20, 'acf-field', '', 0),
(91, 1, '2023-02-17 03:41:43', '2023-02-17 03:41:43', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Select Category', 'select_category_sec_5', 'publish', 'closed', 'closed', '', 'field_63eef75f4720d', '', '', '2023-02-17 03:41:43', '2023-02-17 03:41:43', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=91', 21, 'acf-field', '', 0),
(92, 1, '2023-02-17 03:42:05', '2023-02-17 03:42:05', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-17 03:42:05', '2023-02-17 03:42:05', '', 8, 'http://localhost/topnhakhoa/?p=92', 0, 'revision', '', 0),
(94, 1, '2023-02-20 01:51:55', '2023-02-20 01:51:55', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 6', 'section_6', 'publish', 'closed', 'closed', '', 'field_63f2d1f3cfd78', '', '', '2023-02-20 01:51:55', '2023-02-20 01:51:55', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=94', 22, 'acf-field', '', 0),
(95, 1, '2023-02-20 01:51:55', '2023-02-20 01:51:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title', 'sub_title_sec_6', 'publish', 'closed', 'closed', '', 'field_63f2d200cfd79', '', '', '2023-02-20 01:51:55', '2023-02-20 01:51:55', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=95', 23, 'acf-field', '', 0),
(96, 1, '2023-02-20 01:51:55', '2023-02-20 01:51:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title_sec_6', 'publish', 'closed', 'closed', '', 'field_63f2d20fcfd7a', '', '', '2023-02-20 01:51:55', '2023-02-20 01:51:55', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=96', 24, 'acf-field', '', 0),
(97, 1, '2023-02-20 01:51:55', '2023-02-20 01:51:55', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Select Category', 'select_category_sec_6', 'publish', 'closed', 'closed', '', 'field_63f2d21ccfd7b', '', '', '2023-02-20 01:51:55', '2023-02-20 01:51:55', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=97', 25, 'acf-field', '', 0),
(98, 1, '2023-02-20 01:53:42', '2023-02-20 01:53:42', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-20 01:53:42', '2023-02-20 01:53:42', '', 8, 'http://localhost/topnhakhoa/?p=98', 0, 'revision', '', 0),
(99, 1, '2023-02-20 03:36:47', '2023-02-20 03:36:47', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Section 7', 'section_7', 'publish', 'closed', 'closed', '', 'field_63f2ea8e89593', '', '', '2023-02-20 03:36:47', '2023-02-20 03:36:47', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=99', 26, 'acf-field', '', 0),
(100, 1, '2023-02-20 03:36:47', '2023-02-20 03:36:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub title', 'sub_title_sec_7', 'publish', 'closed', 'closed', '', 'field_63f2ea9989594', '', '', '2023-02-20 03:36:47', '2023-02-20 03:36:47', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=100', 27, 'acf-field', '', 0),
(101, 1, '2023-02-20 03:36:47', '2023-02-20 03:36:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title_sec_7', 'publish', 'closed', 'closed', '', 'field_63f2eaa489595', '', '', '2023-02-20 03:36:47', '2023-02-20 03:36:47', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=101', 28, 'acf-field', '', 0),
(102, 1, '2023-02-20 03:36:47', '2023-02-20 03:36:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Text Button Read More', 'text_button_read_more_sec_7', 'publish', 'closed', 'closed', '', 'field_63f2eaaf89596', '', '', '2023-02-20 03:36:47', '2023-02-20 03:36:47', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=102', 29, 'acf-field', '', 0),
(103, 1, '2023-02-20 03:36:47', '2023-02-20 03:36:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link Button Read More', 'link_button_read_more_7', 'publish', 'closed', 'closed', '', 'field_63f2eac289597', '', '', '2023-02-20 03:36:47', '2023-02-20 03:36:47', '', 51, 'http://localhost/topnhakhoa/?post_type=acf-field&p=103', 30, 'acf-field', '', 0),
(104, 1, '2023-02-20 03:37:26', '2023-02-20 03:37:26', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-20 03:37:26', '2023-02-20 03:37:26', '', 8, 'http://localhost/topnhakhoa/?p=104', 0, 'revision', '', 0),
(105, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"theme_options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu hình footer', 'cau-hinh-footer', 'publish', 'closed', 'closed', '', 'group_63f2f3ec6561d', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=105', 0, 'acf-field-group', '', 0),
(106, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_63f2f3ec57151', '', '', '2023-02-20 04:18:58', '2023-02-20 04:18:58', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&p=106', 0, 'acf-field', '', 0),
(107, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image Maps', 'image_maps_footer', 'publish', 'closed', 'closed', '', 'field_63f2f40157152', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=107', 2, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link maps footer', 'link_maps_footer', 'publish', 'closed', 'closed', '', 'field_63f2f41d57153', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=108', 3, 'acf-field', '', 0),
(109, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title Form Right Footer', 'title_form_right_footer', 'publish', 'closed', 'closed', '', 'field_63f2f42657154', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=109', 4, 'acf-field', '', 0),
(110, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Description Form Right Footer', 'description_form_right_footer', 'publish', 'closed', 'closed', '', 'field_63f2f43157155', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=110', 5, 'acf-field', '', 0),
(111, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title Social', 'title_social_footer', 'publish', 'closed', 'closed', '', 'field_63f2f44057156', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=111', 6, 'acf-field', '', 0),
(112, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'List Social Footer', 'list_social_footer', 'publish', 'closed', 'closed', '', 'field_63f2f45357157', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=112', 7, 'acf-field', '', 0),
(113, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Icon Social', 'icon_social_footer', 'publish', 'closed', 'closed', '', 'field_63f2f46e57158', '', '', '2023-02-20 04:18:58', '2023-02-20 04:18:58', '', 112, 'http://localhost/topnhakhoa/?post_type=acf-field&p=113', 0, 'acf-field', '', 0),
(114, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Name Social', 'name_social_footer', 'publish', 'closed', 'closed', '', 'field_63f2f49d57159', '', '', '2023-02-20 04:18:58', '2023-02-20 04:18:58', '', 112, 'http://localhost/topnhakhoa/?post_type=acf-field&p=114', 1, 'acf-field', '', 0),
(115, 1, '2023-02-20 04:18:58', '2023-02-20 04:18:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link Social', 'link_social_footer', 'publish', 'closed', 'closed', '', 'field_63f2f4a75715a', '', '', '2023-02-20 04:18:58', '2023-02-20 04:18:58', '', 112, 'http://localhost/topnhakhoa/?post_type=acf-field&p=115', 2, 'acf-field', '', 0),
(116, 1, '2023-02-20 04:20:25', '2023-02-20 04:20:25', '', 'maps', '', 'inherit', 'open', 'closed', '', 'maps', '', '', '2023-02-20 04:20:25', '2023-02-20 04:20:25', '', 0, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/maps.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2023-02-20 04:51:06', '2023-02-20 04:51:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title Maps', 'title_maps_sec_7', 'publish', 'closed', 'closed', '', 'field_63f2fc29aefcd', '', '', '2023-02-20 04:51:06', '2023-02-20 04:51:06', '', 105, 'http://localhost/topnhakhoa/?post_type=acf-field&p=117', 1, 'acf-field', '', 0),
(118, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', '', 'Italia', '', 'publish', 'closed', 'closed', '', 'italia', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=119', 2, 'nav_menu_item', '', 0),
(120, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', '', 'Costa Rica', '', 'publish', 'closed', 'closed', '', 'costa-rica', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=120', 3, 'nav_menu_item', '', 0),
(121, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', '', 'Viet Nam', '', 'publish', 'closed', 'closed', '', 'viet-nam', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=121', 4, 'nav_menu_item', '', 0),
(122, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', '', 'Morroco', '', 'publish', 'closed', 'closed', '', 'morroco', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=122', 5, 'nav_menu_item', '', 0),
(123, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', '', 'Tip & Buget', '', 'publish', 'closed', 'closed', '', 'tip-buget', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=123', 6, 'nav_menu_item', '', 0),
(124, 1, '2023-02-21 02:03:32', '2023-02-21 02:01:16', '', 'Morroco', '', 'publish', 'closed', 'closed', '', 'morroco-2', '', '', '2023-02-21 02:03:32', '2023-02-21 02:03:32', '', 0, 'http://localhost/topnhakhoa/?p=124', 7, 'nav_menu_item', '', 0),
(125, 1, '2023-02-21 02:06:35', '2023-02-21 02:06:35', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2023-02-21 02:06:35', '2023-02-21 02:06:35', '', 0, 'http://localhost/topnhakhoa/?p=125', 1, 'nav_menu_item', '', 0),
(126, 1, '2023-02-21 02:06:35', '2023-02-21 02:06:35', '', 'Danh Mục', '', 'publish', 'closed', 'closed', '', 'danh-muc', '', '', '2023-02-21 02:06:35', '2023-02-21 02:06:35', '', 0, 'http://localhost/topnhakhoa/?p=126', 2, 'nav_menu_item', '', 0),
(127, 1, '2023-02-21 02:06:35', '2023-02-21 02:06:35', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2023-02-21 02:06:35', '2023-02-21 02:06:35', '', 0, 'http://localhost/topnhakhoa/?p=127', 3, 'nav_menu_item', '', 0),
(128, 1, '2023-02-21 02:06:35', '2023-02-21 02:06:35', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2023-02-21 02:06:35', '2023-02-21 02:06:35', '', 0, 'http://localhost/topnhakhoa/?p=128', 4, 'nav_menu_item', '', 0),
(129, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=129', 5, 'nav_menu_item', '', 0),
(130, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=130', 6, 'nav_menu_item', '', 0),
(131, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=131', 7, 'nav_menu_item', '', 0),
(132, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 'Trang', '', 'publish', 'closed', 'closed', '', 'trang', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=132', 8, 'nav_menu_item', '', 0),
(133, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=133', 9, 'nav_menu_item', '', 0),
(134, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 'Block Index', '', 'publish', 'closed', 'closed', '', 'block-index', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=134', 10, 'nav_menu_item', '', 0),
(135, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', '404', '', 'publish', 'closed', 'closed', '', '404', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=135', 11, 'nav_menu_item', '', 0),
(136, 1, '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 'Search Page', '', 'publish', 'closed', 'closed', '', 'search-page', '', '', '2023-02-21 02:06:36', '2023-02-21 02:06:36', '', 0, 'http://localhost/topnhakhoa/?p=136', 12, 'nav_menu_item', '', 0),
(137, 1, '2023-02-22 02:04:07', '2023-02-22 02:04:07', '', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2023-02-22 02:04:07', '2023-02-22 02:04:07', '', 34, 'http://localhost/topnhakhoa/?p=137', 0, 'revision', '', 0),
(138, 1, '2023-02-22 02:04:23', '2023-02-22 02:04:23', '', 'post-3', '', 'inherit', 'open', 'closed', '', 'post-3', '', '', '2023-02-22 02:04:23', '2023-02-22 02:04:23', '', 34, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/post-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2023-02-22 02:04:29', '2023-02-22 02:04:29', '', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-02-22 02:04:29', '2023-02-22 02:04:29', '', 34, 'http://localhost/topnhakhoa/?p=139', 0, 'revision', '', 0),
(140, 1, '2023-02-22 02:07:12', '2023-02-22 02:07:12', '', 'tf2-860x573', '', 'inherit', 'open', 'closed', '', 'tf2-860x573', '', '', '2023-02-22 02:07:12', '2023-02-22 02:07:12', '', 29, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/tf2-860x573-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2023-02-22 02:09:37', '2023-02-22 02:09:37', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=141', 0, 'post', '', 0),
(142, 1, '2023-02-22 02:09:31', '2023-02-22 02:09:31', '', 'r9-860x573', '', 'inherit', 'open', 'closed', '', 'r9-860x573', '', '', '2023-02-22 02:09:31', '2023-02-22 02:09:31', '', 141, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r9-860x573-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2023-02-22 02:09:37', '2023-02-22 02:09:37', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2023-02-22 02:09:37', '2023-02-22 02:09:37', '', 141, 'http://localhost/topnhakhoa/?p=143', 0, 'revision', '', 0),
(145, 1, '2023-02-22 02:10:50', '2023-02-22 02:10:50', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=145', 0, 'post', '', 0),
(146, 1, '2023-02-22 02:10:47', '2023-02-22 02:10:47', '', 'r25-420x280', '', 'inherit', 'open', 'closed', '', 'r25-420x280', '', '', '2023-02-22 02:10:47', '2023-02-22 02:10:47', '', 145, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r25-420x280-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2023-02-22 02:10:50', '2023-02-22 02:10:50', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2023-02-22 02:10:50', '2023-02-22 02:10:50', '', 145, 'http://localhost/topnhakhoa/?p=147', 0, 'revision', '', 0),
(148, 1, '2023-02-22 02:11:10', '2023-02-22 02:11:10', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=148', 0, 'post', '', 0),
(149, 1, '2023-02-22 02:11:07', '2023-02-22 02:11:07', '', 'r48-860x645', '', 'inherit', 'open', 'closed', '', 'r48-860x645', '', '', '2023-02-22 02:11:07', '2023-02-22 02:11:07', '', 148, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r48-860x645-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2023-02-22 02:11:10', '2023-02-22 02:11:10', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2023-02-22 02:11:10', '2023-02-22 02:11:10', '', 148, 'http://localhost/topnhakhoa/?p=150', 0, 'revision', '', 0),
(151, 1, '2023-02-22 02:11:33', '2023-02-22 02:11:33', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2-2-2', '', '', '2023-02-22 02:12:47', '2023-02-22 02:12:47', '', 0, 'http://localhost/topnhakhoa/?p=151', 0, 'post', '', 0),
(152, 1, '2023-02-22 02:11:30', '2023-02-22 02:11:30', '', 'r51-420x280', '', 'inherit', 'open', 'closed', '', 'r51-420x280', '', '', '2023-02-22 02:11:30', '2023-02-22 02:11:30', '', 151, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r51-420x280-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2023-02-22 02:11:33', '2023-02-22 02:11:33', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2023-02-22 02:11:33', '2023-02-22 02:11:33', '', 151, 'http://localhost/topnhakhoa/?p=153', 0, 'revision', '', 0),
(154, 1, '2023-02-22 02:11:58', '2023-02-22 02:11:58', '<h3>A good website should be easy to navigate</h3>\r\nOptimization for various types of devices and resolutions plays a fundamental role in modern website design. Web page layouts should be genuinely responsive and not rely on any fixed-size elements. Web designers using fluid grids and flexible images will guarantee that a web page will render well on a variety of devices, windows, and screen sizes.\r\n<p style=\"text-align: center;\"><strong>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</strong></p>\r\n\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>\r\n\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/r9-860x573-1.jpg\" alt=\"\" width=\"860\" height=\"573\" />\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-3', '', '', '2023-02-27 04:22:42', '2023-02-27 04:22:42', '', 0, 'http://localhost/topnhakhoa/?p=154', 0, 'post', '', 0),
(155, 1, '2023-02-22 02:11:56', '2023-02-22 02:11:56', '', 'r43-860x573', '', 'inherit', 'open', 'closed', '', 'r43-860x573', '', '', '2023-02-22 02:11:56', '2023-02-22 02:11:56', '', 154, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r43-860x573-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2023-02-22 02:11:58', '2023-02-22 02:11:58', '', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2023-02-22 02:11:58', '2023-02-22 02:11:58', '', 154, 'http://localhost/topnhakhoa/?p=156', 0, 'revision', '', 0),
(157, 1, '2023-02-22 02:12:32', '2023-02-22 02:12:32', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'publish', 'open', 'open', '', 'visit-these-10-sunny-charming-beach-towns-in-viet-nam-2-3-2-2-2-2-2-2-2', '', '', '2023-02-27 07:55:54', '2023-02-27 07:55:54', '', 0, 'http://localhost/topnhakhoa/?p=157', 0, 'post', '', 0),
(158, 1, '2023-02-22 02:12:29', '2023-02-22 02:12:29', '', 'r42-860x573', '', 'inherit', 'open', 'closed', '', 'r42-860x573', '', '', '2023-02-22 02:12:29', '2023-02-22 02:12:29', '', 157, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/r42-860x573-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2023-02-22 02:12:32', '2023-02-22 02:12:32', '', 'Visit These 10 Sunny &amp; Charming Beach Towns in Viet Nam', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2023-02-22 02:12:32', '2023-02-22 02:12:32', '', 157, 'http://localhost/topnhakhoa/?p=159', 0, 'revision', '', 0),
(160, 1, '2023-02-23 01:18:48', '2023-02-23 01:18:48', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-02-23 01:51:24', '2023-02-23 01:51:24', '', 0, 'http://localhost/topnhakhoa/?page_id=160', 0, 'page', '', 0),
(161, 1, '2023-02-23 01:18:48', '2023-02-23 01:18:48', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2023-02-23 01:18:48', '2023-02-23 01:18:48', '', 160, 'http://localhost/topnhakhoa/?p=161', 0, 'revision', '', 0),
(162, 1, '2023-02-23 01:50:17', '2023-02-23 01:50:17', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:29:\"page-templates/contact-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu Hình Trang Contact Us', 'cau-hinh-trang-contact-us', 'publish', 'closed', 'closed', '', 'group_63f6c5c1dd91b', '', '', '2023-02-23 01:51:18', '2023-02-23 01:51:18', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=162', 0, 'acf-field-group', '', 0),
(163, 1, '2023-02-23 01:50:17', '2023-02-23 01:50:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sub Title Contact Page', 'sub_title_contact_page', 'publish', 'closed', 'closed', '', 'field_63f6c5c2de20a', '', '', '2023-02-23 01:50:17', '2023-02-23 01:50:17', '', 162, 'http://localhost/topnhakhoa/?post_type=acf-field&p=163', 0, 'acf-field', '', 0),
(164, 1, '2023-02-23 01:50:17', '2023-02-23 01:50:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title Contact Page', 'title_contact_page', 'publish', 'closed', 'closed', '', 'field_63f6c5eede20b', '', '', '2023-02-23 01:50:17', '2023-02-23 01:50:17', '', 162, 'http://localhost/topnhakhoa/?post_type=acf-field&p=164', 1, 'acf-field', '', 0),
(165, 1, '2023-02-23 01:50:17', '2023-02-23 01:50:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Maps', 'maps_contact_page', 'publish', 'closed', 'closed', '', 'field_63f6c5f6de20c', '', '', '2023-02-23 01:50:17', '2023-02-23 01:50:17', '', 162, 'http://localhost/topnhakhoa/?post_type=acf-field&p=165', 2, 'acf-field', '', 0),
(166, 1, '2023-02-23 01:50:17', '2023-02-23 01:50:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title form', 'title_form_contact_page', 'publish', 'closed', 'closed', '', 'field_63f6c602de20d', '', '', '2023-02-23 01:50:17', '2023-02-23 01:50:17', '', 162, 'http://localhost/topnhakhoa/?post_type=acf-field&p=166', 3, 'acf-field', '', 0),
(167, 1, '2023-02-23 01:50:17', '2023-02-23 01:50:17', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description Form', 'description_form_contact_page', 'publish', 'closed', 'closed', '', 'field_63f6c611de20e', '', '', '2023-02-23 01:51:18', '2023-02-23 01:51:18', '', 162, 'http://localhost/topnhakhoa/?post_type=acf-field&#038;p=167', 4, 'acf-field', '', 0),
(168, 1, '2023-02-23 01:51:13', '2023-02-23 01:51:13', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2023-02-23 01:51:13', '2023-02-23 01:51:13', '', 160, 'http://localhost/topnhakhoa/?p=168', 0, 'revision', '', 0),
(173, 1, '2023-02-23 03:51:57', '2023-02-23 03:51:57', '<img class=\"size-full wp-image-175 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/404.png\" alt=\"\" width=\"600\" height=\"375\" />\r\n<h3 style=\"text-align: center;\">You go outside the Milky Way?</h3>\r\n<p style=\"text-align: center;\">It looks like nothing was found at this location. The page you were looking for does not exist or was loading incorrectly.</p>', '404', '', 'publish', 'closed', 'closed', '', 'error-404', '', '', '2023-02-23 03:53:37', '2023-02-23 03:53:37', '', 0, 'http://localhost/topnhakhoa/?page_id=173', 0, 'page', '', 0),
(174, 1, '2023-02-23 03:51:57', '2023-02-23 03:51:57', '', '404', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2023-02-23 03:51:57', '2023-02-23 03:51:57', '', 173, 'http://localhost/topnhakhoa/?p=174', 0, 'revision', '', 0),
(175, 1, '2023-02-23 03:52:54', '2023-02-23 03:52:54', '', '404', '', 'inherit', 'open', 'closed', '', '404-2', '', '', '2023-02-23 03:52:54', '2023-02-23 03:52:54', '', 173, 'http://localhost/topnhakhoa/wp-content/uploads/2023/02/404.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2023-02-23 03:52:58', '2023-02-23 03:52:58', '<img class=\"size-full wp-image-175 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/404.png\" alt=\"\" width=\"600\" height=\"375\" />', '404', '', 'inherit', 'closed', 'closed', '', '173-autosave-v1', '', '', '2023-02-23 03:52:58', '2023-02-23 03:52:58', '', 173, 'http://localhost/topnhakhoa/?p=176', 0, 'revision', '', 0),
(177, 1, '2023-02-23 03:53:37', '2023-02-23 03:53:37', '<img class=\"size-full wp-image-175 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/404.png\" alt=\"\" width=\"600\" height=\"375\" />\r\n<h3 style=\"text-align: center;\">You go outside the Milky Way?</h3>\r\n<p style=\"text-align: center;\">It looks like nothing was found at this location. The page you were looking for does not exist or was loading incorrectly.</p>', '404', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2023-02-23 03:53:37', '2023-02-23 03:53:37', '', 173, 'http://localhost/topnhakhoa/?p=177', 0, 'revision', '', 0),
(179, 1, '2023-02-27 03:51:11', '2023-02-27 03:51:11', 'Optimization for various types of devices and resolutions plays a fundamental role in modern website design. Web page layouts should be genuinely responsive and not rely on any fixed-size elements. Web designers using fluid grids and flexible images will guarantee that a web page will render well on a variety of devices, windows, and screen sizes.\n<p style=\"text-align: center;\"><strong>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</strong></p>', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '154-autosave-v1', '', '', '2023-02-27 03:51:11', '2023-02-27 03:51:11', '', 154, 'http://localhost/topnhakhoa/?p=179', 0, 'revision', '', 0),
(180, 1, '2023-02-27 03:53:02', '2023-02-27 03:53:02', 'Optimization for various types of devices and resolutions plays a fundamental role in modern website design. Web page layouts should be genuinely responsive and not rely on any fixed-size elements. Web designers using fluid grids and flexible images will guarantee that a web page will render well on a variety of devices, windows, and screen sizes.\r\n<blockquote>\r\n<p style=\"text-align: center;\"><strong>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</strong></p>\r\n</blockquote>\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>\r\n\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/r9-860x573-1.jpg\" alt=\"\" width=\"860\" height=\"573\" />\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2023-02-27 03:53:02', '2023-02-27 03:53:02', '', 154, 'http://localhost/topnhakhoa/?p=180', 0, 'revision', '', 0),
(181, 1, '2023-02-27 03:53:23', '2023-02-27 03:53:23', 'Optimization for various types of devices and resolutions plays a fundamental role in modern website design. Web page layouts should be genuinely responsive and not rely on any fixed-size elements. Web designers using fluid grids and flexible images will guarantee that a web page will render well on a variety of devices, windows, and screen sizes.\r\n<p style=\"text-align: center;\"><strong>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</strong></p>\r\n\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>\r\n\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/r9-860x573-1.jpg\" alt=\"\" width=\"860\" height=\"573\" />\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2023-02-27 03:53:23', '2023-02-27 03:53:23', '', 154, 'http://localhost/topnhakhoa/?p=181', 0, 'revision', '', 0),
(182, 1, '2023-02-27 04:22:42', '2023-02-27 04:22:42', '<h3>A good website should be easy to navigate</h3>\r\nOptimization for various types of devices and resolutions plays a fundamental role in modern website design. Web page layouts should be genuinely responsive and not rely on any fixed-size elements. Web designers using fluid grids and flexible images will guarantee that a web page will render well on a variety of devices, windows, and screen sizes.\r\n<p style=\"text-align: center;\"><strong>Good design is making something intelligible and memorable. Great design is making something memorable and meaningful.</strong></p>\r\n\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>\r\n\r\n<img class=\"size-full wp-image-142 aligncenter\" src=\"http://localhost/topnhakhoa/wp-content/uploads/2023/02/r9-860x573-1.jpg\" alt=\"\" width=\"860\" height=\"573\" />\r\n<h3>A good website should be easy to navigate</h3>\r\nWebsite navigation allows visitors to flow from one page to another without frustration. If you’ve done your job well, visitors leave your site with the intention to return and might even buy something from you or sign up for your email list.\r\n\r\n<em>Bad navigation is an especially common problem. We’ve all struggled to find things on disorganized websites without any logical structure. It feels hopeless.</em>\r\n\r\n<strong>Quick and easy access to the content they’re after is more important for your website users than a… visually-stunning design.</strong>', 'Maintaining A Healthy Diet While Traveling In Italy', 'Good web design has visual weight, is optimized for various devices, and has content that is prioritized for the medium. The most important elements of', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2023-02-27 04:22:42', '2023-02-27 04:22:42', '', 154, 'http://localhost/topnhakhoa/?p=182', 0, 'revision', '', 0),
(183, 1, '2023-02-27 07:02:42', '2023-02-27 07:02:42', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cấu hình Author', 'cau-hinh-author', 'publish', 'closed', 'closed', '', 'group_63fc553d75d9d', '', '', '2023-02-27 07:03:14', '2023-02-27 07:03:14', '', 0, 'http://localhost/topnhakhoa/?post_type=acf-field-group&#038;p=183', 0, 'acf-field-group', '', 0),
(184, 1, '2023-02-27 07:02:42', '2023-02-27 07:02:42', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Cấu hình author', 'cấu_hinh_author', 'publish', 'closed', 'closed', '', 'field_63fc553d5402a', '', '', '2023-02-27 07:02:42', '2023-02-27 07:02:42', '', 183, 'http://localhost/topnhakhoa/?post_type=acf-field&p=184', 0, 'acf-field', '', 0),
(185, 1, '2023-02-27 07:02:42', '2023-02-27 07:02:42', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'List social of author', 'list_social_of_author', 'publish', 'closed', 'closed', '', 'field_63fc55525402b', '', '', '2023-02-27 07:02:42', '2023-02-27 07:02:42', '', 183, 'http://localhost/topnhakhoa/?post_type=acf-field&p=185', 1, 'acf-field', '', 0),
(186, 1, '2023-02-27 07:02:42', '2023-02-27 07:02:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Icon Social Author', 'icon_author_social', 'publish', 'closed', 'closed', '', 'field_63fc555f5402c', '', '', '2023-02-27 07:02:42', '2023-02-27 07:02:42', '', 185, 'http://localhost/topnhakhoa/?post_type=acf-field&p=186', 0, 'acf-field', '', 0),
(187, 1, '2023-02-27 07:02:42', '2023-02-27 07:02:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link social author', 'link_social_author', 'publish', 'closed', 'closed', '', 'field_63fc55885402d', '', '', '2023-02-27 07:02:42', '2023-02-27 07:02:42', '', 185, 'http://localhost/topnhakhoa/?post_type=acf-field&p=187', 1, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'thumb_category', '69'),
(2, 6, '_thumb_category', 'field_63ed974703b42'),
(3, 5, 'thumb_category', '71'),
(4, 5, '_thumb_category', 'field_63ed974703b42'),
(5, 4, 'thumb_category', '70'),
(6, 4, '_thumb_category', 'field_63ed974703b42'),
(7, 7, 'thumb_category', '27'),
(8, 7, '_thumb_category', 'field_63ed974703b42'),
(9, 3, 'thumb_category', '33'),
(10, 3, '_thumb_category', 'field_63ed974703b42');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Vietnam', 'viet-nam', 0),
(4, 'Morocco', 'morocco', 0),
(5, 'Italy', 'italy', 0),
(6, 'Costa Rica', 'costa-rica', 0),
(7, 'Poland', 'poland', 0),
(8, 'Header Mobile', 'header-mobile', 0),
(9, 'Menu Mobile', 'menu-mobile', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(26, 3, 0),
(26, 4, 0),
(26, 5, 0),
(26, 6, 0),
(26, 7, 0),
(29, 3, 0),
(29, 4, 0),
(29, 5, 0),
(29, 6, 0),
(29, 7, 0),
(31, 3, 0),
(31, 4, 0),
(31, 5, 0),
(31, 6, 0),
(31, 7, 0),
(34, 3, 0),
(34, 4, 0),
(34, 5, 0),
(34, 6, 0),
(34, 7, 0),
(38, 3, 0),
(38, 4, 0),
(38, 5, 0),
(38, 6, 0),
(38, 7, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(60, 3, 0),
(60, 4, 0),
(60, 5, 0),
(60, 6, 0),
(60, 7, 0),
(118, 8, 0),
(119, 8, 0),
(120, 8, 0),
(121, 8, 0),
(122, 8, 0),
(123, 8, 0),
(124, 8, 0),
(125, 9, 0),
(126, 9, 0),
(127, 9, 0),
(128, 9, 0),
(129, 9, 0),
(130, 9, 0),
(131, 9, 0),
(132, 9, 0),
(133, 9, 0),
(134, 9, 0),
(135, 9, 0),
(136, 9, 0),
(141, 3, 0),
(141, 4, 0),
(141, 5, 0),
(141, 6, 0),
(141, 7, 0),
(145, 3, 0),
(145, 4, 0),
(145, 5, 0),
(145, 6, 0),
(145, 7, 0),
(148, 3, 0),
(148, 4, 0),
(148, 5, 0),
(148, 6, 0),
(148, 7, 0),
(151, 3, 0),
(151, 4, 0),
(151, 5, 0),
(151, 6, 0),
(151, 7, 0),
(154, 3, 0),
(154, 4, 0),
(154, 5, 0),
(154, 6, 0),
(154, 7, 0),
(157, 3, 0),
(157, 4, 0),
(157, 5, 0),
(157, 6, 0),
(157, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'category', '', 0, 12),
(4, 4, 'category', '', 0, 12),
(5, 5, 'category', '', 0, 12),
(6, 6, 'category', '', 0, 12),
(7, 7, 'category', '', 0, 12),
(8, 8, 'nav_menu', '', 0, 7),
(9, 9, 'nav_menu', '', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'namIT'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Thanks for stopping by. We’re Dan and Alice, We’ve been traveling the world nomadically for 5 year. and I\'m here to help you travel more for less in admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"6e64819d871b901567c562e926278880f6091109af7a9cf6499b31c5130173db\";a:4:{s:10:\"expiration\";i:1677634546;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677461746;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '178'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '9'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=0'),
(22, 1, 'wp_user-settings-time', '1677469978'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 2, 'nickname', 'testAuthor'),
(26, 2, 'first_name', 'Test'),
(27, 2, 'last_name', 'Author'),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(37, 2, 'wp_user_level', '10'),
(38, 2, 'list_social_of_author', '1'),
(39, 2, '_list_social_of_author', 'field_63fc55525402b'),
(40, 2, 'dismissed_wp_pointers', ''),
(41, 2, 'list_social_of_author_0_icon_author_social', 'aaa'),
(42, 2, '_list_social_of_author_0_icon_author_social', 'field_63fc555f5402c'),
(43, 2, 'list_social_of_author_0_link_social_author', 'aaaaaa'),
(44, 2, '_list_social_of_author_0_link_social_author', 'field_63fc55885402d'),
(45, 1, 'list_social_of_author_0_icon_author_social', '<i class=\"fa-brands fa-facebook-f\"></i>'),
(46, 1, '_list_social_of_author_0_icon_author_social', 'field_63fc555f5402c'),
(47, 1, 'list_social_of_author_0_link_social_author', '#'),
(48, 1, '_list_social_of_author_0_link_social_author', 'field_63fc55885402d'),
(49, 1, 'list_social_of_author_1_icon_author_social', '<i class=\"fa-brands fa-instagram\"></i>'),
(50, 1, '_list_social_of_author_1_icon_author_social', 'field_63fc555f5402c'),
(51, 1, 'list_social_of_author_1_link_social_author', '#'),
(52, 1, '_list_social_of_author_1_link_social_author', 'field_63fc55885402d'),
(53, 1, 'list_social_of_author_2_icon_author_social', '<i class=\"fa-brands fa-twitter\"></i>'),
(54, 1, '_list_social_of_author_2_icon_author_social', 'field_63fc555f5402c'),
(55, 1, 'list_social_of_author_2_link_social_author', '#'),
(56, 1, '_list_social_of_author_2_link_social_author', 'field_63fc55885402d'),
(57, 1, 'list_social_of_author_3_icon_author_social', '<i class=\"fa-brands fa-telegram\"></i>'),
(58, 1, '_list_social_of_author_3_icon_author_social', 'field_63fc555f5402c'),
(59, 1, 'list_social_of_author_3_link_social_author', '#'),
(60, 1, '_list_social_of_author_3_link_social_author', 'field_63fc55885402d'),
(61, 1, 'list_social_of_author_4_icon_author_social', '<i class=\"fa-solid fa-globe\"></i>'),
(62, 1, '_list_social_of_author_4_icon_author_social', 'field_63fc555f5402c'),
(63, 1, 'list_social_of_author_4_link_social_author', '#'),
(64, 1, '_list_social_of_author_4_link_social_author', 'field_63fc55885402d'),
(65, 1, 'list_social_of_author', '5'),
(66, 1, '_list_social_of_author', 'field_63fc55525402b');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'namIT', '$P$BmIBhg8gehYPI5Cmc9/xJintpkXfFw0', 'namit', 'imkay2712@gmail.com', 'http://localhost/topnhakhoa', '2023-02-13 01:23:57', '', 0, 'namIT'),
(2, 'testAuthor', '$P$BiGmTzt2GO93i1GY/scVUJ1k6u68Xf.', 'testauthor', 'testauthor@gmail.com', '', '2023-02-27 07:03:51', '', 0, 'Author Test');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1947;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=951;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
