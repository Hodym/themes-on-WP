-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 21 2021 г., 23:33
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-17 04:30:17', '2021-12-17 02:30:17', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp.loc', 'yes'),
(2, 'home', 'http://wp.loc', 'yes'),
(3, 'blogname', 'wp_tests', 'yes'),
(4, 'blogdescription', 'Тестовий сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hodimchukdmitriy@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'auto', 'yes'),
(41, 'stylesheet', 'auto', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Kiev', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '11', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1655260217', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'uk', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:169:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Недавні записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:245:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Останні коментарі</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архіви</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Категорії</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1640122218;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640140217;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640140218;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1640140232;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640140233;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640399418;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', ',2Nm$$4am;E}T_5DS!p#kOV2G8s5Kn(9#/vh@D$(Xb$Q%y4oA!(6pk%H51uY[Sk9', 'no'),
(116, 'nonce_salt', 'pdRR*u!fUMkR{R)_? ,sSRpsXd*9o]Grz5CpyfLds3uQ.9V,UM2ir&WOPX<)8FdZ', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1639711365;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Невдала перевірка SSL.\";}}', 'yes'),
(134, 'auth_key', 'dG&aF2oD`,t5L+z2UiU**q)Lfj`L^ B/_Ce*U(okTcgj]Gh|gzOAhU}77h>3BU*.', 'no'),
(135, 'auth_salt', 'BrKu{/V6-mm4xHye^;NVO~$Y0s(;|.~YZ,HgaB#rq-WN1/~hs(}-~zElrk_Q,6<X', 'no'),
(136, 'logged_in_key', 'b0hf.,}dE4@8>=Wchv6W-NjbNw{%Q+v-4e8oxSuebigE4jgDvr~ii@)IO4JW8J(%', 'no'),
(137, 'logged_in_salt', 'a;Yji#2r4q70eIwgv A({x2pA[}LM58xryl.EPJE!@tdTv-7W{}Dua`j}GRgC9Ob', 'no'),
(138, '_site_transient_timeout_browser_ef3b5c34163d12b7879e89b3225e3a20', '1640313033', 'no'),
(139, '_site_transient_browser_ef3b5c34163d12b7879e89b3225e3a20', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"85.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, '_site_transient_timeout_php_check_0cbcbda5109bcde6b94054595b5c2163', '1640313033', 'no'),
(141, '_site_transient_php_check_0cbcbda5109bcde6b94054595b5c2163', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(149, 'can_compress_scripts', '1', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(161, 'current_theme', 'auto', 'yes'),
(162, 'theme_mods_auto', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:34;}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(165, 'recovery_mode_email_last_sent', '1639712121', 'yes'),
(170, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(176, '_site_transient_timeout_browser_19f055c16e5e3772994ab5dc3fe1653e', '1640459763', 'no'),
(177, '_site_transient_browser_19f055c16e5e3772994ab5dc3fe1653e', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"95.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(200, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'category_children', 'a:0:{}', 'yes'),
(223, 'recently_activated', 'a:0:{}', 'yes'),
(230, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1639901698;s:7:\"version\";s:5:\"5.5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(235, 'site_logo', '34', 'yes'),
(243, 'acf_version', '5.11.4', 'yes'),
(293, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/uk/wordpress-5.8.2.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/uk/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1640112360;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(294, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640112360;s:7:\"checked\";a:4:{s:4:\"auto\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(295, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640112361;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.3\";}}', 'no'),
(298, '_site_transient_timeout_available_translations', '1640124067', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(299, '_site_transient_available_translations', 'a:127:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-17 11:49:29\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-01 15:31:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-16 21:42:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-15 09:50:05\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-15 22:52:34\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-16 20:33:10\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-12 13:35:53\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-13 18:06:50\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-13 18:09:57\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-07-10 12:19:50\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-07-22 10:24:47\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.8.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-07-22 10:24:20\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-02 11:17:46\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-06 23:28:37\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-25 03:05:46\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-09 10:29:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-04 18:08:37\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-25 03:09:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-03 10:52:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-12 16:17:36\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-06 11:31:19\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-14 13:29:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-02 02:19:00\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-18 06:07:34\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.13/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-02 13:13:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-02 02:19:31\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-07-30 00:35:05\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-11 09:49:40\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-20 16:34:11\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-20 12:04:09\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-17 11:15:06\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-07 15:52:29\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-17 14:28:10\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-26 18:07:06\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.25\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-20 10:01:27\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-15 18:51:47\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-02 11:18:08\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-13 09:45:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-25 11:28:10\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-14 16:49:52\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-27 05:18:09\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-21 06:43:12\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-14 17:37:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.13/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-03 06:17:02\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-06 13:14:34\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-17 20:04:07\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-21 04:11:41\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.13/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-14 12:51:29\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-12 17:53:09\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-06 13:55:08\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-21 17:33:07\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.26\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-27 16:28:47\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-15 08:56:03\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-09-08 19:39:30\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-21 17:35:09\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-16 23:35:59\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.8/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-10 07:31:29\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-15 15:37:00\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-23 08:11:23\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-02 20:06:53\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-16 08:39:17\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.10\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.10/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-14 08:30:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-04 12:16:39\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-10-10 16:46:39\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-16 07:16:28\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-16 00:27:59\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-27 10:46:14\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-11-05 11:55:27\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(300, 'new_admin_email', 'hodimchukdmitriy@gmail.com', 'yes'),
(304, '_site_transient_timeout_wp_remote_block_patterns_cb1cfc46c0577c329bcd55d6f2861355', '1640122169', 'no'),
(305, '_site_transient_wp_remote_block_patterns_cb1cfc46c0577c329bcd55d6f2861355', 'a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1082:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-container-61c238cdca6de wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1221:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-container-61c238cdcb631 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2646:\"\n<div class=\"wp-container-61c238cdcefc1 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1915:\"\n<div class=\"wp-container-61c238cdd1817 wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no'),
(306, '_site_transient_timeout_theme_roots', '1640120369', 'no'),
(307, '_site_transient_theme_roots', 'a:4:{s:4:\"auto\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1639854005'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1639854005'),
(8, 3, '_wp_desired_post_slug', 'privacy-policy'),
(9, 1, '_wp_trash_meta_status', 'publish'),
(10, 1, '_wp_trash_meta_time', '1639854036'),
(11, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82'),
(12, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(13, 8, '_edit_lock', '1639854470:1'),
(14, 8, '_wp_trash_meta_status', 'publish'),
(15, 8, '_wp_trash_meta_time', '1639854622'),
(16, 8, '_wp_desired_post_slug', 'home'),
(17, 11, '_edit_lock', '1640118435:1'),
(18, 11, '_wp_page_template', 'home.php'),
(19, 13, '_edit_lock', '1639865298:1'),
(20, 14, '_edit_lock', '1639867904:1'),
(23, 16, '_wp_attached_file', '2021/12/3.jpg'),
(24, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2021/12/3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 17, '_wp_attached_file', '2021/12/1.jpg'),
(26, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2021/12/1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 18, '_wp_attached_file', '2021/12/2.jpg'),
(28, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:249;s:4:\"file\";s:13:\"2021/12/2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 19, '_wp_attached_file', '2021/12/ford-mustang.png'),
(30, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:814;s:6:\"height\";i:462;s:4:\"file\";s:24:\"2021/12/ford-mustang.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ford-mustang-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ford-mustang-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"ford-mustang-768x436.png\";s:5:\"width\";i:768;s:6:\"height\";i:436;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 20, '_wp_attached_file', '2021/12/car.png'),
(32, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:606;s:4:\"file\";s:15:\"2021/12/car.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"car-158x300.png\";s:5:\"width\";i:158;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"car-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 14, '_thumbnail_id', '17'),
(36, 22, '_edit_lock', '1639870204:1'),
(39, 22, '_thumbnail_id', '18'),
(40, 24, '_edit_lock', '1639867958:1'),
(43, 24, '_thumbnail_id', '16'),
(44, 26, '_edit_lock', '1639866676:1'),
(47, 26, '_thumbnail_id', '17'),
(54, 31, '_edit_lock', '1639870339:1'),
(55, 19, '_wp_attachment_image_alt', 'ford-mustang'),
(58, 31, '_thumbnail_id', '19'),
(59, 33, '_form', '[text text-927 class:contacts__input placeholder \"Как Вас зовут?\"][tel* tel-79 class:contacts__input placeholder \"Ваш номер телефона\"][submit class:contacts__btn class:button \"Отправить заявку\"]'),
(60, 33, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <wordpress@wp.loc>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:221:\"Від: [your-name] <[your-email]>\nТема: [your-subject]\n\nТекст повідомлення:\n[your-message]\n\n-- \nЦе повідомлення було відправлено з сайту [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(61, 33, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:32:\"[_site_title] <wordpress@wp.loc>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:160:\"Текст повідомлення:\n[your-message]\n\n-- \nЦе повідомлення було відправлено з сайту [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(62, 33, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Дякуємо за Ваше повідомлення. Воно було надіслане.\";s:12:\"mail_sent_ng\";s:180:\"Сталася помилка під час спроби відправити Ваше повідомлення. Будь ласка, спробуйте ще раз пізніше.\";s:16:\"validation_error\";s:167:\"Одне або декілька полів містять помилкові дані. Будь ласка, перевірте їх і спробуйте ще раз.\";s:4:\"spam\";s:180:\"Сталася помилка під час спроби відправити Ваше повідомлення. Будь ласка, спробуйте ще раз пізніше.\";s:12:\"accept_terms\";s:153:\"Ви повинні прийняти умови та положення перед тим, як відправляти Ваше повідомлення.\";s:16:\"invalid_required\";s:59:\"Поле обов\'язкове для заповнення.\";s:16:\"invalid_too_long\";s:35:\"Поле занадто довге.\";s:17:\"invalid_too_short\";s:39:\"Поле занадто коротке.\";s:13:\"upload_failed\";s:97:\"Під час завантаження файлу сталася невідома помилка.\";s:24:\"upload_file_type_invalid\";s:89:\"Вам не дозволено завантажувати файли цього типу.\";s:21:\"upload_file_too_large\";s:39:\"Файл занадто великий.\";s:23:\"upload_failed_php_error\";s:80:\"Під час завантаження файлу сталася помилка.\";s:12:\"invalid_date\";s:45:\"Формат дати некоректний.\";s:14:\"date_too_early\";s:68:\"Введена дата надто далеко в минулому.\";s:13:\"date_too_late\";s:74:\"Введена дата надто далеко в майбутньому.\";s:14:\"invalid_number\";s:47:\"Формат числа некоректний.\";s:16:\"number_too_small\";s:66:\"Число менше мінімально допустимого.\";s:16:\"number_too_large\";s:70:\"Число більше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:81:\"Неправильна відповідь на питання перевірки.\";s:13:\"invalid_email\";s:55:\"Некоректна електронна адреса.\";s:11:\"invalid_url\";s:44:\"Некоректне URL посилання.\";s:11:\"invalid_tel\";s:51:\"Некоректний номер телефону.\";}'),
(63, 33, '_additional_settings', ''),
(64, 33, '_locale', 'uk'),
(67, 33, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:123:\"Був використаний некоректний синтаксис поштової адреси в полі %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(68, 34, '_wp_attached_file', '2021/12/logo.svg'),
(69, 34, '_wp_attachment_image_alt', 'Авто-Експрес логотип'),
(70, 35, '_wp_trash_meta_status', 'publish'),
(71, 35, '_wp_trash_meta_time', '1639941662'),
(72, 36, '_edit_last', '1'),
(73, 36, '_edit_lock', '1639945540:1'),
(74, 11, '_edit_last', '1'),
(75, 11, 'телефон', '+38 (050) 555 66 77'),
(76, 11, '_телефон', 'field_61bf8aeb93bd3'),
(77, 38, 'телефон', '380505556677'),
(78, 38, '_телефон', 'field_61bf8aeb93bd3'),
(79, 39, 'телефон', '+38 (050) 555 66 77 '),
(80, 39, '_телефон', 'field_61bf8aeb93bd3'),
(81, 40, 'телефон', '+38 (050) 555 66 77'),
(82, 40, '_телефон', 'field_61bf8aeb93bd3'),
(83, 11, 'тел', '+38 (050) 555 66 777'),
(84, 11, '_тел', 'field_61bf949bb4649'),
(85, 43, 'телефон', '+38 (050) 555 66 77'),
(86, 43, '_телефон', 'field_61bf8aeb93bd3'),
(87, 43, 'тел', '+38 (050) 555 66 777'),
(88, 43, '_тел', 'field_61bf949bb4649'),
(89, 36, '_wp_trash_meta_status', 'publish'),
(90, 36, '_wp_trash_meta_time', '1639946450'),
(91, 36, '_wp_desired_post_slug', 'group_61bf8aa3d2f7b'),
(92, 37, '_wp_trash_meta_status', 'publish'),
(93, 37, '_wp_trash_meta_time', '1639946450'),
(94, 37, '_wp_desired_post_slug', 'field_61bf8aeb93bd3'),
(95, 41, '_wp_trash_meta_status', 'publish'),
(96, 41, '_wp_trash_meta_time', '1639946450'),
(97, 41, '_wp_desired_post_slug', 'field_61bf949bb4649'),
(98, 45, '_edit_last', '1'),
(99, 45, '_edit_lock', '1640036737:1'),
(100, 11, 'phone', '+38 (050) 555 66 77'),
(101, 11, '_phone', 'field_61bf990824d2f'),
(102, 47, 'телефон', '+38 (050) 555 66 77'),
(103, 47, '_телефон', 'field_61bf8aeb93bd3'),
(104, 47, 'тел', '+38 (050) 555 66 777'),
(105, 47, '_тел', 'field_61bf949bb4649'),
(106, 47, 'phone', '+38 (050) 555 '),
(107, 47, '_phone', 'field_61bf990824d2f'),
(108, 49, 'телефон', '+38 (050) 555 66 77'),
(109, 49, '_телефон', 'field_61bf8aeb93bd3'),
(110, 49, 'тел', '+38 (050) 555 66 777'),
(111, 49, '_тел', 'field_61bf949bb4649'),
(112, 49, 'phone', '+38 (050) 555 66 77'),
(113, 49, '_phone', 'field_61bf990824d2f'),
(114, 11, 'номер телефону', '380505556677'),
(115, 11, '_номер телефону', 'field_61bf9f99fd992'),
(116, 51, 'телефон', '+38 (050) 555 66 77'),
(117, 51, '_телефон', 'field_61bf8aeb93bd3'),
(118, 51, 'тел', '+38 (050) 555 66 777'),
(119, 51, '_тел', 'field_61bf949bb4649'),
(120, 51, 'phone', '+38 (050) 555 66 77'),
(121, 51, '_phone', 'field_61bf990824d2f'),
(122, 51, 'номер телефону', '380505556677'),
(123, 51, '_номер телефону', 'field_61bf9f99fd992'),
(124, 11, 'phone-number', '380505556677'),
(125, 11, '_phone-number', 'field_61bf9f99fd992'),
(126, 52, 'телефон', '+38 (050) 555 66 77'),
(127, 52, '_телефон', 'field_61bf8aeb93bd3'),
(128, 52, 'тел', '+38 (050) 555 66 777'),
(129, 52, '_тел', 'field_61bf949bb4649'),
(130, 52, 'phone', '+38 (050) 555 66 77'),
(131, 52, '_phone', 'field_61bf990824d2f'),
(132, 52, 'номер телефону', '380505556677'),
(133, 52, '_номер телефону', 'field_61bf9f99fd992'),
(134, 52, 'phone-number', '380505556677'),
(135, 52, '_phone-number', 'field_61bf9f99fd992'),
(136, 11, 'instagram-link', 'https://wp-kama.ru'),
(137, 11, '_instagram-link', 'field_61bfa28db07a8'),
(138, 54, 'телефон', '+38 (050) 555 66 77'),
(139, 54, '_телефон', 'field_61bf8aeb93bd3'),
(140, 54, 'тел', '+38 (050) 555 66 777'),
(141, 54, '_тел', 'field_61bf949bb4649'),
(142, 54, 'phone', '+38 (050) 555 66 77'),
(143, 54, '_phone', 'field_61bf990824d2f'),
(144, 54, 'номер телефону', '380505556677'),
(145, 54, '_номер телефону', 'field_61bf9f99fd992'),
(146, 54, 'phone-number', '380505556677'),
(147, 54, '_phone-number', 'field_61bf9f99fd992'),
(148, 54, 'instagram-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(149, 54, '_instagram-link', 'field_61bfa28db07a8'),
(150, 11, 'telegram-link', 'https://wp-kama.ru/plugin'),
(151, 11, '_telegram-link', 'field_61c0aaf3e176f'),
(152, 11, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(153, 11, '_whatsapp-link', 'field_61c0abd163e3f'),
(154, 11, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(155, 11, '_facebook-link', 'field_61c0abef0d98f'),
(156, 59, 'телефон', '+38 (050) 555 66 77'),
(157, 59, '_телефон', 'field_61bf8aeb93bd3'),
(158, 59, 'тел', '+38 (050) 555 66 777'),
(159, 59, '_тел', 'field_61bf949bb4649'),
(160, 59, 'phone', '+38 (050) 555 66 77'),
(161, 59, '_phone', 'field_61bf990824d2f'),
(162, 59, 'номер телефону', '380505556677'),
(163, 59, '_номер телефону', 'field_61bf9f99fd992'),
(164, 59, 'phone-number', '380505556677'),
(165, 59, '_phone-number', 'field_61bf9f99fd992'),
(166, 59, 'instagram-link', 'https://wp-kama.ru'),
(167, 59, '_instagram-link', 'field_61bfa28db07a8'),
(168, 59, 'telegram-link', 'https://wp-kama.ru/plugin'),
(169, 59, '_telegram-link', 'field_61c0aaf3e176f'),
(170, 59, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(171, 59, '_whatsapp-link', 'field_61c0abd163e3f'),
(172, 59, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(173, 59, '_facebook-link', 'field_61c0abef0d98f'),
(174, 11, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(175, 11, '_address', 'field_61c0b26ebee2e'),
(176, 11, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(177, 11, '_working-hours', 'field_61c0b3459ae6e'),
(178, 67, 'телефон', '+38 (050) 555 66 77'),
(179, 67, '_телефон', 'field_61bf8aeb93bd3'),
(180, 67, 'тел', '+38 (050) 555 66 777'),
(181, 67, '_тел', 'field_61bf949bb4649'),
(182, 67, 'phone', '+38 (050) 555 66 77'),
(183, 67, '_phone', 'field_61bf990824d2f'),
(184, 67, 'номер телефону', '380505556677'),
(185, 67, '_номер телефону', 'field_61bf9f99fd992'),
(186, 67, 'phone-number', '380505556677'),
(187, 67, '_phone-number', 'field_61bf9f99fd992'),
(188, 67, 'instagram-link', 'https://wp-kama.ru'),
(189, 67, '_instagram-link', 'field_61bfa28db07a8'),
(190, 67, 'telegram-link', 'https://wp-kama.ru/plugin'),
(191, 67, '_telegram-link', 'field_61c0aaf3e176f'),
(192, 67, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(193, 67, '_whatsapp-link', 'field_61c0abd163e3f'),
(194, 67, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(195, 67, '_facebook-link', 'field_61c0abef0d98f'),
(196, 67, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(197, 67, '_address', 'field_61c0b26ebee2e'),
(198, 67, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(199, 67, '_working-hours', 'field_61c0b3459ae6e'),
(200, 11, 'title', 'авто из сша “под ключ”'),
(201, 11, '_title', 'field_61c0cde5159f7'),
(202, 11, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(203, 11, '_subtitle', 'field_61c0ce390a39e'),
(204, 11, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(205, 11, '_text', 'field_61c0cf390388a'),
(206, 71, 'телефон', '+38 (050) 555 66 77'),
(207, 71, '_телефон', 'field_61bf8aeb93bd3'),
(208, 71, 'тел', '+38 (050) 555 66 777'),
(209, 71, '_тел', 'field_61bf949bb4649'),
(210, 71, 'phone', '+38 (050) 555 66 77'),
(211, 71, '_phone', 'field_61bf990824d2f'),
(212, 71, 'номер телефону', '380505556677'),
(213, 71, '_номер телефону', 'field_61bf9f99fd992'),
(214, 71, 'phone-number', '380505556677'),
(215, 71, '_phone-number', 'field_61bf9f99fd992'),
(216, 71, 'instagram-link', 'https://wp-kama.ru'),
(217, 71, '_instagram-link', 'field_61bfa28db07a8'),
(218, 71, 'telegram-link', 'https://wp-kama.ru/plugin'),
(219, 71, '_telegram-link', 'field_61c0aaf3e176f'),
(220, 71, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(221, 71, '_whatsapp-link', 'field_61c0abd163e3f'),
(222, 71, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(223, 71, '_facebook-link', 'field_61c0abef0d98f'),
(224, 71, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(225, 71, '_address', 'field_61c0b26ebee2e'),
(226, 71, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(227, 71, '_working-hours', 'field_61c0b3459ae6e'),
(228, 71, 'title', 'авто из сша “под ключ”'),
(229, 71, '_title', 'field_61c0cde5159f7'),
(230, 71, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(231, 71, '_subtitle', 'field_61c0ce390a39e'),
(232, 71, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(233, 71, '_text', 'field_61c0cf390388a'),
(234, 11, 'main-image', '19'),
(235, 11, '_main-image', 'field_61c0d29eb603a'),
(236, 73, 'телефон', '+38 (050) 555 66 77'),
(237, 73, '_телефон', 'field_61bf8aeb93bd3'),
(238, 73, 'тел', '+38 (050) 555 66 777'),
(239, 73, '_тел', 'field_61bf949bb4649'),
(240, 73, 'phone', '+38 (050) 555 66 77'),
(241, 73, '_phone', 'field_61bf990824d2f'),
(242, 73, 'номер телефону', '380505556677'),
(243, 73, '_номер телефону', 'field_61bf9f99fd992'),
(244, 73, 'phone-number', '380505556677'),
(245, 73, '_phone-number', 'field_61bf9f99fd992'),
(246, 73, 'instagram-link', 'https://wp-kama.ru'),
(247, 73, '_instagram-link', 'field_61bfa28db07a8'),
(248, 73, 'telegram-link', 'https://wp-kama.ru/plugin'),
(249, 73, '_telegram-link', 'field_61c0aaf3e176f'),
(250, 73, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(251, 73, '_whatsapp-link', 'field_61c0abd163e3f'),
(252, 73, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(253, 73, '_facebook-link', 'field_61c0abef0d98f'),
(254, 73, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(255, 73, '_address', 'field_61c0b26ebee2e'),
(256, 73, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(257, 73, '_working-hours', 'field_61c0b3459ae6e'),
(258, 73, 'title', 'авто из сша “под ключ”'),
(259, 73, '_title', 'field_61c0cde5159f7'),
(260, 73, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(261, 73, '_subtitle', 'field_61c0ce390a39e'),
(262, 73, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(263, 73, '_text', 'field_61c0cf390388a'),
(264, 73, 'main-image', '19'),
(265, 73, '_main-image', 'field_61c0d29eb603a'),
(266, 11, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(267, 11, '_service-text', 'field_61c0d792a143a'),
(268, 11, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(269, 11, '_service-item', 'field_61c0d7fda143b'),
(270, 76, 'телефон', '+38 (050) 555 66 77'),
(271, 76, '_телефон', 'field_61bf8aeb93bd3'),
(272, 76, 'тел', '+38 (050) 555 66 777'),
(273, 76, '_тел', 'field_61bf949bb4649'),
(274, 76, 'phone', '+38 (050) 555 66 77'),
(275, 76, '_phone', 'field_61bf990824d2f'),
(276, 76, 'номер телефону', '380505556677'),
(277, 76, '_номер телефону', 'field_61bf9f99fd992'),
(278, 76, 'phone-number', '380505556677'),
(279, 76, '_phone-number', 'field_61bf9f99fd992'),
(280, 76, 'instagram-link', 'https://wp-kama.ru'),
(281, 76, '_instagram-link', 'field_61bfa28db07a8'),
(282, 76, 'telegram-link', 'https://wp-kama.ru/plugin'),
(283, 76, '_telegram-link', 'field_61c0aaf3e176f'),
(284, 76, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(285, 76, '_whatsapp-link', 'field_61c0abd163e3f'),
(286, 76, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(287, 76, '_facebook-link', 'field_61c0abef0d98f'),
(288, 76, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(289, 76, '_address', 'field_61c0b26ebee2e'),
(290, 76, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(291, 76, '_working-hours', 'field_61c0b3459ae6e'),
(292, 76, 'title', 'авто из сша “под ключ”'),
(293, 76, '_title', 'field_61c0cde5159f7'),
(294, 76, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(295, 76, '_subtitle', 'field_61c0ce390a39e'),
(296, 76, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(297, 76, '_text', 'field_61c0cf390388a'),
(298, 76, 'main-image', '19'),
(299, 76, '_main-image', 'field_61c0d29eb603a'),
(300, 76, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько\r\n      раз, как бы\r\n      парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по\r\n      оцениванию состояния авто\r\n      и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама\r\n      лизинговая компания\r\n      занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для\r\n      автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет\r\n      половину цены даже\r\n      из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и\r\n      ремонт, то цена\r\n      аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических\r\n      денег.\r\n    </p>\r\n  </div>\r\n  <a class=\"button button--decor\" href=\"#\">КОНСУЛЬТАЦИЯ ЭКСПЕРТА</a>\r\n</div>'),
(301, 76, '_service-text', 'field_61c0d792a143a'),
(302, 76, 'service-item', '<ol class=\"services__list\">\r\n  <li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Покупка авто</p>\r\n    <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Доставка морем</p>\r\n    <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Растаможка авто</p>\r\n    <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Ремонт авто</p>\r\n    <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Сертификация</p>\r\n    <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n  </li>\r\n  <li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Постановка на учет</p>\r\n    <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n  </li>\r\n</ol>'),
(303, 76, '_service-item', 'field_61c0d7fda143b'),
(304, 77, 'телефон', '+38 (050) 555 66 77'),
(305, 77, '_телефон', 'field_61bf8aeb93bd3'),
(306, 77, 'тел', '+38 (050) 555 66 777'),
(307, 77, '_тел', 'field_61bf949bb4649'),
(308, 77, 'phone', '+38 (050) 555 66 77'),
(309, 77, '_phone', 'field_61bf990824d2f'),
(310, 77, 'номер телефону', '380505556677'),
(311, 77, '_номер телефону', 'field_61bf9f99fd992'),
(312, 77, 'phone-number', '380505556677'),
(313, 77, '_phone-number', 'field_61bf9f99fd992'),
(314, 77, 'instagram-link', 'https://wp-kama.ru'),
(315, 77, '_instagram-link', 'field_61bfa28db07a8'),
(316, 77, 'telegram-link', 'https://wp-kama.ru/plugin'),
(317, 77, '_telegram-link', 'field_61c0aaf3e176f'),
(318, 77, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(319, 77, '_whatsapp-link', 'field_61c0abd163e3f'),
(320, 77, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(321, 77, '_facebook-link', 'field_61c0abef0d98f'),
(322, 77, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(323, 77, '_address', 'field_61c0b26ebee2e'),
(324, 77, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(325, 77, '_working-hours', 'field_61c0b3459ae6e'),
(326, 77, 'title', 'авто из сша “под ключ”'),
(327, 77, '_title', 'field_61c0cde5159f7'),
(328, 77, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(329, 77, '_subtitle', 'field_61c0ce390a39e'),
(330, 77, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(331, 77, '_text', 'field_61c0cf390388a'),
(332, 77, 'main-image', '19'),
(333, 77, '_main-image', 'field_61c0d29eb603a'),
(334, 77, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько\r\n      раз, как быпарадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по\r\n      оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама\r\n      лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для\r\n      автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет\r\n      половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и\r\n      ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических\r\n      денег.\r\n    </p>\r\n  </div>\r\n  <a class=\"button button--decor\" href=\"#\">КОНСУЛЬТАЦИЯ ЭКСПЕРТА</a>\r\n</div>'),
(335, 77, '_service-text', 'field_61c0d792a143a'),
(336, 77, 'service-item', '<ol class=\"services__list\">\r\n  <li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Покупка авто</p>\r\n    <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Доставка морем</p>\r\n    <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Растаможка авто</p>\r\n    <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Ремонт авто</p>\r\n    <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Сертификация</p>\r\n    <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n  </li>\r\n  <li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Постановка на учет</p>\r\n    <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n  </li>\r\n</ol>'),
(337, 77, '_service-item', 'field_61c0d7fda143b'),
(338, 78, 'телефон', '+38 (050) 555 66 77'),
(339, 78, '_телефон', 'field_61bf8aeb93bd3'),
(340, 78, 'тел', '+38 (050) 555 66 777'),
(341, 78, '_тел', 'field_61bf949bb4649'),
(342, 78, 'phone', '+38 (050) 555 66 77'),
(343, 78, '_phone', 'field_61bf990824d2f'),
(344, 78, 'номер телефону', '380505556677'),
(345, 78, '_номер телефону', 'field_61bf9f99fd992'),
(346, 78, 'phone-number', '380505556677'),
(347, 78, '_phone-number', 'field_61bf9f99fd992'),
(348, 78, 'instagram-link', 'https://wp-kama.ru'),
(349, 78, '_instagram-link', 'field_61bfa28db07a8'),
(350, 78, 'telegram-link', 'https://wp-kama.ru/plugin'),
(351, 78, '_telegram-link', 'field_61c0aaf3e176f'),
(352, 78, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(353, 78, '_whatsapp-link', 'field_61c0abd163e3f'),
(354, 78, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(355, 78, '_facebook-link', 'field_61c0abef0d98f'),
(356, 78, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(357, 78, '_address', 'field_61c0b26ebee2e'),
(358, 78, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(359, 78, '_working-hours', 'field_61c0b3459ae6e'),
(360, 78, 'title', 'авто из сша “под ключ”'),
(361, 78, '_title', 'field_61c0cde5159f7'),
(362, 78, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(363, 78, '_subtitle', 'field_61c0ce390a39e'),
(364, 78, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(365, 78, '_text', 'field_61c0cf390388a'),
(366, 78, 'main-image', '19'),
(367, 78, '_main-image', 'field_61c0d29eb603a'),
(368, 78, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько\r\n      раз, как быпарадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по\r\n      оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама\r\n      лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для\r\n      автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет\r\n      половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и\r\n      ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических\r\n      денег.\r\n    </p>\r\n  </div>\r\n</div>'),
(369, 78, '_service-text', 'field_61c0d792a143a'),
(370, 78, 'service-item', '<ol class=\"services__list\">\r\n  <li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Покупка авто</p>\r\n    <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Доставка морем</p>\r\n    <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Растаможка авто</p>\r\n    <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Ремонт авто</p>\r\n    <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Сертификация</p>\r\n    <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n  </li>\r\n  <li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Постановка на учет</p>\r\n    <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n  </li>\r\n</ol>'),
(371, 78, '_service-item', 'field_61c0d7fda143b'),
(372, 79, 'телефон', '+38 (050) 555 66 77'),
(373, 79, '_телефон', 'field_61bf8aeb93bd3'),
(374, 79, 'тел', '+38 (050) 555 66 777'),
(375, 79, '_тел', 'field_61bf949bb4649'),
(376, 79, 'phone', '+38 (050) 555 66 77'),
(377, 79, '_phone', 'field_61bf990824d2f'),
(378, 79, 'номер телефону', '380505556677'),
(379, 79, '_номер телефону', 'field_61bf9f99fd992'),
(380, 79, 'phone-number', '380505556677'),
(381, 79, '_phone-number', 'field_61bf9f99fd992'),
(382, 79, 'instagram-link', 'https://wp-kama.ru'),
(383, 79, '_instagram-link', 'field_61bfa28db07a8'),
(384, 79, 'telegram-link', 'https://wp-kama.ru/plugin'),
(385, 79, '_telegram-link', 'field_61c0aaf3e176f'),
(386, 79, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(387, 79, '_whatsapp-link', 'field_61c0abd163e3f'),
(388, 79, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(389, 79, '_facebook-link', 'field_61c0abef0d98f'),
(390, 79, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(391, 79, '_address', 'field_61c0b26ebee2e'),
(392, 79, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(393, 79, '_working-hours', 'field_61c0b3459ae6e'),
(394, 79, 'title', 'авто из сша “под ключ”'),
(395, 79, '_title', 'field_61c0cde5159f7'),
(396, 79, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(397, 79, '_subtitle', 'field_61c0ce390a39e'),
(398, 79, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(399, 79, '_text', 'field_61c0cf390388a'),
(400, 79, 'main-image', '19'),
(401, 79, '_main-image', 'field_61c0d29eb603a'),
(402, 79, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько\r\n      раз, как быпарадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по\r\n      оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама\r\n      лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для\r\n      автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет\r\n      половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и\r\n      ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических\r\n      денег.\r\n    </p>\r\n  </div>'),
(403, 79, '_service-text', 'field_61c0d792a143a'),
(404, 79, 'service-item', '<ol class=\"services__list\">\r\n  <li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Покупка авто</p>\r\n    <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Доставка морем</p>\r\n    <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Растаможка авто</p>\r\n    <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Ремонт авто</p>\r\n    <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Сертификация</p>\r\n    <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n  </li>\r\n  <li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Постановка на учет</p>\r\n    <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n  </li>\r\n</ol>'),
(405, 79, '_service-item', 'field_61c0d7fda143b'),
(406, 80, 'телефон', '+38 (050) 555 66 77'),
(407, 80, '_телефон', 'field_61bf8aeb93bd3'),
(408, 80, 'тел', '+38 (050) 555 66 777'),
(409, 80, '_тел', 'field_61bf949bb4649'),
(410, 80, 'phone', '+38 (050) 555 66 77'),
(411, 80, '_phone', 'field_61bf990824d2f'),
(412, 80, 'номер телефону', '380505556677'),
(413, 80, '_номер телефону', 'field_61bf9f99fd992'),
(414, 80, 'phone-number', '380505556677'),
(415, 80, '_phone-number', 'field_61bf9f99fd992'),
(416, 80, 'instagram-link', 'https://wp-kama.ru'),
(417, 80, '_instagram-link', 'field_61bfa28db07a8'),
(418, 80, 'telegram-link', 'https://wp-kama.ru/plugin'),
(419, 80, '_telegram-link', 'field_61c0aaf3e176f'),
(420, 80, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(421, 80, '_whatsapp-link', 'field_61c0abd163e3f'),
(422, 80, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(423, 80, '_facebook-link', 'field_61c0abef0d98f'),
(424, 80, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(425, 80, '_address', 'field_61c0b26ebee2e'),
(426, 80, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(427, 80, '_working-hours', 'field_61c0b3459ae6e'),
(428, 80, 'title', 'авто из сша “под ключ”'),
(429, 80, '_title', 'field_61c0cde5159f7'),
(430, 80, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(431, 80, '_subtitle', 'field_61c0ce390a39e'),
(432, 80, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(433, 80, '_text', 'field_61c0cf390388a'),
(434, 80, 'main-image', '19'),
(435, 80, '_main-image', 'field_61c0d29eb603a'),
(436, 80, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(437, 80, '_service-text', 'field_61c0d792a143a'),
(438, 80, 'service-item', '<ol class=\"services__list\">\r\n  <li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Покупка авто</p>\r\n    <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Доставка морем</p>\r\n    <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Растаможка авто</p>\r\n    <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Ремонт авто</p>\r\n    <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n  </li>\r\n  <li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Сертификация</p>\r\n    <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n  </li>\r\n  <li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n    <p class=\"services__item-title\">Постановка на учет</p>\r\n    <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n  </li>\r\n</ol>'),
(439, 80, '_service-item', 'field_61c0d7fda143b'),
(440, 81, 'телефон', '+38 (050) 555 66 77'),
(441, 81, '_телефон', 'field_61bf8aeb93bd3'),
(442, 81, 'тел', '+38 (050) 555 66 777'),
(443, 81, '_тел', 'field_61bf949bb4649'),
(444, 81, 'phone', '+38 (050) 555 66 77'),
(445, 81, '_phone', 'field_61bf990824d2f'),
(446, 81, 'номер телефону', '380505556677'),
(447, 81, '_номер телефону', 'field_61bf9f99fd992'),
(448, 81, 'phone-number', '380505556677'),
(449, 81, '_phone-number', 'field_61bf9f99fd992'),
(450, 81, 'instagram-link', 'https://wp-kama.ru'),
(451, 81, '_instagram-link', 'field_61bfa28db07a8'),
(452, 81, 'telegram-link', 'https://wp-kama.ru/plugin'),
(453, 81, '_telegram-link', 'field_61c0aaf3e176f'),
(454, 81, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(455, 81, '_whatsapp-link', 'field_61c0abd163e3f'),
(456, 81, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(457, 81, '_facebook-link', 'field_61c0abef0d98f'),
(458, 81, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(459, 81, '_address', 'field_61c0b26ebee2e'),
(460, 81, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(461, 81, '_working-hours', 'field_61c0b3459ae6e'),
(462, 81, 'title', 'авто из сша “под ключ”'),
(463, 81, '_title', 'field_61c0cde5159f7'),
(464, 81, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(465, 81, '_subtitle', 'field_61c0ce390a39e'),
(466, 81, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(467, 81, '_text', 'field_61c0cf390388a'),
(468, 81, 'main-image', '19'),
(469, 81, '_main-image', 'field_61c0d29eb603a'),
(470, 81, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(471, 81, '_service-text', 'field_61c0d792a143a'),
(472, 81, 'service-item', '<li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Покупка авто</p>\r\n  <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n<li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Доставка морем</p>\r\n  <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n<li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Растаможка авто</p>\r\n  <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n<li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Ремонт авто</p>\r\n  <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n<li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Сертификация</p>\r\n  <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n<li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Постановка на учет</p>\r\n  <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>'),
(473, 81, '_service-item', 'field_61c0d7fda143b'),
(474, 82, 'телефон', '+38 (050) 555 66 77'),
(475, 82, '_телефон', 'field_61bf8aeb93bd3'),
(476, 82, 'тел', '+38 (050) 555 66 777'),
(477, 82, '_тел', 'field_61bf949bb4649'),
(478, 82, 'phone', '+38 (050) 555 66 77'),
(479, 82, '_phone', 'field_61bf990824d2f'),
(480, 82, 'номер телефону', '380505556677'),
(481, 82, '_номер телефону', 'field_61bf9f99fd992'),
(482, 82, 'phone-number', '380505556677'),
(483, 82, '_phone-number', 'field_61bf9f99fd992'),
(484, 82, 'instagram-link', 'https://wp-kama.ru'),
(485, 82, '_instagram-link', 'field_61bfa28db07a8'),
(486, 82, 'telegram-link', 'https://wp-kama.ru/plugin'),
(487, 82, '_telegram-link', 'field_61c0aaf3e176f'),
(488, 82, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(489, 82, '_whatsapp-link', 'field_61c0abd163e3f');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(490, 82, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(491, 82, '_facebook-link', 'field_61c0abef0d98f'),
(492, 82, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(493, 82, '_address', 'field_61c0b26ebee2e'),
(494, 82, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(495, 82, '_working-hours', 'field_61c0b3459ae6e'),
(496, 82, 'title', 'авто из сша “под ключ”'),
(497, 82, '_title', 'field_61c0cde5159f7'),
(498, 82, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(499, 82, '_subtitle', 'field_61c0ce390a39e'),
(500, 82, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(501, 82, '_text', 'field_61c0cf390388a'),
(502, 82, 'main-image', '19'),
(503, 82, '_main-image', 'field_61c0d29eb603a'),
(504, 82, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(505, 82, '_service-text', 'field_61c0d792a143a'),
(506, 82, 'service-item', '<ol class=\"services__list\">\r\n<li data-wow-delay=\"1s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Покупка авто</p>\r\n  <p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n<li data-wow-delay=\"1.2s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Доставка морем</p>\r\n  <p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n<li data-wow-delay=\"1.4s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Растаможка авто</p>\r\n  <p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n<li data-wow-delay=\"1.6s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Ремонт авто</p>\r\n  <p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n<li data-wow-delay=\"1.8s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Сертификация</p>\r\n  <p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n<li data-wow-delay=\"2s\" class=\"services__item wow animate__fadeInRight\">\r\n  <p class=\"services__item-title\">Постановка на учет</p>\r\n  <p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(507, 82, '_service-item', 'field_61c0d7fda143b'),
(508, 83, 'телефон', '+38 (050) 555 66 77'),
(509, 83, '_телефон', 'field_61bf8aeb93bd3'),
(510, 83, 'тел', '+38 (050) 555 66 777'),
(511, 83, '_тел', 'field_61bf949bb4649'),
(512, 83, 'phone', '+38 (050) 555 66 77'),
(513, 83, '_phone', 'field_61bf990824d2f'),
(514, 83, 'номер телефону', '380505556677'),
(515, 83, '_номер телефону', 'field_61bf9f99fd992'),
(516, 83, 'phone-number', '380505556677'),
(517, 83, '_phone-number', 'field_61bf9f99fd992'),
(518, 83, 'instagram-link', 'https://wp-kama.ru'),
(519, 83, '_instagram-link', 'field_61bfa28db07a8'),
(520, 83, 'telegram-link', 'https://wp-kama.ru/plugin'),
(521, 83, '_telegram-link', 'field_61c0aaf3e176f'),
(522, 83, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(523, 83, '_whatsapp-link', 'field_61c0abd163e3f'),
(524, 83, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(525, 83, '_facebook-link', 'field_61c0abef0d98f'),
(526, 83, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(527, 83, '_address', 'field_61c0b26ebee2e'),
(528, 83, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(529, 83, '_working-hours', 'field_61c0b3459ae6e'),
(530, 83, 'title', 'авто из сша “под ключ”'),
(531, 83, '_title', 'field_61c0cde5159f7'),
(532, 83, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(533, 83, '_subtitle', 'field_61c0ce390a39e'),
(534, 83, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(535, 83, '_text', 'field_61c0cf390388a'),
(536, 83, 'main-image', '19'),
(537, 83, '_main-image', 'field_61c0d29eb603a'),
(538, 83, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(539, 83, '_service-text', 'field_61c0d792a143a'),
(540, 83, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(541, 83, '_service-item', 'field_61c0d7fda143b'),
(542, 84, 'телефон', '+38 (050) 555 66 77'),
(543, 84, '_телефон', 'field_61bf8aeb93bd3'),
(544, 84, 'тел', '+38 (050) 555 66 777'),
(545, 84, '_тел', 'field_61bf949bb4649'),
(546, 84, 'phone', '+38 (050) 555 66 77'),
(547, 84, '_phone', 'field_61bf990824d2f'),
(548, 84, 'номер телефону', '380505556677'),
(549, 84, '_номер телефону', 'field_61bf9f99fd992'),
(550, 84, 'phone-number', '380505556677'),
(551, 84, '_phone-number', 'field_61bf9f99fd992'),
(552, 84, 'instagram-link', 'https://wp-kama.ru'),
(553, 84, '_instagram-link', 'field_61bfa28db07a8'),
(554, 84, 'telegram-link', 'https://wp-kama.ru/plugin'),
(555, 84, '_telegram-link', 'field_61c0aaf3e176f'),
(556, 84, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(557, 84, '_whatsapp-link', 'field_61c0abd163e3f'),
(558, 84, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(559, 84, '_facebook-link', 'field_61c0abef0d98f'),
(560, 84, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(561, 84, '_address', 'field_61c0b26ebee2e'),
(562, 84, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(563, 84, '_working-hours', 'field_61c0b3459ae6e'),
(564, 84, 'title', 'авто из сша “под ключ”'),
(565, 84, '_title', 'field_61c0cde5159f7'),
(566, 84, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(567, 84, '_subtitle', 'field_61c0ce390a39e'),
(568, 84, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(569, 84, '_text', 'field_61c0cf390388a'),
(570, 84, 'main-image', '19'),
(571, 84, '_main-image', 'field_61c0d29eb603a'),
(572, 84, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(573, 84, '_service-text', 'field_61c0d792a143a'),
(574, 84, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(575, 84, '_service-item', 'field_61c0d7fda143b'),
(576, 85, 'телефон', '+38 (050) 555 66 77'),
(577, 85, '_телефон', 'field_61bf8aeb93bd3'),
(578, 85, 'тел', '+38 (050) 555 66 777'),
(579, 85, '_тел', 'field_61bf949bb4649'),
(580, 85, 'phone', '+38 (050) 555 66 77'),
(581, 85, '_phone', 'field_61bf990824d2f'),
(582, 85, 'номер телефону', '380505556677'),
(583, 85, '_номер телефону', 'field_61bf9f99fd992'),
(584, 85, 'phone-number', '380505556677'),
(585, 85, '_phone-number', 'field_61bf9f99fd992'),
(586, 85, 'instagram-link', 'https://wp-kama.ru'),
(587, 85, '_instagram-link', 'field_61bfa28db07a8'),
(588, 85, 'telegram-link', 'https://wp-kama.ru/plugin'),
(589, 85, '_telegram-link', 'field_61c0aaf3e176f'),
(590, 85, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(591, 85, '_whatsapp-link', 'field_61c0abd163e3f'),
(592, 85, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(593, 85, '_facebook-link', 'field_61c0abef0d98f'),
(594, 85, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(595, 85, '_address', 'field_61c0b26ebee2e'),
(596, 85, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(597, 85, '_working-hours', 'field_61c0b3459ae6e'),
(598, 85, 'title', 'авто из сша “под ключ”'),
(599, 85, '_title', 'field_61c0cde5159f7'),
(600, 85, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(601, 85, '_subtitle', 'field_61c0ce390a39e'),
(602, 85, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(603, 85, '_text', 'field_61c0cf390388a'),
(604, 85, 'main-image', '19'),
(605, 85, '_main-image', 'field_61c0d29eb603a'),
(606, 85, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(607, 85, '_service-text', 'field_61c0d792a143a'),
(608, 85, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(609, 85, '_service-item', 'field_61c0d7fda143b'),
(610, 87, 'телефон', '+38 (050) 555 66 77'),
(611, 87, '_телефон', 'field_61bf8aeb93bd3'),
(612, 87, 'тел', '+38 (050) 555 66 777'),
(613, 87, '_тел', 'field_61bf949bb4649'),
(614, 87, 'phone', '+38 (050) 555 66 77'),
(615, 87, '_phone', 'field_61bf990824d2f'),
(616, 87, 'номер телефону', '380505556677'),
(617, 87, '_номер телефону', 'field_61bf9f99fd992'),
(618, 87, 'phone-number', '380505556677'),
(619, 87, '_phone-number', 'field_61bf9f99fd992'),
(620, 87, 'instagram-link', 'https://wp-kama.ru'),
(621, 87, '_instagram-link', 'field_61bfa28db07a8'),
(622, 87, 'telegram-link', 'https://wp-kama.ru/plugin'),
(623, 87, '_telegram-link', 'field_61c0aaf3e176f'),
(624, 87, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(625, 87, '_whatsapp-link', 'field_61c0abd163e3f'),
(626, 87, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(627, 87, '_facebook-link', 'field_61c0abef0d98f'),
(628, 87, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(629, 87, '_address', 'field_61c0b26ebee2e'),
(630, 87, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(631, 87, '_working-hours', 'field_61c0b3459ae6e'),
(632, 87, 'title', 'авто из сша “под ключ”'),
(633, 87, '_title', 'field_61c0cde5159f7'),
(634, 87, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(635, 87, '_subtitle', 'field_61c0ce390a39e'),
(636, 87, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(637, 87, '_text', 'field_61c0cf390388a'),
(638, 87, 'main-image', '19'),
(639, 87, '_main-image', 'field_61c0d29eb603a'),
(640, 87, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(641, 87, '_service-text', 'field_61c0d792a143a'),
(642, 87, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(643, 87, '_service-item', 'field_61c0d7fda143b'),
(644, 11, 'benefits-img', '20'),
(645, 11, '_benefits-img', 'field_61c0f14b502c1'),
(646, 88, 'телефон', '+38 (050) 555 66 77'),
(647, 88, '_телефон', 'field_61bf8aeb93bd3'),
(648, 88, 'тел', '+38 (050) 555 66 777'),
(649, 88, '_тел', 'field_61bf949bb4649'),
(650, 88, 'phone', '+38 (050) 555 66 77'),
(651, 88, '_phone', 'field_61bf990824d2f'),
(652, 88, 'номер телефону', '380505556677'),
(653, 88, '_номер телефону', 'field_61bf9f99fd992'),
(654, 88, 'phone-number', '380505556677'),
(655, 88, '_phone-number', 'field_61bf9f99fd992'),
(656, 88, 'instagram-link', 'https://wp-kama.ru'),
(657, 88, '_instagram-link', 'field_61bfa28db07a8'),
(658, 88, 'telegram-link', 'https://wp-kama.ru/plugin'),
(659, 88, '_telegram-link', 'field_61c0aaf3e176f'),
(660, 88, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(661, 88, '_whatsapp-link', 'field_61c0abd163e3f'),
(662, 88, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(663, 88, '_facebook-link', 'field_61c0abef0d98f'),
(664, 88, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(665, 88, '_address', 'field_61c0b26ebee2e'),
(666, 88, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(667, 88, '_working-hours', 'field_61c0b3459ae6e'),
(668, 88, 'title', 'авто из сша “под ключ”'),
(669, 88, '_title', 'field_61c0cde5159f7'),
(670, 88, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(671, 88, '_subtitle', 'field_61c0ce390a39e'),
(672, 88, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(673, 88, '_text', 'field_61c0cf390388a'),
(674, 88, 'main-image', '19'),
(675, 88, '_main-image', 'field_61c0d29eb603a'),
(676, 88, 'service-text', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(677, 88, '_service-text', 'field_61c0d792a143a'),
(678, 88, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(679, 88, '_service-item', 'field_61c0d7fda143b'),
(680, 88, 'benefits-img', '20'),
(681, 88, '_benefits-img', 'field_61c0f14b502c1'),
(682, 89, 'телефон', '+38 (050) 555 66 77'),
(683, 89, '_телефон', 'field_61bf8aeb93bd3'),
(684, 89, 'тел', '+38 (050) 555 66 777'),
(685, 89, '_тел', 'field_61bf949bb4649'),
(686, 89, 'phone', '+38 (050) 555 66 77'),
(687, 89, '_phone', 'field_61bf990824d2f'),
(688, 89, 'номер телефону', '380505556677'),
(689, 89, '_номер телефону', 'field_61bf9f99fd992'),
(690, 89, 'phone-number', '380505556677'),
(691, 89, '_phone-number', 'field_61bf9f99fd992'),
(692, 89, 'instagram-link', 'https://wp-kama.ru'),
(693, 89, '_instagram-link', 'field_61bfa28db07a8'),
(694, 89, 'telegram-link', 'https://wp-kama.ru/plugin'),
(695, 89, '_telegram-link', 'field_61c0aaf3e176f'),
(696, 89, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(697, 89, '_whatsapp-link', 'field_61c0abd163e3f'),
(698, 89, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(699, 89, '_facebook-link', 'field_61c0abef0d98f'),
(700, 89, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(701, 89, '_address', 'field_61c0b26ebee2e'),
(702, 89, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(703, 89, '_working-hours', 'field_61c0b3459ae6e'),
(704, 89, 'title', 'авто из сша “под ключ”'),
(705, 89, '_title', 'field_61c0cde5159f7'),
(706, 89, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(707, 89, '_subtitle', 'field_61c0ce390a39e'),
(708, 89, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(709, 89, '_text', 'field_61c0cf390388a'),
(710, 89, 'main-image', '19'),
(711, 89, '_main-image', 'field_61c0d29eb603a'),
(712, 89, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(713, 89, '_service-text', 'field_61c0d792a143a'),
(714, 89, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(715, 89, '_service-item', 'field_61c0d7fda143b'),
(716, 89, 'benefits-img', '20'),
(717, 89, '_benefits-img', 'field_61c0f14b502c1'),
(718, 90, 'телефон', '+38 (050) 555 66 77'),
(719, 90, '_телефон', 'field_61bf8aeb93bd3'),
(720, 90, 'тел', '+38 (050) 555 66 777'),
(721, 90, '_тел', 'field_61bf949bb4649'),
(722, 90, 'phone', '+38 (050) 555 66 77'),
(723, 90, '_phone', 'field_61bf990824d2f'),
(724, 90, 'номер телефону', '380505556677'),
(725, 90, '_номер телефону', 'field_61bf9f99fd992'),
(726, 90, 'phone-number', '380505556677'),
(727, 90, '_phone-number', 'field_61bf9f99fd992'),
(728, 90, 'instagram-link', 'https://wp-kama.ru'),
(729, 90, '_instagram-link', 'field_61bfa28db07a8'),
(730, 90, 'telegram-link', 'https://wp-kama.ru/plugin'),
(731, 90, '_telegram-link', 'field_61c0aaf3e176f'),
(732, 90, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(733, 90, '_whatsapp-link', 'field_61c0abd163e3f'),
(734, 90, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(735, 90, '_facebook-link', 'field_61c0abef0d98f'),
(736, 90, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(737, 90, '_address', 'field_61c0b26ebee2e'),
(738, 90, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(739, 90, '_working-hours', 'field_61c0b3459ae6e'),
(740, 90, 'title', 'авто из сша “под ключ”'),
(741, 90, '_title', 'field_61c0cde5159f7'),
(742, 90, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(743, 90, '_subtitle', 'field_61c0ce390a39e'),
(744, 90, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(745, 90, '_text', 'field_61c0cf390388a'),
(746, 90, 'main-image', '19'),
(747, 90, '_main-image', 'field_61c0d29eb603a'),
(748, 90, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(749, 90, '_service-text', 'field_61c0d792a143a'),
(750, 90, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(751, 90, '_service-item', 'field_61c0d7fda143b'),
(752, 90, 'benefits-img', '20'),
(753, 90, '_benefits-img', 'field_61c0f14b502c1'),
(754, 11, 'benefits-list', '<ul class=\"benefits__list\">\r\n  <li class=\"benefits__item\">\r\n    <p class=\"benefits__item-num\">650</p>\r\n    <p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n    <p class=\"benefits__item-text\">\r\n      большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%\r\n    </p>\r\n  </li>\r\n  <li class=\"benefits__item\">\r\n    <p class=\"benefits__item-num\">5</p>\r\n    <p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n    <p class=\"benefits__item-text\">\r\n      Работаем по всей территории Украины, работаем по договору с клиентами\r\n    </p>\r\n  </li>\r\n  <li class=\"benefits__item\">\r\n    <p class=\"benefits__item-num\">100%</p>\r\n    <p class=\"benefits__item-title\">доверия клиентов</p>\r\n    <p class=\"benefits__item-text\">\r\n      Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет\r\n    </p>\r\n  </li>\r\n</ul>'),
(755, 11, '_benefits-list', 'field_61c0f37cda013'),
(756, 92, 'телефон', '+38 (050) 555 66 77'),
(757, 92, '_телефон', 'field_61bf8aeb93bd3'),
(758, 92, 'тел', '+38 (050) 555 66 777'),
(759, 92, '_тел', 'field_61bf949bb4649'),
(760, 92, 'phone', '+38 (050) 555 66 77'),
(761, 92, '_phone', 'field_61bf990824d2f'),
(762, 92, 'номер телефону', '380505556677'),
(763, 92, '_номер телефону', 'field_61bf9f99fd992'),
(764, 92, 'phone-number', '380505556677'),
(765, 92, '_phone-number', 'field_61bf9f99fd992'),
(766, 92, 'instagram-link', 'https://wp-kama.ru'),
(767, 92, '_instagram-link', 'field_61bfa28db07a8'),
(768, 92, 'telegram-link', 'https://wp-kama.ru/plugin'),
(769, 92, '_telegram-link', 'field_61c0aaf3e176f'),
(770, 92, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(771, 92, '_whatsapp-link', 'field_61c0abd163e3f'),
(772, 92, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(773, 92, '_facebook-link', 'field_61c0abef0d98f'),
(774, 92, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(775, 92, '_address', 'field_61c0b26ebee2e'),
(776, 92, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(777, 92, '_working-hours', 'field_61c0b3459ae6e'),
(778, 92, 'title', 'авто из сша “под ключ”'),
(779, 92, '_title', 'field_61c0cde5159f7'),
(780, 92, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(781, 92, '_subtitle', 'field_61c0ce390a39e'),
(782, 92, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(783, 92, '_text', 'field_61c0cf390388a'),
(784, 92, 'main-image', '19'),
(785, 92, '_main-image', 'field_61c0d29eb603a'),
(786, 92, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(787, 92, '_service-text', 'field_61c0d792a143a'),
(788, 92, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(789, 92, '_service-item', 'field_61c0d7fda143b'),
(790, 92, 'benefits-img', '20'),
(791, 92, '_benefits-img', 'field_61c0f14b502c1'),
(792, 92, 'benefits-list', '<li class=\"benefits__item\">\r\n  <p class=\"benefits__item-num\">650</p>\r\n  <p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n  <p class=\"benefits__item-text\">\r\n    большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%\r\n  </p>\r\n</li>\r\n<li class=\"benefits__item\">\r\n  <p class=\"benefits__item-num\">5</p>\r\n  <p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n  <p class=\"benefits__item-text\">\r\n    Работаем по всей территории Украины, работаем по договору с клиентами\r\n  </p>\r\n</li>\r\n<li class=\"benefits__item\">\r\n  <p class=\"benefits__item-num\">100%</p>\r\n  <p class=\"benefits__item-title\">доверия клиентов</p>\r\n  <p class=\"benefits__item-text\">\r\n    Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет\r\n  </p>\r\n</li>'),
(793, 92, '_benefits-list', 'field_61c0f37cda013'),
(794, 93, 'телефон', '+38 (050) 555 66 77'),
(795, 93, '_телефон', 'field_61bf8aeb93bd3'),
(796, 93, 'тел', '+38 (050) 555 66 777'),
(797, 93, '_тел', 'field_61bf949bb4649'),
(798, 93, 'phone', '+38 (050) 555 66 77'),
(799, 93, '_phone', 'field_61bf990824d2f'),
(800, 93, 'номер телефону', '380505556677'),
(801, 93, '_номер телефону', 'field_61bf9f99fd992'),
(802, 93, 'phone-number', '380505556677'),
(803, 93, '_phone-number', 'field_61bf9f99fd992'),
(804, 93, 'instagram-link', 'https://wp-kama.ru'),
(805, 93, '_instagram-link', 'field_61bfa28db07a8'),
(806, 93, 'telegram-link', 'https://wp-kama.ru/plugin'),
(807, 93, '_telegram-link', 'field_61c0aaf3e176f'),
(808, 93, 'whatsapp-link', 'https://wp-kama.ru/plugin/acf'),
(809, 93, '_whatsapp-link', 'field_61c0abd163e3f'),
(810, 93, 'facebook-link', 'https://wp-kama.ru/plugin/acf/function/the_field'),
(811, 93, '_facebook-link', 'field_61c0abef0d98f'),
(812, 93, 'address', 'Киев, Подол\r\nул. Константиновская, д.71'),
(813, 93, '_address', 'field_61c0b26ebee2e'),
(814, 93, 'working-hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(815, 93, '_working-hours', 'field_61c0b3459ae6e'),
(816, 93, 'title', 'авто из сша “под ключ”'),
(817, 93, '_title', 'field_61c0cde5159f7'),
(818, 93, 'subtitle', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(819, 93, '_subtitle', 'field_61c0ce390a39e'),
(820, 93, 'text', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(821, 93, '_text', 'field_61c0cf390388a'),
(822, 93, 'main-image', '19'),
(823, 93, '_main-image', 'field_61c0d29eb603a'),
(824, 93, 'service-text', '<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Почему ввоз авто из США?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.\r\n    </p>\r\n    <p class=\"services__content-text\">\r\n      Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.\r\n    </p>\r\n  </div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n  <h6 class=\"services__content-title\">\r\n    Из-за чего такая низкая цена?\r\n  </h6>\r\n  <div class=\"services__content-textbox\">\r\n    <p class=\"services__content-text\">\r\n      Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.\r\n    </p>\r\n  </div>'),
(825, 93, '_service-text', 'field_61c0d792a143a'),
(826, 93, 'service-item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(827, 93, '_service-item', 'field_61c0d7fda143b'),
(828, 93, 'benefits-img', '20'),
(829, 93, '_benefits-img', 'field_61c0f14b502c1'),
(830, 93, 'benefits-list', '<ul class=\"benefits__list\">\r\n  <li class=\"benefits__item\">\r\n    <p class=\"benefits__item-num\">650</p>\r\n    <p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n    <p class=\"benefits__item-text\">\r\n      большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%\r\n    </p>\r\n  </li>\r\n  <li class=\"benefits__item\">\r\n    <p class=\"benefits__item-num\">5</p>\r\n    <p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n    <p class=\"benefits__item-text\">\r\n      Работаем по всей территории Украины, работаем по договору с клиентами\r\n    </p>\r\n  </li>\r\n  <li class=\"benefits__item\">\r\n    <p class=\"benefits__item-num\">100%</p>\r\n    <p class=\"benefits__item-title\">доверия клиентов</p>\r\n    <p class=\"benefits__item-text\">\r\n      Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет\r\n    </p>\r\n  </li>\r\n</ul>'),
(831, 93, '_benefits-list', 'field_61c0f37cda013'),
(832, 94, '_edit_lock', '1640112719:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-17 04:30:17', '2021-12-17 02:30:17', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82__trashed', '', '', '2021-12-18 21:00:36', '2021-12-18 19:00:36', '', 0, 'http://wp.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-17 04:30:17', '2021-12-17 02:30:17', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://wp.loc/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-12-18 21:00:05', '2021-12-18 19:00:05', '', 0, 'http://wp.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-17 04:30:17', '2021-12-17 02:30:17', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: http://wp.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментарі</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медіафайли</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вбудований вміст з інших веб-сайтів</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph -->', 'Політика конфіденційності', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-12-18 21:00:05', '2021-12-18 19:00:05', '', 0, 'http://wp.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-12-17 04:30:33', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-17 04:30:33', '0000-00-00 00:00:00', '', 0, 'http://wp.loc/?p=4', 0, 'post', '', 0),
(5, 1, '2021-12-18 21:00:05', '2021-12-18 19:00:05', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://wp.loc/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-18 21:00:05', '2021-12-18 19:00:05', '', 2, 'http://wp.loc/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-12-18 21:00:05', '2021-12-18 19:00:05', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: http://wp.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментарі</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медіафайли</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вбудований вміст з інших веб-сайтів</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph -->', 'Політика конфіденційності', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-12-18 21:00:05', '2021-12-18 19:00:05', '', 3, 'http://wp.loc/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-12-18 21:00:36', '2021-12-18 19:00:36', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-12-18 21:00:36', '2021-12-18 19:00:36', '', 1, 'http://wp.loc/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-12-18 21:08:05', '2021-12-18 19:08:05', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2021-12-18 21:10:22', '2021-12-18 19:10:22', '', 0, 'http://wp.loc/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-12-18 21:08:05', '2021-12-18 19:08:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-12-18 21:08:05', '2021-12-18 19:08:05', '', 8, 'http://wp.loc/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-12-18 21:09:29', '2021-12-18 19:09:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2021-12-18 21:09:29', '2021-12-18 19:09:29', '', 8, 'http://wp.loc/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-12-18 21:17:23', '2021-12-18 19:17:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-12-21 00:18:16', '2021-12-20 22:18:16', '', 0, 'http://wp.loc/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-12-18 21:17:23', '2021-12-18 19:17:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-18 21:17:23', '2021-12-18 19:17:23', '', 11, 'http://wp.loc/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-12-19 00:03:15', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-19 00:03:15', '0000-00-00 00:00:00', '', 0, 'http://wp.loc/?p=13', 0, 'post', '', 0),
(14, 1, '2021-12-19 00:16:44', '2021-12-18 22:16:44', '<!-- wp:paragraph -->\n<p>Экономия&nbsp;7500&nbsp;$</p>\n<!-- /wp:paragraph -->', 'INFINITI QX60 2018 г.', '', 'publish', 'open', 'open', '', 'infiniti-qx50-2016-%d0%b3', '', '', '2021-12-19 00:54:04', '2021-12-18 22:54:04', '', 0, 'http://wp.loc/?p=14', 0, 'post', '', 0),
(15, 1, '2021-12-19 00:16:44', '2021-12-18 22:16:44', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-12-19 00:16:44', '2021-12-18 22:16:44', '', 14, 'http://wp.loc/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-12-19 00:18:48', '2021-12-18 22:18:48', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2021-12-19 00:18:48', '2021-12-18 22:18:48', '', 14, 'http://wp.loc/wp-content/uploads/2021/12/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-12-19 00:18:49', '2021-12-18 22:18:49', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2021-12-19 00:18:49', '2021-12-18 22:18:49', '', 14, 'http://wp.loc/wp-content/uploads/2021/12/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2021-12-19 00:18:50', '2021-12-18 22:18:50', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2021-12-19 00:18:50', '2021-12-18 22:18:50', '', 14, 'http://wp.loc/wp-content/uploads/2021/12/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-12-19 00:20:51', '2021-12-18 22:20:51', '', 'ford-mustang', '', 'inherit', 'open', 'closed', '', 'ford-mustang', '', '', '2021-12-19 01:32:25', '2021-12-18 23:32:25', '', 14, 'http://wp.loc/wp-content/uploads/2021/12/ford-mustang.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2021-12-19 00:20:52', '2021-12-18 22:20:52', '', 'car', '', 'inherit', 'open', 'closed', '', 'car', '', '', '2021-12-19 00:20:52', '2021-12-18 22:20:52', '', 14, 'http://wp.loc/wp-content/uploads/2021/12/car.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-12-19 00:22:30', '2021-12-18 22:22:30', '<!-- wp:paragraph -->\n<p>Экономия&nbsp;4500&nbsp;$</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-12-19 00:22:30', '2021-12-18 22:22:30', '', 14, 'http://wp.loc/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-12-19 00:24:13', '2021-12-18 22:24:13', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'publish', 'open', 'open', '', 'tesla-model-3-2018-%d0%b3', '', '', '2021-12-19 00:24:13', '2021-12-18 22:24:13', '', 0, 'http://wp.loc/?p=22', 0, 'post', '', 0),
(23, 1, '2021-12-19 00:24:13', '2021-12-18 22:24:13', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-12-19 00:24:13', '2021-12-18 22:24:13', '', 22, 'http://wp.loc/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-12-19 00:31:03', '2021-12-18 22:31:03', '<!-- wp:paragraph -->\n<p>Экономия&nbsp;4200&nbsp;$</p>\n<!-- /wp:paragraph -->', 'LEXUS ES 2017 г.', '', 'publish', 'open', 'open', '', 'lexus-es', '', '', '2021-12-19 00:54:55', '2021-12-18 22:54:55', '', 0, 'http://wp.loc/?p=24', 0, 'post', '', 0),
(25, 1, '2021-12-19 00:31:03', '2021-12-18 22:31:03', '<!-- wp:paragraph -->\n<p>Экономия 4200 $</p>\n<!-- /wp:paragraph -->', 'LEXUS ES', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-12-19 00:31:03', '2021-12-18 22:31:03', '', 24, 'http://wp.loc/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-12-19 00:33:34', '2021-12-18 22:33:34', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'publish', 'open', 'open', '', 'infiniti-qx50-2016-%d0%b3-2', '', '', '2021-12-19 00:33:34', '2021-12-18 22:33:34', '', 0, 'http://wp.loc/?p=26', 0, 'post', '', 0),
(27, 1, '2021-12-19 00:33:34', '2021-12-18 22:33:34', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2016 г.', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-12-19 00:33:34', '2021-12-18 22:33:34', '', 26, 'http://wp.loc/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-12-19 00:34:31', '2021-12-18 22:34:31', '<!-- wp:paragraph -->\n<p>Экономия 7500 $</p>\n<!-- /wp:paragraph -->', 'INFINITI QX50 2014 г.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-12-19 00:34:31', '2021-12-18 22:34:31', '', 14, 'http://wp.loc/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-12-19 00:54:04', '2021-12-18 22:54:04', '<!-- wp:paragraph -->\n<p>Экономия&nbsp;7500&nbsp;$</p>\n<!-- /wp:paragraph -->', 'INFINITI QX60 2018 г.', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-12-19 00:54:04', '2021-12-18 22:54:04', '', 14, 'http://wp.loc/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-12-19 00:54:55', '2021-12-18 22:54:55', '<!-- wp:paragraph -->\n<p>Экономия&nbsp;4200&nbsp;$</p>\n<!-- /wp:paragraph -->', 'LEXUS ES 2017 г.', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-12-19 00:54:55', '2021-12-18 22:54:55', '', 24, 'http://wp.loc/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-12-19 01:32:37', '2021-12-18 23:32:37', '<!-- wp:paragraph -->\n<p>Экономия 6200 $</p>\n<!-- /wp:paragraph -->', 'MUSTANG 2014 г.', '', 'publish', 'open', 'open', '', 'mustang-2014-%d0%b3', '', '', '2021-12-19 01:32:37', '2021-12-18 23:32:37', '', 0, 'http://wp.loc/?p=31', 0, 'post', '', 0),
(32, 1, '2021-12-19 01:32:37', '2021-12-18 23:32:37', '<!-- wp:paragraph -->\n<p>Экономия 6200 $</p>\n<!-- /wp:paragraph -->', 'MUSTANG 2014 г.', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-12-19 01:32:37', '2021-12-18 23:32:37', '', 31, 'http://wp.loc/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-12-19 10:14:58', '2021-12-19 08:14:58', '[text text-927 class:contacts__input placeholder \"Как Вас зовут?\"][tel* tel-79 class:contacts__input placeholder \"Ваш номер телефона\"][submit class:contacts__btn class:button \"Отправить заявку\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp.loc>\n[_site_admin_email]\nВід: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nТекст повідомлення:\r\n[your-message]\r\n\r\n-- \r\nЦе повідомлення було відправлено з сайту [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp.loc>\n[your-email]\nТекст повідомлення:\r\n[your-message]\r\n\r\n-- \r\nЦе повідомлення було відправлено з сайту [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nДякуємо за Ваше повідомлення. Воно було надіслане.\nСталася помилка під час спроби відправити Ваше повідомлення. Будь ласка, спробуйте ще раз пізніше.\nОдне або декілька полів містять помилкові дані. Будь ласка, перевірте їх і спробуйте ще раз.\nСталася помилка під час спроби відправити Ваше повідомлення. Будь ласка, спробуйте ще раз пізніше.\nВи повинні прийняти умови та положення перед тим, як відправляти Ваше повідомлення.\nПоле обов\'язкове для заповнення.\nПоле занадто довге.\nПоле занадто коротке.\nПід час завантаження файлу сталася невідома помилка.\nВам не дозволено завантажувати файли цього типу.\nФайл занадто великий.\nПід час завантаження файлу сталася помилка.\nФормат дати некоректний.\nВведена дата надто далеко в минулому.\nВведена дата надто далеко в майбутньому.\nФормат числа некоректний.\nЧисло менше мінімально допустимого.\nЧисло більше максимально допустимого.\nНеправильна відповідь на питання перевірки.\nНекоректна електронна адреса.\nНекоректне URL посилання.\nНекоректний номер телефону.', 'Контактна форма', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2021-12-19 11:48:10', '2021-12-19 09:48:10', '', 0, 'http://wp.loc/?post_type=wpcf7_contact_form&#038;p=33', 0, 'wpcf7_contact_form', '', 0),
(34, 1, '2021-12-19 21:19:10', '2021-12-19 19:19:10', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-12-19 21:20:03', '2021-12-19 19:20:03', '', 0, 'http://wp.loc/wp-content/uploads/2021/12/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(35, 1, '2021-12-19 21:21:02', '2021-12-19 19:21:02', '{\n    \"auto::custom_logo\": {\n        \"value\": 34,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-19 19:21:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49e30645-8a36-407b-85a9-08f9f5bf8469', '', '', '2021-12-19 21:21:02', '2021-12-19 19:21:02', '', 0, 'http://wp.loc/2021/12/19/49e30645-8a36-407b-85a9-08f9f5bf8469/', 0, 'customize_changeset', '', 0),
(36, 1, '2021-12-19 21:46:59', '2021-12-19 19:46:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Группа полів1', '%d0%b3%d1%80%d1%83%d0%bf%d0%bf%d0%b0-%d0%bf%d0%be%d0%bb%d1%96%d0%b21', 'trash', 'closed', 'closed', '', 'group_61bf8aa3d2f7b__trashed', '', '', '2021-12-19 22:40:50', '2021-12-19 20:40:50', '', 0, 'http://wp.loc/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2021-12-19 21:46:59', '2021-12-19 19:46:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"номер телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'telephon', 'телефон', 'trash', 'closed', 'closed', '', 'field_61bf8aeb93bd3__trashed', '', '', '2021-12-19 22:40:50', '2021-12-19 20:40:50', '', 36, 'http://wp.loc/?post_type=acf-field&#038;p=37', 0, 'acf-field', '', 0),
(38, 1, '2021-12-19 21:54:26', '2021-12-19 19:54:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 21:54:26', '2021-12-19 19:54:26', '', 11, 'http://wp.loc/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-12-19 22:05:40', '2021-12-19 20:05:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 22:05:40', '2021-12-19 20:05:40', '', 11, 'http://wp.loc/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-12-19 22:13:51', '2021-12-19 20:13:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 22:13:51', '2021-12-19 20:13:51', '', 11, 'http://wp.loc/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-12-19 22:26:18', '2021-12-19 20:26:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'phone', 'тел', 'trash', 'closed', 'closed', '', 'field_61bf949bb4649__trashed', '', '', '2021-12-19 22:40:50', '2021-12-19 20:40:50', '', 36, 'http://wp.loc/?post_type=acf-field&#038;p=41', 1, 'acf-field', '', 0),
(43, 1, '2021-12-19 22:28:24', '2021-12-19 20:28:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 22:28:24', '2021-12-19 20:28:24', '', 11, 'http://wp.loc/?p=43', 0, 'revision', '', 0),
(45, 1, '2021-12-19 22:41:39', '2021-12-19 20:41:39', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"11\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Группа Головна сторінка', '%d0%b3%d1%80%d1%83%d0%bf%d0%bf%d0%b0-%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0-%d1%81%d1%82%d0%be%d1%80%d1%96%d0%bd%d0%ba%d0%b0', 'publish', 'closed', 'closed', '', 'group_61bf98df6ad13', '', '', '2021-12-20 23:23:19', '2021-12-20 21:23:19', '', 0, 'http://wp.loc/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2021-12-19 22:43:49', '2021-12-19 20:43:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"номер телефону\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:30;}', 'телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_61bf990824d2f', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=46', 17, 'acf-field', '', 0),
(47, 1, '2021-12-19 22:46:09', '2021-12-19 20:46:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 22:46:09', '2021-12-19 20:46:09', '', 11, 'http://wp.loc/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-12-19 22:48:23', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-19 22:48:23', '0000-00-00 00:00:00', '', 0, 'http://wp.loc/?post_type=acf-field-group&p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2021-12-19 22:49:32', '2021-12-19 20:49:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 22:49:32', '2021-12-19 20:49:32', '', 11, 'http://wp.loc/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-12-19 23:13:41', '2021-12-19 21:13:41', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:47:\"номер без пробілів (цифри)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'номер телефону', 'phone-number', 'publish', 'closed', 'closed', '', 'field_61bf9f99fd992', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=50', 18, 'acf-field', '', 0),
(51, 1, '2021-12-19 23:14:31', '2021-12-19 21:14:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 23:14:31', '2021-12-19 21:14:31', '', 11, 'http://wp.loc/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-12-19 23:16:56', '2021-12-19 21:16:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 23:16:56', '2021-12-19 21:16:56', '', 11, 'http://wp.loc/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-12-19 23:26:14', '2021-12-19 21:26:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:47:\"напишіть лінк в інстаграм\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'лінк на інстаграм', 'instagram-link', 'publish', 'closed', 'closed', '', 'field_61bfa28db07a8', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=53', 12, 'acf-field', '', 0),
(54, 1, '2021-12-19 23:29:23', '2021-12-19 21:29:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-19 23:29:23', '2021-12-19 21:29:23', '', 11, 'http://wp.loc/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-12-20 18:11:50', '2021-12-20 16:11:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"напишіть лінк в telegram\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'лінк на телеграм', 'telegram-link', 'publish', 'closed', 'closed', '', 'field_61c0aaf3e176f', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=55', 13, 'acf-field', '', 0),
(57, 1, '2021-12-20 18:14:34', '2021-12-20 16:14:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"напишіть лінк в whatsapp\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'лінк на whatsapp', 'whatsapp-link', 'publish', 'closed', 'closed', '', 'field_61c0abd163e3f', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=57', 14, 'acf-field', '', 0),
(58, 1, '2021-12-20 18:15:18', '2021-12-20 16:15:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"напишіть лінк в facebook\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'лінк на facebook', 'facebook-link', 'publish', 'closed', 'closed', '', 'field_61c0abef0d98f', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=58', 15, 'acf-field', '', 0),
(59, 1, '2021-12-20 18:16:45', '2021-12-20 16:16:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 18:16:45', '2021-12-20 16:16:45', '', 11, 'http://wp.loc/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-12-20 18:29:08', '2021-12-20 16:29:08', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'ГОЛОВНИЙ ДИСПЛЕЙ', 'головний_дисплей', 'publish', 'closed', 'closed', '', 'field_61c0aec76a682', '', '', '2021-12-20 18:38:33', '2021-12-20 16:38:33', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=60', 0, 'acf-field', '', 0),
(61, 1, '2021-12-20 18:29:08', '2021-12-20 16:29:08', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'НАШИ УСЛУГИ', 'наши_услуги', 'publish', 'closed', 'closed', '', 'field_61c0af206a683', '', '', '2021-12-20 21:08:16', '2021-12-20 19:08:16', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=61', 5, 'acf-field', '', 0),
(62, 1, '2021-12-20 18:30:10', '2021-12-20 16:30:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'ПОЧЕМУ МЫ?', '_копіювати', 'publish', 'closed', 'closed', '', 'field_61c0af693cb81', '', '', '2021-12-20 21:25:51', '2021-12-20 19:25:51', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=62', 8, 'acf-field', '', 0),
(63, 1, '2021-12-20 18:30:10', '2021-12-20 16:30:10', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'СОЦ.СЕТИ', 'соцсети', 'publish', 'closed', 'closed', '', 'field_61c0af7c3cb82', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=63', 11, 'acf-field', '', 0),
(64, 1, '2021-12-20 18:33:45', '2021-12-20 16:33:45', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'КОНТАКТЫ', '_копіювати', 'publish', 'closed', 'closed', '', 'field_61c0b055a7863', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=64', 16, 'acf-field', '', 0),
(65, 1, '2021-12-20 18:45:47', '2021-12-20 16:45:47', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Адреса', 'address', 'publish', 'closed', 'closed', '', 'field_61c0b26ebee2e', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=65', 19, 'acf-field', '', 0),
(66, 1, '2021-12-20 18:47:12', '2021-12-20 16:47:12', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Графік роботи', 'working-hours', 'publish', 'closed', 'closed', '', 'field_61c0b3459ae6e', '', '', '2021-12-20 23:23:19', '2021-12-20 21:23:19', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=66', 20, 'acf-field', '', 0),
(67, 1, '2021-12-20 18:49:40', '2021-12-20 16:49:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 18:49:40', '2021-12-20 16:49:40', '', 11, 'http://wp.loc/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-12-20 20:40:34', '2021-12-20 18:40:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_61c0cde5159f7', '', '', '2021-12-20 21:04:34', '2021-12-20 19:04:34', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(69, 1, '2021-12-20 20:45:09', '2021-12-20 18:45:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Підзаголовок', 'subtitle', 'publish', 'closed', 'closed', '', 'field_61c0ce390a39e', '', '', '2021-12-20 20:45:09', '2021-12-20 18:45:09', '', 45, 'http://wp.loc/?post_type=acf-field&p=69', 2, 'acf-field', '', 0),
(70, 1, '2021-12-20 20:47:25', '2021-12-20 18:47:25', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст на головному дисплеї', 'text', 'publish', 'closed', 'closed', '', 'field_61c0cf390388a', '', '', '2021-12-20 20:47:25', '2021-12-20 18:47:25', '', 45, 'http://wp.loc/?post_type=acf-field&p=70', 3, 'acf-field', '', 0),
(71, 1, '2021-12-20 20:57:05', '2021-12-20 18:57:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 20:57:05', '2021-12-20 18:57:05', '', 11, 'http://wp.loc/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-12-20 21:04:34', '2021-12-20 19:04:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:75:\"Зображення рекомендуэться розміром 814х462\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Головне зображення', 'main-image', 'publish', 'closed', 'closed', '', 'field_61c0d29eb603a', '', '', '2021-12-20 21:08:16', '2021-12-20 19:08:16', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=72', 4, 'acf-field', '', 0),
(73, 1, '2021-12-20 21:10:18', '2021-12-20 19:10:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 21:10:18', '2021-12-20 19:10:18', '', 11, 'http://wp.loc/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-12-20 21:25:02', '2021-12-20 19:25:02', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Текст наших послуг', 'service-text', 'publish', 'closed', 'closed', '', 'field_61c0d792a143a', '', '', '2021-12-20 21:25:51', '2021-12-20 19:25:51', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=74', 6, 'acf-field', '', 0),
(75, 1, '2021-12-20 21:25:02', '2021-12-20 19:25:02', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Послуги', 'service-item', 'publish', 'closed', 'closed', '', 'field_61c0d7fda143b', '', '', '2021-12-20 21:25:51', '2021-12-20 19:25:51', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=75', 7, 'acf-field', '', 0),
(76, 1, '2021-12-20 21:45:43', '2021-12-20 19:45:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 21:45:43', '2021-12-20 19:45:43', '', 11, 'http://wp.loc/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-12-20 21:46:52', '2021-12-20 19:46:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 21:46:52', '2021-12-20 19:46:52', '', 11, 'http://wp.loc/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-12-20 21:48:30', '2021-12-20 19:48:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 21:48:30', '2021-12-20 19:48:30', '', 11, 'http://wp.loc/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-12-20 22:18:45', '2021-12-20 20:18:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 22:18:45', '2021-12-20 20:18:45', '', 11, 'http://wp.loc/?p=79', 0, 'revision', '', 0),
(80, 1, '2021-12-20 22:39:43', '2021-12-20 20:39:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 22:39:43', '2021-12-20 20:39:43', '', 11, 'http://wp.loc/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-12-20 22:42:05', '2021-12-20 20:42:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 22:42:05', '2021-12-20 20:42:05', '', 11, 'http://wp.loc/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-12-20 22:50:01', '2021-12-20 20:50:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 22:50:01', '2021-12-20 20:50:01', '', 11, 'http://wp.loc/?p=82', 0, 'revision', '', 0),
(83, 1, '2021-12-20 22:51:02', '2021-12-20 20:51:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 22:51:02', '2021-12-20 20:51:02', '', 11, 'http://wp.loc/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-12-20 22:53:49', '2021-12-20 20:53:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 22:53:49', '2021-12-20 20:53:49', '', 11, 'http://wp.loc/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-12-20 23:10:19', '2021-12-20 21:10:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:10:19', '2021-12-20 21:10:19', '', 11, 'http://wp.loc/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-12-20 23:13:17', '2021-12-20 21:13:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:33:\"Бажано розмір 320*606\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Зображення блоку чому ми', 'benefits-img', 'publish', 'closed', 'closed', '', 'field_61c0f14b502c1', '', '', '2021-12-20 23:13:43', '2021-12-20 21:13:43', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=86', 9, 'acf-field', '', 0),
(87, 1, '2021-12-20 23:13:55', '2021-12-20 21:13:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:13:55', '2021-12-20 21:13:55', '', 11, 'http://wp.loc/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-12-20 23:15:09', '2021-12-20 21:15:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:15:09', '2021-12-20 21:15:09', '', 11, 'http://wp.loc/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-12-20 23:18:33', '2021-12-20 21:18:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:18:33', '2021-12-20 21:18:33', '', 11, 'http://wp.loc/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-12-20 23:18:59', '2021-12-20 21:18:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:18:59', '2021-12-20 21:18:59', '', 11, 'http://wp.loc/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-12-20 23:22:19', '2021-12-20 21:22:19', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Переваги блок чому ми', 'benefits-list', 'publish', 'closed', 'closed', '', 'field_61c0f37cda013', '', '', '2021-12-20 23:23:18', '2021-12-20 21:23:18', '', 45, 'http://wp.loc/?post_type=acf-field&#038;p=91', 10, 'acf-field', '', 0),
(92, 1, '2021-12-20 23:27:55', '2021-12-20 21:27:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:27:55', '2021-12-20 21:27:55', '', 11, 'http://wp.loc/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-12-20 23:30:58', '2021-12-20 21:30:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-20 23:30:58', '2021-12-20 21:30:58', '', 11, 'http://wp.loc/?p=93', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2021-12-20 23:43:30', '2021-12-20 21:43:30', '<!-- wp:paragraph -->\n<p>Пользуясь сервисами Google, Вы доверяете нам свою личную информацию. Мы делаем все для обеспечения ее безопасности и в то же время предоставляем Вам возможность управлять своими данными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Внимательно изучите нашу Политику конфиденциальности, чтобы знать, какие сведения мы собираем, в каких целях их используем и как Вы можете их изменять, экспортировать или удалять.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Проверка настроек конфиденциальности</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Хотите изменить настройки конфиденциальности?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://myaccount.google.com/privacycheckup?utm_source=pp&amp;utm_medium=Promo-in-product&amp;utm_campaign=pp_intro&amp;hl=ru\" target=\"_blank\" rel=\"noreferrer noopener\">Пройти проверку настроек конфиденциальности</a>Вступает в силу 1 июля 2021 г.&nbsp;|&nbsp;<a href=\"https://policies.google.com/privacy/archive?hl=ru\">Предыдущие версии</a>&nbsp;|&nbsp;<a href=\"https://www.gstatic.com/policies/privacy/pdf/20210701/7yn50xee/google_privacy_policy_ru.pdf\">Скачать в формате PDF</a>https://www.youtube-nocookie.com/embed/ggoJFaE71W8?rel=0&amp;showinfo=0&amp;theme=light&amp;version=3&amp;hl=ru&amp;cc_lang_pref=ru&amp;cc_load_policy=1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы предлагаем множество сервисов, которые помогают миллионам людей ежедневно узнавать что-то новое, решать различные задачи и просто общаться друг с другом. Вот лишь несколько примеров наших продуктов:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>приложения, сайты и устройства, такие как Google Поиск, YouTube и Google Home;</li><li>платформы, такие как браузер Chrome и операционная система Android;</li><li>решения, которые можно встраивать в приложения от других разработчиков и на сторонние сайты, например рекламные сервисы, встроенные Google Карты и т. д.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>В наших сервисах можно как размещать личные данные и материалы, так и различными способами управлять ими в целях обеспечения конфиденциальности. Создав аккаунт Google, Вы сможете переписываться с друзьями или коллегами в Gmail или публиковать фотографии в Google Фото, а результаты поиска Google станут точнее соответствовать запросам. В то же время многими сервисами можно пользоваться, не входя в аккаунт и даже не создавая его, например выполнять поиск в Интернете и смотреть видео на YouTube. Кроме того, в Chrome Вы можете посещать веб-страницы анонимно – в режиме инкогнито. Во всех наших сервисах Вы сами указываете, какую информацию о Вас мы можем собирать и как ее использовать.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Чтобы наши правила были как можно более понятными, мы добавили в них примеры, видеоролики и определения&nbsp;<a href=\"https://policies.google.com/privacy/key-terms?hl=ru#key-terms\">основных терминов</a>. Если у Вас появятся вопросы в отношении Политики конфиденциальности Google,&nbsp;<a href=\"https://support.google.com/policies?p=privpol_privts&amp;hl=ru\" target=\"_blank\" rel=\"noreferrer noopener\">свяжитесь с нами</a>.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b4%d0%b5%d0%bd%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8', '', '', '2021-12-20 23:43:30', '2021-12-20 21:43:30', '', 0, 'http://wp.loc/?p=94', 0, 'post', '', 0),
(95, 1, '2021-12-20 23:43:30', '2021-12-20 21:43:30', '<!-- wp:paragraph -->\n<p>Пользуясь сервисами Google, Вы доверяете нам свою личную информацию. Мы делаем все для обеспечения ее безопасности и в то же время предоставляем Вам возможность управлять своими данными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Внимательно изучите нашу Политику конфиденциальности, чтобы знать, какие сведения мы собираем, в каких целях их используем и как Вы можете их изменять, экспортировать или удалять.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Проверка настроек конфиденциальности</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Хотите изменить настройки конфиденциальности?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://myaccount.google.com/privacycheckup?utm_source=pp&amp;utm_medium=Promo-in-product&amp;utm_campaign=pp_intro&amp;hl=ru\" target=\"_blank\" rel=\"noreferrer noopener\">Пройти проверку настроек конфиденциальности</a>Вступает в силу 1 июля 2021 г.&nbsp;|&nbsp;<a href=\"https://policies.google.com/privacy/archive?hl=ru\">Предыдущие версии</a>&nbsp;|&nbsp;<a href=\"https://www.gstatic.com/policies/privacy/pdf/20210701/7yn50xee/google_privacy_policy_ru.pdf\">Скачать в формате PDF</a>https://www.youtube-nocookie.com/embed/ggoJFaE71W8?rel=0&amp;showinfo=0&amp;theme=light&amp;version=3&amp;hl=ru&amp;cc_lang_pref=ru&amp;cc_load_policy=1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы предлагаем множество сервисов, которые помогают миллионам людей ежедневно узнавать что-то новое, решать различные задачи и просто общаться друг с другом. Вот лишь несколько примеров наших продуктов:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>приложения, сайты и устройства, такие как Google Поиск, YouTube и Google Home;</li><li>платформы, такие как браузер Chrome и операционная система Android;</li><li>решения, которые можно встраивать в приложения от других разработчиков и на сторонние сайты, например рекламные сервисы, встроенные Google Карты и т. д.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>В наших сервисах можно как размещать личные данные и материалы, так и различными способами управлять ими в целях обеспечения конфиденциальности. Создав аккаунт Google, Вы сможете переписываться с друзьями или коллегами в Gmail или публиковать фотографии в Google Фото, а результаты поиска Google станут точнее соответствовать запросам. В то же время многими сервисами можно пользоваться, не входя в аккаунт и даже не создавая его, например выполнять поиск в Интернете и смотреть видео на YouTube. Кроме того, в Chrome Вы можете посещать веб-страницы анонимно – в режиме инкогнито. Во всех наших сервисах Вы сами указываете, какую информацию о Вас мы можем собирать и как ее использовать.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Чтобы наши правила были как можно более понятными, мы добавили в них примеры, видеоролики и определения&nbsp;<a href=\"https://policies.google.com/privacy/key-terms?hl=ru#key-terms\">основных терминов</a>. Если у Вас появятся вопросы в отношении Политики конфиденциальности Google,&nbsp;<a href=\"https://support.google.com/policies?p=privpol_privts&amp;hl=ru\" target=\"_blank\" rel=\"noreferrer noopener\">свяжитесь с нами</a>.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2021-12-20 23:43:30', '2021-12-20 21:43:30', '', 94, 'http://wp.loc/?p=95', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'слайдер', '%d1%81%d0%bb%d0%b0%d0%b9%d0%b4%d0%b5%d1%80', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(22, 2, 0),
(24, 2, 0),
(26, 2, 0),
(31, 2, 0),
(94, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"61bb0533b8dda2420a2d698d88a646e46a60b00f0d0a5b4316b2895cd63c9922\";a:4:{s:10:\"expiration\";i:1640917832;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:85.0) Gecko/20100101 Firefox/85.0\";s:5:\"login\";i:1639708232;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1640035109'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$Bx1gi2q4Av.MUjkvkogsbG1RRhr4jo0', 'admin', 'hodimchukdmitriy@gmail.com', 'http://wp.loc', '2021-12-17 02:30:17', '', 0, 'Admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
