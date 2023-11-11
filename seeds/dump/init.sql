-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 11 nov. 2023 à 19:09
-- Version du serveur : 10.5.19-MariaDB-cll-lve
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `u642418946_tatoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `to_commentmeta`
--

CREATE TABLE `to_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `to_comments`
--

CREATE TABLE `to_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_comments`
--

INSERT INTO `to_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2023-10-26 09:52:28', '2023-10-26 07:52:28', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `to_links`
--

CREATE TABLE `to_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `to_options`
--

CREATE TABLE `to_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_options`
--

INSERT INTO `to_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://tatoo.quentin-honnart.fr', 'yes'),
(2, 'home', 'https://tatoo.quentin-honnart.fr', 'yes'),
(3, 'blogname', 'Inkognito', 'yes'),
(4, 'blogdescription', 'L&#039;art du tatouage, un secret bien gardé', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'quentin.honnart@mail-evc.fr', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"designs/?$\";s:26:\"index.php?post_type=design\";s:40:\"designs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=design&feed=$matches[1]\";s:35:\"designs/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=design&feed=$matches[1]\";s:27:\"designs/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=design&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"designs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"designs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"designs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"designs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"designs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"designs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"designs/([^/]+)/embed/?$\";s:39:\"index.php?design=$matches[1]&embed=true\";s:28:\"designs/([^/]+)/trackback/?$\";s:33:\"index.php?design=$matches[1]&tb=1\";s:48:\"designs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?design=$matches[1]&feed=$matches[2]\";s:43:\"designs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?design=$matches[1]&feed=$matches[2]\";s:36:\"designs/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?design=$matches[1]&paged=$matches[2]\";s:43:\"designs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?design=$matches[1]&cpage=$matches[2]\";s:32:\"designs/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?design=$matches[1]&page=$matches[2]\";s:24:\"designs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"designs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"designs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"designs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"designs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"designs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:25:\"fakerpress/fakerpress.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tatoo', 'yes'),
(41, 'stylesheet', 'tatoo', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
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
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1713858747', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'to_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1699725148;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1699732348;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1699732354;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1699775548;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699775554;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699775555;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700121428;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1700207548;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(121, 'nonce_key', 'PNZtP<m7FdEfF:56xf@l>;P)A6(xrssp|Dyb$tS>.Y7x2Y*[-d[SGZWQR82Jn*Bf', 'no'),
(122, 'nonce_salt', 'x%fnMv8=EJw6qN3^`V) #_4_qxKS|XU{}qtq7]1g/nMWpE5)`?!MDv1Qt2[H$>T!', 'no'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'https_detection_errors', 'a:0:{}', 'yes'),
(132, 'logged_in_key', '- YQio1(rm]rl<flPQ^]S5ACIE.WM 4_#*l*0 $fJlt+;YXwAf?H*w;<]]aMlgGx', 'no'),
(133, 'logged_in_salt', 'enpIT/&i8dhBYgtL@OBO~)-?2jju6_VHoyO,|cIj<M0qd.Glh+f5|JzGr[6@Gb}f', 'no'),
(136, 'auth_key', '@Qthkn+ @#/Ch&|1;,guM0Mbdi^qY*u+>}4H05RLZ4AC|t2zeToM@q$T/R/*66;u', 'no'),
(137, 'auth_salt', '@&eL aw-bf9D[,^DSr^rnK/]*b}G4&DU>[<W}94*z_F]Am6o_[4.[P;KzZ6:4?&)', 'no'),
(145, 'can_compress_scripts', '1', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'acf_version', '6.2.2', 'yes'),
(158, 'theme_mods_twentytwentythree', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698306770;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(159, 'current_theme', 'tatoo', 'yes'),
(160, 'theme_mods_tatoo', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:3;s:6:\"header\";i:3;s:6:\"footer\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(164, 'finished_updating_comment_type', '1', 'yes'),
(168, 'new_admin_email', 'quentin.honnart@mail-evc.fr', 'yes'),
(171, 'secure_auth_key', '^:>k8]#GYt.K0W)<Em a=]W=kwZ])yU&%RdR~&g%W7k1q@E6$=!F,jvF(}vfAD+U', 'no'),
(172, 'secure_auth_salt', 'gCmelP-}>=-tx8lZ$ltErQcB8{&G.E}ePyovVW2Q?]G4|x^lDh+&IK^U]{Fq:MKn', 'no'),
(188, 'category_children', 'a:0:{}', 'yes'),
(219, 'recovery_mode_email_last_sent', '1698425424', 'yes'),
(254, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(332, '_site_transient_timeout_browser_6d797a3d21eb30c3af058ab3a2bf562d', '1700129350', 'no'),
(333, '_site_transient_browser_6d797a3d21eb30c3af058ab3a2bf562d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"116.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(334, '_site_transient_timeout_php_check_8fa879a52057541fd4d02aa80888ea2b', '1700129351', 'no'),
(335, '_site_transient_php_check_8fa879a52057541fd4d02aa80888ea2b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(348, 'options_design-page-img', '13', 'no'),
(349, '_options_design-page-img', 'design-page-img', 'no'),
(356, '_site_transient_timeout_php_check_8fdcbe8de4e7bb2dab36d40de47a833c', '1700133646', 'no'),
(357, '_site_transient_php_check_8fdcbe8de4e7bb2dab36d40de47a833c', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(358, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'yes'),
(365, '_site_transient_timeout_browser_f529a32073a22388a8370c39e9b93c86', '1700139482', 'no'),
(366, '_site_transient_browser_f529a32073a22388a8370c39e9b93c86', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"119.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(371, 'options_contact-address', '6 rue de l\'algo, 59000 Lille', 'no'),
(372, '_options_contact-address', 'contact-address', 'no'),
(373, 'options_contact-phone', '0606060606', 'no'),
(374, '_options_contact-phone', 'contact-phone', 'no'),
(375, 'options_contact-email', 'tongtwist@inkognito.fr', 'no'),
(376, '_options_contact-email', 'contact-email', 'no'),
(397, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.4.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.4.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.1\";s:7:\"version\";s:5:\"6.4.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.1\";s:7:\"version\";s:5:\"6.4.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.1\";s:7:\"version\";s:5:\"6.4.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1699703741;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(398, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1699703743;s:7:\"checked\";a:2:{s:5:\"tatoo\";s:5:\"1.0.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}', 'no'),
(399, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1699703743;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231025\";s:6:\"reason\";s:10:\"up_to_date\";}}s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";}}', 'no'),
(421, '_transient_timeout_acf_plugin_updates', '1699876542', 'no'),
(422, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:0:{}s:9:\"no_update\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231025\";s:6:\"reason\";s:10:\"up_to_date\";}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.2\";}}', 'no'),
(423, '_site_transient_timeout_theme_roots', '1699705542', 'no'),
(424, '_site_transient_theme_roots', 'a:2:{s:5:\"tatoo\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `to_postmeta`
--

CREATE TABLE `to_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_postmeta`
--

INSERT INTO `to_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 2, '_edit_lock', '1698308276:1'),
(5, 7, '_wp_attached_file', '2023/10/pocket.png'),
(6, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:510;s:6:\"height\";i:330;s:4:\"file\";s:18:\"2023/10/pocket.png\";s:8:\"filesize\";i:128964;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"pocket-300x194.png\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63413;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"pocket-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30321;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 2, 'footnotes', ''),
(8, 10, '_edit_lock', '1699660143:1'),
(9, 13, '_wp_attached_file', '2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg'),
(10, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:47:\"2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\";s:8:\"filesize\";i:335556;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"allef-vinicius-vKIc4k6dm10-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10370;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"allef-vinicius-vKIc4k6dm10-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66522;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"allef-vinicius-vKIc4k6dm10-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5691;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:47:\"allef-vinicius-vKIc4k6dm10-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:40146;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"allef-vinicius-vKIc4k6dm10-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:146352;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 10, 'footnotes', ''),
(12, 21, '_edit_lock', '1698754642:1'),
(13, 10, '_edit_last', '1'),
(14, 10, 'title', 'Qui je suis'),
(15, 10, '_title', 'title'),
(16, 31, 'title', ''),
(17, 31, '_title', 'title'),
(18, 32, 'title', 'Title'),
(19, 32, '_title', 'title'),
(20, 21, '_edit_last', '1'),
(21, 34, '_edit_last', '1'),
(22, 34, 'banner-title', ''),
(23, 34, '_banner-title', 'banner-title'),
(24, 35, 'banner-title', ''),
(25, 35, '_banner-title', 'banner-title'),
(26, 34, '_edit_lock', '1698754513:1'),
(27, 36, '_edit_last', '1'),
(28, 36, 'banner-title', ''),
(29, 36, '_banner-title', 'banner-title'),
(30, 37, 'banner-title', ''),
(31, 37, '_banner-title', 'banner-title'),
(32, 36, '_edit_lock', '1699717063:1'),
(33, 38, '_menu_item_type', 'post_type'),
(34, 38, '_menu_item_menu_item_parent', '0'),
(35, 38, '_menu_item_object_id', '10'),
(36, 38, '_menu_item_object', 'page'),
(37, 38, '_menu_item_target', ''),
(38, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 38, '_menu_item_xfn', ''),
(40, 38, '_menu_item_url', ''),
(42, 39, '_menu_item_type', 'post_type'),
(43, 39, '_menu_item_menu_item_parent', '0'),
(44, 39, '_menu_item_object_id', '34'),
(45, 39, '_menu_item_object', 'page'),
(46, 39, '_menu_item_target', ''),
(47, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 39, '_menu_item_xfn', ''),
(49, 39, '_menu_item_url', ''),
(60, 41, '_menu_item_type', 'post_type'),
(61, 41, '_menu_item_menu_item_parent', '0'),
(62, 41, '_menu_item_object_id', '36'),
(63, 41, '_menu_item_object', 'page'),
(64, 41, '_menu_item_target', ''),
(65, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 41, '_menu_item_xfn', ''),
(67, 41, '_menu_item_url', ''),
(69, 42, '_menu_item_type', 'post_type'),
(70, 42, '_menu_item_menu_item_parent', '0'),
(71, 42, '_menu_item_object_id', '2'),
(72, 42, '_menu_item_object', 'page'),
(73, 42, '_menu_item_target', ''),
(74, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 42, '_menu_item_xfn', ''),
(76, 42, '_menu_item_url', ''),
(77, 42, '_menu_item_orphaned', '1698754684'),
(78, 43, '_wp_trash_meta_status', 'publish'),
(79, 43, '_wp_trash_meta_time', '1698754800'),
(81, 44, '_customize_changeset_uuid', '54f4446e-3817-4987-b761-22873577a8ed'),
(82, 45, '_wp_trash_meta_status', 'publish'),
(83, 45, '_wp_trash_meta_time', '1698754842'),
(84, 44, '_wp_trash_meta_status', 'publish'),
(85, 44, '_wp_trash_meta_time', '1698754847'),
(86, 44, '_wp_desired_post_slug', 'test'),
(87, 10, 'banner-background', '61'),
(88, 10, '_banner-background', 'banner-background'),
(89, 47, 'title', 'Title'),
(90, 47, '_title', 'title'),
(91, 47, 'banner-background', '13'),
(92, 47, '_banner-background', 'banner-background'),
(93, 10, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(94, 10, '_text', 'text'),
(95, 48, 'title', 'Qui je suis'),
(96, 48, '_title', 'title'),
(97, 48, 'banner-background', '13'),
(98, 48, '_banner-background', 'banner-background'),
(99, 48, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(100, 48, '_text', 'text'),
(101, 10, 'description-title', 'Qui je suis ?'),
(102, 10, '_description-title', 'description-title'),
(103, 10, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(104, 10, '_description-text', 'description-text'),
(105, 49, 'title', 'Qui je suis'),
(106, 49, '_title', 'title'),
(107, 49, 'banner-background', '13'),
(108, 49, '_banner-background', 'banner-background'),
(109, 49, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(110, 49, '_text', 'text'),
(111, 49, 'description-title', 'Qui je suis ?'),
(112, 49, '_description-title', 'description-title'),
(113, 49, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(114, 49, '_description-text', 'description-text'),
(115, 50, '_wp_attached_file', '2023/11/allef-vinicius-9_EknAv_9Hw-unsplash-scaled.jpg'),
(116, 50, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:54:\"2023/11/allef-vinicius-9_EknAv_9Hw-unsplash-scaled.jpg\";s:8:\"filesize\";i:750610;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"allef-vinicius-9_EknAv_9Hw-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10262;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"allef-vinicius-9_EknAv_9Hw-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:90686;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"allef-vinicius-9_EknAv_9Hw-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5566;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:48:\"allef-vinicius-9_EknAv_9Hw-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118644;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"allef-vinicius-9_EknAv_9Hw-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:229577;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:49:\"allef-vinicius-9_EknAv_9Hw-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:448351;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"allef-vinicius-9_EknAv_9Hw-unsplash.jpg\";}'),
(117, 10, 'resume-history-title', 'Mon histoire'),
(118, 10, '_resume-history-title', 'resume-history-title'),
(119, 10, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(120, 10, '_resume-history-desc', 'resume-history-desc'),
(121, 10, 'resume-history-image', '50'),
(122, 10, '_resume-history-image', 'resume-history-image'),
(123, 10, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(124, 10, '_resume-history-link', 'resume-history-link'),
(125, 51, 'title', 'Qui je suis'),
(126, 51, '_title', 'title'),
(127, 51, 'banner-background', '13'),
(128, 51, '_banner-background', 'banner-background'),
(129, 51, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(130, 51, '_text', 'text'),
(131, 51, 'description-title', 'Qui je suis ?'),
(132, 51, '_description-title', 'description-title'),
(133, 51, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(134, 51, '_description-text', 'description-text'),
(135, 51, 'resume-history-title', 'Notre histoire'),
(136, 51, '_resume-history-title', 'resume-history-title'),
(137, 51, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(138, 51, '_resume-history-desc', 'resume-history-desc'),
(139, 51, 'resume-history-image', '50'),
(140, 51, '_resume-history-image', 'resume-history-image'),
(141, 51, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(142, 51, '_resume-history-link', 'resume-history-link'),
(143, 52, 'title', 'Qui je suis'),
(144, 52, '_title', 'title'),
(145, 52, 'banner-background', '13'),
(146, 52, '_banner-background', 'banner-background'),
(147, 52, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(148, 52, '_text', 'text'),
(149, 52, 'description-title', 'Qui je suis ?'),
(150, 52, '_description-title', 'description-title'),
(151, 52, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(152, 52, '_description-text', 'description-text'),
(153, 52, 'resume-history-title', 'Mon histoire'),
(154, 52, '_resume-history-title', 'resume-history-title'),
(155, 52, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(156, 52, '_resume-history-desc', 'resume-history-desc'),
(157, 52, 'resume-history-image', '50'),
(158, 52, '_resume-history-image', 'resume-history-image'),
(159, 52, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(160, 52, '_resume-history-link', 'resume-history-link'),
(161, 53, '_edit_last', '1'),
(162, 53, '_edit_lock', '1699535033:1'),
(163, 21, '_wp_trash_meta_status', 'publish'),
(164, 21, '_wp_trash_meta_time', '1698921902'),
(165, 21, '_wp_desired_post_slug', 'designs'),
(166, 54, '_edit_last', '1'),
(167, 54, '_edit_lock', '1699535033:1'),
(168, 54, '_thumbnail_id', '274'),
(169, 55, '_edit_last', '1'),
(170, 55, '_edit_lock', '1699535065:1'),
(171, 10, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(172, 10, '_designs-selection', 'designs-selection'),
(173, 56, 'title', 'Qui je suis'),
(174, 56, '_title', 'title'),
(175, 56, 'banner-background', '13'),
(176, 56, '_banner-background', 'banner-background'),
(177, 56, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(178, 56, '_text', 'text'),
(179, 56, 'description-title', 'Qui je suis ?'),
(180, 56, '_description-title', 'description-title'),
(181, 56, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(182, 56, '_description-text', 'description-text'),
(183, 56, 'resume-history-title', 'Mon histoire'),
(184, 56, '_resume-history-title', 'resume-history-title'),
(185, 56, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(186, 56, '_resume-history-desc', 'resume-history-desc'),
(187, 56, 'resume-history-image', '50'),
(188, 56, '_resume-history-image', 'resume-history-image'),
(189, 56, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(190, 56, '_resume-history-link', 'resume-history-link'),
(191, 56, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(192, 56, '_designs-selection', 'designs-selection'),
(193, 10, 'designs-title', 'Mes designs'),
(194, 10, '_designs-title', 'designs-title'),
(195, 10, 'designs-label-cta', 'En voir plus'),
(196, 10, '_designs-label-cta', 'designs-label-cta'),
(197, 57, 'title', 'Qui je suis'),
(198, 57, '_title', 'title'),
(199, 57, 'banner-background', '13'),
(200, 57, '_banner-background', 'banner-background'),
(201, 57, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(202, 57, '_text', 'text'),
(203, 57, 'description-title', 'Qui je suis ?'),
(204, 57, '_description-title', 'description-title'),
(205, 57, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(206, 57, '_description-text', 'description-text'),
(207, 57, 'resume-history-title', 'Mon histoire'),
(208, 57, '_resume-history-title', 'resume-history-title'),
(209, 57, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(210, 57, '_resume-history-desc', 'resume-history-desc'),
(211, 57, 'resume-history-image', '50'),
(212, 57, '_resume-history-image', 'resume-history-image'),
(213, 57, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(214, 57, '_resume-history-link', 'resume-history-link'),
(215, 57, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(216, 57, '_designs-selection', 'designs-selection'),
(217, 57, 'designs-title', 'Mes designs'),
(218, 57, '_designs-title', 'designs-title'),
(219, 57, 'designs-label-cta', 'En voir plus'),
(220, 57, '_designs-label-cta', 'designs-label-cta'),
(223, 59, 'title', 'Qui je suis'),
(224, 59, '_title', 'title'),
(225, 59, 'banner-background', '58'),
(226, 59, '_banner-background', 'banner-background'),
(227, 59, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(228, 59, '_text', 'text'),
(229, 59, 'description-title', 'Qui je suis ?'),
(230, 59, '_description-title', 'description-title'),
(231, 59, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(232, 59, '_description-text', 'description-text'),
(233, 59, 'resume-history-title', 'Mon histoire'),
(234, 59, '_resume-history-title', 'resume-history-title'),
(235, 59, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(236, 59, '_resume-history-desc', 'resume-history-desc'),
(237, 59, 'resume-history-image', '50'),
(238, 59, '_resume-history-image', 'resume-history-image'),
(239, 59, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(240, 59, '_resume-history-link', 'resume-history-link'),
(241, 59, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(242, 59, '_designs-selection', 'designs-selection'),
(243, 59, 'designs-title', 'Mes designs'),
(244, 59, '_designs-title', 'designs-title'),
(245, 59, 'designs-label-cta', 'En voir plus'),
(246, 59, '_designs-label-cta', 'designs-label-cta'),
(247, 60, 'title', 'Qui je suis'),
(248, 60, '_title', 'title'),
(249, 60, 'banner-background', '58'),
(250, 60, '_banner-background', 'banner-background'),
(251, 60, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(252, 60, '_text', 'text'),
(253, 60, 'description-title', 'Qui je suis ?'),
(254, 60, '_description-title', 'description-title'),
(255, 60, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(256, 60, '_description-text', 'description-text'),
(257, 60, 'resume-history-title', 'Mon histoire'),
(258, 60, '_resume-history-title', 'resume-history-title'),
(259, 60, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(260, 60, '_resume-history-desc', 'resume-history-desc'),
(261, 60, 'resume-history-image', '50'),
(262, 60, '_resume-history-image', 'resume-history-image'),
(263, 60, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(264, 60, '_resume-history-link', 'resume-history-link'),
(265, 60, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(266, 60, '_designs-selection', 'designs-selection'),
(267, 60, 'designs-title', 'Mes designs'),
(268, 60, '_designs-title', 'designs-title'),
(269, 60, 'designs-label-cta', 'En voir plus'),
(270, 60, '_designs-label-cta', 'designs-label-cta'),
(271, 61, '_wp_attached_file', '2023/11/background-banner.png'),
(272, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1792;s:6:\"height\";i:1024;s:4:\"file\";s:29:\"2023/11/background-banner.png\";s:8:\"filesize\";i:2462998;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"background-banner-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98700;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"background-banner-1024x585.png\";s:5:\"width\";i:1024;s:6:\"height\";i:585;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:834742;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"background-banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47160;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"background-banner-768x439.png\";s:5:\"width\";i:768;s:6:\"height\";i:439;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:512859;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:30:\"background-banner-1536x878.png\";s:5:\"width\";i:1536;s:6:\"height\";i:878;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1630075;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 10, 'contact-title', 'Envie d\'un tatouage ? N’hésite pas à me contacter '),
(274, 10, '_contact-title', 'contact-title'),
(275, 10, 'contact-link', 'a:3:{s:5:\"title\";s:12:\"Me contacter\";s:3:\"url\";s:41:\"https://tatoo.quentin-honnart.fr/contact/\";s:6:\"target\";s:0:\"\";}'),
(276, 10, '_contact-link', 'contact-link'),
(277, 62, 'title', 'Qui je suis'),
(278, 62, '_title', 'title'),
(279, 62, 'banner-background', '61'),
(280, 62, '_banner-background', 'banner-background'),
(281, 62, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(282, 62, '_text', 'text'),
(283, 62, 'description-title', 'Qui je suis ?'),
(284, 62, '_description-title', 'description-title'),
(285, 62, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(286, 62, '_description-text', 'description-text'),
(287, 62, 'resume-history-title', 'Mon histoire'),
(288, 62, '_resume-history-title', 'resume-history-title'),
(289, 62, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(290, 62, '_resume-history-desc', 'resume-history-desc'),
(291, 62, 'resume-history-image', '50'),
(292, 62, '_resume-history-image', 'resume-history-image'),
(293, 62, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(294, 62, '_resume-history-link', 'resume-history-link'),
(295, 62, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(296, 62, '_designs-selection', 'designs-selection'),
(297, 62, 'designs-title', 'Mes designs'),
(298, 62, '_designs-title', 'designs-title'),
(299, 62, 'designs-label-cta', 'En voir plus'),
(300, 62, '_designs-label-cta', 'designs-label-cta'),
(301, 62, 'contact-title', ''),
(302, 62, '_contact-title', 'contact-title'),
(303, 62, 'contact-link', ''),
(304, 62, '_contact-link', 'contact-link'),
(305, 63, 'title', 'Qui je suis'),
(306, 63, '_title', 'title'),
(307, 63, 'banner-background', '61'),
(308, 63, '_banner-background', 'banner-background'),
(309, 63, 'text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(310, 63, '_text', 'text'),
(311, 63, 'description-title', 'Qui je suis ?'),
(312, 63, '_description-title', 'description-title'),
(313, 63, 'description-text', 'Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et <em>dolore</em> magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip'),
(314, 63, '_description-text', 'description-text'),
(315, 63, 'resume-history-title', 'Mon histoire'),
(316, 63, '_resume-history-title', 'resume-history-title'),
(317, 63, 'resume-history-desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(318, 63, '_resume-history-desc', 'resume-history-desc'),
(319, 63, 'resume-history-image', '50'),
(320, 63, '_resume-history-image', 'resume-history-image'),
(321, 63, 'resume-history-link', 'a:3:{s:5:\"title\";s:14:\"En savoir plus\";s:3:\"url\";s:42:\"https://tatoo.quentin-honnart.fr/histoire/\";s:6:\"target\";s:0:\"\";}'),
(322, 63, '_resume-history-link', 'resume-history-link'),
(323, 63, 'designs-selection', 'a:3:{i:0;s:2:\"55\";i:1;s:2:\"54\";i:2;s:2:\"53\";}'),
(324, 63, '_designs-selection', 'designs-selection'),
(325, 63, 'designs-title', 'Mes designs'),
(326, 63, '_designs-title', 'designs-title'),
(327, 63, 'designs-label-cta', 'En voir plus'),
(328, 63, '_designs-label-cta', 'designs-label-cta'),
(329, 63, 'contact-title', 'Envie d\'un tatouage ? N’hésite pas à me contacter '),
(330, 63, '_contact-title', 'contact-title'),
(331, 63, 'contact-link', 'a:3:{s:5:\"title\";s:12:\"Me contacter\";s:3:\"url\";s:41:\"https://tatoo.quentin-honnart.fr/contact/\";s:6:\"target\";s:0:\"\";}'),
(332, 63, '_contact-link', 'contact-link'),
(333, 64, '_edit_last', '1'),
(334, 64, '_edit_lock', '1699535090:1'),
(335, 65, '_edit_last', '1'),
(336, 65, '_edit_lock', '1699535128:1'),
(938, 266, '_menu_item_type', 'post_type_archive'),
(939, 266, '_menu_item_menu_item_parent', '0'),
(940, 266, '_menu_item_object_id', '-25'),
(941, 266, '_menu_item_object', 'design'),
(942, 266, '_menu_item_target', ''),
(943, 266, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(944, 266, '_menu_item_xfn', ''),
(945, 266, '_menu_item_url', ''),
(946, 266, '_menu_item_orphaned', '1699527585'),
(947, 268, '_menu_item_type', 'post_type_archive'),
(948, 268, '_menu_item_menu_item_parent', '0'),
(949, 268, '_menu_item_object_id', '-15'),
(950, 268, '_menu_item_object', 'design'),
(951, 268, '_menu_item_target', ''),
(952, 268, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(953, 268, '_menu_item_xfn', ''),
(954, 268, '_menu_item_url', ''),
(956, 38, '_wp_old_date', '2023-10-31'),
(957, 39, '_wp_old_date', '2023-10-31'),
(958, 41, '_wp_old_date', '2023-10-31'),
(959, 269, '_menu_item_type', 'post_type'),
(960, 269, '_menu_item_menu_item_parent', '0'),
(961, 269, '_menu_item_object_id', '10'),
(962, 269, '_menu_item_object', 'page'),
(963, 269, '_menu_item_target', ''),
(964, 269, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(965, 269, '_menu_item_xfn', ''),
(966, 269, '_menu_item_url', ''),
(968, 270, '_menu_item_type', 'post_type'),
(969, 270, '_menu_item_menu_item_parent', '0'),
(970, 270, '_menu_item_object_id', '34'),
(971, 270, '_menu_item_object', 'page'),
(972, 270, '_menu_item_target', ''),
(973, 270, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(974, 270, '_menu_item_xfn', ''),
(975, 270, '_menu_item_url', ''),
(977, 271, '_menu_item_type', 'post_type'),
(978, 271, '_menu_item_menu_item_parent', '0'),
(979, 271, '_menu_item_object_id', '36'),
(980, 271, '_menu_item_object', 'page'),
(981, 271, '_menu_item_target', ''),
(982, 271, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(983, 271, '_menu_item_xfn', ''),
(984, 271, '_menu_item_url', ''),
(986, 272, '_menu_item_type', 'post_type_archive'),
(987, 272, '_menu_item_menu_item_parent', '0'),
(988, 272, '_menu_item_object_id', '-15'),
(989, 272, '_menu_item_object', 'design'),
(990, 272, '_menu_item_target', ''),
(991, 272, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(992, 272, '_menu_item_xfn', ''),
(993, 272, '_menu_item_url', ''),
(995, 273, '_wp_attached_file', '2023/11/tattoo_01.png'),
(996, 273, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_01.png\";s:8:\"filesize\";i:125820;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_01-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71563;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22084;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(997, 53, '_thumbnail_id', '273'),
(998, 274, '_wp_attached_file', '2023/11/tattoo_02.png'),
(999, 274, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_02.png\";s:8:\"filesize\";i:96028;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_02-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:57927;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18972;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1000, 275, '_wp_attached_file', '2023/11/tattoo_03.png'),
(1001, 275, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_03.png\";s:8:\"filesize\";i:96072;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_03-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55858;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18002;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1002, 55, '_thumbnail_id', '275'),
(1003, 276, '_wp_attached_file', '2023/11/tattoo_04.png'),
(1004, 276, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_04.png\";s:8:\"filesize\";i:104136;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_04-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61876;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18825;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1005, 64, '_thumbnail_id', '276'),
(1006, 277, '_wp_attached_file', '2023/11/tattoo_05.png'),
(1007, 277, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_05.png\";s:8:\"filesize\";i:51670;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_05-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31065;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10687;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1008, 65, '_thumbnail_id', '277'),
(1009, 278, '_edit_last', '1'),
(1010, 278, '_edit_lock', '1699535203:1'),
(1011, 279, '_wp_attached_file', '2023/11/tattoo_06.png'),
(1012, 279, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_06.png\";s:8:\"filesize\";i:89626;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_06-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52122;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16307;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1013, 278, '_thumbnail_id', '279'),
(1014, 280, '_edit_last', '1'),
(1015, 280, '_edit_lock', '1699535243:1'),
(1016, 281, '_wp_attached_file', '2023/11/tattoo_07.png'),
(1017, 281, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_07.png\";s:8:\"filesize\";i:118552;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_07-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70679;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20955;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1018, 280, '_thumbnail_id', '281'),
(1019, 282, '_edit_last', '1'),
(1020, 282, '_edit_lock', '1699535288:1'),
(1023, 284, '_wp_attached_file', '2023/11/tattoo_08.png'),
(1024, 284, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_08.png\";s:8:\"filesize\";i:61966;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_08-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39271;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_08-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12525;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1025, 282, '_thumbnail_id', '284'),
(1026, 285, '_edit_last', '1'),
(1027, 285, '_edit_lock', '1699535324:1'),
(1028, 286, '_wp_attached_file', '2023/11/tattoo_09.png'),
(1029, 286, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2023/11/tattoo_09.png\";s:8:\"filesize\";i:113472;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_09-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71298;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_09-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22503;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1030, 285, '_thumbnail_id', '286'),
(1031, 287, '_edit_last', '1'),
(1032, 287, '_edit_lock', '1699535373:1'),
(1033, 288, '_wp_attached_file', '2023/11/tattoo_10.png'),
(1034, 288, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/11/tattoo_10.png\";s:8:\"filesize\";i:215849;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_10-150x300.png\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51276;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41639;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1035, 287, '_thumbnail_id', '288'),
(1036, 289, '_edit_last', '1'),
(1037, 289, '_edit_lock', '1699540585:1'),
(1038, 290, '_wp_attached_file', '2023/11/tattoo_11.png'),
(1039, 290, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2023/11/tattoo_11.png\";s:8:\"filesize\";i:93638;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"tattoo_11-150x300.png\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23694;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"tattoo_11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17556;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1040, 289, '_thumbnail_id', '290'),
(1041, 291, '_wp_attached_file', '2023/11/salon-1.png'),
(1042, 291, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:19:\"2023/11/salon-1.png\";s:8:\"filesize\";i:1925221;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"salon-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:176901;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"salon-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49886;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"salon-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:988381;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1043, 292, '_wp_attached_file', '2023/11/alexei-1.png'),
(1044, 292, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1792;s:4:\"file\";s:20:\"2023/11/alexei-1.png\";s:8:\"filesize\";i:2083529;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"alexei-1-171x300.png\";s:5:\"width\";i:171;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78062;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"alexei-1-585x1024.png\";s:5:\"width\";i:585;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:660280;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"alexei-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45016;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"alexei-1-768x1344.png\";s:5:\"width\";i:768;s:6:\"height\";i:1344;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1053668;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"alexei-1-878x1536.png\";s:5:\"width\";i:878;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1336519;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1045, 36, 'history-title', 'L\'évolution du salon'),
(1046, 36, '_history-title', 'history-title'),
(1047, 36, 'history-background', '291'),
(1048, 36, '_history-background', 'history-background'),
(1049, 36, 'history_0_history-date', '20151101'),
(1050, 36, '_history_0_history-date', 'history-date'),
(1051, 36, 'history_0_history-description', 'Création du salon'),
(1052, 36, '_history_0_history-description', 'history-description'),
(1053, 36, 'history_1_history-date', '20151102'),
(1054, 36, '_history_1_history-date', 'history-date'),
(1055, 36, 'history_1_history-description', 'Premier clients à se faire tatoué'),
(1056, 36, '_history_1_history-description', 'history-description'),
(1057, 36, 'history_2_history-date', '20151103'),
(1058, 36, '_history_2_history-date', 'history-date'),
(1059, 36, 'history_2_history-description', 'Contrôle de l\'URSAF'),
(1060, 36, '_history_2_history-description', 'history-description'),
(1061, 36, 'history_3_history-date', '20151104'),
(1062, 36, '_history_3_history-date', 'history-date'),
(1063, 36, 'history_3_history-description', 'Fermeture du salon'),
(1064, 36, '_history_3_history-description', 'history-description'),
(1065, 36, 'history', '4'),
(1066, 36, '_history', 'history'),
(1067, 36, 'tatoo-name', 'Alexei Petrov'),
(1068, 36, '_tatoo-name', 'tatoo-name'),
(1069, 36, 'tatoo-job', 'Fondateur'),
(1070, 36, '_tatoo-job', 'tatoo-job'),
(1071, 36, 'tatoo-bio', 'Alexei Petrov, fondateur du célèbre salon de tatouage \"Inkognito\", est un artiste tatoueur de renom, reconnu pour son style unique et ses créations audacieuses. Né à Saint-Pétersbourg, en Russie, il a découvert sa passion pour l\'art du tatouage à l\'adolescence, fasciné par la richesse culturelle et artistique de sa ville natale.\r\n\r\nAprès avoir complété sa formation en arts visuels, Alexei a voyagé à travers l\'Europe, apprenant auprès de maîtres tatoueurs et développant son propre style, un mélange éclectique d\'art traditionnel russe et de modernisme. En 2010, il a ouvert son propre salon, \"Inkognito\", qui est rapidement devenu un lieu de rendez-vous pour les amateurs de tatouages du monde entier.\r\n\r\nAvec plus de 15 ans d\'expérience, Alexei est spécialisé dans les tatouages réalistes et les grandes pièces artistiques, souvent inspirées de la mythologie, de l\'histoire et de la littérature. Il est également connu pour ses œuvres colorées et ses portraits photoréalistes. Sa philosophie en matière de tatouage est simple : chaque tatouage est une œuvre d\'art unique, un récit personnel gravé sur la peau.\r\n\r\nAu fil des ans, Alexei a participé à de nombreuses conventions internationales de tatouage, remportant plusieurs prix pour ses œuvres. Malgré son succès, il reste un artiste humble et dévoué, toujours désireux de partager son savoir et d\'inspirer la prochaine génération de tatoueurs.'),
(1072, 36, '_tatoo-bio', 'tatoo-bio'),
(1073, 36, 'tatoo-image', '292'),
(1074, 36, '_tatoo-image', 'tatoo-image'),
(1075, 36, 'tatoo-quote', 'L\'encre est éphémère, l\'impact est éternel.'),
(1076, 36, '_tatoo-quote', 'tatoo-quote'),
(1077, 36, 'images', 'a:6:{i:0;s:3:\"291\";i:1;s:3:\"294\";i:2;s:3:\"295\";i:3;s:3:\"296\";i:4;s:3:\"297\";i:5;s:3:\"298\";}'),
(1078, 36, '_images', 'images'),
(1079, 293, 'banner-title', ''),
(1080, 293, '_banner-title', 'banner-title'),
(1081, 293, 'history-title', 'L\'évolution du salon'),
(1082, 293, '_history-title', 'history-title'),
(1083, 293, 'history-background', '291'),
(1084, 293, '_history-background', 'history-background'),
(1085, 293, 'history_0_history-date', '20151101'),
(1086, 293, '_history_0_history-date', 'history-date'),
(1087, 293, 'history_0_history-description', 'Création du salon'),
(1088, 293, '_history_0_history-description', 'history-description'),
(1089, 293, 'history_1_history-date', '20151102'),
(1090, 293, '_history_1_history-date', 'history-date'),
(1091, 293, 'history_1_history-description', 'Premier clients à se faire tatoué'),
(1092, 293, '_history_1_history-description', 'history-description'),
(1093, 293, 'history_2_history-date', '20151103'),
(1094, 293, '_history_2_history-date', 'history-date'),
(1095, 293, 'history_2_history-description', 'Contrôle de l\'URSAF'),
(1096, 293, '_history_2_history-description', 'history-description'),
(1097, 293, 'history_3_history-date', '20151104'),
(1098, 293, '_history_3_history-date', 'history-date'),
(1099, 293, 'history_3_history-description', 'Fermeture du salon'),
(1100, 293, '_history_3_history-description', 'history-description'),
(1101, 293, 'history', '4'),
(1102, 293, '_history', 'history'),
(1103, 293, 'tatoo-name', 'Alexei Petrov'),
(1104, 293, '_tatoo-name', 'tatoo-name'),
(1105, 293, 'tatoo-job', 'Fondateur'),
(1106, 293, '_tatoo-job', 'tatoo-job');
INSERT INTO `to_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1107, 293, 'tatoo-bio', 'Alexei Petrov, fondateur du célèbre salon de tatouage \"Inkognito\", est un artiste tatoueur de renom, reconnu pour son style unique et ses créations audacieuses. Né à Saint-Pétersbourg, en Russie, il a découvert sa passion pour l\'art du tatouage à l\'adolescence, fasciné par la richesse culturelle et artistique de sa ville natale.\r\n\r\nAprès avoir complété sa formation en arts visuels, Alexei a voyagé à travers l\'Europe, apprenant auprès de maîtres tatoueurs et développant son propre style, un mélange éclectique d\'art traditionnel russe et de modernisme. En 2010, il a ouvert son propre salon, \"Inkognito\", qui est rapidement devenu un lieu de rendez-vous pour les amateurs de tatouages du monde entier.\r\n\r\nAvec plus de 15 ans d\'expérience, Alexei est spécialisé dans les tatouages réalistes et les grandes pièces artistiques, souvent inspirées de la mythologie, de l\'histoire et de la littérature. Il est également connu pour ses œuvres colorées et ses portraits photoréalistes. Sa philosophie en matière de tatouage est simple : chaque tatouage est une œuvre d\'art unique, un récit personnel gravé sur la peau.\r\n\r\nAu fil des ans, Alexei a participé à de nombreuses conventions internationales de tatouage, remportant plusieurs prix pour ses œuvres. Malgré son succès, il reste un artiste humble et dévoué, toujours désireux de partager son savoir et d\'inspirer la prochaine génération de tatoueurs.'),
(1108, 293, '_tatoo-bio', 'tatoo-bio'),
(1109, 293, 'tatoo-image', '292'),
(1110, 293, '_tatoo-image', 'tatoo-image'),
(1111, 293, 'tatoo-quote', ''),
(1112, 293, '_tatoo-quote', 'tatoo-quote'),
(1113, 293, 'images', ''),
(1114, 293, '_images', 'images'),
(1115, 294, '_wp_attached_file', '2023/11/6.png'),
(1116, 294, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2023/11/6.png\";s:8:\"filesize\";i:1849188;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:180407;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52112;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"6-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:957146;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1117, 295, '_wp_attached_file', '2023/11/5.png'),
(1118, 295, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2023/11/5.png\";s:8:\"filesize\";i:1678623;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:166704;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49667;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"5-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:869858;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1119, 296, '_wp_attached_file', '2023/11/3.png'),
(1120, 296, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2023/11/3.png\";s:8:\"filesize\";i:1775717;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:176562;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51782;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"3-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:897903;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1121, 297, '_wp_attached_file', '2023/11/2.png'),
(1122, 297, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2023/11/2.png\";s:8:\"filesize\";i:1280133;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:151594;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45837;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:740795;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1123, 298, '_wp_attached_file', '2023/11/1.png'),
(1124, 298, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:13:\"2023/11/1.png\";s:8:\"filesize\";i:1496425;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:13:\"1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:162705;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49062;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:13:\"1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:791034;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1125, 299, 'banner-title', ''),
(1126, 299, '_banner-title', 'banner-title'),
(1127, 299, 'history-title', 'L\'évolution du salon'),
(1128, 299, '_history-title', 'history-title'),
(1129, 299, 'history-background', '291'),
(1130, 299, '_history-background', 'history-background'),
(1131, 299, 'history_0_history-date', '20151101'),
(1132, 299, '_history_0_history-date', 'history-date'),
(1133, 299, 'history_0_history-description', 'Création du salon'),
(1134, 299, '_history_0_history-description', 'history-description'),
(1135, 299, 'history_1_history-date', '20151102'),
(1136, 299, '_history_1_history-date', 'history-date'),
(1137, 299, 'history_1_history-description', 'Premier clients à se faire tatoué'),
(1138, 299, '_history_1_history-description', 'history-description'),
(1139, 299, 'history_2_history-date', '20151103'),
(1140, 299, '_history_2_history-date', 'history-date'),
(1141, 299, 'history_2_history-description', 'Contrôle de l\'URSAF'),
(1142, 299, '_history_2_history-description', 'history-description'),
(1143, 299, 'history_3_history-date', '20151104'),
(1144, 299, '_history_3_history-date', 'history-date'),
(1145, 299, 'history_3_history-description', 'Fermeture du salon'),
(1146, 299, '_history_3_history-description', 'history-description'),
(1147, 299, 'history', '4'),
(1148, 299, '_history', 'history'),
(1149, 299, 'tatoo-name', 'Alexei Petrov'),
(1150, 299, '_tatoo-name', 'tatoo-name'),
(1151, 299, 'tatoo-job', 'Fondateur'),
(1152, 299, '_tatoo-job', 'tatoo-job'),
(1153, 299, 'tatoo-bio', 'Alexei Petrov, fondateur du célèbre salon de tatouage \"Inkognito\", est un artiste tatoueur de renom, reconnu pour son style unique et ses créations audacieuses. Né à Saint-Pétersbourg, en Russie, il a découvert sa passion pour l\'art du tatouage à l\'adolescence, fasciné par la richesse culturelle et artistique de sa ville natale.\r\n\r\nAprès avoir complété sa formation en arts visuels, Alexei a voyagé à travers l\'Europe, apprenant auprès de maîtres tatoueurs et développant son propre style, un mélange éclectique d\'art traditionnel russe et de modernisme. En 2010, il a ouvert son propre salon, \"Inkognito\", qui est rapidement devenu un lieu de rendez-vous pour les amateurs de tatouages du monde entier.\r\n\r\nAvec plus de 15 ans d\'expérience, Alexei est spécialisé dans les tatouages réalistes et les grandes pièces artistiques, souvent inspirées de la mythologie, de l\'histoire et de la littérature. Il est également connu pour ses œuvres colorées et ses portraits photoréalistes. Sa philosophie en matière de tatouage est simple : chaque tatouage est une œuvre d\'art unique, un récit personnel gravé sur la peau.\r\n\r\nAu fil des ans, Alexei a participé à de nombreuses conventions internationales de tatouage, remportant plusieurs prix pour ses œuvres. Malgré son succès, il reste un artiste humble et dévoué, toujours désireux de partager son savoir et d\'inspirer la prochaine génération de tatoueurs.'),
(1154, 299, '_tatoo-bio', 'tatoo-bio'),
(1155, 299, 'tatoo-image', '292'),
(1156, 299, '_tatoo-image', 'tatoo-image'),
(1157, 299, 'tatoo-quote', 'L\'encre est éphémère, l\'impact est éternel.'),
(1158, 299, '_tatoo-quote', 'tatoo-quote'),
(1159, 299, 'images', 'a:6:{i:0;s:3:\"291\";i:1;s:3:\"294\";i:2;s:3:\"295\";i:3;s:3:\"296\";i:4;s:3:\"297\";i:5;s:3:\"298\";}'),
(1160, 299, '_images', 'images');

-- --------------------------------------------------------

--
-- Structure de la table `to_posts`
--

CREATE TABLE `to_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_posts`
--

INSERT INTO `to_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-26 09:52:28', '2023-10-26 07:52:28', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2023-10-26 09:52:28', '2023-10-26 07:52:28', '', 0, 'http://tatoo.quentin-honnart.fr/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-26 09:52:28', '2023-10-26 07:52:28', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://tatoo.quentin-honnart.fr/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/pocket.png\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2023-10-26 10:17:10', '2023-10-26 08:17:10', '', 0, 'http://tatoo.quentin-honnart.fr/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-26 09:52:28', '2023-10-26 07:52:28', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://tatoo.quentin-honnart.fr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Où vos données sont envoyées</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2023-10-26 09:52:28', '2023-10-26 07:52:28', '', 0, 'http://tatoo.quentin-honnart.fr/?page_id=3', 0, 'page', '', 0),
(6, 1, '2023-10-26 10:09:42', '2023-10-26 08:09:42', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-tatoo', '', '', '2023-10-26 10:09:42', '2023-10-26 08:09:42', '', 0, 'https://tatoo.quentin-honnart.fr/wp-global-styles-tatoo/', 0, 'wp_global_styles', '', 0),
(7, 1, '2023-10-26 10:17:09', '2023-10-26 08:17:09', '', 'pocket', '', 'inherit', 'open', 'closed', '', 'pocket', '', '', '2023-10-26 10:17:09', '2023-10-26 08:17:09', '', 2, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/pocket.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2023-10-26 10:17:10', '2023-10-26 08:17:10', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://tatoo.quentin-honnart.fr/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/pocket.png\" alt=\"\" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-26 10:17:10', '2023-10-26 08:17:10', '', 2, 'https://tatoo.quentin-honnart.fr/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-10-26 10:17:56', '2023-10-26 08:17:56', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://tatoo.quentin-honnart.fr/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"></div>\n<!-- /wp:columns -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2023-10-26 10:17:56', '2023-10-26 08:17:56', '', 2, 'https://tatoo.quentin-honnart.fr/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-10-26 10:26:46', '2023-10-26 08:26:46', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2023-11-02 15:41:11', '2023-11-02 14:41:11', '', 0, 'https://tatoo.quentin-honnart.fr/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-10-26 10:26:46', '2023-10-26 08:26:46', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:26:46', '2023-10-26 08:26:46', '', 10, 'https://tatoo.quentin-honnart.fr/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-10-26 10:30:16', '2023-10-26 08:30:16', '<!-- wp:cover {\"overlayColor\":\"black\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Rédigez le titre…\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Tatoo</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:30:16', '2023-10-26 08:30:16', '', 10, 'https://tatoo.quentin-honnart.fr/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-10-26 10:37:34', '2023-10-26 08:37:34', '', 'allef-vinicius-vKIc4k6dm10-unsplash', '', 'inherit', 'open', 'closed', '', 'allef-vinicius-vkic4k6dm10-unsplash', '', '', '2023-10-26 10:37:34', '2023-10-26 08:37:34', '', 10, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2023-10-26 10:38:08', '2023-10-26 08:38:08', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" data-object-fit=\"cover\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Rédigez le titre…\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Tatoo</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:38:08', '2023-10-26 08:38:08', '', 10, 'https://tatoo.quentin-honnart.fr/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-10-26 10:39:02', '2023-10-26 08:39:02', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Rédigez le titre…\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Tatoo</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:39:02', '2023-10-26 08:39:02', '', 10, 'https://tatoo.quentin-honnart.fr/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-10-26 10:41:12', '2023-10-26 08:41:12', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-x-large-font-size\">Inkognito</h1>\n<!-- /wp:heading --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:41:12', '2023-10-26 08:41:12', '', 10, 'https://tatoo.quentin-honnart.fr/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-26 10:42:04', '2023-10-26 08:42:04', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-x-large-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">L\'art du tatouage</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:42:04', '2023-10-26 08:42:04', '', 10, 'https://tatoo.quentin-honnart.fr/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-10-26 10:43:16', '2023-10-26 08:43:16', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-x-large-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">L\'art du tatouage</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:43:16', '2023-10-26 08:43:16', '', 10, 'https://tatoo.quentin-honnart.fr/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-10-26 10:45:17', '2023-10-26 08:45:17', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-x-large-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">L\'art du tatouage</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 10:45:17', '2023-10-26 08:45:17', '', 10, 'https://tatoo.quentin-honnart.fr/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-10-26 11:10:01', '2023-10-26 09:10:01', '', 'Designs', '', 'trash', 'closed', 'closed', '', 'designs__trashed', '', '', '2023-11-02 11:45:02', '2023-11-02 10:45:02', '', 0, 'https://tatoo.quentin-honnart.fr/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-10-26 11:10:01', '2023-10-26 09:10:01', '', 'Nos designs', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-10-26 11:10:01', '2023-10-26 09:10:01', '', 21, 'https://tatoo.quentin-honnart.fr/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-10-26 11:10:11', '2023-10-26 09:10:11', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"x-large\"} -->\n<h1 class=\"wp-block-heading has-x-large-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">L\'art du tatouage</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://tatoo.quentin-honnart.fr/nos-designs/\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 11:10:11', '2023-10-26 09:10:11', '', 10, 'https://tatoo.quentin-honnart.fr/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-10-26 11:12:26', '2023-10-26 09:12:26', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"3xxl (5rem - 2.5rem)\"} -->\n<h1 class=\"wp-block-heading has-3-xxl-5-rem-2-5-rem-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">L\'art du tatouage</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://tatoo.quentin-honnart.fr/nos-designs/\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 11:12:26', '2023-10-26 09:12:26', '', 10, 'https://tatoo.quentin-honnart.fr/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-10-26 11:13:12', '2023-10-26 09:13:12', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"fontSize\":\"3xxl (5rem - 2.5rem)\"} -->\n<h1 class=\"wp-block-heading has-3-xxl-5-rem-2-5-rem-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"fontSize\":\"xl (2rem - 1.25rem)\"} -->\n<h2 class=\"wp-block-heading has-xl-2-rem-1-25-rem-font-size\">L\'art du tatouage</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://tatoo.quentin-honnart.fr/nos-designs/\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 11:13:12', '2023-10-26 09:13:12', '', 10, 'https://tatoo.quentin-honnart.fr/?p=25', 0, 'revision', '', 0),
(27, 1, '2023-10-26 11:38:56', '2023-10-26 09:38:56', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"light-green\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-light-green-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"textColor\":\"body\",\"fontSize\":\"3xxl (5rem - 2.5rem)\"} -->\n<h1 class=\"wp-block-heading has-body-color has-text-color has-3-xxl-5-rem-2-5-rem-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textColor\":\"body\",\"fontSize\":\"xl (2rem - 1.25rem)\"} -->\n<h2 class=\"wp-block-heading has-body-color has-text-color has-xl-2-rem-1-25-rem-font-size\">L\'art du tatouage</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"heading\"} -->\n<p class=\"has-heading-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://tatoo.quentin-honnart.fr/nos-designs/\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 11:38:56', '2023-10-26 09:38:56', '', 10, 'https://tatoo.quentin-honnart.fr/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-10-26 11:44:51', '2023-10-26 09:44:51', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"light-green\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-light-green-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"textColor\":\"body\",\"fontSize\":\"3xxl (5rem - 2.5rem)\"} -->\n<h1 class=\"wp-block-heading has-body-color has-text-color has-3-xxl-5-rem-2-5-rem-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textColor\":\"body\",\"fontSize\":\"xl (2rem - 1.25rem)\"} -->\n<h2 class=\"wp-block-heading has-body-color has-text-color has-xl-2-rem-1-25-rem-font-size\">L\'art du tatouage</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"heading\"} -->\n<p class=\"has-heading-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary-button\"} -->\n<div class=\"wp-block-button is-style-primary-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://tatoo.quentin-honnart.fr/nos-designs/\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 11:44:51', '2023-10-26 09:44:51', '', 10, 'https://tatoo.quentin-honnart.fr/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-10-26 12:27:58', '2023-10-26 10:27:58', '<!-- wp:cover {\"url\":\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\",\"id\":13,\"dimRatio\":50,\"overlayColor\":\"primary\",\"focalPoint\":{\"x\":0.52,\"y\":0},\"minHeight\":80,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:80vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-primary-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-13\" alt=\"\" src=\"https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/10/allef-vinicius-vKIc4k6dm10-unsplash.jpg\" style=\"object-position:52% 0%\" data-object-fit=\"cover\" data-object-position=\"52% 0%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":1,\"textColor\":\"body\",\"fontSize\":\"3xxl (5rem - 2.5rem)\"} -->\n<h1 class=\"wp-block-heading has-body-color has-text-color has-3-xxl-5-rem-2-5-rem-font-size\">Inkognito</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"textColor\":\"body\",\"fontSize\":\"xl (2rem - 1.25rem)\"} -->\n<h2 class=\"wp-block-heading has-body-color has-text-color has-xl-2-rem-1-25-rem-font-size\">L\'art du tatouage</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"heading\"} -->\n<p class=\"has-heading-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary-button\"} -->\n<div class=\"wp-block-button is-style-primary-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://tatoo.quentin-honnart.fr/nos-designs/\">Voir nos designs</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-26 12:27:58', '2023-10-26 10:27:58', '', 10, 'https://tatoo.quentin-honnart.fr/?p=29', 0, 'revision', '', 0),
(31, 1, '2023-10-27 18:31:45', '2023-10-27 16:31:45', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-27 18:31:45', '2023-10-27 16:31:45', '', 10, 'https://tatoo.quentin-honnart.fr/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-10-27 18:31:51', '2023-10-27 16:31:51', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-27 18:31:51', '2023-10-27 16:31:51', '', 10, 'https://tatoo.quentin-honnart.fr/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-10-31 13:17:22', '2023-10-31 12:17:22', '', 'Designs', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-10-31 13:17:22', '2023-10-31 12:17:22', '', 21, 'https://tatoo.quentin-honnart.fr/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-10-31 13:17:33', '2023-10-31 12:17:33', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-10-31 13:17:33', '2023-10-31 12:17:33', '', 0, 'https://tatoo.quentin-honnart.fr/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-10-31 13:17:33', '2023-10-31 12:17:33', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-10-31 13:17:33', '2023-10-31 12:17:33', '', 34, 'https://tatoo.quentin-honnart.fr/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-10-31 13:17:50', '2023-10-31 12:17:50', '', 'Histoire', '', 'publish', 'closed', 'closed', '', 'histoire', '', '', '2023-11-11 01:07:41', '2023-11-11 00:07:41', '', 0, 'https://tatoo.quentin-honnart.fr/?page_id=36', 0, 'page', '', 0),
(37, 1, '2023-10-31 13:17:42', '2023-10-31 12:17:42', '', 'Histoire', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-10-31 13:17:42', '2023-10-31 12:17:42', '', 36, 'https://tatoo.quentin-honnart.fr/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-11-09 17:37:50', '2023-10-31 12:18:19', '', 'Accueil', '', 'publish', 'closed', 'closed', '', '38', '', '', '2023-11-09 17:37:50', '2023-11-09 16:37:50', '', 0, 'https://tatoo.quentin-honnart.fr/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2023-11-09 17:37:50', '2023-10-31 12:18:19', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2023-11-09 17:37:50', '2023-11-09 16:37:50', '', 0, 'https://tatoo.quentin-honnart.fr/?p=39', 4, 'nav_menu_item', '', 0),
(41, 1, '2023-11-09 17:37:50', '2023-10-31 12:18:19', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2023-11-09 17:37:50', '2023-11-09 16:37:50', '', 0, 'https://tatoo.quentin-honnart.fr/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2023-10-31 13:18:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-31 13:18:03', '0000-00-00 00:00:00', '', 0, 'https://tatoo.quentin-honnart.fr/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2023-10-31 13:20:00', '2023-10-31 12:20:00', '{\n    \"blogdescription\": {\n        \"value\": \"L\'art du tatouage, un secret bien gard\\u00e9\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-31 12:20:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd4aca917-ab58-4be8-8537-d2e3af4d56c1', '', '', '2023-10-31 13:20:00', '2023-10-31 12:20:00', '', 0, 'https://tatoo.quentin-honnart.fr/d4aca917-ab58-4be8-8537-d2e3af4d56c1/', 0, 'customize_changeset', '', 0),
(44, 1, '2023-10-31 13:20:42', '2023-10-31 12:20:42', '', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2023-10-31 13:20:47', '2023-10-31 12:20:47', '', 0, 'https://tatoo.quentin-honnart.fr/?page_id=44', 0, 'page', '', 0),
(45, 1, '2023-10-31 13:20:42', '2023-10-31 12:20:42', '{\n    \"page_on_front\": {\n        \"value\": \"10\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-31 12:20:42\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            44\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-31 12:20:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '54f4446e-3817-4987-b761-22873577a8ed', '', '', '2023-10-31 13:20:42', '2023-10-31 12:20:42', '', 0, 'https://tatoo.quentin-honnart.fr/54f4446e-3817-4987-b761-22873577a8ed/', 0, 'customize_changeset', '', 0),
(46, 1, '2023-10-31 13:20:42', '2023-10-31 12:20:42', '', 'test', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-10-31 13:20:42', '2023-10-31 12:20:42', '', 44, 'https://tatoo.quentin-honnart.fr/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-10-31 13:25:41', '2023-10-31 12:25:41', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-31 13:25:41', '2023-10-31 12:25:41', '', 10, 'https://tatoo.quentin-honnart.fr/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-10-31 13:50:59', '2023-10-31 12:50:59', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-31 13:50:59', '2023-10-31 12:50:59', '', 10, 'https://tatoo.quentin-honnart.fr/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-10-31 13:53:46', '2023-10-31 12:53:46', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-31 13:53:46', '2023-10-31 12:53:46', '', 10, 'https://tatoo.quentin-honnart.fr/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-11-02 10:12:41', '2023-11-02 09:12:41', '', 'allef-vinicius-9_EknAv_9Hw-unsplash', '', 'inherit', 'open', 'closed', '', 'allef-vinicius-9_eknav_9hw-unsplash', '', '', '2023-11-02 10:12:41', '2023-11-02 09:12:41', '', 10, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/allef-vinicius-9_EknAv_9Hw-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2023-11-02 10:13:27', '2023-11-02 09:13:27', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 10:13:27', '2023-11-02 09:13:27', '', 10, 'https://tatoo.quentin-honnart.fr/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-11-02 10:14:05', '2023-11-02 09:14:05', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 10:14:05', '2023-11-02 09:14:05', '', 10, 'https://tatoo.quentin-honnart.fr/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-11-02 11:44:56', '2023-11-02 10:44:56', '', 'Design 1', '', 'publish', 'open', 'closed', '', 'design-1', '', '', '2023-11-09 14:05:21', '2023-11-09 13:05:21', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=53', 0, 'design', '', 0),
(54, 1, '2023-11-02 11:55:30', '2023-11-02 10:55:30', '', 'Design 2', '', 'publish', 'open', 'closed', '', 'design-2', '', '', '2023-11-09 14:06:04', '2023-11-09 13:06:04', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=54', 0, 'design', '', 0),
(55, 1, '2023-11-02 11:55:40', '2023-11-02 10:55:40', '', 'Design 3', '', 'publish', 'open', 'closed', '', 'design-3', '', '', '2023-11-09 14:06:49', '2023-11-09 13:06:49', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=55', 0, 'design', '', 0),
(56, 1, '2023-11-02 11:55:48', '2023-11-02 10:55:48', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 11:55:48', '2023-11-02 10:55:48', '', 10, 'https://tatoo.quentin-honnart.fr/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-11-02 11:57:12', '2023-11-02 10:57:12', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 11:57:12', '2023-11-02 10:57:12', '', 10, 'https://tatoo.quentin-honnart.fr/?p=57', 0, 'revision', '', 0),
(59, 1, '2023-11-02 12:16:32', '2023-11-02 11:16:32', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 12:16:32', '2023-11-02 11:16:32', '', 10, 'https://tatoo.quentin-honnart.fr/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-11-02 12:33:00', '2023-11-02 11:33:00', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 12:33:00', '2023-11-02 11:33:00', '', 10, 'https://tatoo.quentin-honnart.fr/?p=60', 0, 'revision', '', 0);
INSERT INTO `to_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(61, 1, '2023-11-02 12:54:38', '2023-11-02 11:54:38', '', 'background-banner', '', 'inherit', 'open', 'closed', '', 'background-banner', '', '', '2023-11-02 12:54:49', '2023-11-02 11:54:49', '', 10, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/background-banner.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2023-11-02 12:54:49', '2023-11-02 11:54:49', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 12:54:49', '2023-11-02 11:54:49', '', 10, 'https://tatoo.quentin-honnart.fr/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-11-02 15:41:11', '2023-11-02 14:41:11', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-11-02 15:41:11', '2023-11-02 14:41:11', '', 10, 'https://tatoo.quentin-honnart.fr/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-11-06 13:28:12', '2023-11-06 12:28:12', '', 'Design 4', '', 'publish', 'open', 'closed', '', 'design-4', '', '', '2023-11-09 14:07:14', '2023-11-09 13:07:14', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=64', 0, 'design', '', 0),
(65, 1, '2023-11-06 13:28:26', '2023-11-06 12:28:26', '', 'Design 5', '', 'publish', 'open', 'closed', '', 'design-5', '', '', '2023-11-09 14:07:51', '2023-11-09 13:07:51', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=65', 0, 'design', '', 0),
(266, 1, '2023-11-09 11:59:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-11-09 11:59:45', '0000-00-00 00:00:00', '', 0, 'https://tatoo.quentin-honnart.fr/?p=266', 1, 'nav_menu_item', '', 0),
(267, 1, '2023-11-09 12:25:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-11-09 12:25:02', '0000-00-00 00:00:00', '', 0, 'https://tatoo.quentin-honnart.fr/?p=267', 0, 'post', '', 0),
(268, 1, '2023-11-09 17:37:50', '2023-11-09 12:58:53', ' ', '', '', 'publish', 'closed', 'closed', '', '268', '', '', '2023-11-09 17:37:50', '2023-11-09 16:37:50', '', 0, 'https://tatoo.quentin-honnart.fr/?p=268', 3, 'nav_menu_item', '', 0),
(269, 1, '2023-11-09 17:37:16', '2023-11-09 13:00:09', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2023-11-09 17:37:16', '2023-11-09 16:37:16', '', 0, 'https://tatoo.quentin-honnart.fr/?p=269', 1, 'nav_menu_item', '', 0),
(270, 1, '2023-11-09 17:37:16', '2023-11-09 13:00:09', ' ', '', '', 'publish', 'closed', 'closed', '', '270', '', '', '2023-11-09 17:37:16', '2023-11-09 16:37:16', '', 0, 'https://tatoo.quentin-honnart.fr/?p=270', 4, 'nav_menu_item', '', 0),
(271, 1, '2023-11-09 17:37:16', '2023-11-09 13:00:09', ' ', '', '', 'publish', 'closed', 'closed', '', '271', '', '', '2023-11-09 17:37:16', '2023-11-09 16:37:16', '', 0, 'https://tatoo.quentin-honnart.fr/?p=271', 2, 'nav_menu_item', '', 0),
(272, 1, '2023-11-09 17:37:16', '2023-11-09 13:00:09', ' ', '', '', 'publish', 'closed', 'closed', '', '272', '', '', '2023-11-09 17:37:16', '2023-11-09 16:37:16', '', 0, 'https://tatoo.quentin-honnart.fr/?p=272', 3, 'nav_menu_item', '', 0),
(273, 1, '2023-11-09 14:05:17', '2023-11-09 13:05:17', '', 'tattoo_01', '', 'inherit', 'open', 'closed', '', 'tattoo_01', '', '', '2023-11-09 14:05:17', '2023-11-09 13:05:17', '', 53, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_01.png', 0, 'attachment', 'image/png', 0),
(274, 1, '2023-11-09 14:06:00', '2023-11-09 13:06:00', '', 'tattoo_02', '', 'inherit', 'open', 'closed', '', 'tattoo_02', '', '', '2023-11-09 14:06:00', '2023-11-09 13:06:00', '', 54, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_02.png', 0, 'attachment', 'image/png', 0),
(275, 1, '2023-11-09 14:06:45', '2023-11-09 13:06:45', '', 'tattoo_03', '', 'inherit', 'open', 'closed', '', 'tattoo_03', '', '', '2023-11-09 14:06:45', '2023-11-09 13:06:45', '', 55, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_03.png', 0, 'attachment', 'image/png', 0),
(276, 1, '2023-11-09 14:07:11', '2023-11-09 13:07:11', '', 'tattoo_04', '', 'inherit', 'open', 'closed', '', 'tattoo_04', '', '', '2023-11-09 14:07:11', '2023-11-09 13:07:11', '', 64, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_04.png', 0, 'attachment', 'image/png', 0),
(277, 1, '2023-11-09 14:07:32', '2023-11-09 13:07:32', '', 'tattoo_05', '', 'inherit', 'open', 'closed', '', 'tattoo_05', '', '', '2023-11-09 14:07:32', '2023-11-09 13:07:32', '', 65, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_05.png', 0, 'attachment', 'image/png', 0),
(278, 1, '2023-11-09 14:08:58', '2023-11-09 13:08:58', '', 'Design 6', '', 'publish', 'open', 'closed', '', 'design-6', '', '', '2023-11-09 14:08:58', '2023-11-09 13:08:58', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=278', 0, 'design', '', 0),
(279, 1, '2023-11-09 14:08:47', '2023-11-09 13:08:47', '', 'tattoo_06', '', 'inherit', 'open', 'closed', '', 'tattoo_06', '', '', '2023-11-09 14:08:47', '2023-11-09 13:08:47', '', 278, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_06.png', 0, 'attachment', 'image/png', 0),
(280, 1, '2023-11-09 14:09:27', '2023-11-09 13:09:27', '', 'Design 7', '', 'publish', 'open', 'closed', '', 'design-7', '', '', '2023-11-09 14:09:27', '2023-11-09 13:09:27', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=280', 0, 'design', '', 0),
(281, 1, '2023-11-09 14:09:24', '2023-11-09 13:09:24', '', 'tattoo_07', '', 'inherit', 'open', 'closed', '', 'tattoo_07', '', '', '2023-11-09 14:09:24', '2023-11-09 13:09:24', '', 280, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_07.png', 0, 'attachment', 'image/png', 0),
(282, 1, '2023-11-09 14:10:29', '2023-11-09 13:10:29', '', 'Design 8', '', 'publish', 'open', 'closed', '', 'design-8', '', '', '2023-11-09 14:10:29', '2023-11-09 13:10:29', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=282', 0, 'design', '', 0),
(284, 1, '2023-11-09 14:10:21', '2023-11-09 13:10:21', '', 'tattoo_08', '', 'inherit', 'open', 'closed', '', 'tattoo_08', '', '', '2023-11-09 14:10:21', '2023-11-09 13:10:21', '', 282, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_08.png', 0, 'attachment', 'image/png', 0),
(285, 1, '2023-11-09 14:11:00', '2023-11-09 13:11:00', '', 'Design 9', '', 'publish', 'open', 'closed', '', 'design-9', '', '', '2023-11-09 14:11:00', '2023-11-09 13:11:00', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=285', 0, 'design', '', 0),
(286, 1, '2023-11-09 14:10:52', '2023-11-09 13:10:52', '', 'tattoo_09', '', 'inherit', 'open', 'closed', '', 'tattoo_09', '', '', '2023-11-09 14:10:52', '2023-11-09 13:10:52', '', 285, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_09.png', 0, 'attachment', 'image/png', 0),
(287, 1, '2023-11-09 14:11:50', '2023-11-09 13:11:50', '', 'Design 10', '', 'publish', 'open', 'closed', '', 'design-10', '', '', '2023-11-09 14:11:50', '2023-11-09 13:11:50', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=287', 0, 'design', '', 0),
(288, 1, '2023-11-09 14:11:28', '2023-11-09 13:11:28', '', 'tattoo_10', '', 'inherit', 'open', 'closed', '', 'tattoo_10', '', '', '2023-11-09 14:11:28', '2023-11-09 13:11:28', '', 287, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_10.png', 0, 'attachment', 'image/png', 0),
(289, 1, '2023-11-09 14:12:21', '2023-11-09 13:12:21', '', 'Design 11', '', 'publish', 'open', 'closed', '', 'design-11', '', '', '2023-11-09 14:12:21', '2023-11-09 13:12:21', '', 0, 'https://tatoo.quentin-honnart.fr/?post_type=design&#038;p=289', 0, 'design', '', 0),
(290, 1, '2023-11-09 14:12:14', '2023-11-09 13:12:14', '', 'tattoo_11', '', 'inherit', 'open', 'closed', '', 'tattoo_11', '', '', '2023-11-09 14:12:14', '2023-11-09 13:12:14', '', 289, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/tattoo_11.png', 0, 'attachment', 'image/png', 0),
(291, 1, '2023-11-11 00:53:57', '2023-11-10 23:53:57', '', 'salon', '', 'inherit', 'open', 'closed', '', 'salon', '', '', '2023-11-11 00:57:43', '2023-11-10 23:57:43', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/salon-1.png', 0, 'attachment', 'image/png', 0),
(292, 1, '2023-11-11 00:55:47', '2023-11-10 23:55:47', '', 'alexei', '', 'inherit', 'open', 'closed', '', 'alexei', '', '', '2023-11-11 00:55:47', '2023-11-10 23:55:47', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/alexei-1.png', 0, 'attachment', 'image/png', 0),
(293, 1, '2023-11-11 00:56:34', '2023-11-10 23:56:34', '', 'Histoire', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-11-11 00:56:34', '2023-11-10 23:56:34', '', 36, 'https://tatoo.quentin-honnart.fr/?p=293', 0, 'revision', '', 0),
(294, 1, '2023-11-11 01:07:16', '2023-11-11 00:07:16', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2023-11-11 01:07:36', '2023-11-11 00:07:36', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/6.png', 0, 'attachment', 'image/png', 0),
(295, 1, '2023-11-11 01:07:20', '2023-11-11 00:07:20', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2023-11-11 01:07:20', '2023-11-11 00:07:20', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/5.png', 0, 'attachment', 'image/png', 0),
(296, 1, '2023-11-11 01:07:24', '2023-11-11 00:07:24', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2023-11-11 01:07:24', '2023-11-11 00:07:24', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/3.png', 0, 'attachment', 'image/png', 0),
(297, 1, '2023-11-11 01:07:28', '2023-11-11 00:07:28', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2023-11-11 01:07:28', '2023-11-11 00:07:28', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/2.png', 0, 'attachment', 'image/png', 0),
(298, 1, '2023-11-11 01:07:32', '2023-11-11 00:07:32', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2023-11-11 01:07:32', '2023-11-11 00:07:32', '', 36, 'https://tatoo.quentin-honnart.fr/wp-content/uploads/2023/11/1.png', 0, 'attachment', 'image/png', 0),
(299, 1, '2023-11-11 01:07:41', '2023-11-11 00:07:41', '', 'Histoire', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-11-11 01:07:41', '2023-11-11 00:07:41', '', 36, 'https://tatoo.quentin-honnart.fr/?p=299', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `to_termmeta`
--

CREATE TABLE `to_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `to_terms`
--

CREATE TABLE `to_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_terms`
--

INSERT INTO `to_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'tatoo', 'tatoo', 0),
(3, 'header', 'header', 0),
(4, 'footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Structure de la table `to_term_relationships`
--

CREATE TABLE `to_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_term_relationships`
--

INSERT INTO `to_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(38, 3, 0),
(39, 3, 0),
(41, 3, 0),
(268, 3, 0),
(269, 4, 0),
(270, 4, 0),
(271, 4, 0),
(272, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `to_term_taxonomy`
--

CREATE TABLE `to_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_term_taxonomy`
--

INSERT INTO `to_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `to_usermeta`
--

CREATE TABLE `to_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_usermeta`
--

INSERT INTO `to_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tatoo'),
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
(12, 1, 'to_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'to_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:7:{s:64:\"cd9453475152d968b1223f3e784c3f887418f42c24df28d75e7aab774bc5ef6c\";a:4:{s:10:\"expiration\";i:1699697348;s:2:\"ip\";s:10:\"172.18.0.2\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1699524548;}s:64:\"2a0929fd54869763808191f4e7191440ceaf68f55623370e29881dc455d40e83\";a:4:{s:10:\"expiration\";i:1699701898;s:2:\"ip\";s:12:\"195.135.0.87\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1699529098;}s:64:\"c4e7b34c67a26a7f9620fecd1ce999e8dcb681a71d8eeb91dd7710b896d03510\";a:4:{s:10:\"expiration\";i:1699707482;s:2:\"ip\";s:12:\"195.135.0.87\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699534682;}s:64:\"aac249fc590d494eccb71aaffa9f6d05287ac55b70601f091682b39c26dcd370\";a:4:{s:10:\"expiration\";i:1699707799;s:2:\"ip\";s:12:\"195.135.0.87\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1699534999;}s:64:\"6e96fac314f07614f79ba3b2c8d2a0289568819c4a8c1fe68fad459f9756b714\";a:4:{s:10:\"expiration\";i:1699720563;s:2:\"ip\";s:12:\"195.135.0.87\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699547763;}s:64:\"a4cdf4ba01369fa6a543a0af57af36a59b768cc48c853f907967115454c56087\";a:4:{s:10:\"expiration\";i:1699774175;s:2:\"ip\";s:14:\"37.167.106.254\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1699601375;}s:64:\"746347a7a61a716bc2f646ab25b9c448cdf636993a04b191510c2dacd86f4071\";a:4:{s:10:\"expiration\";i:1699831344;s:2:\"ip\";s:38:\"2a01:cb0d:a028:77d0:190e:ac66:23e1:bac\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699658544;}}'),
(17, 1, 'to_dashboard_quick_press_last_post_id', '267'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:21:\"2a01:cb0d:a028:77d0::\";}'),
(19, 1, 'to_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-10-26T08:06:18.507Z\";}'),
(20, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:97:\"acf-history-block,acf-tatoo-block,acf-images-block,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_page', '2'),
(22, 1, 'closedpostboxes_page', 'a:1:{i:0;s:24:\"acf-resume-history-block\";}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(26, 1, 'to_user-settings', 'libraryContent=browse'),
(27, 1, 'to_user-settings-time', '1698755136'),
(28, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Structure de la table `to_users`
--

CREATE TABLE `to_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `to_users`
--

INSERT INTO `to_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tatoo', '$P$BmVNj79xy.isFeHjocVXr0VJnRQrXJ.', 'tatoo', 'quentin.honnart@mail-evc.fr', 'http://tatoo.quentin-honnart.fr', '2023-10-26 07:52:28', '', 0, 'tatoo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `to_commentmeta`
--
ALTER TABLE `to_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `to_comments`
--
ALTER TABLE `to_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `to_links`
--
ALTER TABLE `to_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `to_options`
--
ALTER TABLE `to_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `to_postmeta`
--
ALTER TABLE `to_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `to_posts`
--
ALTER TABLE `to_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `to_termmeta`
--
ALTER TABLE `to_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `to_terms`
--
ALTER TABLE `to_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `to_term_relationships`
--
ALTER TABLE `to_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `to_term_taxonomy`
--
ALTER TABLE `to_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `to_usermeta`
--
ALTER TABLE `to_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `to_users`
--
ALTER TABLE `to_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `to_commentmeta`
--
ALTER TABLE `to_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `to_comments`
--
ALTER TABLE `to_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `to_links`
--
ALTER TABLE `to_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `to_options`
--
ALTER TABLE `to_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT pour la table `to_postmeta`
--
ALTER TABLE `to_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- AUTO_INCREMENT pour la table `to_posts`
--
ALTER TABLE `to_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT pour la table `to_termmeta`
--
ALTER TABLE `to_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `to_terms`
--
ALTER TABLE `to_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `to_term_taxonomy`
--
ALTER TABLE `to_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `to_usermeta`
--
ALTER TABLE `to_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `to_users`
--
ALTER TABLE `to_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
