-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-03-16 22:19:47','2024-03-16 22:19:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://xavi-demelo.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://xavi-demelo.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Xavi Demelo','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Espectacles per educar','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','jaubass@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','d/m/Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:20:\"xavidemelo_clases/?$\";s:37:\"index.php?post_type=xavidemelo_clases\";s:50:\"xavidemelo_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=xavidemelo_clases&feed=$matches[1]\";s:45:\"xavidemelo_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=xavidemelo_clases&feed=$matches[1]\";s:37:\"xavidemelo_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=xavidemelo_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"xavidemelo_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"xavidemelo_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"xavidemelo_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"xavidemelo_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"xavidemelo_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"xavidemelo_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"xavidemelo_clases/(.+?)/embed/?$\";s:50:\"index.php?xavidemelo_clases=$matches[1]&embed=true\";s:36:\"xavidemelo_clases/(.+?)/trackback/?$\";s:44:\"index.php?xavidemelo_clases=$matches[1]&tb=1\";s:56:\"xavidemelo_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?xavidemelo_clases=$matches[1]&feed=$matches[2]\";s:51:\"xavidemelo_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?xavidemelo_clases=$matches[1]&feed=$matches[2]\";s:44:\"xavidemelo_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?xavidemelo_clases=$matches[1]&paged=$matches[2]\";s:51:\"xavidemelo_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?xavidemelo_clases=$matches[1]&cpage=$matches[2]\";s:40:\"xavidemelo_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?xavidemelo_clases=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:2;s:55:\"gestio-espectacles-xd/gestio_espectacles_post_types.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','xaviDemelo','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','xaviDemelo','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','7','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1726179587','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','56657','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','1','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:6:{i:1715012388;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1715033988;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715033999;a:4:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1715466637;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1715552388;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (138,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1710628323;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (151,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'WPLANG','ca','yes');
INSERT INTO `wp_options` VALUES (157,'new_admin_email','jaubass@gmail.com','yes');
INSERT INTO `wp_options` VALUES (160,'current_theme','Xavi Demelo','yes');
INSERT INTO `wp_options` VALUES (161,'theme_mods_xaviDemelo','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (162,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (185,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (186,'recovery_mode_email_last_sent','1711486094','yes');
INSERT INTO `wp_options` VALUES (195,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (200,'acf_first_activated_version','6.2.7','yes');
INSERT INTO `wp_options` VALUES (201,'acf_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (224,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":3,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (535,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (638,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (641,'can_compress_scripts','1','yes');
INSERT INTO `wp_options` VALUES (642,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (983,'_transient_timeout_dirsize_cache','2029693027','no');
INSERT INTO `wp_options` VALUES (984,'_transient_dirsize_cache','a:333:{s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/ocean\";i:75229;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/midnight\";i:78486;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/blue\";i:77778;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/sunrise\";i:78407;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/coffee\";i:75892;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/ectoplasm\";i:77742;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/light\";i:78474;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors/modern\";i:77989;s:69:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css/colors\";i:643556;s:62:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/css\";i:2532129;s:65:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/images\";i:426139;s:69:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/js/widgets\";i:139380;s:61:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/js\";i:1963824;s:66:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/network\";i:125258;s:67:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/includes\";i:3053274;s:63:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/user\";i:3418;s:64:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin/maint\";i:7592;s:58:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-admin\";i:9039257;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/read-more\";i:2526;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comments\";i:28882;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/site-logo\";i:16227;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-author\";i:2895;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/video\";i:11523;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/navigation-link\";i:12266;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comments-pagination\";i:8628;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/tag-cloud\";i:3500;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/calendar\";i:3804;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/buttons\";i:11183;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-date\";i:1377;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/embed\";i:11320;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-excerpt\";i:2925;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/file\";i:11254;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/paragraph\";i:6857;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/quote\";i:6522;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/group\";i:13249;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/site-tagline\";i:1570;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/shortcode\";i:3192;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comment-edit-link\";i:1213;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/separator\";i:5280;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/gallery\";i:79899;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/heading\";i:5710;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comment-template\";i:2910;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comment-content\";i:1369;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/term-description\";i:1751;s:72:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/rss\";i:5077;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-author-name\";i:1118;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comments-pagination-next\";i:1011;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query-pagination-numbers\";i:1942;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/code\";i:2638;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/navigation\";i:133018;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/verse\";i:1860;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/details\";i:2067;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/pullquote\";i:8387;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/legacy-widget\";i:556;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-author-biography\";i:971;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query-title\";i:1392;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/html\";i:3708;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/column\";i:1597;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/template-part\";i:8502;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/archives\";i:1725;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/social-links\";i:54790;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/missing\";i:617;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/spacer\";i:4737;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/social-link\";i:2344;s:89:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-navigation-link\";i:4010;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/image\";i:67389;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/more\";i:3752;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/search\";i:18972;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/nextpage\";i:3039;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/text-columns\";i:3034;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query-no-results\";i:899;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comment-date\";i:1112;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/list-item\";i:1099;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/audio\";i:3564;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-comments-form\";i:9575;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query-pagination-next\";i:1039;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/button\";i:23227;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/loginout\";i:1026;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/table\";i:27288;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-template\";i:8336;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/list\";i:2157;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/preformatted\";i:1696;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/avatar\";i:2296;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query-pagination\";i:9403;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/footnotes\";i:2642;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/freeform\";i:41824;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-terms\";i:1715;s:94:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query-pagination-previous\";i:1051;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/page-list-item\";i:1109;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comments-title\";i:1701;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/home-link\";i:1130;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-featured-image\";i:28162;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/page-list\";i:7663;s:97:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comments-pagination-previous\";i:1023;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comment-author-name\";i:1192;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/columns\";i:9193;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/latest-comments\";i:6657;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/latest-posts\";i:11254;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/pattern\";i:411;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/media-text\";i:13788;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-content\";i:1389;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/post-title\";i:1823;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/query\";i:13889;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/site-title\";i:2201;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/widget-group\";i:374;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comment-reply-link\";i:1001;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/navigation-submenu\";i:5842;s:96:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/comments-pagination-numbers\";i:1833;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/categories\";i:2825;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/block\";i:5072;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks/cover\";i:85204;s:68:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/blocks\";i:1501416;s:66:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/l10n\";i:30570;s:65:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/ID3\";i:1160011;s:71:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/PHPMailer\";i:233227;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Net\";i:7493;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Cache\";i:39607;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Parse\";i:20551;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Content/Type\";i:8015;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Content\";i:8015;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/XML/Declaration\";i:7098;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/XML\";i:7098;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Decode/HTML\";i:17241;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/Decode\";i:17241;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie/HTTP\";i:11487;s:71:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/SimplePie\";i:458625;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/format-library\";i:5472;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/block-library\";i:822550;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/preferences\";i:8370;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/patterns\";i:5546;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/edit-widgets\";i:97016;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/edit-site\";i:464924;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/nux\";i:11540;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/block-directory\";i:15076;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/components\";i:354537;s:91:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/list-reusable-blocks\";i:17844;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/block-editor\";i:613729;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/customize-widgets\";i:23540;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/commands\";i:12768;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/edit-post\";i:150390;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/reusable-blocks\";i:2206;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/editor\";i:129032;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist/widgets\";i:23656;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css/dist\";i:2758196;s:65:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/css\";i:3405889;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/images/smilies\";i:10082;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/images/crystal\";i:15541;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/images/media\";i:5263;s:68:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/images\";i:102178;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/codemirror\";i:1287141;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wpview\";i:8985;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wpemoji\";i:5099;s:95:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/directionality\";i:2749;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wplink\";i:26566;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wordpress\";i:50628;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wpdialogs\";i:3761;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/lists\";i:97383;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/textcolor\";i:16237;s:94:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wptextpattern\";i:11923;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/image\";i:55874;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/compat3x/css\";i:8179;s:89:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/compat3x\";i:21758;s:89:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/tabfocus\";i:5336;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wpautoresize\";i:8332;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/link\";i:32949;s:92:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wpeditimage\";i:37711;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/charmap\";i:31811;s:92:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/colorpicker\";i:4910;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/hr\";i:1347;s:91:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/fullscreen\";i:7779;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/wpgallery\";i:4806;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/paste\";i:113193;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins/media\";i:57914;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/plugins\";i:607051;s:95:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/skins/wordpress/images\";i:14207;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/skins/wordpress\";i:22831;s:92:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/skins/lightgray/img\";i:2856;s:94:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/skins/lightgray/fonts\";i:155760;s:88:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/skins/lightgray\";i:210254;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/skins\";i:233085;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/utils\";i:18826;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/langs\";i:15529;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/themes/inlite\";i:452642;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/themes/modern\";i:446221;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce/themes\";i:898863;s:72:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/tinymce\";i:2853756;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/jcrop\";i:24976;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/dist/development\";i:179848;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/dist/vendor\";i:2714416;s:69:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/dist\";i:20675623;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/jquery/ui\";i:808535;s:71:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/jquery\";i:1326271;s:69:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/crop\";i:20004;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/mediaelement/renderers\";i:18880;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/mediaelement\";i:721307;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/swfupload\";i:8715;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/plupload\";i:490468;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/thickbox\";i:31266;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js/imgareaselect\";i:49553;s:64:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/js\";i:29905442;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/block-patterns\";i:8843;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/certificates\";i:233231;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/block-supports\";i:113978;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/theme-compat\";i:15656;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/library\";i:261;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Transport\";i:35060;s:83:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Response\";i:3101;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Proxy\";i:4217;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Auth\";i:2541;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Cookie\";i:4363;s:94:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Exception/Transport\";i:1397;s:89:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Exception/Http\";i:16715;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Exception\";i:22464;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src/Utility\";i:7176;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests/src\";i:214155;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Requests\";i:214416;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/html-api\";i:210846;s:66:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/pomo\";i:57144;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sitemaps/providers\";i:17593;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sitemaps\";i:47491;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/block-bindings\";i:3610;s:100:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/namespaced/Core/ChaCha20\";i:224;s:100:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/namespaced/Core/Poly1305\";i:112;s:105:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/namespaced/Core/Curve25519/Ge\";i:602;s:102:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/namespaced/Core/Curve25519\";i:820;s:91:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/namespaced/Core\";i:2444;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/namespaced\";i:2698;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/lib\";i:87360;s:99:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core32/SecretStream\";i:3656;s:95:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core32/ChaCha20\";i:6407;s:95:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core32/Poly1305\";i:15965;s:100:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core32/Curve25519/Ge\";i:8177;s:97:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core32/Curve25519\";i:122690;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core32\";i:437041;s:97:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core/SecretStream\";i:3624;s:91:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core/Base64\";i:22135;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core/ChaCha20\";i:5264;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core/Poly1305\";i:12912;s:98:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core/Curve25519/Ge\";i:7881;s:95:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core/Curve25519\";i:121645;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/Core\";i:452743;s:85:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src/PHP52\";i:4116;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat/src\";i:1207254;s:75:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/sodium_compat\";i:1303525;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Text/Diff/Renderer\";i:5528;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Text/Diff/Engine\";i:31802;s:71:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Text/Diff\";i:44136;s:66:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/Text\";i:57049;s:72:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/php-compat\";i:1253;s:65:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/IXR\";i:33915;s:67:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/fonts\";i:326255;s:68:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/assets\";i:26062;s:69:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/widgets\";i:158520;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/rest-api/endpoints\";i:846236;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/rest-api/search\";i:16749;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/rest-api/fields\";i:22510;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/rest-api\";i:975082;s:74:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/style-engine\";i:43906;s:79:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/interactivity-api\";i:52125;s:71:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes/customize\";i:176574;s:61:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-includes\";i:48102303;s:68:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/upgrade\";i:0;s:80:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/upgrade-temp-backup\";i:0;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/languages/plugins\";i:475602;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/languages/themes\";i:156571;s:70:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/languages\";i:4590560;s:60:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content\";i:4590588;s:49:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public\";i:61921191;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/css\";i:42174;s:81:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/js\";i:2946;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/includes\";i:557;s:87:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/img/home\";i:2886;s:82:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/img\";i:788389;s:93:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/template-parts\";i:16491;s:84:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo/fonts\";i:979614;s:78:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes/xaviDemelo\";i:1847851;s:67:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/themes\";i:1847879;s:107:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/Blocks\";i:1816;s:106:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/forms\";i:78462;s:112:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/tools\";i:24406;s:117:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/post-types\";i:69761;s:120:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views/upgrade\";i:9778;s:118:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views/tools\";i:716;s:128:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-field-group\";i:39453;s:125:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-taxonomy\";i:48341;s:126:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-post-type\";i:50204;s:119:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views/global\";i:14669;s:112:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin/views\";i:171821;s:106:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/admin\";i:335702;s:107:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/legacy\";i:1781;s:108:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/walkers\";i:3503;s:110:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/locations\";i:49526;s:104:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/api\";i:139260;s:107:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/fields\";i:329349;s:111:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/post-types\";i:68001;s:109:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/rest-api\";i:32197;s:105:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes/ajax\";i:23318;s:100:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/includes\";i:1408689;s:96:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/lang\";i:13582839;s:113:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/timepicker\";i:130956;s:120:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/datepicker/images\";i:11397;s:113:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/datepicker\";i:61331;s:112:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/select2/4\";i:582442;s:112:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/select2/3\";i:268765;s:110:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/select2\";i:851207;s:121:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc/color-picker-alpha\";i:24287;s:102:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/inc\";i:1067781;s:125:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/images/field-type-previews\";i:665372;s:118:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/images/field-states\";i:628;s:122:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/images/field-type-icons\";i:26778;s:111:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/images/icons\";i:42135;s:105:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/images\";i:1135238;s:108:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/build/css\";i:1630121;s:107:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/build/js\";i:1635563;s:104:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets/build\";i:3265684;s:98:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields/assets\";i:5468703;s:91:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/advanced-custom-fields\";i:20532426;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/inc\";i:40759;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/css\";i:2024;s:89:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/js\";i:2842;s:96:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/languages\";i:8183;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/img\";i:0;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/lib\";i:0;s:100:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/fonts/awesome\";i:950854;s:92:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg/fonts\";i:950854;s:86:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/disable-gutenberg\";i:1029943;s:90:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins/gestio-espectacles-xd\";i:3336;s:68:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/plugins\";i:21565733;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/uploads/2024/03\";i:5418362;s:76:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/uploads/2024/04\";i:0;s:73:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/uploads/2024\";i:5418362;s:77:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/uploads/dossiers\";i:0;s:68:\"/Users/jau-mac/Local Sites/xavi-demelo/app/public/wp-content/uploads\";i:5418362;}','no');
INSERT INTO `wp_options` VALUES (1058,'_site_transient_timeout_browser_fda9ade7eec3915ebecaaa6df8712f08','1715225737','no');
INSERT INTO `wp_options` VALUES (1059,'_site_transient_browser_fda9ade7eec3915ebecaaa6df8712f08','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"17.4.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1060,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1715225738','no');
INSERT INTO `wp_options` VALUES (1061,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (1095,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ca/wordpress-6.5.2.zip\";s:6:\"locale\";s:2:\"ca\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ca/wordpress-6.5.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.2\";s:7:\"version\";s:5:\"6.5.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1715009913;s:15:\"version_checked\";s:5:\"6.5.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1096,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1714994816;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.3.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.9\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"3.1.1\";s:55:\"gestio-espectacles-xd/gestio_espectacles_post_types.php\";s:5:\"1.0.0\";}}','no');
INSERT INTO `wp_options` VALUES (1097,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1714994816;s:7:\"checked\";a:1:{s:10:\"xaviDemelo\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1127,'_site_transient_timeout_theme_roots','1714996616','no');
INSERT INTO `wp_options` VALUES (1128,'_site_transient_theme_roots','a:1:{s:10:\"xaviDemelo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1129,'_transient_timeout_dash_v2_1cdc9b194b2615962b15195b3b6a2097','1715038018','no');
INSERT INTO `wp_options` VALUES (1130,'_transient_dash_v2_1cdc9b194b2615962b15195b3b6a2097','<div class=\"rss-widget\"><p><strong>Error RSS:</strong> WP HTTP Error: No heu introduït un URL vàlid.</p></div><div class=\"rss-widget\"><p><strong>Error RSS:</strong> WP HTTP Error: No heu introduït un URL vàlid.</p></div>','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1713521446:1');
INSERT INTO `wp_postmeta` VALUES (7,9,'_edit_lock','1710760577:1');
INSERT INTO `wp_postmeta` VALUES (8,11,'_edit_lock','1710628754:1');
INSERT INTO `wp_postmeta` VALUES (9,13,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (10,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (11,13,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (12,13,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (13,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (14,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (15,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (16,13,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (18,14,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (19,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,14,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (21,14,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (22,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,14,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (27,15,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (28,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,15,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (30,15,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (31,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,15,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (46,17,'_edit_lock','1714775458:1');
INSERT INTO `wp_postmeta` VALUES (47,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (48,24,'_edit_lock','1714773142:1');
INSERT INTO `wp_postmeta` VALUES (51,26,'_wp_attached_file','2024/03/Histeries_Portada-val.pdf');
INSERT INTO `wp_postmeta` VALUES (52,26,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:29:\"Histeries_Portada-val-pdf.jpg\";s:5:\"width\";i:2560;s:6:\"height\";i:3413;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:422485;}s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"Histeries_Portada-val-pdf-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17861;}s:5:\"large\";a:5:{s:4:\"file\";s:38:\"Histeries_Portada-val-pdf-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88344;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"Histeries_Portada-val-pdf-113x150.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7595;}}s:8:\"filesize\";i:367997;}');
INSERT INTO `wp_postmeta` VALUES (53,24,'titol','Historíes Uterines');
INSERT INTO `wp_postmeta` VALUES (54,24,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (55,24,'descripcio','Un espectacle d’humor i sensibilització a favor de la igualtat de gènere');
INSERT INTO `wp_postmeta` VALUES (56,24,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (57,24,'imatge','');
INSERT INTO `wp_postmeta` VALUES (58,24,'_imatge','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (59,24,'fitxer','26');
INSERT INTO `wp_postmeta` VALUES (60,24,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (61,27,'_wp_attached_file','2024/03/Xavi_demelo-logo.webp');
INSERT INTO `wp_postmeta` VALUES (62,27,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:275;s:6:\"height\";i:60;s:4:\"file\";s:29:\"2024/03/Xavi_demelo-logo.webp\";s:8:\"filesize\";i:4560;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"Xavi_demelo-logo-150x60.webp\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:1736;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (63,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (64,9,'_wp_page_template','page-listado-clases.php');
INSERT INTO `wp_postmeta` VALUES (65,24,'tipus-espectacle','a:2:{i:0;s:5:\"adult\";i:1;s:9:\"feminisme\";}');
INSERT INTO `wp_postmeta` VALUES (66,24,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (67,24,'_thumbnail_id','38');
INSERT INTO `wp_postmeta` VALUES (68,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (69,35,'_edit_lock','1714772324:1');
INSERT INTO `wp_postmeta` VALUES (71,35,'titol','Stand Up');
INSERT INTO `wp_postmeta` VALUES (72,35,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (73,35,'descripcio','Un pols entre el teatre visible i l’invisible, entre l’humor i la sensibilització per a la igualtat de gènere.');
INSERT INTO `wp_postmeta` VALUES (74,35,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (75,35,'imatge','');
INSERT INTO `wp_postmeta` VALUES (76,35,'_imatge','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (77,35,'fitxer','26');
INSERT INTO `wp_postmeta` VALUES (78,35,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (79,35,'tipus-espectacle','');
INSERT INTO `wp_postmeta` VALUES (80,35,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (84,37,'_wp_attached_file','2024/03/Stand-up-monolegs-Cat-Cover.jpg');
INSERT INTO `wp_postmeta` VALUES (85,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:424;s:6:\"height\";i:600;s:4:\"file\";s:39:\"2024/03/Stand-up-monolegs-Cat-Cover.jpg\";s:8:\"filesize\";i:29538;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"Stand-up-monolegs-Cat-Cover-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14822;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"Stand-up-monolegs-Cat-Cover-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6369;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (86,35,'_thumbnail_id','37');
INSERT INTO `wp_postmeta` VALUES (87,38,'_wp_attached_file','2024/03/Histeries_Portada.webp');
INSERT INTO `wp_postmeta` VALUES (88,38,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:424;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2024/03/Histeries_Portada.webp\";s:8:\"filesize\";i:25004;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"Histeries_Portada-212x300.webp\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10904;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"Histeries_Portada-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5280;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (89,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (90,39,'_edit_lock','1714684949:1');
INSERT INTO `wp_postmeta` VALUES (91,40,'_wp_attached_file','2024/03/Orgullo-de-amar.webp');
INSERT INTO `wp_postmeta` VALUES (92,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:424;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2024/03/Orgullo-de-amar.webp\";s:8:\"filesize\";i:14728;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"Orgullo-de-amar-212x300.webp\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6544;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"Orgullo-de-amar-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3682;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (93,41,'_wp_attached_file','2024/03/Orgullo-de-amar.pdf');
INSERT INTO `wp_postmeta` VALUES (94,41,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:23:\"Orgullo-de-amar-pdf.jpg\";s:5:\"width\";i:748;s:6:\"height\";i:1058;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64630;}s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"Orgullo-de-amar-pdf-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13276;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"Orgullo-de-amar-pdf-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59850;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"Orgullo-de-amar-pdf-106x150.jpg\";s:5:\"width\";i:106;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7165;}}s:8:\"filesize\";i:631732;}');
INSERT INTO `wp_postmeta` VALUES (95,39,'_thumbnail_id','40');
INSERT INTO `wp_postmeta` VALUES (96,39,'titol','Orgullo de amar');
INSERT INTO `wp_postmeta` VALUES (97,39,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (98,39,'descripcio','Gemma Almagro crea a través del seu personatge desfasat i sarcàstic una atmosfera tan\r\ndivertida com profunda.');
INSERT INTO `wp_postmeta` VALUES (99,39,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (100,39,'imatge','');
INSERT INTO `wp_postmeta` VALUES (101,39,'_imatge','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (102,39,'fitxer','41');
INSERT INTO `wp_postmeta` VALUES (103,39,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (104,39,'tipus-espectacle','');
INSERT INTO `wp_postmeta` VALUES (105,39,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (106,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (107,7,'_wp_page_template','page-inici.php');
INSERT INTO `wp_postmeta` VALUES (108,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (109,43,'_edit_lock','1712259672:1');
INSERT INTO `wp_postmeta` VALUES (110,44,'_wp_attached_file','2024/03/NOesNO.jpg');
INSERT INTO `wp_postmeta` VALUES (111,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:424;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2024/03/NOesNO.jpg\";s:8:\"filesize\";i:15742;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"NOesNO-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11501;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"NOesNO-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5957;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (112,43,'_thumbnail_id','44');
INSERT INTO `wp_postmeta` VALUES (113,43,'titol','No es No');
INSERT INTO `wp_postmeta` VALUES (114,43,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (115,43,'descripcio','Discussió itinerant d’una parella que ve de viatge. Tots dos amb motxilles a l’esquena. S’aturen en un lloc, deixen la motxilla a terra, i ell, emprenyat, treu a la llum les queixes d’un cap de setmana desastrós…');
INSERT INTO `wp_postmeta` VALUES (116,43,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (117,43,'imatge','');
INSERT INTO `wp_postmeta` VALUES (118,43,'_imatge','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (119,43,'fitxer','70');
INSERT INTO `wp_postmeta` VALUES (120,43,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (121,43,'tipus-espectacle','');
INSERT INTO `wp_postmeta` VALUES (122,43,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (123,43,'companyia','Horacio Ladron de Guevara');
INSERT INTO `wp_postmeta` VALUES (124,43,'_companyia','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (125,39,'companyia','Gemma Almagro');
INSERT INTO `wp_postmeta` VALUES (126,39,'_companyia','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (127,35,'companyia','Gemma Almagro & Xavi Demelo');
INSERT INTO `wp_postmeta` VALUES (128,35,'_companyia','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (129,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (130,45,'_edit_lock','1711576428:1');
INSERT INTO `wp_postmeta` VALUES (131,7,'text_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (132,7,'_text_benvinguda','field_660490f035fe3');
INSERT INTO `wp_postmeta` VALUES (133,7,'imagen_hero','');
INSERT INTO `wp_postmeta` VALUES (134,7,'_imagen_hero','field_660491803c454');
INSERT INTO `wp_postmeta` VALUES (135,48,'text_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (136,48,'_text_benvinguda','field_660490f035fe3');
INSERT INTO `wp_postmeta` VALUES (137,48,'imagen_hero','');
INSERT INTO `wp_postmeta` VALUES (138,48,'_imagen_hero','field_660491803c454');
INSERT INTO `wp_postmeta` VALUES (139,49,'_wp_attached_file','2024/03/Hero-01.webp');
INSERT INTO `wp_postmeta` VALUES (140,49,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:20:\"2024/03/Hero-01.webp\";s:8:\"filesize\";i:86502;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Hero-01-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9564;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"Hero-01-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:57186;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Hero-01-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4444;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Hero-01-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:36462;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"Hero-01-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:94828;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (141,50,'text_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (142,50,'_text_benvinguda','field_660490f035fe3');
INSERT INTO `wp_postmeta` VALUES (143,50,'imagen_hero','49');
INSERT INTO `wp_postmeta` VALUES (144,50,'_imagen_hero','field_660491803c454');
INSERT INTO `wp_postmeta` VALUES (145,7,'hero_text_de_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (146,7,'_hero_text_de_benvinguda','field_660493ea59405');
INSERT INTO `wp_postmeta` VALUES (147,7,'hero_titol_de_benvinguda','Propostes educatives per a infants i adults fes click per veure el video de presentació');
INSERT INTO `wp_postmeta` VALUES (148,7,'_hero_titol_de_benvinguda','field_6604940259406');
INSERT INTO `wp_postmeta` VALUES (149,7,'hero_imatge_de_fons','49');
INSERT INTO `wp_postmeta` VALUES (150,7,'_hero_imatge_de_fons','field_66049428c5807');
INSERT INTO `wp_postmeta` VALUES (151,7,'hero','');
INSERT INTO `wp_postmeta` VALUES (152,7,'_hero','field_660493da59404');
INSERT INTO `wp_postmeta` VALUES (153,55,'text_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (154,55,'_text_benvinguda','field_660490f035fe3');
INSERT INTO `wp_postmeta` VALUES (155,55,'imagen_hero','49');
INSERT INTO `wp_postmeta` VALUES (156,55,'_imagen_hero','field_660491803c454');
INSERT INTO `wp_postmeta` VALUES (157,55,'hero_text_de_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (158,55,'_hero_text_de_benvinguda','field_660493ea59405');
INSERT INTO `wp_postmeta` VALUES (159,55,'hero_titol_de_benvinguda','Propostes educatives per a infants i adults fes click per veure el video de presentació');
INSERT INTO `wp_postmeta` VALUES (160,55,'_hero_titol_de_benvinguda','field_6604940259406');
INSERT INTO `wp_postmeta` VALUES (161,55,'hero_imatge_de_fons','49');
INSERT INTO `wp_postmeta` VALUES (162,55,'_hero_imatge_de_fons','field_66049428c5807');
INSERT INTO `wp_postmeta` VALUES (163,55,'hero','');
INSERT INTO `wp_postmeta` VALUES (164,55,'_hero','field_660493da59404');
INSERT INTO `wp_postmeta` VALUES (165,56,'text_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (166,56,'_text_benvinguda','field_660490f035fe3');
INSERT INTO `wp_postmeta` VALUES (167,56,'imagen_hero','');
INSERT INTO `wp_postmeta` VALUES (168,56,'_imagen_hero','field_660491803c454');
INSERT INTO `wp_postmeta` VALUES (169,56,'hero_text_de_benvinguda','Espectacles i tallers de sensibilització social.');
INSERT INTO `wp_postmeta` VALUES (170,56,'_hero_text_de_benvinguda','field_660493ea59405');
INSERT INTO `wp_postmeta` VALUES (171,56,'hero_titol_de_benvinguda','Propostes educatives per a infants i adults fes click per veure el video de presentació');
INSERT INTO `wp_postmeta` VALUES (172,56,'_hero_titol_de_benvinguda','field_6604940259406');
INSERT INTO `wp_postmeta` VALUES (173,56,'hero_imatge_de_fons','49');
INSERT INTO `wp_postmeta` VALUES (174,56,'_hero_imatge_de_fons','field_66049428c5807');
INSERT INTO `wp_postmeta` VALUES (175,56,'hero','');
INSERT INTO `wp_postmeta` VALUES (176,56,'_hero','field_660493da59404');
INSERT INTO `wp_postmeta` VALUES (180,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,58,'_edit_lock','1713182135:1');
INSERT INTO `wp_postmeta` VALUES (182,58,'_wp_page_template','page-tallers.php');
INSERT INTO `wp_postmeta` VALUES (183,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (184,60,'_edit_lock','1713128813:1');
INSERT INTO `wp_postmeta` VALUES (185,60,'_wp_page_template','page-quisoc.php');
INSERT INTO `wp_postmeta` VALUES (186,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,62,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (188,62,'_edit_lock','1711754649:1');
INSERT INTO `wp_postmeta` VALUES (189,64,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (190,64,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (191,64,'_menu_item_object_id','62');
INSERT INTO `wp_postmeta` VALUES (192,64,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (193,64,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (194,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (195,64,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (196,64,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (198,65,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (199,65,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (200,65,'_menu_item_object_id','60');
INSERT INTO `wp_postmeta` VALUES (201,65,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (202,65,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (203,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (204,65,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (205,65,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (207,66,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (208,66,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (209,66,'_menu_item_object_id','58');
INSERT INTO `wp_postmeta` VALUES (210,66,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (211,66,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (212,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (213,66,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (214,66,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (216,13,'_wp_old_date','2024-03-17');
INSERT INTO `wp_postmeta` VALUES (217,15,'_wp_old_date','2024-03-17');
INSERT INTO `wp_postmeta` VALUES (218,14,'_wp_old_date','2024-03-17');
INSERT INTO `wp_postmeta` VALUES (219,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (220,67,'_edit_lock','1714772162:1');
INSERT INTO `wp_postmeta` VALUES (221,67,'titol','Homes tontos...');
INSERT INTO `wp_postmeta` VALUES (222,67,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (223,67,'descripcio','Divertides cançons i monòlegs en que el homes queden retratats en els seus pitjors hàbits.');
INSERT INTO `wp_postmeta` VALUES (224,67,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (225,67,'companyia','El Sobrino del Diablo');
INSERT INTO `wp_postmeta` VALUES (226,67,'_companyia','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (227,67,'fitxer','69');
INSERT INTO `wp_postmeta` VALUES (228,67,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (229,67,'tipus-espectacle','');
INSERT INTO `wp_postmeta` VALUES (230,67,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (231,68,'_wp_attached_file','2024/03/XD-HOMES-TONTOS.webp');
INSERT INTO `wp_postmeta` VALUES (232,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:300;s:6:\"height\";i:424;s:4:\"file\";s:28:\"2024/03/XD-HOMES-TONTOS.webp\";s:8:\"filesize\";i:11898;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"XD-HOMES-TONTOS-212x300.webp\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10510;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"XD-HOMES-TONTOS-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4312;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (233,69,'_wp_attached_file','2024/03/Homes-tontos-Mentiders-i-masclistes.pdf');
INSERT INTO `wp_postmeta` VALUES (234,69,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:43:\"Homes-tontos-Mentiders-i-masclistes-pdf.jpg\";s:5:\"width\";i:1059;s:6:\"height\";i:1497;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:177701;}s:6:\"medium\";a:5:{s:4:\"file\";s:51:\"Homes-tontos-Mentiders-i-masclistes-pdf-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16238;}s:5:\"large\";a:5:{s:4:\"file\";s:52:\"Homes-tontos-Mentiders-i-masclistes-pdf-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101029;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:51:\"Homes-tontos-Mentiders-i-masclistes-pdf-106x150.jpg\";s:5:\"width\";i:106;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7292;}}s:8:\"filesize\";i:240877;}');
INSERT INTO `wp_postmeta` VALUES (235,67,'_thumbnail_id','68');
INSERT INTO `wp_postmeta` VALUES (236,70,'_wp_attached_file','2024/03/NOesNO.pdf');
INSERT INTO `wp_postmeta` VALUES (237,70,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:14:\"NOesNO-pdf.jpg\";s:5:\"width\";i:1058;s:6:\"height\";i:1497;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:131982;}s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"NOesNO-pdf-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13506;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"NOesNO-pdf-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71027;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"NOesNO-pdf-106x150.jpg\";s:5:\"width\";i:106;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6595;}}s:8:\"filesize\";i:947775;}');
INSERT INTO `wp_postmeta` VALUES (238,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (239,71,'_edit_lock','1714772112:1');
INSERT INTO `wp_postmeta` VALUES (240,72,'_wp_attached_file','2024/03/Kelly-carrer.webp');
INSERT INTO `wp_postmeta` VALUES (241,72,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:424;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2024/03/Kelly-carrer.webp\";s:8:\"filesize\";i:21410;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Kelly-carrer-212x300.webp\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10978;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Kelly-carrer-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5324;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (242,73,'_wp_attached_file','2024/03/Nou-Kellys-carrer_2022.pdf');
INSERT INTO `wp_postmeta` VALUES (243,73,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:30:\"Nou-Kellys-carrer_2022-pdf.jpg\";s:5:\"width\";i:1497;s:6:\"height\";i:1058;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140900;}s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"Nou-Kellys-carrer_2022-pdf-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12872;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"Nou-Kellys-carrer_2022-pdf-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:68327;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"Nou-Kellys-carrer_2022-pdf-150x106.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6178;}}s:8:\"filesize\";i:544972;}');
INSERT INTO `wp_postmeta` VALUES (244,71,'_thumbnail_id','72');
INSERT INTO `wp_postmeta` VALUES (245,71,'titol','Les Kelly\'s al carrermmmm');
INSERT INTO `wp_postmeta` VALUES (246,71,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (247,71,'descripcio','Acció teatral de carrer sobre els drets de les dones en clau d’humor. D’una manera lúdica i divertida, parlaran amb el públic de temes\r\ncom la igualtat d’oportunitats entre dones i homes, de feminisme, dels drets de les dones i de violència de gènere, entre d’altres temes. ');
INSERT INTO `wp_postmeta` VALUES (248,71,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (249,71,'companyia','Kelly\'s influencers');
INSERT INTO `wp_postmeta` VALUES (250,71,'_companyia','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (251,71,'fitxer','73');
INSERT INTO `wp_postmeta` VALUES (252,71,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (253,71,'tipus-espectacle','');
INSERT INTO `wp_postmeta` VALUES (254,71,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (255,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (256,74,'_edit_lock','1714775447:1');
INSERT INTO `wp_postmeta` VALUES (257,75,'_wp_attached_file','2024/03/XD-DPorta-1.jpg');
INSERT INTO `wp_postmeta` VALUES (258,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:300;s:6:\"height\";i:424;s:4:\"file\";s:23:\"2024/03/XD-DPorta-1.jpg\";s:8:\"filesize\";i:13088;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"XD-DPorta-1-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11201;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"XD-DPorta-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6730;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (261,74,'_thumbnail_id','75');
INSERT INTO `wp_postmeta` VALUES (262,74,'titol','Darrere la porta');
INSERT INTO `wp_postmeta` VALUES (263,74,'_titol','field_65f732604b7c1');
INSERT INTO `wp_postmeta` VALUES (264,74,'descripcio','Què hi ha darrere la porta d’un centre de menors? I quines històries de vida hi passen? Aurora Cayero i Pilar Cayero, actrius i també educadores socials, ens expliquen amb fets veritablement reals que passa en els centres de menors, quines històries de vida passen, com ho viuen els menors en un centre tancat, que senten els educadors.');
INSERT INTO `wp_postmeta` VALUES (265,74,'_descripcio','field_65f7328f0fe4e');
INSERT INTO `wp_postmeta` VALUES (266,74,'companyia','Aurora Cayero & Pilar Cayero');
INSERT INTO `wp_postmeta` VALUES (267,74,'_companyia','field_65f732b4369d6');
INSERT INTO `wp_postmeta` VALUES (268,74,'fitxer','79');
INSERT INTO `wp_postmeta` VALUES (269,74,'_fitxer','field_65f732cdb9a2c');
INSERT INTO `wp_postmeta` VALUES (270,74,'tipus-espectacle','');
INSERT INTO `wp_postmeta` VALUES (271,74,'_tipus-espectacle','field_65f98640529d9');
INSERT INTO `wp_postmeta` VALUES (272,79,'_wp_attached_file','2024/03/Darrere-la-porta.pdf');
INSERT INTO `wp_postmeta` VALUES (273,79,'_wp_attachment_metadata','a:2:{s:5:\"sizes\";a:4:{s:4:\"full\";a:5:{s:4:\"file\";s:24:\"Darrere-la-porta-pdf.jpg\";s:5:\"width\";i:1058;s:6:\"height\";i:1497;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77362;}s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"Darrere-la-porta-pdf-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12722;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"Darrere-la-porta-pdf-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48966;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"Darrere-la-porta-pdf-106x150.jpg\";s:5:\"width\";i:106;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7152;}}s:8:\"filesize\";i:563150;}');
INSERT INTO `wp_postmeta` VALUES (274,24,'companyia','Xavi Demelo');
INSERT INTO `wp_postmeta` VALUES (275,24,'_companyia','field_65f732b4369d6');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-03-16 22:19:47','2024-03-16 22:19:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-03-16 22:19:47','2024-03-16 22:19:47','',0,'http://xavi-demelo.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (5,0,'2024-03-16 22:20:00','2024-03-16 22:20:00','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-03-16 22:20:00','2024-03-16 22:20:00','',0,'http://xavi-demelo.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-03-16 22:40:55','2024-03-16 22:40:55','','Xavi Demelo','','publish','closed','closed','','xavi-demelo','','','2024-03-27 22:10:08','2024-03-27 22:10:08','',0,'http://xavi-demelo.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-03-16 22:40:55','2024-03-16 22:40:55','<!-- wp:paragraph -->\n<p>Pagina de inicio</p>\n<!-- /wp:paragraph -->','Xavi Demelo','','inherit','closed','closed','','7-revision-v1','','','2024-03-16 22:40:55','2024-03-16 22:40:55','',7,'http://xavi-demelo.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-03-16 22:41:22','2024-03-16 22:41:22','<!-- wp:paragraph -->\r\n<p>Pàgina d\'espectacles</p>\r\n<!-- /wp:paragraph -->','Espectacles','','publish','closed','closed','','espectacles','','','2024-03-18 11:16:17','2024-03-18 11:16:17','',0,'http://xavi-demelo.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-03-16 22:41:22','2024-03-16 22:41:22','<!-- wp:paragraph -->\n<p>Pàgina d\'espectacles </p>\n<!-- /wp:paragraph -->','Espectacles','','inherit','closed','closed','','9-revision-v1','','','2024-03-16 22:41:22','2024-03-16 22:41:22','',9,'http://xavi-demelo.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-03-16 22:41:38','2024-03-16 22:41:38','<!-- wp:paragraph -->\n<p>Pàgina contacte</p>\n<!-- /wp:paragraph -->','Contacte','','publish','closed','closed','','contacte','','','2024-03-16 22:41:38','2024-03-16 22:41:38','',0,'http://xavi-demelo.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-03-16 22:41:38','2024-03-16 22:41:38','<!-- wp:paragraph -->\n<p>Pàgina contacte</p>\n<!-- /wp:paragraph -->','Contacte','','inherit','closed','closed','','11-revision-v1','','','2024-03-16 22:41:38','2024-03-16 22:41:38','',11,'http://xavi-demelo.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-03-29 23:26:54','2024-03-17 10:32:27',' ','','','publish','closed','closed','','13','','','2024-03-29 23:26:54','2024-03-29 23:26:54','',0,'http://xavi-demelo.local/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-03-29 23:26:54','2024-03-17 10:32:27',' ','','','publish','closed','closed','','14','','','2024-03-29 23:26:54','2024-03-29 23:26:54','',0,'http://xavi-demelo.local/?p=14',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-03-29 23:26:54','2024-03-17 10:32:27',' ','','','publish','closed','closed','','15','','','2024-03-29 23:26:54','2024-03-29 23:26:54','',0,'http://xavi-demelo.local/?p=15',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-03-17 18:12:28','2024-03-17 18:12:28','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"xavidemelo_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Espectacles','espectacles','publish','closed','closed','','group_65f73260897bc','','','2024-05-03 21:40:22','2024-05-03 21:40:22','',0,'http://xavi-demelo.local/?post_type=acf-field-group&#038;p=17',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-03-17 18:13:02','2024-03-17 18:13:02','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Max. 340 caracters\";s:9:\"maxlength\";i:340;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Descripció','descripcio','publish','closed','closed','','field_65f7328f0fe4e','','','2024-05-03 21:38:45','2024-05-03 21:38:45','',17,'http://xavi-demelo.local/?post_type=acf-field&#038;p=19',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-03-17 18:13:30','2024-03-17 18:13:30','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:17:\"Max. 30 caracters\";s:9:\"maxlength\";i:36;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Companyia','companyia','publish','closed','closed','','field_65f732b4369d6','','','2024-05-03 21:40:22','2024-05-03 21:40:22','',17,'http://xavi-demelo.local/?post_type=acf-field&#038;p=20',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-03-17 18:13:59','2024-03-17 18:13:59','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Fitxer','fitxer','publish','closed','closed','','field_65f732cdb9a2c','','','2024-05-03 21:37:19','2024-05-03 21:37:19','',17,'http://xavi-demelo.local/?post_type=acf-field&#038;p=21',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-03-17 19:56:07','2024-03-17 19:56:07','','Historíes Uterines','','publish','closed','closed','','histories-uterines','','','2024-05-03 21:41:16','2024-05-03 21:41:16','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=24',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-03-17 19:55:50','2024-03-17 19:55:50','','Histeries_Portada-val','','inherit','open','closed','','histeries_portada-val','','','2024-03-17 19:55:50','2024-03-17 19:55:50','',24,'http://xavi-demelo.local/wp-content/uploads/2024/03/Histeries_Portada-val.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-03-18 09:35:34','2024-03-18 09:35:34','','Xavi_demelo-logo','','inherit','open','closed','','xavi_demelo-logo','','','2024-03-18 09:35:34','2024-03-18 09:35:34','',0,'http://xavi-demelo.local/wp-content/uploads/2024/03/Xavi_demelo-logo.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-03-18 11:04:23','2024-03-18 11:04:23','<!-- wp:paragraph -->\r\n<p>Pàgina d\'espectacles</p>\r\n<!-- /wp:paragraph -->','Espectacles','','inherit','closed','closed','','9-revision-v1','','','2024-03-18 11:04:23','2024-03-18 11:04:23','',9,'http://xavi-demelo.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-03-25 17:53:52','2024-03-25 17:53:52','','Stand Up','','publish','closed','closed','','stand-up','','','2024-05-03 21:40:45','2024-05-03 21:40:45','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=35',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-03-26 00:00:26','2024-03-26 00:00:26','','Stand-up-monolegs-Cat-Cover','','inherit','open','closed','','stand-up-monolegs-cat-cover','','','2024-03-26 00:00:26','2024-03-26 00:00:26','',35,'http://xavi-demelo.local/wp-content/uploads/2024/03/Stand-up-monolegs-Cat-Cover.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-03-26 01:01:49','2024-03-26 01:01:49','','Histeries_Portada','','inherit','open','closed','','histeries_portada','','','2024-03-26 01:01:49','2024-03-26 01:01:49','',24,'http://xavi-demelo.local/wp-content/uploads/2024/03/Histeries_Portada.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-03-26 01:10:32','2024-03-26 01:10:32','','Orgullo de amar','','publish','closed','closed','','orgullo-de-amar','','','2024-05-02 21:22:29','2024-05-02 21:22:29','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=39',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-03-26 01:09:23','2024-03-26 01:09:23','','Orgullo-de-amar','','inherit','open','closed','','orgullo-de-amar','','','2024-03-26 01:09:23','2024-03-26 01:09:23','',39,'http://xavi-demelo.local/wp-content/uploads/2024/03/Orgullo-de-amar.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-03-26 01:10:28','2024-03-26 01:10:28','','Orgullo-de-amar','','inherit','open','closed','','orgullo-de-amar-2','','','2024-03-26 01:10:28','2024-03-26 01:10:28','',39,'http://xavi-demelo.local/wp-content/uploads/2024/03/Orgullo-de-amar.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-03-27 06:10:48','2024-03-27 06:10:48','','Xavi Demelo','','inherit','closed','closed','','7-revision-v1','','','2024-03-27 06:10:48','2024-03-27 06:10:48','',7,'http://xavi-demelo.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-03-27 20:53:03','2024-03-27 20:53:03','','No es No','','publish','closed','closed','','no-es-no','','','2024-04-04 19:41:12','2024-04-04 19:41:12','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=43',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-03-27 20:52:47','2024-03-27 20:52:47','','NOesNO','','inherit','open','closed','','noesno','','','2024-03-27 20:52:47','2024-03-27 20:52:47','',43,'http://xavi-demelo.local/wp-content/uploads/2024/03/NOesNO.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-03-27 21:34:50','2024-03-27 21:34:50','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Pàgina inici','pagina-inici','publish','closed','closed','','group_660490f0bcde3','','','2024-03-27 21:48:49','2024-03-27 21:48:49','',0,'http://xavi-demelo.local/?post_type=acf-field-group&#038;p=45',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-03-27 21:34:50','2024-03-27 21:34:50','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Text benvinguda','text_benvinguda','publish','closed','closed','','field_660490f035fe3','','','2024-03-27 21:35:28','2024-03-27 21:35:28','',45,'http://xavi-demelo.local/?post_type=acf-field&#038;p=46',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-03-27 21:37:21','2024-03-27 21:37:21','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Imagen hero','imagen_hero','publish','closed','closed','','field_660491803c454','','','2024-03-27 21:42:55','2024-03-27 21:42:55','',45,'http://xavi-demelo.local/?post_type=acf-field&#038;p=47',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-03-27 21:39:04','2024-03-27 21:39:04','','Xavi Demelo','','inherit','closed','closed','','7-revision-v1','','','2024-03-27 21:39:04','2024-03-27 21:39:04','',7,'http://xavi-demelo.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-03-27 21:39:49','2024-03-27 21:39:49','','Hero-01','','inherit','open','closed','','hero-01','','','2024-03-27 21:39:49','2024-03-27 21:39:49','',7,'http://xavi-demelo.local/wp-content/uploads/2024/03/Hero-01.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (50,1,'2024-03-27 21:39:57','2024-03-27 21:39:57','','Xavi Demelo','','inherit','closed','closed','','7-revision-v1','','','2024-03-27 21:39:57','2024-03-27 21:39:57','',7,'http://xavi-demelo.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2024-03-27 21:48:11','2024-03-27 21:48:11','a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Hero','hero','publish','closed','closed','','field_660493da59404','','','2024-03-27 21:48:11','2024-03-27 21:48:11','',45,'http://xavi-demelo.local/?post_type=acf-field&p=51',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-03-27 21:48:11','2024-03-27 21:48:11','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Text de Benvinguda','text_de_benvinguda','publish','closed','closed','','field_660493ea59405','','','2024-03-27 21:48:11','2024-03-27 21:48:11','',51,'http://xavi-demelo.local/?post_type=acf-field&p=52',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-03-27 21:48:11','2024-03-27 21:48:11','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Títol de benvinguda','titol_de_benvinguda','publish','closed','closed','','field_6604940259406','','','2024-03-27 21:48:11','2024-03-27 21:48:11','',51,'http://xavi-demelo.local/?post_type=acf-field&p=53',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-03-27 21:48:49','2024-03-27 21:48:49','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Imatge de fons','imatge_de_fons','publish','closed','closed','','field_66049428c5807','','','2024-03-27 21:48:49','2024-03-27 21:48:49','',51,'http://xavi-demelo.local/?post_type=acf-field&p=54',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-03-27 21:49:26','2024-03-27 21:49:26','','Xavi Demelo','','inherit','closed','closed','','7-revision-v1','','','2024-03-27 21:49:26','2024-03-27 21:49:26','',7,'http://xavi-demelo.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-03-27 22:10:08','2024-03-27 22:10:08','','Xavi Demelo','','inherit','closed','closed','','7-revision-v1','','','2024-03-27 22:10:08','2024-03-27 22:10:08','',7,'http://xavi-demelo.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2024-03-29 23:25:50','2024-03-29 23:25:50','','Tallers','','publish','closed','closed','','tallers','','','2024-04-15 11:35:36','2024-04-15 11:35:36','',0,'http://xavi-demelo.local/?page_id=58',0,'page','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-03-29 23:25:50','2024-03-29 23:25:50','','Tallers','','inherit','closed','closed','','58-revision-v1','','','2024-03-29 23:25:50','2024-03-29 23:25:50','',58,'http://xavi-demelo.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-03-29 23:26:07','2024-03-29 23:26:07','','Qui sóc','','publish','closed','closed','','qui-soc','','','2024-04-14 20:26:52','2024-04-14 20:26:52','',0,'http://xavi-demelo.local/?page_id=60',0,'page','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-03-29 23:26:07','2024-03-29 23:26:07','','Qui sóc','','inherit','closed','closed','','60-revision-v1','','','2024-03-29 23:26:07','2024-03-29 23:26:07','',60,'http://xavi-demelo.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-03-29 23:26:32','2024-03-29 23:26:32','','Relats personalitzats','','publish','closed','closed','','relats-personalitzats','','','2024-03-29 23:26:32','2024-03-29 23:26:32','',0,'http://xavi-demelo.local/?page_id=62',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2024-03-29 23:26:32','2024-03-29 23:26:32','','Relats personalitzats','','inherit','closed','closed','','62-revision-v1','','','2024-03-29 23:26:32','2024-03-29 23:26:32','',62,'http://xavi-demelo.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-03-29 23:26:54','2024-03-29 23:26:51',' ','','','publish','closed','closed','','64','','','2024-03-29 23:26:54','2024-03-29 23:26:54','',0,'http://xavi-demelo.local/?p=64',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-03-29 23:26:54','2024-03-29 23:26:51',' ','','','publish','closed','closed','','65','','','2024-03-29 23:26:54','2024-03-29 23:26:54','',0,'http://xavi-demelo.local/?p=65',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-03-29 23:26:54','2024-03-29 23:26:51',' ','','','publish','closed','closed','','66','','','2024-03-29 23:26:54','2024-03-29 23:26:54','',0,'http://xavi-demelo.local/?p=66',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-03-30 21:30:09','2024-03-30 21:30:09','','Homes tontos','','publish','closed','closed','','homes-tontos-mentiders-i-masclistes','','','2024-05-01 05:51:24','2024-05-01 05:51:24','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=67',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-03-30 21:30:47','2024-03-30 21:30:47','','XD-HOMES-TONTOS','','inherit','open','closed','','xd-homes-tontos','','','2024-03-30 21:30:47','2024-03-30 21:30:47','',67,'http://xavi-demelo.local/wp-content/uploads/2024/03/XD-HOMES-TONTOS.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-03-30 21:31:04','2024-03-30 21:31:04','','Homes-tontos-Mentiders-i-masclistes','','inherit','open','closed','','homes-tontos-mentiders-i-masclistes-2','','','2024-03-30 21:31:04','2024-03-30 21:31:04','',67,'http://xavi-demelo.local/wp-content/uploads/2024/03/Homes-tontos-Mentiders-i-masclistes.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-03-30 21:39:59','2024-03-30 21:39:59','','NOesNO','','inherit','open','closed','','noesno-2','','','2024-03-30 21:39:59','2024-03-30 21:39:59','',43,'http://xavi-demelo.local/wp-content/uploads/2024/03/NOesNO.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-03-30 22:30:51','2024-03-30 22:30:51','','Les Kellys al carrer','','publish','closed','closed','','les-kellys-al-carrer','','','2024-05-03 21:36:53','2024-05-03 21:36:53','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=71',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-03-30 22:29:52','2024-03-30 22:29:52','','Kelly-carrer','','inherit','open','closed','','kelly-carrer','','','2024-03-30 22:29:52','2024-03-30 22:29:52','',71,'http://xavi-demelo.local/wp-content/uploads/2024/03/Kelly-carrer.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-03-30 22:30:45','2024-03-30 22:30:45','','Nou-Kellys-carrer_2022','','inherit','open','closed','','nou-kellys-carrer_2022','','','2024-03-30 22:30:45','2024-03-30 22:30:45','',71,'http://xavi-demelo.local/wp-content/uploads/2024/03/Nou-Kellys-carrer_2022.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-03-31 16:34:38','2024-03-31 16:34:38','','Darrere la porta','','publish','closed','closed','','darrere-la-porta','','','2024-05-03 21:55:32','2024-05-03 21:55:32','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&#038;p=74',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-03-31 16:34:18','2024-03-31 16:34:18','','XD-DPorta-1','','inherit','open','closed','','xd-dporta-1','','','2024-03-31 16:34:18','2024-03-31 16:34:18','',74,'http://xavi-demelo.local/wp-content/uploads/2024/03/XD-DPorta-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-04-07 18:56:12','2024-04-07 18:56:12','','Darrere-la-porta','','inherit','open','closed','','darrere-la-porta-2','','','2024-04-07 18:56:12','2024-04-07 18:56:12','',74,'http://xavi-demelo.local/wp-content/uploads/2024/03/Darrere-la-porta.pdf',0,'attachment','application/pdf',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-05-03 11:28:34','0000-00-00 00:00:00','','Esborrany automàtic','','auto-draft','open','open','','','','','2024-05-03 11:28:34','0000-00-00 00:00:00','',0,'http://xavi-demelo.local/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-05-03 21:38:47','0000-00-00 00:00:00','','Esborrany automàtic','','auto-draft','closed','closed','','','','','2024-05-03 21:38:47','0000-00-00 00:00:00','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&p=84',0,'xavidemelo_clases','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-05-03 22:16:56','0000-00-00 00:00:00','','Esborrany automàtic','','auto-draft','open','open','','','','','2024-05-03 22:16:56','0000-00-00 00:00:00','',0,'http://xavi-demelo.local/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2024-05-03 22:30:35','0000-00-00 00:00:00','','Esborrany automàtic','','auto-draft','closed','closed','','','','','2024-05-03 22:30:35','0000-00-00 00:00:00','',0,'http://xavi-demelo.local/?post_type=xavidemelo_clases&p=86',0,'xavidemelo_clases','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (13,2,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (15,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,3,0);
INSERT INTO `wp_term_relationships` VALUES (24,4,0);
INSERT INTO `wp_term_relationships` VALUES (24,5,0);
INSERT INTO `wp_term_relationships` VALUES (24,14,0);
INSERT INTO `wp_term_relationships` VALUES (35,5,0);
INSERT INTO `wp_term_relationships` VALUES (35,6,0);
INSERT INTO `wp_term_relationships` VALUES (35,9,0);
INSERT INTO `wp_term_relationships` VALUES (35,14,0);
INSERT INTO `wp_term_relationships` VALUES (39,3,0);
INSERT INTO `wp_term_relationships` VALUES (39,10,0);
INSERT INTO `wp_term_relationships` VALUES (39,14,0);
INSERT INTO `wp_term_relationships` VALUES (43,4,0);
INSERT INTO `wp_term_relationships` VALUES (43,5,0);
INSERT INTO `wp_term_relationships` VALUES (43,14,0);
INSERT INTO `wp_term_relationships` VALUES (64,2,0);
INSERT INTO `wp_term_relationships` VALUES (65,2,0);
INSERT INTO `wp_term_relationships` VALUES (66,2,0);
INSERT INTO `wp_term_relationships` VALUES (67,8,0);
INSERT INTO `wp_term_relationships` VALUES (67,13,0);
INSERT INTO `wp_term_relationships` VALUES (67,14,0);
INSERT INTO `wp_term_relationships` VALUES (71,4,0);
INSERT INTO `wp_term_relationships` VALUES (71,9,0);
INSERT INTO `wp_term_relationships` VALUES (71,14,0);
INSERT INTO `wp_term_relationships` VALUES (74,9,0);
INSERT INTO `wp_term_relationships` VALUES (74,13,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'category','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu Principal','menu-principal',0);
INSERT INTO `wp_terms` VALUES (3,'LGTBI+Q','lgtbiq',0);
INSERT INTO `wp_terms` VALUES (4,'Feminisme','feminisme',0);
INSERT INTO `wp_terms` VALUES (5,'Igualtat','igualtat',0);
INSERT INTO `wp_terms` VALUES (6,'Monòleg','monoleg',0);
INSERT INTO `wp_terms` VALUES (7,'Ecologia','ecologia',0);
INSERT INTO `wp_terms` VALUES (8,'Música','musica',0);
INSERT INTO `wp_terms` VALUES (9,'Teatre','teatre',0);
INSERT INTO `wp_terms` VALUES (10,'Infantil','infantil',0);
INSERT INTO `wp_terms` VALUES (11,'Contes','contes',0);
INSERT INTO `wp_terms` VALUES (12,'Magia','magia',0);
INSERT INTO `wp_terms` VALUES (13,'Adults','adults',0);
INSERT INTO `wp_terms` VALUES (14,'Destacats','destacats',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','jaume');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"b690390a7c985961030e9688b70a92e77c1e18205c37d4d2cc87be058b268a2f\";a:4:{s:10:\"expiration\";i:1715031525;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15\";s:5:\"login\";i:1714858725;}s:64:\"96ddbffe05b1867936d5d8f006745327020773173226ee513884e72076987aa4\";a:4:{s:10:\"expiration\";i:1715167618;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15\";s:5:\"login\";i:1714994818;}s:64:\"cec959ed24410dc7e4658cb219b4d69429429398ae124f9b652f9518fb461f89\";a:4:{s:10:\"expiration\";i:1715182739;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15\";s:5:\"login\";i:1715009939;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','83');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2024-03-18T11:02:09.864Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1714772186');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_xavidemelo_clases','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_xavidemelo_clases','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_xavidemelo_clases','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:39:\"submitdiv,postimagediv,tagsdiv-post_tag\";s:6:\"normal\";s:43:\"acf-group_65f73260897bc,categorydiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'screen_layout_xavidemelo_clases','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'jaume','$P$B2rKjMiaz4ZMwVr9HVCqlSM.Fed1SM.','jaume','jaubass@gmail.com','http://xavi-demelo.local','2024-03-16 22:19:47','',0,'jaume');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 18:00:22
