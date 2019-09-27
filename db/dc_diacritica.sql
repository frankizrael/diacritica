-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2019 a las 06:52:20
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dc_diacritica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_cf7dbplugin_st`
--

CREATE TABLE `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_cf7dbplugin_submits`
--

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8 DEFAULT NULL,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-23 18:01:46', '2019-09-23 18:01:46', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.diacritica.com', 'yes'),
(2, 'home', 'http://dev.diacritica.com', 'yes'),
(3, 'blogname', 'diacritica', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'frankdelarosacampos@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:6;s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";i:7;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'diacritica', 'yes'),
(41, 'stylesheet', 'diacritica', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_PE', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:9:{i:1569560507;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1569564106;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1569564107;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1569607306;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569607414;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569607415;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569619757;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569619758;a:1:{s:23:\"fbrfg_check_for_updates\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"es_PE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1569527652;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1569527652;s:7:\"checked\";a:1:{s:10:\"diacritica\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"frankdelarosacampos@gmail.com\";s:7:\"version\";s:5:\"5.2.3\";s:9:\"timestamp\";i:1569261724;}', 'no'),
(131, '_site_transient_timeout_browser_471e4b86e3560c6feb474def098169b6', '1569866614', 'no'),
(132, '_site_transient_browser_471e4b86e3560c6feb474def098169b6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1569866615', 'no'),
(134, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(149, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1569262040;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'current_theme', 'Diacritica', 'yes'),
(151, 'theme_mods_diacritica', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1569274157;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(160, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(161, 'CF7DBPlugin__version', '2.10.26', 'yes'),
(162, 'CF7DBPlugin__installed', '1', 'yes'),
(163, 'CF7DBPlugin_IntegrateWithCF7', 'true', 'yes'),
(164, 'CF7DBPlugin_GenerateSubmitTimeInCF7Email', 'false', 'yes'),
(165, 'CF7DBPlugin_IntegrateWithFSCF', 'true', 'yes'),
(166, 'CF7DBPlugin_IntegrateWithJetPackContactForm', 'true', 'yes'),
(167, 'CF7DBPlugin_IntegrateWithGravityForms', 'true', 'yes'),
(168, 'CF7DBPlugin_IntegrateWithFormidableForms', 'true', 'yes'),
(169, 'CF7DBPlugin_IntegrateWithWrContactForms', 'true', 'yes'),
(170, 'CF7DBPlugin_IntegrateWithQuform', 'true', 'yes'),
(171, 'CF7DBPlugin_IntegrateWithNinjaForms', 'true', 'yes'),
(172, 'CF7DBPlugin_IntegrateWithCalderaForms', 'true', 'yes'),
(173, 'CF7DBPlugin_IntegrateWithEnfoldThemForms', 'true', 'yes'),
(174, 'CF7DBPlugin_IntegrateWithCFormsII', 'true', 'yes'),
(175, 'CF7DBPlugin_IntegrateWithFormCraft', 'true', 'yes'),
(176, 'CF7DBPlugin_IntegrateWithVerySimpleContactForm', 'true', 'yes'),
(177, 'CF7DBPlugin_IntegrateWithFMS', 'true', 'yes'),
(180, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.8\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1569274157;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(181, 'wpseo_titles', 'a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, autor en %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:58:\"Has buscado %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:42:\"Página no encontrada %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:60:\"La entrada %%POSTLINK%% se publicó primero en %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:32:\"Error 404: Página no encontrada\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:10:\"Archivo de\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:7:\"Portada\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Has buscado por\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(182, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(183, 'wpseo_flush_rewrite', '1', 'yes'),
(184, '_transient_timeout_wpseo_link_table_inaccessible', '1600810157', 'no'),
(185, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(186, '_transient_timeout_wpseo_meta_table_inaccessible', '1600810157', 'no'),
(187, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(189, 'CF7DBPlugin_HideAdminPanelFromNonAdmins', 'true', 'yes'),
(190, 'acf_version', '5.7.7', 'yes'),
(192, 'cptui_new_install', 'false', 'yes'),
(193, 'rewrite_rules', 'a:94:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(228, '_transient_timeout_acf_plugin_updates', '1569700449', 'no'),
(229, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}', 'no'),
(230, '_site_transient_timeout_theme_roots', '1569529450', 'no'),
(231, '_site_transient_theme_roots', 'a:1:{s:10:\"diacritica\";s:7:\"/themes\";}', 'no'),
(233, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1569527656;s:7:\"checked\";a:10:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:5:\"2.3.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.4\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:7:\"2.10.26\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.1\";s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";s:6:\"1.3.15\";s:9:\"hello.php\";s:5:\"1.7.2\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"11.8\";}s:8:\"response\";a:3:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"12.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.12.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.2.3\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/acf-content-analysis-for-yoast-seo\";s:4:\"slug\";s:34:\"acf-content-analysis-for-yoast-seo\";s:6:\"plugin\";s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/acf-content-analysis-for-yoast-seo.2.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-256x256.png?rev=1717503\";s:2:\"1x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-128x128.png?rev=1717503\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-1544x500.png?rev=1717503\";s:2:\"1x\";s:89:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-772x250.png?rev=1717503\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/favicon-by-realfavicongenerator\";s:4:\"slug\";s:31:\"favicon-by-realfavicongenerator\";s:6:\"plugin\";s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";s:11:\"new_version\";s:6:\"1.3.15\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/favicon-by-realfavicongenerator/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/favicon-by-realfavicongenerator.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/icon-256x256.png?rev=972314\";s:2:\"1x\";s:83:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/icon-128x128.png?rev=972314\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/banner-1544x500.png?rev=1110918\";s:2:\"1x\";s:86:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/banner-772x250.png?rev=1110918\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-home.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1569273999:1'),
(4, 6, '_form', '<label> Tu nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(5, 6, '_mail', 'a:8:{s:7:\"subject\";s:27:\"diacritica \"[your-subject]\"\";s:6:\"sender\";s:41:\"diacritica <wordpress@dev.diacritica.com>\";s:4:\"body\";s:195:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en diacritica (http://dev.diacritica.com)\";s:9:\"recipient\";s:29:\"frankdelarosacampos@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"diacritica \"[your-subject]\"\";s:6:\"sender\";s:41:\"diacritica <wordpress@dev.diacritica.com>\";s:4:\"body\";s:140:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en diacritica (http://dev.diacritica.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:39:\"Reply-To: frankdelarosacampos@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(7, 6, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";}'),
(8, 6, '_additional_settings', NULL),
(9, 6, '_locale', 'es_PE'),
(10, 7, '_edit_last', '1'),
(11, 7, '_edit_lock', '1569274240:1'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1569293535:1'),
(14, 2, '_edit_lock', '1569293472:1'),
(15, 2, '_edit_last', '1'),
(16, 2, '_yoast_wpseo_content_score', '60'),
(17, 60, '_wp_attached_file', '2019/09/ORK-Staff2019_AlexVD-Col@2x.png'),
(18, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:39:\"2019/09/ORK-Staff2019_AlexVD-Col@2x.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"ORK-Staff2019_AlexVD-Col@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"ORK-Staff2019_AlexVD-Col@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"ORK-Staff2019_AlexVD-Col@2x-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 61, '_wp_attached_file', '2019/09/ORK-Staff2019_Dom-Col@2x.png'),
(20, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:36:\"2019/09/ORK-Staff2019_Dom-Col@2x.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"ORK-Staff2019_Dom-Col@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"ORK-Staff2019_Dom-Col@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"ORK-Staff2019_Dom-Col@2x-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 62, '_wp_attached_file', '2019/09/ORK-Staff2019_Frede-Col@2x.png'),
(22, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:38:\"2019/09/ORK-Staff2019_Frede-Col@2x.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"ORK-Staff2019_Frede-Col@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"ORK-Staff2019_Frede-Col@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"ORK-Staff2019_Frede-Col@2x-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 63, '_wp_attached_file', '2019/09/ORK-Staff2019_Justine-Col@2x.png'),
(24, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:40:\"2019/09/ORK-Staff2019_Justine-Col@2x.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"ORK-Staff2019_Justine-Col@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"ORK-Staff2019_Justine-Col@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"ORK-Staff2019_Justine-Col@2x-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 64, '_wp_attached_file', '2019/09/shutterstock_551286610@2x.png'),
(26, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:473;s:6:\"height\";i:568;s:4:\"file\";s:37:\"2019/09/shutterstock_551286610@2x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"shutterstock_551286610@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"shutterstock_551286610@2x-250x300.png\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 65, '_wp_attached_file', '2019/09/shutterstock_1070981273@2x.png'),
(28, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:922;s:6:\"height\";i:465;s:4:\"file\";s:38:\"2019/09/shutterstock_1070981273@2x.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"shutterstock_1070981273@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"shutterstock_1070981273@2x-300x151.png\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"shutterstock_1070981273@2x-768x387.png\";s:5:\"width\";i:768;s:6:\"height\";i:387;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 66, '_wp_attached_file', '2019/09/shutterstock_1454878277@2x.png'),
(30, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:570;s:4:\"file\";s:38:\"2019/09/shutterstock_1454878277@2x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"shutterstock_1454878277@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"shutterstock_1454878277@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 67, '_wp_attached_file', '2019/09/34227.png'),
(32, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:13;s:6:\"height\";i:13;s:4:\"file\";s:17:\"2019/09/34227.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 68, '_wp_attached_file', '2019/09/733614@2x.png'),
(34, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:21:\"2019/09/733614@2x.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 69, '_wp_attached_file', '2019/09/cricket@2x.png'),
(36, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:494;s:6:\"height\";i:336;s:4:\"file\";s:22:\"2019/09/cricket@2x.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cricket@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cricket@2x-300x204.png\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 2, 'title_pronunciation', '/dī kridik/'),
(38, 2, '_title_pronunciation', 'field_5d893a289c3fa'),
(39, 2, '_', 'field_5d893c4b9c42a'),
(40, 2, 'init_description', 'A sign which, when written above or below a letter, indicates a difference in pronunciation from the same letter when unmarked.'),
(41, 2, '_init_description', 'field_5d893a369c3fb'),
(42, 2, 'phrase', '“…If those who are obliged to look after commas had always made sure they were in the right place, then Shanghai would not be burning.”'),
(43, 2, '_phrase', 'field_5d893a419c3fc'),
(44, 2, 'phrase_autor', '1932. Karl Kraus'),
(45, 2, '_phrase_autor', 'field_5d893a4a9c3fd'),
(46, 2, 'arch_link', ''),
(47, 2, '_arch_link', 'field_5d893a4f9c3fe'),
(48, 2, 'arch_text', 'D·Arch'),
(49, 2, '_arch_text', 'field_5d893a709c3ff'),
(50, 2, 'arch_detail', 'un·schooling·design'),
(51, 2, '_arch_detail', 'field_5d893a779c400'),
(52, 2, 'pm_link', ''),
(53, 2, '_pm_link', 'field_5d893a7d9c401'),
(54, 2, 'pm_text', 'D·Pm'),
(55, 2, '_pm_text', 'field_5d893a879c402'),
(56, 2, 'pm_detail', 'un·schooling·projects'),
(57, 2, '_pm_detail', 'field_5d893a919c403'),
(58, 2, 'title_origin', 'o·rig·in ·stor·ies'),
(59, 2, '_title_origin', 'field_5d893a9a9c404'),
(60, 2, 'title_origin_pronunciation', '/o·rig·in ·stor·ies/'),
(61, 2, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(62, 2, 'imagen_origin', '64'),
(63, 2, '_imagen_origin', 'field_5d893aa99c406'),
(64, 2, 'content_origin', 'In 2011, a group of young professionals with a decade of experience in disparate markets created Diacrítica with the drive to make projects better. Trained locally and internationally, not just in the design of spaces, but also in the processes that make them possible; Diacrítica set up shop in Lima, Peru, first, as an architecture firm and soon, as a consulting and project management office (D·PM). Today we can boast of an impressive repertoire of projects, a loyal clientele and, what’s most important, brilliant team of collaborators to lead each of our projects with verve and precision. Diacrítica is an active member of the P<strong>eru Green Building Council</strong>, a tenant of a LEED-certified building, a sponser of the e-joural <strong>LapsusLima</strong> (www.lapsuslima.com) and a business collaborator of material consultants <strong>HAUT</strong> (www.haut.pe).'),
(65, 2, '_content_origin', 'field_5d893ab59c407'),
(66, 2, 'title_curricula', 'cur·ric·u·la'),
(67, 2, '_title_curricula', 'field_5d893ac29c408'),
(68, 2, 'title_curricula_pronunciation', '/cur·ric·u·la/'),
(69, 2, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(70, 2, 'curricula_imagen', '65'),
(71, 2, '_curricula_imagen', 'field_5d893b939c418'),
(72, 2, 'alonso_imagen', '61'),
(73, 2, '_alonso_imagen', 'field_5d893ae59c40b'),
(74, 2, 'alonso_fullname', 'Alonso·Toledo·Devoto'),
(75, 2, '_alonso_fullname', 'field_5d893af89c40c'),
(76, 2, 'alonso_position', 'Fouding partner | Consulting'),
(77, 2, '_alonso_position', 'field_5d893b009c40d'),
(78, 2, 'alonso_social', '2'),
(79, 2, '_alonso_social', 'field_5d893b1a9c40e'),
(80, 2, 'alonso_orbegoso_imagen', '60'),
(81, 2, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(82, 2, 'alonso_orbegoso_fullname', 'Alonso·de·Orbegoso'),
(83, 2, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(84, 2, 'alonso_orbegoso_position', 'Alonso·de·Orbegoso'),
(85, 2, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(86, 2, 'alonso_orbegoso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(87, 2, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(88, 2, 'alonso_orbegoso_social', '2'),
(89, 2, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(90, 2, 'monica_imagen', '62'),
(91, 2, '_monica_imagen', 'field_5d893ba39c419'),
(92, 2, 'monica_fullname', 'Monica·Belevan, MDesS'),
(93, 2, '_monica_fullname', 'field_5d893bad9c41a'),
(94, 2, 'monica_position', 'Fouding partner | Research'),
(95, 2, '_monica_position', 'field_5d893bb69c41b'),
(96, 2, 'monica_description', 'Mónica is a theorist, historian and philosopher by the Harvard GSD and Universidad de Montevideo, whose multidisciplinary knowledge and imagination rank among the mainstays of our firm. In 2014, Mónica was given a congressional award for her four years of service as official translator of the Peruvian Foreign Office’s Ad Hoc Advisory Committee on Maritime Delimitation. She also helped spearhead the reinduction of CEPEI (Centro Peruano de Estudios Internacionales) at Universidad del Pacífico.\r\n\r\nMónica is the editor of LapsusLima, a member of the Board of Editors at Hueso húmero, and a writer of weird fiction. She is currently in charge of exploring Diacrítica’s prospects in landscape architecture.'),
(97, 2, '_monica_description', 'field_5d893bbe9c41c'),
(98, 2, 'monica_social', '2'),
(99, 2, '_monica_social', 'field_5d893bc89c41d'),
(100, 2, 'denise_imagen', '63'),
(101, 2, '_denise_imagen', 'field_5d893beb9c420'),
(102, 2, 'denise_fullname', 'Denise·Villa-Ratto'),
(103, 2, '_denise_fullname', 'field_5d893bf49c421'),
(104, 2, 'denise_position', 'Partner | Architecture'),
(105, 2, '_denise_position', 'field_5d893bfe9c422'),
(106, 2, 'denise_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(107, 2, '_denise_description', 'field_5d893c049c423'),
(108, 2, 'denise_social', '2'),
(109, 2, '_denise_social', 'field_5d893c0f9c424'),
(110, 2, 'title_tropical', 'trop·ic·al· i·za·ation'),
(111, 2, '_title_tropical', 'field_5d893c349c427'),
(112, 2, 'title_tropical_pronunciation', '/trop·ic·al· i·za·ation/'),
(113, 2, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(114, 2, 'imagen_tropical', '66'),
(115, 2, '_imagen_tropical', 'field_5d893c419c429'),
(116, 70, 'title_pronunciation', '/dī kridik/'),
(117, 70, '_title_pronunciation', 'field_5d893a289c3fa'),
(118, 70, 'init_description', ''),
(119, 70, '_init_description', 'field_5d893a369c3fb'),
(120, 70, 'phrase', ''),
(121, 70, '_phrase', 'field_5d893a419c3fc'),
(122, 70, 'phrase_autor', ''),
(123, 70, '_phrase_autor', 'field_5d893a4a9c3fd'),
(124, 70, 'arch_link', ''),
(125, 70, '_arch_link', 'field_5d893a4f9c3fe'),
(126, 70, 'arch_text', ''),
(127, 70, '_arch_text', 'field_5d893a709c3ff'),
(128, 70, 'arch_detail', ''),
(129, 70, '_arch_detail', 'field_5d893a779c400'),
(130, 70, 'pm_link', ''),
(131, 70, '_pm_link', 'field_5d893a7d9c401'),
(132, 70, 'pm_text', ''),
(133, 70, '_pm_text', 'field_5d893a879c402'),
(134, 70, 'pm_detail', ''),
(135, 70, '_pm_detail', 'field_5d893a919c403'),
(136, 70, 'title_origin', ''),
(137, 70, '_title_origin', 'field_5d893a9a9c404'),
(138, 70, 'title_origin_pronunciation', ''),
(139, 70, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(140, 70, 'imagen_origin', ''),
(141, 70, '_imagen_origin', 'field_5d893aa99c406'),
(142, 70, 'content_origin', ''),
(143, 70, '_content_origin', 'field_5d893ab59c407'),
(144, 70, 'title_curricula', ''),
(145, 70, '_title_curricula', 'field_5d893ac29c408'),
(146, 70, 'title_curricula_pronunciation', ''),
(147, 70, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(148, 70, 'curricula_imagen', ''),
(149, 70, '_curricula_imagen', 'field_5d893b939c418'),
(150, 70, 'alonso_imagen', ''),
(151, 70, '_alonso_imagen', 'field_5d893ae59c40b'),
(152, 70, 'alonso_fullname', ''),
(153, 70, '_alonso_fullname', 'field_5d893af89c40c'),
(154, 70, 'alonso_position', ''),
(155, 70, '_alonso_position', 'field_5d893b009c40d'),
(156, 70, 'alonso_social', ''),
(157, 70, '_alonso_social', 'field_5d893b1a9c40e'),
(158, 70, 'alonso_orbegoso_imagen', ''),
(159, 70, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(160, 70, 'alonso_orbegoso_fullname', ''),
(161, 70, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(162, 70, 'alonso_orbegoso_position', ''),
(163, 70, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(164, 70, 'alonso_orbegoso_description', ''),
(165, 70, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(166, 70, 'alonso_orbegoso_social', ''),
(167, 70, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(168, 70, 'monica_imagen', ''),
(169, 70, '_monica_imagen', 'field_5d893ba39c419'),
(170, 70, 'monica_fullname', ''),
(171, 70, '_monica_fullname', 'field_5d893bad9c41a'),
(172, 70, 'monica_position', ''),
(173, 70, '_monica_position', 'field_5d893bb69c41b'),
(174, 70, 'monica_description', ''),
(175, 70, '_monica_description', 'field_5d893bbe9c41c'),
(176, 70, 'monica_social', ''),
(177, 70, '_monica_social', 'field_5d893bc89c41d'),
(178, 70, 'denise_imagen', ''),
(179, 70, '_denise_imagen', 'field_5d893beb9c420'),
(180, 70, 'denise_fullname', ''),
(181, 70, '_denise_fullname', 'field_5d893bf49c421'),
(182, 70, 'denise_position', ''),
(183, 70, '_denise_position', 'field_5d893bfe9c422'),
(184, 70, 'denise_description', ''),
(185, 70, '_denise_description', 'field_5d893c049c423'),
(186, 70, 'denise_social', ''),
(187, 70, '_denise_social', 'field_5d893c0f9c424'),
(188, 70, 'title_tropical', ''),
(189, 70, '_title_tropical', 'field_5d893c349c427'),
(190, 70, 'title_tropical_pronunciation', ''),
(191, 70, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(192, 70, 'imagen_tropical', ''),
(193, 70, '_imagen_tropical', 'field_5d893c419c429'),
(194, 71, 'title_pronunciation', '/dī kridik/'),
(195, 71, '_title_pronunciation', 'field_5d893a289c3fa'),
(196, 71, 'init_description', 'A sign which, when written above or below a letter, indicates a difference in pronunciation from the same letter when unmarked.'),
(197, 71, '_init_description', 'field_5d893a369c3fb'),
(198, 71, 'phrase', '“…If those who are obliged to look after commas had always made sure they were in the right place, then Shanghai would not be burning.”'),
(199, 71, '_phrase', 'field_5d893a419c3fc'),
(200, 71, 'phrase_autor', '1932. Karl Kraus'),
(201, 71, '_phrase_autor', 'field_5d893a4a9c3fd'),
(202, 71, 'arch_link', ''),
(203, 71, '_arch_link', 'field_5d893a4f9c3fe'),
(204, 71, 'arch_text', 'D·Arch'),
(205, 71, '_arch_text', 'field_5d893a709c3ff'),
(206, 71, 'arch_detail', 'un·schooling·design'),
(207, 71, '_arch_detail', 'field_5d893a779c400'),
(208, 71, 'pm_link', ''),
(209, 71, '_pm_link', 'field_5d893a7d9c401'),
(210, 71, 'pm_text', 'D·Pm'),
(211, 71, '_pm_text', 'field_5d893a879c402'),
(212, 71, 'pm_detail', 'un·schooling·projects'),
(213, 71, '_pm_detail', 'field_5d893a919c403'),
(214, 71, 'title_origin', 'o·rig·in ·stor·ies'),
(215, 71, '_title_origin', 'field_5d893a9a9c404'),
(216, 71, 'title_origin_pronunciation', '/o·rig·in ·stor·ies/'),
(217, 71, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(218, 71, 'imagen_origin', '64'),
(219, 71, '_imagen_origin', 'field_5d893aa99c406'),
(220, 71, 'content_origin', 'In 2011, a group of young professionals with a decade of experience in disparate markets created Diacrítica with the drive to make projects better. Trained locally and internationally, not just in the design of spaces, but also in the processes that make them possible; Diacrítica set up shop in Lima, Peru, first, as an architecture firm and soon, as a consulting and project management office (D·PM). Today we can boast of an impressive repertoire of projects, a loyal clientele and, what’s most important, brilliant team of collaborators to lead each of our projects with verve and precision. Diacrítica is an active member of the P<strong>eru Green Building Council</strong>, a tenant of a LEED-certified building, a sponser of the e-joural <strong>LapsusLima</strong> (www.lapsuslima.com) and a business collaborator of material consultants <strong>HAUT</strong> (www.haut.pe).'),
(221, 71, '_content_origin', 'field_5d893ab59c407'),
(222, 71, 'title_curricula', 'cur·ric·u·la'),
(223, 71, '_title_curricula', 'field_5d893ac29c408'),
(224, 71, 'title_curricula_pronunciation', '/cur·ric·u·la/'),
(225, 71, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(226, 71, 'curricula_imagen', '65'),
(227, 71, '_curricula_imagen', 'field_5d893b939c418'),
(228, 71, 'alonso_imagen', '61'),
(229, 71, '_alonso_imagen', 'field_5d893ae59c40b'),
(230, 71, 'alonso_fullname', 'Alonso·Toledo·Devoto'),
(231, 71, '_alonso_fullname', 'field_5d893af89c40c'),
(232, 71, 'alonso_position', 'Fouding partner | Consulting'),
(233, 71, '_alonso_position', 'field_5d893b009c40d'),
(234, 71, 'alonso_social', ''),
(235, 71, '_alonso_social', 'field_5d893b1a9c40e'),
(236, 71, 'alonso_orbegoso_imagen', ''),
(237, 71, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(238, 71, 'alonso_orbegoso_fullname', ''),
(239, 71, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(240, 71, 'alonso_orbegoso_position', ''),
(241, 71, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(242, 71, 'alonso_orbegoso_description', ''),
(243, 71, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(244, 71, 'alonso_orbegoso_social', ''),
(245, 71, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(246, 71, 'monica_imagen', ''),
(247, 71, '_monica_imagen', 'field_5d893ba39c419'),
(248, 71, 'monica_fullname', ''),
(249, 71, '_monica_fullname', 'field_5d893bad9c41a'),
(250, 71, 'monica_position', ''),
(251, 71, '_monica_position', 'field_5d893bb69c41b'),
(252, 71, 'monica_description', ''),
(253, 71, '_monica_description', 'field_5d893bbe9c41c'),
(254, 71, 'monica_social', ''),
(255, 71, '_monica_social', 'field_5d893bc89c41d'),
(256, 71, 'denise_imagen', ''),
(257, 71, '_denise_imagen', 'field_5d893beb9c420'),
(258, 71, 'denise_fullname', ''),
(259, 71, '_denise_fullname', 'field_5d893bf49c421'),
(260, 71, 'denise_position', ''),
(261, 71, '_denise_position', 'field_5d893bfe9c422'),
(262, 71, 'denise_description', ''),
(263, 71, '_denise_description', 'field_5d893c049c423'),
(264, 71, 'denise_social', ''),
(265, 71, '_denise_social', 'field_5d893c0f9c424'),
(266, 71, 'title_tropical', ''),
(267, 71, '_title_tropical', 'field_5d893c349c427'),
(268, 71, 'title_tropical_pronunciation', ''),
(269, 71, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(270, 71, 'imagen_tropical', ''),
(271, 71, '_imagen_tropical', 'field_5d893c419c429'),
(272, 2, 'alonso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects for top-tier corporations, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia, Votorantim; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(273, 2, '_alonso_description', 'field_5d898304f37f7'),
(274, 2, 'alonso_social_0_link', ''),
(275, 2, '_alonso_social_0_link', 'field_5d893b2a9c40f'),
(276, 2, 'alonso_social_0_image', '67'),
(277, 2, '_alonso_social_0_image', 'field_5d893b329c410'),
(278, 2, 'alonso_social_1_link', ''),
(279, 2, '_alonso_social_1_link', 'field_5d893b2a9c40f'),
(280, 2, 'alonso_social_1_image', '68'),
(281, 2, '_alonso_social_1_image', 'field_5d893b329c410'),
(282, 2, 'alonso_orbegoso_social_0_link', ''),
(283, 2, '_alonso_orbegoso_social_0_link', 'field_5d893b709c416'),
(284, 2, 'alonso_orbegoso_social_0_image', '67'),
(285, 2, '_alonso_orbegoso_social_0_image', 'field_5d893b829c417'),
(286, 2, 'alonso_orbegoso_social_1_link', ''),
(287, 2, '_alonso_orbegoso_social_1_link', 'field_5d893b709c416'),
(288, 2, 'alonso_orbegoso_social_1_image', '68'),
(289, 2, '_alonso_orbegoso_social_1_image', 'field_5d893b829c417'),
(290, 2, 'monica_social_0_link', ''),
(291, 2, '_monica_social_0_link', 'field_5d893bd29c41e'),
(292, 2, 'monica_social_0_image', '67'),
(293, 2, '_monica_social_0_image', 'field_5d893bdb9c41f'),
(294, 2, 'monica_social_1_link', ''),
(295, 2, '_monica_social_1_link', 'field_5d893bd29c41e'),
(296, 2, 'monica_social_1_image', '68'),
(297, 2, '_monica_social_1_image', 'field_5d893bdb9c41f'),
(298, 2, 'denise_social_0_link', ''),
(299, 2, '_denise_social_0_link', 'field_5d893c189c425'),
(300, 2, 'denise_social_0_image', '67'),
(301, 2, '_denise_social_0_image', 'field_5d893c1f9c426'),
(302, 2, 'denise_social_1_link', ''),
(303, 2, '_denise_social_1_link', 'field_5d893c189c425'),
(304, 2, 'denise_social_1_image', '68'),
(305, 2, '_denise_social_1_image', 'field_5d893c1f9c426'),
(306, 73, 'title_pronunciation', '/dī kridik/'),
(307, 73, '_title_pronunciation', 'field_5d893a289c3fa'),
(308, 73, 'init_description', 'A sign which, when written above or below a letter, indicates a difference in pronunciation from the same letter when unmarked.'),
(309, 73, '_init_description', 'field_5d893a369c3fb'),
(310, 73, 'phrase', '“…If those who are obliged to look after commas had always made sure they were in the right place, then Shanghai would not be burning.”'),
(311, 73, '_phrase', 'field_5d893a419c3fc'),
(312, 73, 'phrase_autor', '1932. Karl Kraus'),
(313, 73, '_phrase_autor', 'field_5d893a4a9c3fd'),
(314, 73, 'arch_link', ''),
(315, 73, '_arch_link', 'field_5d893a4f9c3fe'),
(316, 73, 'arch_text', 'D·Arch'),
(317, 73, '_arch_text', 'field_5d893a709c3ff'),
(318, 73, 'arch_detail', 'un·schooling·design'),
(319, 73, '_arch_detail', 'field_5d893a779c400'),
(320, 73, 'pm_link', ''),
(321, 73, '_pm_link', 'field_5d893a7d9c401'),
(322, 73, 'pm_text', 'D·Pm'),
(323, 73, '_pm_text', 'field_5d893a879c402'),
(324, 73, 'pm_detail', 'un·schooling·projects'),
(325, 73, '_pm_detail', 'field_5d893a919c403'),
(326, 73, 'title_origin', 'o·rig·in ·stor·ies'),
(327, 73, '_title_origin', 'field_5d893a9a9c404'),
(328, 73, 'title_origin_pronunciation', '/o·rig·in ·stor·ies/'),
(329, 73, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(330, 73, 'imagen_origin', '64'),
(331, 73, '_imagen_origin', 'field_5d893aa99c406'),
(332, 73, 'content_origin', 'In 2011, a group of young professionals with a decade of experience in disparate markets created Diacrítica with the drive to make projects better. Trained locally and internationally, not just in the design of spaces, but also in the processes that make them possible; Diacrítica set up shop in Lima, Peru, first, as an architecture firm and soon, as a consulting and project management office (D·PM). Today we can boast of an impressive repertoire of projects, a loyal clientele and, what’s most important, brilliant team of collaborators to lead each of our projects with verve and precision. Diacrítica is an active member of the P<strong>eru Green Building Council</strong>, a tenant of a LEED-certified building, a sponser of the e-joural <strong>LapsusLima</strong> (www.lapsuslima.com) and a business collaborator of material consultants <strong>HAUT</strong> (www.haut.pe).'),
(333, 73, '_content_origin', 'field_5d893ab59c407'),
(334, 73, 'title_curricula', 'cur·ric·u·la'),
(335, 73, '_title_curricula', 'field_5d893ac29c408'),
(336, 73, 'title_curricula_pronunciation', '/cur·ric·u·la/'),
(337, 73, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(338, 73, 'curricula_imagen', '65'),
(339, 73, '_curricula_imagen', 'field_5d893b939c418'),
(340, 73, 'alonso_imagen', '61'),
(341, 73, '_alonso_imagen', 'field_5d893ae59c40b'),
(342, 73, 'alonso_fullname', 'Alonso·Toledo·Devoto'),
(343, 73, '_alonso_fullname', 'field_5d893af89c40c'),
(344, 73, 'alonso_position', 'Fouding partner | Consulting'),
(345, 73, '_alonso_position', 'field_5d893b009c40d'),
(346, 73, 'alonso_social', '2'),
(347, 73, '_alonso_social', 'field_5d893b1a9c40e'),
(348, 73, 'alonso_orbegoso_imagen', '60'),
(349, 73, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(350, 73, 'alonso_orbegoso_fullname', 'Alonso·de·Orbegoso'),
(351, 73, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(352, 73, 'alonso_orbegoso_position', 'Alonso·de·Orbegoso'),
(353, 73, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(354, 73, 'alonso_orbegoso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(355, 73, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(356, 73, 'alonso_orbegoso_social', '2'),
(357, 73, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(358, 73, 'monica_imagen', '62'),
(359, 73, '_monica_imagen', 'field_5d893ba39c419'),
(360, 73, 'monica_fullname', 'Monica·Belevan, MDesS'),
(361, 73, '_monica_fullname', 'field_5d893bad9c41a'),
(362, 73, 'monica_position', 'Fouding partner | Research'),
(363, 73, '_monica_position', 'field_5d893bb69c41b'),
(364, 73, 'monica_description', 'Mónica is a theorist, historian and philosopher by the Harvard GSD and Universidad de Montevideo, whose multidisciplinary knowledge and imagination rank among the mainstays of our firm. In 2014, Mónica was given a congressional award for her four years of service as official translator of the Peruvian Foreign Office’s Ad Hoc Advisory Committee on Maritime Delimitation. She also helped spearhead the reinduction of CEPEI (Centro Peruano de Estudios Internacionales) at Universidad del Pacífico.\r\n\r\nMónica is the editor of LapsusLima, a member of the Board of Editors at Hueso húmero, and a writer of weird fiction. She is currently in charge of exploring Diacrítica’s prospects in landscape architecture.'),
(365, 73, '_monica_description', 'field_5d893bbe9c41c'),
(366, 73, 'monica_social', '2'),
(367, 73, '_monica_social', 'field_5d893bc89c41d'),
(368, 73, 'denise_imagen', '63'),
(369, 73, '_denise_imagen', 'field_5d893beb9c420'),
(370, 73, 'denise_fullname', 'Denise·Villa-Ratto'),
(371, 73, '_denise_fullname', 'field_5d893bf49c421'),
(372, 73, 'denise_position', 'Partner | Architecture'),
(373, 73, '_denise_position', 'field_5d893bfe9c422'),
(374, 73, 'denise_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(375, 73, '_denise_description', 'field_5d893c049c423'),
(376, 73, 'denise_social', '2'),
(377, 73, '_denise_social', 'field_5d893c0f9c424'),
(378, 73, 'title_tropical', 'trop·ic·al· i·za·ation'),
(379, 73, '_title_tropical', 'field_5d893c349c427'),
(380, 73, 'title_tropical_pronunciation', '/trop·ic·al· i·za·ation/'),
(381, 73, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(382, 73, 'imagen_tropical', ''),
(383, 73, '_imagen_tropical', 'field_5d893c419c429'),
(384, 73, 'alonso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects for top-tier corporations, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia, Votorantim; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(385, 73, '_alonso_description', 'field_5d898304f37f7'),
(386, 73, 'alonso_social_0_link', ''),
(387, 73, '_alonso_social_0_link', 'field_5d893b2a9c40f'),
(388, 73, 'alonso_social_0_image', '67'),
(389, 73, '_alonso_social_0_image', 'field_5d893b329c410'),
(390, 73, 'alonso_social_1_link', ''),
(391, 73, '_alonso_social_1_link', 'field_5d893b2a9c40f'),
(392, 73, 'alonso_social_1_image', '68'),
(393, 73, '_alonso_social_1_image', 'field_5d893b329c410'),
(394, 73, 'alonso_orbegoso_social_0_link', ''),
(395, 73, '_alonso_orbegoso_social_0_link', 'field_5d893b709c416'),
(396, 73, 'alonso_orbegoso_social_0_image', '67'),
(397, 73, '_alonso_orbegoso_social_0_image', 'field_5d893b829c417'),
(398, 73, 'alonso_orbegoso_social_1_link', ''),
(399, 73, '_alonso_orbegoso_social_1_link', 'field_5d893b709c416'),
(400, 73, 'alonso_orbegoso_social_1_image', '68'),
(401, 73, '_alonso_orbegoso_social_1_image', 'field_5d893b829c417'),
(402, 73, 'monica_social_0_link', ''),
(403, 73, '_monica_social_0_link', 'field_5d893bd29c41e'),
(404, 73, 'monica_social_0_image', '67'),
(405, 73, '_monica_social_0_image', 'field_5d893bdb9c41f'),
(406, 73, 'monica_social_1_link', ''),
(407, 73, '_monica_social_1_link', 'field_5d893bd29c41e'),
(408, 73, 'monica_social_1_image', '68'),
(409, 73, '_monica_social_1_image', 'field_5d893bdb9c41f'),
(410, 73, 'denise_social_0_link', ''),
(411, 73, '_denise_social_0_link', 'field_5d893c189c425'),
(412, 73, 'denise_social_0_image', '67'),
(413, 73, '_denise_social_0_image', 'field_5d893c1f9c426'),
(414, 73, 'denise_social_1_link', ''),
(415, 73, '_denise_social_1_link', 'field_5d893c189c425'),
(416, 73, 'denise_social_1_image', '68'),
(417, 73, '_denise_social_1_image', 'field_5d893c1f9c426'),
(418, 2, 'content_tropical', 'Diacrítica upholds a strict non-commission policy, meaning we do not accept direct or indirect compensation for any engagement with contractors, dealers or brokers as a result of their participation in our projects. While this sounds nice, especially in a country where off-the-record commissions are the norm rather than the exception, applying ethics to Peru is far more complex: corruption keeps our building codes ambiguous; market prices warped and permitting Kafkaesque. It is in the face of these realities that Diacrítica offers a helping hand to international clients who can benefit from ethical, pragmatic and discerning transductions of how to bridge design and compliance processes between their countries our own.\r\n\r\nOur project management office, D·PM, upholds Professional Liability Insurance to comply with top-tier project requirements. Both our offices use GSuite for Business, with complete videoconferencing and file-sharing capabilities for our clients abroad.).'),
(419, 2, '_content_tropical', 'field_5d8983ccfb432'),
(420, 75, 'title_pronunciation', '/dī kridik/'),
(421, 75, '_title_pronunciation', 'field_5d893a289c3fa'),
(422, 75, 'init_description', 'A sign which, when written above or below a letter, indicates a difference in pronunciation from the same letter when unmarked.'),
(423, 75, '_init_description', 'field_5d893a369c3fb'),
(424, 75, 'phrase', '“…If those who are obliged to look after commas had always made sure they were in the right place, then Shanghai would not be burning.”'),
(425, 75, '_phrase', 'field_5d893a419c3fc'),
(426, 75, 'phrase_autor', '1932. Karl Kraus'),
(427, 75, '_phrase_autor', 'field_5d893a4a9c3fd'),
(428, 75, 'arch_link', ''),
(429, 75, '_arch_link', 'field_5d893a4f9c3fe'),
(430, 75, 'arch_text', 'D·Arch'),
(431, 75, '_arch_text', 'field_5d893a709c3ff'),
(432, 75, 'arch_detail', 'un·schooling·design'),
(433, 75, '_arch_detail', 'field_5d893a779c400'),
(434, 75, 'pm_link', ''),
(435, 75, '_pm_link', 'field_5d893a7d9c401'),
(436, 75, 'pm_text', 'D·Pm'),
(437, 75, '_pm_text', 'field_5d893a879c402'),
(438, 75, 'pm_detail', 'un·schooling·projects'),
(439, 75, '_pm_detail', 'field_5d893a919c403'),
(440, 75, 'title_origin', 'o·rig·in ·stor·ies'),
(441, 75, '_title_origin', 'field_5d893a9a9c404'),
(442, 75, 'title_origin_pronunciation', '/o·rig·in ·stor·ies/'),
(443, 75, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(444, 75, 'imagen_origin', '64'),
(445, 75, '_imagen_origin', 'field_5d893aa99c406'),
(446, 75, 'content_origin', 'In 2011, a group of young professionals with a decade of experience in disparate markets created Diacrítica with the drive to make projects better. Trained locally and internationally, not just in the design of spaces, but also in the processes that make them possible; Diacrítica set up shop in Lima, Peru, first, as an architecture firm and soon, as a consulting and project management office (D·PM). Today we can boast of an impressive repertoire of projects, a loyal clientele and, what’s most important, brilliant team of collaborators to lead each of our projects with verve and precision. Diacrítica is an active member of the P<strong>eru Green Building Council</strong>, a tenant of a LEED-certified building, a sponser of the e-joural <strong>LapsusLima</strong> (www.lapsuslima.com) and a business collaborator of material consultants <strong>HAUT</strong> (www.haut.pe).'),
(447, 75, '_content_origin', 'field_5d893ab59c407'),
(448, 75, 'title_curricula', 'cur·ric·u·la'),
(449, 75, '_title_curricula', 'field_5d893ac29c408'),
(450, 75, 'title_curricula_pronunciation', '/cur·ric·u·la/'),
(451, 75, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(452, 75, 'curricula_imagen', '65'),
(453, 75, '_curricula_imagen', 'field_5d893b939c418'),
(454, 75, 'alonso_imagen', '61'),
(455, 75, '_alonso_imagen', 'field_5d893ae59c40b'),
(456, 75, 'alonso_fullname', 'Alonso·Toledo·Devoto'),
(457, 75, '_alonso_fullname', 'field_5d893af89c40c'),
(458, 75, 'alonso_position', 'Fouding partner | Consulting'),
(459, 75, '_alonso_position', 'field_5d893b009c40d'),
(460, 75, 'alonso_social', '2'),
(461, 75, '_alonso_social', 'field_5d893b1a9c40e'),
(462, 75, 'alonso_orbegoso_imagen', '60'),
(463, 75, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(464, 75, 'alonso_orbegoso_fullname', 'Alonso·de·Orbegoso'),
(465, 75, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(466, 75, 'alonso_orbegoso_position', 'Alonso·de·Orbegoso'),
(467, 75, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(468, 75, 'alonso_orbegoso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(469, 75, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(470, 75, 'alonso_orbegoso_social', '2'),
(471, 75, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(472, 75, 'monica_imagen', '62'),
(473, 75, '_monica_imagen', 'field_5d893ba39c419'),
(474, 75, 'monica_fullname', 'Monica·Belevan, MDesS'),
(475, 75, '_monica_fullname', 'field_5d893bad9c41a'),
(476, 75, 'monica_position', 'Fouding partner | Research'),
(477, 75, '_monica_position', 'field_5d893bb69c41b'),
(478, 75, 'monica_description', 'Mónica is a theorist, historian and philosopher by the Harvard GSD and Universidad de Montevideo, whose multidisciplinary knowledge and imagination rank among the mainstays of our firm. In 2014, Mónica was given a congressional award for her four years of service as official translator of the Peruvian Foreign Office’s Ad Hoc Advisory Committee on Maritime Delimitation. She also helped spearhead the reinduction of CEPEI (Centro Peruano de Estudios Internacionales) at Universidad del Pacífico.\r\n\r\nMónica is the editor of LapsusLima, a member of the Board of Editors at Hueso húmero, and a writer of weird fiction. She is currently in charge of exploring Diacrítica’s prospects in landscape architecture.'),
(479, 75, '_monica_description', 'field_5d893bbe9c41c'),
(480, 75, 'monica_social', '2'),
(481, 75, '_monica_social', 'field_5d893bc89c41d'),
(482, 75, 'denise_imagen', '63'),
(483, 75, '_denise_imagen', 'field_5d893beb9c420'),
(484, 75, 'denise_fullname', 'Denise·Villa-Ratto'),
(485, 75, '_denise_fullname', 'field_5d893bf49c421'),
(486, 75, 'denise_position', 'Partner | Architecture'),
(487, 75, '_denise_position', 'field_5d893bfe9c422'),
(488, 75, 'denise_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(489, 75, '_denise_description', 'field_5d893c049c423'),
(490, 75, 'denise_social', '2'),
(491, 75, '_denise_social', 'field_5d893c0f9c424'),
(492, 75, 'title_tropical', 'trop·ic·al· i·za·ation'),
(493, 75, '_title_tropical', 'field_5d893c349c427'),
(494, 75, 'title_tropical_pronunciation', '/trop·ic·al· i·za·ation/'),
(495, 75, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(496, 75, 'imagen_tropical', '66'),
(497, 75, '_imagen_tropical', 'field_5d893c419c429'),
(498, 75, 'alonso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects for top-tier corporations, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia, Votorantim; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(499, 75, '_alonso_description', 'field_5d898304f37f7'),
(500, 75, 'alonso_social_0_link', ''),
(501, 75, '_alonso_social_0_link', 'field_5d893b2a9c40f'),
(502, 75, 'alonso_social_0_image', '67'),
(503, 75, '_alonso_social_0_image', 'field_5d893b329c410'),
(504, 75, 'alonso_social_1_link', ''),
(505, 75, '_alonso_social_1_link', 'field_5d893b2a9c40f'),
(506, 75, 'alonso_social_1_image', '68'),
(507, 75, '_alonso_social_1_image', 'field_5d893b329c410'),
(508, 75, 'alonso_orbegoso_social_0_link', ''),
(509, 75, '_alonso_orbegoso_social_0_link', 'field_5d893b709c416'),
(510, 75, 'alonso_orbegoso_social_0_image', '67'),
(511, 75, '_alonso_orbegoso_social_0_image', 'field_5d893b829c417'),
(512, 75, 'alonso_orbegoso_social_1_link', ''),
(513, 75, '_alonso_orbegoso_social_1_link', 'field_5d893b709c416'),
(514, 75, 'alonso_orbegoso_social_1_image', '68'),
(515, 75, '_alonso_orbegoso_social_1_image', 'field_5d893b829c417'),
(516, 75, 'monica_social_0_link', ''),
(517, 75, '_monica_social_0_link', 'field_5d893bd29c41e'),
(518, 75, 'monica_social_0_image', '67'),
(519, 75, '_monica_social_0_image', 'field_5d893bdb9c41f'),
(520, 75, 'monica_social_1_link', ''),
(521, 75, '_monica_social_1_link', 'field_5d893bd29c41e'),
(522, 75, 'monica_social_1_image', '68'),
(523, 75, '_monica_social_1_image', 'field_5d893bdb9c41f'),
(524, 75, 'denise_social_0_link', ''),
(525, 75, '_denise_social_0_link', 'field_5d893c189c425'),
(526, 75, 'denise_social_0_image', '67'),
(527, 75, '_denise_social_0_image', 'field_5d893c1f9c426'),
(528, 75, 'denise_social_1_link', ''),
(529, 75, '_denise_social_1_link', 'field_5d893c189c425'),
(530, 75, 'denise_social_1_image', '68'),
(531, 75, '_denise_social_1_image', 'field_5d893c1f9c426'),
(532, 75, 'content_tropical', 'Diacrítica upholds a strict non-commission policy, meaning we do not accept direct or indirect compensation for any engagement with contractors, dealers or brokers as a result of their participation in our projects. While this sounds nice, especially in a country where off-the-record commissions are the norm rather than the exception, applying ethics to Peru is far more complex: corruption keeps our building codes ambiguous; market prices warped and permitting Kafkaesque. It is in the face of these realities that Diacrítica offers a helping hand to international clients who can benefit from ethical, pragmatic and discerning transductions of how to bridge design and compliance processes between their countries our own.\r\n\r\nOur project management office, D·PM, upholds Professional Liability Insurance to comply with top-tier project requirements. Both our offices use GSuite for Business, with complete videoconferencing and file-sharing capabilities for our clients abroad.).'),
(533, 75, '_content_tropical', 'field_5d8983ccfb432'),
(534, 2, 'title_patronage', 'pat·ron·age'),
(535, 2, '_title_patronage', 'field_5d898439b41b0'),
(536, 2, 'title_patronage_pronunciation', '/pat·ron·age/'),
(537, 2, '_title_patronage_pronunciation', 'field_5d898448b41b1'),
(538, 2, 'content_patronage', 'The following is a selected list of clients who have entrusted us with their projects. References and testimonials can be provided upon request.'),
(539, 2, '_content_patronage', 'field_5d898450b41b2'),
(540, 79, 'title_pronunciation', '/dī kridik/'),
(541, 79, '_title_pronunciation', 'field_5d893a289c3fa'),
(542, 79, 'init_description', 'A sign which, when written above or below a letter, indicates a difference in pronunciation from the same letter when unmarked.'),
(543, 79, '_init_description', 'field_5d893a369c3fb');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(544, 79, 'phrase', '“…If those who are obliged to look after commas had always made sure they were in the right place, then Shanghai would not be burning.”'),
(545, 79, '_phrase', 'field_5d893a419c3fc'),
(546, 79, 'phrase_autor', '1932. Karl Kraus'),
(547, 79, '_phrase_autor', 'field_5d893a4a9c3fd'),
(548, 79, 'arch_link', ''),
(549, 79, '_arch_link', 'field_5d893a4f9c3fe'),
(550, 79, 'arch_text', 'D·Arch'),
(551, 79, '_arch_text', 'field_5d893a709c3ff'),
(552, 79, 'arch_detail', 'un·schooling·design'),
(553, 79, '_arch_detail', 'field_5d893a779c400'),
(554, 79, 'pm_link', ''),
(555, 79, '_pm_link', 'field_5d893a7d9c401'),
(556, 79, 'pm_text', 'D·Pm'),
(557, 79, '_pm_text', 'field_5d893a879c402'),
(558, 79, 'pm_detail', 'un·schooling·projects'),
(559, 79, '_pm_detail', 'field_5d893a919c403'),
(560, 79, 'title_origin', 'o·rig·in ·stor·ies'),
(561, 79, '_title_origin', 'field_5d893a9a9c404'),
(562, 79, 'title_origin_pronunciation', '/o·rig·in ·stor·ies/'),
(563, 79, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(564, 79, 'imagen_origin', '64'),
(565, 79, '_imagen_origin', 'field_5d893aa99c406'),
(566, 79, 'content_origin', 'In 2011, a group of young professionals with a decade of experience in disparate markets created Diacrítica with the drive to make projects better. Trained locally and internationally, not just in the design of spaces, but also in the processes that make them possible; Diacrítica set up shop in Lima, Peru, first, as an architecture firm and soon, as a consulting and project management office (D·PM). Today we can boast of an impressive repertoire of projects, a loyal clientele and, what’s most important, brilliant team of collaborators to lead each of our projects with verve and precision. Diacrítica is an active member of the P<strong>eru Green Building Council</strong>, a tenant of a LEED-certified building, a sponser of the e-joural <strong>LapsusLima</strong> (www.lapsuslima.com) and a business collaborator of material consultants <strong>HAUT</strong> (www.haut.pe).'),
(567, 79, '_content_origin', 'field_5d893ab59c407'),
(568, 79, 'title_curricula', 'cur·ric·u·la'),
(569, 79, '_title_curricula', 'field_5d893ac29c408'),
(570, 79, 'title_curricula_pronunciation', '/cur·ric·u·la/'),
(571, 79, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(572, 79, 'curricula_imagen', '65'),
(573, 79, '_curricula_imagen', 'field_5d893b939c418'),
(574, 79, 'alonso_imagen', '61'),
(575, 79, '_alonso_imagen', 'field_5d893ae59c40b'),
(576, 79, 'alonso_fullname', 'Alonso·Toledo·Devoto'),
(577, 79, '_alonso_fullname', 'field_5d893af89c40c'),
(578, 79, 'alonso_position', 'Fouding partner | Consulting'),
(579, 79, '_alonso_position', 'field_5d893b009c40d'),
(580, 79, 'alonso_social', '2'),
(581, 79, '_alonso_social', 'field_5d893b1a9c40e'),
(582, 79, 'alonso_orbegoso_imagen', '60'),
(583, 79, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(584, 79, 'alonso_orbegoso_fullname', 'Alonso·de·Orbegoso'),
(585, 79, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(586, 79, 'alonso_orbegoso_position', 'Alonso·de·Orbegoso'),
(587, 79, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(588, 79, 'alonso_orbegoso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(589, 79, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(590, 79, 'alonso_orbegoso_social', '2'),
(591, 79, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(592, 79, 'monica_imagen', '62'),
(593, 79, '_monica_imagen', 'field_5d893ba39c419'),
(594, 79, 'monica_fullname', 'Monica·Belevan, MDesS'),
(595, 79, '_monica_fullname', 'field_5d893bad9c41a'),
(596, 79, 'monica_position', 'Fouding partner | Research'),
(597, 79, '_monica_position', 'field_5d893bb69c41b'),
(598, 79, 'monica_description', 'Mónica is a theorist, historian and philosopher by the Harvard GSD and Universidad de Montevideo, whose multidisciplinary knowledge and imagination rank among the mainstays of our firm. In 2014, Mónica was given a congressional award for her four years of service as official translator of the Peruvian Foreign Office’s Ad Hoc Advisory Committee on Maritime Delimitation. She also helped spearhead the reinduction of CEPEI (Centro Peruano de Estudios Internacionales) at Universidad del Pacífico.\r\n\r\nMónica is the editor of LapsusLima, a member of the Board of Editors at Hueso húmero, and a writer of weird fiction. She is currently in charge of exploring Diacrítica’s prospects in landscape architecture.'),
(599, 79, '_monica_description', 'field_5d893bbe9c41c'),
(600, 79, 'monica_social', '2'),
(601, 79, '_monica_social', 'field_5d893bc89c41d'),
(602, 79, 'denise_imagen', '63'),
(603, 79, '_denise_imagen', 'field_5d893beb9c420'),
(604, 79, 'denise_fullname', 'Denise·Villa-Ratto'),
(605, 79, '_denise_fullname', 'field_5d893bf49c421'),
(606, 79, 'denise_position', 'Partner | Architecture'),
(607, 79, '_denise_position', 'field_5d893bfe9c422'),
(608, 79, 'denise_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(609, 79, '_denise_description', 'field_5d893c049c423'),
(610, 79, 'denise_social', '2'),
(611, 79, '_denise_social', 'field_5d893c0f9c424'),
(612, 79, 'title_tropical', 'trop·ic·al· i·za·ation'),
(613, 79, '_title_tropical', 'field_5d893c349c427'),
(614, 79, 'title_tropical_pronunciation', '/trop·ic·al· i·za·ation/'),
(615, 79, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(616, 79, 'imagen_tropical', '66'),
(617, 79, '_imagen_tropical', 'field_5d893c419c429'),
(618, 79, 'alonso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects for top-tier corporations, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia, Votorantim; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(619, 79, '_alonso_description', 'field_5d898304f37f7'),
(620, 79, 'alonso_social_0_link', ''),
(621, 79, '_alonso_social_0_link', 'field_5d893b2a9c40f'),
(622, 79, 'alonso_social_0_image', '67'),
(623, 79, '_alonso_social_0_image', 'field_5d893b329c410'),
(624, 79, 'alonso_social_1_link', ''),
(625, 79, '_alonso_social_1_link', 'field_5d893b2a9c40f'),
(626, 79, 'alonso_social_1_image', '68'),
(627, 79, '_alonso_social_1_image', 'field_5d893b329c410'),
(628, 79, 'alonso_orbegoso_social_0_link', ''),
(629, 79, '_alonso_orbegoso_social_0_link', 'field_5d893b709c416'),
(630, 79, 'alonso_orbegoso_social_0_image', '67'),
(631, 79, '_alonso_orbegoso_social_0_image', 'field_5d893b829c417'),
(632, 79, 'alonso_orbegoso_social_1_link', ''),
(633, 79, '_alonso_orbegoso_social_1_link', 'field_5d893b709c416'),
(634, 79, 'alonso_orbegoso_social_1_image', '68'),
(635, 79, '_alonso_orbegoso_social_1_image', 'field_5d893b829c417'),
(636, 79, 'monica_social_0_link', ''),
(637, 79, '_monica_social_0_link', 'field_5d893bd29c41e'),
(638, 79, 'monica_social_0_image', '67'),
(639, 79, '_monica_social_0_image', 'field_5d893bdb9c41f'),
(640, 79, 'monica_social_1_link', ''),
(641, 79, '_monica_social_1_link', 'field_5d893bd29c41e'),
(642, 79, 'monica_social_1_image', '68'),
(643, 79, '_monica_social_1_image', 'field_5d893bdb9c41f'),
(644, 79, 'denise_social_0_link', ''),
(645, 79, '_denise_social_0_link', 'field_5d893c189c425'),
(646, 79, 'denise_social_0_image', '67'),
(647, 79, '_denise_social_0_image', 'field_5d893c1f9c426'),
(648, 79, 'denise_social_1_link', ''),
(649, 79, '_denise_social_1_link', 'field_5d893c189c425'),
(650, 79, 'denise_social_1_image', '68'),
(651, 79, '_denise_social_1_image', 'field_5d893c1f9c426'),
(652, 79, 'content_tropical', 'Diacrítica upholds a strict non-commission policy, meaning we do not accept direct or indirect compensation for any engagement with contractors, dealers or brokers as a result of their participation in our projects. While this sounds nice, especially in a country where off-the-record commissions are the norm rather than the exception, applying ethics to Peru is far more complex: corruption keeps our building codes ambiguous; market prices warped and permitting Kafkaesque. It is in the face of these realities that Diacrítica offers a helping hand to international clients who can benefit from ethical, pragmatic and discerning transductions of how to bridge design and compliance processes between their countries our own.\r\n\r\nOur project management office, D·PM, upholds Professional Liability Insurance to comply with top-tier project requirements. Both our offices use GSuite for Business, with complete videoconferencing and file-sharing capabilities for our clients abroad.).'),
(653, 79, '_content_tropical', 'field_5d8983ccfb432'),
(654, 79, 'title_patronage', 'pat·ron·age'),
(655, 79, '_title_patronage', 'field_5d898439b41b0'),
(656, 79, 'title_patronage_pronunciation', '/pat·ron·age/'),
(657, 79, '_title_patronage_pronunciation', 'field_5d898448b41b1'),
(658, 79, 'content_patronage', 'The following is a selected list of clients who have entrusted us with their projects. References and testimonials can be provided upon request.'),
(659, 79, '_content_patronage', 'field_5d898450b41b2'),
(660, 2, 'title_headquarters', 'head·quart·ers'),
(661, 2, '_title_headquarters', 'field_5d8984b0723f5'),
(662, 2, 'title_headquarters_pronunciation', '/head·quart·ers/'),
(663, 2, '_title_headquarters_pronunciation', 'field_5d8984b7723f6'),
(664, 2, 'imagen_headquarters', '69'),
(665, 2, '_imagen_headquarters', 'field_5d8984be723f7'),
(666, 2, 'list_headquarters_0_title', 'Diacrítica Design Office'),
(667, 2, '_list_headquarters_0_title', 'field_5d8984d2723f9'),
(668, 2, 'list_headquarters_0_description', 'Ca. Miguel Dasso 153, Suite 3D, Miraflores - Lima T. +51 01 411-2500'),
(669, 2, '_list_headquarters_0_description', 'field_5d8984d7723fa'),
(670, 2, 'list_headquarters_1_title', 'Diacrítica Project Management Office'),
(671, 2, '_list_headquarters_1_title', 'field_5d8984d2723f9'),
(672, 2, 'list_headquarters_1_description', 'Av. Jorge Basadre 607, Suite 203, San Isidro - Lima T. +51 01 713 3607'),
(673, 2, '_list_headquarters_1_description', 'field_5d8984d7723fa'),
(674, 2, 'list_headquarters_2_title', 'Principal-in-Charge'),
(675, 2, '_list_headquarters_2_title', 'field_5d8984d2723f9'),
(676, 2, 'list_headquarters_2_description', 'Denise Villa-Ratto | dv@diacritica.com +51 XXX XXX XXX'),
(677, 2, '_list_headquarters_2_description', 'field_5d8984d7723fa'),
(678, 2, 'list_headquarters_3_title', 'Principal-in-Charge'),
(679, 2, '_list_headquarters_3_title', 'field_5d8984d2723f9'),
(680, 2, 'list_headquarters_3_description', 'Alonso de Orbegoso | adeo@diacritica.com +51 XXX XXX XXX'),
(681, 2, '_list_headquarters_3_description', 'field_5d8984d7723fa'),
(682, 2, 'list_headquarters', '4'),
(683, 2, '_list_headquarters', 'field_5d8984c9723f8'),
(684, 86, 'title_pronunciation', '/dī kridik/'),
(685, 86, '_title_pronunciation', 'field_5d893a289c3fa'),
(686, 86, 'init_description', 'A sign which, when written above or below a letter, indicates a difference in pronunciation from the same letter when unmarked.'),
(687, 86, '_init_description', 'field_5d893a369c3fb'),
(688, 86, 'phrase', '“…If those who are obliged to look after commas had always made sure they were in the right place, then Shanghai would not be burning.”'),
(689, 86, '_phrase', 'field_5d893a419c3fc'),
(690, 86, 'phrase_autor', '1932. Karl Kraus'),
(691, 86, '_phrase_autor', 'field_5d893a4a9c3fd'),
(692, 86, 'arch_link', ''),
(693, 86, '_arch_link', 'field_5d893a4f9c3fe'),
(694, 86, 'arch_text', 'D·Arch'),
(695, 86, '_arch_text', 'field_5d893a709c3ff'),
(696, 86, 'arch_detail', 'un·schooling·design'),
(697, 86, '_arch_detail', 'field_5d893a779c400'),
(698, 86, 'pm_link', ''),
(699, 86, '_pm_link', 'field_5d893a7d9c401'),
(700, 86, 'pm_text', 'D·Pm'),
(701, 86, '_pm_text', 'field_5d893a879c402'),
(702, 86, 'pm_detail', 'un·schooling·projects'),
(703, 86, '_pm_detail', 'field_5d893a919c403'),
(704, 86, 'title_origin', 'o·rig·in ·stor·ies'),
(705, 86, '_title_origin', 'field_5d893a9a9c404'),
(706, 86, 'title_origin_pronunciation', '/o·rig·in ·stor·ies/'),
(707, 86, '_title_origin_pronunciation', 'field_5d893aa19c405'),
(708, 86, 'imagen_origin', '64'),
(709, 86, '_imagen_origin', 'field_5d893aa99c406'),
(710, 86, 'content_origin', 'In 2011, a group of young professionals with a decade of experience in disparate markets created Diacrítica with the drive to make projects better. Trained locally and internationally, not just in the design of spaces, but also in the processes that make them possible; Diacrítica set up shop in Lima, Peru, first, as an architecture firm and soon, as a consulting and project management office (D·PM). Today we can boast of an impressive repertoire of projects, a loyal clientele and, what’s most important, brilliant team of collaborators to lead each of our projects with verve and precision. Diacrítica is an active member of the P<strong>eru Green Building Council</strong>, a tenant of a LEED-certified building, a sponser of the e-joural <strong>LapsusLima</strong> (www.lapsuslima.com) and a business collaborator of material consultants <strong>HAUT</strong> (www.haut.pe).'),
(711, 86, '_content_origin', 'field_5d893ab59c407'),
(712, 86, 'title_curricula', 'cur·ric·u·la'),
(713, 86, '_title_curricula', 'field_5d893ac29c408'),
(714, 86, 'title_curricula_pronunciation', '/cur·ric·u·la/'),
(715, 86, '_title_curricula_pronunciation', 'field_5d893ac99c409'),
(716, 86, 'curricula_imagen', '65'),
(717, 86, '_curricula_imagen', 'field_5d893b939c418'),
(718, 86, 'alonso_imagen', '61'),
(719, 86, '_alonso_imagen', 'field_5d893ae59c40b'),
(720, 86, 'alonso_fullname', 'Alonso·Toledo·Devoto'),
(721, 86, '_alonso_fullname', 'field_5d893af89c40c'),
(722, 86, 'alonso_position', 'Fouding partner | Consulting'),
(723, 86, '_alonso_position', 'field_5d893b009c40d'),
(724, 86, 'alonso_social', '2'),
(725, 86, '_alonso_social', 'field_5d893b1a9c40e'),
(726, 86, 'alonso_orbegoso_imagen', '60'),
(727, 86, '_alonso_orbegoso_imagen', 'field_5d893b3f9c411'),
(728, 86, 'alonso_orbegoso_fullname', 'Alonso·de·Orbegoso'),
(729, 86, '_alonso_orbegoso_fullname', 'field_5d893b529c412'),
(730, 86, 'alonso_orbegoso_position', 'Alonso·de·Orbegoso'),
(731, 86, '_alonso_orbegoso_position', 'field_5d893b599c413'),
(732, 86, 'alonso_orbegoso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(733, 86, '_alonso_orbegoso_description', 'field_5d893b5f9c414'),
(734, 86, 'alonso_orbegoso_social', '2'),
(735, 86, '_alonso_orbegoso_social', 'field_5d893b689c415'),
(736, 86, 'monica_imagen', '62'),
(737, 86, '_monica_imagen', 'field_5d893ba39c419'),
(738, 86, 'monica_fullname', 'Monica·Belevan, MDesS'),
(739, 86, '_monica_fullname', 'field_5d893bad9c41a'),
(740, 86, 'monica_position', 'Fouding partner | Research'),
(741, 86, '_monica_position', 'field_5d893bb69c41b'),
(742, 86, 'monica_description', 'Mónica is a theorist, historian and philosopher by the Harvard GSD and Universidad de Montevideo, whose multidisciplinary knowledge and imagination rank among the mainstays of our firm. In 2014, Mónica was given a congressional award for her four years of service as official translator of the Peruvian Foreign Office’s Ad Hoc Advisory Committee on Maritime Delimitation. She also helped spearhead the reinduction of CEPEI (Centro Peruano de Estudios Internacionales) at Universidad del Pacífico.\r\n\r\nMónica is the editor of LapsusLima, a member of the Board of Editors at Hueso húmero, and a writer of weird fiction. She is currently in charge of exploring Diacrítica’s prospects in landscape architecture.'),
(743, 86, '_monica_description', 'field_5d893bbe9c41c'),
(744, 86, 'monica_social', '2'),
(745, 86, '_monica_social', 'field_5d893bc89c41d'),
(746, 86, 'denise_imagen', '63'),
(747, 86, '_denise_imagen', 'field_5d893beb9c420'),
(748, 86, 'denise_fullname', 'Denise·Villa-Ratto'),
(749, 86, '_denise_fullname', 'field_5d893bf49c421'),
(750, 86, 'denise_position', 'Partner | Architecture'),
(751, 86, '_denise_position', 'field_5d893bfe9c422'),
(752, 86, 'denise_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects with multiple stakeholders, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(753, 86, '_denise_description', 'field_5d893c049c423'),
(754, 86, 'denise_social', '2'),
(755, 86, '_denise_social', 'field_5d893c0f9c424'),
(756, 86, 'title_tropical', 'trop·ic·al· i·za·ation'),
(757, 86, '_title_tropical', 'field_5d893c349c427'),
(758, 86, 'title_tropical_pronunciation', '/trop·ic·al· i·za·ation/'),
(759, 86, '_title_tropical_pronunciation', 'field_5d893c3b9c428'),
(760, 86, 'imagen_tropical', '66'),
(761, 86, '_imagen_tropical', 'field_5d893c419c429'),
(762, 86, 'alonso_description', 'As a licensed Peruvian architect with over fifteen years of experience, Alonso has served as lead PjM for numerous high-level projects for top-tier corporations, and served as a planning consultant for private and government agencies. Alonso is currently a candidate in the EDGE Design of Cities post-graduate program at SCI-Arc (CA), and committed to the transformation of Latin American planning policies.\r\n\r\nKey accounts: (private) SAP, Diageo, Hamburg Süd, Anixter, Regus (IWP), IGT, Universidad Peruana Cayetano Heredia, Votorantim; (public/ONGS) Plan Copesco Nacional, Concytec, Osinergmin, Inppares (local IPPF partner).'),
(763, 86, '_alonso_description', 'field_5d898304f37f7'),
(764, 86, 'alonso_social_0_link', ''),
(765, 86, '_alonso_social_0_link', 'field_5d893b2a9c40f'),
(766, 86, 'alonso_social_0_image', '67'),
(767, 86, '_alonso_social_0_image', 'field_5d893b329c410'),
(768, 86, 'alonso_social_1_link', ''),
(769, 86, '_alonso_social_1_link', 'field_5d893b2a9c40f'),
(770, 86, 'alonso_social_1_image', '68'),
(771, 86, '_alonso_social_1_image', 'field_5d893b329c410'),
(772, 86, 'alonso_orbegoso_social_0_link', ''),
(773, 86, '_alonso_orbegoso_social_0_link', 'field_5d893b709c416'),
(774, 86, 'alonso_orbegoso_social_0_image', '67'),
(775, 86, '_alonso_orbegoso_social_0_image', 'field_5d893b829c417'),
(776, 86, 'alonso_orbegoso_social_1_link', ''),
(777, 86, '_alonso_orbegoso_social_1_link', 'field_5d893b709c416'),
(778, 86, 'alonso_orbegoso_social_1_image', '68'),
(779, 86, '_alonso_orbegoso_social_1_image', 'field_5d893b829c417'),
(780, 86, 'monica_social_0_link', ''),
(781, 86, '_monica_social_0_link', 'field_5d893bd29c41e'),
(782, 86, 'monica_social_0_image', '67'),
(783, 86, '_monica_social_0_image', 'field_5d893bdb9c41f'),
(784, 86, 'monica_social_1_link', ''),
(785, 86, '_monica_social_1_link', 'field_5d893bd29c41e'),
(786, 86, 'monica_social_1_image', '68'),
(787, 86, '_monica_social_1_image', 'field_5d893bdb9c41f'),
(788, 86, 'denise_social_0_link', ''),
(789, 86, '_denise_social_0_link', 'field_5d893c189c425'),
(790, 86, 'denise_social_0_image', '67'),
(791, 86, '_denise_social_0_image', 'field_5d893c1f9c426'),
(792, 86, 'denise_social_1_link', ''),
(793, 86, '_denise_social_1_link', 'field_5d893c189c425'),
(794, 86, 'denise_social_1_image', '68'),
(795, 86, '_denise_social_1_image', 'field_5d893c1f9c426'),
(796, 86, 'content_tropical', 'Diacrítica upholds a strict non-commission policy, meaning we do not accept direct or indirect compensation for any engagement with contractors, dealers or brokers as a result of their participation in our projects. While this sounds nice, especially in a country where off-the-record commissions are the norm rather than the exception, applying ethics to Peru is far more complex: corruption keeps our building codes ambiguous; market prices warped and permitting Kafkaesque. It is in the face of these realities that Diacrítica offers a helping hand to international clients who can benefit from ethical, pragmatic and discerning transductions of how to bridge design and compliance processes between their countries our own.\r\n\r\nOur project management office, D·PM, upholds Professional Liability Insurance to comply with top-tier project requirements. Both our offices use GSuite for Business, with complete videoconferencing and file-sharing capabilities for our clients abroad.).'),
(797, 86, '_content_tropical', 'field_5d8983ccfb432'),
(798, 86, 'title_patronage', 'pat·ron·age'),
(799, 86, '_title_patronage', 'field_5d898439b41b0'),
(800, 86, 'title_patronage_pronunciation', '/pat·ron·age/'),
(801, 86, '_title_patronage_pronunciation', 'field_5d898448b41b1'),
(802, 86, 'content_patronage', 'The following is a selected list of clients who have entrusted us with their projects. References and testimonials can be provided upon request.'),
(803, 86, '_content_patronage', 'field_5d898450b41b2'),
(804, 86, 'title_headquarters', 'head·quart·ers'),
(805, 86, '_title_headquarters', 'field_5d8984b0723f5'),
(806, 86, 'title_headquarters_pronunciation', '/head·quart·ers/'),
(807, 86, '_title_headquarters_pronunciation', 'field_5d8984b7723f6'),
(808, 86, 'imagen_headquarters', '69'),
(809, 86, '_imagen_headquarters', 'field_5d8984be723f7'),
(810, 86, 'list_headquarters_0_title', 'Diacrítica Design Office'),
(811, 86, '_list_headquarters_0_title', 'field_5d8984d2723f9'),
(812, 86, 'list_headquarters_0_description', 'Ca. Miguel Dasso 153, Suite 3D, Miraflores - Lima T. +51 01 411-2500'),
(813, 86, '_list_headquarters_0_description', 'field_5d8984d7723fa'),
(814, 86, 'list_headquarters_1_title', 'Diacrítica Project Management Office'),
(815, 86, '_list_headquarters_1_title', 'field_5d8984d2723f9'),
(816, 86, 'list_headquarters_1_description', 'Av. Jorge Basadre 607, Suite 203, San Isidro - Lima T. +51 01 713 3607'),
(817, 86, '_list_headquarters_1_description', 'field_5d8984d7723fa'),
(818, 86, 'list_headquarters_2_title', 'Principal-in-Charge'),
(819, 86, '_list_headquarters_2_title', 'field_5d8984d2723f9'),
(820, 86, 'list_headquarters_2_description', 'Denise Villa-Ratto | dv@diacritica.com +51 XXX XXX XXX'),
(821, 86, '_list_headquarters_2_description', 'field_5d8984d7723fa'),
(822, 86, 'list_headquarters_3_title', 'Principal-in-Charge'),
(823, 86, '_list_headquarters_3_title', 'field_5d8984d2723f9'),
(824, 86, 'list_headquarters_3_description', 'Alonso de Orbegoso | adeo@diacritica.com +51 XXX XXX XXX'),
(825, 86, '_list_headquarters_3_description', 'field_5d8984d7723fa'),
(826, 86, 'list_headquarters', '4'),
(827, 86, '_list_headquarters', 'field_5d8984c9723f8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-23 18:01:46', '2019-09-23 18:01:46', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-09-23 18:01:46', '2019-09-23 18:01:46', '', 0, 'http://dev.diacritica.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-23 18:01:46', '2019-09-23 18:01:46', '', 'di·a·crit·ic', '', 'publish', 'closed', 'open', '', 'home', '', '', '2019-09-24 02:53:14', '2019-09-24 02:53:14', '', 0, 'http://dev.diacritica.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-23 18:01:46', '2019-09-23 18:01:46', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://dev.diacritica.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Multimedia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-23 18:01:46', '2019-09-23 18:01:46', '', 0, 'http://dev.diacritica.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-09-23 18:03:35', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 18:03:35', '0000-00-00 00:00:00', '', 0, 'http://dev.diacritica.com/?p=4', 0, 'post', '', 0),
(5, 1, '2019-09-23 20:18:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-23 20:18:42', '0000-00-00 00:00:00', '', 0, 'http://dev.diacritica.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-09-23 21:29:17', '2019-09-23 21:29:17', '<label> Tu nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]\ndiacritica \"[your-subject]\"\ndiacritica <wordpress@dev.diacritica.com>\nDe: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en diacritica (http://dev.diacritica.com)\nfrankdelarosacampos@gmail.com\nReply-To: [your-email]\n\n0\n0\n\ndiacritica \"[your-subject]\"\ndiacritica <wordpress@dev.diacritica.com>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en diacritica (http://dev.diacritica.com)\n[your-email]\nReply-To: frankdelarosacampos@gmail.com\n\n0\n0\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2019-09-23 21:29:17', '2019-09-23 21:29:17', '', 0, 'http://dev.diacritica.com/?post_type=wpcf7_contact_form&p=6', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2019-09-23 21:31:55', '2019-09-23 21:31:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'options', 'options', 'publish', 'closed', 'closed', '', 'group_5d8939bd85748', '', '', '2019-09-23 21:31:55', '2019-09-23 21:31:55', '', 0, 'http://dev.diacritica.com/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2019-09-23 21:31:55', '2019-09-23 21:31:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5d8939c49994d', '', '', '2019-09-23 21:31:55', '2019-09-23 21:31:55', '', 7, 'http://dev.diacritica.com/?post_type=acf-field&p=8', 0, 'acf-field', '', 0),
(9, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'home', 'home', 'publish', 'closed', 'closed', '', 'group_5d893ca877f07', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 0, 'http://dev.diacritica.com/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_pronunciation', 'title_pronunciation', 'publish', 'closed', 'closed', '', 'field_5d893a289c3fa', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'init_description', 'init_description', 'publish', 'closed', 'closed', '', 'field_5d893a369c3fb', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(12, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'phrase', 'phrase', 'publish', 'closed', 'closed', '', 'field_5d893a419c3fc', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=12', 2, 'acf-field', '', 0),
(13, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'phrase_autor', 'phrase_autor', 'publish', 'closed', 'closed', '', 'field_5d893a4a9c3fd', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'arch_link', 'arch_link', 'publish', 'closed', 'closed', '', 'field_5d893a4f9c3fe', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=14', 4, 'acf-field', '', 0),
(15, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'arch_text', 'arch_text', 'publish', 'closed', 'closed', '', 'field_5d893a709c3ff', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=15', 5, 'acf-field', '', 0),
(16, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'arch_detail', 'arch_detail', 'publish', 'closed', 'closed', '', 'field_5d893a779c400', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=16', 6, 'acf-field', '', 0),
(17, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'pm_link', 'pm_link', 'publish', 'closed', 'closed', '', 'field_5d893a7d9c401', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=17', 7, 'acf-field', '', 0),
(18, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'pm_text', 'pm_text', 'publish', 'closed', 'closed', '', 'field_5d893a879c402', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=18', 8, 'acf-field', '', 0),
(19, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'pm_detail', 'pm_detail', 'publish', 'closed', 'closed', '', 'field_5d893a919c403', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=19', 9, 'acf-field', '', 0),
(20, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_origin', 'title_origin', 'publish', 'closed', 'closed', '', 'field_5d893a9a9c404', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=20', 10, 'acf-field', '', 0),
(21, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_origin_pronunciation', 'title_origin_pronunciation', 'publish', 'closed', 'closed', '', 'field_5d893aa19c405', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=21', 11, 'acf-field', '', 0),
(22, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen_origin', 'imagen_origin', 'publish', 'closed', 'closed', '', 'field_5d893aa99c406', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=22', 12, 'acf-field', '', 0),
(23, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'content_origin', 'content_origin', 'publish', 'closed', 'closed', '', 'field_5d893ab59c407', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=23', 13, 'acf-field', '', 0),
(24, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_curricula', 'title_curricula', 'publish', 'closed', 'closed', '', 'field_5d893ac29c408', '', '', '2019-09-24 02:42:17', '2019-09-24 02:42:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=24', 14, 'acf-field', '', 0),
(25, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_curricula_pronunciation', 'title_curricula_pronunciation', 'publish', 'closed', 'closed', '', 'field_5d893ac99c409', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=25', 15, 'acf-field', '', 0),
(26, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'curricula_imagen', 'curricula_imagen', 'publish', 'closed', 'closed', '', 'field_5d893b939c418', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=26', 16, 'acf-field', '', 0),
(27, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'alonso_imagen', 'alonso_imagen', 'publish', 'closed', 'closed', '', 'field_5d893ae59c40b', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=27', 17, 'acf-field', '', 0),
(28, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'alonso_fullname', 'alonso_fullname', 'publish', 'closed', 'closed', '', 'field_5d893af89c40c', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=28', 18, 'acf-field', '', 0),
(29, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'alonso_position', 'alonso_position', 'publish', 'closed', 'closed', '', 'field_5d893b009c40d', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=29', 19, 'acf-field', '', 0),
(30, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'alonso_social', 'alonso_social', 'publish', 'closed', 'closed', '', 'field_5d893b1a9c40e', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=30', 21, 'acf-field', '', 0),
(31, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5d893b2a9c40f', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 30, 'http://dev.diacritica.com/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5d893b329c410', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 30, 'http://dev.diacritica.com/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'alonso_orbegoso_imagen', 'alonso_orbegoso_imagen', 'publish', 'closed', 'closed', '', 'field_5d893b3f9c411', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=33', 22, 'acf-field', '', 0),
(34, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'alonso_orbegoso_fullname', 'alonso_orbegoso_fullname', 'publish', 'closed', 'closed', '', 'field_5d893b529c412', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=34', 23, 'acf-field', '', 0),
(35, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'alonso_orbegoso_position', 'alonso_orbegoso_position', 'publish', 'closed', 'closed', '', 'field_5d893b599c413', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=35', 24, 'acf-field', '', 0),
(36, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'alonso_orbegoso_description', 'alonso_orbegoso_description', 'publish', 'closed', 'closed', '', 'field_5d893b5f9c414', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=36', 25, 'acf-field', '', 0),
(37, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'alonso_orbegoso_social', 'alonso_orbegoso_social', 'publish', 'closed', 'closed', '', 'field_5d893b689c415', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=37', 26, 'acf-field', '', 0),
(38, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5d893b709c416', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 37, 'http://dev.diacritica.com/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5d893b829c417', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 37, 'http://dev.diacritica.com/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'monica_imagen', 'monica_imagen', 'publish', 'closed', 'closed', '', 'field_5d893ba39c419', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=40', 27, 'acf-field', '', 0),
(41, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'monica_fullname', 'monica_fullname', 'publish', 'closed', 'closed', '', 'field_5d893bad9c41a', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=41', 28, 'acf-field', '', 0),
(42, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'monica_position', 'monica_position', 'publish', 'closed', 'closed', '', 'field_5d893bb69c41b', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=42', 29, 'acf-field', '', 0),
(43, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'monica_description', 'monica_description', 'publish', 'closed', 'closed', '', 'field_5d893bbe9c41c', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=43', 30, 'acf-field', '', 0),
(44, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'monica_social', 'monica_social', 'publish', 'closed', 'closed', '', 'field_5d893bc89c41d', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=44', 31, 'acf-field', '', 0),
(45, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5d893bd29c41e', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 44, 'http://dev.diacritica.com/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5d893bdb9c41f', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 44, 'http://dev.diacritica.com/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'denise_imagen', 'denise_imagen', 'publish', 'closed', 'closed', '', 'field_5d893beb9c420', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=47', 32, 'acf-field', '', 0),
(48, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'denise_fullname', 'denise_fullname', 'publish', 'closed', 'closed', '', 'field_5d893bf49c421', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=48', 33, 'acf-field', '', 0),
(49, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'denise_position', 'denise_position', 'publish', 'closed', 'closed', '', 'field_5d893bfe9c422', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=49', 34, 'acf-field', '', 0),
(50, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'denise_description', 'denise_description', 'publish', 'closed', 'closed', '', 'field_5d893c049c423', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=50', 35, 'acf-field', '', 0),
(51, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'denise_social', 'denise_social', 'publish', 'closed', 'closed', '', 'field_5d893c0f9c424', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=51', 36, 'acf-field', '', 0),
(52, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5d893c189c425', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 51, 'http://dev.diacritica.com/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5d893c1f9c426', '', '', '2019-09-23 21:44:08', '2019-09-23 21:44:08', '', 51, 'http://dev.diacritica.com/?post_type=acf-field&p=53', 1, 'acf-field', '', 0),
(54, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_tropical', 'title_tropical', 'publish', 'closed', 'closed', '', 'field_5d893c349c427', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=54', 37, 'acf-field', '', 0),
(55, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_tropical_pronunciation', 'title_tropical_pronunciation', 'publish', 'closed', 'closed', '', 'field_5d893c3b9c428', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=55', 38, 'acf-field', '', 0),
(56, 1, '2019-09-23 21:44:08', '2019-09-23 21:44:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen_tropical', 'imagen_tropical', 'publish', 'closed', 'closed', '', 'field_5d893c419c429', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=56', 39, 'acf-field', '', 0),
(58, 1, '2019-09-24 01:13:08', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 01:13:08', '0000-00-00 00:00:00', '', 0, 'http://dev.diacritica.com/?page_id=58', 0, 'page', '', 0),
(59, 1, '2019-09-24 02:37:44', '2019-09-24 02:37:44', '', 'home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:37:44', '2019-09-24 02:37:44', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-09-24 02:41:25', '2019-09-24 02:41:25', '', 'ORK-Staff2019_AlexVD-Col@2x', '', 'inherit', 'open', 'closed', '', 'ork-staff2019_alexvd-col2x', '', '', '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/ORK-Staff2019_AlexVD-Col@2x.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-09-24 02:41:25', '2019-09-24 02:41:25', '', 'ORK-Staff2019_Dom-Col@2x', '', 'inherit', 'open', 'closed', '', 'ork-staff2019_dom-col2x', '', '', '2019-09-24 02:44:14', '2019-09-24 02:44:14', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/ORK-Staff2019_Dom-Col@2x.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-09-24 02:41:26', '2019-09-24 02:41:26', '', 'ORK-Staff2019_Frede-Col@2x', '', 'inherit', 'open', 'closed', '', 'ork-staff2019_frede-col2x', '', '', '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/ORK-Staff2019_Frede-Col@2x.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2019-09-24 02:41:27', '2019-09-24 02:41:27', '', 'ORK-Staff2019_Justine-Col@2x', '', 'inherit', 'open', 'closed', '', 'ork-staff2019_justine-col2x', '', '', '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/ORK-Staff2019_Justine-Col@2x.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-09-24 02:41:27', '2019-09-24 02:41:27', '', 'shutterstock_551286610@2x', '', 'inherit', 'open', 'closed', '', 'shutterstock_5512866102x', '', '', '2019-09-24 02:44:14', '2019-09-24 02:44:14', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/shutterstock_551286610@2x.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-09-24 02:41:28', '2019-09-24 02:41:28', '', 'shutterstock_1070981273@2x', '', 'inherit', 'open', 'closed', '', 'shutterstock_10709812732x', '', '', '2019-09-24 02:44:14', '2019-09-24 02:44:14', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/shutterstock_1070981273@2x.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-09-24 02:41:28', '2019-09-24 02:41:28', '', 'shutterstock_1454878277@2x', '', 'inherit', 'open', 'closed', '', 'shutterstock_14548782772x', '', '', '2019-09-24 02:48:47', '2019-09-24 02:48:47', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/shutterstock_1454878277@2x.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-09-24 02:41:29', '2019-09-24 02:41:29', '', '34227', '', 'inherit', 'open', 'closed', '', '34227', '', '', '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/34227.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2019-09-24 02:41:29', '2019-09-24 02:41:29', '', '733614@2x', '', 'inherit', 'open', 'closed', '', '7336142x', '', '', '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/733614@2x.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2019-09-24 02:41:30', '2019-09-24 02:41:30', '', 'cricket@2x', '', 'inherit', 'open', 'closed', '', 'cricket2x', '', '', '2019-09-24 02:53:14', '2019-09-24 02:53:14', '', 2, 'http://dev.diacritica.com/wp-content/uploads/2019/09/cricket@2x.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2019-09-24 02:41:57', '2019-09-24 02:41:57', '', 'di·a·crit·ic', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:41:57', '2019-09-24 02:41:57', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-09-24 02:44:14', '2019-09-24 02:44:14', '', 'di·a·crit·ic', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:44:14', '2019-09-24 02:44:14', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-09-24 02:44:49', '2019-09-24 02:44:49', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'alonso_description', 'alonso_description', 'publish', 'closed', 'closed', '', 'field_5d898304f37f7', '', '', '2019-09-24 02:44:49', '2019-09-24 02:44:49', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=72', 20, 'acf-field', '', 0),
(73, 1, '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 'di·a·crit·ic', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:47:33', '2019-09-24 02:47:33', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-09-24 02:47:44', '2019-09-24 02:47:44', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'content_tropical', 'content_tropical', 'publish', 'closed', 'closed', '', 'field_5d8983ccfb432', '', '', '2019-09-24 02:48:17', '2019-09-24 02:48:17', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&#038;p=74', 40, 'acf-field', '', 0),
(75, 1, '2019-09-24 02:48:47', '2019-09-24 02:48:47', '', 'di·a·crit·ic', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:48:47', '2019-09-24 02:48:47', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-09-24 02:50:01', '2019-09-24 02:50:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_patronage', 'title_patronage', 'publish', 'closed', 'closed', '', 'field_5d898439b41b0', '', '', '2019-09-24 02:50:01', '2019-09-24 02:50:01', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=76', 41, 'acf-field', '', 0),
(77, 1, '2019-09-24 02:50:01', '2019-09-24 02:50:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_patronage_pronunciation', 'title_patronage_pronunciation', 'publish', 'closed', 'closed', '', 'field_5d898448b41b1', '', '', '2019-09-24 02:50:01', '2019-09-24 02:50:01', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=77', 42, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2019-09-24 02:50:01', '2019-09-24 02:50:01', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'content_patronage', 'content_patronage', 'publish', 'closed', 'closed', '', 'field_5d898450b41b2', '', '', '2019-09-24 02:50:01', '2019-09-24 02:50:01', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=78', 43, 'acf-field', '', 0),
(79, 1, '2019-09-24 02:51:14', '2019-09-24 02:51:14', '', 'di·a·crit·ic', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:51:14', '2019-09-24 02:51:14', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-09-24 02:52:14', '2019-09-24 02:52:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_headquarters', 'title_headquarters', 'publish', 'closed', 'closed', '', 'field_5d8984b0723f5', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=80', 44, 'acf-field', '', 0),
(81, 1, '2019-09-24 02:52:14', '2019-09-24 02:52:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_headquarters_pronunciation', 'title_headquarters_pronunciation', 'publish', 'closed', 'closed', '', 'field_5d8984b7723f6', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=81', 45, 'acf-field', '', 0),
(82, 1, '2019-09-24 02:52:14', '2019-09-24 02:52:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen_headquarters', 'imagen_headquarters', 'publish', 'closed', 'closed', '', 'field_5d8984be723f7', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=82', 46, 'acf-field', '', 0),
(83, 1, '2019-09-24 02:52:14', '2019-09-24 02:52:14', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'list_headquarters', 'list_headquarters', 'publish', 'closed', 'closed', '', 'field_5d8984c9723f8', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 9, 'http://dev.diacritica.com/?post_type=acf-field&p=83', 47, 'acf-field', '', 0),
(84, 1, '2019-09-24 02:52:14', '2019-09-24 02:52:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5d8984d2723f9', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 83, 'http://dev.diacritica.com/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2019-09-24 02:52:14', '2019-09-24 02:52:14', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'description', 'description', 'publish', 'closed', 'closed', '', 'field_5d8984d7723fa', '', '', '2019-09-24 02:52:14', '2019-09-24 02:52:14', '', 83, 'http://dev.diacritica.com/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2019-09-24 02:53:14', '2019-09-24 02:53:14', '', 'di·a·crit·ic', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-09-24 02:53:14', '2019-09-24 02:53:14', '', 2, 'http://dev.diacritica.com/2019/09/24/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"a02bc3394173129c9440d69cae34809fc5d810d06e6430da4e935e465b30ead5\";a:4:{s:10:\"expiration\";i:1569434613;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1569261813;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(20, 1, 'metaboxhidden_page', 'a:6:{i:0;s:23:\"acf-group_5d893ca877f07\";i:1;s:23:\"acf-group_5d8939bd85748\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1569293050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BFiVtpVCDbuNIKY3qvWvuTlruXbPjx0', 'admin', 'frankdelarosacampos@gmail.com', '', '2019-09-23 18:01:46', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 0, 0),
(57, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_cf7dbplugin_st`
--
ALTER TABLE `wp_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indices de la tabla `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indices de la tabla `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
