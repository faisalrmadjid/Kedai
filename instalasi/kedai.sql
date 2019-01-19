-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2019 at 03:55 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kedai`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawi_aiowps_events`
--

CREATE TABLE `jawi_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_aiowps_failed_logins`
--

CREATE TABLE `jawi_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_aiowps_failed_logins`
--

INSERT INTO `jawi_aiowps_failed_logins` (`id`, `user_id`, `user_login`, `failed_login_date`, `login_attempt_ip`) VALUES
(1, 3, 'tes@gmail.com', '2018-12-13 15:00:05', '::1'),
(2, 0, 'tes1@gmail.com', '2018-12-13 15:00:21', '::1'),
(3, 3, 'tes@gmail.com', '2018-12-15 13:31:36', '::1'),
(4, 3, 'tes@gmail.com', '2018-12-15 13:31:55', '::1'),
(5, 3, 'tes@gmail.com', '2018-12-15 13:32:11', '::1'),
(6, 0, 'tes1@gmail.com', '2018-12-15 13:32:22', '::1'),
(7, 3, 'tes@gmail.com', '2018-12-15 13:33:14', '::1'),
(8, 3, 'tes@gmail.com', '2018-12-15 13:33:30', '::1'),
(9, 3, 'tes@gmail.com', '2018-12-15 13:33:44', '::1'),
(10, 0, '1234@gmail.com', '2018-12-23 14:34:38', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_aiowps_global_meta`
--

CREATE TABLE `jawi_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_aiowps_login_activity`
--

CREATE TABLE `jawi_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_aiowps_login_activity`
--

INSERT INTO `jawi_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'Mimin2018', '2018-12-13 13:49:50', '2018-12-13 14:57:38', '::1', '', ''),
(2, 1, 'Mimin2018', '2018-12-13 15:00:56', '2018-12-15 13:38:35', '::1', '', ''),
(3, 4, '123', '2018-12-13 16:07:56', '2018-12-13 20:16:29', '::1', '', ''),
(4, 1, 'Mimin2018', '2018-12-15 13:36:25', '2018-12-15 13:38:35', '::1', '', ''),
(5, 5, 'jawi', '2018-12-15 13:39:05', '2018-12-15 13:43:02', '::1', '', ''),
(6, 4, '123', '2018-12-23 14:35:03', '2018-12-23 14:48:42', '::1', '', ''),
(7, 1, 'Mimin2018', '2018-12-23 14:49:17', '2019-01-02 16:03:34', '::1', '', ''),
(8, 1, 'Mimin2018', '2018-12-23 21:56:23', '2019-01-02 16:03:34', '::1', '', ''),
(9, 1, 'Mimin2018', '2018-12-26 18:11:49', '2019-01-02 16:03:34', '::1', '', ''),
(10, 1, 'Mimin2018', '2019-01-02 15:54:12', '2019-01-02 16:03:34', '::1', '', ''),
(11, 1, 'Mimin2018', '2019-01-02 16:20:05', '2019-01-02 17:15:59', '::1', '', ''),
(12, 1, 'Mimin2018', '2019-01-02 18:31:37', '0000-00-00 00:00:00', '::1', '', ''),
(13, 1, 'Mimin2018', '2019-01-03 18:06:28', '0000-00-00 00:00:00', '::1', '', ''),
(14, 1, 'Mimin2018', '2019-01-05 18:04:53', '0000-00-00 00:00:00', '::1', '', ''),
(15, 1, 'Mimin2018', '2019-01-05 19:35:35', '0000-00-00 00:00:00', '::1', '', ''),
(16, 1, 'Mimin2018', '2019-01-05 21:37:02', '0000-00-00 00:00:00', '::1', '', ''),
(17, 1, 'Mimin2018', '2019-01-19 19:54:08', '0000-00-00 00:00:00', '::1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_aiowps_login_lockdown`
--

CREATE TABLE `jawi_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_aiowps_permanent_block`
--

CREATE TABLE `jawi_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_album`
--

CREATE TABLE `jawi_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_album_gallery`
--

CREATE TABLE `jawi_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_file_paths`
--

CREATE TABLE `jawi_bwg_file_paths` (
  `id` bigint(20) NOT NULL,
  `is_dir` tinyint(1) DEFAULT '0',
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aperture` int(10) DEFAULT NULL,
  `camera` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso` int(10) DEFAULT NULL,
  `orientation` int(10) DEFAULT NULL,
  `copyright` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_ci,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_bwg_file_paths`
--

INSERT INTO `jawi_bwg_file_paths` (`id`, `is_dir`, `path`, `type`, `name`, `filename`, `alt`, `thumb`, `size`, `resolution`, `credit`, `aperture`, `camera`, `caption`, `iso`, `orientation`, `copyright`, `tags`, `date_modified`) VALUES
(1, 1, '/', NULL, 'imported_from_media_libray', 'imported_from_media_libray', 'imported_from_media_libray', '/filemanager/images/dir.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-26 14:40:44'),
(2, 0, '/imported_from_media_libray/', 'png', 'Master-1.png', 'Master-1', 'Master-1', 'thumb/Master-1.png', '1370 KB', '1032 x 525 px', '', 0, '', '', 0, 0, '', '', '2018-12-26 14:40:45'),
(3, 0, '/imported_from_media_libray/', 'png', 'Product-Tes1.png', 'Product-Tes1', 'Product-Tes1', 'thumb/Product-Tes1.png', '811 KB', '692 x 560 px', '', 0, '', '', 0, 0, '', '', '2018-12-26 14:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_gallery`
--

CREATE TABLE `jawi_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_link` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_source` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_bwg_gallery`
--

INSERT INTO `jawi_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`, `modified_date`) VALUES
(1, 'coba', 'ccb', 'fty', '', '', '/imported_from_media_libray/thumb/Product-Tes1.png', 0, 1, 1, '', '', 12, '', 1545835212);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_image`
--

CREATE TABLE `jawi_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filetype` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricelist_id` bigint(20) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_bwg_image`
--

INSERT INTO `jawi_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`, `modified_date`) VALUES
(1, 1, 'Master Picture', 'Master-1', '/imported_from_media_libray/Master-1.png', '/imported_from_media_libray/thumb/Master-1.png', '', 'Master Picture', '2018-12-26 14:40:44', '1370 KB', 'png', '1032 x 525 px', 1, 2, 1, 0, 0, 0, 7, '', 0, 1545835318),
(2, 1, 'Product-Tes1', 'Product-Tes1', '/imported_from_media_libray/Product-Tes1.png', '/imported_from_media_libray/thumb/Product-Tes1.png', '', 'Product-Tes1', '2018-12-26 14:40:45', '811 KB', 'png', '692 x 560 px', 1, 1, 1, 0, 0, 0, 0, '', 0, 1545835318);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_image_comment`
--

CREATE TABLE `jawi_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_image_rate`
--

CREATE TABLE `jawi_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_image_tag`
--

CREATE TABLE `jawi_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_shortcode`
--

CREATE TABLE `jawi_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_bwg_shortcode`
--

INSERT INTO `jawi_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' use_option_defaults="1" type="gallery" theme_id="1" gallery_id="1" tag="0" gallery_type="thumbnails"');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_bwg_theme`
--

CREATE TABLE `jawi_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_bwg_theme`
--

INSERT INTO `jawi_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Light', '{"thumb_margin":"4","album_compact_title_font_color_hover":"FFFFFF","compact_container_margin":"1","container_margin":"1","thumb_padding":"0","thumb_border_radius":"0","thumb_border_width":0,"thumb_border_style":"none","thumb_border_color":"CCCCCC","thumb_bg_color":"000000","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"zoom","thumb_hover_effect_value":"1.08","thumb_transition":1,"thumb_title_margin":"2px","thumb_title_font_style":"Ubuntu","thumb_title_pos":"bottom","thumb_title_font_color":"323A45","thumb_title_font_color_hover":"FFFFFF","thumb_title_shadow":"","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_gal_title_font_color":"323A45","thumb_gal_title_font_style":"Ubuntu","thumb_gal_title_font_size":18,"thumb_gal_title_font_weight":"bold","thumb_gal_title_margin":"2px","thumb_gal_title_shadow":"","thumb_gal_title_align":"center","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"Ubuntu","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"solid","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FFFFFF","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":100,"lightbox_ctrl_btn_color":"808080","lightbox_toggle_btn_height":20,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"FFFFFF","lightbox_ctrl_cont_border_radius":4,"lightbox_ctrl_cont_transparent":85,"lightbox_close_btn_bg_color":"FFFFFF","lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_width":2,"lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"","lightbox_close_btn_size":20,"lightbox_close_btn_color":"808080","lightbox_close_btn_width":30,"lightbox_close_btn_height":30,"lightbox_overlay_bg_color":"EEEEEE","lightbox_close_btn_top":"-20","lightbox_close_btn_right":"-15","lightbox_close_btn_full_color":"000000","lightbox_close_btn_transparent":60,"lightbox_rl_btn_bg_color":"FFFFFF","lightbox_rl_btn_transparent":"60","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":0,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"ADADAD","lightbox_rl_btn_height":35,"lightbox_rl_btn_width":35,"lightbox_rl_btn_size":25,"lightbox_close_rl_btn_hover_color":"808080","lightbox_comment_pos":"left","lightbox_comment_width":350,"lightbox_comment_bg_color":"FFFFFF","lightbox_comment_font_color":"7A7A7A","lightbox_comment_font_style":"Ubuntu","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"2F2F2F","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"7px","lightbox_comment_button_padding":"10px 10px","lightbox_comment_input_bg_color":"F7F8F9","lightbox_comment_input_border_color":"EBEBEB","lightbox_comment_input_border_width":2,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"7px","lightbox_comment_input_padding":"5px","lightbox_comment_separator_width":20,"lightbox_comment_separator_style":"none","lightbox_comment_separator_color":"383838","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"808080","lightbox_filmstrip_rl_bg_color":"EBEBEB","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"808080","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"none","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_pos":"bottom","lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_overlay_bg_transparent":60,"lightbox_bg_color":"FFFFFF","lightbox_rl_btn_style":"fa-angle","lightbox_bg_transparent":100,"blog_style_margin":"2px","blog_style_padding":"0","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"solid","blog_style_border_color":"F5F5F5","blog_style_bg_color":"FFFFFF","blog_style_transparent":80,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"Ubuntu","blog_style_img_font_color":"000000","blog_style_share_buttons_font_size":20,"blog_style_share_buttons_color":"B3AFAF","blog_style_share_buttons_bg_transparent":0,"blog_style_gal_title_font_color":"323A45","blog_style_gal_title_font_style":"Ubuntu","blog_style_gal_title_font_size":16,"blog_style_gal_title_font_weight":"bold","blog_style_gal_title_margin":"2px","blog_style_gal_title_shadow":"0px 0px 0px #888888","blog_style_gal_title_align":"center","image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"0","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"F5F5F5","image_browser_bg_color":"EBEBEB","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"0px 5px 0px 5px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"EBEBEB","image_browser_image_description_align":"center","image_browser_img_font_size":15,"image_browser_img_font_family":"Ubuntu","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":2,"image_browser_full_border_style":"none","image_browser_full_border_color":"F7F7F7","image_browser_full_bg_color":"F5F5F5","image_browser_full_transparent":90,"image_browser_image_title_align":"top","image_browser_gal_title_font_color":"323A45","image_browser_gal_title_font_style":"Ubuntu","image_browser_gal_title_font_size":16,"image_browser_gal_title_font_weight":"bold","image_browser_gal_title_margin":"2px","image_browser_gal_title_shadow":"0px 0px 0px #888888","image_browser_gal_title_align":"center","album_compact_title_margin":"2px","album_compact_thumb_margin":4,"album_compact_back_padding":"0","album_compact_thumb_padding":0,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":0,"album_compact_title_font_style":"Ubuntu","album_compact_back_font_color":"323A45","album_compact_title_font_color":"323A45","album_compact_title_shadow":"0px 0px 0px #888888","album_compact_thumb_bg_transparent":0,"album_compact_thumb_box_shadow":"0px 0px 0px #888888","album_compact_thumb_transition":1,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"CCCCCC","album_compact_thumb_bg_color":"000000","album_compact_back_font_weight":"bold","album_compact_back_font_size":15,"album_compact_back_font_style":"Ubuntu","album_compact_thumb_title_pos":"bottom","album_compact_thumbs_bg_color":"FFFFFF","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"zoom","album_compact_thumb_transparent":100,"album_compact_thumb_hover_effect_value":"1.08","album_compact_gal_title_font_color":"323A45","album_compact_gal_title_font_style":"Ubuntu","album_compact_gal_title_font_size":18,"album_compact_gal_title_font_weight":"bold","album_compact_gal_title_margin":"0 2px 2px 2px","album_compact_gal_title_shadow":"0px 0px 0px #888888","album_compact_gal_title_align":"center","album_extended_thumb_margin":0,"album_extended_thumb_padding":0,"album_extended_thumb_border_radius":"10px","album_extended_thumb_border_width":0,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"FAFAFA","album_extended_thumb_bg_color":"FFFFFF","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":0,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"none","album_extended_thumb_hover_effect_value":"1.03","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"Ubuntu","album_extended_back_font_size":20,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FAFAFA","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"14px","album_extended_div_margin":"20px 20px 0px 0px","album_extended_div_padding":0,"album_extended_div_separator_width":0,"album_extended_div_separator_style":"solid","album_extended_div_separator_color":"E0E0E0","album_extended_thumb_div_bg_color":"FAFAFA","album_extended_thumb_div_border_radius":"","album_extended_thumb_div_border_width":0,"album_extended_thumb_div_border_style":"none","album_extended_thumb_div_border_color":"E8E8E8","album_extended_thumb_div_padding":"14px","album_extended_text_div_bg_color":"FAFAFA","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":0,"album_extended_text_div_border_style":"none","album_extended_text_div_border_color":"E8E8E8","album_extended_title_desc_alignment":"top","album_extended_text_div_padding":"16px","album_extended_title_span_border_width":0,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"Ubuntu","album_extended_title_font_size":22,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":0,"album_extended_title_padding":"0px 0px 0px 0px","album_extended_desc_span_border_width":0,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"5C5C5C","album_extended_desc_font_style":"Ubuntu","album_extended_desc_font_size":16,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"0px 0px 0px 0px","album_extended_desc_more_color":"007AFF","album_extended_desc_more_size":12,"album_extended_gal_title_font_color":"CCCCCC","album_extended_gal_title_font_style":"Ubuntu","album_extended_gal_title_font_size":16,"album_extended_gal_title_font_weight":"bold","album_extended_gal_title_margin":"2px","album_extended_gal_title_shadow":"0px 0px 0px #888888","album_extended_gal_title_align":"right","slideshow_cont_bg_color":"F2F2F2","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"FFFFFF","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"","slideshow_rl_btn_color":"D6D6D6","slideshow_rl_btn_height":37,"slideshow_rl_btn_size":12,"slideshow_rl_btn_width":37,"slideshow_close_rl_btn_hover_color":"BABABA","slideshow_filmstrip_pos":"bottom","slideshow_filmstrip_thumb_border_width":0,"slideshow_filmstrip_thumb_border_style":"none","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0px 2px 0 0 ","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":100,"slideshow_filmstrip_rl_bg_color":"F2F2F2","slideshow_filmstrip_rl_btn_color":"BABABA","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"Ubuntu","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"0 0 0 0","slideshow_description_font_size":14,"slideshow_description_font":"Ubuntu","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":12,"slideshow_dots_height":12,"slideshow_dots_border_radius":"5px","slideshow_dots_background_color":"F2D22E","slideshow_dots_margin":3,"slideshow_dots_active_background_color":"FFFFFF","slideshow_dots_active_border_width":1,"slideshow_dots_active_border_color":"000000","slideshow_play_pause_btn_size":35,"slideshow_rl_btn_style":"fa-chevron","masonry_thumb_padding":"4","masonry_container_margin":"1","masonry_thumb_border_width":"0","masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumb_border_radius":"0","masonry_thumb_hover_effect":"zoom","masonry_thumb_hover_effect_value":"1.08","masonry_thumb_transition":"1","masonry_thumb_bg_color":"000000","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":"0","masonry_thumb_transparent":"100","masonry_thumb_align":"center","masonry_thumb_title_font_size":16,"masonry_thumb_title_font_color":"323A45","masonry_thumb_title_font_color_hover":"FFFFFF","masonry_thumb_title_font_style":"Ubuntu","masonry_thumb_title_font_weight":"bold","masonry_thumb_title_margin":"2px","masonry_description_font_size":16,"masonry_description_color":"323A45","masonry_description_font_style":"Ubuntu","masonry_thumb_gal_title_font_color":"323A45","masonry_thumb_gal_title_font_style":"Ubuntu","masonry_thumb_gal_title_font_size":16,"masonry_thumb_gal_title_font_weight":"bold","masonry_thumb_gal_title_margin":"2px","masonry_thumb_gal_title_shadow":"","masonry_thumb_gal_title_align":"center","mosaic_thumb_padding":"2","mosaic_container_margin":"1","mosaic_thumb_border_radius":"0","mosaic_thumb_border_width":"0","mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumb_bg_color":"000000","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":"0","mosaic_thumb_transparent":"100","mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"zoom","mosaic_thumb_hover_effect_value":"1.08","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_font_style":"Ubuntu","mosaic_thumb_title_font_color":"323A45","mosaic_thumb_title_font_color_hover":"FFFFFF","mosaic_thumb_title_shadow":"","mosaic_thumb_title_font_size":16,"mosaic_thumb_gal_title_font_color":"323A45","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_gal_title_font_style":"Ubuntu","mosaic_thumb_gal_title_font_size":16,"mosaic_thumb_gal_title_font_weight":"bold","mosaic_thumb_gal_title_margin":"2px","mosaic_thumb_gal_title_shadow":"","mosaic_thumb_gal_title_align":"center","lightbox_info_pos":"bottom","lightbox_info_align":"left","lightbox_info_bg_color":"FFFFFF","lightbox_info_bg_transparent":"70","lightbox_info_border_width":"1","lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"0px","lightbox_info_padding":"10px 7px 44px 10px","lightbox_info_margin":"10px 10px -5px 10px","lightbox_title_color":"808080","lightbox_title_font_style":"Ubuntu","lightbox_title_font_weight":"bold","lightbox_title_font_size":"16","lightbox_description_color":"B0B0B0","lightbox_description_font_style":"Ubuntu","lightbox_description_font_weight":"bold","lightbox_description_font_size":"13","lightbox_rate_pos":"top","lightbox_rate_align":"left","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":"20","lightbox_rate_stars_count":"5","lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":"70","lightbox_hit_border_width":"1","lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"Ubuntu","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"album_masonry_back_font_color":"323A45","album_masonry_back_font_style":"Ubuntu","album_masonry_back_font_size":15,"album_masonry_back_font_weight":"bold","album_masonry_back_padding":"0","album_masonry_title_font_color":"323A45","album_masonry_title_font_style":"Ubuntu","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"","album_masonry_title_shadow":"0px 0px 0px #888888","album_masonry_thumb_margin":0,"album_masonry_thumb_padding":4,"album_masonry_thumb_border_radius":"0","album_masonry_container_margin":1,"album_masonry_thumb_border_width":0,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"CCCCCC","album_masonry_thumb_bg_color":"000000","album_masonry_thumb_title_font_color_hover":"FFFFFF","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":0,"album_masonry_thumb_box_shadow":"","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"zoom","album_masonry_thumb_hover_effect_value":"1.08","album_masonry_thumb_transition":1,"album_masonry_gal_title_font_color":"323A45","album_masonry_gal_title_font_style":"Ubuntu","album_masonry_gal_title_font_size":18,"album_masonry_gal_title_font_weight":"bold","album_masonry_gal_title_margin":"0 2px 2px 2px","album_masonry_gal_title_shadow":"0px 0px 0px #888888","album_masonry_gal_title_align":"center","carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":50,"carousel_rl_btn_bg_color":"FFFFFF","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"303030","carousel_rl_btn_height":35,"carousel_rl_btn_size":15,"carousel_play_pause_btn_size":25,"carousel_rl_btn_width":35,"carousel_close_rl_btn_hover_color":"191919","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"arial","carousel_feature_border_width":2,"carousel_feature_border_style":"none","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"FFFFFF","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":"1"}', 1),
(2, 'Dark', '{"thumb_margin":"4","album_compact_title_font_color_hover":"FFFFFF","compact_container_margin":"1","container_margin":"1","thumb_padding":"0","thumb_border_radius":"0","thumb_border_width":5,"thumb_border_style":"none","thumb_border_color":"FFFFFF","thumb_bg_color":"000000","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"zoom","thumb_hover_effect_value":"1.08","thumb_transition":1,"thumb_title_margin":"5px","thumb_title_font_style":"Ubuntu","thumb_title_pos":"bottom","thumb_title_font_color":"323A45","thumb_title_font_color_hover":"FFFFFF","thumb_title_shadow":"","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_gal_title_font_color":"323A45","thumb_gal_title_font_style":"Ubuntu","thumb_gal_title_font_size":18,"thumb_gal_title_font_weight":"bold","thumb_gal_title_margin":"2px","thumb_gal_title_shadow":"","thumb_gal_title_align":"center","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"Ubuntu","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"none","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FCFCFC","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":80,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_border_radius":4,"lightbox_ctrl_cont_transparent":80,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_width":0,"lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"","lightbox_close_btn_size":10,"lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_overlay_bg_color":"000000","lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_close_btn_transparent":95,"lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_transparent":80,"lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":2,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"FFFFFF","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"Ubuntu","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"333333","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"3px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"2B2B2B","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"FFFFFF","lightbox_filmstrip_rl_bg_color":"2B2B2B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"none","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_pos":"top","lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_rl_btn_style":"fa-chevron","lightbox_bg_transparent":100,"blog_style_margin":"2px","blog_style_padding":"4px","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"none","blog_style_border_color":"CCCCCC","blog_style_bg_color":"E8E8E8","blog_style_transparent":70,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"Ubuntu","blog_style_img_font_color":"000000","blog_style_share_buttons_font_size":20,"blog_style_share_buttons_color":"A1A1A1","blog_style_share_buttons_bg_transparent":0,"blog_style_gal_title_font_color":"323A45","blog_style_gal_title_font_style":"Ubuntu","blog_style_gal_title_font_size":16,"blog_style_gal_title_font_weight":"bold","blog_style_gal_title_margin":"2px","blog_style_gal_title_shadow":"0px 0px 0px #888888","blog_style_gal_title_align":"center","image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"2px","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"E8E8E8","image_browser_bg_color":"E8E8E8","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"24px 0px 0px 0px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"E8E8E8","image_browser_image_description_align":"center","image_browser_img_font_size":14,"image_browser_img_font_family":"Ubuntu","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":1,"image_browser_full_border_style":"solid","image_browser_full_border_color":"EDEDED","image_browser_full_bg_color":"FFFFFF","image_browser_full_transparent":90,"image_browser_image_title_align":"top","image_browser_gal_title_font_color":"323A45","image_browser_gal_title_font_style":"Ubuntu","image_browser_gal_title_font_size":16,"image_browser_gal_title_font_weight":"bold","image_browser_gal_title_margin":"2px","image_browser_gal_title_shadow":"0px 0px 0px #888888","image_browser_gal_title_align":"center","album_compact_title_margin":"5px","album_compact_thumb_margin":4,"album_compact_back_padding":"0","album_compact_thumb_padding":4,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":1,"album_compact_title_font_style":"Ubuntu","album_compact_back_font_color":"323A45","album_compact_title_font_color":"CCCCCC","album_compact_title_shadow":"","album_compact_thumb_bg_transparent":100,"album_compact_thumb_box_shadow":"","album_compact_thumb_transition":1,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"000000","album_compact_thumb_bg_color":"000000","album_compact_back_font_weight":"normal","album_compact_back_font_size":15,"album_compact_back_font_style":"Ubuntu","album_compact_thumb_title_pos":"bottom","album_compact_thumbs_bg_color":"FFFFFF","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"rotate","album_compact_thumb_transparent":100,"album_compact_thumb_hover_effect_value":"2deg","album_compact_gal_title_font_color":"323A45","album_compact_gal_title_font_style":"Ubuntu","album_compact_gal_title_font_size":18,"album_compact_gal_title_font_weight":"bold","album_compact_gal_title_margin":"0 2px 2px 2px","album_compact_gal_title_shadow":"0px 0px 0px #888888","album_compact_gal_title_align":"center","album_extended_thumb_margin":2,"album_extended_thumb_padding":4,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":4,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"E8E8E8","album_extended_thumb_bg_color":"E8E8E8","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":100,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"rotate","album_extended_thumb_hover_effect_value":"2deg","album_extended_thumb_transition":0,"album_extended_back_font_color":"323A45","album_extended_back_font_style":"Ubuntu","album_extended_back_font_size":15,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"none","album_extended_div_separator_color":"CCCCCC","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"","album_extended_thumb_div_border_width":0,"album_extended_thumb_div_border_style":"none","album_extended_thumb_div_border_color":"CCCCCC","album_extended_thumb_div_padding":"0","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"none","album_extended_text_div_border_color":"CCCCCC","album_extended_title_desc_alignment":"top","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"Ubuntu","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"Ubuntu","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"FFC933","album_extended_desc_more_size":12,"album_extended_gal_title_font_color":"323A45","album_extended_gal_title_font_style":"Ubuntu","album_extended_gal_title_font_size":18,"album_extended_gal_title_font_weight":"bold","album_extended_gal_title_margin":"0 2px 2px 2px","album_extended_gal_title_shadow":"0px 0px 0px #888888","album_extended_gal_title_align":"center","slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"DBDBDB","slideshow_filmstrip_pos":"bottom","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"none","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"303030","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"Ubuntu","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"5px 10px 5px 10px","slideshow_description_font_size":14,"slideshow_description_font":"Ubuntu","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":10,"slideshow_dots_height":10,"slideshow_dots_border_radius":"10px","slideshow_dots_background_color":"292929","slideshow_dots_margin":1,"slideshow_dots_active_background_color":"292929","slideshow_dots_active_border_width":2,"slideshow_dots_active_border_color":"FFC933","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","masonry_thumb_padding":4,"masonry_container_margin":"1","masonry_thumb_border_width":1,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumb_border_radius":"2px","masonry_thumb_hover_effect":"zoom","masonry_thumb_hover_effect_value":"1.08","masonry_thumb_transition":1,"masonry_thumb_bg_color":"000000","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":80,"masonry_thumb_align":"center","masonry_thumb_title_font_size":16,"masonry_thumb_title_font_color":"323A45","masonry_thumb_title_font_color_hover":"FFFFFF","masonry_thumb_title_font_style":"Ubuntu","masonry_thumb_title_font_weight":"bold","masonry_thumb_title_margin":"2px","masonry_description_font_size":16,"masonry_description_color":"323A45","masonry_description_font_style":"Ubuntu","masonry_thumb_gal_title_font_color":"323A45","masonry_thumb_gal_title_font_style":"Ubuntu","masonry_thumb_gal_title_font_size":16,"masonry_thumb_gal_title_font_weight":"bold","masonry_thumb_gal_title_margin":"2px","masonry_thumb_gal_title_shadow":"","masonry_thumb_gal_title_align":"center","mosaic_container_margin":"1","mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"2px","mosaic_thumb_border_width":1,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumb_bg_color":"000000","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":80,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"rotate","mosaic_thumb_hover_effect_value":"2deg","mosaic_thumb_title_font_color":"323A45","mosaic_thumb_title_font_style":"Ubuntu","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"mosaic_thumb_gal_title_font_color":"323A45","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_gal_title_font_style":"Ubuntu","mosaic_thumb_gal_title_font_size":16,"mosaic_thumb_gal_title_font_weight":"bold","mosaic_thumb_gal_title_margin":"2px","mosaic_thumb_gal_title_shadow":"","mosaic_thumb_gal_title_align":"center","lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"Ubuntu","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"Ubuntu","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"Ubuntu","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"album_masonry_back_font_color":"323A45","album_masonry_back_font_style":"Ubuntu","album_masonry_back_font_size":15,"album_masonry_back_font_weight":"normal","album_masonry_back_padding":"0","album_masonry_title_font_color":"323A45","album_masonry_thumb_title_font_color_hover":"FFFFFF","album_masonry_title_font_style":"Ubuntu","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"5px","album_masonry_title_shadow":"","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":4,"album_masonry_thumb_border_radius":"0","album_masonry_container_margin":1,"album_masonry_thumb_border_width":1,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"000000","album_masonry_thumb_bg_color":"000000","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":100,"album_masonry_thumb_box_shadow":"","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"zoom","album_masonry_thumb_hover_effect_value":"2deg","album_masonry_thumb_transition":1,"album_masonry_gal_title_font_color":"323A45","album_masonry_gal_title_font_style":"Ubuntu","album_masonry_gal_title_font_size":18,"album_masonry_gal_title_font_weight":"bold","album_masonry_gal_title_margin":"0 2px 2px 2px","album_masonry_gal_title_shadow":"0px 0px 0px #888888","album_masonry_gal_title_align":"center","carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"Ubuntu","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"FFFFFF","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":1}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_commentmeta`
--

CREATE TABLE `jawi_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_comments`
--

CREATE TABLE `jawi_comments` (
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
-- Dumping data for table `jawi_comments`
--

INSERT INTO `jawi_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-11 20:34:03', '2018-12-11 13:34:03', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(3, 36, 'WooCommerce', '', '', '', '2018-12-13 17:55:20', '2018-12-13 10:55:20', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 37, 'WooCommerce', '', '', '', '2018-12-13 19:28:02', '2018-12-13 12:28:02', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 37, 'Mimin2018', 'faisalrmadjid@gmail.com', '', '', '2018-12-13 19:39:13', '2018-12-13 12:39:13', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 38, 'WooCommerce', '', '', '', '2018-12-15 13:41:37', '2018-12-15 06:41:37', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_links`
--

CREATE TABLE `jawi_links` (
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
-- Table structure for table `jawi_options`
--

CREATE TABLE `jawi_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_options`
--

INSERT INTO `jawi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/kedai', 'yes'),
(2, 'home', 'http://localhost/kedai', 'yes'),
(3, 'blogname', 'Kedai De Jawi', 'yes'),
(4, 'blogdescription', 'Moto situs Anda bisa diletakkan di sini', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'faisalrmadjid@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
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
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:1;s:15:"kirki/kirki.php";i:2;s:77:"non-purchasable-woocommerce-products/non-purchasable-woocommerce-products.php";i:3;s:49:"smart-manager-for-wp-e-commerce/smart-manager.php";i:4;s:56:"woo-confirmation-email/woocommerc-confirmation-email.php";i:5;s:75:"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php";i:6;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:7;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tyche', 'yes'),
(41, 'stylesheet', 'tyche', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:4:{s:5:"title";s:3:"bug";s:4:"text";s:0:"";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '11', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'Jawi_user_roles', 'a:8:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:93:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:11:"phoen_agent";a:2:{s:4:"name";s:5:"Agent";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'id_ID', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;i:4;a:3:{s:5:"title";s:9:"Terbaru!!";s:6:"number";i:5;s:9:"show_date";b:1;}}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;i:4;a:3:{s:5:"title";s:5:"Arsip";s:5:"count";i:0;s:8:"dropdown";i:0;}}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:16:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:0:{}s:14:"content-area-1";a:2:{i:0;s:16:"tyche_products-6";i:1;s:14:"tyche_recent-6";}s:16:"content-area-2-a";a:0:{}s:16:"content-area-2-b";a:0:{}s:16:"content-area-2-c";a:0:{}s:14:"content-area-3";a:0:{}s:16:"content-area-4-a";a:0:{}s:16:"content-area-4-b";a:0:{}s:14:"content-area-5";a:0:{}s:12:"shop-sidebar";a:1:{i:0;s:32:"woocommerce_product_categories-3";}s:16:"footer-sidebar-1";a:1:{i:0;s:32:"woocommerce_product_categories-4";}s:16:"footer-sidebar-2";a:0:{}s:16:"footer-sidebar-3";a:0:{}s:16:"footer-sidebar-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:15:{i:1547909763;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1547910488;a:1:{s:24:"aiowps_hourly_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1547912049;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1547916062;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547917200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547926862;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547933679;a:1:{s:30:"xl_maybe_track_usage_scheduled";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547948050;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547991297;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547991661;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547991672;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547991991;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547993289;a:1:{s:23:"aiowps_daily_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1548936000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1544538932;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(145, 'db_upgraded', '', 'yes'),
(148, 'can_compress_scripts', '1', 'no'),
(157, 'woocommerce_store_address', 'Jl. Parung Serab No.89, Sukahati, Cibinong, Bogor, Jawa Barat 16913', 'yes'),
(158, 'woocommerce_store_address_2', '', 'yes'),
(159, 'woocommerce_store_city', 'Bogor', 'yes'),
(160, 'woocommerce_default_country', 'ID:JB', 'yes'),
(161, 'woocommerce_store_postcode', '16913', 'yes'),
(162, 'woocommerce_allowed_countries', 'all', 'yes'),
(163, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(165, 'woocommerce_ship_to_countries', '', 'yes'),
(166, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(167, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(168, 'woocommerce_calc_taxes', 'no', 'yes'),
(169, 'woocommerce_enable_coupons', 'yes', 'yes'),
(170, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(171, 'woocommerce_currency', 'IDR', 'yes'),
(172, 'woocommerce_currency_pos', 'left', 'yes'),
(173, 'woocommerce_price_thousand_sep', '.', 'yes'),
(174, 'woocommerce_price_decimal_sep', ',', 'yes'),
(175, 'woocommerce_price_num_decimals', '0', 'yes'),
(176, 'woocommerce_shop_page_id', '34', 'yes'),
(177, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(178, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(179, 'woocommerce_placeholder_image', '', 'yes'),
(180, 'woocommerce_weight_unit', 'kg', 'yes'),
(181, 'woocommerce_dimension_unit', 'cm', 'yes'),
(182, 'woocommerce_enable_reviews', 'yes', 'yes'),
(183, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(184, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(185, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(186, 'woocommerce_review_rating_required', 'no', 'no'),
(187, 'woocommerce_manage_stock', 'no', 'yes'),
(188, 'woocommerce_hold_stock_minutes', '60', 'no'),
(189, 'woocommerce_notify_low_stock', 'yes', 'no'),
(190, 'woocommerce_notify_no_stock', 'yes', 'no'),
(191, 'woocommerce_stock_email_recipient', 'faisalrmadjid@gmail.com', 'no'),
(192, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(193, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(194, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(195, 'woocommerce_stock_format', 'no_amount', 'yes'),
(196, 'woocommerce_file_download_method', 'force', 'no'),
(197, 'woocommerce_downloads_require_login', 'no', 'no'),
(198, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(199, 'woocommerce_prices_include_tax', 'no', 'yes'),
(200, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(201, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(202, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(203, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(204, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(205, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(206, 'woocommerce_price_display_suffix', '', 'yes'),
(207, 'woocommerce_tax_total_display', 'itemized', 'no'),
(208, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(209, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(210, 'woocommerce_ship_to_destination', 'billing', 'no'),
(211, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(212, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(213, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(214, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(215, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(216, 'woocommerce_registration_generate_username', 'yes', 'no'),
(217, 'woocommerce_registration_generate_password', 'no', 'no'),
(218, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(219, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(220, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(221, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(222, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(223, 'woocommerce_trash_pending_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(224, 'woocommerce_trash_failed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(225, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(226, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(227, 'woocommerce_email_from_name', 'Kedai De Jawi', 'no'),
(228, 'woocommerce_email_from_address', 'faisalrmadjid@gmail.com', 'no'),
(229, 'woocommerce_email_header_image', '', 'no'),
(230, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href="https://woocommerce.com/">WooCommerce</a>', 'no'),
(231, 'woocommerce_email_base_color', '#96588a', 'no'),
(232, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(233, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(234, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(235, 'woocommerce_cart_page_id', '6', 'yes'),
(236, 'woocommerce_checkout_page_id', '7', 'yes'),
(237, 'woocommerce_myaccount_page_id', '8', 'yes'),
(238, 'woocommerce_terms_page_id', '', 'no'),
(239, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(241, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(242, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(243, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(244, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(245, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(246, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(247, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(248, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(249, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(250, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(251, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(252, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(253, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(254, 'woocommerce_api_enabled', 'no', 'yes'),
(255, 'woocommerce_single_image_width', '600', 'yes'),
(256, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(257, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(258, 'woocommerce_demo_store', 'no', 'no'),
(259, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(260, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(261, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(262, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(264, 'default_product_cat', '15', 'yes'),
(267, 'woocommerce_version', '3.5.2', 'yes'),
(268, 'woocommerce_db_version', '3.5.2', 'yes'),
(269, 'recently_activated', 'a:2:{s:31:"photo-gallery/photo-gallery.php";i:1547906221;s:59:"restaurant-menu-using-woocommerce/pisol_restaurant_menu.php";i:1547906200;}', 'yes'),
(270, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
(271, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(272, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(273, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_price_filter', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(276, 'widget_woocommerce_product_categories', 'a:3:{i:3;a:8:{s:5:"title";s:18:"Product categories";s:7:"orderby";s:5:"order";s:8:"dropdown";i:0;s:5:"count";i:1;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;s:9:"max_depth";s:0:"";}i:4;a:8:{s:5:"title";s:18:"Product categories";s:7:"orderby";s:5:"order";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:0;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;s:9:"max_depth";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_search', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:1:{s:5:"title";s:4:"Cari";}i:4;a:1:{s:5:"title";s:4:"Cari";}}', 'yes'),
(278, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_products', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:7:{s:5:"title";s:8:"Products";s:6:"number";i:5;s:4:"show";s:0:"";s:7:"orderby";s:5:"price";s:5:"order";s:4:"desc";s:9:"hide_free";i:0;s:11:"show_hidden";i:0;}}', 'yes'),
(280, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(288, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(294, 'woocommerce_product_type', 'physical', 'yes'),
(295, 'woocommerce_allow_tracking', 'no', 'yes'),
(297, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(298, 'woocommerce_bacs_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:5:"title";s:13:"Transfer Bank";s:11:"description";s:44:"Bayar melalui transfer ke rekening bank kami";s:12:"instructions";s:388:"Instruksi:\r\n1.Datangi Bank/ATM/M-Banking anda\r\n2.Lakukan seperti transfer biasa ke rekening kami\r\n3.Masukan NOMER ORDER sebagai NOMER REFERENSI TRANSAKSI (jika nomer referensi kosong maka pesanan tidak dapat di proses)\r\n4.Jika kami sudah menerima pembayaran maka anda dapat melihat status pemesanan (di laman Akun) menjadi proses\r\n5.Kami akan mengantar ke alamat yang tertera pada pesanan";s:15:"account_details";s:0:"";}', 'yes'),
(299, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(300, '_transient_shipping-transient-version', '1544696085', 'yes'),
(301, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:"title";s:6:"Ongkir";s:10:"tax_status";s:4:"none";s:4:"cost";s:5:"10000";}', 'yes'),
(305, '_transient_product_query-transient-version', '1546705744', 'yes'),
(311, '_transient_product-transient-version', '1546705744', 'yes'),
(339, 'aiowpsec_db_version', '1.9', 'yes'),
(340, 'aio_wp_security_configs', 'a:91:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:0:"";s:28:"aiowps_allow_unlock_requests";s:0:"";s:25:"aiowps_max_login_attempts";s:1:"3";s:24:"aiowps_retry_time_period";s:1:"5";s:26:"aiowps_lockout_time_length";s:2:"60";s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:23:"faisalrmadjid@gmail.com";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:43:"aiowps_instantly_lockout_specific_usernames";a:0:{}s:32:"aiowps_unlock_request_secret_key";s:20:"t4aa5sbp57b8bfiol1me";s:35:"aiowps_lockdown_enable_whitelisting";s:0:"";s:36:"aiowps_lockdown_allowed_ip_addresses";s:0:"";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:31:"aiowps_enable_woo_login_captcha";s:0:"";s:34:"aiowps_enable_woo_register_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"v4dmh0h97cj5i5q6d3sn";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:1:"1";s:35:"aiowps_enable_registration_honeypot";s:1:"1";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:0:"";s:26:"aiowps_db_backup_frequency";s:1:"4";s:25:"aiowps_db_backup_interval";s:1:"2";s:26:"aiowps_backup_files_stored";s:1:"2";s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:23:"faisalrmadjid@gmail.com";s:27:"aiowps_disable_file_editing";s:0:"";s:37:"aiowps_prevent_default_wp_file_access";s:0:"";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:0:"";s:31:"aiowps_enable_pingback_firewall";s:0:"";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:0:"";s:34:"aiowps_block_debug_log_file_access";s:0:"";s:26:"aiowps_disable_index_views";s:0:"";s:30:"aiowps_disable_trace_and_track";s:0:"";s:28:"aiowps_forbid_proxy_comments";s:0:"";s:29:"aiowps_deny_bad_query_strings";s:0:"";s:34:"aiowps_advanced_char_string_filter";s:0:"";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:0:"";s:26:"aiowps_enable_custom_rules";s:0:"";s:32:"aiowps_place_custom_rules_at_top";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:1:"1";s:28:"aiowps_enable_login_honeypot";s:1:"1";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:82:"Saat Ini Situs Dalam Perbaikan...\r\n\r\nSilahkan hubungi (021)8781222 untuk pemesanan";s:30:"aiowps_enable_spambot_blocking";s:0:"";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:33:"aiowps_enable_bp_register_captcha";s:0:"";s:35:"aiowps_enable_bbp_new_topic_captcha";s:0:"";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";s:1:"4";s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:0:"";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:23:"faisalrmadjid@gmail.com";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:0:"";s:32:"aiowps_prevent_users_enumeration";s:0:"";s:42:"aiowps_disallow_unauthorized_rest_requests";s:0:"";s:25:"aiowps_ip_retrieve_method";s:1:"0";s:25:"aiowps_recaptcha_site_key";s:0:"";s:27:"aiowps_recaptcha_secret_key";s:0:"";s:24:"aiowps_default_recaptcha";s:0:"";s:22:"aiowps_login_page_slug";s:4:"atur";}', 'yes'),
(341, 'phoen-endpoint-support-ticket', 'a:4:{s:6:"active";s:1:"1";s:4:"slug";s:14:"support-ticket";s:5:"label";s:14:"Support Ticket";s:4:"type";s:3:"pre";}', 'yes'),
(342, 'myaccount_general_setting', 'a:4:{s:35:"phoen_custom_my_account_nonce_field";s:10:"6e4b9b61e3";s:16:"_wp_http_referer";s:53:"/kedai/wp-admin/admin.php?page=phoe_myaccount_setting";s:19:"phoen_enable_plugin";s:6:"enable";s:15:"update_settings";s:12:"Save changes";}', 'yes'),
(343, 'phoen-endpoint', 'dashboard,downloads,orders,edit-account,edit-address,customer-logout,support-ticket', 'yes'),
(344, 'phoen-endpoint-dashboard', 'a:4:{s:6:"active";s:1:"1";s:5:"label";s:9:"Dashboard";s:4:"type";s:3:"pre";s:7:"content";s:0:"";}', 'yes'),
(345, 'phoen-endpoint-downloads', 'a:5:{s:6:"active";s:1:"1";s:4:"slug";s:9:"downloads";s:5:"label";s:12:"My Downloads";s:4:"type";s:3:"pre";s:7:"content";s:22:"[my_downloads_content]";}', 'yes'),
(346, 'phoen-endpoint-orders', 'a:5:{s:6:"active";s:1:"1";s:4:"slug";s:6:"orders";s:5:"label";s:9:"My Orders";s:4:"type";s:3:"pre";s:7:"content";s:20:"[view_order_content]";}', 'yes'),
(347, 'phoen-endpoint-edit-account', 'a:5:{s:6:"active";s:1:"1";s:4:"slug";s:12:"edit-account";s:5:"label";s:12:"Edit Account";s:4:"type";s:3:"pre";s:7:"content";s:0:"";}', 'yes'),
(348, 'phoen-endpoint-edit-address', 'a:5:{s:6:"active";s:1:"1";s:4:"slug";s:12:"edit-address";s:5:"label";s:12:"Edit Address";s:4:"type";s:3:"pre";s:7:"content";s:0:"";}', 'yes'),
(349, 'phoen-endpoint-customer-logout', 'a:5:{s:6:"active";s:1:"1";s:4:"slug";s:15:"customer-logout";s:5:"label";s:6:"Logout";s:4:"type";s:3:"pre";s:7:"content";s:0:"";}', 'yes'),
(350, 'new_plugin_activated', '1', 'yes'),
(356, 'is_new_version_saved', '1', 'no'),
(357, 'wuev-email-template', 'a:6:{s:26:"xlwuev_verification_method";s:1:"1";s:24:"xlwuev_verification_type";s:1:"1";s:20:"xlwuev_email_subject";s:41:"Verifikasi Akun ({{xlwuev_display_name}})";s:20:"xlwuev_email_heading";s:51:"Harap Verifikasi Akun Anda({{xlwuev_display_name}})";s:17:"xlwuev_email_body";s:95:"Please Verify your Email Account by clicking on the following link. {{wcemailverificationcode}}";s:19:"xlwuev_email_header";s:709:" \r\n<table style="width: 700px; margin: auto; text-align: center; border: 1px solid #eee; font-family: sans-serif;">\r\n<thead>\r\n<tr>\r\n<td style="color: black; font-size: 33px; background: yellow; text-align: center; padding: 26px 0px;"> Email Verification</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style="padding: 22px; font-size: 19px;">Silahkan lakukan verifikasi terhadap akun berikut:\r\n\r\nUsername: {{xlwuev_user_login}}\r\n\r\ncukup dengan klik link dibawah ini:</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 0 22px 10px 22px; font-size: 19px;">{{wcemailverificationcode}}</td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n<td style="color: #000; padding: 15px; background: #e4e4e4;">{{sitename}}</td>\r\n</tr>\r\n</tfoot>\r\n</table>";}', 'yes'),
(358, 'xl_check_server_email', 'yes', 'yes'),
(361, 'wuev-messages', 'a:6:{s:33:"xlwuev_email_registration_message";s:82:"Kami telah mengirim kode verfikasi. Silahkan cek email anda {{xlwuev_resend_link}}";s:28:"xlwuev_email_success_message";s:37:"Yayy! Email Anda sudah ter verifikasi";s:34:"xlwuev_email_new_verification_link";s:60:"Kode baru telah dikirim! Check email. {{xlwuev_resend_link}}";s:38:"xlwuev_email_verification_already_done";s:37:"Yayy! Email Anda sudah ter verifikasi";s:32:"xlwuev_email_resend_confirmation";s:45:"Klik disini untuk kirim ulang kode verifikasi";s:39:"xlwuev_email_new_verification_link_text";s:20:"Click here to verify";}', 'yes'),
(363, 'wuev-general-settings', 'a:8:{s:20:"xlwuev_restrict_user";s:1:"1";s:47:"xlwuev_email_error_message_not_verified_outside";s:82:"Anda HARUS verifikasi akun melalui email anda sebelum login!{{xlwuev_resend_link}}";s:46:"xlwuev_email_error_message_not_verified_inside";s:50:"Harap Verifikasi Email Anda {{xlwuev_resend_link}}";s:24:"xlwuev_verification_page";s:1:"1";s:27:"xlwuev_verification_page_id";s:2:"13";s:30:"xlwuev_verification_error_page";s:1:"1";s:33:"xlwuev_verification_error_page_id";s:2:"13";s:27:"xlwuev_automatic_user_login";s:1:"2";}', 'yes'),
(376, 'xl_email_services', 'yes', 'yes'),
(378, 'xl_takeover_notice', 'yes', 'yes'),
(379, 'xl_is_opted', 'no', 'no'),
(392, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:"title";s:6:"Ongkir";s:10:"tax_status";s:4:"none";s:4:"cost";s:5:"10000";}', 'yes'),
(399, 'woocommerce_flat_rate_3_settings', 'a:3:{s:5:"title";s:6:"Ongkir";s:10:"tax_status";s:4:"none";s:4:"cost";s:5:"10000";}', 'yes'),
(408, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:"account_name";s:4:"Jawi";s:14:"account_number";s:4:"1234";s:9:"bank_name";s:5:"Bankk";s:9:"sort_code";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}}', 'yes'),
(423, 'current_theme', 'Tyche', 'yes'),
(424, 'theme_mods_tyche', 'a:24:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:16;}s:18:"custom_css_post_id";i:-1;s:15:"tyche_slider_bg";a:3:{i:0;a:7:{s:8:"image_bg";i:26;s:8:"cta_text";s:6:"Aqiqah";s:11:"cta_subtext";s:13:"Kedai De Jawi";s:15:"button_one_text";s:0:"";s:14:"button_one_url";s:0:"";s:15:"button_two_text";s:14:"Pesan Sekarang";s:14:"button_two_url";s:46:"http://localhost/kedai/index.php/paket-aqiqah/";}i:1;a:7:{s:8:"image_bg";i:53;s:8:"cta_text";s:4:"2016";s:11:"cta_subtext";s:17:"Autumn Collection";s:15:"button_one_text";s:8:"Shop Now";s:14:"button_one_url";s:20:"https://colorlib.com";s:15:"button_two_text";s:10:"Learn More";s:14:"button_two_url";s:20:"https://colorlib.com";}i:2;a:7:{s:8:"image_bg";s:2:"55";s:8:"cta_text";s:4:"2016";s:11:"cta_subtext";s:17:"Autumn Collection";s:15:"button_one_text";s:8:"Shop Now";s:14:"button_one_url";s:20:"https://colorlib.com";s:15:"button_two_text";s:10:"Learn More";s:14:"button_two_url";s:20:"https://colorlib.com";}}s:30:"tyche_shop_full_width_products";s:1:"6";s:26:"tyche_shop_sidebar_columns";s:1:"4";s:19:"tyche_slider_layout";s:6:"center";s:29:"tyche_enable_post_breadcrumbs";b:0;s:19:"tyche_contact_phone";s:12:"(021)8781222";s:21:"tyche_contact_address";s:67:"Jl. Parung Serab No.89, Sukahati, Cibinong, Bogor, Jawa Barat 16913";s:32:"tyche_contact_page_shortcode_map";s:0:"";s:21:"info_section_two_text";s:12:"Hubungi Kami";s:24:"info_section_two_subtext";s:12:"(021)8781222";s:21:"info_section_two_icon";s:5:"phone";s:23:"info_section_three_text";s:11:"Lokasi Kami";s:26:"info_section_three_subtext";s:32:"Jl. Parung Serab No.89, Cibinong";s:23:"info_section_three_icon";s:8:"location";s:20:"tyche_enable_top_bar";b:0;s:17:"tyche_show_banner";b:0;s:16:"header_textcolor";s:5:"blank";s:21:"info_section_one_text";s:20:"Follow Our Instagram";s:24:"info_section_one_subtext";s:12:"@kedaidejawi";s:21:"info_section_one_icon";s:6:"camera";s:17:"tyche_shop_layout";s:9:"fullwidth";}', 'yes'),
(425, 'theme_switched', '', 'yes'),
(426, 'tyche_show_required_actions', 'a:5:{s:39:"tyche-req-ac-install-additional-plugins";b:1;s:37:"tyche-req-ac-install-wp-import-plugin";b:1;s:44:"tyche-req-ac-install-wp-import-widget-plugin";b:1;s:26:"tyche-req-ac-download-data";b:1;s:31:"tyche-req-ac-static-latest-news";b:1;}', 'yes'),
(427, 'widget_tyche_recent', 'a:5:{s:12:"_multiwidget";i:1;i:3;a:5:{s:5:"title";s:12:"Recent Posts";s:10:"show_title";s:3:"yes";s:5:"limit";i:5;s:6:"offset";i:0;s:9:"show_date";s:3:"yes";}i:4;a:5:{s:5:"title";s:12:"Kabar Kami!!";s:10:"show_title";s:3:"yes";s:5:"limit";i:5;s:6:"offset";i:0;s:9:"show_date";s:3:"yes";}i:5;a:5:{s:5:"title";s:12:"Recent Posts";s:10:"show_title";s:3:"yes";s:5:"limit";i:9;s:6:"offset";i:0;s:9:"show_date";s:3:"yes";}i:6;a:0:{}}', 'yes'),
(428, 'widget_tyche_products', 'a:5:{s:12:"_multiwidget";i:1;i:3;a:0:{}i:4;a:12:{s:5:"title";s:12:"Paket Aqiqah";s:10:"show_title";s:3:"yes";s:5:"color";s:7:"primary";s:4:"cats";s:0:"";s:6:"layout";s:8:"layout-c";s:10:"first_line";s:0:"";s:11:"second_line";s:0:"";s:10:"third_line";s:0:"";s:11:"show_rating";s:2:"no";s:11:"button_link";s:0:"";s:12:"button_label";s:0:"";s:5:"image";i:0;}i:5;a:12:{s:5:"title";s:17:"Paket Aqiqah Kami";s:10:"show_title";s:3:"yes";s:5:"color";s:7:"primary";s:4:"cats";s:0:"";s:6:"layout";s:8:"layout-c";s:10:"first_line";s:0:"";s:11:"second_line";s:0:"";s:10:"third_line";s:0:"";s:11:"show_rating";s:2:"no";s:11:"button_link";s:0:"";s:12:"button_label";s:0:"";s:5:"image";i:0;}i:6;a:12:{s:5:"title";s:17:"Paket Aqiqah Kami";s:10:"show_title";s:3:"yes";s:5:"color";s:7:"primary";s:4:"cats";s:0:"";s:6:"layout";s:8:"layout-c";s:10:"first_line";s:0:"";s:11:"second_line";s:0:"";s:10:"third_line";s:0:"";s:11:"show_rating";s:2:"no";s:11:"button_link";s:0:"";s:12:"button_label";s:0:"";s:5:"image";i:0;}}', 'yes'),
(429, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"255";s:6:"height";s:3:"320";s:4:"crop";i:1;}', 'yes'),
(430, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"540";s:6:"height";s:3:"500";s:4:"crop";i:1;}', 'yes'),
(431, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"65";s:6:"height";s:2:"75";s:4:"crop";i:0;}', 'yes'),
(432, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(465, 'ticket_system', '34', 'yes'),
(466, 'phoen_ticket_system_enable', '1', 'yes'),
(468, 'polylang', 'a:13:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:1;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:3:"2.5";s:16:"first_activation";i:1544539905;}', 'yes'),
(469, 'polylang_wpml_strings', 'a:39:{i:0;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:20:"is a required field.";s:6:"string";s:20:"is a required field.";s:9:"multiline";b:1;s:3:"icl";b:1;}i:1;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:7:"Country";s:6:"string";s:7:"Country";s:9:"multiline";b:1;s:3:"icl";b:1;}i:2;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:10:"Nama Depan";s:6:"string";s:10:"Nama Depan";s:9:"multiline";b:1;s:3:"icl";b:1;}i:3;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:14:"Contoh: Haseme";s:6:"string";s:14:"Contoh: Haseme";s:9:"multiline";b:1;s:3:"icl";b:1;}i:4;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:13:"Nama Belakang";s:6:"string";s:13:"Nama Belakang";s:9:"multiline";b:1;s:3:"icl";b:1;}i:5;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:13:"Contoh: Hasim";s:6:"string";s:13:"Contoh: Hasim";s:9:"multiline";b:1;s:3:"icl";b:1;}i:6;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:12:"Company Name";s:6:"string";s:12:"Company Name";s:9:"multiline";b:1;s:3:"icl";b:1;}i:7;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:6:"Alamat";s:6:"string";s:6:"Alamat";s:9:"multiline";b:1;s:3:"icl";b:1;}i:8;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:24:"Contoh: Jl. Melati No,46";s:6:"string";s:24:"Contoh: Jl. Melati No,46";s:9:"multiline";b:1;s:3:"icl";b:1;}i:9;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:38:"Apartment, suite, unit etc. (optional)";s:6:"string";s:38:"Apartment, suite, unit etc. (optional)";s:9:"multiline";b:1;s:3:"icl";b:1;}i:10;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:14:"Kota/Kabupaten";s:6:"string";s:14:"Kota/Kabupaten";s:9:"multiline";b:1;s:3:"icl";b:1;}i:11;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:18:"Contoh: Kota Bogor";s:6:"string";s:18:"Contoh: Kota Bogor";s:9:"multiline";b:1;s:3:"icl";b:1;}i:12;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:5:"State";s:6:"string";s:5:"State";s:9:"multiline";b:1;s:3:"icl";b:1;}i:13;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:8:"Kode Pos";s:6:"string";s:8:"Kode Pos";s:9:"multiline";b:1;s:3:"icl";b:1;}i:14;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:13:"Contoh: 16113";s:6:"string";s:13:"Contoh: 16113";s:9:"multiline";b:1;s:3:"icl";b:1;}i:15;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:12:"Alamat Email";s:6:"string";s:12:"Alamat Email";s:9:"multiline";b:1;s:3:"icl";b:1;}i:16;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:24:"Contoh: Haseme@gmail.com";s:6:"string";s:24:"Contoh: Haseme@gmail.com";s:9:"multiline";b:1;s:3:"icl";b:1;}i:17;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:10:"Telepon/Hp";s:6:"string";s:10:"Telepon/Hp";s:9:"multiline";b:1;s:3:"icl";b:1;}i:18;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:18:"Contoh: 0812341234";s:6:"string";s:18:"Contoh: 0812341234";s:9:"multiline";b:1;s:3:"icl";b:1;}i:19;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:12:"Nama Lengkap";s:6:"string";s:12:"Nama Lengkap";s:9:"multiline";b:1;s:3:"icl";b:1;}i:20;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:21:"Nama Lengkap Penerima";s:6:"string";s:21:"Nama Lengkap Penerima";s:9:"multiline";b:1;s:3:"icl";b:1;}i:21;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:20:"Contoh: Haseme Hasim";s:6:"string";s:20:"Contoh: Haseme Hasim";s:9:"multiline";b:1;s:3:"icl";b:1;}i:22;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:9:"Last Name";s:6:"string";s:9:"Last Name";s:9:"multiline";b:1;s:3:"icl";b:1;}i:23;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:15:"Alamat Penerima";s:6:"string";s:15:"Alamat Penerima";s:9:"multiline";b:1;s:3:"icl";b:1;}i:24;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:23:"Contoh: Jl.Melati No.49";s:6:"string";s:23:"Contoh: Jl.Melati No.49";s:9:"multiline";b:1;s:3:"icl";b:1;}i:25;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:9:"Nama Anak";s:6:"string";s:9:"Nama Anak";s:9:"multiline";b:1;s:3:"icl";b:1;}i:26;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:62:"Masukkan nama lalu jenis kelaminnya. Contoh: Hasele(Laki-Laki)";s:6:"string";s:62:"Masukkan nama lalu jenis kelaminnya. Contoh: Hasele(Laki-Laki)";s:9:"multiline";b:1;s:3:"icl";b:1;}i:27;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:17:"Nama Ayah Kandung";s:6:"string";s:17:"Nama Ayah Kandung";s:9:"multiline";b:1;s:3:"icl";b:1;}i:28;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:39:"Nama Ayah Kandung. Contoh: Haseme Hasim";s:6:"string";s:39:"Nama Ayah Kandung. Contoh: Haseme Hasim";s:9:"multiline";b:1;s:3:"icl";b:1;}i:29;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:18:"Catatan Untuk Kami";s:6:"string";s:18:"Catatan Untuk Kami";s:9:"multiline";b:1;s:3:"icl";b:1;}i:30;a:5:{s:7:"context";s:28:"WooCommerce Checkout Manager";s:4:"name";s:45:"Silahkan tinggalkan catatan khusus untuk kami";s:6:"string";s:45:"Silahkan tinggalkan catatan khusus untuk kami";s:9:"multiline";b:1;s:3:"icl";b:1;}i:31;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:43:"[wuev-general-settings]xlwuev_restrict_user";s:6:"string";s:1:"1";s:9:"multiline";b:1;s:3:"icl";b:1;}i:32;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:70:"[wuev-general-settings]xlwuev_email_error_message_not_verified_outside";s:6:"string";s:82:"Anda HARUS verifikasi akun melalui email anda sebelum login!{{xlwuev_resend_link}}";s:9:"multiline";b:1;s:3:"icl";b:1;}i:33;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:69:"[wuev-general-settings]xlwuev_email_error_message_not_verified_inside";s:6:"string";s:50:"Harap Verifikasi Email Anda {{xlwuev_resend_link}}";s:9:"multiline";b:1;s:3:"icl";b:1;}i:34;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:47:"[wuev-general-settings]xlwuev_verification_page";s:6:"string";s:1:"1";s:9:"multiline";b:1;s:3:"icl";b:1;}i:35;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:50:"[wuev-general-settings]xlwuev_verification_page_id";s:6:"string";s:2:"13";s:9:"multiline";b:1;s:3:"icl";b:1;}i:36;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:53:"[wuev-general-settings]xlwuev_verification_error_page";s:6:"string";s:1:"1";s:9:"multiline";b:1;s:3:"icl";b:1;}i:37;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:56:"[wuev-general-settings]xlwuev_verification_error_page_id";s:6:"string";s:2:"13";s:9:"multiline";b:1;s:3:"icl";b:1;}i:38;a:5:{s:7:"context";s:33:"admin_texts_wuev-general-settings";s:4:"name";s:50:"[wuev-general-settings]xlwuev_automatic_user_login";s:6:"string";s:1:"2";s:9:"multiline";b:1;s:3:"icl";b:1;}}', 'yes'),
(470, 'WPGMZA_OTHER_SETTINGS', 'a:5:{s:30:"wpgmza_settings_map_streetview";s:3:"yes";s:24:"wpgmza_settings_map_zoom";s:3:"yes";s:23:"wpgmza_settings_map_pan";s:3:"yes";s:24:"wpgmza_settings_map_type";s:3:"yes";s:27:"wpgmza_settings_marker_pull";s:1:"1";}', 'yes'),
(471, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(472, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(473, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(474, 'wpgmza_db_version', '7.10.51', 'yes'),
(475, 'wpgmaps_current_version', '7.10.51', 'yes'),
(476, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(477, 'widget_wpgmza_map_widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(478, 'widget_polylang', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(480, 'WPGMZA_FIRST_TIME', '7.10.50', 'yes'),
(503, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(530, 'wooccm_update_notice', '0', 'yes');
INSERT INTO `jawi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(531, 'wccs_settings', 'a:2:{s:7:"buttons";a:2:{i:0;a:37:{s:5:"order";s:1:"1";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:49:"Nama Anak(Pisahkan dengan koma jika lebih dari 1)";s:11:"placeholder";s:80:"Masukkan nama lalu jenis kelaminnya. Contoh: Hasele(Laki-Laki),haseli(Perempuan)";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:11:"changenamep";s:0:"";s:10:"changename";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:8:"myfield1";}i:1;a:37:{s:5:"order";s:1:"2";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:17:"Nama Ayah Kandung";s:11:"placeholder";s:39:"Nama Ayah Kandung. Contoh: Haseme Hasim";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:11:"changenamep";s:0:"";s:10:"changename";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:8:"myfield2";}}s:9:"checkness";a:26:{s:12:"upload_title";s:0:"";s:25:"wooccm_notification_email";s:23:"faisalrmadjid@gmail.com";s:17:"allow_file_upload";s:0:"";s:16:"deny_file_upload";s:0:"";s:21:"allow_file_upload_cat";s:0:"";s:20:"deny_file_upload_cat";s:0:"";s:15:"picture_success";s:14:"Picture Saved!";s:11:"file_delete";s:6:"Delete";s:10:"file_types";s:0:"";s:18:"file_upload_number";s:0:"";s:9:"upload_os";s:0:"";s:12:"productssave";s:0:"";s:10:"noteslabel";s:0:"";s:16:"notesplaceholder";s:0:"";s:16:"time_stamp_title";s:10:"Order Time";s:12:"set_timezone";s:0:"";s:11:"twenty_hour";s:4:"true";s:16:"payment_method_d";s:14:"Payment Method";s:16:"payment_method_t";s:4:"true";s:17:"shipping_method_d";s:15:"Shipping Method";s:17:"shipping_method_t";s:4:"true";s:9:"per_state";s:0:"";s:12:"custom_css_w";s:0:"";s:5:"text1";s:0:"";s:5:"text2";s:0:"";s:8:"position";s:17:"after_order_notes";}}', 'yes'),
(532, 'wccs_settings2', 'a:1:{s:16:"shipping_buttons";a:10:{i:0;a:35:{s:5:"order";s:1:"1";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:7:"Country";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:13:"wooccmcountry";s:3:"cow";s:7:"country";s:8:"disabled";s:4:"true";}i:1;a:35:{s:5:"order";s:1:"2";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:21:"Nama Lengkap Penerima";s:11:"placeholder";s:20:"Contoh: Haseme Hasim";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:10:"first_name";}i:2;a:36:{s:5:"order";s:1:"3";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-last";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:9:"Last Name";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"last_name";s:8:"disabled";s:4:"true";}i:3;a:35:{s:5:"order";s:1:"4";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:12:"Company Name";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:7:"company";s:8:"disabled";s:4:"true";}i:4;a:35:{s:5:"order";s:1:"5";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:15:"Alamat Penerima";s:11:"placeholder";s:23:"Contoh: Jl.Melati No.49";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_1";}i:5;a:35:{s:5:"order";s:1:"6";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:0:"";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_2";s:8:"disabled";s:4:"true";}i:6;a:35:{s:5:"order";s:1:"7";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:14:"Kota/Kabupaten";s:11:"placeholder";s:18:"Contoh: Kota Bogor";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:4:"city";}i:7;a:35:{s:5:"order";s:1:"8";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"State";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:11:"wooccmstate";s:3:"cow";s:5:"state";s:8:"disabled";s:4:"true";}i:8;a:36:{s:5:"order";s:1:"9";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:8:"Kode Pos";s:11:"placeholder";s:13:"Contoh: 16113";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:8:"postcode";}i:9;a:35:{s:5:"order";s:2:"10";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:10:"Telepon/Hp";s:11:"placeholder";s:17:"Contoh:0812341234";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"myfield10";}}}', 'yes'),
(533, 'wccs_settings3', 'a:1:{s:15:"billing_buttons";a:11:{i:0;a:35:{s:5:"order";s:1:"1";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:7:"Country";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:13:"wooccmcountry";s:3:"cow";s:7:"country";s:8:"disabled";s:4:"true";}i:1;a:35:{s:5:"order";s:1:"2";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:12:"Nama Lengkap";s:11:"placeholder";s:14:"Contoh: Haseme";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:10:"first_name";}i:2;a:35:{s:5:"order";s:1:"3";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:13:"Nama Belakang";s:11:"placeholder";s:13:"Contoh: Hasim";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"last_name";s:8:"disabled";s:4:"true";}i:3;a:35:{s:5:"order";s:1:"4";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:12:"Company Name";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:7:"company";s:8:"disabled";s:4:"true";}i:4;a:35:{s:5:"order";s:1:"5";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:6:"Alamat";s:11:"placeholder";s:24:"Contoh: Jl. Melati No,46";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_1";}i:5;a:35:{s:5:"order";s:1:"6";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:0:"";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_2";s:8:"disabled";s:4:"true";}i:6;a:35:{s:5:"order";s:1:"7";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:14:"Kota/Kabupaten";s:11:"placeholder";s:18:"Contoh: Kota Bogor";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:4:"city";}i:7;a:35:{s:5:"order";s:1:"8";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"State";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:11:"wooccmstate";s:3:"cow";s:5:"state";s:8:"disabled";s:4:"true";}i:8;a:36:{s:5:"order";s:1:"9";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:8:"Kode Pos";s:11:"placeholder";s:13:"Contoh: 16113";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:8:"postcode";}i:9;a:36:{s:5:"order";s:2:"10";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:12:"Alamat Email";s:11:"placeholder";s:24:"Contoh: Haseme@gmail.com";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:5:"email";s:8:"disabled";s:4:"true";}i:10;a:36:{s:5:"order";s:2:"11";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:10:"Telepon/Hp";s:11:"placeholder";s:18:"Contoh: 0812341234";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:5:"phone";}}}', 'yes'),
(547, 'xl_track_day', '4', 'no'),
(585, 'xl_check_old_users', 'yes', 'yes'),
(605, 'wooccm_beta_notice', '1', 'yes'),
(619, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-5.0.3-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.3";s:7:"version";s:5:"5.0.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"5.0.1";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-5.0.3-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.3-rollback-1.zip";}s:7:"current";s:5:"5.0.3";s:7:"version";s:5:"5.0.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"5.0.1";s:9:"new_files";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-5.0.2-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.2-rollback-1.zip";}s:7:"current";s:5:"5.0.2";s:7:"version";s:5:"5.0.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"5.0.1";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1547906169;s:15:"version_checked";s:5:"5.0.1";s:12:"translations";a:0:{}}', 'no');
INSERT INTO `jawi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(620, 'rewrite_rules', 'a:217:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:28:"index.php/ticket_system-2/?$";s:27:"index.php?post_type=product";s:58:"index.php/ticket_system-2/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:53:"index.php/ticket_system-2/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:45:"index.php/ticket_system-2/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:65:"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:60:"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:41:"index.php/product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:53:"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:35:"index.php/product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:62:"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:57:"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:38:"index.php/product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:50:"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:32:"index.php/product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"index.php/product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:43:"index.php/product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:49:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:59:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:79:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"index.php/bwg_gallery/([^/]+)/embed/?$";s:44:"index.php?bwg_gallery=$matches[1]&embed=true";s:42:"index.php/bwg_gallery/([^/]+)/trackback/?$";s:38:"index.php?bwg_gallery=$matches[1]&tb=1";s:50:"index.php/bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?bwg_gallery=$matches[1]&paged=$matches[2]";s:57:"index.php/bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]";s:47:"index.php/bwg_gallery/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?bwg_gallery=$matches[1]&wc-api=$matches[3]";s:53:"index.php/bwg_gallery/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:64:"index.php/bwg_gallery/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:46:"index.php/bwg_gallery/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?bwg_gallery=$matches[1]&page=$matches[2]";s:38:"index.php/bwg_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"index.php/bwg_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"index.php/bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"index.php/bwg_gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"index.php/bwg_album/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"index.php/bwg_album/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"index.php/bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"index.php/bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"index.php/bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"index.php/bwg_album/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"index.php/bwg_album/([^/]+)/embed/?$";s:42:"index.php?bwg_album=$matches[1]&embed=true";s:40:"index.php/bwg_album/([^/]+)/trackback/?$";s:36:"index.php?bwg_album=$matches[1]&tb=1";s:48:"index.php/bwg_album/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?bwg_album=$matches[1]&paged=$matches[2]";s:55:"index.php/bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?bwg_album=$matches[1]&cpage=$matches[2]";s:45:"index.php/bwg_album/([^/]+)/wc-api(/(.*))?/?$";s:50:"index.php?bwg_album=$matches[1]&wc-api=$matches[3]";s:51:"index.php/bwg_album/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:62:"index.php/bwg_album/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:44:"index.php/bwg_album/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?bwg_album=$matches[1]&page=$matches[2]";s:36:"index.php/bwg_album/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"index.php/bwg_album/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"index.php/bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"index.php/bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"index.php/bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"index.php/bwg_album/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/bwg_tag/([^/]+)/embed/?$";s:40:"index.php?bwg_tag=$matches[1]&embed=true";s:38:"index.php/bwg_tag/([^/]+)/trackback/?$";s:34:"index.php?bwg_tag=$matches[1]&tb=1";s:58:"index.php/bwg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?bwg_tag=$matches[1]&feed=$matches[2]";s:53:"index.php/bwg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?bwg_tag=$matches[1]&feed=$matches[2]";s:46:"index.php/bwg_tag/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?bwg_tag=$matches[1]&paged=$matches[2]";s:49:"index.php/bwg_tag/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/bwg_tag/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/bwg_tag/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?bwg_tag=$matches[1]&page=$matches[2]";s:34:"index.php/bwg_tag/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/bwg_tag/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/bwg_tag/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=11&cpage=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(674, 'woocommerce_default_catalog_orderby', 'popularity', 'yes'),
(732, 'widget_woocommercemyaccountwidget', 'a:2:{i:2;a:11:{s:16:"logged_out_title";s:14:"Customer Login";s:15:"logged_in_title";s:10:"Welcome %s";s:13:"show_cartlink";i:0;s:10:"show_items";i:0;s:11:"show_upload";i:0;s:15:"show_upload_new";i:0;s:11:"show_unpaid";i:0;s:12:"show_pending";i:0;s:16:"show_logout_link";i:0;s:16:"login_with_email";i:0;s:12:"wma_redirect";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(838, '_transient_orders-transient-version', '1544856113', 'yes'),
(970, 'sm_lite_activation_date', '2018-12-13 19:57:04', 'yes'),
(972, '_sm_beta_set_record_limit', '50', 'yes'),
(1264, 'wd_bwg_version', '1.5.13', 'no'),
(1265, 'wd_bwg_theme_version', '1.0.0', 'no'),
(1266, 'widget_bwp_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1267, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1270, 'bwg_admin_notice', 'a:1:{s:15:"two_week_review";a:3:{s:5:"start";s:8:"2/2/2019";s:3:"int";i:14;s:9:"dismissed";i:0;}}', 'yes'),
(1271, 'bwg_subscribe_done', '1', 'yes'),
(1285, 'wd_bwg_options', '{"images_directory":"wp-content\\/uploads","resizable_thumbnails":"1","upload_img_width":"1200","upload_img_height":"1200","upload_thumb_width":"500","upload_thumb_height":"500","image_quality":"75","preload_images":"1","preload_images_count":"10","show_hide_custom_post":"0","show_hide_post_meta":"0","save_ip":1,"image_right_click":"0","use_inline_stiles_and_scripts":"0","enable_google_fonts":"1","enable_wp_editor":"0","enable_seo":"1","read_metadata":"1","thumb_width":"250","thumb_height":"140","image_column_number":"5","image_enable_page":"1","images_per_page":"30","load_more_image_count":"30","sort_by":"order","order_by":"asc","show_search_box":"0","placeholder":"Search","search_box_width":"330","show_sort_images":"0","show_tag_box":"0","showthumbs_name":"0","show_gallery_description":"0","image_title_show_hover":"hover","play_icon":"1","gallery_download":0,"ecommerce_icon_show_hover":"none","masonry":"vertical","show_masonry_thumb_description":0,"masonry_thumb_size":"250","masonry_image_column_number":"5","masonry_image_enable_page":"1","masonry_images_per_page":"30","masonry_load_more_image_count":"30","masonry_sort_by":"order","masonry_order_by":"asc","masonry_show_search_box":"0","masonry_placeholder":"Search","masonry_search_box_width":"180","masonry_show_sort_images":"0","masonry_show_tag_box":"0","masonry_show_gallery_title":"0","masonry_show_gallery_description":"0","masonry_image_title":"none","masonry_play_icon":"1","masonry_gallery_download":0,"masonry_ecommerce_icon_show_hover":"none","mosaic":"vertical","resizable_mosaic":0,"mosaic_total_width":100,"mosaic_thumb_size":"250","mosaic_image_enable_page":"1","mosaic_images_per_page":"30","mosaic_load_more_image_count":"30","mosaic_sort_by":"order","mosaic_order_by":"asc","mosaic_show_search_box":"0","mosaic_placeholder":"Search","mosaic_search_box_width":"180","mosaic_show_sort_images":"0","mosaic_show_tag_box":"0","mosaic_show_gallery_title":"0","mosaic_show_gallery_description":"0","mosaic_image_title_show_hover":"none","mosaic_play_icon":"1","mosaic_gallery_download":0,"mosaic_ecommerce_icon_show_hover":"none","slideshow_type":"fade","slideshow_interval":"5","slideshow_width":"800","slideshow_height":"500","slideshow_sort_by":"order","slideshow_order_by":"asc","slideshow_enable_autoplay":"0","slideshow_enable_shuffle":"0","slideshow_enable_ctrl":"1","autohide_slideshow_navigation":"1","slideshow_enable_filmstrip":1,"slideshow_filmstrip_height":90,"slideshow_enable_title":"1","slideshow_title_position":"top-left","slideshow_title_full_width":"0","slideshow_enable_description":"1","slideshow_description_position":"bottom-right","slideshow_enable_music":"0","slideshow_audio_url":"","slideshow_effect_duration":"0.1","slideshow_gallery_download":0,"image_browser_width":"800","image_browser_title_enable":"1","image_browser_description_enable":"1","image_browser_sort_by":"order","image_browser_order_by":"asc","image_browser_show_gallery_title":"0","image_browser_show_gallery_description":"0","image_browser_show_search_box":"0","image_browser_show_sort_images":"0","image_browser_show_tag_box":"0","image_browser_placeholder":"Search","image_browser_search_box_width":"180","image_browser_gallery_download":0,"blog_style_width":800,"blog_style_title_enable":1,"blog_style_images_per_page":5,"blog_style_load_more_image_count":"5","blog_style_enable_page":1,"blog_style_description_enable":0,"blog_style_sort_by":"order","blog_style_order_by":"asc","blog_style_show_gallery_title":"0","blog_style_show_gallery_description":"0","blog_style_show_search_box":"0","blog_style_placeholder":"Search","blog_style_search_box_width":"180","blog_style_show_sort_images":"0","blog_style_show_tag_box":"0","blog_style_gallery_download":0,"carousel_interval":5,"carousel_width":300,"carousel_height":300,"carousel_image_column_number":5,"carousel_image_par":"0.75","carousel_enable_title":0,"carousel_enable_autoplay":0,"carousel_r_width":800,"carousel_fit_containerWidth":1,"carousel_prev_next_butt":1,"carousel_play_pause_butt":1,"carousel_sort_by":"order","carousel_order_by":"asc","carousel_gallery_download":0,"album_column_number":"5","album_thumb_width":"250","album_thumb_height":"140","album_image_column_number":"5","album_image_thumb_width":"250","album_image_thumb_height":"140","album_enable_page":"1","albums_per_page":"30","album_images_per_page":"30","album_sort_by":"order","album_order_by":"asc","album_show_search_box":"0","album_placeholder":"Search","album_search_box_width":"180","album_show_sort_images":"0","album_show_tag_box":"0","show_album_name":"0","album_show_gallery_description":"0","album_title_show_hover":"hover","album_view_type":"thumbnail","album_image_title_show_hover":"none","album_mosaic":"vertical","album_resizable_mosaic":0,"album_mosaic_total_width":100,"album_play_icon":"1","album_gallery_download":0,"album_ecommerce_icon_show_hover":"none","album_masonry_column_number":"5","album_masonry_thumb_width":"250","album_masonry_image_column_number":"5","album_masonry_image_thumb_width":"250","album_masonry_enable_page":"1","albums_masonry_per_page":"30","album_masonry_images_per_page":"30","album_masonry_sort_by":"order","album_masonry_order_by":"asc","album_masonry_show_search_box":"0","album_masonry_placeholder":"Search","album_masonry_search_box_width":"180","album_masonry_show_sort_images":"0","album_masonry_show_tag_box":"0","show_album_masonry_name":"0","album_masonry_show_gallery_description":"0","album_masonry_image_title":"none","album_masonry_gallery_download":0,"album_masonry_ecommerce_icon_show_hover":"none","extended_album_column_number":"2","extended_album_height":"160","album_extended_thumb_width":"357","album_extended_thumb_height":"201","album_extended_image_column_number":"5","album_extended_image_thumb_width":"357","album_extended_image_thumb_height":"201","album_extended_enable_page":"1","albums_extended_per_page":"30","album_extended_images_per_page":"30","album_extended_sort_by":"order","album_extended_order_by":"asc","album_extended_show_search_box":"0","album_extended_placeholder":"Search","album_extended_search_box_width":"180","album_extended_show_sort_images":"0","album_extended_show_tag_box":"0","show_album_extended_name":"0","extended_album_description_enable":"1","album_extended_show_gallery_description":"0","album_extended_view_type":"thumbnail","album_extended_image_title_show_hover":"none","album_extended_mosaic":"vertical","album_extended_resizable_mosaic":0,"album_extended_mosaic_total_width":100,"album_extended_play_icon":"1","album_extended_gallery_download":0,"album_extended_ecommerce_icon_show_hover":"none","thumb_click_action":"open_lightbox","thumb_link_target":"1","popup_fullscreen":"1","popup_width":"800","popup_height":"500","popup_type":"fade","popup_effect_duration":"0.1","popup_autoplay":"0","popup_interval":"2.5","popup_enable_filmstrip":1,"popup_filmstrip_height":60,"popup_enable_ctrl_btn":"1","popup_enable_fullscreen":"1","popup_enable_comment":1,"popup_enable_email":1,"popup_enable_captcha":0,"comment_moderation":0,"popup_enable_info":"1","popup_info_always_show":"0","popup_info_full_width":"1","autohide_lightbox_navigation":"0","popup_hit_counter":0,"popup_enable_rate":0,"popup_enable_fullsize_image":"0","popup_enable_download":"0","show_image_counts":"0","enable_loop":"1","enable_addthis":0,"addthis_profile_id":"","popup_enable_facebook":1,"popup_enable_twitter":1,"popup_enable_google":1,"popup_enable_pinterest":0,"popup_enable_tumblr":0,"popup_enable_ecommerce":1,"autoupdate_interval":30,"instagram_access_token":"","facebook_app_id":"","facebook_app_secret":"","permissions":"manage_options","gallery_role":0,"album_role":0,"image_role":0,"watermark_type":"none","watermark_position":"bottom-left","watermark_width":"90","watermark_height":"90","watermark_url":"","watermark_text":"10Web.io","watermark_link":"https:\\/\\/10web.io\\/","watermark_font_size":"20","watermark_font":"Arial","watermark_color":"FFFFFF","watermark_opacity":"30","built_in_watermark_type":"none","built_in_watermark_position":"middle-center","built_in_watermark_size":"15","built_in_watermark_url":"","built_in_watermark_text":"10Web.io","built_in_watermark_font_size":"20","built_in_watermark_font":"arial.ttf","built_in_watermark_color":"FFFFFF","built_in_watermark_opacity":"30","upload_dir":"F:\\\\xampp\\\\htdocs\\\\Kedai\\/wp-content\\/uploads\\/photo-gallery","upload_url":"http:\\/\\/localhost\\/kedai\\/wp-content\\/uploads\\/photo-gallery","old_images_directory":"","jpeg_quality":75,"png_quality":2}', 'no'),
(1586, 'servicebox_default_Settings', 's:683:"a:18:{s:21:"service_acc_sec_title";s:3:"yes";s:20:"service_display_icon";s:3:"yes";s:24:"service_display_readmore";s:3:"yes";s:17:"service_title_clr";s:7:"#000000";s:16:"service_icon_clr";s:7:"#636363";s:19:"service_icon_bg_clr";s:7:"#dddddd";s:15:"service_des_clr";s:7:"#7f7f7f";s:20:"service_readmore_clr";s:7:"#4c4c4c";s:23:"service_readmore_bg_clr";s:7:"#ffffff";s:23:"service_box_bg_clr_dsn2";s:7:"#e5e5e5";s:23:"service_title_font_size";s:2:"22";s:21:"service_des_font_size";s:2:"19";s:26:"service_readmore_font_size";s:2:"16";s:10:"custom_css";s:0:"";s:11:"font_family";s:9:"Open Sans";s:17:"sb_web_link_label";s:9:"Read More";s:9:"sb_layout";s:1:"6";s:9:"templates";s:1:"1";}";', 'yes'),
(1590, 'wpsm_service_b_review', 'a:2:{s:4:"time";i:1546515334;s:9:"dismissed";b:0;}', 'yes'),
(2064, 'product_cat_children', 'a:0:{}', 'yes'),
(2114, '_transient_timeout_wc_product_loop55821546695861', '1549288320', 'no'),
(2115, '_transient_wc_product_loop55821546695861', 'O:8:"stdClass":5:{s:3:"ids";a:1:{i:0;i:9;}s:5:"total";i:1;s:11:"total_pages";i:1;s:8:"per_page";i:-1;s:12:"current_page";i:1;}', 'no'),
(2199, 'gp_npwp_new_button_text', 'Lihat Detail', 'yes'),
(2200, 'gp_npwp_new_message_text', '', 'yes'),
(2201, 'gp_npwp_hide_message', 'yes', 'yes'),
(2202, 'gp_npwp_hide_admin_column', 'no', 'yes'),
(2342, '_transient_timeout_external_ip_address_::1', '1548507078', 'no'),
(2343, '_transient_external_ip_address_::1', '36.71.235.42', 'no'),
(2356, '_transient_timeout_users_online', '1547910722', 'no'),
(2357, '_transient_users_online', 'a:1:{i:0;a:3:{s:7:"user_id";i:1;s:13:"last_activity";i:1547934122;s:10:"ip_address";s:3:"::1";}}', 'no'),
(2358, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(2359, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(2360, '_site_transient_timeout_browser_f7d4fd45a7d647a6c39275b579b40d24', '1548507257', 'no'),
(2361, '_site_transient_browser_f7d4fd45a7d647a6c39275b579b40d24', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"64.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(2362, '_transient_timeout_wc_report_sales_by_date', '1547991979', 'no'),
(2363, '_transient_wc_report_sales_by_date', 'a:16:{s:32:"c78150384cfbc04760e49a45f759b51d";a:0:{}s:32:"c6d6ecd79dc838d100e1390abdc410b9";a:0:{}s:32:"66d62da93f6b95b19ff119f63313df3e";a:0:{}s:32:"b5712ed4ab951981fe75c0ae32867f25";N;s:32:"e19cc091a7e740c0acd2e0aa8b3c7e90";a:0:{}s:32:"ba4dd9f320ada90434f63c82b0af4bbb";a:0:{}s:32:"3134504ae346eee82c18583242021144";a:0:{}s:32:"0b053b23cd8593f906f54b49b5775cf3";a:0:{}s:32:"9c4041b4423f689f197903dce935c39d";a:0:{}s:32:"b5c5691fc318255118ac7ac1bb27f859";a:0:{}s:32:"91cedf310ccaa25f89cdfa88c1122281";a:0:{}s:32:"bc6aa525ba70a36aa9a2dfac4472dc24";N;s:32:"a62d36f80fc2eb685489921e02faa523";a:0:{}s:32:"57811f07f5794b7fbac957d3bb375234";a:0:{}s:32:"2bb5f4e3c6d309662b8a5a6623625651";a:0:{}s:32:"7dfc7a4eb51ca46326f9523713e43a3b";a:0:{}}', 'no'),
(2364, '_transient_timeout_wc_admin_report', '1547988860', 'no'),
(2365, '_transient_wc_admin_report', 'a:1:{s:32:"94bf59b472e538f12d2f34b99391bc62";a:0:{}}', 'no'),
(2366, '_transient_timeout_wc_low_stock_count', '1550494461', 'no'),
(2367, '_transient_wc_low_stock_count', '0', 'no'),
(2368, '_transient_timeout_wc_outofstock_count', '1550494462', 'no'),
(2369, '_transient_wc_outofstock_count', '0', 'no'),
(2372, '_transient_timeout_wc_shipping_method_count_1_1544696085', '1550494601', 'no'),
(2374, '_transient_wc_shipping_method_count_1_1544696085', '3', 'no'),
(2389, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1547915022', 'no'),
(2390, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4541;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:3230;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2604;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2468;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1901;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1710;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1699;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1464;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1420;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1420;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1419;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1350;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1287;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1280;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1129;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1086;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1070;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1044;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:969;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:910;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:841;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:828;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:817;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:753;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:721;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:711;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:704;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:700;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:693;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:683;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:676;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:673;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:655;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:649;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:637;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:633;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:622;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:612;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:612;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:609;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:576;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:561;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:554;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:553;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:551;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:544;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:528;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:523;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:523;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:521;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:517;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:506;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:501;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:491;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:491;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:486;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:469;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:468;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:462;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:455;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:451;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:450;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:450;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:431;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:429;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:422;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:419;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:417;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:412;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:399;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:393;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:382;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:377;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:376;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:375;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:374;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:374;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:360;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:359;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:357;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:353;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:351;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:347;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:343;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:341;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:339;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:337;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:321;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:318;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:317;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:315;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:314;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:311;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:310;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:306;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:305;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:304;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:303;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:303;}}', 'no'),
(2399, '_site_transient_timeout_theme_roots', '1547906414', 'no'),
(2400, '_site_transient_theme_roots', 'a:1:{s:5:"tyche";s:7:"/themes";}', 'no'),
(2401, '_transient_timeout__woocommerce_helper_updates', '1547947814', 'no'),
(2402, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1547904614;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(2406, '_transient_timeout_plugin_slugs', '1547992656', 'no'),
(2407, '_transient_plugin_slugs', 'a:10:{i:0;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:1;s:15:"kirki/kirki.php";i:2;s:77:"non-purchasable-woocommerce-products/non-purchasable-woocommerce-products.php";i:3;s:49:"smart-manager-for-wp-e-commerce/smart-manager.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:6;s:75:"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php";i:7;s:19:"wptouch/wptouch.php";i:8;s:56:"woo-confirmation-email/woocommerc-confirmation-email.php";i:9;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(2408, '_transient_timeout_wc_upgrade_notice_3.5.3', '1547991157', 'no'),
(2409, '_transient_wc_upgrade_notice_3.5.3', '', 'no'),
(2413, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1547906173;s:7:"checked";a:1:{s:5:"tyche";s:5:"1.1.1";}s:8:"response";a:1:{s:5:"tyche";a:4:{s:5:"theme";s:5:"tyche";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:35:"https://wordpress.org/themes/tyche/";s:7:"package";s:53:"https://downloads.wordpress.org/theme/tyche.1.1.2.zip";}}s:12:"translations";a:0:{}}', 'no');
INSERT INTO `jawi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2439, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1547906186;s:7:"checked";a:12:{s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:7:"4.3.7.2";s:15:"kirki/kirki.php";s:8:"3.0.35.2";s:77:"non-purchasable-woocommerce-products/non-purchasable-woocommerce-products.php";s:3:"1.2";s:31:"photo-gallery/photo-gallery.php";s:6:"1.5.13";s:59:"restaurant-menu-using-woocommerce/pisol_restaurant_menu.php";s:5:"2.5.2";s:49:"smart-manager-for-wp-e-commerce/smart-manager.php";s:5:"4.0.2";s:27:"woocommerce/woocommerce.php";s:5:"3.5.2";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:5:"4.2.3";s:75:"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php";s:5:"1.8.0";s:19:"wptouch/wptouch.php";s:6:"4.3.34";s:56:"woo-confirmation-email/woocommerc-confirmation-email.php";s:5:"3.2.0";s:24:"wordpress-seo/wp-seo.php";s:5:"9.2.1";}s:8:"response";a:6:{s:51:"all-in-one-wp-security-and-firewall/wp-security.php";O:8:"stdClass":12:{s:2:"id";s:49:"w.org/plugins/all-in-one-wp-security-and-firewall";s:4:"slug";s:35:"all-in-one-wp-security-and-firewall";s:6:"plugin";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:11:"new_version";s:7:"4.3.8.3";s:3:"url";s:66:"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip";s:5:"icons";a:1:{s:2:"1x";s:88:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826";}s:7:"banners";a:2:{s:2:"2x";s:91:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011";s:2:"1x";s:90:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:15:"kirki/kirki.php";O:8:"stdClass":12:{s:2:"id";s:19:"w.org/plugins/kirki";s:4:"slug";s:5:"kirki";s:6:"plugin";s:15:"kirki/kirki.php";s:11:"new_version";s:8:"3.0.35.3";s:3:"url";s:36:"https://wordpress.org/plugins/kirki/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/kirki.3.0.35.3.zip";s:5:"icons";a:3:{s:2:"2x";s:58:"https://ps.w.org/kirki/assets/icon-256x256.png?rev=1330852";s:2:"1x";s:50:"https://ps.w.org/kirki/assets/icon.svg?rev=1330186";s:3:"svg";s:50:"https://ps.w.org/kirki/assets/icon.svg?rev=1330186";}s:7:"banners";a:2:{s:2:"2x";s:61:"https://ps.w.org/kirki/assets/banner-1544x500.png?rev=1330852";s:2:"1x";s:60:"https://ps.w.org/kirki/assets/banner-772x250.png?rev=1330852";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:49:"smart-manager-for-wp-e-commerce/smart-manager.php";O:8:"stdClass":13:{s:2:"id";s:45:"w.org/plugins/smart-manager-for-wp-e-commerce";s:4:"slug";s:31:"smart-manager-for-wp-e-commerce";s:6:"plugin";s:49:"smart-manager-for-wp-e-commerce/smart-manager.php";s:11:"new_version";s:5:"4.0.4";s:3:"url";s:62:"https://wordpress.org/plugins/smart-manager-for-wp-e-commerce/";s:7:"package";s:80:"https://downloads.wordpress.org/plugin/smart-manager-for-wp-e-commerce.4.0.4.zip";s:5:"icons";a:2:{s:2:"2x";s:84:"https://ps.w.org/smart-manager-for-wp-e-commerce/assets/icon-256x256.png?rev=1253133";s:2:"1x";s:84:"https://ps.w.org/smart-manager-for-wp-e-commerce/assets/icon-128x128.png?rev=1253133";}s:7:"banners";a:1:{s:2:"1x";s:86:"https://ps.w.org/smart-manager-for-wp-e-commerce/assets/banner-772x250.jpg?rev=1271563";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:308:"<p>Fixes related to &#039;Product Attributes&#039; not getting managed, Multiple &#039;ANDing&#039; and &#039;ORing&#039; not working in advanced search, Batch Update for &#039;Datetime&#039; and &#039;Date&#039; data types not working along with other important fixes &amp; updates. Recommended upgrade.</p>";s:6:"tested";s:5:"5.0.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.5.3";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.5.3.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";O:8:"stdClass":12:{s:2:"id";s:42:"w.org/plugins/woocommerce-checkout-manager";s:4:"slug";s:28:"woocommerce-checkout-manager";s:6:"plugin";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:11:"new_version";s:5:"4.2.5";s:3:"url";s:59:"https://wordpress.org/plugins/woocommerce-checkout-manager/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/woocommerce-checkout-manager.4.2.5.zip";s:5:"icons";a:2:{s:2:"2x";s:81:"https://ps.w.org/woocommerce-checkout-manager/assets/icon-256x256.png?rev=1117298";s:2:"1x";s:81:"https://ps.w.org/woocommerce-checkout-manager/assets/icon-128x128.png?rev=1117298";}s:7:"banners";a:2:{s:2:"2x";s:84:"https://ps.w.org/woocommerce-checkout-manager/assets/banner-1544x500.png?rev=1117295";s:2:"1x";s:83:"https://ps.w.org/woocommerce-checkout-manager/assets/banner-772x250.png?rev=1117295";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"9.4";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.9.4.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}s:6:"tested";s:5:"5.0.3";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:77:"non-purchasable-woocommerce-products/non-purchasable-woocommerce-products.php";O:8:"stdClass":9:{s:2:"id";s:50:"w.org/plugins/non-purchasable-woocommerce-products";s:4:"slug";s:36:"non-purchasable-woocommerce-products";s:6:"plugin";s:77:"non-purchasable-woocommerce-products/non-purchasable-woocommerce-products.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:67:"https://wordpress.org/plugins/non-purchasable-woocommerce-products/";s:7:"package";s:83:"https://downloads.wordpress.org/plugin/non-purchasable-woocommerce-products.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:89:"https://ps.w.org/non-purchasable-woocommerce-products/assets/icon-256x256.png?rev=1816705";s:2:"1x";s:89:"https://ps.w.org/non-purchasable-woocommerce-products/assets/icon-128x128.png?rev=1816705";}s:7:"banners";a:2:{s:2:"2x";s:92:"https://ps.w.org/non-purchasable-woocommerce-products/assets/banner-1544x500.png?rev=1816705";s:2:"1x";s:91:"https://ps.w.org/non-purchasable-woocommerce-products/assets/banner-772x250.png?rev=1816705";}s:11:"banners_rtl";a:0:{}}s:59:"restaurant-menu-using-woocommerce/pisol_restaurant_menu.php";O:8:"stdClass":9:{s:2:"id";s:47:"w.org/plugins/restaurant-menu-using-woocommerce";s:4:"slug";s:33:"restaurant-menu-using-woocommerce";s:6:"plugin";s:59:"restaurant-menu-using-woocommerce/pisol_restaurant_menu.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:64:"https://wordpress.org/plugins/restaurant-menu-using-woocommerce/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/restaurant-menu-using-woocommerce.zip";s:5:"icons";a:2:{s:2:"1x";s:78:"https://ps.w.org/restaurant-menu-using-woocommerce/assets/icon.svg?rev=1958923";s:3:"svg";s:78:"https://ps.w.org/restaurant-menu-using-woocommerce/assets/icon.svg?rev=1958923";}s:7:"banners";a:2:{s:2:"2x";s:89:"https://ps.w.org/restaurant-menu-using-woocommerce/assets/banner-1544x500.jpg?rev=1955010";s:2:"1x";s:88:"https://ps.w.org/restaurant-menu-using-woocommerce/assets/banner-772x250.jpg?rev=1955010";}s:11:"banners_rtl";a:0:{}}s:75:"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php";O:8:"stdClass":9:{s:2:"id";s:49:"w.org/plugins/woo-tabbed-category-product-listing";s:4:"slug";s:35:"woo-tabbed-category-product-listing";s:6:"plugin";s:75:"woo-tabbed-category-product-listing/woo-tabbed-category-product-listing.php";s:11:"new_version";s:5:"1.8.0";s:3:"url";s:66:"https://wordpress.org/plugins/woo-tabbed-category-product-listing/";s:7:"package";s:84:"https://downloads.wordpress.org/plugin/woo-tabbed-category-product-listing.1.8.0.zip";s:5:"icons";a:2:{s:2:"2x";s:88:"https://ps.w.org/woo-tabbed-category-product-listing/assets/icon-256x256.jpg?rev=1718935";s:2:"1x";s:88:"https://ps.w.org/woo-tabbed-category-product-listing/assets/icon-256x256.jpg?rev=1718935";}s:7:"banners";a:1:{s:2:"1x";s:90:"https://ps.w.org/woo-tabbed-category-product-listing/assets/banner-772x250.jpg?rev=1718935";}s:11:"banners_rtl";a:0:{}}s:19:"wptouch/wptouch.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/wptouch";s:4:"slug";s:7:"wptouch";s:6:"plugin";s:19:"wptouch/wptouch.php";s:11:"new_version";s:6:"4.3.34";s:3:"url";s:38:"https://wordpress.org/plugins/wptouch/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wptouch.4.3.34.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/wptouch/assets/icon-256x256.png?rev=1313960";s:2:"1x";s:60:"https://ps.w.org/wptouch/assets/icon-128x128.png?rev=1313960";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/wptouch/assets/banner-1544x500.jpg?rev=1313960";s:2:"1x";s:62:"https://ps.w.org/wptouch/assets/banner-772x250.jpg?rev=1313960";}s:11:"banners_rtl";a:0:{}}s:56:"woo-confirmation-email/woocommerc-confirmation-email.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/woo-confirmation-email";s:4:"slug";s:22:"woo-confirmation-email";s:6:"plugin";s:56:"woo-confirmation-email/woocommerc-confirmation-email.php";s:11:"new_version";s:5:"3.2.0";s:3:"url";s:53:"https://wordpress.org/plugins/woo-confirmation-email/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/woo-confirmation-email.3.2.0.zip";s:5:"icons";a:1:{s:2:"1x";s:75:"https://ps.w.org/woo-confirmation-email/assets/icon-128x128.jpg?rev=1774486";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/woo-confirmation-email/assets/banner-1544x500.png?rev=1774490";s:2:"1x";s:77:"https://ps.w.org/woo-confirmation-email/assets/banner-772x250.png?rev=1774494";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(2441, 'product_number', '50', 'yes'),
(2442, 'max_char_per_cat', '20', 'yes'),
(2443, 'column_number', '', 'yes'),
(2444, 'order_product_by', 'ASC', 'yes'),
(2447, '_transient_timeout_wc_product_loop3c461546705744', '1550498372', 'no'),
(2448, '_transient_wc_product_loop3c461546705744', 'O:8:"stdClass":5:{s:3:"ids";a:1:{i:0;i:9;}s:5:"total";i:1;s:11:"total_pages";i:1;s:8:"per_page";i:-1;s:12:"current_page";i:1;}', 'no'),
(2450, '_transient_timeout_wc_term_counts', '1550498520', 'no'),
(2451, '_transient_wc_term_counts', 'a:5:{i:18;s:2:"24";i:17;s:1:"1";i:20;s:1:"2";i:19;s:0:"";i:15;s:1:"0";}', 'no'),
(2452, '_transient_timeout_wc_product_loopf2391546705744', '1550498415', 'no'),
(2453, '_transient_wc_product_loopf2391546705744', 'O:8:"stdClass":5:{s:3:"ids";a:20:{i:0;i:189;i:1;i:180;i:2;i:193;i:3;i:176;i:4;i:178;i:5;i:179;i:6;i:181;i:7;i:192;i:8;i:185;i:9;i:174;i:10;i:190;i:11;i:191;i:12;i:184;i:13;i:186;i:14;i:187;i:15;i:177;i:16;i:194;i:17;i:188;i:18;i:195;i:19;i:183;}s:5:"total";i:20;s:11:"total_pages";i:1;s:8:"per_page";i:20;s:12:"current_page";i:1;}', 'no'),
(2454, '_transient_timeout_wc_product_loop61341546705744', '1550498416', 'no'),
(2455, '_transient_wc_product_loop61341546705744', 'O:8:"stdClass":5:{s:3:"ids";a:1:{i:0;i:9;}s:5:"total";i:1;s:11:"total_pages";i:1;s:8:"per_page";i:20;s:12:"current_page";i:1;}', 'no'),
(2456, '_transient_timeout_wc_product_loop59081546705744', '1550498417', 'no'),
(2457, '_transient_wc_product_loop59081546705744', 'O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:171;i:1;i:196;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:20;s:12:"current_page";i:1;}', 'no'),
(2491, '_transient_timeout_wc_related_196', '1547994187', 'no'),
(2492, '_transient_wc_related_196', 'a:1:{s:51:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=196";a:1:{i:0;s:3:"171";}}', 'no'),
(2501, 'custom_global_css', '', 'yes'),
(2503, '_transient_is_multi_author', '0', 'yes'),
(2504, '_transient_timeout_wc_product_loop3e221546705744', '1550500260', 'no'),
(2505, '_transient_wc_product_loop3e221546705744', 'O:8:"stdClass":5:{s:3:"ids";a:12:{i:0;i:189;i:1;i:180;i:2;i:193;i:3;i:176;i:4;i:178;i:5;i:179;i:6;i:181;i:7;i:192;i:8;i:185;i:9;i:174;i:10;i:190;i:11;i:191;}s:5:"total";i:12;s:11:"total_pages";i:1;s:8:"per_page";i:12;s:12:"current_page";i:1;}', 'no'),
(2506, '_transient_timeout_wc_product_loop52801546705744', '1550500263', 'no'),
(2507, '_transient_wc_product_loop52801546705744', 'O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:171;i:1;i:196;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:12;s:12:"current_page";i:1;}', 'no'),
(2509, '_transient_timeout_sm_beta_faisalrmadjid@gmail.com_product', '1548513107', 'no');
INSERT INTO `jawi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2510, '_transient_sm_beta_faisalrmadjid@gmail.com_product', 'a:6:{s:12:"display_name";s:7:"Product";s:6:"tables";a:5:{s:5:"posts";a:3:{s:4:"pkey";s:2:"ID";s:7:"join_on";s:0:"";s:5:"where";a:2:{s:9:"post_type";a:2:{i:0;s:7:"product";i:1;s:17:"product_variation";}s:11:"post_status";s:3:"any";}}s:8:"postmeta";a:3:{s:4:"pkey";s:7:"post_id";s:7:"join_on";s:27:"postmeta.post_ID = posts.ID";s:5:"where";a:0:{}}s:18:"term_relationships";a:3:{s:4:"pkey";s:9:"object_id";s:7:"join_on";s:39:"term_relationships.object_id = posts.ID";s:5:"where";a:0:{}}s:13:"term_taxonomy";a:3:{s:4:"pkey";s:16:"term_taxonomy_id";s:7:"join_on";s:68:"term_taxonomy.term_taxonomy_id = term_relationships.term_taxonomy_id";s:5:"where";a:0:{}}s:5:"terms";a:3:{s:4:"pkey";s:7:"term_id";s:7:"join_on";s:37:"terms.term_id = term_taxonomy.term_id";s:5:"where";a:0:{}}}s:7:"columns";a:68:{i:0;a:24:{s:3:"src";s:8:"posts/ID";s:5:"index";s:8:"posts_id";s:4:"name";s:2:"ID";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:2:"ID";s:3:"key";s:2:"ID";s:5:"width";i:50;s:5:"align";s:4:"left";s:3:"min";i:0;s:6:"hidden";b:0;s:8:"editable";b:0;s:14:"batch_editable";b:0;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:1;}i:1;a:23:{s:3:"src";s:16:"posts/post_title";s:5:"index";s:16:"posts_post_title";s:4:"name";s:4:"Name";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:10:"post_title";s:3:"key";s:4:"Name";s:5:"width";i:200;s:5:"align";s:4:"left";s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:3;}i:2;a:23:{s:3:"src";s:38:"postmeta/meta_key=_sku/meta_value=_sku";s:5:"index";s:38:"postmeta_meta_key__sku_meta_value__sku";s:4:"name";s:3:"SKU";s:3:"key";s:3:"SKU";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:4:"_sku";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:4;}i:3;a:24:{s:3:"src";s:58:"postmeta/meta_key=_regular_price/meta_value=_regular_price";s:5:"index";s:58:"postmeta_meta_key__regular_price_meta_value__regular_price";s:4:"name";s:14:" Regular Price";s:3:"key";s:14:" Regular Price";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:14:"_regular_price";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:5;}i:4;a:23:{s:3:"src";s:52:"postmeta/meta_key=_sale_price/meta_value=_sale_price";s:5:"index";s:52:"postmeta_meta_key__sale_price_meta_value__sale_price";s:4:"name";s:11:" Sale Price";s:3:"key";s:11:" Sale Price";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:11:"_sale_price";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:6;}i:5;a:23:{s:3:"src";s:74:"postmeta/meta_key=_sale_price_dates_from/meta_value=_sale_price_dates_from";s:5:"index";s:74:"postmeta_meta_key__sale_price_dates_from_meta_value__sale_price_dates_from";s:4:"name";s:22:" Sale Price Dates From";s:3:"key";s:22:" Sale Price Dates From";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:22:"_sale_price_dates_from";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:8:"datetime";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:7;}i:6;a:23:{s:3:"src";s:70:"postmeta/meta_key=_sale_price_dates_to/meta_value=_sale_price_dates_to";s:5:"index";s:70:"postmeta_meta_key__sale_price_dates_to_meta_value__sale_price_dates_to";s:4:"name";s:20:" Sale Price Dates To";s:3:"key";s:20:" Sale Price Dates To";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:20:"_sale_price_dates_to";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:8:"datetime";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:8;}i:7;a:23:{s:3:"src";s:42:"postmeta/meta_key=_stock/meta_value=_stock";s:5:"index";s:42:"postmeta_meta_key__stock_meta_value__stock";s:4:"name";s:6:" Stock";s:3:"key";s:6:" Stock";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:6:"_stock";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:9;}i:8;a:24:{s:3:"src";s:17:"posts/post_status";s:5:"index";s:17:"posts_post_status";s:4:"name";s:15:"Products Status";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:11:"post_status";s:3:"key";s:15:"Products Status";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:4:"list";s:6:"values";a:5:{s:7:"publish";s:7:"Publish";s:7:"pending";s:14:"Pending Review";s:5:"draft";s:5:"Draft";s:7:"private";s:7:"Private";s:6:"future";s:9:"Scheduled";}s:13:"search_values";a:4:{i:0;a:2:{s:3:"key";s:7:"publish";s:5:"value";s:7:"Publish";}i:1;a:2:{s:3:"key";s:7:"pending";s:5:"value";s:14:"Pending Review";}i:2;a:2:{s:3:"key";s:5:"draft";s:5:"value";s:5:"Draft";}i:3;a:2:{s:3:"key";s:6:"future";s:5:"value";s:9:"Scheduled";}}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:10;}i:9;a:23:{s:3:"src";s:18:"posts/post_content";s:5:"index";s:18:"posts_post_content";s:4:"name";s:11:"Description";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:12:"post_content";s:3:"key";s:11:"Description";s:5:"width";i:150;s:5:"align";s:4:"left";s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:10:"longstring";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:11;}i:10;a:24:{s:3:"src";s:17:"terms/product_cat";s:5:"index";s:17:"terms_product_cat";s:4:"name";s:8:"Category";s:3:"key";s:11:"Product Cat";s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:11:"product_cat";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:9:"multilist";s:6:"values";a:5:{i:15;a:2:{s:4:"term";s:13:"Uncategorized";s:6:"parent";i:0;}i:17;a:2:{s:4:"term";s:12:"Paket Aqiqah";s:6:"parent";i:0;}i:18;a:2:{s:4:"term";s:20:"Kopi &amp; Beverages";s:6:"parent";i:0;}i:19;a:2:{s:4:"term";s:5:"Bakso";s:6:"parent";i:0;}i:20;a:2:{s:4:"term";s:4:"Sate";s:6:"parent";i:0;}}s:13:"search_values";a:5:{i:0;a:2:{s:3:"key";s:13:"uncategorized";s:5:"value";s:13:"Uncategorized";}i:1;a:2:{s:3:"key";s:12:"paket-aqiqah";s:5:"value";s:12:"Paket Aqiqah";}i:2;a:2:{s:3:"key";s:5:"ngopi";s:5:"value";s:20:"Kopi &amp; Beverages";}i:3;a:2:{s:3:"key";s:5:"bakso";s:5:"value";s:5:"Bakso";}i:4;a:2:{s:3:"key";s:4:"sate";s:5:"value";s:4:"Sate";}}s:6:"hidden";b:0;s:8:"editable";b:0;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:12;}i:11;a:13:{s:3:"src";s:25:"custom/product_attributes";s:5:"index";s:25:"custom_product_attributes";s:4:"name";s:10:"Attributes";s:3:"key";s:10:"Attributes";s:4:"type";s:10:"serialized";s:8:"editable";b:0;s:10:"searchable";b:0;s:14:"batch_editable";b:1;s:5:"width";i:100;s:10:"save_state";b:1;s:8:"position";i:12;s:6:"hidden";b:0;s:6:"values";a:0:{}}i:12;a:23:{s:3:"src";s:44:"postmeta/meta_key=_length/meta_value=_length";s:5:"index";s:44:"postmeta_meta_key__length_meta_value__length";s:4:"name";s:7:" Length";s:3:"key";s:7:" Length";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:7:"_length";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:14;}i:13;a:23:{s:3:"src";s:42:"postmeta/meta_key=_width/meta_value=_width";s:5:"index";s:42:"postmeta_meta_key__width_meta_value__width";s:4:"name";s:6:" Width";s:3:"key";s:6:" Width";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:6:"_width";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:15;}i:14;a:23:{s:3:"src";s:44:"postmeta/meta_key=_height/meta_value=_height";s:5:"index";s:44:"postmeta_meta_key__height_meta_value__height";s:4:"name";s:7:" Height";s:3:"key";s:7:" Height";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:7:"_height";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:16;}i:15;a:24:{s:3:"src";s:52:"postmeta/meta_key=_tax_status/meta_value=_tax_status";s:5:"index";s:52:"postmeta_meta_key__tax_status_meta_value__tax_status";s:4:"name";s:11:" Tax Status";s:3:"key";s:11:" Tax Status";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:11:"_tax_status";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:4:"list";s:6:"values";a:3:{s:7:"taxable";s:7:"Taxable";s:8:"shipping";s:13:"Shipping only";s:4:"none";s:4:"None";}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:18;s:13:"search_values";a:3:{i:0;a:2:{s:3:"key";s:7:"taxable";s:5:"value";s:7:"Taxable";}i:1;a:2:{s:3:"key";s:8:"shipping";s:5:"value";s:13:"Shipping only";}i:2;a:2:{s:3:"key";s:4:"none";s:5:"value";s:4:"None";}}}i:16;a:24:{s:3:"src";s:18:"terms/product_type";s:5:"index";s:18:"terms_product_type";s:4:"name";s:12:"Product Type";s:3:"key";s:12:"Product Type";s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:12:"product_type";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:4:"list";s:6:"values";a:4:{i:2;s:6:"Simple";i:3;s:7:"Grouped";i:4;s:8:"Variable";i:5;s:8:"External";}s:13:"search_values";a:4:{i:0;a:2:{s:3:"key";s:6:"simple";s:5:"value";s:6:"Simple";}i:1;a:2:{s:3:"key";s:7:"grouped";s:5:"value";s:7:"Grouped";}i:2;a:2:{s:3:"key";s:8:"variable";s:5:"value";s:8:"Variable";}i:3;a:2:{s:3:"key";s:8:"external";s:5:"value";s:8:"External";}}s:6:"hidden";b:0;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:8:"position";i:19;}i:17;a:23:{s:3:"src";s:17:"posts/post_author";s:5:"index";s:17:"posts_post_author";s:4:"name";s:15:"Products Author";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:11:"post_author";s:3:"key";s:15:"Products Author";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:18;a:22:{s:3:"src";s:15:"posts/post_date";s:5:"index";s:15:"posts_post_date";s:4:"name";s:21:"Products Created Date";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:9:"post_date";s:3:"key";s:13:"Products Date";s:5:"width";i:102;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:0;s:4:"type";s:8:"datetime";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:19;a:22:{s:3:"src";s:19:"posts/post_date_gmt";s:5:"index";s:19:"posts_post_date_gmt";s:4:"name";s:25:"Products Created Date Gmt";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:13:"post_date_gmt";s:3:"key";s:17:"Products Date Gmt";s:5:"width";i:102;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:8:"datetime";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:20;a:22:{s:3:"src";s:18:"posts/post_excerpt";s:5:"index";s:18:"posts_post_excerpt";s:4:"name";s:22:"Additional Description";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:12:"post_excerpt";s:3:"key";s:22:"Additional Description";s:5:"width";i:130;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:21;a:22:{s:3:"src";s:20:"posts/comment_status";s:5:"index";s:20:"posts_comment_status";s:4:"name";s:14:"Comment Status";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:14:"comment_status";s:3:"key";s:14:"Comment Status";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:22;a:22:{s:3:"src";s:17:"posts/ping_status";s:5:"index";s:17:"posts_ping_status";s:4:"name";s:11:"Ping Status";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:11:"ping_status";s:3:"key";s:11:"Ping Status";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:23;a:22:{s:3:"src";s:19:"posts/post_password";s:5:"index";s:19:"posts_post_password";s:4:"name";s:17:"Products Password";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:13:"post_password";s:3:"key";s:17:"Products Password";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:24;a:22:{s:3:"src";s:15:"posts/post_name";s:5:"index";s:15:"posts_post_name";s:4:"name";s:13:"Products Name";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:9:"post_name";s:3:"key";s:13:"Products Name";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:25;a:22:{s:3:"src";s:13:"posts/to_ping";s:5:"index";s:13:"posts_to_ping";s:4:"name";s:7:"To Ping";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:7:"to_ping";s:3:"key";s:7:"To Ping";s:5:"width";i:130;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:26;a:22:{s:3:"src";s:12:"posts/pinged";s:5:"index";s:12:"posts_pinged";s:4:"name";s:6:"Pinged";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:6:"pinged";s:3:"key";s:6:"Pinged";s:5:"width";i:130;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:27;a:22:{s:3:"src";s:19:"posts/post_modified";s:5:"index";s:19:"posts_post_modified";s:4:"name";s:17:"Products Modified";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:13:"post_modified";s:3:"key";s:17:"Products Modified";s:5:"width";i:102;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:8:"datetime";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:28;a:22:{s:3:"src";s:23:"posts/post_modified_gmt";s:5:"index";s:23:"posts_post_modified_gmt";s:4:"name";s:21:"Products Modified Gmt";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:17:"post_modified_gmt";s:3:"key";s:21:"Products Modified Gmt";s:5:"width";i:102;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:8:"datetime";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:29;a:22:{s:3:"src";s:27:"posts/post_content_filtered";s:5:"index";s:27:"posts_post_content_filtered";s:4:"name";s:25:"Products Content Filtered";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:21:"post_content_filtered";s:3:"key";s:25:"Products Content Filtered";s:5:"width";i:150;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:10:"longstring";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:30;a:23:{s:3:"src";s:17:"posts/post_parent";s:5:"index";s:17:"posts_post_parent";s:4:"name";s:15:"Products Parent";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:11:"post_parent";s:3:"key";s:15:"Products Parent";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:31;a:22:{s:3:"src";s:10:"posts/guid";s:5:"index";s:10:"posts_guid";s:4:"name";s:4:"Guid";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:4:"guid";s:3:"key";s:4:"Guid";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:32;a:23:{s:3:"src";s:16:"posts/menu_order";s:5:"index";s:16:"posts_menu_order";s:4:"name";s:10:"Menu Order";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:10:"menu_order";s:3:"key";s:10:"Menu Order";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:33;a:22:{s:3:"src";s:20:"posts/post_mime_type";s:5:"index";s:20:"posts_post_mime_type";s:4:"name";s:18:"Products Mime Type";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:14:"post_mime_type";s:3:"key";s:18:"Products Mime Type";s:5:"width";i:100;s:5:"align";s:4:"left";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"string";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:34;a:23:{s:3:"src";s:19:"posts/comment_count";s:5:"index";s:19:"posts_comment_count";s:4:"name";s:13:"Comment Count";s:10:"table_name";s:10:"Jawi_posts";s:8:"col_name";s:13:"comment_count";s:3:"key";s:13:"Comment Count";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:35;a:13:{s:3:"src";s:16:"postmeta/post_id";s:5:"index";s:16:"postmeta_post_id";s:4:"name";s:7:"Post Id";s:3:"key";s:7:"Post Id";s:4:"type";s:6:"number";s:6:"hidden";b:1;s:14:"allow_showhide";b:0;s:8:"editable";b:0;s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:7:"post_id";s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:36;a:23:{s:3:"src";s:52:"postmeta/meta_key=_backorders/meta_value=_backorders";s:5:"index";s:52:"postmeta_meta_key__backorders_meta_value__backorders";s:4:"name";s:11:" Backorders";s:3:"key";s:11:" Backorders";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:11:"_backorders";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:4:"list";s:6:"values";a:3:{s:2:"no";s:12:"Do Not Allow";s:6:"notify";s:26:"Allow, but notify customer";s:3:"yes";s:5:"Allow";}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:13:"search_values";a:3:{i:0;a:2:{s:3:"key";s:2:"no";s:5:"value";s:12:"Do Not Allow";}i:1;a:2:{s:3:"key";s:6:"notify";s:5:"value";s:26:"Allow, but notify customer";}i:2;a:2:{s:3:"key";s:3:"yes";s:5:"value";s:5:"Allow";}}}i:37;a:22:{s:3:"src";s:54:"postmeta/meta_key=_button_text/meta_value=_button_text";s:5:"index";s:54:"postmeta_meta_key__button_text_meta_value__button_text";s:4:"name";s:12:" Button Text";s:3:"key";s:12:" Button Text";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:12:"_button_text";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:38;a:22:{s:3:"src";s:58:"postmeta/meta_key=_crosssell_ids/meta_value=_crosssell_ids";s:5:"index";s:58:"postmeta_meta_key__crosssell_ids_meta_value__crosssell_ids";s:4:"name";s:14:" Crosssell Ids";s:3:"key";s:14:" Crosssell Ids";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:14:"_crosssell_ids";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:10:"longstring";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:39;a:22:{s:3:"src";s:68:"postmeta/meta_key=_default_attributes/meta_value=_default_attributes";s:5:"index";s:68:"postmeta_meta_key__default_attributes_meta_value__default_attributes";s:4:"name";s:19:" Default Attributes";s:3:"key";s:19:" Default Attributes";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:19:"_default_attributes";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:10:"longstring";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:0;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:0;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:40;a:23:{s:3:"src";s:62:"postmeta/meta_key=_download_expiry/meta_value=_download_expiry";s:5:"index";s:62:"postmeta_meta_key__download_expiry_meta_value__download_expiry";s:4:"name";s:16:" Download Expiry";s:3:"key";s:16:" Download Expiry";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:16:"_download_expiry";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:41;a:23:{s:3:"src";s:60:"postmeta/meta_key=_download_limit/meta_value=_download_limit";s:5:"index";s:60:"postmeta_meta_key__download_limit_meta_value__download_limit";s:4:"name";s:15:" Download Limit";s:3:"key";s:15:" Download Limit";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:15:"_download_limit";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:42;a:22:{s:3:"src";s:56:"postmeta/meta_key=_downloadable/meta_value=_downloadable";s:5:"index";s:56:"postmeta_meta_key__downloadable_meta_value__downloadable";s:4:"name";s:13:" Downloadable";s:3:"key";s:13:" Downloadable";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:13:"_downloadable";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:12:"toggle_yesno";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:43;a:22:{s:3:"src";s:50:"postmeta/meta_key=_edit_last/meta_value=_edit_last";s:5:"index";s:50:"postmeta_meta_key__edit_last_meta_value__edit_last";s:4:"name";s:10:" Edit Last";s:3:"key";s:10:" Edit Last";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:10:"_edit_last";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:14:"toggle_numeric";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:44;a:22:{s:3:"src";s:50:"postmeta/meta_key=_edit_lock/meta_value=_edit_lock";s:5:"index";s:50:"postmeta_meta_key__edit_lock_meta_value__edit_lock";s:4:"name";s:10:" Edit Lock";s:3:"key";s:10:" Edit Lock";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:10:"_edit_lock";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:45;a:22:{s:3:"src";s:64:"postmeta/meta_key=_low_stock_amount/meta_value=_low_stock_amount";s:5:"index";s:64:"postmeta_meta_key__low_stock_amount_meta_value__low_stock_amount";s:4:"name";s:17:" Low Stock Amount";s:3:"key";s:17:" Low Stock Amount";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:17:"_low_stock_amount";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:46;a:22:{s:3:"src";s:56:"postmeta/meta_key=_manage_stock/meta_value=_manage_stock";s:5:"index";s:56:"postmeta_meta_key__manage_stock_meta_value__manage_stock";s:4:"name";s:13:" Manage Stock";s:3:"key";s:13:" Manage Stock";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:13:"_manage_stock";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:12:"toggle_yesno";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:47;a:22:{s:3:"src";s:54:"postmeta/meta_key=_not_buyable/meta_value=_not_buyable";s:5:"index";s:54:"postmeta_meta_key__not_buyable_meta_value__not_buyable";s:4:"name";s:12:" Not Buyable";s:3:"key";s:12:" Not Buyable";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:12:"_not_buyable";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:12:"toggle_yesno";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:48;a:23:{s:3:"src";s:42:"postmeta/meta_key=_price/meta_value=_price";s:5:"index";s:42:"postmeta_meta_key__price_meta_value__price";s:4:"name";s:6:" Price";s:3:"key";s:6:" Price";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:6:"_price";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:49;a:22:{s:3:"src";s:74:"postmeta/meta_key=_product_image_gallery/meta_value=_product_image_gallery";s:5:"index";s:74:"postmeta_meta_key__product_image_gallery_meta_value__product_image_gallery";s:4:"name";s:22:" Product Image Gallery";s:3:"key";s:22:" Product Image Gallery";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:22:"_product_image_gallery";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:50;a:22:{s:3:"src";s:54:"postmeta/meta_key=_product_url/meta_value=_product_url";s:5:"index";s:54:"postmeta_meta_key__product_url_meta_value__product_url";s:4:"name";s:12:" Product Url";s:3:"key";s:12:" Product Url";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:12:"_product_url";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:51;a:22:{s:3:"src";s:62:"postmeta/meta_key=_product_version/meta_value=_product_version";s:5:"index";s:62:"postmeta_meta_key__product_version_meta_value__product_version";s:4:"name";s:16:" Product Version";s:3:"key";s:16:" Product Version";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:16:"_product_version";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:52;a:22:{s:3:"src";s:58:"postmeta/meta_key=_purchase_note/meta_value=_purchase_note";s:5:"index";s:58:"postmeta_meta_key__purchase_note_meta_value__purchase_note";s:4:"name";s:14:" Purchase Note";s:3:"key";s:14:" Purchase Note";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:14:"_purchase_note";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:53;a:22:{s:3:"src";s:66:"postmeta/meta_key=_sold_individually/meta_value=_sold_individually";s:5:"index";s:66:"postmeta_meta_key__sold_individually_meta_value__sold_individually";s:4:"name";s:18:" Sold Individually";s:3:"key";s:18:" Sold Individually";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:18:"_sold_individually";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:12:"toggle_yesno";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:54;a:23:{s:3:"src";s:56:"postmeta/meta_key=_stock_status/meta_value=_stock_status";s:5:"index";s:56:"postmeta_meta_key__stock_status_meta_value__stock_status";s:4:"name";s:13:" Stock Status";s:3:"key";s:13:" Stock Status";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:13:"_stock_status";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:4:"list";s:6:"values";a:2:{s:7:"instock";s:8:"In stock";s:10:"outofstock";s:12:"Out of stock";}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:13:"search_values";a:2:{i:0;a:2:{s:3:"key";s:7:"instock";s:5:"value";s:8:"In stock";}i:1;a:2:{s:3:"key";s:10:"outofstock";s:5:"value";s:12:"Out of stock";}}}i:55;a:23:{s:3:"src";s:50:"postmeta/meta_key=_tax_class/meta_value=_tax_class";s:5:"index";s:50:"postmeta_meta_key__tax_class_meta_value__tax_class";s:4:"name";s:10:" Tax Class";s:3:"key";s:10:" Tax Class";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:10:"_tax_class";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:4:"list";s:6:"values";a:3:{s:0:"";s:8:"Standard";s:12:"reduced-rate";s:12:"Reduced Rate";s:9:"zero-rate";s:9:"Zero Rate";}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:13:"search_values";a:3:{i:0;a:2:{s:3:"key";s:0:"";s:5:"value";s:8:"Standard";}i:1;a:2:{s:3:"key";s:12:"reduced-rate";s:5:"value";s:12:"Reduced Rate";}i:2;a:2:{s:3:"key";s:9:"zero-rate";s:5:"value";s:9:"Zero Rate";}}}i:56;a:22:{s:3:"src";s:52:"postmeta/meta_key=_upsell_ids/meta_value=_upsell_ids";s:5:"index";s:52:"postmeta_meta_key__upsell_ids_meta_value__upsell_ids";s:4:"name";s:11:" Upsell Ids";s:3:"key";s:11:" Upsell Ids";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:11:"_upsell_ids";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:10:"longstring";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:57;a:22:{s:3:"src";s:46:"postmeta/meta_key=_virtual/meta_value=_virtual";s:5:"index";s:46:"postmeta_meta_key__virtual_meta_value__virtual";s:4:"name";s:8:" Virtual";s:3:"key";s:8:" Virtual";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:8:"_virtual";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:12:"toggle_yesno";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:58;a:22:{s:3:"src";s:66:"postmeta/meta_key=_wc_average_rating/meta_value=_wc_average_rating";s:5:"index";s:66:"postmeta_meta_key__wc_average_rating_meta_value__wc_average_rating";s:4:"name";s:18:" Wc Average Rating";s:3:"key";s:18:" Wc Average Rating";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:18:"_wc_average_rating";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:14:"toggle_numeric";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:59;a:22:{s:3:"src";s:62:"postmeta/meta_key=_wc_rating_count/meta_value=_wc_rating_count";s:5:"index";s:62:"postmeta_meta_key__wc_rating_count_meta_value__wc_rating_count";s:4:"name";s:16:" Wc Rating Count";s:3:"key";s:16:" Wc Rating Count";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:16:"_wc_rating_count";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:10:"longstring";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:60;a:22:{s:3:"src";s:62:"postmeta/meta_key=_wc_review_count/meta_value=_wc_review_count";s:5:"index";s:62:"postmeta_meta_key__wc_review_count_meta_value__wc_review_count";s:4:"name";s:16:" Wc Review Count";s:3:"key";s:16:" Wc Review Count";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:16:"_wc_review_count";s:5:"width";i:30;s:5:"align";s:4:"left";s:4:"type";s:14:"toggle_numeric";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:61;a:22:{s:3:"src";s:44:"postmeta/meta_key=_weight/meta_value=_weight";s:5:"index";s:44:"postmeta_meta_key__weight_meta_value__weight";s:4:"name";s:7:" Weight";s:3:"key";s:7:" Weight";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:7:"_weight";s:5:"width";i:100;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:62;a:23:{s:3:"src";s:52:"postmeta/meta_key=total_sales/meta_value=total_sales";s:5:"index";s:52:"postmeta_meta_key_total_sales_meta_value_total_sales";s:4:"name";s:11:"Total Sales";s:3:"key";s:11:"Total Sales";s:10:"table_name";s:13:"Jawi_postmeta";s:8:"col_name";s:11:"total_sales";s:5:"width";i:50;s:5:"align";s:5:"right";s:3:"min";i:0;s:4:"type";s:6:"number";s:6:"values";a:0:{}s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:63;a:13:{s:3:"src";s:15:"terms/object_id";s:5:"index";s:15:"terms_object_id";s:4:"name";s:9:"Object Id";s:3:"key";s:9:"Object Id";s:4:"type";s:6:"number";s:14:"allow_showhide";b:0;s:6:"hidden";b:1;s:8:"editable";b:0;s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:9:"object_id";s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:64;a:21:{s:3:"src";s:17:"terms/product_tag";s:5:"index";s:17:"terms_product_tag";s:4:"name";s:11:"Product Tag";s:3:"key";s:11:"Product Tag";s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:11:"product_tag";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;}i:65;a:23:{s:3:"src";s:28:"terms/product_shipping_class";s:5:"index";s:28:"terms_product_shipping_class";s:4:"name";s:22:"Product Shipping Class";s:3:"key";s:22:"Product Shipping Class";s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:22:"product_shipping_class";s:5:"width";i:200;s:5:"align";s:4:"left";s:4:"type";s:6:"string";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:6:"frozen";b:0;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:8:"category";s:0:"";s:11:"placeholder";s:0:"";s:10:"save_state";b:1;s:6:"values";a:1:{s:0:"";s:17:"No shipping class";}s:13:"search_values";i:1;}i:66;a:19:{s:3:"src";s:24:"terms/product_visibility";s:5:"index";s:24:"terms_product_visibility";s:4:"name";s:10:"Visibility";s:3:"key";s:10:"Visibility";s:4:"type";s:4:"list";s:6:"hidden";b:1;s:8:"editable";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:18:"product_visibility";s:5:"width";i:100;s:10:"save_state";b:1;s:6:"values";a:4:{s:7:"visible";s:7:"Visible";s:7:"catalog";s:7:"Catalog";s:6:"search";s:6:"Search";s:6:"hidden";s:6:"Hidden";}s:13:"search_values";a:4:{i:0;a:2:{s:3:"key";s:7:"visible";s:5:"value";s:7:"Visible";}i:1;a:2:{s:3:"key";s:7:"catalog";s:5:"value";s:7:"Catalog";}i:2;a:2:{s:3:"key";s:6:"search";s:5:"value";s:6:"Search";}i:3;a:2:{s:3:"key";s:6:"hidden";s:5:"value";s:6:"Hidden";}}}i:67;a:19:{s:3:"src";s:33:"terms/product_visibility_featured";s:5:"index";s:33:"terms_product_visibility_featured";s:4:"name";s:8:"Featured";s:3:"key";s:8:"Featured";s:4:"type";s:6:"toggle";s:6:"hidden";b:1;s:8:"editable";b:1;s:5:"width";i:100;s:10:"save_state";b:1;s:14:"batch_editable";b:1;s:8:"sortable";b:1;s:9:"resizable";b:1;s:14:"allow_showhide";b:1;s:10:"exportable";b:1;s:10:"searchable";b:1;s:10:"table_name";s:10:"Jawi_terms";s:8:"col_name";s:27:"product_visibility_featured";s:6:"values";a:0:{}s:13:"search_values";a:0:{}}}s:11:"sort_params";a:2:{s:7:"orderby";s:2:"ID";s:5:"order";s:4:"DESC";}s:14:"per_page_limit";s:0:"";s:8:"treegrid";b:1;}', 'no'),
(2512, '_transient_timeout_wc_product_loop68601546705744', '1550500371', 'no'),
(2513, '_transient_wc_product_loop68601546705744', 'O:8:"stdClass":5:{s:3:"ids";a:4:{i:0;i:189;i:1;i:180;i:2;i:193;i:3;i:176;}s:5:"total";i:4;s:11:"total_pages";i:1;s:8:"per_page";i:4;s:12:"current_page";i:1;}', 'no'),
(2514, '_transient_timeout_wc_product_loopf1ed1546705744', '1550500373', 'no'),
(2515, '_transient_wc_product_loopf1ed1546705744', 'O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:171;i:1;i:196;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:4;s:12:"current_page";i:1;}', 'no'),
(2521, '_transient_timeout_wc_product_loopd6681546705744', '1550500661', 'no'),
(2522, '_transient_wc_product_loopd6681546705744', 'O:8:"stdClass":5:{s:3:"ids";a:24:{i:0;i:189;i:1;i:180;i:2;i:193;i:3;i:176;i:4;i:178;i:5;i:179;i:6;i:181;i:7;i:192;i:8;i:185;i:9;i:174;i:10;i:190;i:11;i:191;i:12;i:184;i:13;i:186;i:14;i:187;i:15;i:177;i:16;i:194;i:17;i:188;i:18;i:195;i:19;i:183;i:20;i:182;i:21;i:84;i:22;i:173;i:23;i:175;}s:5:"total";i:24;s:11:"total_pages";i:1;s:8:"per_page";i:24;s:12:"current_page";i:1;}', 'no'),
(2523, '_transient_timeout_wc_product_loopa72e1546705744', '1550500664', 'no'),
(2524, '_transient_wc_product_loopa72e1546705744', 'O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:171;i:1;i:196;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:24;s:12:"current_page";i:1;}', 'no'),
(2526, '_transient_timeout_wc_product_loopcc851546705744', '1550500724', 'no'),
(2527, '_transient_wc_product_loopcc851546705744', 'O:8:"stdClass":5:{s:3:"ids";a:10:{i:0;i:189;i:1;i:180;i:2;i:193;i:3;i:176;i:4;i:178;i:5;i:179;i:6;i:181;i:7;i:192;i:8;i:185;i:9;i:174;}s:5:"total";i:10;s:11:"total_pages";i:1;s:8:"per_page";i:10;s:12:"current_page";i:1;}', 'no'),
(2528, '_transient_timeout_wc_product_loopc2bb1546705744', '1550500725', 'no'),
(2529, '_transient_wc_product_loopc2bb1546705744', 'O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:171;i:1;i:196;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:10;s:12:"current_page";i:1;}', 'no'),
(2535, '_transient_timeout_wc_product_loop3a7c1546705744', '1550501127', 'no'),
(2536, '_transient_wc_product_loop3a7c1546705744', 'O:8:"stdClass":5:{s:3:"ids";a:24:{i:0;i:189;i:1;i:180;i:2;i:193;i:3;i:176;i:4;i:178;i:5;i:179;i:6;i:181;i:7;i:192;i:8;i:185;i:9;i:174;i:10;i:190;i:11;i:191;i:12;i:184;i:13;i:186;i:14;i:187;i:15;i:177;i:16;i:194;i:17;i:188;i:18;i:195;i:19;i:183;i:20;i:182;i:21;i:84;i:22;i:173;i:23;i:175;}s:5:"total";i:24;s:11:"total_pages";i:1;s:8:"per_page";i:50;s:12:"current_page";i:1;}', 'no'),
(2537, '_transient_timeout_wc_product_loopd8131546705744', '1550501132', 'no'),
(2538, '_transient_wc_product_loopd8131546705744', 'O:8:"stdClass":5:{s:3:"ids";a:2:{i:0;i:171;i:1;i:196;}s:5:"total";i:2;s:11:"total_pages";i:1;s:8:"per_page";i:50;s:12:"current_page";i:1;}', 'no'),
(2544, '_site_transient_timeout_kirki_googlefonts_cache', '1547913248', 'no');
INSERT INTO `jawi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2546, '_site_transient_kirki_googlefonts_cache', 'a:904:{s:7:"ABeeZee";a:3:{s:5:"label";s:7:"ABeeZee";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Abel";a:3:{s:5:"label";s:4:"Abel";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Abhaya Libre";a:3:{s:5:"label";s:12:"Abhaya Libre";s:8:"variants";a:5:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Abril Fatface";a:3:{s:5:"label";s:13:"Abril Fatface";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Aclonica";a:3:{s:5:"label";s:8:"Aclonica";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Acme";a:3:{s:5:"label";s:4:"Acme";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Actor";a:3:{s:5:"label";s:5:"Actor";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Adamina";a:3:{s:5:"label";s:7:"Adamina";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Advent Pro";a:3:{s:5:"label";s:10:"Advent Pro";s:8:"variants";a:7:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Aguafina Script";a:3:{s:5:"label";s:15:"Aguafina Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Akronim";a:3:{s:5:"label";s:7:"Akronim";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Aladin";a:3:{s:5:"label";s:6:"Aladin";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Aldrich";a:3:{s:5:"label";s:7:"Aldrich";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Alef";a:3:{s:5:"label";s:4:"Alef";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Alegreya";a:3:{s:5:"label";s:8:"Alegreya";s:8:"variants";a:10:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:3:"800";i:5;s:9:"800italic";i:6;s:3:"900";i:7;s:9:"900italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Alegreya SC";a:3:{s:5:"label";s:11:"Alegreya SC";s:8:"variants";a:10:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:3:"800";i:5;s:9:"800italic";i:6;s:3:"900";i:7;s:9:"900italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Alegreya Sans";a:3:{s:5:"label";s:13:"Alegreya Sans";s:8:"variants";a:14:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"800";i:9;s:9:"800italic";i:10;s:3:"900";i:11;s:9:"900italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Alegreya Sans SC";a:3:{s:5:"label";s:16:"Alegreya Sans SC";s:8:"variants";a:14:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"800";i:9;s:9:"800italic";i:10;s:3:"900";i:11;s:9:"900italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Alex Brush";a:3:{s:5:"label";s:10:"Alex Brush";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Alfa Slab One";a:3:{s:5:"label";s:13:"Alfa Slab One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Alice";a:3:{s:5:"label";s:5:"Alice";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Alike";a:3:{s:5:"label";s:5:"Alike";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Alike Angular";a:3:{s:5:"label";s:13:"Alike Angular";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Allan";a:3:{s:5:"label";s:5:"Allan";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Allerta";a:3:{s:5:"label";s:7:"Allerta";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Allerta Stencil";a:3:{s:5:"label";s:15:"Allerta Stencil";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Allura";a:3:{s:5:"label";s:6:"Allura";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Almendra";a:3:{s:5:"label";s:8:"Almendra";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:16:"Almendra Display";a:3:{s:5:"label";s:16:"Almendra Display";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Almendra SC";a:3:{s:5:"label";s:11:"Almendra SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Amarante";a:3:{s:5:"label";s:8:"Amarante";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Amaranth";a:3:{s:5:"label";s:8:"Amaranth";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Amatic SC";a:3:{s:5:"label";s:9:"Amatic SC";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Amethysta";a:3:{s:5:"label";s:9:"Amethysta";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Amiko";a:3:{s:5:"label";s:5:"Amiko";s:8:"variants";a:3:{i:0;s:3:"600";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Amiri";a:3:{s:5:"label";s:5:"Amiri";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Amita";a:3:{s:5:"label";s:5:"Amita";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Anaheim";a:3:{s:5:"label";s:7:"Anaheim";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Andada";a:3:{s:5:"label";s:6:"Andada";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Andika";a:3:{s:5:"label";s:6:"Andika";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Angkor";a:3:{s:5:"label";s:6:"Angkor";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:24:"Annie Use Your Telescope";a:3:{s:5:"label";s:24:"Annie Use Your Telescope";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Anonymous Pro";a:3:{s:5:"label";s:13:"Anonymous Pro";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:9:"monospace";}s:5:"Antic";a:3:{s:5:"label";s:5:"Antic";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Antic Didone";a:3:{s:5:"label";s:12:"Antic Didone";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Antic Slab";a:3:{s:5:"label";s:10:"Antic Slab";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Anton";a:3:{s:5:"label";s:5:"Anton";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Arapey";a:3:{s:5:"label";s:6:"Arapey";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Arbutus";a:3:{s:5:"label";s:7:"Arbutus";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Arbutus Slab";a:3:{s:5:"label";s:12:"Arbutus Slab";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:19:"Architects Daughter";a:3:{s:5:"label";s:19:"Architects Daughter";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Archivo";a:3:{s:5:"label";s:7:"Archivo";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Archivo Black";a:3:{s:5:"label";s:13:"Archivo Black";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Archivo Narrow";a:3:{s:5:"label";s:14:"Archivo Narrow";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Aref Ruqaa";a:3:{s:5:"label";s:10:"Aref Ruqaa";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Arima Madurai";a:3:{s:5:"label";s:13:"Arima Madurai";s:8:"variants";a:8:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"700";i:5;s:3:"800";i:6;s:3:"900";i:7;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Arimo";a:3:{s:5:"label";s:5:"Arimo";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Arizonia";a:3:{s:5:"label";s:8:"Arizonia";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Armata";a:3:{s:5:"label";s:6:"Armata";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Arsenal";a:3:{s:5:"label";s:7:"Arsenal";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Artifika";a:3:{s:5:"label";s:8:"Artifika";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Arvo";a:3:{s:5:"label";s:4:"Arvo";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Arya";a:3:{s:5:"label";s:4:"Arya";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Asap";a:3:{s:5:"label";s:4:"Asap";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Asap Condensed";a:3:{s:5:"label";s:14:"Asap Condensed";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Asar";a:3:{s:5:"label";s:4:"Asar";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Asset";a:3:{s:5:"label";s:5:"Asset";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Assistant";a:3:{s:5:"label";s:9:"Assistant";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"600";i:3;s:3:"700";i:4;s:3:"800";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Astloch";a:3:{s:5:"label";s:7:"Astloch";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Asul";a:3:{s:5:"label";s:4:"Asul";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Athiti";a:3:{s:5:"label";s:6:"Athiti";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Atma";a:3:{s:5:"label";s:4:"Atma";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Atomic Age";a:3:{s:5:"label";s:10:"Atomic Age";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Aubrey";a:3:{s:5:"label";s:6:"Aubrey";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Audiowide";a:3:{s:5:"label";s:9:"Audiowide";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Autour One";a:3:{s:5:"label";s:10:"Autour One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Average";a:3:{s:5:"label";s:7:"Average";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Average Sans";a:3:{s:5:"label";s:12:"Average Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:19:"Averia Gruesa Libre";a:3:{s:5:"label";s:19:"Averia Gruesa Libre";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Averia Libre";a:3:{s:5:"label";s:12:"Averia Libre";s:8:"variants";a:6:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:7:"display";}s:17:"Averia Sans Libre";a:3:{s:5:"label";s:17:"Averia Sans Libre";s:8:"variants";a:6:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:7:"display";}s:18:"Averia Serif Libre";a:3:{s:5:"label";s:18:"Averia Serif Libre";s:8:"variants";a:6:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Bad Script";a:3:{s:5:"label";s:10:"Bad Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Bahiana";a:3:{s:5:"label";s:7:"Bahiana";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Bai Jamjuree";a:3:{s:5:"label";s:12:"Bai Jamjuree";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Baloo";a:3:{s:5:"label";s:5:"Baloo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Baloo Bhai";a:3:{s:5:"label";s:10:"Baloo Bhai";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Baloo Bhaijaan";a:3:{s:5:"label";s:14:"Baloo Bhaijaan";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Baloo Bhaina";a:3:{s:5:"label";s:12:"Baloo Bhaina";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Baloo Chettan";a:3:{s:5:"label";s:13:"Baloo Chettan";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Baloo Da";a:3:{s:5:"label";s:8:"Baloo Da";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Baloo Paaji";a:3:{s:5:"label";s:11:"Baloo Paaji";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Baloo Tamma";a:3:{s:5:"label";s:11:"Baloo Tamma";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Baloo Tammudu";a:3:{s:5:"label";s:13:"Baloo Tammudu";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Baloo Thambi";a:3:{s:5:"label";s:12:"Baloo Thambi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Balthazar";a:3:{s:5:"label";s:9:"Balthazar";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Bangers";a:3:{s:5:"label";s:7:"Bangers";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Barlow";a:3:{s:5:"label";s:6:"Barlow";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Barlow Condensed";a:3:{s:5:"label";s:16:"Barlow Condensed";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:21:"Barlow Semi Condensed";a:3:{s:5:"label";s:21:"Barlow Semi Condensed";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Barrio";a:3:{s:5:"label";s:6:"Barrio";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Basic";a:3:{s:5:"label";s:5:"Basic";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Battambang";a:3:{s:5:"label";s:10:"Battambang";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Baumans";a:3:{s:5:"label";s:7:"Baumans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Bayon";a:3:{s:5:"label";s:5:"Bayon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Belgrano";a:3:{s:5:"label";s:8:"Belgrano";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Bellefair";a:3:{s:5:"label";s:9:"Bellefair";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Belleza";a:3:{s:5:"label";s:7:"Belleza";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"BenchNine";a:3:{s:5:"label";s:9:"BenchNine";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Bentham";a:3:{s:5:"label";s:7:"Bentham";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"Berkshire Swash";a:3:{s:5:"label";s:15:"Berkshire Swash";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Bevan";a:3:{s:5:"label";s:5:"Bevan";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Bigelow Rules";a:3:{s:5:"label";s:13:"Bigelow Rules";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Bigshot One";a:3:{s:5:"label";s:11:"Bigshot One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Bilbo";a:3:{s:5:"label";s:5:"Bilbo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:16:"Bilbo Swash Caps";a:3:{s:5:"label";s:16:"Bilbo Swash Caps";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"BioRhyme";a:3:{s:5:"label";s:8:"BioRhyme";s:8:"variants";a:5:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"BioRhyme Expanded";a:3:{s:5:"label";s:17:"BioRhyme Expanded";s:8:"variants";a:5:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Biryani";a:3:{s:5:"label";s:7:"Biryani";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"600";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Bitter";a:3:{s:5:"label";s:6:"Bitter";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:23:"Black And White Picture";a:3:{s:5:"label";s:23:"Black And White Picture";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Black Han Sans";a:3:{s:5:"label";s:14:"Black Han Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Black Ops One";a:3:{s:5:"label";s:13:"Black Ops One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Bokor";a:3:{s:5:"label";s:5:"Bokor";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Bonbon";a:3:{s:5:"label";s:6:"Bonbon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Boogaloo";a:3:{s:5:"label";s:8:"Boogaloo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Bowlby One";a:3:{s:5:"label";s:10:"Bowlby One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Bowlby One SC";a:3:{s:5:"label";s:13:"Bowlby One SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Brawler";a:3:{s:5:"label";s:7:"Brawler";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Bree Serif";a:3:{s:5:"label";s:10:"Bree Serif";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Bubblegum Sans";a:3:{s:5:"label";s:14:"Bubblegum Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Bubbler One";a:3:{s:5:"label";s:11:"Bubbler One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Buda";a:3:{s:5:"label";s:4:"Buda";s:8:"variants";a:1:{i:0;s:3:"300";}s:8:"category";s:7:"display";}s:7:"Buenard";a:3:{s:5:"label";s:7:"Buenard";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Bungee";a:3:{s:5:"label";s:6:"Bungee";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Bungee Hairline";a:3:{s:5:"label";s:15:"Bungee Hairline";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Bungee Inline";a:3:{s:5:"label";s:13:"Bungee Inline";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Bungee Outline";a:3:{s:5:"label";s:14:"Bungee Outline";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Bungee Shade";a:3:{s:5:"label";s:12:"Bungee Shade";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Butcherman";a:3:{s:5:"label";s:10:"Butcherman";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Butterfly Kids";a:3:{s:5:"label";s:14:"Butterfly Kids";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Cabin";a:3:{s:5:"label";s:5:"Cabin";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Cabin Condensed";a:3:{s:5:"label";s:15:"Cabin Condensed";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Cabin Sketch";a:3:{s:5:"label";s:12:"Cabin Sketch";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Caesar Dressing";a:3:{s:5:"label";s:15:"Caesar Dressing";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Cagliostro";a:3:{s:5:"label";s:10:"Cagliostro";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Cairo";a:3:{s:5:"label";s:5:"Cairo";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"600";i:3;s:3:"700";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Calligraffitti";a:3:{s:5:"label";s:14:"Calligraffitti";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Cambay";a:3:{s:5:"label";s:6:"Cambay";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Cambo";a:3:{s:5:"label";s:5:"Cambo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Candal";a:3:{s:5:"label";s:6:"Candal";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Cantarell";a:3:{s:5:"label";s:9:"Cantarell";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Cantata One";a:3:{s:5:"label";s:11:"Cantata One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Cantora One";a:3:{s:5:"label";s:11:"Cantora One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Capriola";a:3:{s:5:"label";s:8:"Capriola";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Cardo";a:3:{s:5:"label";s:5:"Cardo";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Carme";a:3:{s:5:"label";s:5:"Carme";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Carrois Gothic";a:3:{s:5:"label";s:14:"Carrois Gothic";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:17:"Carrois Gothic SC";a:3:{s:5:"label";s:17:"Carrois Gothic SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Carter One";a:3:{s:5:"label";s:10:"Carter One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Catamaran";a:3:{s:5:"label";s:9:"Catamaran";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Caudex";a:3:{s:5:"label";s:6:"Caudex";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Caveat";a:3:{s:5:"label";s:6:"Caveat";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Caveat Brush";a:3:{s:5:"label";s:12:"Caveat Brush";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:18:"Cedarville Cursive";a:3:{s:5:"label";s:18:"Cedarville Cursive";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:11:"Ceviche One";a:3:{s:5:"label";s:11:"Ceviche One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Chakra Petch";a:3:{s:5:"label";s:12:"Chakra Petch";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Changa";a:3:{s:5:"label";s:6:"Changa";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"800";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Changa One";a:3:{s:5:"label";s:10:"Changa One";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Chango";a:3:{s:5:"label";s:6:"Chango";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Charmonman";a:3:{s:5:"label";s:10:"Charmonman";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Chathura";a:3:{s:5:"label";s:8:"Chathura";s:8:"variants";a:5:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:18:"Chau Philomene One";a:3:{s:5:"label";s:18:"Chau Philomene One";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Chela One";a:3:{s:5:"label";s:9:"Chela One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Chelsea Market";a:3:{s:5:"label";s:14:"Chelsea Market";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Chenla";a:3:{s:5:"label";s:6:"Chenla";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:17:"Cherry Cream Soda";a:3:{s:5:"label";s:17:"Cherry Cream Soda";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Cherry Swash";a:3:{s:5:"label";s:12:"Cherry Swash";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Chewy";a:3:{s:5:"label";s:5:"Chewy";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Chicle";a:3:{s:5:"label";s:6:"Chicle";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Chivo";a:3:{s:5:"label";s:5:"Chivo";s:8:"variants";a:8:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:3:"900";i:5;s:9:"900italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Chonburi";a:3:{s:5:"label";s:8:"Chonburi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Cinzel";a:3:{s:5:"label";s:6:"Cinzel";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"900";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"Cinzel Decorative";a:3:{s:5:"label";s:17:"Cinzel Decorative";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"900";i:2;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Clicker Script";a:3:{s:5:"label";s:14:"Clicker Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:4:"Coda";a:3:{s:5:"label";s:4:"Coda";s:8:"variants";a:2:{i:0;s:3:"800";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Coda Caption";a:3:{s:5:"label";s:12:"Coda Caption";s:8:"variants";a:1:{i:0;s:3:"800";}s:8:"category";s:10:"sans-serif";}s:8:"Codystar";a:3:{s:5:"label";s:8:"Codystar";s:8:"variants";a:2:{i:0;s:3:"300";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Coiny";a:3:{s:5:"label";s:5:"Coiny";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Combo";a:3:{s:5:"label";s:5:"Combo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Comfortaa";a:3:{s:5:"label";s:9:"Comfortaa";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Coming Soon";a:3:{s:5:"label";s:11:"Coming Soon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:11:"Concert One";a:3:{s:5:"label";s:11:"Concert One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Condiment";a:3:{s:5:"label";s:9:"Condiment";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Content";a:3:{s:5:"label";s:7:"Content";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Contrail One";a:3:{s:5:"label";s:12:"Contrail One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Convergence";a:3:{s:5:"label";s:11:"Convergence";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Cookie";a:3:{s:5:"label";s:6:"Cookie";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Copse";a:3:{s:5:"label";s:5:"Copse";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Corben";a:3:{s:5:"label";s:6:"Corben";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Cormorant";a:3:{s:5:"label";s:9:"Cormorant";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:18:"Cormorant Garamond";a:3:{s:5:"label";s:18:"Cormorant Garamond";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:16:"Cormorant Infant";a:3:{s:5:"label";s:16:"Cormorant Infant";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Cormorant SC";a:3:{s:5:"label";s:12:"Cormorant SC";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"Cormorant Unicase";a:3:{s:5:"label";s:17:"Cormorant Unicase";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"Cormorant Upright";a:3:{s:5:"label";s:17:"Cormorant Upright";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Courgette";a:3:{s:5:"label";s:9:"Courgette";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Cousine";a:3:{s:5:"label";s:7:"Cousine";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:9:"monospace";}s:8:"Coustard";a:3:{s:5:"label";s:8:"Coustard";s:8:"variants";a:2:{i:0;s:3:"900";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:21:"Covered By Your Grace";a:3:{s:5:"label";s:21:"Covered By Your Grace";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Crafty Girls";a:3:{s:5:"label";s:12:"Crafty Girls";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Creepster";a:3:{s:5:"label";s:9:"Creepster";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Crete Round";a:3:{s:5:"label";s:11:"Crete Round";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Crimson Text";a:3:{s:5:"label";s:12:"Crimson Text";s:8:"variants";a:6:{i:0;s:3:"600";i:1;s:9:"600italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Croissant One";a:3:{s:5:"label";s:13:"Croissant One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Crushed";a:3:{s:5:"label";s:7:"Crushed";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Cuprum";a:3:{s:5:"label";s:6:"Cuprum";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Cute Font";a:3:{s:5:"label";s:9:"Cute Font";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Cutive";a:3:{s:5:"label";s:6:"Cutive";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Cutive Mono";a:3:{s:5:"label";s:11:"Cutive Mono";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:9:"monospace";}s:6:"Damion";a:3:{s:5:"label";s:6:"Damion";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:14:"Dancing Script";a:3:{s:5:"label";s:14:"Dancing Script";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Dangrek";a:3:{s:5:"label";s:7:"Dangrek";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"David Libre";a:3:{s:5:"label";s:11:"David Libre";s:8:"variants";a:3:{i:0;s:3:"500";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:20:"Dawning of a New Day";a:3:{s:5:"label";s:20:"Dawning of a New Day";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Days One";a:3:{s:5:"label";s:8:"Days One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Dekko";a:3:{s:5:"label";s:5:"Dekko";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Delius";a:3:{s:5:"label";s:6:"Delius";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:17:"Delius Swash Caps";a:3:{s:5:"label";s:17:"Delius Swash Caps";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:14:"Delius Unicase";a:3:{s:5:"label";s:14:"Delius Unicase";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Della Respira";a:3:{s:5:"label";s:13:"Della Respira";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Denk One";a:3:{s:5:"label";s:8:"Denk One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Devonshire";a:3:{s:5:"label";s:10:"Devonshire";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Dhurjati";a:3:{s:5:"label";s:8:"Dhurjati";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Didact Gothic";a:3:{s:5:"label";s:13:"Didact Gothic";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Diplomata";a:3:{s:5:"label";s:9:"Diplomata";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Diplomata SC";a:3:{s:5:"label";s:12:"Diplomata SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Do Hyeon";a:3:{s:5:"label";s:8:"Do Hyeon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Dokdo";a:3:{s:5:"label";s:5:"Dokdo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Domine";a:3:{s:5:"label";s:6:"Domine";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Donegal One";a:3:{s:5:"label";s:11:"Donegal One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Doppio One";a:3:{s:5:"label";s:10:"Doppio One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Dorsa";a:3:{s:5:"label";s:5:"Dorsa";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Dosis";a:3:{s:5:"label";s:5:"Dosis";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"800";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Dr Sugiyama";a:3:{s:5:"label";s:11:"Dr Sugiyama";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Duru Sans";a:3:{s:5:"label";s:9:"Duru Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Dynalight";a:3:{s:5:"label";s:9:"Dynalight";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"EB Garamond";a:3:{s:5:"label";s:11:"EB Garamond";s:8:"variants";a:10:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:3:"800";i:7;s:9:"800italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Eagle Lake";a:3:{s:5:"label";s:10:"Eagle Lake";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:14:"East Sea Dokdo";a:3:{s:5:"label";s:14:"East Sea Dokdo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Eater";a:3:{s:5:"label";s:5:"Eater";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Economica";a:3:{s:5:"label";s:9:"Economica";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Eczar";a:3:{s:5:"label";s:5:"Eczar";s:8:"variants";a:5:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"El Messiri";a:3:{s:5:"label";s:10:"El Messiri";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Electrolize";a:3:{s:5:"label";s:11:"Electrolize";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Elsie";a:3:{s:5:"label";s:5:"Elsie";s:8:"variants";a:2:{i:0;s:3:"900";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Elsie Swash Caps";a:3:{s:5:"label";s:16:"Elsie Swash Caps";s:8:"variants";a:2:{i:0;s:3:"900";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Emblema One";a:3:{s:5:"label";s:11:"Emblema One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Emilys Candy";a:3:{s:5:"label";s:12:"Emilys Candy";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Encode Sans";a:3:{s:5:"label";s:11:"Encode Sans";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:21:"Encode Sans Condensed";a:3:{s:5:"label";s:21:"Encode Sans Condensed";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:20:"Encode Sans Expanded";a:3:{s:5:"label";s:20:"Encode Sans Expanded";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:26:"Encode Sans Semi Condensed";a:3:{s:5:"label";s:26:"Encode Sans Semi Condensed";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:25:"Encode Sans Semi Expanded";a:3:{s:5:"label";s:25:"Encode Sans Semi Expanded";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Engagement";a:3:{s:5:"label";s:10:"Engagement";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Englebert";a:3:{s:5:"label";s:9:"Englebert";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Enriqueta";a:3:{s:5:"label";s:9:"Enriqueta";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Erica One";a:3:{s:5:"label";s:9:"Erica One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Esteban";a:3:{s:5:"label";s:7:"Esteban";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"Euphoria Script";a:3:{s:5:"label";s:15:"Euphoria Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Ewert";a:3:{s:5:"label";s:5:"Ewert";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:3:"Exo";a:3:{s:5:"label";s:3:"Exo";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Exo 2";a:3:{s:5:"label";s:5:"Exo 2";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Expletus Sans";a:3:{s:5:"label";s:13:"Expletus Sans";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Fahkwang";a:3:{s:5:"label";s:8:"Fahkwang";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Fanwood Text";a:3:{s:5:"label";s:12:"Fanwood Text";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Farsan";a:3:{s:5:"label";s:6:"Farsan";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Fascinate";a:3:{s:5:"label";s:9:"Fascinate";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Fascinate Inline";a:3:{s:5:"label";s:16:"Fascinate Inline";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Faster One";a:3:{s:5:"label";s:10:"Faster One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Fasthand";a:3:{s:5:"label";s:8:"Fasthand";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Fauna One";a:3:{s:5:"label";s:9:"Fauna One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Faustina";a:3:{s:5:"label";s:8:"Faustina";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Federant";a:3:{s:5:"label";s:8:"Federant";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Federo";a:3:{s:5:"label";s:6:"Federo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Felipa";a:3:{s:5:"label";s:6:"Felipa";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Fenix";a:3:{s:5:"label";s:5:"Fenix";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Finger Paint";a:3:{s:5:"label";s:12:"Finger Paint";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Fira Mono";a:3:{s:5:"label";s:9:"Fira Mono";s:8:"variants";a:3:{i:0;s:3:"500";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:9:"monospace";}s:9:"Fira Sans";a:3:{s:5:"label";s:9:"Fira Sans";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:19:"Fira Sans Condensed";a:3:{s:5:"label";s:19:"Fira Sans Condensed";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:25:"Fira Sans Extra Condensed";a:3:{s:5:"label";s:25:"Fira Sans Extra Condensed";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Fjalla One";a:3:{s:5:"label";s:10:"Fjalla One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Fjord One";a:3:{s:5:"label";s:9:"Fjord One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Flamenco";a:3:{s:5:"label";s:8:"Flamenco";s:8:"variants";a:2:{i:0;s:3:"300";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Flavors";a:3:{s:5:"label";s:7:"Flavors";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Fondamento";a:3:{s:5:"label";s:10:"Fondamento";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:16:"Fontdiner Swanky";a:3:{s:5:"label";s:16:"Fontdiner Swanky";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Forum";a:3:{s:5:"label";s:5:"Forum";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Francois One";a:3:{s:5:"label";s:12:"Francois One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Frank Ruhl Libre";a:3:{s:5:"label";s:16:"Frank Ruhl Libre";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"700";i:3;s:3:"900";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Freckle Face";a:3:{s:5:"label";s:12:"Freckle Face";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:20:"Fredericka the Great";a:3:{s:5:"label";s:20:"Fredericka the Great";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Fredoka One";a:3:{s:5:"label";s:11:"Fredoka One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Freehand";a:3:{s:5:"label";s:8:"Freehand";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Fresca";a:3:{s:5:"label";s:6:"Fresca";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Frijole";a:3:{s:5:"label";s:7:"Frijole";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Fruktur";a:3:{s:5:"label";s:7:"Fruktur";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Fugaz One";a:3:{s:5:"label";s:9:"Fugaz One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"GFS Didot";a:3:{s:5:"label";s:9:"GFS Didot";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"GFS Neohellenic";a:3:{s:5:"label";s:15:"GFS Neohellenic";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Gabriela";a:3:{s:5:"label";s:8:"Gabriela";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Gaegu";a:3:{s:5:"label";s:5:"Gaegu";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Gafata";a:3:{s:5:"label";s:6:"Gafata";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Galada";a:3:{s:5:"label";s:6:"Galada";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Galdeano";a:3:{s:5:"label";s:8:"Galdeano";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Galindo";a:3:{s:5:"label";s:7:"Galindo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Gamja Flower";a:3:{s:5:"label";s:12:"Gamja Flower";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Gentium Basic";a:3:{s:5:"label";s:13:"Gentium Basic";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:18:"Gentium Book Basic";a:3:{s:5:"label";s:18:"Gentium Book Basic";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:3:"Geo";a:3:{s:5:"label";s:3:"Geo";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Geostar";a:3:{s:5:"label";s:7:"Geostar";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Geostar Fill";a:3:{s:5:"label";s:12:"Geostar Fill";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Germania One";a:3:{s:5:"label";s:12:"Germania One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Gidugu";a:3:{s:5:"label";s:6:"Gidugu";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Gilda Display";a:3:{s:5:"label";s:13:"Gilda Display";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Give You Glory";a:3:{s:5:"label";s:14:"Give You Glory";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Glass Antiqua";a:3:{s:5:"label";s:13:"Glass Antiqua";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Glegoo";a:3:{s:5:"label";s:6:"Glegoo";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"Gloria Hallelujah";a:3:{s:5:"label";s:17:"Gloria Hallelujah";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:10:"Goblin One";a:3:{s:5:"label";s:10:"Goblin One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Gochi Hand";a:3:{s:5:"label";s:10:"Gochi Hand";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Gorditas";a:3:{s:5:"label";s:8:"Gorditas";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Gothic A1";a:3:{s:5:"label";s:9:"Gothic A1";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:21:"Goudy Bookletter 1911";a:3:{s:5:"label";s:21:"Goudy Bookletter 1911";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Graduate";a:3:{s:5:"label";s:8:"Graduate";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Grand Hotel";a:3:{s:5:"label";s:11:"Grand Hotel";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Gravitas One";a:3:{s:5:"label";s:12:"Gravitas One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Great Vibes";a:3:{s:5:"label";s:11:"Great Vibes";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Griffy";a:3:{s:5:"label";s:6:"Griffy";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Gruppo";a:3:{s:5:"label";s:6:"Gruppo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Gudea";a:3:{s:5:"label";s:5:"Gudea";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Gugi";a:3:{s:5:"label";s:4:"Gugi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Gurajada";a:3:{s:5:"label";s:8:"Gurajada";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Habibi";a:3:{s:5:"label";s:6:"Habibi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Halant";a:3:{s:5:"label";s:6:"Halant";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"Hammersmith One";a:3:{s:5:"label";s:15:"Hammersmith One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Hanalei";a:3:{s:5:"label";s:7:"Hanalei";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Hanalei Fill";a:3:{s:5:"label";s:12:"Hanalei Fill";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Handlee";a:3:{s:5:"label";s:7:"Handlee";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Hanuman";a:3:{s:5:"label";s:7:"Hanuman";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Happy Monkey";a:3:{s:5:"label";s:12:"Happy Monkey";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Harmattan";a:3:{s:5:"label";s:9:"Harmattan";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Headland One";a:3:{s:5:"label";s:12:"Headland One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Heebo";a:3:{s:5:"label";s:5:"Heebo";s:8:"variants";a:7:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Henny Penny";a:3:{s:5:"label";s:11:"Henny Penny";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:20:"Herr Von Muellerhoff";a:3:{s:5:"label";s:20:"Herr Von Muellerhoff";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Hi Melody";a:3:{s:5:"label";s:9:"Hi Melody";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:4:"Hind";a:3:{s:5:"label";s:4:"Hind";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Hind Guntur";a:3:{s:5:"label";s:11:"Hind Guntur";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Hind Madurai";a:3:{s:5:"label";s:12:"Hind Madurai";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Hind Siliguri";a:3:{s:5:"label";s:13:"Hind Siliguri";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Hind Vadodara";a:3:{s:5:"label";s:13:"Hind Vadodara";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Holtwood One SC";a:3:{s:5:"label";s:15:"Holtwood One SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Homemade Apple";a:3:{s:5:"label";s:14:"Homemade Apple";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Homenaje";a:3:{s:5:"label";s:8:"Homenaje";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"IBM Plex Mono";a:3:{s:5:"label";s:13:"IBM Plex Mono";s:8:"variants";a:14:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:9:"monospace";}s:13:"IBM Plex Sans";a:3:{s:5:"label";s:13:"IBM Plex Sans";s:8:"variants";a:14:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:23:"IBM Plex Sans Condensed";a:3:{s:5:"label";s:23:"IBM Plex Sans Condensed";s:8:"variants";a:14:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"IBM Plex Serif";a:3:{s:5:"label";s:14:"IBM Plex Serif";s:8:"variants";a:14:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"IM Fell DW Pica";a:3:{s:5:"label";s:15:"IM Fell DW Pica";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:18:"IM Fell DW Pica SC";a:3:{s:5:"label";s:18:"IM Fell DW Pica SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:19:"IM Fell Double Pica";a:3:{s:5:"label";s:19:"IM Fell Double Pica";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:22:"IM Fell Double Pica SC";a:3:{s:5:"label";s:22:"IM Fell Double Pica SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"IM Fell English";a:3:{s:5:"label";s:15:"IM Fell English";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:18:"IM Fell English SC";a:3:{s:5:"label";s:18:"IM Fell English SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:20:"IM Fell French Canon";a:3:{s:5:"label";s:20:"IM Fell French Canon";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:23:"IM Fell French Canon SC";a:3:{s:5:"label";s:23:"IM Fell French Canon SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:20:"IM Fell Great Primer";a:3:{s:5:"label";s:20:"IM Fell Great Primer";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:23:"IM Fell Great Primer SC";a:3:{s:5:"label";s:23:"IM Fell Great Primer SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Iceberg";a:3:{s:5:"label";s:7:"Iceberg";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Iceland";a:3:{s:5:"label";s:7:"Iceland";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Imprima";a:3:{s:5:"label";s:7:"Imprima";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Inconsolata";a:3:{s:5:"label";s:11:"Inconsolata";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:9:"monospace";}s:5:"Inder";a:3:{s:5:"label";s:5:"Inder";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Indie Flower";a:3:{s:5:"label";s:12:"Indie Flower";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Inika";a:3:{s:5:"label";s:5:"Inika";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Inknut Antiqua";a:3:{s:5:"label";s:14:"Inknut Antiqua";s:8:"variants";a:7:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Irish Grover";a:3:{s:5:"label";s:12:"Irish Grover";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Istok Web";a:3:{s:5:"label";s:9:"Istok Web";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Italiana";a:3:{s:5:"label";s:8:"Italiana";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Italianno";a:3:{s:5:"label";s:9:"Italianno";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:4:"Itim";a:3:{s:5:"label";s:4:"Itim";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:16:"Jacques Francois";a:3:{s:5:"label";s:16:"Jacques Francois";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:23:"Jacques Francois Shadow";a:3:{s:5:"label";s:23:"Jacques Francois Shadow";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Jaldi";a:3:{s:5:"label";s:5:"Jaldi";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Jim Nightshade";a:3:{s:5:"label";s:14:"Jim Nightshade";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:10:"Jockey One";a:3:{s:5:"label";s:10:"Jockey One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Jolly Lodger";a:3:{s:5:"label";s:12:"Jolly Lodger";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Jomhuria";a:3:{s:5:"label";s:8:"Jomhuria";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Josefin Sans";a:3:{s:5:"label";s:12:"Josefin Sans";s:8:"variants";a:10:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Josefin Slab";a:3:{s:5:"label";s:12:"Josefin Slab";s:8:"variants";a:10:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Joti One";a:3:{s:5:"label";s:8:"Joti One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:3:"Jua";a:3:{s:5:"label";s:3:"Jua";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Judson";a:3:{s:5:"label";s:6:"Judson";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Julee";a:3:{s:5:"label";s:5:"Julee";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:15:"Julius Sans One";a:3:{s:5:"label";s:15:"Julius Sans One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Junge";a:3:{s:5:"label";s:5:"Junge";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Jura";a:3:{s:5:"label";s:4:"Jura";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:17:"Just Another Hand";a:3:{s:5:"label";s:17:"Just Another Hand";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:23:"Just Me Again Down Here";a:3:{s:5:"label";s:23:"Just Me Again Down Here";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:3:"K2D";a:3:{s:5:"label";s:3:"K2D";s:8:"variants";a:16:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:6:"italic";i:15;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Kadwa";a:3:{s:5:"label";s:5:"Kadwa";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Kalam";a:3:{s:5:"label";s:5:"Kalam";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Kameron";a:3:{s:5:"label";s:7:"Kameron";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Kanit";a:3:{s:5:"label";s:5:"Kanit";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Kantumruy";a:3:{s:5:"label";s:9:"Kantumruy";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Karla";a:3:{s:5:"label";s:5:"Karla";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Karma";a:3:{s:5:"label";s:5:"Karma";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Katibeh";a:3:{s:5:"label";s:7:"Katibeh";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Kaushan Script";a:3:{s:5:"label";s:14:"Kaushan Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Kavivanar";a:3:{s:5:"label";s:9:"Kavivanar";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Kavoon";a:3:{s:5:"label";s:6:"Kavoon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Kdam Thmor";a:3:{s:5:"label";s:10:"Kdam Thmor";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Keania One";a:3:{s:5:"label";s:10:"Keania One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Kelly Slab";a:3:{s:5:"label";s:10:"Kelly Slab";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Kenia";a:3:{s:5:"label";s:5:"Kenia";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Khand";a:3:{s:5:"label";s:5:"Khand";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Khmer";a:3:{s:5:"label";s:5:"Khmer";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Khula";a:3:{s:5:"label";s:5:"Khula";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"600";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Kirang Haerang";a:3:{s:5:"label";s:14:"Kirang Haerang";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Kite One";a:3:{s:5:"label";s:8:"Kite One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Knewave";a:3:{s:5:"label";s:7:"Knewave";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"KoHo";a:3:{s:5:"label";s:4:"KoHo";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Kodchasan";a:3:{s:5:"label";s:9:"Kodchasan";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Kosugi";a:3:{s:5:"label";s:6:"Kosugi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Kosugi Maru";a:3:{s:5:"label";s:11:"Kosugi Maru";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Kotta One";a:3:{s:5:"label";s:9:"Kotta One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Koulen";a:3:{s:5:"label";s:6:"Koulen";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Kranky";a:3:{s:5:"label";s:6:"Kranky";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Kreon";a:3:{s:5:"label";s:5:"Kreon";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Kristi";a:3:{s:5:"label";s:6:"Kristi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Krona One";a:3:{s:5:"label";s:9:"Krona One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Krub";a:3:{s:5:"label";s:4:"Krub";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Kumar One";a:3:{s:5:"label";s:9:"Kumar One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:17:"Kumar One Outline";a:3:{s:5:"label";s:17:"Kumar One Outline";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Kurale";a:3:{s:5:"label";s:6:"Kurale";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"La Belle Aurore";a:3:{s:5:"label";s:15:"La Belle Aurore";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Laila";a:3:{s:5:"label";s:5:"Laila";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Lakki Reddy";a:3:{s:5:"label";s:11:"Lakki Reddy";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Lalezar";a:3:{s:5:"label";s:7:"Lalezar";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Lancelot";a:3:{s:5:"label";s:8:"Lancelot";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Lateef";a:3:{s:5:"label";s:6:"Lateef";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:4:"Lato";a:3:{s:5:"label";s:4:"Lato";s:8:"variants";a:10:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:3:"900";i:7;s:9:"900italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"League Script";a:3:{s:5:"label";s:13:"League Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Leckerli One";a:3:{s:5:"label";s:12:"Leckerli One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Ledger";a:3:{s:5:"label";s:6:"Ledger";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Lekton";a:3:{s:5:"label";s:6:"Lekton";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Lemon";a:3:{s:5:"label";s:5:"Lemon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Lemonada";a:3:{s:5:"label";s:8:"Lemonada";s:8:"variants";a:4:{i:0;s:3:"300";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:7:"display";}s:17:"Libre Barcode 128";a:3:{s:5:"label";s:17:"Libre Barcode 128";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:22:"Libre Barcode 128 Text";a:3:{s:5:"label";s:22:"Libre Barcode 128 Text";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Libre Barcode 39";a:3:{s:5:"label";s:16:"Libre Barcode 39";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:25:"Libre Barcode 39 Extended";a:3:{s:5:"label";s:25:"Libre Barcode 39 Extended";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:30:"Libre Barcode 39 Extended Text";a:3:{s:5:"label";s:30:"Libre Barcode 39 Extended Text";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:21:"Libre Barcode 39 Text";a:3:{s:5:"label";s:21:"Libre Barcode 39 Text";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:17:"Libre Baskerville";a:3:{s:5:"label";s:17:"Libre Baskerville";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Libre Franklin";a:3:{s:5:"label";s:14:"Libre Franklin";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Life Savers";a:3:{s:5:"label";s:11:"Life Savers";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Lilita One";a:3:{s:5:"label";s:10:"Lilita One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Lily Script One";a:3:{s:5:"label";s:15:"Lily Script One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Limelight";a:3:{s:5:"label";s:9:"Limelight";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Linden Hill";a:3:{s:5:"label";s:11:"Linden Hill";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Lobster";a:3:{s:5:"label";s:7:"Lobster";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Lobster Two";a:3:{s:5:"label";s:11:"Lobster Two";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Londrina Outline";a:3:{s:5:"label";s:16:"Londrina Outline";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Londrina Shadow";a:3:{s:5:"label";s:15:"Londrina Shadow";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Londrina Sketch";a:3:{s:5:"label";s:15:"Londrina Sketch";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Londrina Solid";a:3:{s:5:"label";s:14:"Londrina Solid";s:8:"variants";a:4:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"900";i:3;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Lora";a:3:{s:5:"label";s:4:"Lora";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:21:"Love Ya Like A Sister";a:3:{s:5:"label";s:21:"Love Ya Like A Sister";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:17:"Loved by the King";a:3:{s:5:"label";s:17:"Loved by the King";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:14:"Lovers Quarrel";a:3:{s:5:"label";s:14:"Lovers Quarrel";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Luckiest Guy";a:3:{s:5:"label";s:12:"Luckiest Guy";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Lusitana";a:3:{s:5:"label";s:8:"Lusitana";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Lustria";a:3:{s:5:"label";s:7:"Lustria";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"M PLUS 1p";a:3:{s:5:"label";s:9:"M PLUS 1p";s:8:"variants";a:7:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:17:"M PLUS Rounded 1c";a:3:{s:5:"label";s:17:"M PLUS Rounded 1c";s:8:"variants";a:7:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Macondo";a:3:{s:5:"label";s:7:"Macondo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:18:"Macondo Swash Caps";a:3:{s:5:"label";s:18:"Macondo Swash Caps";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Mada";a:3:{s:5:"label";s:4:"Mada";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Magra";a:3:{s:5:"label";s:5:"Magra";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Maiden Orange";a:3:{s:5:"label";s:13:"Maiden Orange";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Maitree";a:3:{s:5:"label";s:7:"Maitree";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Mako";a:3:{s:5:"label";s:4:"Mako";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Mali";a:3:{s:5:"label";s:4:"Mali";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Mallanna";a:3:{s:5:"label";s:8:"Mallanna";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Mandali";a:3:{s:5:"label";s:7:"Mandali";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Manuale";a:3:{s:5:"label";s:7:"Manuale";s:8:"variants";a:8:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Marcellus";a:3:{s:5:"label";s:9:"Marcellus";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Marcellus SC";a:3:{s:5:"label";s:12:"Marcellus SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Marck Script";a:3:{s:5:"label";s:12:"Marck Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Margarine";a:3:{s:5:"label";s:9:"Margarine";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Markazi Text";a:3:{s:5:"label";s:12:"Markazi Text";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Marko One";a:3:{s:5:"label";s:9:"Marko One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Marmelad";a:3:{s:5:"label";s:8:"Marmelad";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Martel";a:3:{s:5:"label";s:6:"Martel";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"600";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Martel Sans";a:3:{s:5:"label";s:11:"Martel Sans";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"600";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Marvel";a:3:{s:5:"label";s:6:"Marvel";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Mate";a:3:{s:5:"label";s:4:"Mate";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Mate SC";a:3:{s:5:"label";s:7:"Mate SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Maven Pro";a:3:{s:5:"label";s:9:"Maven Pro";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"700";i:2;s:3:"900";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"McLaren";a:3:{s:5:"label";s:7:"McLaren";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Meddon";a:3:{s:5:"label";s:6:"Meddon";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"MedievalSharp";a:3:{s:5:"label";s:13:"MedievalSharp";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Medula One";a:3:{s:5:"label";s:10:"Medula One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Meera Inimai";a:3:{s:5:"label";s:12:"Meera Inimai";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Megrim";a:3:{s:5:"label";s:6:"Megrim";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Meie Script";a:3:{s:5:"label";s:11:"Meie Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Merienda";a:3:{s:5:"label";s:8:"Merienda";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Merienda One";a:3:{s:5:"label";s:12:"Merienda One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Merriweather";a:3:{s:5:"label";s:12:"Merriweather";s:8:"variants";a:8:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:3:"900";i:5;s:9:"900italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"Merriweather Sans";a:3:{s:5:"label";s:17:"Merriweather Sans";s:8:"variants";a:8:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:3:"800";i:5;s:9:"800italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Metal";a:3:{s:5:"label";s:5:"Metal";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Metal Mania";a:3:{s:5:"label";s:11:"Metal Mania";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Metamorphous";a:3:{s:5:"label";s:12:"Metamorphous";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Metrophobic";a:3:{s:5:"label";s:11:"Metrophobic";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Michroma";a:3:{s:5:"label";s:8:"Michroma";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Milonga";a:3:{s:5:"label";s:7:"Milonga";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Miltonian";a:3:{s:5:"label";s:9:"Miltonian";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Miltonian Tattoo";a:3:{s:5:"label";s:16:"Miltonian Tattoo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Mina";a:3:{s:5:"label";s:4:"Mina";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Miniver";a:3:{s:5:"label";s:7:"Miniver";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Miriam Libre";a:3:{s:5:"label";s:12:"Miriam Libre";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Mirza";a:3:{s:5:"label";s:5:"Mirza";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Miss Fajardose";a:3:{s:5:"label";s:14:"Miss Fajardose";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:4:"Mitr";a:3:{s:5:"label";s:4:"Mitr";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Modak";a:3:{s:5:"label";s:5:"Modak";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Modern Antiqua";a:3:{s:5:"label";s:14:"Modern Antiqua";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Mogra";a:3:{s:5:"label";s:5:"Mogra";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Molengo";a:3:{s:5:"label";s:7:"Molengo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Molle";a:3:{s:5:"label";s:5:"Molle";s:8:"variants";a:1:{i:0;s:6:"italic";}s:8:"category";s:11:"handwriting";}s:5:"Monda";a:3:{s:5:"label";s:5:"Monda";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Monofett";a:3:{s:5:"label";s:8:"Monofett";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Monoton";a:3:{s:5:"label";s:7:"Monoton";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:20:"Monsieur La Doulaise";a:3:{s:5:"label";s:20:"Monsieur La Doulaise";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Montaga";a:3:{s:5:"label";s:7:"Montaga";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Montez";a:3:{s:5:"label";s:6:"Montez";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:10:"Montserrat";a:3:{s:5:"label";s:10:"Montserrat";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:21:"Montserrat Alternates";a:3:{s:5:"label";s:21:"Montserrat Alternates";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:20:"Montserrat Subrayada";a:3:{s:5:"label";s:20:"Montserrat Subrayada";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Moul";a:3:{s:5:"label";s:4:"Moul";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Moulpali";a:3:{s:5:"label";s:8:"Moulpali";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:22:"Mountains of Christmas";a:3:{s:5:"label";s:22:"Mountains of Christmas";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Mouse Memoirs";a:3:{s:5:"label";s:13:"Mouse Memoirs";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Mr Bedfort";a:3:{s:5:"label";s:10:"Mr Bedfort";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Mr Dafoe";a:3:{s:5:"label";s:8:"Mr Dafoe";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:14:"Mr De Haviland";a:3:{s:5:"label";s:14:"Mr De Haviland";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:19:"Mrs Saint Delafield";a:3:{s:5:"label";s:19:"Mrs Saint Delafield";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Mrs Sheppards";a:3:{s:5:"label";s:13:"Mrs Sheppards";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Mukta";a:3:{s:5:"label";s:5:"Mukta";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"800";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Mukta Mahee";a:3:{s:5:"label";s:11:"Mukta Mahee";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"800";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Mukta Malar";a:3:{s:5:"label";s:11:"Mukta Malar";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"800";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Mukta Vaani";a:3:{s:5:"label";s:11:"Mukta Vaani";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"800";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Muli";a:3:{s:5:"label";s:4:"Muli";s:8:"variants";a:14:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"800";i:9;s:9:"800italic";i:10;s:3:"900";i:11;s:9:"900italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Mystery Quest";a:3:{s:5:"label";s:13:"Mystery Quest";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:3:"NTR";a:3:{s:5:"label";s:3:"NTR";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:18:"Nanum Brush Script";a:3:{s:5:"label";s:18:"Nanum Brush Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Nanum Gothic";a:3:{s:5:"label";s:12:"Nanum Gothic";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"800";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:19:"Nanum Gothic Coding";a:3:{s:5:"label";s:19:"Nanum Gothic Coding";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:9:"monospace";}s:14:"Nanum Myeongjo";a:3:{s:5:"label";s:14:"Nanum Myeongjo";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"800";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:16:"Nanum Pen Script";a:3:{s:5:"label";s:16:"Nanum Pen Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Neucha";a:3:{s:5:"label";s:6:"Neucha";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Neuton";a:3:{s:5:"label";s:6:"Neuton";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"700";i:3;s:3:"800";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"New Rocker";a:3:{s:5:"label";s:10:"New Rocker";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"News Cycle";a:3:{s:5:"label";s:10:"News Cycle";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Niconne";a:3:{s:5:"label";s:7:"Niconne";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Niramit";a:3:{s:5:"label";s:7:"Niramit";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Nixie One";a:3:{s:5:"label";s:9:"Nixie One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Nobile";a:3:{s:5:"label";s:6:"Nobile";s:8:"variants";a:6:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Nokora";a:3:{s:5:"label";s:6:"Nokora";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Norican";a:3:{s:5:"label";s:7:"Norican";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Nosifer";a:3:{s:5:"label";s:7:"Nosifer";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Notable";a:3:{s:5:"label";s:7:"Notable";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:20:"Nothing You Could Do";a:3:{s:5:"label";s:20:"Nothing You Could Do";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:12:"Noticia Text";a:3:{s:5:"label";s:12:"Noticia Text";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Noto Sans";a:3:{s:5:"label";s:9:"Noto Sans";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Noto Sans JP";a:3:{s:5:"label";s:12:"Noto Sans JP";s:8:"variants";a:6:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Noto Sans KR";a:3:{s:5:"label";s:12:"Noto Sans KR";s:8:"variants";a:6:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Noto Sans SC";a:3:{s:5:"label";s:12:"Noto Sans SC";s:8:"variants";a:6:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Noto Sans TC";a:3:{s:5:"label";s:12:"Noto Sans TC";s:8:"variants";a:6:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Noto Serif";a:3:{s:5:"label";s:10:"Noto Serif";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Noto Serif JP";a:3:{s:5:"label";s:13:"Noto Serif JP";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Noto Serif KR";a:3:{s:5:"label";s:13:"Noto Serif KR";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Noto Serif SC";a:3:{s:5:"label";s:13:"Noto Serif SC";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:5:"serif";}s:13:"Noto Serif TC";a:3:{s:5:"label";s:13:"Noto Serif TC";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Nova Cut";a:3:{s:5:"label";s:8:"Nova Cut";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Nova Flat";a:3:{s:5:"label";s:9:"Nova Flat";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Nova Mono";a:3:{s:5:"label";s:9:"Nova Mono";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:9:"monospace";}s:9:"Nova Oval";a:3:{s:5:"label";s:9:"Nova Oval";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Nova Round";a:3:{s:5:"label";s:10:"Nova Round";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Nova Script";a:3:{s:5:"label";s:11:"Nova Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Nova Slim";a:3:{s:5:"label";s:9:"Nova Slim";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Nova Square";a:3:{s:5:"label";s:11:"Nova Square";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Numans";a:3:{s:5:"label";s:6:"Numans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Nunito";a:3:{s:5:"label";s:6:"Nunito";s:8:"variants";a:14:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"800";i:9;s:9:"800italic";i:10;s:3:"900";i:11;s:9:"900italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Nunito Sans";a:3:{s:5:"label";s:11:"Nunito Sans";s:8:"variants";a:14:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"800";i:9;s:9:"800italic";i:10;s:3:"900";i:11;s:9:"900italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Odor Mean Chey";a:3:{s:5:"label";s:14:"Odor Mean Chey";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Offside";a:3:{s:5:"label";s:7:"Offside";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Old Standard TT";a:3:{s:5:"label";s:15:"Old Standard TT";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Oldenburg";a:3:{s:5:"label";s:9:"Oldenburg";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Oleo Script";a:3:{s:5:"label";s:11:"Oleo Script";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:22:"Oleo Script Swash Caps";a:3:{s:5:"label";s:22:"Oleo Script Swash Caps";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Open Sans";a:3:{s:5:"label";s:9:"Open Sans";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:3:"800";i:7;s:9:"800italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:19:"Open Sans Condensed";a:3:{s:5:"label";s:19:"Open Sans Condensed";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";}s:8:"category";s:10:"sans-serif";}s:11:"Oranienbaum";a:3:{s:5:"label";s:11:"Oranienbaum";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Orbitron";a:3:{s:5:"label";s:8:"Orbitron";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"700";i:2;s:3:"900";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Oregano";a:3:{s:5:"label";s:7:"Oregano";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Orienta";a:3:{s:5:"label";s:7:"Orienta";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Original Surfer";a:3:{s:5:"label";s:15:"Original Surfer";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Oswald";a:3:{s:5:"label";s:6:"Oswald";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Over the Rainbow";a:3:{s:5:"label";s:16:"Over the Rainbow";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Overlock";a:3:{s:5:"label";s:8:"Overlock";s:8:"variants";a:6:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:3:"900";i:3;s:9:"900italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Overlock SC";a:3:{s:5:"label";s:11:"Overlock SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Overpass";a:3:{s:5:"label";s:8:"Overpass";s:8:"variants";a:16:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:3:"800";i:11;s:9:"800italic";i:12;s:3:"900";i:13;s:9:"900italic";i:14;s:6:"italic";i:15;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Overpass Mono";a:3:{s:5:"label";s:13:"Overpass Mono";s:8:"variants";a:4:{i:0;s:3:"300";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:9:"monospace";}s:3:"Ovo";a:3:{s:5:"label";s:3:"Ovo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Oxygen";a:3:{s:5:"label";s:6:"Oxygen";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Oxygen Mono";a:3:{s:5:"label";s:11:"Oxygen Mono";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:9:"monospace";}s:7:"PT Mono";a:3:{s:5:"label";s:7:"PT Mono";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:9:"monospace";}s:7:"PT Sans";a:3:{s:5:"label";s:7:"PT Sans";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"PT Sans Caption";a:3:{s:5:"label";s:15:"PT Sans Caption";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"PT Sans Narrow";a:3:{s:5:"label";s:14:"PT Sans Narrow";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"PT Serif";a:3:{s:5:"label";s:8:"PT Serif";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:16:"PT Serif Caption";a:3:{s:5:"label";s:16:"PT Serif Caption";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Pacifico";a:3:{s:5:"label";s:8:"Pacifico";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Padauk";a:3:{s:5:"label";s:6:"Padauk";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Palanquin";a:3:{s:5:"label";s:9:"Palanquin";s:8:"variants";a:7:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Palanquin Dark";a:3:{s:5:"label";s:14:"Palanquin Dark";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Pangolin";a:3:{s:5:"label";s:8:"Pangolin";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Paprika";a:3:{s:5:"label";s:7:"Paprika";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Parisienne";a:3:{s:5:"label";s:10:"Parisienne";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:11:"Passero One";a:3:{s:5:"label";s:11:"Passero One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Passion One";a:3:{s:5:"label";s:11:"Passion One";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"900";i:2;s:7:"regular";}s:8:"category";s:7:"display";}s:18:"Pathway Gothic One";a:3:{s:5:"label";s:18:"Pathway Gothic One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Patrick Hand";a:3:{s:5:"label";s:12:"Patrick Hand";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:15:"Patrick Hand SC";a:3:{s:5:"label";s:15:"Patrick Hand SC";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Pattaya";a:3:{s:5:"label";s:7:"Pattaya";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Patua One";a:3:{s:5:"label";s:9:"Patua One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Pavanam";a:3:{s:5:"label";s:7:"Pavanam";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Paytone One";a:3:{s:5:"label";s:11:"Paytone One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Peddana";a:3:{s:5:"label";s:7:"Peddana";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Peralta";a:3:{s:5:"label";s:7:"Peralta";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Permanent Marker";a:3:{s:5:"label";s:16:"Permanent Marker";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:19:"Petit Formal Script";a:3:{s:5:"label";s:19:"Petit Formal Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Petrona";a:3:{s:5:"label";s:7:"Petrona";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Philosopher";a:3:{s:5:"label";s:11:"Philosopher";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Piedra";a:3:{s:5:"label";s:6:"Piedra";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Pinyon Script";a:3:{s:5:"label";s:13:"Pinyon Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:10:"Pirata One";a:3:{s:5:"label";s:10:"Pirata One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Plaster";a:3:{s:5:"label";s:7:"Plaster";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Play";a:3:{s:5:"label";s:4:"Play";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Playball";a:3:{s:5:"label";s:8:"Playball";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Playfair Display";a:3:{s:5:"label";s:16:"Playfair Display";s:8:"variants";a:6:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:3:"900";i:3;s:9:"900italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:5:"serif";}s:19:"Playfair Display SC";a:3:{s:5:"label";s:19:"Playfair Display SC";s:8:"variants";a:6:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:3:"900";i:3;s:9:"900italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Podkova";a:3:{s:5:"label";s:7:"Podkova";s:8:"variants";a:5:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Poiret One";a:3:{s:5:"label";s:10:"Poiret One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Poller One";a:3:{s:5:"label";s:10:"Poller One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Poly";a:3:{s:5:"label";s:4:"Poly";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Pompiere";a:3:{s:5:"label";s:8:"Pompiere";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Pontano Sans";a:3:{s:5:"label";s:12:"Pontano Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Poor Story";a:3:{s:5:"label";s:10:"Poor Story";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Poppins";a:3:{s:5:"label";s:7:"Poppins";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Port Lligat Sans";a:3:{s:5:"label";s:16:"Port Lligat Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Port Lligat Slab";a:3:{s:5:"label";s:16:"Port Lligat Slab";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Pragati Narrow";a:3:{s:5:"label";s:14:"Pragati Narrow";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Prata";a:3:{s:5:"label";s:5:"Prata";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Preahvihear";a:3:{s:5:"label";s:11:"Preahvihear";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"Press Start 2P";a:3:{s:5:"label";s:14:"Press Start 2P";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Pridi";a:3:{s:5:"label";s:5:"Pridi";s:8:"variants";a:6:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Princess Sofia";a:3:{s:5:"label";s:14:"Princess Sofia";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Prociono";a:3:{s:5:"label";s:8:"Prociono";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Prompt";a:3:{s:5:"label";s:6:"Prompt";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Prosto One";a:3:{s:5:"label";s:10:"Prosto One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Proza Libre";a:3:{s:5:"label";s:11:"Proza Libre";s:8:"variants";a:10:{i:0;s:3:"500";i:1;s:9:"500italic";i:2;s:3:"600";i:3;s:9:"600italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:3:"800";i:7;s:9:"800italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Puritan";a:3:{s:5:"label";s:7:"Puritan";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Purple Purse";a:3:{s:5:"label";s:12:"Purple Purse";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Quando";a:3:{s:5:"label";s:6:"Quando";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Quantico";a:3:{s:5:"label";s:8:"Quantico";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Quattrocento";a:3:{s:5:"label";s:12:"Quattrocento";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:17:"Quattrocento Sans";a:3:{s:5:"label";s:17:"Quattrocento Sans";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Questrial";a:3:{s:5:"label";s:9:"Questrial";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Quicksand";a:3:{s:5:"label";s:9:"Quicksand";s:8:"variants";a:4:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Quintessential";a:3:{s:5:"label";s:14:"Quintessential";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Qwigley";a:3:{s:5:"label";s:7:"Qwigley";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:15:"Racing Sans One";a:3:{s:5:"label";s:15:"Racing Sans One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Radley";a:3:{s:5:"label";s:6:"Radley";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Rajdhani";a:3:{s:5:"label";s:8:"Rajdhani";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Rakkas";a:3:{s:5:"label";s:6:"Rakkas";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Raleway";a:3:{s:5:"label";s:7:"Raleway";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Raleway Dots";a:3:{s:5:"label";s:12:"Raleway Dots";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Ramabhadra";a:3:{s:5:"label";s:10:"Ramabhadra";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Ramaraja";a:3:{s:5:"label";s:8:"Ramaraja";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Rambla";a:3:{s:5:"label";s:6:"Rambla";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Rammetto One";a:3:{s:5:"label";s:12:"Rammetto One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Ranchers";a:3:{s:5:"label";s:8:"Ranchers";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Rancho";a:3:{s:5:"label";s:6:"Rancho";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:5:"Ranga";a:3:{s:5:"label";s:5:"Ranga";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Rasa";a:3:{s:5:"label";s:4:"Rasa";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Rationale";a:3:{s:5:"label";s:9:"Rationale";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Ravi Prakash";a:3:{s:5:"label";s:12:"Ravi Prakash";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Redressed";a:3:{s:5:"label";s:9:"Redressed";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Reem Kufi";a:3:{s:5:"label";s:9:"Reem Kufi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Reenie Beanie";a:3:{s:5:"label";s:13:"Reenie Beanie";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Revalia";a:3:{s:5:"label";s:7:"Revalia";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Rhodium Libre";a:3:{s:5:"label";s:13:"Rhodium Libre";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Ribeye";a:3:{s:5:"label";s:6:"Ribeye";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Ribeye Marrow";a:3:{s:5:"label";s:13:"Ribeye Marrow";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Righteous";a:3:{s:5:"label";s:9:"Righteous";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Risque";a:3:{s:5:"label";s:6:"Risque";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Roboto";a:3:{s:5:"label";s:6:"Roboto";s:8:"variants";a:12:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"900";i:9;s:9:"900italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Roboto Condensed";a:3:{s:5:"label";s:16:"Roboto Condensed";s:8:"variants";a:6:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:6:"italic";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Roboto Mono";a:3:{s:5:"label";s:11:"Roboto Mono";s:8:"variants";a:10:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:9:"monospace";}s:11:"Roboto Slab";a:3:{s:5:"label";s:11:"Roboto Slab";s:8:"variants";a:4:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Rochester";a:3:{s:5:"label";s:9:"Rochester";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Rock Salt";a:3:{s:5:"label";s:9:"Rock Salt";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Rokkitt";a:3:{s:5:"label";s:7:"Rokkitt";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Romanesco";a:3:{s:5:"label";s:9:"Romanesco";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Ropa Sans";a:3:{s:5:"label";s:9:"Ropa Sans";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Rosario";a:3:{s:5:"label";s:7:"Rosario";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Rosarivo";a:3:{s:5:"label";s:8:"Rosarivo";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:12:"Rouge Script";a:3:{s:5:"label";s:12:"Rouge Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Rozha One";a:3:{s:5:"label";s:9:"Rozha One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Rubik";a:3:{s:5:"label";s:5:"Rubik";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:3:"900";i:7;s:9:"900italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Rubik Mono One";a:3:{s:5:"label";s:14:"Rubik Mono One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:4:"Ruda";a:3:{s:5:"label";s:4:"Ruda";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"900";i:2;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Rufina";a:3:{s:5:"label";s:6:"Rufina";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Ruge Boogie";a:3:{s:5:"label";s:11:"Ruge Boogie";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Ruluko";a:3:{s:5:"label";s:6:"Ruluko";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Rum Raisin";a:3:{s:5:"label";s:10:"Rum Raisin";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:14:"Ruslan Display";a:3:{s:5:"label";s:14:"Ruslan Display";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Russo One";a:3:{s:5:"label";s:9:"Russo One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Ruthie";a:3:{s:5:"label";s:6:"Ruthie";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:3:"Rye";a:3:{s:5:"label";s:3:"Rye";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Sacramento";a:3:{s:5:"label";s:10:"Sacramento";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Sahitya";a:3:{s:5:"label";s:7:"Sahitya";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Sail";a:3:{s:5:"label";s:4:"Sail";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Saira";a:3:{s:5:"label";s:5:"Saira";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Saira Condensed";a:3:{s:5:"label";s:15:"Saira Condensed";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:21:"Saira Extra Condensed";a:3:{s:5:"label";s:21:"Saira Extra Condensed";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:20:"Saira Semi Condensed";a:3:{s:5:"label";s:20:"Saira Semi Condensed";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Salsa";a:3:{s:5:"label";s:5:"Salsa";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Sanchez";a:3:{s:5:"label";s:7:"Sanchez";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Sancreek";a:3:{s:5:"label";s:8:"Sancreek";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Sansita";a:3:{s:5:"label";s:7:"Sansita";s:8:"variants";a:8:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:3:"800";i:3;s:9:"800italic";i:4;s:3:"900";i:5;s:9:"900italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Sarala";a:3:{s:5:"label";s:6:"Sarala";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Sarina";a:3:{s:5:"label";s:6:"Sarina";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Sarpanch";a:3:{s:5:"label";s:8:"Sarpanch";s:8:"variants";a:6:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:3:"800";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Satisfy";a:3:{s:5:"label";s:7:"Satisfy";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:15:"Sawarabi Gothic";a:3:{s:5:"label";s:15:"Sawarabi Gothic";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Sawarabi Mincho";a:3:{s:5:"label";s:15:"Sawarabi Mincho";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Scada";a:3:{s:5:"label";s:5:"Scada";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Scheherazade";a:3:{s:5:"label";s:12:"Scheherazade";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Schoolbell";a:3:{s:5:"label";s:10:"Schoolbell";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Scope One";a:3:{s:5:"label";s:9:"Scope One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Seaweed Script";a:3:{s:5:"label";s:14:"Seaweed Script";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Secular One";a:3:{s:5:"label";s:11:"Secular One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Sedgwick Ave";a:3:{s:5:"label";s:12:"Sedgwick Ave";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:20:"Sedgwick Ave Display";a:3:{s:5:"label";s:20:"Sedgwick Ave Display";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Sevillana";a:3:{s:5:"label";s:9:"Sevillana";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Seymour One";a:3:{s:5:"label";s:11:"Seymour One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:18:"Shadows Into Light";a:3:{s:5:"label";s:18:"Shadows Into Light";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:22:"Shadows Into Light Two";a:3:{s:5:"label";s:22:"Shadows Into Light Two";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Shanti";a:3:{s:5:"label";s:6:"Shanti";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Share";a:3:{s:5:"label";s:5:"Share";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Share Tech";a:3:{s:5:"label";s:10:"Share Tech";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:15:"Share Tech Mono";a:3:{s:5:"label";s:15:"Share Tech Mono";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:9:"monospace";}s:9:"Shojumaru";a:3:{s:5:"label";s:9:"Shojumaru";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:11:"Short Stack";a:3:{s:5:"label";s:11:"Short Stack";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Shrikhand";a:3:{s:5:"label";s:9:"Shrikhand";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Siemreap";a:3:{s:5:"label";s:8:"Siemreap";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Sigmar One";a:3:{s:5:"label";s:10:"Sigmar One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Signika";a:3:{s:5:"label";s:7:"Signika";s:8:"variants";a:4:{i:0;s:3:"300";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Signika Negative";a:3:{s:5:"label";s:16:"Signika Negative";s:8:"variants";a:4:{i:0;s:3:"300";i:1;s:3:"600";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Simonetta";a:3:{s:5:"label";s:9:"Simonetta";s:8:"variants";a:4:{i:0;s:3:"900";i:1;s:9:"900italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Sintony";a:3:{s:5:"label";s:7:"Sintony";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Sirin Stencil";a:3:{s:5:"label";s:13:"Sirin Stencil";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Six Caps";a:3:{s:5:"label";s:8:"Six Caps";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Skranji";a:3:{s:5:"label";s:7:"Skranji";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Slabo 13px";a:3:{s:5:"label";s:10:"Slabo 13px";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Slabo 27px";a:3:{s:5:"label";s:10:"Slabo 27px";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Slackey";a:3:{s:5:"label";s:7:"Slackey";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Smokum";a:3:{s:5:"label";s:6:"Smokum";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Smythe";a:3:{s:5:"label";s:6:"Smythe";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Sniglet";a:3:{s:5:"label";s:7:"Sniglet";s:8:"variants";a:2:{i:0;s:3:"800";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Snippet";a:3:{s:5:"label";s:7:"Snippet";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:13:"Snowburst One";a:3:{s:5:"label";s:13:"Snowburst One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Sofadi One";a:3:{s:5:"label";s:10:"Sofadi One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Sofia";a:3:{s:5:"label";s:5:"Sofia";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:10:"Song Myung";a:3:{s:5:"label";s:10:"Song Myung";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Sonsie One";a:3:{s:5:"label";s:10:"Sonsie One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:16:"Sorts Mill Goudy";a:3:{s:5:"label";s:16:"Sorts Mill Goudy";s:8:"variants";a:2:{i:0;s:6:"italic";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:15:"Source Code Pro";a:3:{s:5:"label";s:15:"Source Code Pro";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"600";i:4;s:3:"700";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:9:"monospace";}s:15:"Source Sans Pro";a:3:{s:5:"label";s:15:"Source Sans Pro";s:8:"variants";a:12:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"900";i:9;s:9:"900italic";i:10;s:6:"italic";i:11;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Source Serif Pro";a:3:{s:5:"label";s:16:"Source Serif Pro";s:8:"variants";a:3:{i:0;s:3:"600";i:1;s:3:"700";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Space Mono";a:3:{s:5:"label";s:10:"Space Mono";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:9:"monospace";}s:13:"Special Elite";a:3:{s:5:"label";s:13:"Special Elite";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Spectral";a:3:{s:5:"label";s:8:"Spectral";s:8:"variants";a:14:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:3:"800";i:11;s:9:"800italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Spectral SC";a:3:{s:5:"label";s:11:"Spectral SC";s:8:"variants";a:14:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"500";i:5;s:9:"500italic";i:6;s:3:"600";i:7;s:9:"600italic";i:8;s:3:"700";i:9;s:9:"700italic";i:10;s:3:"800";i:11;s:9:"800italic";i:12;s:6:"italic";i:13;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Spicy Rice";a:3:{s:5:"label";s:10:"Spicy Rice";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Spinnaker";a:3:{s:5:"label";s:9:"Spinnaker";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:6:"Spirax";a:3:{s:5:"label";s:6:"Spirax";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Squada One";a:3:{s:5:"label";s:10:"Squada One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:20:"Sree Krushnadevaraya";a:3:{s:5:"label";s:20:"Sree Krushnadevaraya";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Sriracha";a:3:{s:5:"label";s:8:"Sriracha";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Srisakdi";a:3:{s:5:"label";s:8:"Srisakdi";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Stalemate";a:3:{s:5:"label";s:9:"Stalemate";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:13:"Stalinist One";a:3:{s:5:"label";s:13:"Stalinist One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Stardos Stencil";a:3:{s:5:"label";s:15:"Stardos Stencil";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:21:"Stint Ultra Condensed";a:3:{s:5:"label";s:21:"Stint Ultra Condensed";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:20:"Stint Ultra Expanded";a:3:{s:5:"label";s:20:"Stint Ultra Expanded";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Stoke";a:3:{s:5:"label";s:5:"Stoke";s:8:"variants";a:2:{i:0;s:3:"300";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Strait";a:3:{s:5:"label";s:6:"Strait";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Stylish";a:3:{s:5:"label";s:7:"Stylish";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:19:"Sue Ellen Francisco";a:3:{s:5:"label";s:19:"Sue Ellen Francisco";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Suez One";a:3:{s:5:"label";s:8:"Suez One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Sumana";a:3:{s:5:"label";s:6:"Sumana";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Sunflower";a:3:{s:5:"label";s:9:"Sunflower";s:8:"variants";a:3:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"700";}s:8:"category";s:10:"sans-serif";}s:9:"Sunshiney";a:3:{s:5:"label";s:9:"Sunshiney";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:16:"Supermercado One";a:3:{s:5:"label";s:16:"Supermercado One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Sura";a:3:{s:5:"label";s:4:"Sura";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Suranna";a:3:{s:5:"label";s:7:"Suranna";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Suravaram";a:3:{s:5:"label";s:9:"Suravaram";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Suwannaphum";a:3:{s:5:"label";s:11:"Suwannaphum";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:18:"Swanky and Moo Moo";a:3:{s:5:"label";s:18:"Swanky and Moo Moo";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Syncopate";a:3:{s:5:"label";s:9:"Syncopate";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Tajawal";a:3:{s:5:"label";s:7:"Tajawal";s:8:"variants";a:7:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"800";i:5;s:3:"900";i:6;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Tangerine";a:3:{s:5:"label";s:9:"Tangerine";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Taprom";a:3:{s:5:"label";s:6:"Taprom";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:5:"Tauri";a:3:{s:5:"label";s:5:"Tauri";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:7:"Taviraj";a:3:{s:5:"label";s:7:"Taviraj";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Teko";a:3:{s:5:"label";s:4:"Teko";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Telex";a:3:{s:5:"label";s:5:"Telex";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:18:"Tenali Ramakrishna";a:3:{s:5:"label";s:18:"Tenali Ramakrishna";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:10:"Tenor Sans";a:3:{s:5:"label";s:10:"Tenor Sans";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Text Me One";a:3:{s:5:"label";s:11:"Text Me One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:18:"The Girl Next Door";a:3:{s:5:"label";s:18:"The Girl Next Door";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Tienne";a:3:{s:5:"label";s:6:"Tienne";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:3:"900";i:2;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Tillana";a:3:{s:5:"label";s:7:"Tillana";s:8:"variants";a:5:{i:0;s:3:"500";i:1;s:3:"600";i:2;s:3:"700";i:3;s:3:"800";i:4;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:7:"Timmana";a:3:{s:5:"label";s:7:"Timmana";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Tinos";a:3:{s:5:"label";s:5:"Tinos";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:9:"Titan One";a:3:{s:5:"label";s:9:"Titan One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:13:"Titillium Web";a:3:{s:5:"label";s:13:"Titillium Web";s:8:"variants";a:11:{i:0;s:3:"200";i:1;s:9:"200italic";i:2;s:3:"300";i:3;s:9:"300italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:3:"900";i:9;s:6:"italic";i:10;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Trade Winds";a:3:{s:5:"label";s:11:"Trade Winds";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Trirong";a:3:{s:5:"label";s:7:"Trirong";s:8:"variants";a:18:{i:0;s:3:"100";i:1;s:9:"100italic";i:2;s:3:"200";i:3;s:9:"200italic";i:4;s:3:"300";i:5;s:9:"300italic";i:6;s:3:"500";i:7;s:9:"500italic";i:8;s:3:"600";i:9;s:9:"600italic";i:10;s:3:"700";i:11;s:9:"700italic";i:12;s:3:"800";i:13;s:9:"800italic";i:14;s:3:"900";i:15;s:9:"900italic";i:16;s:6:"italic";i:17;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Trocchi";a:3:{s:5:"label";s:7:"Trocchi";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:7:"Trochut";a:3:{s:5:"label";s:7:"Trochut";s:8:"variants";a:3:{i:0;s:3:"700";i:1;s:6:"italic";i:2;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Trykker";a:3:{s:5:"label";s:7:"Trykker";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:10:"Tulpen One";a:3:{s:5:"label";s:10:"Tulpen One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Ubuntu";a:3:{s:5:"label";s:6:"Ubuntu";s:8:"variants";a:8:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"700";i:5;s:9:"700italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:16:"Ubuntu Condensed";a:3:{s:5:"label";s:16:"Ubuntu Condensed";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Ubuntu Mono";a:3:{s:5:"label";s:11:"Ubuntu Mono";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:9:"monospace";}s:5:"Ultra";a:3:{s:5:"label";s:5:"Ultra";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:14:"Uncial Antiqua";a:3:{s:5:"label";s:14:"Uncial Antiqua";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:8:"Underdog";a:3:{s:5:"label";s:8:"Underdog";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Unica One";a:3:{s:5:"label";s:9:"Unica One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:14:"UnifrakturCook";a:3:{s:5:"label";s:14:"UnifrakturCook";s:8:"variants";a:1:{i:0;s:3:"700";}s:8:"category";s:7:"display";}s:18:"UnifrakturMaguntia";a:3:{s:5:"label";s:18:"UnifrakturMaguntia";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Unkempt";a:3:{s:5:"label";s:7:"Unkempt";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Unlock";a:3:{s:5:"label";s:6:"Unlock";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:4:"Unna";a:3:{s:5:"label";s:4:"Unna";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"VT323";a:3:{s:5:"label";s:5:"VT323";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:9:"monospace";}s:11:"Vampiro One";a:3:{s:5:"label";s:11:"Vampiro One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:6:"Varela";a:3:{s:5:"label";s:6:"Varela";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:12:"Varela Round";a:3:{s:5:"label";s:12:"Varela Round";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Vast Shadow";a:3:{s:5:"label";s:11:"Vast Shadow";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:12:"Vesper Libre";a:3:{s:5:"label";s:12:"Vesper Libre";s:8:"variants";a:4:{i:0;s:3:"500";i:1;s:3:"700";i:2;s:3:"900";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:5:"Vibur";a:3:{s:5:"label";s:5:"Vibur";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Vidaloka";a:3:{s:5:"label";s:8:"Vidaloka";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:5:"serif";}s:4:"Viga";a:3:{s:5:"label";s:4:"Viga";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:5:"Voces";a:3:{s:5:"label";s:5:"Voces";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:7:"Volkhov";a:3:{s:5:"label";s:7:"Volkhov";s:8:"variants";a:4:{i:0;s:3:"700";i:1;s:9:"700italic";i:2;s:6:"italic";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Vollkorn";a:3:{s:5:"label";s:8:"Vollkorn";s:8:"variants";a:8:{i:0;s:3:"600";i:1;s:9:"600italic";i:2;s:3:"700";i:3;s:9:"700italic";i:4;s:3:"900";i:5;s:9:"900italic";i:6;s:6:"italic";i:7;s:7:"regular";}s:8:"category";s:5:"serif";}s:11:"Vollkorn SC";a:3:{s:5:"label";s:11:"Vollkorn SC";s:8:"variants";a:4:{i:0;s:3:"600";i:1;s:3:"700";i:2;s:3:"900";i:3;s:7:"regular";}s:8:"category";s:5:"serif";}s:8:"Voltaire";a:3:{s:5:"label";s:8:"Voltaire";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:23:"Waiting for the Sunrise";a:3:{s:5:"label";s:23:"Waiting for the Sunrise";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:8:"Wallpoet";a:3:{s:5:"label";s:8:"Wallpoet";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:15:"Walter Turncoat";a:3:{s:5:"label";s:15:"Walter Turncoat";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:6:"Warnes";a:3:{s:5:"label";s:6:"Warnes";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Wellfleet";a:3:{s:5:"label";s:9:"Wellfleet";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:9:"Wendy One";a:3:{s:5:"label";s:9:"Wendy One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:8:"Wire One";a:3:{s:5:"label";s:8:"Wire One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Work Sans";a:3:{s:5:"label";s:9:"Work Sans";s:8:"variants";a:9:{i:0;s:3:"100";i:1;s:3:"200";i:2;s:3:"300";i:3;s:3:"500";i:4;s:3:"600";i:5;s:3:"700";i:6;s:3:"800";i:7;s:3:"900";i:8;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:17:"Yanone Kaffeesatz";a:3:{s:5:"label";s:17:"Yanone Kaffeesatz";s:8:"variants";a:4:{i:0;s:3:"200";i:1;s:3:"300";i:2;s:3:"700";i:3;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:11:"Yantramanav";a:3:{s:5:"label";s:11:"Yantramanav";s:8:"variants";a:6:{i:0;s:3:"100";i:1;s:3:"300";i:2;s:3:"500";i:3;s:3:"700";i:4;s:3:"900";i:5;s:7:"regular";}s:8:"category";s:10:"sans-serif";}s:9:"Yatra One";a:3:{s:5:"label";s:9:"Yatra One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Yellowtail";a:3:{s:5:"label";s:10:"Yellowtail";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:9:"Yeon Sung";a:3:{s:5:"label";s:9:"Yeon Sung";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Yeseva One";a:3:{s:5:"label";s:10:"Yeseva One";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:7:"display";}s:10:"Yesteryear";a:3:{s:5:"label";s:10:"Yesteryear";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:4:"Yrsa";a:3:{s:5:"label";s:4:"Yrsa";s:8:"variants";a:5:{i:0;s:3:"300";i:1;s:3:"500";i:2;s:3:"600";i:3;s:3:"700";i:4;s:7:"regular";}s:8:"category";s:5:"serif";}s:6:"Zeyada";a:3:{s:5:"label";s:6:"Zeyada";s:8:"variants";a:1:{i:0;s:7:"regular";}s:8:"category";s:11:"handwriting";}s:10:"Zilla Slab";a:3:{s:5:"label";s:10:"Zilla Slab";s:8:"variants";a:10:{i:0;s:3:"300";i:1;s:9:"300italic";i:2;s:3:"500";i:3;s:9:"500italic";i:4;s:3:"600";i:5;s:9:"600italic";i:6;s:3:"700";i:7;s:9:"700italic";i:8;s:6:"italic";i:9;s:7:"regular";}s:8:"category";s:5:"serif";}s:20:"Zilla Slab Highlight";a:3:{s:5:"label";s:20:"Zilla Slab Highlight";s:8:"variants";a:2:{i:0;s:3:"700";i:1;s:7:"regular";}s:8:"category";s:7:"display";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_postmeta`
--

CREATE TABLE `jawi_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_postmeta`
--

INSERT INTO `jawi_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wc_review_count', '0'),
(4, 9, '_wc_rating_count', 'a:0:{}'),
(5, 9, '_wc_average_rating', '0'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1546695865:1'),
(12, 9, '_sku', ''),
(13, 9, '_regular_price', '2000000'),
(14, 9, '_sale_price', ''),
(15, 9, '_sale_price_dates_from', ''),
(16, 9, '_sale_price_dates_to', ''),
(17, 9, 'total_sales', '7'),
(18, 9, '_tax_status', 'taxable'),
(19, 9, '_tax_class', ''),
(20, 9, '_manage_stock', 'no'),
(21, 9, '_backorders', 'no'),
(22, 9, '_low_stock_amount', ''),
(23, 9, '_sold_individually', 'no'),
(24, 9, '_weight', ''),
(25, 9, '_length', ''),
(26, 9, '_width', ''),
(27, 9, '_height', ''),
(28, 9, '_upsell_ids', 'a:0:{}'),
(29, 9, '_crosssell_ids', 'a:0:{}'),
(30, 9, '_purchase_note', ''),
(31, 9, '_default_attributes', 'a:0:{}'),
(32, 9, '_virtual', 'no'),
(33, 9, '_downloadable', 'no'),
(34, 9, '_product_image_gallery', ''),
(35, 9, '_download_limit', '-1'),
(36, 9, '_download_expiry', '-1'),
(37, 9, '_stock', NULL),
(38, 9, '_stock_status', 'instock'),
(39, 9, '_product_version', '3.5.2'),
(40, 9, '_price', '2000000'),
(41, 11, '_edit_lock', '1544539344:1'),
(42, 13, '_edit_lock', '1544539551:1'),
(50, 18, '_menu_item_type', 'post_type'),
(51, 18, '_menu_item_menu_item_parent', '0'),
(52, 18, '_menu_item_object_id', '11'),
(53, 18, '_menu_item_object', 'page'),
(54, 18, '_menu_item_target', ''),
(55, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 18, '_menu_item_xfn', ''),
(57, 18, '_menu_item_url', ''),
(58, 19, '_menu_item_type', 'post_type'),
(59, 19, '_menu_item_menu_item_parent', '0'),
(60, 19, '_menu_item_object_id', '13'),
(61, 19, '_menu_item_object', 'page'),
(62, 19, '_menu_item_target', ''),
(63, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 19, '_menu_item_xfn', ''),
(65, 19, '_menu_item_url', ''),
(66, 20, '_menu_item_type', 'post_type'),
(67, 20, '_menu_item_menu_item_parent', '0'),
(68, 20, '_menu_item_object_id', '5'),
(69, 20, '_menu_item_object', 'page'),
(70, 20, '_menu_item_target', ''),
(71, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 20, '_menu_item_xfn', ''),
(73, 20, '_menu_item_url', ''),
(74, 21, '_menu_item_type', 'post_type'),
(75, 21, '_menu_item_menu_item_parent', '0'),
(76, 21, '_menu_item_object_id', '8'),
(77, 21, '_menu_item_object', 'page'),
(78, 21, '_menu_item_target', ''),
(79, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(80, 21, '_menu_item_xfn', ''),
(81, 21, '_menu_item_url', ''),
(93, 26, '_wp_attached_file', '2018/12/Master-1.png'),
(94, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1032;s:6:"height";i:525;s:4:"file";s:20:"2018/12/Master-1.png";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Master-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Master-1-300x153.png";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Master-1-768x391.png";s:5:"width";i:768;s:6:"height";i:391;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"Master-1-1024x521.png";s:5:"width";i:1024;s:6:"height";i:521;s:9:"mime-type";s:9:"image/png";}s:21:"tyche-blog-post-image";a:4:{s:4:"file";s:20:"Master-1-730x435.png";s:5:"width";i:730;s:6:"height";i:435;s:9:"mime-type";s:9:"image/png";}s:22:"tyche-product-layout-c";a:4:{s:4:"file";s:20:"Master-1-160x120.png";s:5:"width";i:160;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:28:"tyche-recent-post-list-image";a:4:{s:4:"file";s:18:"Master-1-65x65.png";s:5:"width";i:65;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:33:"tyche-recent-post-alternate-image";a:4:{s:4:"file";s:19:"Master-1-160x90.png";s:5:"width";i:160;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"Master-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"Master-1-600x305.png";s:5:"width";i:600;s:6:"height";i:305;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"Master-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Master-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"Master-1-600x305.png";s:5:"width";i:600;s:6:"height";i:305;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Master-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 26, '_wp_attachment_image_alt', 'Master Picture'),
(98, 5, '_edit_last', '1'),
(99, 5, '_wp_page_template', 'default'),
(100, 5, '_edit_lock', '1546696682:1'),
(101, 6, '_edit_lock', '1544687484:1'),
(102, 7, '_edit_lock', '1544687566:1'),
(103, 8, '_edit_lock', '1544687711:1'),
(155, 36, '_order_key', 'wc_order_5c123a877473f'),
(156, 36, '_customer_user', '4'),
(157, 36, '_payment_method', 'bacs'),
(158, 36, '_payment_method_title', 'Transfer Bank'),
(159, 36, '_transaction_id', ''),
(160, 36, '_customer_ip_address', '::1'),
(161, 36, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(162, 36, '_created_via', 'checkout'),
(163, 36, '_date_completed', ''),
(164, 36, '_completed_date', ''),
(165, 36, '_date_paid', ''),
(166, 36, '_paid_date', ''),
(167, 36, '_cart_hash', 'a2be930e2d746c8c7fdfd517f98bd402'),
(168, 36, '_billing_first_name', '123'),
(169, 36, '_billing_last_name', ''),
(170, 36, '_billing_company', ''),
(171, 36, '_billing_address_1', 'jl.123'),
(172, 36, '_billing_address_2', ''),
(173, 36, '_billing_city', 'kott'),
(174, 36, '_billing_state', ''),
(175, 36, '_billing_postcode', '16113'),
(176, 36, '_billing_country', ''),
(177, 36, '_billing_email', '123@gmail.com'),
(178, 36, '_billing_phone', '08123415'),
(179, 36, '_shipping_first_name', '123'),
(180, 36, '_shipping_last_name', ''),
(181, 36, '_shipping_company', ''),
(182, 36, '_shipping_address_1', 'jl.123'),
(183, 36, '_shipping_address_2', ''),
(184, 36, '_shipping_city', 'kott'),
(185, 36, '_shipping_state', ''),
(186, 36, '_shipping_postcode', '16113'),
(187, 36, '_shipping_country', ''),
(188, 36, '_order_currency', 'IDR'),
(189, 36, '_cart_discount', '0'),
(190, 36, '_cart_discount_tax', '0'),
(191, 36, '_order_shipping', '10000'),
(192, 36, '_order_shipping_tax', '0'),
(193, 36, '_order_tax', '0'),
(194, 36, '_order_total', '6010000'),
(195, 36, '_order_version', '3.5.2'),
(196, 36, '_prices_include_tax', 'no'),
(197, 36, '_billing_address_index', '123   jl.123  kott  16113  123@gmail.com 08123415'),
(198, 36, '_shipping_address_index', '123   jl.123  kott  16113 '),
(199, 36, 'myfield1', 'Upin(perempuan),Upan(perempuan),Upon(Perempuan)'),
(200, 36, 'myfield2', '123'),
(201, 36, '_recorded_sales', 'yes'),
(202, 36, '_recorded_coupon_usage_counts', 'yes'),
(203, 36, '_order_stock_reduced', 'yes'),
(208, 37, '_order_key', 'wc_order_5c12503d64eb6'),
(209, 37, '_customer_user', '4'),
(210, 37, '_payment_method', 'bacs'),
(211, 37, '_payment_method_title', 'Transfer Bank'),
(212, 37, '_transaction_id', ''),
(213, 37, '_customer_ip_address', '::1'),
(214, 37, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(215, 37, '_created_via', 'checkout'),
(216, 37, '_date_completed', ''),
(217, 37, '_completed_date', ''),
(218, 37, '_date_paid', '1544704749'),
(219, 37, '_paid_date', '2018-12-13 19:39:09'),
(220, 37, '_cart_hash', 'bd9fc03bb894914f11ffcafdc684c1b2'),
(221, 37, '_billing_first_name', '123'),
(222, 37, '_billing_last_name', ''),
(223, 37, '_billing_company', ''),
(224, 37, '_billing_address_1', 'jl.123'),
(225, 37, '_billing_address_2', ''),
(226, 37, '_billing_city', 'kott'),
(227, 37, '_billing_state', ''),
(228, 37, '_billing_postcode', '16113'),
(229, 37, '_billing_country', ''),
(230, 37, '_billing_email', '123@gmail.com'),
(231, 37, '_billing_phone', '08123415'),
(232, 37, '_shipping_first_name', '123'),
(233, 37, '_shipping_last_name', ''),
(234, 37, '_shipping_company', ''),
(235, 37, '_shipping_address_1', 'jl.123'),
(236, 37, '_shipping_address_2', ''),
(237, 37, '_shipping_city', 'kott'),
(238, 37, '_shipping_state', ''),
(239, 37, '_shipping_postcode', '16113'),
(240, 37, '_shipping_country', ''),
(241, 37, '_order_currency', 'IDR'),
(242, 37, '_cart_discount', '0'),
(243, 37, '_cart_discount_tax', '0'),
(244, 37, '_order_shipping', '10000'),
(245, 37, '_order_shipping_tax', '0'),
(246, 37, '_order_tax', '0'),
(247, 37, '_order_total', '4010000'),
(248, 37, '_order_version', '3.5.2'),
(249, 37, '_prices_include_tax', 'no'),
(250, 37, '_billing_address_index', '123   jl.123  kott  16113  123@gmail.com 08123415'),
(251, 37, '_shipping_address_index', '123   jl.123  kott  16113 '),
(252, 37, '_shipping_myfield10', ''),
(253, 37, 'myfield1', 'ss'),
(254, 37, 'myfield2', 'dase'),
(255, 37, '_recorded_sales', 'yes'),
(256, 37, '_recorded_coupon_usage_counts', 'yes'),
(257, 37, '_order_stock_reduced', 'yes'),
(258, 37, '_edit_lock', '1544704574:1'),
(259, 37, '_download_permissions_granted', 'yes'),
(260, 38, '_order_key', 'wc_order_5c14a200eea70'),
(261, 38, '_customer_user', '5'),
(262, 38, '_payment_method', 'bacs'),
(263, 38, '_payment_method_title', 'Transfer Bank'),
(264, 38, '_transaction_id', ''),
(265, 38, '_customer_ip_address', '::1'),
(266, 38, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0'),
(267, 38, '_created_via', 'checkout'),
(268, 38, '_date_completed', ''),
(269, 38, '_completed_date', ''),
(270, 38, '_date_paid', ''),
(271, 38, '_paid_date', ''),
(272, 38, '_cart_hash', '8d59ff41b21f71490b788d812f4afd9a'),
(273, 38, '_billing_first_name', 'jawi'),
(274, 38, '_billing_last_name', ''),
(275, 38, '_billing_company', ''),
(276, 38, '_billing_address_1', 'j;.melati'),
(277, 38, '_billing_address_2', ''),
(278, 38, '_billing_city', 'BOGOR'),
(279, 38, '_billing_state', ''),
(280, 38, '_billing_postcode', '16113'),
(281, 38, '_billing_country', ''),
(282, 38, '_billing_email', 'jawi@gmail.com'),
(283, 38, '_billing_phone', '0777'),
(284, 38, '_shipping_first_name', 'jawi'),
(285, 38, '_shipping_last_name', ''),
(286, 38, '_shipping_company', ''),
(287, 38, '_shipping_address_1', 'j;.melati'),
(288, 38, '_shipping_address_2', ''),
(289, 38, '_shipping_city', 'BOGOR'),
(290, 38, '_shipping_state', ''),
(291, 38, '_shipping_postcode', '16113'),
(292, 38, '_shipping_country', ''),
(293, 38, '_order_currency', 'IDR'),
(294, 38, '_cart_discount', '0'),
(295, 38, '_cart_discount_tax', '0'),
(296, 38, '_order_shipping', '10000'),
(297, 38, '_order_shipping_tax', '0'),
(298, 38, '_order_tax', '0'),
(299, 38, '_order_total', '2010000'),
(300, 38, '_order_version', '3.5.2'),
(301, 38, '_prices_include_tax', 'no'),
(302, 38, '_billing_address_index', 'jawi   j;.melati  BOGOR  16113  jawi@gmail.com 0777'),
(303, 38, '_shipping_address_index', 'jawi   j;.melati  BOGOR  16113 '),
(304, 38, '_shipping_myfield10', ''),
(305, 38, 'myfield1', 'SAAA'),
(306, 38, 'myfield2', 'AWW'),
(307, 38, '_recorded_sales', 'yes'),
(308, 38, '_recorded_coupon_usage_counts', 'yes'),
(309, 38, '_order_stock_reduced', 'yes'),
(310, 40, '_edit_lock', '1545551641:1'),
(311, 41, '_wp_trash_meta_status', 'publish'),
(312, 41, '_wp_trash_meta_time', '1545557321'),
(313, 42, '_edit_lock', '1545577992:1'),
(314, 42, '_wp_trash_meta_status', 'publish'),
(315, 42, '_wp_trash_meta_time', '1545577993'),
(317, 44, '_edit_lock', '1547907995:1'),
(318, 48, '_wp_trash_meta_status', 'publish'),
(319, 48, '_wp_trash_meta_time', '1546419773'),
(320, 49, '_edit_lock', '1546422325:1'),
(323, 49, '_wp_trash_meta_status', 'publish'),
(324, 49, '_wp_trash_meta_time', '1546422317'),
(327, 52, '_edit_lock', '1546423243:1'),
(330, 52, '_wp_trash_meta_status', 'publish'),
(331, 52, '_wp_trash_meta_time', '1546423250'),
(336, 56, '_edit_lock', '1546423955:1'),
(337, 56, '_wp_trash_meta_status', 'publish'),
(338, 56, '_wp_trash_meta_time', '1546423992'),
(339, 58, '_wp_attached_file', '2019/01/No-image.png'),
(340, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:20:"2019/01/No-image.png";s:5:"sizes";a:5:{s:22:"tyche-product-layout-c";a:4:{s:4:"file";s:20:"No-image-128x120.png";s:5:"width";i:128;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:28:"tyche-recent-post-list-image";a:4:{s:4:"file";s:18:"No-image-65x65.png";s:5:"width";i:65;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}s:33:"tyche-recent-post-alternate-image";a:4:{s:4:"file";s:19:"No-image-128x90.png";s:5:"width";i:128;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"No-image-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"No-image-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(342, 60, '_edit_lock', '1546515632:1'),
(343, 60, '_edit_last', '1'),
(344, 60, 'wpsm_servicebox_data', 's:480:"a:3:{i:0;a:4:{s:13:"service_title";s:4:"Sate";s:19:"service_description";s:14:"Deskripsi Sate";s:12:"service_icon";s:9:"fa-laptop";s:12:"service_link";s:1:"#";}i:1;a:4:{s:13:"service_title";s:9:"Mie&Bakso";s:19:"service_description";s:19:"Deskripsi Mie&Bakso";s:12:"service_icon";s:9:"fa-laptop";s:12:"service_link";s:1:"#";}i:2;a:4:{s:13:"service_title";s:4:"Kopi";s:19:"service_description";s:14:"Deskripsi Kopi";s:12:"service_icon";s:9:"fa-coffee";s:12:"service_link";s:0:"";}}";'),
(345, 60, 'wpsm_servicebox_count', '3'),
(346, 60, 'Wpsm_Servicebox_Shortcode_Settings', 's:676:"a:18:{s:21:"service_acc_sec_title";N;s:20:"service_display_icon";s:2:"no";s:24:"service_display_readmore";s:3:"yes";s:17:"service_title_clr";s:7:"#000000";s:16:"service_icon_clr";s:7:"#636363";s:19:"service_icon_bg_clr";s:7:"#dddddd";s:15:"service_des_clr";s:7:"#7f7f7f";s:20:"service_readmore_clr";s:7:"#4c4c4c";s:23:"service_readmore_bg_clr";s:7:"#ffffff";s:23:"service_box_bg_clr_dsn2";s:7:"#e5e5e5";s:23:"service_title_font_size";s:2:"22";s:21:"service_des_font_size";s:2:"19";s:26:"service_readmore_font_size";s:2:"16";s:11:"font_family";s:9:"Open Sans";s:9:"sb_layout";s:1:"6";s:17:"sb_web_link_label";s:10:"Lihat Menu";s:9:"templates";s:1:"1";s:10:"custom_css";s:0:"";}";'),
(347, 71, '_edit_lock', '1546520262:1'),
(348, 72, '_menu_item_type', 'post_type'),
(349, 72, '_menu_item_menu_item_parent', '0'),
(350, 72, '_menu_item_object_id', '44'),
(351, 72, '_menu_item_object', 'page'),
(352, 72, '_menu_item_target', ''),
(353, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(354, 72, '_menu_item_xfn', ''),
(355, 72, '_menu_item_url', ''),
(356, 73, '_menu_item_type', 'taxonomy'),
(357, 73, '_menu_item_menu_item_parent', '72'),
(358, 73, '_menu_item_object_id', '18'),
(359, 73, '_menu_item_object', 'product_cat'),
(360, 73, '_menu_item_target', ''),
(361, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(362, 73, '_menu_item_xfn', ''),
(363, 73, '_menu_item_url', ''),
(364, 74, '_menu_item_type', 'taxonomy'),
(365, 74, '_menu_item_menu_item_parent', '72'),
(366, 74, '_menu_item_object_id', '19'),
(367, 74, '_menu_item_object', 'product_cat'),
(368, 74, '_menu_item_target', ''),
(369, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(370, 74, '_menu_item_xfn', ''),
(371, 74, '_menu_item_url', ''),
(372, 75, '_menu_item_type', 'taxonomy'),
(373, 75, '_menu_item_menu_item_parent', '72'),
(374, 75, '_menu_item_object_id', '20'),
(375, 75, '_menu_item_object', 'product_cat'),
(376, 75, '_menu_item_target', ''),
(377, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(378, 75, '_menu_item_xfn', ''),
(379, 75, '_menu_item_url', ''),
(380, 71, '_wp_trash_meta_status', 'publish'),
(381, 71, '_wp_trash_meta_time', '1546520316'),
(382, 44, '_wp_page_template', 'page-templates/Full-width.php'),
(383, 84, '_wc_review_count', '0'),
(384, 84, '_wc_rating_count', 'a:0:{}'),
(385, 84, '_wc_average_rating', '0'),
(386, 84, '_edit_lock', '1546703375:1'),
(387, 84, '_edit_last', '1'),
(388, 84, '_sku', ''),
(389, 84, '_regular_price', '6000'),
(390, 84, '_sale_price', ''),
(391, 84, '_sale_price_dates_from', ''),
(392, 84, '_sale_price_dates_to', ''),
(393, 84, 'total_sales', '0'),
(394, 84, '_tax_status', 'taxable'),
(395, 84, '_tax_class', ''),
(396, 84, '_manage_stock', 'no'),
(397, 84, '_backorders', 'no'),
(398, 84, '_low_stock_amount', ''),
(399, 84, '_sold_individually', 'no'),
(400, 84, '_weight', ''),
(401, 84, '_length', ''),
(402, 84, '_width', ''),
(403, 84, '_height', ''),
(404, 84, '_upsell_ids', 'a:0:{}'),
(405, 84, '_crosssell_ids', 'a:0:{}'),
(406, 84, '_purchase_note', ''),
(407, 84, '_default_attributes', 'a:0:{}'),
(408, 84, '_virtual', 'no'),
(409, 84, '_downloadable', 'no'),
(410, 84, '_product_image_gallery', ''),
(411, 84, '_download_limit', '-1'),
(412, 84, '_download_expiry', '-1'),
(413, 84, '_stock', NULL),
(414, 84, '_stock_status', 'instock'),
(415, 84, '_product_version', '3.5.2'),
(416, 84, '_price', '6000'),
(417, 84, '_product_url', ''),
(418, 84, '_button_text', ''),
(419, 84, '_not_buyable', 'yes'),
(420, 171, '_wc_review_count', '0'),
(421, 171, '_wc_rating_count', 'a:0:{}'),
(422, 171, '_wc_average_rating', '0'),
(423, 171, '_edit_lock', '1546704130:1'),
(424, 171, '_edit_last', '1'),
(425, 171, '_not_buyable', 'yes'),
(426, 171, '_sku', ''),
(427, 171, '_regular_price', '30000'),
(428, 171, '_sale_price', ''),
(429, 171, '_sale_price_dates_from', ''),
(430, 171, '_sale_price_dates_to', ''),
(431, 171, 'total_sales', '0'),
(432, 171, '_tax_status', 'taxable'),
(433, 171, '_tax_class', ''),
(434, 171, '_manage_stock', 'no'),
(435, 171, '_backorders', 'no'),
(436, 171, '_low_stock_amount', ''),
(437, 171, '_sold_individually', 'no'),
(438, 171, '_weight', ''),
(439, 171, '_length', ''),
(440, 171, '_width', ''),
(441, 171, '_height', ''),
(442, 171, '_upsell_ids', 'a:0:{}'),
(443, 171, '_crosssell_ids', 'a:0:{}'),
(444, 171, '_purchase_note', ''),
(445, 171, '_default_attributes', 'a:0:{}'),
(446, 171, '_virtual', 'no'),
(447, 171, '_downloadable', 'no'),
(448, 171, '_product_image_gallery', ''),
(449, 171, '_download_limit', '-1'),
(450, 171, '_download_expiry', '-1'),
(451, 171, '_stock', NULL),
(452, 171, '_stock_status', 'instock'),
(453, 171, '_product_version', '3.5.2'),
(454, 171, '_price', '30000'),
(458, 173, '_wc_review_count', '0'),
(459, 173, '_wc_rating_count', 'a:0:{}'),
(460, 173, '_wc_average_rating', '0'),
(461, 173, '_edit_lock', '1546704100:1'),
(462, 173, '_edit_last', '1'),
(463, 173, '_not_buyable', 'yes'),
(464, 173, '_sku', ''),
(465, 173, '_regular_price', '15000'),
(466, 173, '_sale_price', ''),
(467, 173, '_sale_price_dates_from', ''),
(468, 173, '_sale_price_dates_to', ''),
(469, 173, 'total_sales', '0'),
(470, 173, '_tax_status', 'taxable'),
(471, 173, '_tax_class', ''),
(472, 173, '_manage_stock', 'no'),
(473, 173, '_backorders', 'no'),
(474, 173, '_low_stock_amount', ''),
(475, 173, '_sold_individually', 'no'),
(476, 173, '_weight', ''),
(477, 173, '_length', ''),
(478, 173, '_width', ''),
(479, 173, '_height', ''),
(480, 173, '_upsell_ids', 'a:0:{}'),
(481, 173, '_crosssell_ids', 'a:0:{}'),
(482, 173, '_purchase_note', ''),
(483, 173, '_default_attributes', 'a:0:{}'),
(484, 173, '_virtual', 'no'),
(485, 173, '_downloadable', 'no'),
(486, 173, '_product_image_gallery', ''),
(487, 173, '_download_limit', '-1'),
(488, 173, '_download_expiry', '-1'),
(489, 173, '_stock', NULL),
(490, 173, '_stock_status', 'instock'),
(491, 173, '_product_version', '3.5.2'),
(492, 173, '_price', '15000'),
(493, 174, '_wc_review_count', '0'),
(494, 174, '_wc_rating_count', 'a:0:{}'),
(495, 174, '_wc_average_rating', '0'),
(496, 174, '_edit_lock', '1546704167:1'),
(497, 174, '_edit_last', '1'),
(498, 174, '_not_buyable', 'yes'),
(499, 174, '_sku', ''),
(500, 174, '_regular_price', '10000'),
(501, 174, '_sale_price', ''),
(502, 174, '_sale_price_dates_from', ''),
(503, 174, '_sale_price_dates_to', ''),
(504, 174, 'total_sales', '0'),
(505, 174, '_tax_status', 'taxable'),
(506, 174, '_tax_class', ''),
(507, 174, '_manage_stock', 'no'),
(508, 174, '_backorders', 'no'),
(509, 174, '_low_stock_amount', ''),
(510, 174, '_sold_individually', 'no'),
(511, 174, '_weight', ''),
(512, 174, '_length', ''),
(513, 174, '_width', ''),
(514, 174, '_height', ''),
(515, 174, '_upsell_ids', 'a:0:{}'),
(516, 174, '_crosssell_ids', 'a:0:{}'),
(517, 174, '_purchase_note', ''),
(518, 174, '_default_attributes', 'a:0:{}'),
(519, 174, '_virtual', 'no'),
(520, 174, '_downloadable', 'no'),
(521, 174, '_product_image_gallery', ''),
(522, 174, '_download_limit', '-1'),
(523, 174, '_download_expiry', '-1'),
(524, 174, '_stock', NULL),
(525, 174, '_stock_status', 'instock'),
(526, 174, '_product_version', '3.5.2'),
(527, 174, '_price', '10000'),
(528, 175, '_wc_review_count', '0'),
(529, 175, '_wc_rating_count', 'a:0:{}'),
(530, 175, '_wc_average_rating', '0'),
(531, 175, '_edit_lock', '1546704467:1'),
(532, 175, '_edit_last', '1'),
(533, 175, '_not_buyable', 'yes'),
(534, 175, '_sku', ''),
(535, 175, '_regular_price', '15000'),
(536, 175, '_sale_price', ''),
(537, 175, '_sale_price_dates_from', ''),
(538, 175, '_sale_price_dates_to', ''),
(539, 175, 'total_sales', '0'),
(540, 175, '_tax_status', 'taxable'),
(541, 175, '_tax_class', ''),
(542, 175, '_manage_stock', 'no'),
(543, 175, '_backorders', 'no'),
(544, 175, '_low_stock_amount', ''),
(545, 175, '_sold_individually', 'no'),
(546, 175, '_weight', ''),
(547, 175, '_length', ''),
(548, 175, '_width', ''),
(549, 175, '_height', ''),
(550, 175, '_upsell_ids', 'a:0:{}'),
(551, 175, '_crosssell_ids', 'a:0:{}'),
(552, 175, '_purchase_note', ''),
(553, 175, '_default_attributes', 'a:0:{}'),
(554, 175, '_virtual', 'no'),
(555, 175, '_downloadable', 'no'),
(556, 175, '_product_image_gallery', ''),
(557, 175, '_download_limit', '-1'),
(558, 175, '_download_expiry', '-1'),
(559, 175, '_stock', NULL),
(560, 175, '_stock_status', 'instock'),
(561, 175, '_product_version', '3.5.2'),
(562, 175, '_price', '15000'),
(563, 176, '_wc_review_count', '0'),
(564, 176, '_wc_rating_count', 'a:0:{}'),
(565, 176, '_wc_average_rating', '0'),
(566, 176, '_edit_lock', '1546704437:1'),
(567, 176, '_edit_last', '1'),
(568, 176, '_not_buyable', 'yes'),
(569, 176, '_sku', ''),
(570, 176, '_regular_price', '15000'),
(571, 176, '_sale_price', ''),
(572, 176, '_sale_price_dates_from', ''),
(573, 176, '_sale_price_dates_to', ''),
(574, 176, 'total_sales', '0'),
(575, 176, '_tax_status', 'taxable'),
(576, 176, '_tax_class', ''),
(577, 176, '_manage_stock', 'no'),
(578, 176, '_backorders', 'no'),
(579, 176, '_low_stock_amount', ''),
(580, 176, '_sold_individually', 'no'),
(581, 176, '_weight', ''),
(582, 176, '_length', ''),
(583, 176, '_width', ''),
(584, 176, '_height', ''),
(585, 176, '_upsell_ids', 'a:0:{}'),
(586, 176, '_crosssell_ids', 'a:0:{}'),
(587, 176, '_purchase_note', ''),
(588, 176, '_default_attributes', 'a:0:{}'),
(589, 176, '_virtual', 'no'),
(590, 176, '_downloadable', 'no'),
(591, 176, '_product_image_gallery', ''),
(592, 176, '_download_limit', '-1'),
(593, 176, '_download_expiry', '-1'),
(594, 176, '_stock', NULL),
(595, 176, '_stock_status', 'instock'),
(596, 176, '_product_version', '3.5.2'),
(597, 176, '_price', '15000'),
(598, 177, '_wc_review_count', '0'),
(599, 177, '_wc_rating_count', 'a:0:{}'),
(600, 177, '_wc_average_rating', '0'),
(601, 177, '_edit_lock', '1546704406:1'),
(602, 177, '_edit_last', '1'),
(603, 177, '_not_buyable', 'yes'),
(604, 177, '_sku', ''),
(605, 177, '_regular_price', '15000'),
(606, 177, '_sale_price', ''),
(607, 177, '_sale_price_dates_from', ''),
(608, 177, '_sale_price_dates_to', ''),
(609, 177, 'total_sales', '0'),
(610, 177, '_tax_status', 'taxable'),
(611, 177, '_tax_class', ''),
(612, 177, '_manage_stock', 'no'),
(613, 177, '_backorders', 'no'),
(614, 177, '_low_stock_amount', ''),
(615, 177, '_sold_individually', 'no'),
(616, 177, '_weight', ''),
(617, 177, '_length', ''),
(618, 177, '_width', ''),
(619, 177, '_height', ''),
(620, 177, '_upsell_ids', 'a:0:{}'),
(621, 177, '_crosssell_ids', 'a:0:{}'),
(622, 177, '_purchase_note', ''),
(623, 177, '_default_attributes', 'a:0:{}'),
(624, 177, '_virtual', 'no'),
(625, 177, '_downloadable', 'no'),
(626, 177, '_product_image_gallery', ''),
(627, 177, '_download_limit', '-1'),
(628, 177, '_download_expiry', '-1'),
(629, 177, '_stock', NULL),
(630, 177, '_stock_status', 'instock'),
(631, 177, '_product_version', '3.5.2'),
(632, 177, '_price', '15000'),
(633, 178, '_wc_review_count', '0'),
(634, 178, '_wc_rating_count', 'a:0:{}'),
(635, 178, '_wc_average_rating', '0'),
(636, 178, '_edit_lock', '1546704482:1'),
(637, 178, '_edit_last', '1'),
(638, 178, '_not_buyable', 'yes'),
(639, 178, '_sku', ''),
(640, 178, '_regular_price', '15000'),
(641, 178, '_sale_price', ''),
(642, 178, '_sale_price_dates_from', ''),
(643, 178, '_sale_price_dates_to', ''),
(644, 178, 'total_sales', '0'),
(645, 178, '_tax_status', 'taxable'),
(646, 178, '_tax_class', ''),
(647, 178, '_manage_stock', 'no'),
(648, 178, '_backorders', 'no'),
(649, 178, '_low_stock_amount', ''),
(650, 178, '_sold_individually', 'no'),
(651, 178, '_weight', ''),
(652, 178, '_length', ''),
(653, 178, '_width', ''),
(654, 178, '_height', ''),
(655, 178, '_upsell_ids', 'a:0:{}'),
(656, 178, '_crosssell_ids', 'a:0:{}'),
(657, 178, '_purchase_note', ''),
(658, 178, '_default_attributes', 'a:0:{}'),
(659, 178, '_virtual', 'no'),
(660, 178, '_downloadable', 'no'),
(661, 178, '_product_image_gallery', ''),
(662, 178, '_download_limit', '-1'),
(663, 178, '_download_expiry', '-1'),
(664, 178, '_stock', NULL),
(665, 178, '_stock_status', 'instock'),
(666, 178, '_product_version', '3.5.2'),
(667, 178, '_price', '15000'),
(668, 179, '_wc_review_count', '0'),
(669, 179, '_wc_rating_count', 'a:0:{}'),
(670, 179, '_wc_average_rating', '0'),
(671, 179, '_edit_lock', '1546704666:1'),
(672, 179, '_edit_last', '1'),
(673, 179, '_not_buyable', 'yes'),
(674, 179, '_sku', ''),
(675, 179, '_regular_price', '15000'),
(676, 179, '_sale_price', ''),
(677, 179, '_sale_price_dates_from', ''),
(678, 179, '_sale_price_dates_to', ''),
(679, 179, 'total_sales', '0'),
(680, 179, '_tax_status', 'taxable'),
(681, 179, '_tax_class', ''),
(682, 179, '_manage_stock', 'no'),
(683, 179, '_backorders', 'no'),
(684, 179, '_low_stock_amount', ''),
(685, 179, '_sold_individually', 'no'),
(686, 179, '_weight', ''),
(687, 179, '_length', ''),
(688, 179, '_width', ''),
(689, 179, '_height', ''),
(690, 179, '_upsell_ids', 'a:0:{}'),
(691, 179, '_crosssell_ids', 'a:0:{}'),
(692, 179, '_purchase_note', ''),
(693, 179, '_default_attributes', 'a:0:{}'),
(694, 179, '_virtual', 'no'),
(695, 179, '_downloadable', 'no'),
(696, 179, '_product_image_gallery', ''),
(697, 179, '_download_limit', '-1'),
(698, 179, '_download_expiry', '-1'),
(699, 179, '_stock', NULL),
(700, 179, '_stock_status', 'instock'),
(701, 179, '_product_version', '3.5.2'),
(702, 179, '_price', '15000'),
(703, 180, '_wc_review_count', '0'),
(704, 180, '_wc_rating_count', 'a:0:{}'),
(705, 180, '_wc_average_rating', '0'),
(706, 180, '_edit_lock', '1546704732:1'),
(707, 180, '_edit_last', '1'),
(708, 180, '_not_buyable', 'yes'),
(709, 180, '_sku', ''),
(710, 180, '_regular_price', '16000'),
(711, 180, '_sale_price', ''),
(712, 180, '_sale_price_dates_from', ''),
(713, 180, '_sale_price_dates_to', ''),
(714, 180, 'total_sales', '0'),
(715, 180, '_tax_status', 'taxable'),
(716, 180, '_tax_class', ''),
(717, 180, '_manage_stock', 'no'),
(718, 180, '_backorders', 'no'),
(719, 180, '_low_stock_amount', ''),
(720, 180, '_sold_individually', 'no'),
(721, 180, '_weight', ''),
(722, 180, '_length', ''),
(723, 180, '_width', ''),
(724, 180, '_height', ''),
(725, 180, '_upsell_ids', 'a:0:{}'),
(726, 180, '_crosssell_ids', 'a:0:{}'),
(727, 180, '_purchase_note', ''),
(728, 180, '_default_attributes', 'a:0:{}'),
(729, 180, '_virtual', 'no'),
(730, 180, '_downloadable', 'no'),
(731, 180, '_product_image_gallery', ''),
(732, 180, '_download_limit', '-1'),
(733, 180, '_download_expiry', '-1'),
(734, 180, '_stock', NULL),
(735, 180, '_stock_status', 'instock'),
(736, 180, '_product_version', '3.5.2'),
(737, 180, '_price', '16000'),
(738, 181, '_wc_review_count', '0'),
(739, 181, '_wc_rating_count', 'a:0:{}'),
(740, 181, '_wc_average_rating', '0'),
(741, 181, '_edit_lock', '1546704662:1'),
(742, 181, '_edit_last', '1'),
(743, 181, '_not_buyable', 'yes'),
(744, 181, '_sku', ''),
(745, 181, '_regular_price', '15000'),
(746, 181, '_sale_price', ''),
(747, 181, '_sale_price_dates_from', ''),
(748, 181, '_sale_price_dates_to', ''),
(749, 181, 'total_sales', '0'),
(750, 181, '_tax_status', 'taxable'),
(751, 181, '_tax_class', ''),
(752, 181, '_manage_stock', 'no'),
(753, 181, '_backorders', 'no'),
(754, 181, '_low_stock_amount', ''),
(755, 181, '_sold_individually', 'no'),
(756, 181, '_weight', ''),
(757, 181, '_length', ''),
(758, 181, '_width', ''),
(759, 181, '_height', ''),
(760, 181, '_upsell_ids', 'a:0:{}'),
(761, 181, '_crosssell_ids', 'a:0:{}'),
(762, 181, '_purchase_note', ''),
(763, 181, '_default_attributes', 'a:0:{}'),
(764, 181, '_virtual', 'no'),
(765, 181, '_downloadable', 'no'),
(766, 181, '_product_image_gallery', ''),
(767, 181, '_download_limit', '-1'),
(768, 181, '_download_expiry', '-1'),
(769, 181, '_stock', NULL),
(770, 181, '_stock_status', 'instock'),
(771, 181, '_product_version', '3.5.2'),
(772, 181, '_price', '15000'),
(773, 182, '_wc_review_count', '0'),
(774, 182, '_wc_rating_count', 'a:0:{}'),
(775, 182, '_wc_average_rating', '0'),
(776, 182, '_edit_lock', '1546704757:1'),
(777, 182, '_edit_last', '1'),
(778, 182, '_not_buyable', 'yes'),
(779, 182, '_sku', ''),
(780, 182, '_regular_price', '1000'),
(781, 182, '_sale_price', ''),
(782, 182, '_sale_price_dates_from', ''),
(783, 182, '_sale_price_dates_to', ''),
(784, 182, 'total_sales', '0'),
(785, 182, '_tax_status', 'taxable'),
(786, 182, '_tax_class', ''),
(787, 182, '_manage_stock', 'no'),
(788, 182, '_backorders', 'no'),
(789, 182, '_low_stock_amount', ''),
(790, 182, '_sold_individually', 'no'),
(791, 182, '_weight', ''),
(792, 182, '_length', ''),
(793, 182, '_width', ''),
(794, 182, '_height', ''),
(795, 182, '_upsell_ids', 'a:0:{}'),
(796, 182, '_crosssell_ids', 'a:0:{}'),
(797, 182, '_purchase_note', ''),
(798, 182, '_default_attributes', 'a:0:{}'),
(799, 182, '_virtual', 'no'),
(800, 182, '_downloadable', 'no'),
(801, 182, '_product_image_gallery', ''),
(802, 182, '_download_limit', '-1'),
(803, 182, '_download_expiry', '-1'),
(804, 182, '_stock', NULL),
(805, 182, '_stock_status', 'instock'),
(806, 182, '_product_version', '3.5.2'),
(807, 182, '_price', '1000'),
(808, 183, '_wc_review_count', '0'),
(809, 183, '_wc_rating_count', 'a:0:{}'),
(810, 183, '_wc_average_rating', '0'),
(811, 183, '_edit_lock', '1546704809:1'),
(812, 183, '_edit_last', '1'),
(813, 183, '_not_buyable', 'no'),
(814, 183, '_sku', ''),
(815, 183, '_regular_price', '4000'),
(816, 183, '_sale_price', ''),
(817, 183, '_sale_price_dates_from', ''),
(818, 183, '_sale_price_dates_to', ''),
(819, 183, 'total_sales', '0'),
(820, 183, '_tax_status', 'taxable'),
(821, 183, '_tax_class', ''),
(822, 183, '_manage_stock', 'no'),
(823, 183, '_backorders', 'no'),
(824, 183, '_low_stock_amount', ''),
(825, 183, '_sold_individually', 'no'),
(826, 183, '_weight', ''),
(827, 183, '_length', ''),
(828, 183, '_width', ''),
(829, 183, '_height', ''),
(830, 183, '_upsell_ids', 'a:0:{}'),
(831, 183, '_crosssell_ids', 'a:0:{}'),
(832, 183, '_purchase_note', ''),
(833, 183, '_default_attributes', 'a:0:{}'),
(834, 183, '_virtual', 'no'),
(835, 183, '_downloadable', 'no'),
(836, 183, '_product_image_gallery', ''),
(837, 183, '_download_limit', '-1'),
(838, 183, '_download_expiry', '-1'),
(839, 183, '_stock', NULL),
(840, 183, '_stock_status', 'instock'),
(841, 183, '_product_version', '3.5.2'),
(842, 183, '_price', '4000'),
(843, 184, '_wc_review_count', '0'),
(844, 184, '_wc_rating_count', 'a:0:{}'),
(845, 184, '_wc_average_rating', '0'),
(846, 184, '_edit_lock', '1546704865:1'),
(847, 184, '_edit_last', '1'),
(848, 184, '_not_buyable', 'yes'),
(849, 184, '_sku', ''),
(850, 184, '_regular_price', '5000'),
(851, 184, '_sale_price', ''),
(852, 184, '_sale_price_dates_from', ''),
(853, 184, '_sale_price_dates_to', ''),
(854, 184, 'total_sales', '0'),
(855, 184, '_tax_status', 'taxable'),
(856, 184, '_tax_class', ''),
(857, 184, '_manage_stock', 'no'),
(858, 184, '_backorders', 'no'),
(859, 184, '_low_stock_amount', ''),
(860, 184, '_sold_individually', 'no'),
(861, 184, '_weight', ''),
(862, 184, '_length', ''),
(863, 184, '_width', ''),
(864, 184, '_height', ''),
(865, 184, '_upsell_ids', 'a:0:{}'),
(866, 184, '_crosssell_ids', 'a:0:{}'),
(867, 184, '_purchase_note', ''),
(868, 184, '_default_attributes', 'a:0:{}'),
(869, 184, '_virtual', 'no'),
(870, 184, '_downloadable', 'no'),
(871, 184, '_product_image_gallery', ''),
(872, 184, '_download_limit', '-1'),
(873, 184, '_download_expiry', '-1'),
(874, 184, '_stock', NULL),
(875, 184, '_stock_status', 'instock'),
(876, 184, '_product_version', '3.5.2'),
(877, 184, '_price', '5000'),
(878, 185, '_wc_review_count', '0'),
(879, 185, '_wc_rating_count', 'a:0:{}'),
(880, 185, '_wc_average_rating', '0'),
(881, 185, '_edit_lock', '1546704927:1'),
(882, 185, '_edit_last', '1'),
(883, 185, '_not_buyable', 'yes'),
(884, 185, '_sku', ''),
(885, 185, '_regular_price', '6000'),
(886, 185, '_sale_price', ''),
(887, 185, '_sale_price_dates_from', ''),
(888, 185, '_sale_price_dates_to', ''),
(889, 185, 'total_sales', '0'),
(890, 185, '_tax_status', 'taxable'),
(891, 185, '_tax_class', ''),
(892, 185, '_manage_stock', 'no'),
(893, 185, '_backorders', 'no'),
(894, 185, '_low_stock_amount', ''),
(895, 185, '_sold_individually', 'no'),
(896, 185, '_weight', ''),
(897, 185, '_length', ''),
(898, 185, '_width', ''),
(899, 185, '_height', ''),
(900, 185, '_upsell_ids', 'a:0:{}'),
(901, 185, '_crosssell_ids', 'a:0:{}'),
(902, 185, '_purchase_note', ''),
(903, 185, '_default_attributes', 'a:0:{}'),
(904, 185, '_virtual', 'no'),
(905, 185, '_downloadable', 'no'),
(906, 185, '_product_image_gallery', ''),
(907, 185, '_download_limit', '-1'),
(908, 185, '_download_expiry', '-1'),
(909, 185, '_stock', NULL),
(910, 185, '_stock_status', 'instock'),
(911, 185, '_product_version', '3.5.2'),
(912, 185, '_price', '6000'),
(913, 186, '_wc_review_count', '0'),
(914, 186, '_wc_rating_count', 'a:0:{}'),
(915, 186, '_wc_average_rating', '0'),
(916, 186, '_edit_lock', '1546704986:1'),
(917, 186, '_edit_last', '1'),
(918, 186, '_not_buyable', 'yes'),
(919, 186, '_sku', ''),
(920, 186, '_regular_price', '6000'),
(921, 186, '_sale_price', ''),
(922, 186, '_sale_price_dates_from', ''),
(923, 186, '_sale_price_dates_to', ''),
(924, 186, 'total_sales', '0'),
(925, 186, '_tax_status', 'taxable'),
(926, 186, '_tax_class', ''),
(927, 186, '_manage_stock', 'no'),
(928, 186, '_backorders', 'no'),
(929, 186, '_low_stock_amount', ''),
(930, 186, '_sold_individually', 'no'),
(931, 186, '_weight', ''),
(932, 186, '_length', ''),
(933, 186, '_width', ''),
(934, 186, '_height', ''),
(935, 186, '_upsell_ids', 'a:0:{}'),
(936, 186, '_crosssell_ids', 'a:0:{}'),
(937, 186, '_purchase_note', ''),
(938, 186, '_default_attributes', 'a:0:{}'),
(939, 186, '_virtual', 'no'),
(940, 186, '_downloadable', 'no'),
(941, 186, '_product_image_gallery', ''),
(942, 186, '_download_limit', '-1'),
(943, 186, '_download_expiry', '-1'),
(944, 186, '_stock', NULL),
(945, 186, '_stock_status', 'instock'),
(946, 186, '_product_version', '3.5.2'),
(947, 186, '_price', '6000'),
(948, 187, '_wc_review_count', '0'),
(949, 187, '_wc_rating_count', 'a:0:{}'),
(950, 187, '_wc_average_rating', '0'),
(951, 187, '_edit_lock', '1546705214:1'),
(952, 187, '_edit_last', '1'),
(953, 187, '_not_buyable', 'yes'),
(954, 187, '_sku', ''),
(955, 187, '_regular_price', '12000'),
(956, 187, '_sale_price', ''),
(957, 187, '_sale_price_dates_from', ''),
(958, 187, '_sale_price_dates_to', ''),
(959, 187, 'total_sales', '0'),
(960, 187, '_tax_status', 'taxable'),
(961, 187, '_tax_class', ''),
(962, 187, '_manage_stock', 'no'),
(963, 187, '_backorders', 'no'),
(964, 187, '_low_stock_amount', ''),
(965, 187, '_sold_individually', 'no'),
(966, 187, '_weight', ''),
(967, 187, '_length', ''),
(968, 187, '_width', ''),
(969, 187, '_height', ''),
(970, 187, '_upsell_ids', 'a:0:{}'),
(971, 187, '_crosssell_ids', 'a:0:{}'),
(972, 187, '_purchase_note', ''),
(973, 187, '_default_attributes', 'a:0:{}'),
(974, 187, '_virtual', 'no'),
(975, 187, '_downloadable', 'no'),
(976, 187, '_product_image_gallery', ''),
(977, 187, '_download_limit', '-1'),
(978, 187, '_download_expiry', '-1'),
(979, 187, '_stock', NULL),
(980, 187, '_stock_status', 'instock'),
(981, 187, '_product_version', '3.5.2'),
(982, 187, '_price', '12000'),
(983, 188, '_wc_review_count', '0'),
(984, 188, '_wc_rating_count', 'a:0:{}'),
(985, 188, '_wc_average_rating', '0'),
(986, 188, '_edit_lock', '1546705149:1'),
(987, 188, '_edit_last', '1'),
(988, 188, '_not_buyable', 'yes'),
(989, 188, '_sku', ''),
(990, 188, '_regular_price', '15000'),
(991, 188, '_sale_price', ''),
(992, 188, '_sale_price_dates_from', ''),
(993, 188, '_sale_price_dates_to', ''),
(994, 188, 'total_sales', '0'),
(995, 188, '_tax_status', 'taxable'),
(996, 188, '_tax_class', ''),
(997, 188, '_manage_stock', 'no'),
(998, 188, '_backorders', 'no'),
(999, 188, '_low_stock_amount', ''),
(1000, 188, '_sold_individually', 'no'),
(1001, 188, '_weight', ''),
(1002, 188, '_length', ''),
(1003, 188, '_width', ''),
(1004, 188, '_height', ''),
(1005, 188, '_upsell_ids', 'a:0:{}'),
(1006, 188, '_crosssell_ids', 'a:0:{}'),
(1007, 188, '_purchase_note', ''),
(1008, 188, '_default_attributes', 'a:0:{}'),
(1009, 188, '_virtual', 'no'),
(1010, 188, '_downloadable', 'no'),
(1011, 188, '_product_image_gallery', ''),
(1012, 188, '_download_limit', '-1'),
(1013, 188, '_download_expiry', '-1'),
(1014, 188, '_stock', NULL),
(1015, 188, '_stock_status', 'instock'),
(1016, 188, '_product_version', '3.5.2'),
(1017, 188, '_price', '15000'),
(1018, 189, '_wc_review_count', '0'),
(1019, 189, '_wc_rating_count', 'a:0:{}'),
(1020, 189, '_wc_average_rating', '0'),
(1021, 189, '_edit_lock', '1546705333:1'),
(1022, 189, '_edit_last', '1'),
(1023, 189, '_not_buyable', 'yes'),
(1024, 189, '_sku', ''),
(1025, 189, '_regular_price', '15000'),
(1026, 189, '_sale_price', ''),
(1027, 189, '_sale_price_dates_from', ''),
(1028, 189, '_sale_price_dates_to', ''),
(1029, 189, 'total_sales', '0'),
(1030, 189, '_tax_status', 'taxable'),
(1031, 189, '_tax_class', ''),
(1032, 189, '_manage_stock', 'no'),
(1033, 189, '_backorders', 'no'),
(1034, 189, '_low_stock_amount', ''),
(1035, 189, '_sold_individually', 'no'),
(1036, 189, '_weight', ''),
(1037, 189, '_length', ''),
(1038, 189, '_width', ''),
(1039, 189, '_height', ''),
(1040, 189, '_upsell_ids', 'a:0:{}'),
(1041, 189, '_crosssell_ids', 'a:0:{}'),
(1042, 189, '_purchase_note', ''),
(1043, 189, '_default_attributes', 'a:0:{}'),
(1044, 189, '_virtual', 'no'),
(1045, 189, '_downloadable', 'no'),
(1046, 189, '_product_image_gallery', ''),
(1047, 189, '_download_limit', '-1'),
(1048, 189, '_download_expiry', '-1'),
(1049, 189, '_stock', NULL),
(1050, 189, '_stock_status', 'instock'),
(1051, 189, '_product_version', '3.5.2'),
(1052, 189, '_price', '15000'),
(1053, 190, '_wc_review_count', '0'),
(1054, 190, '_wc_rating_count', 'a:0:{}'),
(1055, 190, '_wc_average_rating', '0'),
(1056, 190, '_edit_lock', '1546705392:1'),
(1057, 190, '_edit_last', '1'),
(1058, 190, '_not_buyable', 'yes'),
(1059, 190, '_sku', ''),
(1060, 190, '_regular_price', '15000'),
(1061, 190, '_sale_price', ''),
(1062, 190, '_sale_price_dates_from', ''),
(1063, 190, '_sale_price_dates_to', ''),
(1064, 190, 'total_sales', '0'),
(1065, 190, '_tax_status', 'taxable'),
(1066, 190, '_tax_class', ''),
(1067, 190, '_manage_stock', 'no'),
(1068, 190, '_backorders', 'no'),
(1069, 190, '_low_stock_amount', ''),
(1070, 190, '_sold_individually', 'no'),
(1071, 190, '_weight', ''),
(1072, 190, '_length', ''),
(1073, 190, '_width', ''),
(1074, 190, '_height', ''),
(1075, 190, '_upsell_ids', 'a:0:{}'),
(1076, 190, '_crosssell_ids', 'a:0:{}'),
(1077, 190, '_purchase_note', ''),
(1078, 190, '_default_attributes', 'a:0:{}'),
(1079, 190, '_virtual', 'no'),
(1080, 190, '_downloadable', 'no'),
(1081, 190, '_product_image_gallery', ''),
(1082, 190, '_download_limit', '-1'),
(1083, 190, '_download_expiry', '-1'),
(1084, 190, '_stock', NULL),
(1085, 190, '_stock_status', 'instock'),
(1086, 190, '_product_version', '3.5.2'),
(1087, 190, '_price', '15000'),
(1088, 191, '_wc_review_count', '0'),
(1089, 191, '_wc_rating_count', 'a:0:{}'),
(1090, 191, '_wc_average_rating', '0'),
(1091, 191, '_edit_lock', '1546705318:1'),
(1092, 191, '_edit_last', '1'),
(1093, 191, '_not_buyable', 'yes'),
(1094, 191, '_sku', ''),
(1095, 191, '_regular_price', '15000'),
(1096, 191, '_sale_price', ''),
(1097, 191, '_sale_price_dates_from', ''),
(1098, 191, '_sale_price_dates_to', ''),
(1099, 191, 'total_sales', '0'),
(1100, 191, '_tax_status', 'taxable'),
(1101, 191, '_tax_class', ''),
(1102, 191, '_manage_stock', 'no'),
(1103, 191, '_backorders', 'no'),
(1104, 191, '_low_stock_amount', ''),
(1105, 191, '_sold_individually', 'no'),
(1106, 191, '_weight', ''),
(1107, 191, '_length', ''),
(1108, 191, '_width', ''),
(1109, 191, '_height', ''),
(1110, 191, '_upsell_ids', 'a:0:{}'),
(1111, 191, '_crosssell_ids', 'a:0:{}'),
(1112, 191, '_purchase_note', ''),
(1113, 191, '_default_attributes', 'a:0:{}'),
(1114, 191, '_virtual', 'no'),
(1115, 191, '_downloadable', 'no'),
(1116, 191, '_product_image_gallery', ''),
(1117, 191, '_download_limit', '-1'),
(1118, 191, '_download_expiry', '-1'),
(1119, 191, '_stock', NULL),
(1120, 191, '_stock_status', 'instock'),
(1121, 191, '_product_version', '3.5.2'),
(1122, 191, '_price', '15000'),
(1123, 192, '_wc_review_count', '0'),
(1124, 192, '_wc_rating_count', 'a:0:{}'),
(1125, 192, '_wc_average_rating', '0'),
(1126, 192, '_edit_lock', '1546705366:1'),
(1127, 192, '_edit_last', '1'),
(1128, 192, '_not_buyable', 'yes'),
(1129, 192, '_sku', ''),
(1130, 192, '_regular_price', '15000'),
(1131, 192, '_sale_price', ''),
(1132, 192, '_sale_price_dates_from', ''),
(1133, 192, '_sale_price_dates_to', ''),
(1134, 192, 'total_sales', '0'),
(1135, 192, '_tax_status', 'taxable'),
(1136, 192, '_tax_class', ''),
(1137, 192, '_manage_stock', 'no'),
(1138, 192, '_backorders', 'no'),
(1139, 192, '_low_stock_amount', ''),
(1140, 192, '_sold_individually', 'no'),
(1141, 192, '_weight', ''),
(1142, 192, '_length', ''),
(1143, 192, '_width', ''),
(1144, 192, '_height', ''),
(1145, 192, '_upsell_ids', 'a:0:{}'),
(1146, 192, '_crosssell_ids', 'a:0:{}'),
(1147, 192, '_purchase_note', ''),
(1148, 192, '_default_attributes', 'a:0:{}'),
(1149, 192, '_virtual', 'no'),
(1150, 192, '_downloadable', 'no'),
(1151, 192, '_product_image_gallery', ''),
(1152, 192, '_download_limit', '-1'),
(1153, 192, '_download_expiry', '-1'),
(1154, 192, '_stock', NULL),
(1155, 192, '_stock_status', 'instock'),
(1156, 192, '_product_version', '3.5.2'),
(1157, 192, '_price', '15000'),
(1158, 193, '_wc_review_count', '0'),
(1159, 193, '_wc_rating_count', 'a:0:{}'),
(1160, 193, '_wc_average_rating', '0'),
(1161, 193, '_edit_lock', '1546705423:1'),
(1162, 193, '_edit_last', '1'),
(1163, 193, '_not_buyable', 'yes'),
(1164, 193, '_sku', ''),
(1165, 193, '_regular_price', '15000'),
(1166, 193, '_sale_price', ''),
(1167, 193, '_sale_price_dates_from', ''),
(1168, 193, '_sale_price_dates_to', ''),
(1169, 193, 'total_sales', '0'),
(1170, 193, '_tax_status', 'taxable'),
(1171, 193, '_tax_class', ''),
(1172, 193, '_manage_stock', 'no'),
(1173, 193, '_backorders', 'no'),
(1174, 193, '_low_stock_amount', ''),
(1175, 193, '_sold_individually', 'no'),
(1176, 193, '_weight', ''),
(1177, 193, '_length', ''),
(1178, 193, '_width', ''),
(1179, 193, '_height', ''),
(1180, 193, '_upsell_ids', 'a:0:{}'),
(1181, 193, '_crosssell_ids', 'a:0:{}'),
(1182, 193, '_purchase_note', ''),
(1183, 193, '_default_attributes', 'a:0:{}'),
(1184, 193, '_virtual', 'no'),
(1185, 193, '_downloadable', 'no'),
(1186, 193, '_product_image_gallery', ''),
(1187, 193, '_download_limit', '-1'),
(1188, 193, '_download_expiry', '-1'),
(1189, 193, '_stock', NULL),
(1190, 193, '_stock_status', 'instock'),
(1191, 193, '_product_version', '3.5.2'),
(1192, 193, '_price', '15000'),
(1193, 194, '_wc_review_count', '0'),
(1194, 194, '_wc_rating_count', 'a:0:{}'),
(1195, 194, '_wc_average_rating', '0'),
(1196, 194, '_edit_lock', '1546705463:1'),
(1197, 194, '_edit_last', '1'),
(1198, 194, '_not_buyable', 'yes'),
(1199, 194, '_sku', ''),
(1200, 194, '_regular_price', '15000'),
(1201, 194, '_sale_price', ''),
(1202, 194, '_sale_price_dates_from', ''),
(1203, 194, '_sale_price_dates_to', ''),
(1204, 194, 'total_sales', '0'),
(1205, 194, '_tax_status', 'taxable'),
(1206, 194, '_tax_class', ''),
(1207, 194, '_manage_stock', 'no'),
(1208, 194, '_backorders', 'no'),
(1209, 194, '_low_stock_amount', ''),
(1210, 194, '_sold_individually', 'no'),
(1211, 194, '_weight', ''),
(1212, 194, '_length', ''),
(1213, 194, '_width', ''),
(1214, 194, '_height', ''),
(1215, 194, '_upsell_ids', 'a:0:{}'),
(1216, 194, '_crosssell_ids', 'a:0:{}'),
(1217, 194, '_purchase_note', ''),
(1218, 194, '_default_attributes', 'a:0:{}'),
(1219, 194, '_virtual', 'no'),
(1220, 194, '_downloadable', 'no'),
(1221, 194, '_product_image_gallery', ''),
(1222, 194, '_download_limit', '-1'),
(1223, 194, '_download_expiry', '-1'),
(1224, 194, '_stock', NULL),
(1225, 194, '_stock_status', 'instock'),
(1226, 194, '_product_version', '3.5.2'),
(1227, 194, '_price', '15000'),
(1228, 195, '_wc_review_count', '0'),
(1229, 195, '_wc_rating_count', 'a:0:{}'),
(1230, 195, '_wc_average_rating', '0'),
(1231, 195, '_edit_lock', '1546705511:1'),
(1232, 195, '_edit_last', '1'),
(1233, 195, '_not_buyable', 'yes'),
(1234, 195, '_sku', ''),
(1235, 195, '_regular_price', '15000'),
(1236, 195, '_sale_price', ''),
(1237, 195, '_sale_price_dates_from', ''),
(1238, 195, '_sale_price_dates_to', ''),
(1239, 195, 'total_sales', '0'),
(1240, 195, '_tax_status', 'taxable'),
(1241, 195, '_tax_class', ''),
(1242, 195, '_manage_stock', 'no'),
(1243, 195, '_backorders', 'no'),
(1244, 195, '_low_stock_amount', ''),
(1245, 195, '_sold_individually', 'no'),
(1246, 195, '_weight', ''),
(1247, 195, '_length', ''),
(1248, 195, '_width', ''),
(1249, 195, '_height', ''),
(1250, 195, '_upsell_ids', 'a:0:{}'),
(1251, 195, '_crosssell_ids', 'a:0:{}'),
(1252, 195, '_purchase_note', ''),
(1253, 195, '_default_attributes', 'a:0:{}'),
(1254, 195, '_virtual', 'no'),
(1255, 195, '_downloadable', 'no'),
(1256, 195, '_product_image_gallery', ''),
(1257, 195, '_download_limit', '-1'),
(1258, 195, '_download_expiry', '-1'),
(1259, 195, '_stock', NULL),
(1260, 195, '_stock_status', 'instock'),
(1261, 195, '_product_version', '3.5.2'),
(1262, 195, '_price', '15000'),
(1263, 196, '_wc_review_count', '0'),
(1264, 196, '_wc_rating_count', 'a:0:{}'),
(1265, 196, '_wc_average_rating', '0'),
(1266, 196, '_edit_lock', '1546705763:1'),
(1267, 196, '_edit_last', '1'),
(1268, 196, '_not_buyable', 'yes'),
(1269, 196, '_sku', ''),
(1270, 196, '_regular_price', '25000'),
(1271, 196, '_sale_price', ''),
(1272, 196, '_sale_price_dates_from', ''),
(1273, 196, '_sale_price_dates_to', ''),
(1274, 196, 'total_sales', '0'),
(1275, 196, '_tax_status', 'taxable'),
(1276, 196, '_tax_class', ''),
(1277, 196, '_manage_stock', 'no'),
(1278, 196, '_backorders', 'no'),
(1279, 196, '_low_stock_amount', ''),
(1280, 196, '_sold_individually', 'no'),
(1281, 196, '_weight', ''),
(1282, 196, '_length', ''),
(1283, 196, '_width', ''),
(1284, 196, '_height', ''),
(1285, 196, '_upsell_ids', 'a:0:{}'),
(1286, 196, '_crosssell_ids', 'a:0:{}'),
(1287, 196, '_purchase_note', ''),
(1288, 196, '_default_attributes', 'a:0:{}'),
(1289, 196, '_virtual', 'no'),
(1290, 196, '_downloadable', 'no'),
(1291, 196, '_product_image_gallery', ''),
(1292, 196, '_download_limit', '-1'),
(1293, 196, '_download_expiry', '-1'),
(1294, 196, '_stock', NULL),
(1295, 196, '_stock_status', 'instock'),
(1296, 196, '_product_version', '3.5.2'),
(1297, 196, '_price', '25000');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_posts`
--

CREATE TABLE `jawi_posts` (
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
-- Dumping data for table `jawi_posts`
--

INSERT INTO `jawi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-11 20:34:03', '2018-12-11 13:34:03', 'Selamat datang di WordPress. Ini adalah pos pertama Anda. Edit atau hapus pos ini, lalu mulailah menulis!', 'Halo dunia!', '', 'publish', 'open', 'open', '', 'halo-dunia', '', '', '2018-12-11 20:34:03', '2018-12-11 13:34:03', '', 0, 'http://localhost/kedai/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-11 20:34:03', '2018-12-11 13:34:03', 'Ini adalah contoh laman. Ini berbeda dengan posting blog karena akan tetap berada di satu tempat dan akan muncul di navigasi situs Anda (di kebanyakan tema). Kebanyakan orang memulai dengan laman Tentang yang mengenalkannya ke calon pengunjung situs. Biasanya terdengar seperti ini:\n\n<blockquote>Hai disana! Saya adalah pembawa sepeda siang hari, calon aktor di malam hari, dan ini adalah situs web saya. Saya tinggal di Los Angeles, punya anjing hebat bernama Jack, dan saya suka piña colada. (Dan tertangkap basah).</blockquote>\n\n... atau sesuatu seperti ini:\n\n<blockquote>The XYZ Doohickey Company didirikan pada tahun 1971, dan telah menyediakan doohickeys berkualitas kepada masyarakat sejak saat itu. Terletak di Gotham City, XYZ mempekerjakan lebih dari 2.000 orang dan melakukan segala hal yang mengagumkan untuk komunitas Gotham.</blockquote>\n\nSebagai pengguna WordPress baru, Anda harus membuka <a href="http://localhost/kedai/wp-admin/">dasbor</a> untuk menghapus halaman ini dan membuat halaman baru untuk konten Anda. Selamat bersenang-senang!', 'Laman Contoh', '', 'publish', 'closed', 'open', '', 'laman-contoh', '', '', '2018-12-11 20:34:03', '2018-12-11 13:34:03', '', 0, 'http://localhost/kedai/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-11 20:34:03', '2018-12-11 13:34:03', '<h2>Siapa kami</h2><p>Alamat situs web kami adalah: http://localhost/kedai.</p><h2>Data pribadi apa yang kami kumpulkan dan mengapa kami mengumpulkannya</h2><h3>Komentar</h3><p>Saat pengunjung meninggalkan komentar pada situs, kita mengumpulkan data yang ditampilkan pada form komentar, alamat IP pengunjung dan user agent browser untuk membantu pendeteksian spam.</p><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah persetujuan atas komentar Anda, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><h3>Media</h3><p>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan data lokasi tertanam (GPS EXIF) yang disertakan. Pengunjung ke situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><h3>Formulir Kontak</h3><h3>Cookies</h3><p>Jika Anda meninggalkan komentar di situs kami, Anda dapat memilih untuk menyimpan nama, alamat email, dan situs web Anda dalam cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><p>Jika Anda memiliki akun dan masuk ke situs ini, kami akan menetapkan cookie sementara untuk menentukan apakah peramban Anda menerima cookie. Cookie ini tidak menyimpan data pribadi dan dibuang saat Anda menutup peramban Anda.</p><p>Saat Anda log masuk, kami akan menyiapkan beberapa cookie untuk menyimpan informasi log masuk Anda dan tampilan yang Anda pilih. Cookie log masuk berlaku selama dua hari, dan cookie pengaturan tampilan berlaku selama satu tahun. Jika Anda memilih &quot;Ingatkan Saya&quot;, log masuk anda akan bertahan selama dua minggu. Jika Anda log keluar dari akun, cookie log masuk akan dihapus.</p><p>Jika Anda menyunting atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID posting dari artikel yang baru saja Anda sunting. Kadaluwarsa setelah 1 hari.</p><h3>Konten yang disematkan dari situs web lain</h3><p>Artikel-artikel di dalam situs ini dapat menyertakan konten terembed (seperti video, gambar, artikel, dll). Konten terembed dari situs web lain akan berlaku sama dengan pengunjung yang mengunjungi situs web lain.</p><p>Situs-situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookies, menanamkan pelacak dari pihak ketiga, dan memonitor interaksi Anda dengan muatan tertanam, termasuk menggunakannya untuk melacak interaksi Anda jika Anda memiliki sebuah akun dan masuk ke dalam situs web tersebut.</p><h3>Analitik</h3><h2>Dengan siapa kami membagi data Anda</h2><h2>Berapa lama kami menyimpan data Anda</h2><p>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui komentar tindak lanjut secara otomatis dan tidak menahannya dalam antrean moderasi.</p><p>Untuk pengguna yang mendaftar pada website kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan dalam profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs juga dapat melihat dan mengedit informasi tersebut.</p><h2>Hak apa yang Anda miliki atas data ANda</h2><p>Jika anda mempunyai akun di situs ini, atau telah meninggalkan komentar, anda dapat meminta untuk mendapat data personal dalam file export dari kami, termasuk data yang anda berikan kepada kami. Anda juga dapat meminta kami menghapus data personal mengenai anda. Ini tidak termasuk data yang wajib kami simpan untuk keperluan administratif, hukum, atau keamanan.</p><h2>Ke mana kami kirim data Anda</h2><p>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p><h2>Informasi kontak Anda</h2><h2>Informasi tambahan</h2><h3>Bagaimana kami melindungi data Anda</h3><h3>Apa prosedur kebocoran data yang kami miliki</h3><h3>Pihak ketiga mana saja data yang kami terima berasal</h3><h3>Apa pengambilan keputusan otomatis dan/atau profil yang kami lakukan dengan data pengguna</h3><h3>Persyaratan pengungkapan regulasi industri</h3>', 'Kebijakan Privasi', '', 'draft', 'closed', 'open', '', 'kebijakan-privasi', '', '', '2018-12-11 20:34:03', '2018-12-11 13:34:03', '', 0, 'http://localhost/kedai/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-12-11 20:43:05', '2018-12-11 13:43:05', '<!-- wp:shortcode -->\n[products  columns="4" category="Paket Aqiqah"]\n<!-- /wp:shortcode -->', 'Paket Aqiqah', '', 'publish', 'closed', 'closed', '', 'paket-aqiqah', '', '', '2019-01-05 20:52:05', '2019-01-05 13:52:05', '', 0, 'http://localhost/kedai/index.php/shop/', 0, 'page', '', 0),
(6, 1, '2018-12-11 20:43:06', '2018-12-11 13:43:06', '[woocommerce_cart]', 'Keranjang', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-12-13 14:53:43', '2018-12-13 07:53:43', '', 0, 'http://localhost/kedai/index.php/cart/', 0, 'page', '', 0),
(7, 1, '2018-12-11 20:43:06', '2018-12-11 13:43:06', '[woocommerce_checkout]', 'Laman Pembayaran', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-12-13 14:54:51', '2018-12-13 07:54:51', '', 0, 'http://localhost/kedai/index.php/checkout/', 0, 'page', '', 0),
(8, 1, '2018-12-11 20:43:07', '2018-12-11 13:43:07', '[woocommerce_my_account]', 'Akun', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-12-13 14:56:11', '2018-12-13 07:56:11', '', 0, 'http://localhost/kedai/index.php/my-account/', 0, 'page', '', 0),
(9, 1, '2018-12-11 20:53:34', '2018-12-11 13:53:34', 'deskripsi', 'Tes1', 'short desc', 'publish', 'open', 'closed', '', 'tes1', '', '', '2019-01-05 20:44:21', '2019-01-05 13:44:21', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=9', 0, 'product', '', 0),
(11, 1, '2018-12-11 21:41:49', '2018-12-11 14:41:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-12-11 21:41:49', '2018-12-11 14:41:49', '', 0, 'http://localhost/kedai/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-12-11 21:41:49', '2018-12-11 14:41:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-12-11 21:41:49', '2018-12-11 14:41:49', '', 11, 'http://localhost/kedai/index.php/2018/12/11/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-12-11 21:44:25', '2018-12-11 14:44:25', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-12-11 21:44:25', '2018-12-11 14:44:25', '', 0, 'http://localhost/kedai/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-12-11 21:44:25', '2018-12-11 14:44:25', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-12-11 21:44:25', '2018-12-11 14:44:25', '', 13, 'http://localhost/kedai/index.php/2018/12/11/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-12-11 14:51:41', '2018-12-11 07:51:41', '[phoen_ticket_system]', 'Ticket system', '', 'publish', 'open', 'closed', '', 'ticket_system', '', '', '2018-12-11 14:51:41', '2018-12-11 07:51:41', '', 0, 'http://localhost/kedai/index.php/ticket_system/', 0, 'page', '', 0),
(18, 1, '2018-12-11 22:21:23', '2018-12-11 15:21:23', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-12-11 22:21:23', '2018-12-11 15:21:23', '', 0, 'http://localhost/kedai/index.php/2018/12/11/18/', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-12-11 22:21:26', '2018-12-11 15:21:26', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-01-03 19:58:24', '2019-01-03 12:58:24', '', 0, 'http://localhost/kedai/index.php/2018/12/11/19/', 6, 'nav_menu_item', '', 0),
(20, 1, '2018-12-11 22:21:30', '2018-12-11 15:21:30', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-01-03 19:58:25', '2019-01-03 12:58:25', '', 0, 'http://localhost/kedai/index.php/2018/12/11/20/', 7, 'nav_menu_item', '', 0),
(21, 1, '2018-12-11 22:21:34', '2018-12-11 15:21:34', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-01-03 19:58:25', '2019-01-03 12:58:25', '', 0, 'http://localhost/kedai/index.php/2018/12/11/21/', 8, 'nav_menu_item', '', 0),
(26, 1, '2018-12-11 22:36:53', '2018-12-11 15:36:53', '', 'Master', '', 'inherit', 'open', 'closed', '', 'master-2', '', '', '2018-12-11 22:37:10', '2018-12-11 15:37:10', '', 0, 'http://localhost/kedai/wp-content/uploads/2018/12/Master-1.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-12-13 14:52:25', '2018-12-13 07:52:25', '', 'Paket Aqiqah', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-12-13 14:52:25', '2018-12-13 07:52:25', '', 5, 'http://localhost/kedai/index.php/2018/12/13/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-12-13 14:53:43', '2018-12-13 07:53:43', '[woocommerce_cart]', 'Keranjang', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-12-13 14:53:43', '2018-12-13 07:53:43', '', 6, 'http://localhost/kedai/index.php/2018/12/13/6-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-12-13 14:54:51', '2018-12-13 07:54:51', '[woocommerce_checkout]', 'Laman Pembayaran', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-12-13 14:54:51', '2018-12-13 07:54:51', '', 7, 'http://localhost/kedai/index.php/2018/12/13/7-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-12-13 14:56:11', '2018-12-13 07:56:11', '[woocommerce_my_account]', 'Akun', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-13 14:56:11', '2018-12-13 07:56:11', '', 8, 'http://localhost/kedai/index.php/2018/12/13/8-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-12-13 15:10:47', '2018-12-13 08:10:47', 'deskripsi', 'Tes1', '<p>short desc</p>', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2018-12-13 15:10:47', '2018-12-13 08:10:47', '', 9, 'http://localhost/kedai/index.php/2018/12/13/9-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2019-01-05 20:51:59', '2019-01-05 13:51:59', '<!-- wp:shortcode -->\n[products  columns="4" category="Paket Aqiqah"]\n<!-- /wp:shortcode -->', 'Paket Aqiqah', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2019-01-05 20:51:59', '2019-01-05 13:51:59', '', 5, 'http://localhost/kedai/index.php/2018/12/13/5-autosave-v1/', 0, 'revision', '', 0),
(34, 1, '2018-12-13 09:17:37', '2018-12-13 02:17:37', '[phoen_ticket_system]', 'Ticket system', '', 'publish', 'open', 'closed', '', 'ticket_system-2', '', '', '2018-12-13 09:17:37', '2018-12-13 02:17:37', '', 0, 'http://localhost/kedai/index.php/ticket_system-2/', 0, 'page', '', 0),
(36, 1, '2018-12-13 17:55:03', '2018-12-13 10:55:03', '', 'Order &ndash; Desember 13, 2018 @ 05:55 PM', '', 'wc-completed', 'open', 'closed', 'order_5c123a877492c', 'order-dec-13-2018-1055-am', '', '', '2018-12-13 19:59:26', '2018-12-13 12:59:26', '', 0, 'http://localhost/kedai/?post_type=shop_order&#038;p=36', 0, 'shop_order', '', 1),
(37, 1, '2018-12-13 19:27:41', '2018-12-13 12:27:41', '', 'Order &ndash; Desember 13, 2018 @ 07:27 PM', '', 'wc-processing', 'open', 'closed', 'order_5c12503d65071', 'order-dec-13-2018-1227-pm', '', '', '2018-12-13 19:39:09', '2018-12-13 12:39:09', '', 0, 'http://localhost/kedai/?post_type=shop_order&#038;p=37', 0, 'shop_order', '', 2),
(38, 1, '2018-12-15 13:41:04', '2018-12-15 06:41:04', '', 'Order &ndash; Desember 15, 2018 @ 01:41 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5c14a200eeda9', 'order-dec-15-2018-0641-am', '', '', '2018-12-15 13:41:26', '2018-12-15 06:41:26', '', 0, 'http://localhost/kedai/?post_type=shop_order&#038;p=38', 0, 'shop_order', '', 1),
(40, 1, '2018-12-23 14:56:20', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Kami adalah penyedia jasa aqiqah bagi kaum muslim yang ingin.......</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Tentang Kami', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-12-23 14:56:20', '2018-12-23 07:56:20', '', 0, 'http://localhost/kedai/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-12-23 16:28:40', '2018-12-23 09:28:40', '{\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:26,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 09:28:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '60919016-73af-48a8-a60f-39b9f2143c88', '', '', '2018-12-23 16:28:40', '2018-12-23 09:28:40', '', 0, 'http://localhost/kedai/index.php/2018/12/23/60919016-73af-48a8-a60f-39b9f2143c88/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-12-23 22:13:10', '2018-12-23 15:13:10', '{\n    "tyche::tyche_slider_layout": {\n        "value": "center",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 14:59:16"\n    },\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:%2226%22,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D,%7B%22image_bg%22:%2210%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:05:12"\n    },\n    "tyche::tyche_enable_top_bar": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:06:25"\n    },\n    "tyche::tyche_show_banner": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:06:25"\n    },\n    "tyche::header_textcolor": {\n        "value": "blank",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:07:24"\n    },\n    "tyche::info_section_one_text": {\n        "value": "Follow Our Instagram",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:10:55"\n    },\n    "tyche::info_section_one_subtext": {\n        "value": "@kedaidejawi",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:09:56"\n    },\n    "tyche::info_section_one_icon": {\n        "value": "camera",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:10:55"\n    },\n    "tyche::info_section_three_subtext": {\n        "value": "Jl. Parung Serab No.89, Cibinong",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:11:57"\n    },\n    "tyche::info_section_three_icon": {\n        "value": "location",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-23 15:11:57"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df2cccc8-510a-40b9-b828-b96f275568ff', '', '', '2018-12-23 22:13:10', '2018-12-23 15:13:10', '', 0, 'http://localhost/kedai/?p=42', 0, 'customize_changeset', '', 0),
(44, 1, '2019-01-03 19:34:09', '2019-01-03 12:34:09', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wtcpl-product-cat]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[wpb_categories]\n<!-- /wp:shortcode -->', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2019-01-19 21:00:14', '2019-01-19 14:00:14', '', 0, 'http://localhost/kedai/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-12-26 21:41:56', '2018-12-26 14:41:56', '[Best_Wordpress_Gallery id="1" gal_title="coba"]', 'coba', '', 'publish', 'closed', 'closed', '', 'ccb', '', '', '2018-12-26 21:41:56', '2018-12-26 14:41:56', '', 0, 'http://localhost/kedai/index.php/bwg_gallery/ccb/', 0, 'bwg_gallery', '', 0),
(46, 1, '2018-12-26 21:42:23', '2018-12-26 14:42:23', '', 'Image', '', 'publish', 'closed', 'closed', '', 'image', '', '', '2018-12-26 21:42:23', '2018-12-26 14:42:23', '', 0, 'http://localhost/kedai/index.php/2018/12/26/image/', 0, 'bwg_share', '', 0),
(48, 1, '2019-01-02 16:02:51', '2019-01-02 09:02:51', '{\n    "tyche::tyche_enable_top_bar": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 09:02:51"\n    },\n    "tyche::tyche_shop_layout": {\n        "value": "fullwidth",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 09:02:51"\n    },\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:26,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D,%7B%22image_bg%22:10,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 09:02:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aee5b7fc-322a-4688-8c4c-cb8dabc57651', '', '', '2019-01-02 16:02:51', '2019-01-02 09:02:51', '', 0, 'http://localhost/kedai/index.php/2019/01/02/aee5b7fc-322a-4688-8c4c-cb8dabc57651/', 0, 'customize_changeset', '', 0),
(49, 1, '2019-01-02 16:45:13', '2019-01-02 09:45:13', '{\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:26,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D,%7B%22image_bg%22:%22%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D,%7B%22image_bg%22:%22%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 09:39:06"\n    },\n    "tyche::tyche_enable_top_bar": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 09:45:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b9154f9a-37d2-472e-810e-9cfcd7cab8c3', '', '', '2019-01-02 16:45:13', '2019-01-02 09:45:13', '', 0, 'http://localhost/kedai/?p=49', 0, 'customize_changeset', '', 0),
(52, 1, '2019-01-02 17:00:49', '2019-01-02 10:00:49', '{\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:26,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D,%7B%22image_bg%22:%2253%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D,%7B%22image_bg%22:%22%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 09:56:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f7203e54-cb83-4ee5-a4cc-271c07db5d3a', '', '', '2019-01-02 17:00:49', '2019-01-02 10:00:49', '', 0, 'http://localhost/kedai/?p=52', 0, 'customize_changeset', '', 0),
(56, 1, '2019-01-02 17:13:12', '2019-01-02 10:13:12', '{\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:26,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D,%7B%22image_bg%22:53,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D,%7B%22image_bg%22:%2255%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-02 10:11:12"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0a15affc-fdfe-406f-8285-859cc5fb1f7b', '', '', '2019-01-02 17:13:12', '2019-01-02 10:13:12', '', 0, 'http://localhost/kedai/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2019-01-02 21:15:07', '2019-01-02 14:15:07', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\nul#menukhusus li {\n  display:inline;\n}\n</style>\n <ul id="menukhusus">\n<li>test</li>\n<li>test</li>\n<li>test</li>\n </ul>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-02 21:15:07', '2019-01-02 14:15:07', '', 44, 'http://localhost/kedai/index.php/2019/01/02/44-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-01-03 18:17:20', '2019-01-03 11:17:20', '', 'No-image', '', 'inherit', 'open', 'closed', '', 'no-image', '', '', '2019-01-03 18:17:20', '2019-01-03 11:17:20', '', 0, 'http://localhost/kedai/wp-content/uploads/2019/01/No-image.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-01-03 18:42:14', '2019-01-03 11:42:14', '', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2019-01-03 18:42:14', '2019-01-03 11:42:14', '', 0, 'http://localhost/kedai/?post_type=wpsm_servicebox_r&#038;p=60', 0, 'wpsm_servicebox_r', '', 0),
(61, 1, '2019-01-03 19:12:22', '2019-01-03 12:12:22', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n   <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>   \n                </div>\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div>  \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n            <center>\n              <a class="btn btn-success" href="http://localhost:80/Squadtnaga/index.php/Homepage/ContactUs">Pesan Sekarang!</a>\n            </center>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<style>\nul#menukhusus li {\nlist-style: none; \n display:inline;\n}\n</style>\n <ul id="menukhusus">\n<li ><img src="http://localhost/kedai/wp-content/uploads/2019/01/No-image.png" ><h2><b>SATE</b></h2><p>Deskripsi</p></li>\n\n<li ><img src="http://localhost/kedai/wp-content/uploads/2019/01/No-image.png" ><h2><b>MI&BAKSO</b></h2><p>Deskripsi</p></li>\n\n<li ><img src="http://localhost/kedai/wp-content/uploads/2019/01/No-image.png" ><h2><b>KOPI</b></h2><p>Deskripsi</p></li>\n\n </ul>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<section class="panel panel-default" style="background: linear-gradient(to bottom, rgba(75,90,102,0.9) 0%, rgba(5,20,30,0.1) 100%); " >\n      <div class="panel-body">\n        <center>\n          <h1><strong>What We Do?</strong></h1>\n        </center>\n          <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Logo\n                </div>\n                \n                <div class="row" > \n                  <strong>Custom Web Development</strong>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Anda memiliki perusahaan? organisasi? komunitas? \n                  atau toko yang perlu dibuatkan websitenya? Kami siap membantu anda\n                  dengan harga yang sangat kekeluargaan</p>   \n                </div>\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Logo\n                </div>\n                  \n                <div class="row"> \n                  <strong> Wordpress</strong>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Anda memiliki perusahaan? organisasi? komunitas yang membutuhkan web profil? Kami siap membantu anda\n                     dengan harga yang sangat kekeluargaan</p> \n                </div>  \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Logo\n                </div>\n                \n                <div class="row" > \n                  <strong>Desain Grafis</strong>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>Anda membutuhkan desain logo? desain web? Kami siap membantu anda\n                     dengan harga yang sangat kekeluargaanaaaaaaaaaaa\n                     aaaaaaa\n                     aaaaaaaaaaaaaaaaaaaaaaa\n                     aa\n                     aaaaa\n\n                     aaaaaaaaaaaaaaaaaaaaaaa\n                     aaa\n                     aaa\n                     aaaaaaaaaa\n                     aaaaaaaaaaaaaaaaaaaaaaa\n                     aaa\n                     aaaaaaa</p> \n                </div> \n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n            <center>\n              <a class="btn btn-success" href="http://localhost:80/Squadtnaga/index.php/Homepage/ContactUs">Pesan Sekarang!</a>\n            </center>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->\n\n<p><!-- /wp:html --></p>', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:12:22', '2019-01-03 12:12:22', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-01-03 19:34:09', '2019-01-03 12:34:09', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 28px;\n  padding: 20px;\n  width: 200px;\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div>  \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n            <center>\n              <a class="btn btn-success" href="http://localhost:80/Squadtnaga/index.php/Homepage/ContactUs">Pesan Sekarang!</a>\n            </center>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:34:09', '2019-01-03 12:34:09', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-01-03 19:40:14', '2019-01-03 12:40:14', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  width: 150px;\n  cursor: pointer;\n  padding:15px;\n \n}\n#buttonsaya:hover {\nopacity: 1;\n}\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div>  \n <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n              </div>       \n              </div>\n          </div>\n         \n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:40:14', '2019-01-03 12:40:14', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-01-03 19:41:34', '2019-01-03 12:41:34', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  width: 150px;\n  cursor: pointer;\n  padding:15px;\n \n}\n#buttonsaya:hover {\nopacity: 1;\n}\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div>  \n <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n              </div>       \n              </div>\n          </div>\n         </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:41:34', '2019-01-03 12:41:34', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-01-03 19:44:04', '2019-01-03 12:44:04', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  width: 150px;\n  cursor: pointer;\n  padding:15px;\n \n}\n#buttonsaya:hover {\nopacity: 1;\n}\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>       \n              </div>\n\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:44:04', '2019-01-03 12:44:04', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-01-03 19:44:44', '2019-01-03 12:44:44', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  width: 150px;\n  cursor: pointer;\n  padding:15px;\n margin:5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>       \n              </div>\n\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:44:44', '2019-01-03 12:44:44', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-01-03 19:45:40', '2019-01-03 12:45:40', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 28px;\n  padding: 20px;\n  width: 200px;\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div>  \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n            <center>\n              <a class="btn btn-success" href="http://localhost:80/Squadtnaga/index.php/Homepage/ContactUs">Pesan Sekarang!</a>\n            </center>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:45:40', '2019-01-03 12:45:40', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `jawi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2019-01-03 19:48:01', '2019-01-03 12:48:01', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:300px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style="height:200px; text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n            <center>\n              <a class="btn btn-success" href="http://localhost:80/Squadtnaga/index.php/Homepage/ContactUs">Pesan Sekarang!</a>\n            </center>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:48:01', '2019-01-03 12:48:01', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-01-03 19:48:57', '2019-01-03 12:48:57', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n            <center>\n              <a class="btn btn-success" href="http://localhost:80/Squadtnaga/index.php/Homepage/ContactUs">Pesan Sekarang!</a>\n            </center>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 19:48:57', '2019-01-03 12:48:57', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-01-03 19:58:24', '2019-01-03 12:58:24', '{\n    "sidebars_widgets[sidebar]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:54:26"\n    },\n    "tyche::tyche_slider_bg": {\n        "value": "%5B%7B%22image_bg%22:26,%22cta_text%22:%22Aqiqah%22,%22cta_subtext%22:%22Kedai%20De%20Jawi%22,%22button_one_text%22:%22%22,%22button_one_url%22:%22%22,%22button_two_text%22:%22Pesan%20Sekarang%22,%22button_two_url%22:%22http://localhost/kedai/index.php/paket-aqiqah/%22%7D,%7B%22image_bg%22:53,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D,%7B%22image_bg%22:%2255%22,%22cta_text%22:%222016%22,%22cta_subtext%22:%22Autumn%20Collection%22,%22button_one_text%22:%22Shop%20Now%22,%22button_one_url%22:%22https://colorlib.com%22,%22button_two_text%22:%22Learn%20More%22,%22button_two_url%22:%22https://colorlib.com%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:54:26"\n    },\n    "nav_menu_item[19]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 13,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Laman",\n            "url": "http://localhost/kedai/index.php/blog/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 16,\n            "position": 6,\n            "status": "publish",\n            "original_title": "Blog",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:56:28"\n    },\n    "nav_menu_item[20]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 5,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Laman",\n            "url": "http://localhost/kedai/index.php/paket-aqiqah/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 16,\n            "position": 7,\n            "status": "publish",\n            "original_title": "Paket Aqiqah",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:56:28"\n    },\n    "nav_menu_item[21]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 8,\n            "object": "page",\n            "type": "post_type",\n            "type_label": "Laman",\n            "url": "http://localhost/kedai/index.php/my-account/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 16,\n            "position": 8,\n            "status": "publish",\n            "original_title": "Akun",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:56:28"\n    },\n    "nav_menu_item[-468572589]": {\n        "value": {\n            "object_id": 44,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Menu",\n            "url": "http://localhost/kedai/index.php/menu/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Menu",\n            "nav_menu_term_id": 16,\n            "_invalid": false,\n            "type_label": "Laman"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:55:26"\n    },\n    "nav_menu_item[-2049849533]": {\n        "value": {\n            "object_id": 18,\n            "object": "product_cat",\n            "menu_item_parent": -468572589,\n            "position": 5,\n            "type": "taxonomy",\n            "title": "Kopi & Beverages",\n            "url": "http://localhost/kedai/index.php/product-category/ngopi/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Kopi & Beverages",\n            "nav_menu_term_id": 16,\n            "_invalid": false,\n            "type_label": "Category"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:56:28"\n    },\n    "nav_menu_item[-608944790]": {\n        "value": {\n            "object_id": 19,\n            "object": "product_cat",\n            "menu_item_parent": -468572589,\n            "position": 4,\n            "type": "taxonomy",\n            "title": "Bakso",\n            "url": "http://localhost/kedai/index.php/product-category/bakso/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Bakso",\n            "nav_menu_term_id": 16,\n            "_invalid": false,\n            "type_label": "Category"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:56:28"\n    },\n    "nav_menu_item[-219737363]": {\n        "value": {\n            "object_id": 20,\n            "object": "product_cat",\n            "menu_item_parent": -468572589,\n            "position": 3,\n            "type": "taxonomy",\n            "title": "Sate",\n            "url": "http://localhost/kedai/index.php/product-category/sate/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Sate",\n            "nav_menu_term_id": 16,\n            "_invalid": false,\n            "type_label": "Category"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2019-01-03 12:56:28"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7b77feab-63bc-4920-95d9-b683c24c088c', '', '', '2019-01-03 19:58:24', '2019-01-03 12:58:24', '', 0, 'http://localhost/kedai/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2019-01-03 19:58:25', '2019-01-03 12:58:25', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2019-01-03 19:58:25', '2019-01-03 12:58:25', '', 0, 'http://localhost/kedai/index.php/2019/01/03/72/', 2, 'nav_menu_item', '', 0),
(73, 1, '2019-01-03 19:58:30', '2019-01-03 12:58:30', '', 'Kopi & Beverages', '', 'publish', 'closed', 'closed', '', 'kopi-beverages', '', '', '2019-01-03 19:58:30', '2019-01-03 12:58:30', '', 0, 'http://localhost/kedai/index.php/2019/01/03/kopi-beverages/', 5, 'nav_menu_item', '', 0),
(74, 1, '2019-01-03 19:58:31', '2019-01-03 12:58:31', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2019-01-03 19:58:31', '2019-01-03 12:58:31', '', 0, 'http://localhost/kedai/index.php/2019/01/03/74/', 4, 'nav_menu_item', '', 0),
(75, 1, '2019-01-03 19:58:34', '2019-01-03 12:58:34', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2019-01-03 19:58:34', '2019-01-03 12:58:34', '', 0, 'http://localhost/kedai/index.php/2019/01/03/75/', 3, 'nav_menu_item', '', 0),
(80, 1, '2019-01-03 20:13:21', '2019-01-03 13:13:21', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <button id="buttonsaya"href="#">Lihat Menu</button>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 20:13:21', '2019-01-03 13:13:21', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-01-03 21:45:53', '2019-01-03 14:45:53', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 21:45:53', '2019-01-03 14:45:53', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-01-03 22:08:28', '2019-01-03 15:08:28', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[product_categories]\n<!-- /wp:shortcode -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-03 22:08:28', '2019-01-03 15:08:28', '', 44, 'http://localhost/kedai/index.php/2019/01/03/44-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-01-03 22:18:59', '2019-01-03 15:18:59', 'desc', 'Tubruk Indonesian Speciality', 'desk', 'publish', 'open', 'closed', '', 'tubruk-indonesian-speciality', '', '', '2019-01-05 22:49:15', '2019-01-05 15:49:15', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=84', 0, 'product', '', 0),
(140, 1, '2019-01-05 19:05:47', '2019-01-05 12:05:47', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wpb_categories]\n<!-- /wp:shortcode -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-05 19:05:47', '2019-01-05 12:05:47', '', 44, 'http://localhost/kedai/index.php/2019/01/05/44-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-01-05 19:28:07', '2019-01-05 12:28:07', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<style>\n#buttonsaya {\n  display: inline-block;\n  border-radius: 4px;\n  background-color: yellow;\n  border: none;\n  color: black;\n  opacity:0.7;\n  text-align: center;\n  font-size: 15px;\n  padding: 15px;\n\n  transition: all 0.5s;\n  cursor: pointer;\n  margin: 5px;\n}\n#buttonsaya:hover {\nopacity: 1;\n}\n\n\n</style> \n  <section class="panel panel-default">\n      <div class="col-sm-12">\n         <br>\n          <div class="row">\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Photo\n                </div>\n                \n                <div class="row" > \n                  <h2><strong>Sate</strong></h2>\n                </div>\n                \n                <div class="row" border="2" >   \n                  <p>Deskripsi</p>  \n                </div>\n                \n                <div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>                 \n            </div>\n            \n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                  \n                <div class="row"> \n                  <h2><strong>Mie&Bakso</strong></h2>\n                </div>\n                  \n                <div class="row"  border="2" > \n                    <p>Deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n \n              </div>       \n            </div>\n\n            <div class="col-sm-4"  >\n              <div class="panel-body" style=" text-align:center; background-color: #f2f2f2;">\n                <div class="row" > \n                  Foto\n                </div>\n                \n                <div class="row" > \n                <h2><strong>Kopi</strong></h2>\n                </div>\n                \n                <div class="row"  border="2"  > \n                  <p>deskripsi</p> \n                </div> \n\n<div class="row" > \n                  <a id="buttonsaya"href="#">Lihat Menu</a>\n                </div>\n\n              </div>       \n              </div>\n          </div>\n          <div class="row">\n            <br><br>\n          </div>\n        </div>\n      </section>\n<!-- /wp:html -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-05 19:28:07', '2019-01-05 12:28:07', '', 44, 'http://localhost/kedai/index.php/2019/01/05/44-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-01-05 19:32:04', '2019-01-05 12:32:04', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wpb_categories]\n<!-- /wp:shortcode -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-05 19:32:04', '2019-01-05 12:32:04', '', 44, 'http://localhost/kedai/index.php/2019/01/05/44-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-01-05 20:52:05', '2019-01-05 13:52:05', '<!-- wp:shortcode -->\n[products  columns="4" category="Paket Aqiqah"]\n<!-- /wp:shortcode -->', 'Paket Aqiqah', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-05 20:52:05', '2019-01-05 13:52:05', '', 5, 'http://localhost/kedai/index.php/2019/01/05/5-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2019-01-05 22:00:36', '2019-01-05 15:00:36', 'desc', 'Tubruk Indonesian Speciality', '<p>desk</p>', 'inherit', 'closed', 'closed', '', '84-autosave-v1', '', '', '2019-01-05 22:00:36', '2019-01-05 15:00:36', '', 84, 'http://localhost/kedai/index.php/2019/01/05/84-autosave-v1/', 0, 'revision', '', 0),
(171, 1, '2019-01-05 23:01:06', '2019-01-05 16:01:06', 'desc', 'Sate Kambing De ''Jawi', 'desk', 'publish', 'open', 'closed', '', 'sate-kambing-de-jawi', '', '', '2019-01-05 23:01:21', '2019-01-05 16:01:21', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=171', 0, 'product', '', 0),
(173, 1, '2019-01-05 23:03:18', '2019-01-05 16:03:18', 'desc', 'V60', 'desk', 'publish', 'open', 'closed', '', 'v60', '', '', '2019-01-05 23:03:33', '2019-01-05 16:03:33', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=173', 0, 'product', '', 0),
(174, 1, '2019-01-05 23:04:39', '2019-01-05 16:04:39', 'desc', 'Espresso', 'desk', 'publish', 'open', 'closed', '', 'espresso', '', '', '2019-01-05 23:04:46', '2019-01-05 16:04:46', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=174', 0, 'product', '', 0),
(175, 1, '2019-01-05 23:05:37', '2019-01-05 16:05:37', 'desc', 'Vietnam Drip', 'desk', 'publish', 'open', 'closed', '', 'vietnam-drip', '', '', '2019-01-05 23:07:46', '2019-01-05 16:07:46', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=175', 0, 'product', '', 0),
(176, 1, '2019-01-05 23:06:37', '2019-01-05 16:06:37', 'desc', 'Classic Affogato', 'desk', 'publish', 'open', 'closed', '', 'classic-affogato', '', '', '2019-01-05 23:06:46', '2019-01-05 16:06:46', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=176', 0, 'product', '', 0),
(177, 1, '2019-01-05 23:08:20', '2019-01-05 16:08:20', 'desc', 'Pandan Latte', 'desk', 'publish', 'open', 'closed', '', 'pandan-latte', '', '', '2019-01-05 23:08:31', '2019-01-05 16:08:31', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=177', 0, 'product', '', 0),
(178, 1, '2019-01-05 23:09:29', '2019-01-05 16:09:29', 'desc', 'Coffee Beer', 'desk', 'publish', 'open', 'closed', '', 'coffe-beer', '', '', '2019-01-05 23:09:56', '2019-01-05 16:09:56', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=178', 0, 'product', '', 0),
(179, 1, '2019-01-05 23:10:51', '2019-01-05 16:10:51', 'desc', 'Coffee Cream Cheese', 'desk', 'publish', 'open', 'closed', '', 'coffee-cream-cheese', '', '', '2019-01-05 23:10:59', '2019-01-05 16:10:59', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=179', 0, 'product', '', 0),
(180, 1, '2019-01-05 23:11:57', '2019-01-05 16:11:57', 'desc', 'CCMB(Coffee Cube Milk Based)', 'desk', 'publish', 'open', 'closed', '', 'ccmbcoffee-cube-milk-based', '', '', '2019-01-05 23:12:02', '2019-01-05 16:12:02', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=180', 0, 'product', '', 0),
(181, 1, '2019-01-05 23:12:52', '2019-01-05 16:12:52', 'desc', 'Coffee Punch', 'desk', 'publish', 'open', 'closed', '', 'coffee-punch', '', '', '2019-01-05 23:13:00', '2019-01-05 16:13:00', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=181', 0, 'product', '', 0),
(182, 1, '2019-01-05 23:14:36', '2019-01-05 16:14:36', 'desc', 'Teh Tawar (Panas/Dingin)', 'desk', 'publish', 'open', 'closed', '', 'teh-tawar-panas-dingin', '', '', '2019-01-05 23:14:41', '2019-01-05 16:14:41', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=182', 0, 'product', '', 0),
(183, 1, '2019-01-05 23:15:25', '2019-01-05 16:15:25', 'desc', 'Teh Manis (Panas/Dingin)', 'desk', 'publish', 'open', 'closed', '', 'teh-manis-panas-dingin', '', '', '2019-01-05 23:15:31', '2019-01-05 16:15:31', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=183', 0, 'product', '', 0),
(184, 1, '2019-01-05 23:16:21', '2019-01-05 16:16:21', 'desc', 'Jeruk Hangat', 'desk', 'publish', 'open', 'closed', '', 'jeruk-hangat', '', '', '2019-01-05 23:16:27', '2019-01-05 16:16:27', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=184', 0, 'product', '', 0),
(185, 1, '2019-01-05 23:17:16', '2019-01-05 16:17:16', 'desc', 'Es Jeruk', 'desk', 'publish', 'open', 'closed', '', 'es-jeruk', '', '', '2019-01-05 23:17:26', '2019-01-05 16:17:26', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=185', 0, 'product', '', 0),
(186, 1, '2019-01-05 23:18:22', '2019-01-05 16:18:22', 'desc', 'Lemon Tea (Panas/Dingin)', 'desk', 'publish', 'open', 'closed', '', 'lemon-tea-panas-dingin', '', '', '2019-01-05 23:18:28', '2019-01-05 16:18:28', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=186', 0, 'product', '', 0),
(187, 1, '2019-01-05 23:19:41', '2019-01-05 16:19:41', 'desc', 'Lychee Tea (Panas/Dingin)', 'desc', 'publish', 'open', 'closed', '', 'lycheetea-panas-dingin', '', '', '2019-01-05 23:20:06', '2019-01-05 16:20:06', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=187', 0, 'product', '', 0),
(188, 1, '2019-01-05 23:21:01', '2019-01-05 16:21:01', 'desc', 'Strwaberry Milkshake', 'desc', 'publish', 'open', 'closed', '', 'strwaberry-milkshake', '', '', '2019-01-05 23:21:06', '2019-01-05 16:21:06', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=188', 0, 'product', '', 0),
(189, 1, '2019-01-05 23:22:02', '2019-01-05 16:22:02', 'desc', 'Caramel Punch', 'desk', 'publish', 'open', 'closed', '', 'caramel-punch', '', '', '2019-01-05 23:22:08', '2019-01-05 16:22:08', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=189', 0, 'product', '', 0),
(190, 1, '2019-01-05 23:22:53', '2019-01-05 16:22:53', 'desc', 'Hazelnut Punch', 'desk', 'publish', 'open', 'closed', '', 'hazelnut-punch', '', '', '2019-01-05 23:23:07', '2019-01-05 16:23:07', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=190', 0, 'product', '', 0),
(191, 1, '2019-01-05 23:23:53', '2019-01-05 16:23:53', 'desc', 'Hot Bon-Bon', 'desk', 'publish', 'open', 'closed', '', 'hot-bon-bon', '', '', '2019-01-05 23:23:59', '2019-01-05 16:23:59', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=191', 0, 'product', '', 0),
(192, 1, '2019-01-05 23:24:38', '2019-01-05 16:24:38', 'desc', 'Es Bon-Bon', 'desk', 'publish', 'open', 'closed', '', 'es-bon-bon', '', '', '2019-01-05 23:24:44', '2019-01-05 16:24:44', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=192', 0, 'product', '', 0),
(193, 1, '2019-01-05 23:25:38', '2019-01-05 16:25:38', 'desc', 'Cheese Tea', 'desk', 'publish', 'open', 'closed', '', 'cheese-tea', '', '', '2019-01-05 23:25:43', '2019-01-05 16:25:43', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=193', 0, 'product', '', 0),
(194, 1, '2019-01-05 23:26:23', '2019-01-05 16:26:23', 'desc', 'Red Velvet Cheese Blend', 'desk', 'publish', 'open', 'closed', '', 'red-velvet-cheese-blend', '', '', '2019-01-05 23:26:27', '2019-01-05 16:26:27', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=194', 0, 'product', '', 0),
(195, 1, '2019-01-05 23:27:07', '2019-01-05 16:27:07', 'desc', 'Taro Cheese Blend', 'desk', 'publish', 'open', 'closed', '', 'taro-cheese-blend', '', '', '2019-01-05 23:27:14', '2019-01-05 16:27:14', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=195', 0, 'product', '', 0),
(196, 1, '2019-01-05 23:28:50', '2019-01-05 16:28:50', 'desc', 'Tengkleng Solo', 'desk', 'publish', 'open', 'closed', '', 'tengkleng-solo', '', '', '2019-01-05 23:29:03', '2019-01-05 16:29:03', '', 0, 'http://localhost/kedai/?post_type=product&#038;p=196', 0, 'product', '', 0),
(197, 1, '2019-01-19 19:54:23', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-19 19:54:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/kedai/?p=197', 0, 'post', '', 0),
(198, 1, '2019-01-19 21:00:14', '2019-01-19 14:00:14', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wtcpl-product-cat]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[wpb_categories]\n<!-- /wp:shortcode -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-19 21:00:14', '2019-01-19 14:00:14', '', 44, 'http://localhost/kedai/index.php/2019/01/19/44-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2019-01-19 21:29:10', '2019-01-19 14:29:10', '<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nikmatilah menu kami!!<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[wtcpl-product-cat]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[wpb_categories]\n<!-- /wp:shortcode -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2019-01-19 21:29:10', '2019-01-19 14:29:10', '', 44, 'http://localhost/kedai/index.php/2019/01/19/44-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_sm_advanced_search_temp`
--

CREATE TABLE `jawi_sm_advanced_search_temp` (
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `flag` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cat_flag` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_termmeta`
--

CREATE TABLE `jawi_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_termmeta`
--

INSERT INTO `jawi_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 17, 'order', '0'),
(3, 17, 'display_type', ''),
(4, 17, 'thumbnail_id', '0'),
(5, 18, 'order', '0'),
(6, 18, 'display_type', 'both'),
(7, 18, 'thumbnail_id', '58'),
(8, 19, 'order', '0'),
(9, 19, 'display_type', 'both'),
(10, 19, 'thumbnail_id', '58'),
(11, 20, 'order', '0'),
(12, 20, 'display_type', 'both'),
(13, 20, 'thumbnail_id', '26'),
(14, 18, 'product_count_product_cat', '24'),
(15, 17, 'product_count_product_cat', '1'),
(16, 20, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_terms`
--

CREATE TABLE `jawi_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_terms`
--

INSERT INTO `jawi_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Main Menu', 'main-menu', 0),
(17, 'Paket Aqiqah', 'paket-aqiqah', 0),
(18, 'Kopi &amp; Beverages', 'ngopi', 0),
(19, 'Bakso', 'bakso', 0),
(20, 'Sate', 'sate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_term_relationships`
--

CREATE TABLE `jawi_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_term_relationships`
--

INSERT INTO `jawi_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(9, 17, 0),
(18, 16, 0),
(19, 16, 0),
(20, 16, 0),
(21, 16, 0),
(72, 16, 0),
(73, 16, 0),
(74, 16, 0),
(75, 16, 0),
(84, 2, 0),
(84, 18, 0),
(171, 2, 0),
(171, 20, 0),
(173, 2, 0),
(173, 18, 0),
(174, 2, 0),
(174, 18, 0),
(175, 2, 0),
(175, 18, 0),
(176, 2, 0),
(176, 18, 0),
(177, 2, 0),
(177, 18, 0),
(178, 2, 0),
(178, 18, 0),
(179, 2, 0),
(179, 18, 0),
(180, 2, 0),
(180, 18, 0),
(181, 2, 0),
(181, 18, 0),
(182, 2, 0),
(182, 18, 0),
(183, 2, 0),
(183, 18, 0),
(184, 2, 0),
(184, 18, 0),
(185, 2, 0),
(185, 18, 0),
(186, 2, 0),
(186, 18, 0),
(187, 2, 0),
(187, 18, 0),
(188, 2, 0),
(188, 18, 0),
(189, 2, 0),
(189, 18, 0),
(190, 2, 0),
(190, 18, 0),
(191, 2, 0),
(191, 18, 0),
(192, 2, 0),
(192, 18, 0),
(193, 2, 0),
(193, 18, 0),
(194, 2, 0),
(194, 18, 0),
(195, 2, 0),
(195, 18, 0),
(196, 2, 0),
(196, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_term_taxonomy`
--

CREATE TABLE `jawi_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_term_taxonomy`
--

INSERT INTO `jawi_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 27),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 8),
(17, 17, 'product_cat', 'Kategori berisikan khusus untuk paket pemesanan layanan aqiqah', 0, 1),
(18, 18, 'product_cat', 'Berbagai macam kopi dan minuman yang tersedia di Kedai De Jawi', 0, 24),
(19, 19, 'product_cat', 'Hidangan Bakso dan Mie Ayam yang tersedia di Kedai De Jawi', 0, 0),
(20, 20, 'product_cat', 'Sate ayam, kambing', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_usermeta`
--

CREATE TABLE `jawi_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_usermeta`
--

INSERT INTO `jawi_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Mimin2018'),
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
(12, 1, 'Jawi_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'Jawi_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'Jawi_dashboard_quick_press_last_post_id', '197'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"45c48cce2e2d7fbdea1afc51c7c6ad26";a:11:{s:3:"key";s:32:"45c48cce2e2d7fbdea1afc51c7c6ad26";s:10:"product_id";i:9;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:7;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:14000000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:14000000;s:8:"line_tax";i:0;}s:32:"68d30a9594728bc39aa24be94b319d21";a:11:{s:3:"key";s:32:"68d30a9594728bc39aa24be94b319d21";s:10:"product_id";i:84;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:5;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:30000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:30000;s:8:"line_tax";i:0;}}}'),
(20, 1, 'Jawi_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'Jawi_user-settings-time', '1544688187'),
(23, 1, 'dismissed_no_secure_connection_notice', '1'),
(24, 1, 'dismissed_wootenberg_notice', '1'),
(25, 1, 'wc_last_active', '1547856000'),
(26, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:18:"dashboard_activity";}'),
(27, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(28, 1, 'notification_testing', 'true'),
(29, 1, 'dismissed_template_files_notice', '1'),
(30, 2, 'nickname', 'faisalrifqi30'),
(31, 2, 'first_name', ''),
(32, 2, 'last_name', ''),
(33, 2, 'description', ''),
(34, 2, 'rich_editing', 'true'),
(35, 2, 'syntax_highlighting', 'true'),
(36, 2, 'comment_shortcuts', 'false'),
(37, 2, 'admin_color', 'fresh'),
(38, 2, 'use_ssl', '0'),
(39, 2, 'show_admin_bar_front', 'true'),
(40, 2, 'locale', ''),
(41, 2, 'Jawi_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(42, 2, 'Jawi_user_level', '0'),
(43, 2, 'aiowps_account_status', 'pending'),
(44, 2, 'aiowps_registrant_ip', '::1'),
(45, 2, 'wcemailverifiedcode', '8fabf4882c6def8228bdec441b3f85ea'),
(47, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(48, 2, 'wc_last_active', '1544659200'),
(50, 1, 'last_login_time', '2019-01-19 19:54:08'),
(51, 1, 'tgmpa_dismissed_notice_tyche', '1'),
(52, 3, 'nickname', 'tes'),
(53, 3, 'first_name', ''),
(54, 3, 'last_name', ''),
(55, 3, 'description', ''),
(56, 3, 'rich_editing', 'true'),
(57, 3, 'syntax_highlighting', 'true'),
(58, 3, 'comment_shortcuts', 'false'),
(59, 3, 'admin_color', 'fresh'),
(60, 3, 'use_ssl', '0'),
(61, 3, 'show_admin_bar_front', 'true'),
(62, 3, 'locale', ''),
(63, 3, 'Jawi_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(64, 3, 'Jawi_user_level', '0'),
(65, 3, 'aiowps_account_status', 'pending'),
(66, 3, 'aiowps_registrant_ip', '::1'),
(67, 3, 'wcemailverifiedcode', '10029de952bc0352d64ee3f6a4e35fea'),
(68, 3, 'session_tokens', 'a:1:{s:64:"7b65171a0ec8a9913fbab45a26bf66e54e2c7ade9c36ce873095cd91d429fa46";a:4:{s:10:"expiration";i:1545897560;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0";s:5:"login";i:1544687960;}}'),
(70, 4, 'nickname', '123'),
(71, 4, 'first_name', '123'),
(72, 4, 'last_name', ''),
(73, 4, 'description', ''),
(74, 4, 'rich_editing', 'true'),
(75, 4, 'syntax_highlighting', 'true'),
(76, 4, 'comment_shortcuts', 'false'),
(77, 4, 'admin_color', 'fresh'),
(78, 4, 'use_ssl', '0'),
(79, 4, 'show_admin_bar_front', 'true'),
(80, 4, 'locale', ''),
(81, 4, 'Jawi_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(82, 4, 'Jawi_user_level', '0'),
(83, 4, 'aiowps_account_status', 'pending'),
(84, 4, 'aiowps_registrant_ip', '::1'),
(85, 4, 'wcemailverifiedcode', 'e24cf34bb721a3739d1822cbf6a56ac2'),
(86, 4, 'session_tokens', 'a:1:{s:64:"5810804e7f7f83ceda86f4c19d1f700efcbb8dd41bf886b05475e8ce8dc114ff";a:4:{s:10:"expiration";i:1545899871;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0";s:5:"login";i:1544690271;}}'),
(87, 4, 'wc_last_active', '1545523200'),
(89, 4, 'wcemailverified', 'true'),
(90, 4, 'last_login_time', '2018-12-23 14:35:03'),
(92, 4, 'last_update', '1544704060'),
(93, 4, 'billing_first_name', '123'),
(94, 4, 'billing_address_1', 'jl.123'),
(95, 4, 'billing_city', 'kott'),
(96, 4, 'billing_postcode', '16113'),
(97, 4, 'billing_phone', '08123415'),
(98, 4, 'shipping_first_name', '123'),
(99, 4, 'shipping_address_1', 'jl.123'),
(100, 4, 'shipping_city', 'kott'),
(101, 4, 'shipping_postcode', '16113'),
(102, 4, 'shipping_method', 'a:1:{i:0;s:11:"flat_rate:1";}'),
(107, 4, 'shipping_myfield10', ''),
(109, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"45c48cce2e2d7fbdea1afc51c7c6ad26";a:11:{s:3:"key";s:32:"45c48cce2e2d7fbdea1afc51c7c6ad26";s:10:"product_id";i:9;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:2000000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:2000000;s:8:"line_tax";i:0;}}}'),
(110, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:10:"wc_actions";}'),
(111, 1, 'edit_shop_order_per_page', '20'),
(112, 5, 'nickname', 'jawi'),
(113, 5, 'first_name', 'jawi'),
(114, 5, 'last_name', ''),
(115, 5, 'description', ''),
(116, 5, 'rich_editing', 'true'),
(117, 5, 'syntax_highlighting', 'true'),
(118, 5, 'comment_shortcuts', 'false'),
(119, 5, 'admin_color', 'fresh'),
(120, 5, 'use_ssl', '0'),
(121, 5, 'show_admin_bar_front', 'true'),
(122, 5, 'locale', ''),
(123, 5, 'Jawi_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(124, 5, 'Jawi_user_level', '0'),
(125, 5, 'wcemailverifiedcode', '8eab2794c7cb1c8616e6677e64213f2e'),
(126, 5, 'session_tokens', 'a:1:{s:64:"518789f81ec9809a39355baf0b72a31d4d53f208397ee70a8104d3dff533f272";a:4:{s:10:"expiration";i:1546065329;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0";s:5:"login";i:1544855729;}}'),
(128, 5, 'wcemailverified', 'true'),
(129, 5, 'wc_last_active', '1544832000'),
(131, 5, 'last_login_time', '2018-12-15 13:39:05'),
(133, 5, 'last_update', '1544856058'),
(134, 5, 'billing_first_name', 'jawi'),
(135, 5, 'billing_address_1', 'j;.melati'),
(136, 5, 'billing_city', 'BOGOR'),
(137, 5, 'billing_postcode', '16113'),
(138, 5, 'billing_phone', '0777'),
(139, 5, 'shipping_first_name', 'jawi'),
(140, 5, 'shipping_address_1', 'j;.melati'),
(141, 5, 'shipping_city', 'BOGOR'),
(142, 5, 'shipping_postcode', '16113'),
(143, 5, 'shipping_method', 'a:1:{i:0;s:11:"flat_rate:1";}'),
(144, 5, 'shipping_myfield10', ''),
(146, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(148, 1, 'bwg_photo_gallery', '1'),
(152, 1, 'session_tokens', 'a:1:{s:64:"29f691f9c5d3b9236fe8dc5f17647699daa3b725abf8287a44c69eb5569e925f";a:4:{s:10:"expiration";i:1548075246;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0";s:5:"login";i:1547902446;}}'),
(154, 1, 'nav_menu_recently_edited', '16'),
(155, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(156, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(160, 1, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:67:"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv";s:8:"advanced";s:0:"";}'),
(161, 1, 'screen_layout_product', '2');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_users`
--

CREATE TABLE `jawi_users` (
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
-- Dumping data for table `jawi_users`
--

INSERT INTO `jawi_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Mimin2018', '$P$BlnEDeFJNc2AhrcLyuPeNMJG4Rmjf21', 'mimin2018', 'faisalrmadjid@gmail.com', '', '2018-12-11 13:33:56', '', 0, 'Mimin2018'),
(2, 'faisalrifqi30', '$P$BJH1mgHYkZpROqJfrel8R0RgzW9XfB/', 'faisalrifqi30', 'faisalrifqi30@yahoo.co.id', '', '2018-12-13 06:48:02', '', 0, 'faisalrifqi30'),
(3, 'tes', '$P$BZ.8ORYxByTL5Uyh63El6wCwXpSIw50', 'tes', 'tes@gmail.com', '', '2018-12-13 07:59:12', '', 0, 'tes'),
(4, '123', '$P$B/s6GqETH5DA/EIsJy6R2pay0pi0vR0', '123', '123@gmail.com', '', '2018-12-13 08:37:46', '', 0, '123'),
(5, 'jawi', '$P$BaA3E1Vuf1UMpDs2VSf3VxJvK4ywbi/', 'jawi', 'jawi@gmail.com', '', '2018-12-15 06:35:23', '', 0, 'jawi');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wc_download_log`
--

CREATE TABLE `jawi_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wc_webhooks`
--

CREATE TABLE `jawi_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_api_keys`
--

CREATE TABLE `jawi_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_attribute_taxonomies`
--

CREATE TABLE `jawi_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `jawi_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_log`
--

CREATE TABLE `jawi_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_order_itemmeta`
--

CREATE TABLE `jawi_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_woocommerce_order_itemmeta`
--

INSERT INTO `jawi_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(16, 3, '_product_id', '9'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '3'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '6000000'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '6000000'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(25, 4, 'method_id', 'flat_rate'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '10000'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(30, 4, 'Items', 'Tes1 &times; 3'),
(31, 5, '_product_id', '9'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '2'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '4000000'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '4000000'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(40, 6, 'method_id', 'flat_rate'),
(41, 6, 'instance_id', '1'),
(42, 6, 'cost', '10000'),
(43, 6, 'total_tax', '0'),
(44, 6, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(45, 6, 'Items', 'Tes1 &times; 2'),
(46, 7, '_product_id', '9'),
(47, 7, '_variation_id', '0'),
(48, 7, '_qty', '1'),
(49, 7, '_tax_class', ''),
(50, 7, '_line_subtotal', '2000000'),
(51, 7, '_line_subtotal_tax', '0'),
(52, 7, '_line_total', '2000000'),
(53, 7, '_line_tax', '0'),
(54, 7, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(55, 8, 'method_id', 'flat_rate'),
(56, 8, 'instance_id', '1'),
(57, 8, 'cost', '10000'),
(58, 8, 'total_tax', '0'),
(59, 8, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(60, 8, 'Items', 'Tes1 &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_order_items`
--

CREATE TABLE `jawi_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_woocommerce_order_items`
--

INSERT INTO `jawi_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(3, 'Tes1', 'line_item', 36),
(4, 'Ongkir', 'shipping', 36),
(5, 'Tes1', 'line_item', 37),
(6, 'Ongkir', 'shipping', 37),
(7, 'Tes1', 'line_item', 38),
(8, 'Ongkir', 'shipping', 38);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_payment_tokenmeta`
--

CREATE TABLE `jawi_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_payment_tokens`
--

CREATE TABLE `jawi_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_sessions`
--

CREATE TABLE `jawi_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_woocommerce_sessions`
--

INSERT INTO `jawi_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(56, '1', 'a:11:{s:4:"cart";s:831:"a:2:{s:32:"45c48cce2e2d7fbdea1afc51c7c6ad26";a:11:{s:3:"key";s:32:"45c48cce2e2d7fbdea1afc51c7c6ad26";s:10:"product_id";i:9;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:7;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:14000000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:14000000;s:8:"line_tax";i:0;}s:32:"68d30a9594728bc39aa24be94b319d21";a:11:{s:3:"key";s:32:"68d30a9594728bc39aa24be94b319d21";s:10:"product_id";i:84;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:5;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:30000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:30000;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:408:"a:15:{s:8:"subtotal";s:8:"14030000";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:1:"0";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:8:"14030000";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:1:"0";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:8:"14030000";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:22:"shipping_for_package_0";s:92:"a:2:{s:12:"package_hash";s:40:"wc_ship_1fcda71f2ee3e0a50430a5c29cd80f61";s:5:"rates";a:0:{}}";s:25:"previous_shipping_methods";s:16:"a:1:{i:0;a:0:{}}";s:23:"chosen_shipping_methods";s:14:"a:1:{i:0;b:0;}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:0;}";s:8:"customer";s:711:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:23:"faisalrmadjid@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1548075383);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_shipping_zones`
--

CREATE TABLE `jawi_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_woocommerce_shipping_zones`
--

INSERT INTO `jawi_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Bogor', 0),
(2, 'Kab. Bogor', 0),
(3, 'Depok', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_shipping_zone_locations`
--

CREATE TABLE `jawi_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_woocommerce_shipping_zone_locations`
--

INSERT INTO `jawi_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 1, '16111', 'postcode'),
(3, 1, '16112', 'postcode'),
(4, 1, '16113', 'postcode'),
(5, 1, '16114', 'postcode'),
(6, 1, '16115', 'postcode'),
(7, 1, '16116', 'postcode'),
(8, 1, '16117', 'postcode'),
(9, 1, '16118', 'postcode'),
(10, 1, '16119', 'postcode'),
(11, 1, '16121', 'postcode'),
(12, 1, '16122', 'postcode'),
(13, 1, '16123', 'postcode'),
(14, 1, '16124', 'postcode'),
(15, 1, '16125', 'postcode'),
(16, 1, '16126', 'postcode'),
(17, 1, '16128', 'postcode'),
(18, 1, '16129', 'postcode'),
(19, 1, '16131', 'postcode'),
(20, 1, '16132', 'postcode'),
(21, 1, '16133', 'postcode'),
(22, 1, '16134', 'postcode'),
(23, 1, '16135', 'postcode'),
(24, 1, '16136', 'postcode'),
(25, 1, '16137', 'postcode'),
(26, 1, '16138', 'postcode'),
(27, 1, '16139', 'postcode'),
(28, 1, '16141', 'postcode'),
(29, 1, '16142', 'postcode'),
(30, 1, '16143', 'postcode'),
(31, 1, '16144', 'postcode'),
(32, 1, '16145', 'postcode'),
(33, 1, '16146', 'postcode'),
(34, 1, '16151', 'postcode'),
(35, 1, '16152', 'postcode'),
(36, 1, '16153', 'postcode'),
(37, 1, '16154', 'postcode'),
(38, 1, '16155', 'postcode'),
(39, 1, '16156', 'postcode'),
(40, 1, '16157', 'postcode'),
(41, 1, '16158', 'postcode'),
(42, 1, '16161', 'postcode'),
(43, 1, '16162', 'postcode'),
(44, 1, '16163', 'postcode'),
(45, 1, '16164', 'postcode'),
(46, 1, '16165', 'postcode'),
(47, 1, '16166', 'postcode'),
(48, 1, '16167', 'postcode'),
(49, 1, '16168', 'postcode'),
(50, 1, '16169', 'postcode'),
(51, 2, '13720...13730', 'postcode'),
(52, 2, '15319', 'postcode'),
(53, 2, '15346...15347', 'postcode'),
(54, 2, '15820', 'postcode'),
(55, 2, '15821', 'postcode'),
(56, 2, '15895', 'postcode'),
(57, 2, '16310...16368', 'postcode'),
(58, 2, '16370...16570', 'postcode'),
(59, 2, '16437...16440', 'postcode'),
(60, 2, '16524...16526', 'postcode'),
(61, 2, '16531', 'postcode'),
(62, 2, '16610...16680', 'postcode'),
(63, 2, '16710...16750', 'postcode'),
(64, 2, '16770', 'postcode'),
(65, 2, '16780', 'postcode'),
(66, 2, '16810...16840', 'postcode'),
(67, 2, '16960...16969', 'postcode'),
(68, 2, '16911...16928', 'postcode'),
(69, 2, '17340', 'postcode'),
(70, 2, '17347', 'postcode'),
(71, 2, '17428', 'postcode'),
(72, 2, '17437', 'postcode'),
(73, 2, '17439', 'postcode'),
(74, 2, '17456', 'postcode'),
(75, 2, '17721', 'postcode'),
(76, 2, '18441', 'postcode'),
(77, 2, '18442', 'postcode'),
(78, 2, '43221...43226', 'postcode'),
(79, 3, '16411...16418', 'postcode'),
(80, 3, '16421...16425', 'postcode'),
(81, 3, '16431...16439', 'postcode'),
(82, 3, '16451...16459', 'postcode'),
(83, 3, '16511...16519', 'postcode');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_shipping_zone_methods`
--

CREATE TABLE `jawi_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jawi_woocommerce_shipping_zone_methods`
--

INSERT INTO `jawi_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(2, 2, 'flat_rate', 1, 1),
(3, 3, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_tax_rates`
--

CREATE TABLE `jawi_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_woocommerce_tax_rate_locations`
--

CREATE TABLE `jawi_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza`
--

CREATE TABLE `jawi_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jawi_wpgmza`
--

INSERT INTO `jawi_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '0', '', '', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0J`s�cB@�`�g��]�');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_categories`
--

CREATE TABLE `jawi_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_category_maps`
--

CREATE TABLE `jawi_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_circles`
--

CREATE TABLE `jawi_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_maps`
--

CREATE TABLE `jawi_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jawi_wpgmza_maps`
--

INSERT INTO `jawi_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464398418106', '-109.81550500000003', '45.950464398418106,-109.81550500000003', 2, '0', 1, 0, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '%', 'px', 1, 0, 1, 2, 0, '', 'a:2:{s:19:"store_locator_style";s:6:"modern";s:33:"wpgmza_store_locator_radius_style";s:6:"modern";}');

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_polygon`
--

CREATE TABLE `jawi_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_polylines`
--

CREATE TABLE `jawi_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jawi_wpgmza_rectangles`
--

CREATE TABLE `jawi_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawi_aiowps_events`
--
ALTER TABLE `jawi_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_aiowps_failed_logins`
--
ALTER TABLE `jawi_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_aiowps_global_meta`
--
ALTER TABLE `jawi_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `jawi_aiowps_login_activity`
--
ALTER TABLE `jawi_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_aiowps_login_lockdown`
--
ALTER TABLE `jawi_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_aiowps_permanent_block`
--
ALTER TABLE `jawi_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_album`
--
ALTER TABLE `jawi_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_album_gallery`
--
ALTER TABLE `jawi_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_file_paths`
--
ALTER TABLE `jawi_bwg_file_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_gallery`
--
ALTER TABLE `jawi_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_image`
--
ALTER TABLE `jawi_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_image_comment`
--
ALTER TABLE `jawi_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_image_rate`
--
ALTER TABLE `jawi_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_image_tag`
--
ALTER TABLE `jawi_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_shortcode`
--
ALTER TABLE `jawi_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_bwg_theme`
--
ALTER TABLE `jawi_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_commentmeta`
--
ALTER TABLE `jawi_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jawi_comments`
--
ALTER TABLE `jawi_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `jawi_links`
--
ALTER TABLE `jawi_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `jawi_options`
--
ALTER TABLE `jawi_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jawi_postmeta`
--
ALTER TABLE `jawi_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jawi_posts`
--
ALTER TABLE `jawi_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `sm_idx_post_parent` (`post_parent`),
  ADD KEY `sm_idx_post_date` (`post_date`);

--
-- Indexes for table `jawi_termmeta`
--
ALTER TABLE `jawi_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jawi_terms`
--
ALTER TABLE `jawi_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `jawi_term_relationships`
--
ALTER TABLE `jawi_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `jawi_term_taxonomy`
--
ALTER TABLE `jawi_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `jawi_usermeta`
--
ALTER TABLE `jawi_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jawi_users`
--
ALTER TABLE `jawi_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `jawi_wc_download_log`
--
ALTER TABLE `jawi_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `jawi_wc_webhooks`
--
ALTER TABLE `jawi_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jawi_woocommerce_api_keys`
--
ALTER TABLE `jawi_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `jawi_woocommerce_attribute_taxonomies`
--
ALTER TABLE `jawi_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `jawi_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `jawi_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `jawi_woocommerce_log`
--
ALTER TABLE `jawi_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `jawi_woocommerce_order_itemmeta`
--
ALTER TABLE `jawi_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `jawi_woocommerce_order_items`
--
ALTER TABLE `jawi_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `jawi_woocommerce_payment_tokenmeta`
--
ALTER TABLE `jawi_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `jawi_woocommerce_payment_tokens`
--
ALTER TABLE `jawi_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jawi_woocommerce_sessions`
--
ALTER TABLE `jawi_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `jawi_woocommerce_shipping_zones`
--
ALTER TABLE `jawi_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `jawi_woocommerce_shipping_zone_locations`
--
ALTER TABLE `jawi_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `jawi_woocommerce_shipping_zone_methods`
--
ALTER TABLE `jawi_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `jawi_woocommerce_tax_rates`
--
ALTER TABLE `jawi_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `jawi_woocommerce_tax_rate_locations`
--
ALTER TABLE `jawi_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `jawi_wpgmza`
--
ALTER TABLE `jawi_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_categories`
--
ALTER TABLE `jawi_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_category_maps`
--
ALTER TABLE `jawi_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_circles`
--
ALTER TABLE `jawi_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_maps`
--
ALTER TABLE `jawi_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_polygon`
--
ALTER TABLE `jawi_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_polylines`
--
ALTER TABLE `jawi_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawi_wpgmza_rectangles`
--
ALTER TABLE `jawi_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawi_aiowps_events`
--
ALTER TABLE `jawi_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_aiowps_failed_logins`
--
ALTER TABLE `jawi_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jawi_aiowps_global_meta`
--
ALTER TABLE `jawi_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_aiowps_login_activity`
--
ALTER TABLE `jawi_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `jawi_aiowps_login_lockdown`
--
ALTER TABLE `jawi_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_aiowps_permanent_block`
--
ALTER TABLE `jawi_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_bwg_album`
--
ALTER TABLE `jawi_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_bwg_album_gallery`
--
ALTER TABLE `jawi_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_bwg_file_paths`
--
ALTER TABLE `jawi_bwg_file_paths`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jawi_bwg_gallery`
--
ALTER TABLE `jawi_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jawi_bwg_image`
--
ALTER TABLE `jawi_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jawi_bwg_image_comment`
--
ALTER TABLE `jawi_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_bwg_image_rate`
--
ALTER TABLE `jawi_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_bwg_image_tag`
--
ALTER TABLE `jawi_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_bwg_theme`
--
ALTER TABLE `jawi_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jawi_commentmeta`
--
ALTER TABLE `jawi_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_comments`
--
ALTER TABLE `jawi_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jawi_links`
--
ALTER TABLE `jawi_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_options`
--
ALTER TABLE `jawi_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2549;
--
-- AUTO_INCREMENT for table `jawi_postmeta`
--
ALTER TABLE `jawi_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1298;
--
-- AUTO_INCREMENT for table `jawi_posts`
--
ALTER TABLE `jawi_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `jawi_termmeta`
--
ALTER TABLE `jawi_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jawi_terms`
--
ALTER TABLE `jawi_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `jawi_term_taxonomy`
--
ALTER TABLE `jawi_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `jawi_usermeta`
--
ALTER TABLE `jawi_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `jawi_users`
--
ALTER TABLE `jawi_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jawi_wc_download_log`
--
ALTER TABLE `jawi_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wc_webhooks`
--
ALTER TABLE `jawi_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_api_keys`
--
ALTER TABLE `jawi_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_attribute_taxonomies`
--
ALTER TABLE `jawi_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `jawi_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_log`
--
ALTER TABLE `jawi_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_order_itemmeta`
--
ALTER TABLE `jawi_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_order_items`
--
ALTER TABLE `jawi_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_payment_tokenmeta`
--
ALTER TABLE `jawi_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_payment_tokens`
--
ALTER TABLE `jawi_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_sessions`
--
ALTER TABLE `jawi_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_shipping_zones`
--
ALTER TABLE `jawi_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_shipping_zone_locations`
--
ALTER TABLE `jawi_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_shipping_zone_methods`
--
ALTER TABLE `jawi_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_tax_rates`
--
ALTER TABLE `jawi_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_woocommerce_tax_rate_locations`
--
ALTER TABLE `jawi_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wpgmza`
--
ALTER TABLE `jawi_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_categories`
--
ALTER TABLE `jawi_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_category_maps`
--
ALTER TABLE `jawi_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_circles`
--
ALTER TABLE `jawi_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_maps`
--
ALTER TABLE `jawi_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_polygon`
--
ALTER TABLE `jawi_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_polylines`
--
ALTER TABLE `jawi_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawi_wpgmza_rectangles`
--
ALTER TABLE `jawi_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawi_wc_download_log`
--
ALTER TABLE `jawi_wc_download_log`
  ADD CONSTRAINT `fk_Jawi_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `jawi_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
